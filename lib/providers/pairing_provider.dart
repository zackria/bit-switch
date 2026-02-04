import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:app_settings/app_settings.dart';
import '../core/constants.dart';
import '../models/pairing_state.dart';
import '../models/wemo_device.dart';
import '../services/device_control_service.dart';
import '../services/device_discovery_service.dart';
import '../services/wifi_detection_service.dart';

/// Provider for managing the device pairing wizard state
class PairingProvider extends ChangeNotifier {
  final DeviceControlService _controlService;
  final DeviceDiscoveryService _discoveryService;
  final WifiDetectionService _wifiService;

  PairingState _state = PairingState.initial();
  StreamSubscription<String?>? _ssidSubscription;
  Timer? _configPollTimer;

  PairingProvider({
    DeviceControlService? controlService,
    DeviceDiscoveryService? discoveryService,
    WifiDetectionService? wifiService,
  }) : _controlService = controlService ?? DeviceControlService(),
       _discoveryService = discoveryService ?? DeviceDiscoveryService(),
       _wifiService = wifiService ?? WifiDetectionService();

  /// Current pairing state
  PairingState get state => _state;

  /// Check if pairing is supported on this platform
  bool get isPairingSupported => WifiDetectionService.isPairingSupported;

  /// Start the pairing wizard
  Future<void> startPairing() async {
    // Remember the current home network SSID before user switches to device AP
    final currentSsid = await _wifiService.getCurrentSsid();

    _state = PairingState.initial().copyWith(
      homeNetworkSsid: currentSsid,
      currentSsid: currentSsid,
    );
    notifyListeners();
  }

  /// Reset the pairing wizard to initial state
  void reset() {
    _stopSsidWatch();
    _stopConfigPolling();
    _state = PairingState.initial();
    notifyListeners();
  }

  /// Move to the next step
  void nextStep() {
    final nextStepIndex = _state.step.index + 1;
    if (nextStepIndex < PairingStep.values.length) {
      _state = _state.copyWith(
        step: PairingStep.values[nextStepIndex],
        clearErrorMessage: true,
      );
      notifyListeners();
    }
  }

  /// Move to a specific step
  void goToStep(PairingStep step) {
    _state = _state.copyWith(step: step, clearErrorMessage: true);
    notifyListeners();
  }

  /// Go back to the previous step
  void previousStep() {
    final prevStepIndex = _state.step.index - 1;
    if (prevStepIndex >= 0) {
      _state = _state.copyWith(
        step: PairingStep.values[prevStepIndex],
        clearErrorMessage: true,
      );
      notifyListeners();
    }
  }

  /// Move from intro to connect step and start monitoring SSID
  Future<void> startConnectToDevice() async {
    _state = _state.copyWith(step: PairingStep.connectToAp);
    notifyListeners();

    // Start watching for SSID changes
    _startSsidWatch();
  }

  /// Open system WiFi settings
  Future<void> openWifiSettings() async {
    try {
      await AppSettings.openAppSettings(type: AppSettingsType.wifi);
    } catch (e) {
      // Fallback - just inform user to do it manually
      _state = _state.copyWith(
        errorMessage: 'Could not open WiFi settings. Please open them manually.',
      );
      notifyListeners();
    }
  }

  /// Called when user confirms they've connected to the device WiFi
  Future<void> confirmConnectedToDeviceAp() async {
    _stopSsidWatch();

    // Update current SSID
    final currentSsid = await _wifiService.getCurrentSsid();
    _state = _state.copyWith(
      currentSsid: currentSsid,
      step: PairingStep.discoverDevice,
      isLoading: true,
      loadingMessage: 'Looking for device...',
    );
    notifyListeners();

    // Try to discover device on the AP network
    await _discoverDeviceOnAp();
  }

  /// Discover device on the Wemo AP network
  Future<void> _discoverDeviceOnAp() async {
    try {
      // First try the default Wemo AP IP
      WemoDevice? device = await _discoveryService.probeHost(
        WemoConstants.wemoApDefaultIp,
        ports: WemoConstants.devicePorts,
      );

      if (device == null) {
        // Fallback: try SSDP discovery (might work on some devices)
        await for (final d in _discoveryService.discoverDevices(
          timeout: WemoConstants.pairingDiscoveryTimeout,
        )) {
          device = d;
          break; // Take the first device found
        }
      }

      if (device != null) {
        _state = _state.copyWith(
          device: device,
          step: PairingStep.selectNetwork,
          isLoading: false,
          clearLoadingMessage: true,
        );
        notifyListeners();

        // Fetch available networks from the device
        await _fetchAvailableNetworks();
      } else {
        _state = _state.copyWith(
          isLoading: false,
          clearLoadingMessage: true,
          errorMessage: 'Could not find device. Make sure you\'re connected to the WeMo WiFi network.',
        );
        notifyListeners();
      }
    } catch (e) {
      _state = _state.copyWith(
        isLoading: false,
        clearLoadingMessage: true,
        errorMessage: 'Error discovering device: $e',
      );
      notifyListeners();
    }
  }

