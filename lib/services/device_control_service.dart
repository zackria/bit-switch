import 'dart:async';
import 'package:flutter/foundation.dart';
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

  /// Update the request timeout for device communication
  void setRequestTimeout(Duration timeout) {
    _soapClient.timeout = timeout;
  }

  /// Rethrow [e] as-is (preserving [stackTrace]) if it's already a
  /// [WemoException], otherwise wrap it in a [DeviceException] describing
  /// which operation on which device failed.
  Never _wrapError(
    Object e,
    StackTrace stackTrace,
    WemoDevice device, {
    required String message,
    required String operation,
  }) {
    if (e is WemoException) Error.throwWithStackTrace(e, stackTrace);
    Error.throwWithStackTrace(
      DeviceException(
        message,
        deviceName: device.name,
        host: device.host,
        port: device.port,
        operation: operation,
        cause: e,
      ),
      stackTrace,
    );
  }

  /// Encrypt [password] for [device], trying encryption method 1 (original)
  /// first and falling back to method 2 (RTOS) if that fails.
  String _encryptPasswordForDevice(WemoDevice device, String password) {
    final mac = device.macAddress ?? '';
    final serial = device.serialNumber ?? '';

    if (mac.isEmpty || serial.isEmpty) {
      throw DeviceException(
        'Device MAC address or serial number not available',
        deviceName: device.name,
      );
    }

    try {
      return WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        method: 1,
      );
    } catch (_) {
      return WemoCrypto.encryptPassword(
        password: password,
        mac: mac,
        serial: serial,
        method: 2,
      );
    }
  }

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
    } catch (e, st) {
      _wrapError(e, st, device, message: 'Failed to get state', operation: 'getState');
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
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to set state to ${isOn ? "on" : "off"}',
        operation: 'setState',
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
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to set brightness to $clampedBrightness',
        operation: 'setBrightness',
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
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to get Insight parameters',
        operation: 'getInsightParams',
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
    } catch (e, st) {
      _wrapError(e, st, device, message: 'Failed to reset device', operation: 'resetDevice');
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
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to factory reset device',
        operation: 'factoryReset',
      );
    }
  }

  /// Get list of available WiFi networks from device scan
  ///
  /// GetApList causes the Wemo device to physically scan nearby WiFi networks,
  /// which can take 10–15 seconds. A long per-call timeout is intentional.
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    try {
      final response = await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'GetApList',
        serviceType: WemoConstants.wifiSetupService,
        options: const SoapCallOptions(
          requestTimeout: Duration(seconds: 15),
          maxRetriesOverride: 2,
        ),
      );

      final apList = response['ApList'] ?? '';
      final networks = _dedupeBySsid(_parseApList(apList));
      if (kDebugMode) {
        // An empty result is ambiguous without this: it can mean the device
        // hasn't finished scanning, or that it answered in a shape we don't
        // parse. Log enough of the raw value to tell those apart.
        final preview = apList.length > 400
            ? '${apList.substring(0, 400)}…'
            : apList;
        debugPrint(
          '[Control] GetApList fields=${response.keys.toList()} '
          'parsed=${networks.length} raw="$preview"',
        );
      }
      return networks;
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to get available networks',
        operation: 'getAvailableNetworks',
      );
    }
  }

  /// Parse the AP list response.
  ///
  /// Hardware answers with a page header and one entry per line:
  ///
  ///     Page:1/1/12$
  ///     AARYAN|6|100|WPA2PSK/AES,
  ///     Meross_SW_3BBF|1|24|OPEN/NONE,
  ///
  /// so an entry is `SSID|Channel|Signal|Auth/Encryption` - four fields,
  /// with auth and encryption joined by a slash, rather than the five
  /// separate fields older documentation describes. Both shapes are
  /// accepted. Anything unparseable is skipped instead of dragging the
  /// whole list down with it.
  List<WifiNetwork> _parseApList(String apList) {
    if (apList.trim().isEmpty) return [];

    // Drop the "Page:1/1/12$" header. Anchored so a '$' inside an SSID
    // further down can't truncate the list.
    final body = apList.replaceFirst(RegExp(r'^\s*Page:[^$]*\$'), '');

    final networks = <WifiNetwork>[];

    for (final entry in body.split(RegExp(r'[,\n]'))) {
      final parts = entry.trim().split('|');
      if (parts.length < 4) continue;

      final ssid = parts[0].trim();
      if (ssid.isEmpty) continue;

      final String authMode;
      final String encryption;
      if (parts.length >= 5) {
        authMode = parts[3].trim();
        encryption = parts[4].trim();
      } else {
        // The device is told these back when connecting, so the combined
        // "WPA2PSK/AES" field has to be split rather than passed through.
        final security = parts[3].trim().split('/');
        authMode = security.first.trim();
        encryption = security.length > 1 ? security[1].trim() : '';
      }

      networks.add(WifiNetwork(
        ssid: ssid,
        channel: int.tryParse(parts[1].trim()) ?? 0,
        signalStrength: int.tryParse(parts[2].trim()) ?? 0,
        authMode: authMode,
        encryption: encryption,
      ));
    }

    return networks;
  }

  /// Collapse repeated SSIDs - the same network seen on several channels or
  /// bands - keeping the strongest reading for each, so the picker shows one
  /// row per network instead of four "AARYAN"s.
  List<WifiNetwork> _dedupeBySsid(List<WifiNetwork> networks) {
    final strongest = <String, WifiNetwork>{};
    for (final network in networks) {
      final existing = strongest[network.ssid];
      if (existing == null ||
          network.signalStrength > existing.signalStrength) {
        strongest[network.ssid] = network;
      }
    }
    return strongest.values.toList();
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
      final encryptedPassword = _encryptPasswordForDevice(device, password);

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
          final status = await getWifiStatus(device);
          if (status != WifiSetupStatus.connecting) {
            return status;
          }
        } catch (_) {
          // Device might be reconnecting, keep trying
        }
      }

      return WifiSetupStatus.failed;
    } catch (e, st) {
      _wrapError(e, st, device, message: 'Failed to setup WiFi', operation: 'setupWifi');
    }
  }

  /// Get current WiFi setup status (public for pairing)
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
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
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to close WiFi connection',
        operation: 'closeWifiConnection',
      );
    }
  }

  /// Mark setup as complete on the device
  /// Called after WiFi is configured to finalize pairing
  Future<void> setSetupDoneStatus(WemoDevice device) async {
    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'SetSetupDoneStatus',
        serviceType: WemoConstants.wifiSetupService,
      );
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to mark setup as done',
        operation: 'setSetupDoneStatus',
      );
    }
  }

  /// Close the device's setup mode
  /// Called after WiFi is configured to exit setup mode
  Future<void> closeSetup(WemoDevice device) async {
    try {
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'CloseSetup',
        serviceType: WemoConstants.wifiSetupService,
      );
    } catch (e, st) {
      _wrapError(e, st, device, message: 'Failed to close setup', operation: 'closeSetup');
    }
  }

  /// Send ConnectHomeNetwork command to the device
  /// This is separated from setupWifi for more control in the pairing flow
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
  }) async {
    try {
      final encryptedPassword = _encryptPasswordForDevice(device, password);

      // Send the connect command
      await _soapClient.call(
        host: device.host,
        port: device.port,
        serviceName: 'WiFiSetup1',
        action: 'ConnectHomeNetwork',
        serviceType: WemoConstants.wifiSetupService,
        arguments: {
          'ssid': ssid,
          'auth': authMode,
          'password': encryptedPassword,
          'encrypt': encryption,
        },
      );
    } catch (e, st) {
      _wrapError(
        e,
        st,
        device,
        message: 'Failed to connect to home network',
        operation: 'connectToHomeNetwork',
      );
    }
  }

  void dispose() {
    _soapClient.dispose();
  }
}
