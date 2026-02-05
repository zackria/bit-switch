import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import '../core/ssdp_client.dart';
import '../core/constants.dart';
import '../core/exceptions.dart';
import '../models/wemo_device.dart';

/// Service for discovering Wemo devices on the local network
///
/// Handles SSDP discovery and HTTP-based device information retrieval.
/// Implements retry logic with exponential backoff for reliability.
class DeviceDiscoveryService {
  final SsdpClient _ssdpClient;
  final http.Client _httpClient;

  /// Maximum number of retries for HTTP requests
  static const _maxRetries = 3;

  /// Base delay for exponential backoff (doubles with each retry)
  static const _baseRetryDelay = Duration(milliseconds: 300);

  DeviceDiscoveryService({SsdpClient? ssdpClient, http.Client? httpClient})
    : _ssdpClient = ssdpClient ?? SsdpClient(),
      _httpClient = httpClient ?? http.Client();

  /// Discover all Wemo devices on the local network
  ///
  /// Returns a stream of unique [WemoDevice] instances as they are discovered.
  /// Devices are deduplicated by their unique device ID (UDN).
  Stream<WemoDevice> discoverDevices({
    Duration timeout = WemoConstants.ssdpTimeout,
    void Function(String)? onDebugLog,
  }) async* {
    // Track yielded devices by ID to prevent duplicates
    final seenDeviceIds = <String>{};

    void log(String msg) => onDebugLog?.call(msg);

    log('Starting SSDP discovery...');
    try {
      await for (final response in _ssdpClient.discover(
        timeout: timeout,
        onDebugLog: onDebugLog,
      )) {
        try {
          log('Processing: ${response.host}:${response.port}');
          final device = await _fetchDeviceInfo(response, log);

          if (device == null) {
            log('  → Could not parse device info');
            continue;
          }

          // Deduplicate by device ID (UDN)
          if (seenDeviceIds.contains(device.id)) {
            log('  → Duplicate device: ${device.name}');
            continue;
          }

          seenDeviceIds.add(device.id);
          log('  → Found: ${device.name} (${device.type.name})');
          yield device;
        } catch (e) {
          // Log but continue - don't let one device failure stop discovery
          log('  → Error: $e');
        }
      }
      log('Discovery complete: ${seenDeviceIds.length} devices found');
    } on DiscoveryException {
      rethrow;
    } catch (e) {
      throw DiscoveryException('Device discovery failed', cause: e);
    }
  }

  /// Discover all devices and return as a list
  Future<List<WemoDevice>> discoverAll({
    Duration timeout = WemoConstants.ssdpTimeout,
  }) async {
    final devices = <WemoDevice>[];
    await for (final device in discoverDevices(timeout: timeout)) {
      devices.add(device);
    }
    return devices;
  }

  /// Fetch device information from setup.xml with exponential backoff retry
  Future<WemoDevice?> _fetchDeviceInfo(
    SsdpResponse ssdpResponse,
    void Function(String) log,
  ) async {
    Exception? lastException;

    for (int attempt = 1; attempt <= _maxRetries; attempt++) {
      try {
        final response = await _httpClient
            .get(Uri.parse(ssdpResponse.location))
            .timeout(WemoConstants.requestTimeout);

        if (response.statusCode != 200) {
          throw NetworkException(
            'HTTP ${response.statusCode}',
            host: ssdpResponse.host,
            port: ssdpResponse.port,
          );
        }

        return _parseSetupXml(response.body, ssdpResponse);
      } on TimeoutException {
        lastException = NetworkException(
          'Request timeout',
          host: ssdpResponse.host,
          port: ssdpResponse.port,
        );
      } catch (e) {
        lastException = e is Exception ? e : Exception(e.toString());
      }

      if (attempt < _maxRetries) {
        final delay = _baseRetryDelay * (1 << (attempt - 1)); // 300ms, 600ms
        log(
          '  → Retry $attempt/${_maxRetries - 1} in ${delay.inMilliseconds}ms',
        );
        await Future.delayed(delay);
      }
    }

    throw DiscoveryException(
      'Failed to fetch device info from ${ssdpResponse.host}:${ssdpResponse.port}',
      cause: lastException,
      failedLocation: ssdpResponse.location,
    );
  }

