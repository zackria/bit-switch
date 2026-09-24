import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/wemo_device.dart';
import '../models/device_state.dart';
import '../services/device_discovery_service.dart';
import '../services/device_control_service.dart';
import '../core/exceptions.dart';
import '../core/error_handler.dart';
import '../l10n/l10n.dart';

/// Provider for managing Wemo devices
class DeviceProvider extends ChangeNotifier {
  final DeviceDiscoveryService _discoveryService;
  final DeviceControlService _controlService;

  /// Map of device ID to device
  final Map<String, WemoDevice> _devices = {};

  /// Map of device ID to current state
  final Map<String, DeviceState> _deviceStates = {};

  /// Map of device ID to the last-known address of every device this app
  /// has ever successfully discovered, persisted across app restarts.
  ///
  /// SSDP multicast is lossy over WiFi, so a given scan can miss a device
  /// it found before. When that happens, [_probeMissingKnownDevices] probes
  /// these last-known addresses directly instead of relying on multicast
  /// alone.
  final Map<String, WemoDevice> _knownDevices = {};

  static const _knownDevicesPrefsKey = 'known_devices_v1';

  bool _knownDevicesLoaded = false;

  /// Whether discovery is in progress
  bool _isDiscovering = false;

  /// Error message from last operation
  String? _error;

  /// Timer for periodic state refresh
  Timer? _refreshTimer;

  /// Debug log messages for troubleshooting
  final List<String> _debugLog = [];

  /// Whether debug mode is enabled
  bool _debugMode = false;

  DeviceProvider({
    DeviceDiscoveryService? discoveryService,
    DeviceControlService? controlService,
  }) : _discoveryService = discoveryService ?? DeviceDiscoveryService(),
       _controlService = controlService ?? DeviceControlService();

  /// Internal flag to avoid calling `notifyListeners` after dispose
  bool _disposed = false;

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  // Getters
  List<WemoDevice> get devices => _devices.values.toList();
  bool get isDiscovering => _isDiscovering;
  String? get error => _error;
  DeviceControlService get controlService => _controlService;
  List<String> get debugLog => List.unmodifiable(_debugLog);
  bool get debugMode => _debugMode;

  /// Enable/disable debug mode
  ///
  /// [getInterfaces] can be supplied (primarily in tests) to control which
  /// network interfaces the diagnostics step observes instead of the real
  /// [NetworkInterface.list], mirroring the seam used by [scanSubnet].
  void setDebugMode(
    bool enabled, {
    Future<List<NetworkInterface>> Function()? getInterfaces,
  }) {
    _debugMode = enabled;
    if (enabled) {
      // Run network diagnostics when debug mode is enabled
      _runNetworkDiagnostics(getInterfaces: getInterfaces);
    } else {
      _debugLog.clear();
    }
    notifyListeners();
  }

  /// Run network diagnostics to help debug connectivity issues
  Future<void> _runNetworkDiagnostics({
    Future<List<NetworkInterface>> Function()? getInterfaces,
  }) async {
    _log('=== Network Diagnostics ===');

    try {
      // Get network interfaces
      final interfaces = await (getInterfaces ?? NetworkInterface.list)();
      _log('Network interfaces: ${interfaces.length}');
      final localIp = _findWifiIp(interfaces);
      if (localIp != null) {
        _log('>>> Local WiFi IP: $localIp');
      } else {
        _log('>>> WARNING: No WiFi IP found!');
      }
    } catch (e) {
      _log('Failed to get interfaces: $e');
    }

    await _testUdpSocket();

    _log('=== End Diagnostics ===');
    _log('Tap refresh to start discovery...');
  }

