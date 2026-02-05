import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import '../models/wemo_device.dart';
import '../models/device_state.dart';
import '../services/device_discovery_service.dart';
import '../services/device_control_service.dart';
import '../core/exceptions.dart';
import '../core/error_handler.dart';

/// Provider for managing Wemo devices
class DeviceProvider extends ChangeNotifier {
  final DeviceDiscoveryService _discoveryService;
  final DeviceControlService _controlService;

  /// Map of device ID to device
  final Map<String, WemoDevice> _devices = {};

  /// Map of device ID to current state
  final Map<String, DeviceState> _deviceStates = {};

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
  void setDebugMode(bool enabled) {
    _debugMode = enabled;
    if (enabled) {
      // Run network diagnostics when debug mode is enabled
      _runNetworkDiagnostics();
    } else {
      _debugLog.clear();
    }
    notifyListeners();
  }

  /// Run network diagnostics to help debug connectivity issues
  Future<void> _runNetworkDiagnostics() async {
    _log('=== Network Diagnostics ===');

    String? localIp;
    try {
      // Get network interfaces
      final interfaces = await NetworkInterface.list();
      _log('Network interfaces: ${interfaces.length}');
      for (final interface in interfaces) {
        for (final addr in interface.addresses) {
          if (addr.type == InternetAddressType.IPv4) {
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
      }
      if (localIp != null) {
        _log('>>> Local WiFi IP: $localIp');
      } else {
        _log('>>> WARNING: No WiFi IP found!');
      }
    } catch (e) {
      _log('Failed to get interfaces: $e');
    }

    try {
      // Try to create a UDP socket
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

    _log('=== End Diagnostics ===');
    _log('Tap refresh to start discovery...');
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
        _devices[device.id] = device;
        notifyListeners();
        _log('>>> Device added successfully! <<<');

        // Fetch state
        unawaited(_refreshDeviceState(device));
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
        _devices[device.id] = device;
        notifyListeners();
        unawaited(_refreshDeviceState(device));
      });
    } catch (e) {
      _log('Scan error: $e');
      _error = 'Subnet scan failed: $e';
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
      for (final interface in interfaces) {
        for (final addr in interface.addresses) {
          if (addr.type == InternetAddressType.IPv4 &&
              !addr.address.startsWith('127.')) {
            if (addr.address.startsWith('192.168.') ||
                addr.address.startsWith('10.') ||
                addr.address.startsWith('172.')) {
              localIp = addr.address;
              break;
            }
          }
        }
        if (localIp != null) break;
      }
    } catch (e) {
      _log('ERROR: Could not determine local IP: $e');
      _error = 'Could not determine local network';
      return;
    }

    if (localIp == null) {
      _log('ERROR: Could not determine local IP');
      _error = 'Could not determine local network';
      return;
    }

    _log('Local IP: $localIp');
    final subnet = localIp.substring(0, localIp.lastIndexOf('.'));
    _log('Scanning subnet: $subnet.1-254');

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
    final discoveryStream = _discoveryService.discoverDevices(
      timeout: timeout,
      onDebugLog: _debugMode ? _log : null,
    ).handleError((error, stackTrace) {
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

    await for (final device in discoveryStream) {
      _log('Found device: ${device.name} at ${device.host}:${device.port}');
      _devices[device.id] = device;
      notifyListeners();

      // Fetch initial state for the device (don't await - do in background)
      unawaited(_refreshDeviceState(device));
    }

    _log('SSDP discovery phase complete: ${_devices.length} devices');
  }

  /// Run subnet scan as fallback (primarily for iOS)
  Future<void> _runSubnetScanFallback() async {
    await for (final device in _scanSubnetInternal()) {
      _log('Subnet scan found: ${device.name} at ${device.host}');
      _devices[device.id] = device;
      notifyListeners();
      unawaited(_refreshDeviceState(device));
    }
    _log('Subnet scan complete: ${_devices.length} devices total');
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