  /// Retry device discovery
  Future<void> retryDiscovery() async {
    _state = _state.copyWith(
      isLoading: true,
      loadingMessage: 'Looking for device...',
      clearErrorMessage: true,
    );
    notifyListeners();

    await _discoverDeviceOnAp();
  }

  /// Try to discover device at a manually entered IP
  Future<void> tryManualIp(String ip) async {
    _state = _state.copyWith(
      isLoading: true,
      loadingMessage: 'Connecting to $ip...',
      clearErrorMessage: true,
    );
    notifyListeners();

    try {
      final device = await _discoveryService.probeHost(
        ip,
        ports: WemoConstants.devicePorts,
      );

      if (device != null) {
        _state = _state.copyWith(
          device: device,
          step: PairingStep.selectNetwork,
          isLoading: false,
          clearLoadingMessage: true,
        );
        notifyListeners();

        await _fetchAvailableNetworks();
      } else {
        _state = _state.copyWith(
          isLoading: false,
          clearLoadingMessage: true,
          errorMessage: 'No device found at $ip',
        );
        notifyListeners();
      }
    } catch (e) {
      _state = _state.copyWith(
        isLoading: false,
        clearLoadingMessage: true,
        errorMessage: 'Error connecting to $ip: $e',
      );
      notifyListeners();
    }
  }

  /// Fetch available WiFi networks from the device
  Future<void> _fetchAvailableNetworks() async {
    if (_state.device == null) return;

    _state = _state.copyWith(
      isLoading: true,
      loadingMessage: 'Scanning for networks...',
    );
    notifyListeners();

    try {
      final networks = await _controlService.getAvailableNetworks(_state.device!);

      // Sort by signal strength (highest first)
      networks.sort((a, b) => b.signalStrength.compareTo(a.signalStrength));

      _state = _state.copyWith(
        availableNetworks: networks,
        isLoading: false,
        clearLoadingMessage: true,
      );
      notifyListeners();
    } catch (e) {
      _state = _state.copyWith(
        isLoading: false,
        clearLoadingMessage: true,
        errorMessage: 'Could not scan networks: $e',
      );
      notifyListeners();
    }
  }

  /// Refresh the network list
  Future<void> refreshNetworks() async {
    await _fetchAvailableNetworks();
  }

  /// Select a network to connect to
  void selectNetwork(String ssid) {
    _state = _state.copyWith(selectedSsid: ssid);
    notifyListeners();
  }

  /// Set the password for the selected network
  void setPassword(String password) {
    _state = _state.copyWith(password: password);
    notifyListeners();
  }

  /// Configure the device to connect to the selected network
  Future<void> configureNetwork() async {
    if (_state.device == null ||
        _state.selectedSsid == null ||
        _state.password == null) {
      _state = _state.copyWith(
        errorMessage: 'Please select a network and enter the password.',
      );
      notifyListeners();
      return;
    }

    _state = _state.copyWith(
      step: PairingStep.configuring,
      isLoading: true,
      loadingMessage: 'Sending network credentials...',
      clearErrorMessage: true,
    );
    notifyListeners();

    try {
      // Get the auth mode and encryption from the selected network
      final selectedNetwork = _state.availableNetworks.firstWhere(
        (n) => n.ssid == _state.selectedSsid,
        orElse: () => WifiNetwork(
          ssid: _state.selectedSsid!,
          channel: 0,
          signalStrength: 0,
          authMode: 'WPAPSK',
          encryption: 'AES',
        ),
      );

      // Send ConnectHomeNetwork command twice for reliability (pywemo trick)
      await _controlService.connectToHomeNetwork(
        _state.device!,
        ssid: _state.selectedSsid!,
        password: _state.password!,
        authMode: selectedNetwork.authMode,
        encryption: selectedNetwork.encryption,
      );

      // Small delay, then send again for reliability
      await Future.delayed(const Duration(milliseconds: 500));

      try {
        await _controlService.connectToHomeNetwork(
          _state.device!,
          ssid: _state.selectedSsid!,
          password: _state.password!,
          authMode: selectedNetwork.authMode,
          encryption: selectedNetwork.encryption,
        );
      } catch (_) {
        // Second call may fail if device started reconnecting, that's OK
      }

      _state = _state.copyWith(
        loadingMessage: 'Waiting for device to connect...',
      );
      notifyListeners();

      // Poll for connection status
      await _pollForConnection();
    } catch (e) {
      _state = _state.copyWith(
        step: PairingStep.selectNetwork,
        isLoading: false,
        clearLoadingMessage: true,
        errorMessage: 'Failed to configure network: $e',
      );
      notifyListeners();
    }
  }

