import 'dart:async';
import '../core/soap_client.dart';
import '../core/constants.dart';
import '../core/exceptions.dart';
import '../core/crypto_utils.dart';
import '../models/wemo_device.dart';
import '../models/device_state.dart';

/// WiFi network information from device scan
class WifiNetwork {
  final String ssid;
  final int channel;
  final int signalStrength;
  final String authMode;
  final String encryption;

  WifiNetwork({
    required this.ssid,
    required this.channel,
    required this.signalStrength,
    required this.authMode,
    required this.encryption,
  });

  @override
  String toString() => 'WifiNetwork($ssid, $authMode/$encryption, ch$channel, $signalStrength%)';
}

/// Result of a reset operation
enum ResetResult {
  success,
  resetRemote,
  failed,
}

/// Status of WiFi setup
enum WifiSetupStatus {
  connecting,    // 0 - Still trying
  connected,     // 1 - Success
  passwordShort, // 2 - Password too short
  handshake,     // 3 - Handshake/uncertain
  failed,
}

/// Service for controlling Wemo devices
class DeviceControlService {
  final SoapClient _soapClient;
  final Future<void> Function(Duration) _delay;

  DeviceControlService({
    SoapClient? soapClient,
    Future<void> Function(Duration)? delay,
  })  : _soapClient = soapClient ?? SoapClient(),
        _delay = delay ?? ((d) => Future.delayed(d));