  /// Parse the setup.xml document to extract device information
  WemoDevice? _parseSetupXml(String xml, SsdpResponse ssdpResponse) {
    try {
      final document = XmlDocument.parse(xml);
      final root = document.rootElement;

      // Find the device element
      final deviceElement = root.findAllElements('device').firstOrNull;
      if (deviceElement == null) {
        return null;
      }

      // Extract device properties
      final friendlyName = deviceElement
          .findElements('friendlyName')
          .firstOrNull
          ?.innerText;
      final manufacturer = deviceElement
          .findElements('manufacturer')
          .firstOrNull
          ?.innerText;
      final modelName = deviceElement
          .findElements('modelName')
          .firstOrNull
          ?.innerText;
      final serialNumber = deviceElement
          .findElements('serialNumber')
          .firstOrNull
          ?.innerText;
      final udn = deviceElement.findElements('UDN').firstOrNull?.innerText;
      final firmwareVersion = deviceElement
          .findElements('firmwareVersion')
          .firstOrNull
          ?.innerText;
      final macAddress = deviceElement
          .findElements('macAddress')
          .firstOrNull
          ?.innerText;

      if (friendlyName == null || udn == null) {
        return null;
      }

      // Determine device type from UDN
      final deviceType = _determineDeviceType(udn, modelName);

      return WemoDevice(
        id: udn,
        name: friendlyName,
        host: ssdpResponse.host,
        port: ssdpResponse.port,
        type: deviceType,
        manufacturer: manufacturer,
        model: modelName,
        serialNumber: serialNumber,
        firmwareVersion: firmwareVersion,
        macAddress: macAddress,
        udn: udn,
      );
    } catch (e) {
      throw DiscoveryException('Failed to parse setup.xml', cause: e);
    }
  }

  /// Determine the device type from the UDN and model name
  WemoDeviceType _determineDeviceType(String udn, String? modelName) {
    final udnLower = udn.toLowerCase();
    final modelLower = modelName?.toLowerCase() ?? '';

    if (udnLower.contains('socket') || modelLower.contains('socket')) {
      return WemoDeviceType.wemoSwitch;
    }
    if (udnLower.contains('lightswitch')) {
      return WemoDeviceType.lightSwitch;
    }
    if (udnLower.contains('dimmer-2') || modelLower.contains('dimmer v2')) {
      return WemoDeviceType.dimmerV2;
    }
    if (udnLower.contains('dimmer')) {
      return WemoDeviceType.dimmer;
    }
    if (udnLower.contains('insight')) {
      return WemoDeviceType.insight;
    }
    if (udnLower.contains('sensor') || modelLower.contains('motion')) {
      return WemoDeviceType.motion;
    }
    if (udnLower.contains('coffeemaker') || modelLower.contains('coffee')) {
      return WemoDeviceType.coffeemaker;
    }
    if (udnLower.contains('maker')) {
      return WemoDeviceType.maker;
    }
    if (udnLower.contains('bridge')) {
      return WemoDeviceType.bridge;
    }
    if (udnLower.contains('crockpot')) {
      return WemoDeviceType.crockpot;
    }
    if (udnLower.contains('humidifier')) {
      return WemoDeviceType.humidifier;
    }
    if (modelLower.contains('outdoor')) {
      return WemoDeviceType.outdoorPlug;
    }

    return WemoDeviceType.unknown;
  }

  /// Probe a specific host for a Wemo device
  ///
  /// Attempts to connect to the host on the specified ports and fetch device info.
  /// Returns null if no device is found or the connection fails.
  Future<WemoDevice?> probeHost(
    String host, {
    List<int> ports = WemoConstants.devicePorts,
  }) async {
    final ssdpResponse = await _ssdpClient.probe(host, ports: ports);
    if (ssdpResponse == null) {
      return null;
    }
    try {
      return await _fetchDeviceInfo(ssdpResponse, (_) {});
    } on DiscoveryException {
      return null;
    }
  }

  void dispose() {
    _httpClient.close();
  }
}