  /// Log each IPv4 address and return the best guess at the WiFi/local IP
  String? _findWifiIp(List<NetworkInterface> interfaces) {
    String? localIp;
    for (final interface in interfaces) {
      for (final addr in interface.addresses) {
        if (addr.type != InternetAddressType.IPv4) continue;
        _log('  ${interface.name}: ${addr.address}');
        // Capture WiFi IP (en0 on iOS, wlan on Android)
        if (interface.name.contains('en0') ||
            interface.name.contains('wlan') ||
            interface.name.contains('wifi')) {
          localIp = addr.address;
        }
        // Also check for private IPs as fallback
        if (localIp == null &&
            (addr.address.startsWith('192.168.') ||
                addr.address.startsWith('10.') ||
                addr.address.startsWith('172.'))) {
          localIp = addr.address;
        }
      }
    }
    return localIp;
  }

  /// Try to create a UDP socket and send a multicast test packet
  Future<void> _testUdpSocket() async {
    try {
      final socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
      _log('UDP socket test: OK (port ${socket.port})');

      // Try to send a test packet to multicast
      try {
        final testData = 'TEST'.codeUnits;
        final multicastAddr = InternetAddress('239.255.255.250');
        final sent = socket.send(testData, multicastAddr, 1900);
        _log('Multicast send test: $sent bytes');
      } catch (e) {
        _log('Multicast send test FAILED: $e');
      }

      socket.close();
    } catch (e) {
      _log('UDP socket test FAILED: $e');
    }
  }

  /// Add a debug log message
  void _log(String message) {
    if (_debugMode) {
      final timestamp = DateTime.now().toString().substring(11, 19);
      _debugLog.add('[$timestamp] $message');
      if (_debugLog.length > 50) {
        _debugLog.removeAt(0);
      }
      notifyListeners();
    }
  }

  /// Clear debug log
  void clearDebugLog() {
    _debugLog.clear();
    notifyListeners();
  }

  /// Record a discovered device: add it to the active list, remember its
  /// address for future known-device fallback probing, refresh its state,
  /// and persist the updated known-device list to disk.
  void _addDiscoveredDevice(WemoDevice device) {
    _devices[device.id] = device;
    _knownDevices[device.id] = device;
    notifyListeners();
    unawaited(_refreshDeviceState(device));
    unawaited(_saveKnownDevices());
  }