  /// Poll the device for connection status
  Future<void> _pollForConnection() async {
    final startTime = DateTime.now();
    final timeout = WemoConstants.wifiSetupTimeout;

    while (DateTime.now().difference(startTime) < timeout) {
      try {
        final status = await _controlService.getWifiStatus(_state.device!);

        switch (status) {
          case WifiSetupStatus.connected:
            // Success! Move to reconnect step
            _state = _state.copyWith(
              step: PairingStep.reconnectHome,
              isLoading: false,
              clearLoadingMessage: true,
            );
            notifyListeners();

            // Start watching for SSID to detect when user reconnects
            _startSsidWatch();
            return;

          case WifiSetupStatus.passwordShort:
            _state = _state.copyWith(
              step: PairingStep.selectNetwork,
              isLoading: false,
              clearLoadingMessage: true,
              errorMessage: 'Password too short. Please check and try again.',
            );
            notifyListeners();
            return;

          case WifiSetupStatus.failed:
            _state = _state.copyWith(
              step: PairingStep.selectNetwork,
              isLoading: false,
              clearLoadingMessage: true,
              errorMessage: 'Failed to connect. Please check the password.',
            );
            notifyListeners();
            return;

          case WifiSetupStatus.connecting:
          case WifiSetupStatus.handshake:
            // Still connecting, continue polling
            break;
        }
      } catch (_) {
        // Device may be reconnecting, keep trying
      }

      await Future.delayed(const Duration(seconds: 2));
    }

    // Timeout
    _state = _state.copyWith(
      step: PairingStep.selectNetwork,
      isLoading: false,
      clearLoadingMessage: true,
      errorMessage: 'Connection timed out. Please try again.',
    );
    notifyListeners();
  }

  /// Called when user confirms they've reconnected to home network
  Future<void> confirmReconnectedToHome() async {
    _stopSsidWatch();

    _state = _state.copyWith(
      step: PairingStep.finalize,
      isLoading: true,
      loadingMessage: 'Finalizing setup...',
    );
    notifyListeners();

    await _finalizeSetup();
  }

  /// Finalize the device setup
  Future<void> _finalizeSetup() async {
    try {
      // Discover the device on the home network
      WemoDevice? device;

      // Try to find the device via SSDP
      await for (final d in _discoveryService.discoverDevices(
        timeout: WemoConstants.pairingDiscoveryTimeout,
      )) {
        // Match by serial number or MAC if available
        if (_state.device?.serialNumber != null &&
            d.serialNumber == _state.device?.serialNumber) {
          device = d;
          break;
        }
        if (_state.device?.macAddress != null &&
            d.macAddress == _state.device?.macAddress) {
          device = d;
          break;
        }
        // Otherwise take any device with matching name
        if (d.name == _state.device?.name) {
          device = d;
          break;
        }
      }

      if (device != null) {
        // Update device with new network location
        _state = _state.copyWith(device: device);

        // Try to finalize setup on the device
        try {
          await _controlService.setSetupDoneStatus(device);
        } catch (_) {
          // May fail if already set, that's OK
        }

        try {
          await _controlService.closeSetup(device);
        } catch (_) {
          // May fail if already closed, that's OK
        }

        _state = _state.copyWith(
          step: PairingStep.success,
          isLoading: false,
          clearLoadingMessage: true,
        );
        notifyListeners();
      } else {
        // Device not found on home network yet, but that's OK
        // It may take a moment to appear
        _state = _state.copyWith(
          step: PairingStep.success,
          isLoading: false,
          clearLoadingMessage: true,
        );
        notifyListeners();
      }
    } catch (e) {
      _state = _state.copyWith(
        step: PairingStep.error,
        isLoading: false,
        clearLoadingMessage: true,
        errorMessage: 'Error finalizing setup: $e',
      );
      notifyListeners();
    }
  }

  /// Start watching for SSID changes
  void _startSsidWatch() {
    _stopSsidWatch();
    _ssidSubscription = _wifiService
        .watchSsidChanges(interval: WemoConstants.ssidPollInterval)
        .listen((ssid) {
      _state = _state.copyWith(currentSsid: ssid);
      notifyListeners();
    });
  }

  /// Stop watching for SSID changes
  void _stopSsidWatch() {
    _ssidSubscription?.cancel();
    _ssidSubscription = null;
  }

  /// Stop config polling
  void _stopConfigPolling() {
    _configPollTimer?.cancel();
    _configPollTimer = null;
  }

  /// Set an error state
  void setError(String message, {bool canRetry = true}) {
    _state = _state.copyWith(
      step: PairingStep.error,
      errorMessage: message,
      canRetry: canRetry,
      isLoading: false,
      clearLoadingMessage: true,
    );
    notifyListeners();
  }

  /// Get the device that was paired (available after success)
  WemoDevice? get pairedDevice => _state.device;

  @override
  void dispose() {
    _stopSsidWatch();
    _stopConfigPolling();
    _controlService.dispose();
    _discoveryService.dispose();
    super.dispose();
  }
}