  /// Get the current binary state of a device
  Future<DeviceState> getState(WemoDevice device) async {
    try {
      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'basicevent1',
        action: 'GetBinaryState',
        serviceType: WemoConstants.basicEventService,
      );

      final binaryState = response['BinaryState'] ?? '0';
      return _parseBinaryState(binaryState, device);
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException('Failed to get state', deviceName: device.name, cause: e);
    }
  }

  /// Set the binary state of a device (on/off)
  Future<void> setState(WemoDevice device, bool isOn) async {
    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'basicevent1',
        action: 'SetBinaryState',
        serviceType: WemoConstants.basicEventService,
        arguments: {'BinaryState': isOn ? '1' : '0'},
      );
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to set state to ${isOn ? "on" : "off"}',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Turn a device on
  Future<void> turnOn(WemoDevice device) => setState(device, true);

  /// Turn a device off
  Future<void> turnOff(WemoDevice device) => setState(device, false);

  /// Toggle a device's state
  Future<bool> toggle(WemoDevice device) async {
    final state = await getState(device);
    final newState = !state.isOn;
    await setState(device, newState);
    return newState;
  }

  /// Set brightness for dimmer devices (0-100)
  Future<void> setBrightness(WemoDevice device, int brightness) async {
    if (!device.type.supportsBrightness) {
      throw DeviceException(
        'Device does not support brightness control',
        deviceName: device.name,
      );
    }

    // Clamp brightness to valid range
    final clampedBrightness = brightness.clamp(0, 100);

    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'basicevent1',
        action: 'SetBinaryState',
        serviceType: WemoConstants.basicEventService,
        arguments: {
          'BinaryState': clampedBrightness > 0 ? '1' : '0',
          'brightness': clampedBrightness.toString(),
        },
      );
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to set brightness to $clampedBrightness',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Get Insight device parameters (power usage, etc.)
  Future<InsightState> getInsightParams(WemoDevice device) async {
    if (device.type != WemoDeviceType.insight) {
      throw DeviceException(
        'Device is not an Insight plug',
        deviceName: device.name,
      );
    }

    try {
      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'insight1',
        action: 'GetInsightParams',
        serviceType: WemoConstants.insightService,
      );

      return _parseInsightParams(response['InsightParams'] ?? '', device);
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to get Insight parameters',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Parse BinaryState response
  /// Can be simple "0" or "1", or complex "1|timestamp|...|..."
  DeviceState _parseBinaryState(String binaryState, WemoDevice device) {
    final parts = binaryState.split('|');
    final stateValue = parts[0];

    // Parse state - can be "0", "1", or "8" (standby for Insight)
    final isOn = stateValue == '1';

    // For dimmer devices, try to parse brightness
    int? brightness;
    if (device.type.supportsBrightness && parts.length > 1) {
      brightness = int.tryParse(parts[1]);
    }

    return DeviceState(
      isOn: isOn,
      brightness: brightness,
      isReachable: true,
      lastUpdated: DateTime.now(),
    );
  }

  /// Parse Insight parameters
  /// Format: "state|lastchange|onfor|ontoday|ontotal|timeperiod|avgpower|currpower|todaymw|totalmw|powerthreshold"
  InsightState _parseInsightParams(String params, WemoDevice device) {
    final parts = params.split('|');

    if (parts.length < 11) {
      return InsightState(
        isOn: false,
        isReachable: true,
        lastUpdated: DateTime.now(),
        error: 'Invalid Insight parameters format',
      );
    }

    final state = int.tryParse(parts[0]) ?? 0;
    final isOn = state == 1;
    final standbyState = state;

    // Parse power values
    final currentPowerMw = double.tryParse(parts[7]) ?? 0;
    final todayMw = double.tryParse(parts[8]) ?? 0;
    final totalMw = double.tryParse(parts[9]) ?? 0;

    // Convert milliwatt-minutes to kWh
    // todaymw and totalmw are in mW*minutes
    final todayKwh = todayMw / (60 * 1000 * 1000);
    final totalKwh = totalMw / (60 * 1000 * 1000);

    // Parse time values (in seconds)
    final todayOnTime = int.tryParse(parts[3]) ?? 0;
    final totalOnTime = int.tryParse(parts[4]) ?? 0;

    return InsightState(
      isOn: isOn,
      isReachable: true,
      lastUpdated: DateTime.now(),
      currentPowerMw: currentPowerMw,
      todayKwh: todayKwh,
      totalKwh: totalKwh,
      todayOnTimeSeconds: todayOnTime,
      totalOnTimeSeconds: totalOnTime,
      standbyState: standbyState,
    );
  }

  /// Reset the device
  ///
  /// [data] - Reset user data (true to clear)
  /// [wifi] - Reset WiFi settings (true to clear)
  Future<ResetResult> resetDevice(WemoDevice device, {bool data = false, bool wifi = false}) async {
    try {
      // Build reset flags
      // data=1 resets user data, wifi=1 resets WiFi config
      final dataFlag = data ? '1' : '0';
      final wifiFlag = wifi ? '1' : '0';

      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'ReSetup',
        serviceType: WemoConstants.wifiSetupService,
        arguments: {
          'Reset': '$dataFlag|$wifiFlag',
        },
      );

      // Parse response
      final result = response['Reset'] ?? '';
      if (result.contains('success') || result == '1') {
        return ResetResult.success;
      } else if (result.contains('remote')) {
        return ResetResult.resetRemote;
      }
      return ResetResult.failed;
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to reset device',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Factory reset the device (clears all settings)
  Future<ResetResult> factoryReset(WemoDevice device) async {
    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'ReSet',
        serviceType: WemoConstants.wifiSetupService,
        arguments: {
          'Reset': '1',
        },
      );
      return ResetResult.success;
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to factory reset device',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Get list of available WiFi networks from device scan
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    try {
      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'GetApList',
        serviceType: WemoConstants.wifiSetupService,
      );

      final apList = response['ApList'] ?? '';
      return _parseApList(apList);
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to get available networks',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Parse the AP list response
  /// Format: "SSID|Channel|SignalStrength|AuthMode|EncryptType,..."
  List<WifiNetwork> _parseApList(String apList) {
    if (apList.isEmpty) return [];

    final networks = <WifiNetwork>[];
    final entries = apList.split(',');

    for (final entry in entries) {
      final parts = entry.split('|');
      if (parts.length >= 5) {
        networks.add(WifiNetwork(
          ssid: parts[0],
          channel: int.tryParse(parts[1]) ?? 0,
          signalStrength: int.tryParse(parts[2]) ?? 0,
          authMode: parts[3],
          encryption: parts[4],
        ));
      }
    }

    return networks;
  }

  /// Setup WiFi on the device
  ///
  /// [ssid] - Network name to connect to
  /// [password] - Network password
  /// [timeout] - How long to wait for connection (default 30 seconds)
  Future<WifiSetupStatus> setupWifi(
    WemoDevice device, {
    required String ssid,
    required String password,
    Duration timeout = const Duration(seconds: 30),
  }) async {
    try {
      // Get device info for encryption
      final mac = device.macAddress ?? '';
      final serial = device.serialNumber ?? '';

      if (mac.isEmpty || serial.isEmpty) {
        throw DeviceException(
          'Device MAC address or serial number not available',
          deviceName: device.name,
        );
      }

      // Encrypt the password using the device's encryption method
      // Try method 1 first (original), fall back to method 2 (RTOS) if needed
      String encryptedPassword;
      try {
        encryptedPassword = WemoCrypto.encryptPassword(
          password: password,
          mac: mac,
          serial: serial,
          method: 1,
        );
      } catch (_) {
        encryptedPassword = WemoCrypto.encryptPassword(
          password: password,
          mac: mac,
          serial: serial,
          method: 2,
        );
      }

      // Send the connect command
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'ConnectHomeNetwork',
        serviceType: WemoConstants.wifiSetupService,
        arguments: {
          'ssid': ssid,
          'auth': 'WPAPSK', // Most common, could be detected from scan
          'password': encryptedPassword,
          'encrypt': 'AES', // Most common
        },
      );

      // Poll for connection status
      final endTime = DateTime.now().add(timeout);
      while (DateTime.now().isBefore(endTime)) {
        await _delay(const Duration(seconds: 2));

        try {
          final status = await _getWifiStatus(device);
          if (status != WifiSetupStatus.connecting) {
            return status;
          }
        } catch (_) {
          // Device might be reconnecting, keep trying
        }
      }

      return WifiSetupStatus.failed;
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to setup WiFi',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  /// Get current WiFi setup status
  Future<WifiSetupStatus> _getWifiStatus(WemoDevice device) async {
    try {
      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'GetNetworkStatus',
        serviceType: WemoConstants.wifiSetupService,
      );

      final status = int.tryParse(response['NetworkStatus'] ?? '0') ?? 0;

      switch (status) {
        case 0:
          return WifiSetupStatus.connecting;
        case 1:
          return WifiSetupStatus.connected;
        case 2:
          return WifiSetupStatus.passwordShort;
        case 3:
          return WifiSetupStatus.handshake;
        default:
          return WifiSetupStatus.failed;
      }
    } catch (e) {
      return WifiSetupStatus.failed;
    }
  }

  /// Close current WiFi connection (for testing/reconnect)
  Future<void> closeWifiConnection(WemoDevice device) async {
    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'CloseNetwork',
        serviceType: WemoConstants.wifiSetupService,
      );
    } catch (e) {
      if (e is WemoException) rethrow;
      throw DeviceException(
        'Failed to close WiFi connection',
        deviceName: device.name,
        cause: e,
      );
    }
  }

  void dispose() {
    _soapClient.dispose();
  }
}
