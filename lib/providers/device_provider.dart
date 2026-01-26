import 'dart:async';
import 'package:flutter/foundation.dart';
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

  DeviceProvider({
    DeviceDiscoveryService? discoveryService,
    DeviceControlService? controlService,
  })  : _discoveryService = discoveryService ?? DeviceDiscoveryService(),
        _controlService = controlService ?? DeviceControlService();

  // Getters
  List<WemoDevice> get devices => _devices.values.toList();
  bool get isDiscovering => _isDiscovering;
  String? get error => _error;
  DeviceControlService get controlService => _controlService;

  /// Get the state for a specific device
  DeviceState getDeviceState(String deviceId) {
    return _deviceStates[deviceId] ?? DeviceState.unknown();
  }

  /// Start discovering devices
  /// [timeout] - Duration to wait for device discovery (default 10 seconds)
  Future<void> discoverDevices({Duration timeout = const Duration(seconds: 10)}) async {
    if (_isDiscovering) return;

    _isDiscovering = true;
    _error = null;
    notifyListeners();

    try {
      await for (final device in _discoveryService.discoverDevices(timeout: timeout)) {
        _devices[device.id] = device;
        notifyListeners();

        // Fetch initial state for the device
        _refreshDeviceState(device);
      }
    } on DiscoveryException catch (e) {
      // Network/permission related error - show user-friendly message
      _error = e.message;
    } catch (e) {
      _error = ErrorHandler.getUserFriendlyMessage(e);
    } finally {
      _isDiscovering = false;
      notifyListeners();
    }
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
    final futures = _devices.values.map((device) => _refreshDeviceState(device));
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
      _deviceStates[deviceId] = (_deviceStates[deviceId] ?? DeviceState.unknown())
          .copyWith(isOn: true, lastUpdated: DateTime.now());
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
      _deviceStates[deviceId] = (_deviceStates[deviceId] ?? DeviceState.unknown())
          .copyWith(isOn: false, lastUpdated: DateTime.now());
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
      _deviceStates[deviceId] = (_deviceStates[deviceId] ?? DeviceState.unknown())
          .copyWith(isOn: newState, lastUpdated: DateTime.now());
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
      _deviceStates[deviceId] = (_deviceStates[deviceId] ?? DeviceState.unknown())
          .copyWith(
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
    stopPeriodicRefresh();
    _discoveryService.dispose();
    _controlService.dispose();
    super.dispose();
  }
}