  /// Load the persisted known-device list, once per provider lifetime.
  ///
  /// Failures (no storage available, corrupt data) are logged and ignored -
  /// the known-device fallback is a best-effort enhancement, not something
  /// discovery should ever fail over.
  Future<void> _ensureKnownDevicesLoaded() async {
    if (_knownDevicesLoaded) return;
    _knownDevicesLoaded = true;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_knownDevicesPrefsKey);
      if (raw == null) return;
      final decoded = jsonDecode(raw) as List<dynamic>;
      for (final item in decoded) {
        final device = WemoDevice.fromJson(item as Map<String, dynamic>);
        _knownDevices[device.id] = device;
      }
      _log(
        'Loaded ${_knownDevices.length} known device(s) from previous sessions',
      );
    } catch (e) {
      _log('Failed to load known devices: $e');
    }
  }

  /// Persist the current known-device list to disk.
  Future<void> _saveKnownDevices() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final encoded = jsonEncode(
        _knownDevices.values.map((d) => d.toJson()).toList(),
      );
      await prefs.setString(_knownDevicesPrefsKey, encoded);
    } catch (e) {
      _log('Failed to save known devices: $e');
    }
  }

  /// Probe the last-known address of any previously discovered device that
  /// this scan didn't find.
  ///
  /// SSDP relies on UDP multicast, which is best-effort and can silently
  /// drop a device's response on any given scan even when the device is
  /// online. Rather than waiting on another multicast round, reach the
  /// device directly at the address it was found at before.
  Future<void> _probeMissingKnownDevices() async {
    final missing = _knownDevices.values
        .where((known) => !_devices.containsKey(known.id))
        .toList();
    if (missing.isEmpty) return;

    _log(
      '${missing.length} known device(s) not found this scan - probing '
      'last-known address directly...',
    );

    await Future.wait(
      missing.map((known) async {
        try {
          final device = await _discoveryService.probeHost(
            known.host,
            ports: [known.port],
          );
          if (device != null) {
            _log(
              'Recovered known device via direct probe: ${device.name} at '
              '${device.host}:${device.port}',
            );
            _addDiscoveredDevice(device);
          } else {
            _log(
              'Known device ${known.name} at ${known.host}:${known.port} '
              'did not respond to direct probe',
            );
          }
        } catch (e) {
          _log('Direct probe failed for known device ${known.name}: $e');
        }
      }),
    );
  }

  /// Probe a specific IP address directly (bypasses SSDP multicast)
  Future<void> probeDeviceByIp(String host, {int port = 49153}) async {
    _log('=== Direct Probe: $host:$port ===');

    // Test 1: TCP connection
    try {
      _log('Testing TCP connection...');
      final socket = await Socket.connect(
        host,
        port,
        timeout: const Duration(seconds: 5),
      );
      _log('TCP connection: SUCCESS');
      socket.destroy();
    } catch (e) {
      _log('TCP connection FAILED: $e');
      return;
    }

    // Test 2: HTTP request to setup.xml
    try {
      _log('Fetching setup.xml...');
      final device = await _discoveryService.probeHost(host, ports: [port]);
      if (device != null) {
        _log('Device found: ${device.name}');
        _log('Type: ${device.type}');
        _log('Model: ${device.model}');
        _addDiscoveredDevice(device);
        _log('>>> Device added successfully! <<<');
      } else {
        _log('No Wemo device at this address');
      }
    } catch (e) {
      _log('HTTP request FAILED: $e');
    }

    _log('=== End Direct Probe ===');
  }

  Future<void> scanSubnet({
    Future<List<NetworkInterface>> Function()? getInterfaces,
  }) async {
    if (_isDiscovering) return;
    _isDiscovering = true;
    _error = null;
    notifyListeners();

    try {
      await _scanSubnetInternal(getInterfaces: getInterfaces).forEach((device) {
        _log('Found: ${device.name} at ${device.host}');
        _addDiscoveredDevice(device);
      });
    } catch (e) {
      _log('Scan error: $e');
      _error = currentAppLocalizations.errCheckWifiConnection;
    } finally {
      _isDiscovering = false;
      notifyListeners();
    }
  }

  /// Internal subnet scan logic (can be called from discoverDevices fallback)
  /// Uses batched parallel scanning for better performance
  Stream<WemoDevice> _scanSubnetInternal({
    Future<List<NetworkInterface>> Function()? getInterfaces,
  }) async* {
    _log('=== Subnet Scan Starting ===');

    String? localIp;
    try {
      final interfaces = await (getInterfaces ?? NetworkInterface.list)();
      localIp = _findLocalSubnetIp(interfaces);
    } catch (e) {
      _log('ERROR: Could not determine local IP: $e');
      _error = currentAppLocalizations.errCheckWifiConnection;
      return;
    }

    if (localIp == null) {
      _log('ERROR: Could not determine local IP');
      _error = currentAppLocalizations.errCheckWifiConnection;
      return;
    }

    _log('Local IP: $localIp');
    final subnet = localIp.substring(0, localIp.lastIndexOf('.'));
    _log('Scanning subnet: $subnet.1-254');

    yield* _scanSubnetBatches(subnet);
  }

  /// Find the first non-loopback private IPv4 address across all interfaces
  String? _findLocalSubnetIp(List<NetworkInterface> interfaces) {
    for (final interface in interfaces) {
      for (final addr in interface.addresses) {
        if (addr.type == InternetAddressType.IPv4 &&
            !addr.address.startsWith('127.') &&
            (addr.address.startsWith('192.168.') ||
                addr.address.startsWith('10.') ||
                addr.address.startsWith('172.'))) {
          return addr.address;
        }
      }
    }
    return null;
  }

  /// Scan the subnet in parallel batches, yielding devices as they're found
  Stream<WemoDevice> _scanSubnetBatches(String subnet) async* {
    const ports = [49153, 49152, 49154, 49151, 49155];

    // Batch size for parallel scanning - balance between speed and system resources
    const batchSize = 32;
    int found = 0;

    // Process IPs in batches for better performance
    for (int batchStart = 1; batchStart < 255; batchStart += batchSize) {
      final batchEnd = (batchStart + batchSize).clamp(1, 255);
      final batchStreams = <Stream<WemoDevice>>[];

      for (int i = batchStart; i < batchEnd; i++) {
        final host = '$subnet.$i';
        batchStreams.add(_probeHostQuick(host, ports));
      }

      _log('Scanning batch: $subnet.$batchStart-${batchEnd - 1}');

      // Process this batch in parallel, yield results as they come
      await for (final device in Rx.merge(batchStreams)) {
        found++;
        _log('Found device $found: ${device.name} at ${device.host}');
        yield device;
      }
    }

    _log('=== Scan Complete: $found devices found ===');
  }

  /// Quick probe of a host - returns device if found, null otherwise
  Stream<WemoDevice> _probeHostQuick(String host, List<int> ports) async* {
    try {
      final openPort = await Future.any(
        ports.map((port) async {
          try {
            final socket = await Socket.connect(
              host,
              port,
              timeout: const Duration(milliseconds: 200),
            );
            await socket.close();
            return port;
          } catch (_) {
            return -1;
          }
        }),
      );

      if (openPort != -1) {
        final device = await _discoveryService.probeHost(
          host,
          ports: [openPort],
        );
        if (device != null) {
          yield device;
        }
      }
    } catch (_) {
      // Ignore errors
    }
  }

  /// Get the state for a specific device
  DeviceState getDeviceState(String deviceId) {
    return _deviceStates[deviceId] ?? DeviceState.unknown();
  }

  /// Start discovering devices
  ///
  /// Performs SSDP multicast discovery with automatic retry on transient
  /// failures. On iOS, falls back to subnet scanning if SSDP fails.
  ///
  /// [timeout] - Duration to wait for device discovery (default 10 seconds)
  Future<void> discoverDevices({
    Duration timeout = const Duration(seconds: 10),
  }) async {
    if (_isDiscovering) return;

    _isDiscovering = true;
    _error = null;
    _log('Starting device discovery (timeout: ${timeout.inSeconds}s)');
    notifyListeners();

    await _ensureKnownDevicesLoaded();

    try {
      // Add an overall timeout that's slightly longer than the discovery timeout
      // This ensures the UI never spins forever even if something hangs
      // Account for potential retries in SSDP client (3 attempts max)
      final overallTimeout = timeout + const Duration(seconds: 10);

      await _discoverWithTimeout(timeout).timeout(
        overallTimeout,
        onTimeout: () async {
          _log('Overall timeout reached');
          // Discovery timed out - just stop gracefully
          // Don't set error since no devices found is a valid state
        },
      );
      _log('Discovery completed. Found ${_devices.length} devices');
    } on DiscoveryException catch (e) {
      // Network/permission related error - show user-friendly message
      _log('DiscoveryException: ${e.message}');
      _error = e.message;
    } on TimeoutException {
      // Overall timeout reached - discovery complete (possibly with no devices)
      // This is not an error, just means no devices responded in time
      _log('TimeoutException - no devices responded');
    } catch (e) {
      _log('Unexpected error: $e');
      _error = ErrorHandler.getUserFriendlyMessage(e);
    } finally {
      // Recover any previously known device this scan missed (SSDP
      // multicast is lossy) by probing its last-known address directly.
      // Runs even after an error/timeout above, since a direct probe
      // doesn't depend on multicast working at all.
      await _probeMissingKnownDevices();
      _isDiscovering = false;
      notifyListeners();
    }
  }

  /// Internal discovery method that can be wrapped with timeout
  ///
  /// Runs SSDP discovery first, then falls back to subnet scan on iOS
  /// if no devices are found. The subnet scan runs AFTER SSDP completes,
  /// not in parallel, to avoid race conditions and resource contention.
  Future<void> _discoverWithTimeout(Duration timeout) async {
    _log('Starting SSDP discovery...');

    try {
      // Phase 1: SSDP multicast discovery
      await _runSsdpDiscovery(timeout);

      // Phase 2: iOS subnet scan fallback (only if SSDP found nothing)
      if (_devices.isEmpty && Platform.isIOS) {
        _log('No devices via SSDP on iOS - trying subnet scan...');
        await _runSubnetScanFallback();
      }
    } on DiscoveryException catch (e) {
      _log('Discovery exception: ${e.message}');

      // On iOS, if SSDP fails due to network issues, try subnet scan as fallback
      if (Platform.isIOS && _devices.isEmpty) {
        _log('SSDP failed on iOS, attempting subnet scan fallback...');
        try {
          await _runSubnetScanFallback();
          // If subnet scan found devices, don't rethrow the SSDP exception
          if (_devices.isNotEmpty) {
            return;
          }
        } catch (subnetError) {
          _log('Subnet scan also failed: $subnetError');
        }
      }

      rethrow;
    } on SocketException catch (e) {
      _log('Socket exception during discovery: $e');
      throw DiscoveryException(
        'Network error during discovery. Please check:\n'
        '• WiFi connection\n'
        '• Local Network permission in Settings',
        cause: e,
      );
    } catch (e, stack) {
      _log('Unexpected discovery error: $e');
      _log('Stack trace: $stack');
      throw DiscoveryException('Unexpected error during discovery', cause: e);
    }
  }

  /// Run SSDP multicast discovery
  Future<void> _runSsdpDiscovery(Duration timeout) async {
    final discoveryStream = _discoveryService
        .discoverDevices(timeout: timeout, onDebugLog: _debugMode ? _log : null)
        .handleError((error, stackTrace) {
          _log('Stream error during discovery: $error');
          if (error is DiscoveryException) {
            throw error;
          } else if (error is SocketException) {
            throw DiscoveryException(
              'Network error during discovery. Please check:\n'
              '• WiFi connection\n'
              '• Local Network permission in Settings',
              cause: error,
            );
          } else {
            throw DiscoveryException(
              'Unexpected error during discovery',
              cause: error,
            );
          }
        });

    try {
      await for (final device in discoveryStream) {
        _log('Found device: ${device.name} at ${device.host}:${device.port}');
        _addDiscoveredDevice(device);
      }
    } on DiscoveryException {
      // A stream error ends the `await for` loop outright, even if it
      // fired after we already found devices this scan (e.g. a late,
      // transient socket hiccup). Don't let that wipe out real results
      // or surface a scary top-level error when we have something to
      // show - just stop the SSDP phase here. If we found nothing at
      // all, this is a genuine failure and the caller still needs to
      // know (e.g. to trigger the iOS subnet-scan fallback).
      if (_devices.isNotEmpty) {
        _log(
          'SSDP stream ended with an error after finding devices - '
          'treating as a partial result rather than a fatal error.',
        );
      } else {
        rethrow;
      }
    }

    _log('SSDP discovery phase complete: ${_devices.length} devices');
  }

  /// Run subnet scan as fallback (primarily for iOS)
  Future<void> _runSubnetScanFallback() async {
    await for (final device in _scanSubnetInternal()) {
      _log('Subnet scan found: ${device.name} at ${device.host}');
      _addDiscoveredDevice(device);
    }
    _log('Subnet scan complete: ${_devices.length} devices total');
  }

  /// The known device with [deviceId], if it has been discovered.
  WemoDevice? deviceById(String deviceId) => _devices[deviceId];

  /// Rename [deviceId] on the device itself.
  ///
  /// The name lives on the hardware, so the local copy is only updated once
  /// the device has accepted it - a failure leaves the old name in place and
  /// is thrown for the caller to report.
  Future<void> renameDevice(String deviceId, String name) async {
    final device = _devices[deviceId];
    if (device == null) return;

    final trimmed = name.trim();
    await _controlService.setFriendlyName(device, trimmed);

    _devices[deviceId] = device.copyWith(name: trimmed);
    _log('Renamed ${device.name} to $trimmed');
    notifyListeners();
  }

  /// Refresh the state of a specific device
  Future<void> refreshDeviceState(String deviceId) async {
    final device = _devices[deviceId];
    if (device == null) return;

    await _refreshDeviceState(device);
  }

  Future<void> _refreshDeviceState(WemoDevice device) async {
    try {
      DeviceState state;
      if (device.type == WemoDeviceType.insight) {
        state = await _controlService.getInsightParams(device);
      } else {
        state = await _controlService.getState(device);
      }
      _deviceStates[device.id] = state;
      notifyListeners();
    } catch (e) {
      _deviceStates[device.id] = DeviceState.error(e.toString());
      notifyListeners();
    }
  }

  /// Refresh state of all devices
  Future<void> refreshAllDevices() async {
    final futures = _devices.values.map(
      (device) => _refreshDeviceState(device),
    );
    await Future.wait(futures);
  }

  /// Start periodic state refresh
  void startPeriodicRefresh({Duration interval = const Duration(seconds: 30)}) {
    stopPeriodicRefresh();
    _refreshTimer = Timer.periodic(interval, (_) => refreshAllDevices());
  }

  /// Stop periodic state refresh
  void stopPeriodicRefresh() {
    if (_refreshTimer == null) return;
    _refreshTimer?.cancel();
    _refreshTimer = null;
    notifyListeners();
  }

  /// Turn a device on
  Future<void> turnOn(String deviceId) async {
    final device = _devices[deviceId];
    if (device == null) return;

    try {
      await _controlService.turnOn(device);
      _deviceStates[deviceId] =
          (_deviceStates[deviceId] ?? DeviceState.unknown()).copyWith(
            isOn: true,
            lastUpdated: DateTime.now(),
          );
      notifyListeners();
    } catch (e) {
      _error = ErrorHandler.getUserFriendlyMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Turn a device off
  Future<void> turnOff(String deviceId) async {
    final device = _devices[deviceId];
    if (device == null) return;

    try {
      await _controlService.turnOff(device);
      _deviceStates[deviceId] =
          (_deviceStates[deviceId] ?? DeviceState.unknown()).copyWith(
            isOn: false,
            lastUpdated: DateTime.now(),
          );
      notifyListeners();
    } catch (e) {
      _error = ErrorHandler.getUserFriendlyMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Toggle a device's state
  Future<void> toggle(String deviceId) async {
    final device = _devices[deviceId];
    if (device == null) return;

    try {
      final newState = await _controlService.toggle(device);
      _deviceStates[deviceId] =
          (_deviceStates[deviceId] ?? DeviceState.unknown()).copyWith(
            isOn: newState,
            lastUpdated: DateTime.now(),
          );
      notifyListeners();
    } catch (e) {
      _error = ErrorHandler.getUserFriendlyMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Set brightness for dimmer devices
  Future<void> setBrightness(String deviceId, int brightness) async {
    final device = _devices[deviceId];
    if (device == null) return;

    try {
      await _controlService.setBrightness(device, brightness);
      _deviceStates[deviceId] =
          (_deviceStates[deviceId] ?? DeviceState.unknown()).copyWith(
            isOn: brightness > 0,
            brightness: brightness,
            lastUpdated: DateTime.now(),
          );
      notifyListeners();
    } catch (e) {
      _error = ErrorHandler.getUserFriendlyMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Clear error message
  void clearError() {
    _error = null;
    notifyListeners();
  }

  /// Remove a device from the list
  void removeDevice(String deviceId) {
    _devices.remove(deviceId);
    _deviceStates.remove(deviceId);
    notifyListeners();
  }

  /// Clear all devices
  void clearDevices() {
    _devices.clear();
    _deviceStates.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    if (_disposed) return;
    _disposed = true;
    stopPeriodicRefresh();
    _discoveryService.dispose();
    _controlService.dispose();
    super.dispose();
  }
}
