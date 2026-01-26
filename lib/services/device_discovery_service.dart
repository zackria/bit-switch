import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import '../core/ssdp_client.dart';
import '../core/constants.dart';
import '../core/exceptions.dart';
import '../models/wemo_device.dart';

/// Service for discovering Wemo devices on the local network
class DeviceDiscoveryService {
  final SsdpClient _ssdpClient;
  final http.Client _httpClient;

  DeviceDiscoveryService({
    SsdpClient? ssdpClient,
    http.Client? httpClient,
  })  : _ssdpClient = ssdpClient ?? SsdpClient(),
        _httpClient = httpClient ?? http.Client();

  /// Discover all Wemo devices on the local network
  Stream<WemoDevice> discoverDevices({
    Duration timeout = WemoConstants.ssdpTimeout,
  }) async* {
    await for (final response in _ssdpClient.discover(timeout: timeout)) {
      try {
        final device = await _fetchDeviceInfo(response);
        if (device != null) {
          yield device;
        }
      } catch (e) {
        // Continue discovering even if one device fails
        // Error details available in the exception if needed
      }
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

  /// Fetch device information from setup.xml
  Future<WemoDevice?> _fetchDeviceInfo(SsdpResponse ssdpResponse) async {
    try {
      final response = await _httpClient
          .get(Uri.parse(ssdpResponse.location))
          .timeout(WemoConstants.requestTimeout);

      if (response.statusCode != 200) {
        throw NetworkException('HTTP ${response.statusCode}');
      }

      return _parseSetupXml(response.body, ssdpResponse);
    } catch (e) {
      throw DiscoveryException(
        'Failed to fetch device info from ${ssdpResponse.location}',
        e,
      );
    }
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
      final friendlyName = deviceElement.findElements('friendlyName').firstOrNull?.innerText;
      final manufacturer = deviceElement.findElements('manufacturer').firstOrNull?.innerText;
      final modelName = deviceElement.findElements('modelName').firstOrNull?.innerText;
      final serialNumber = deviceElement.findElements('serialNumber').firstOrNull?.innerText;
      final udn = deviceElement.findElements('UDN').firstOrNull?.innerText;
      final firmwareVersion = deviceElement.findElements('firmwareVersion').firstOrNull?.innerText;
      final macAddress = deviceElement.findElements('macAddress').firstOrNull?.innerText;

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
      throw DiscoveryException('Failed to parse setup.xml', e);
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
  Future<WemoDevice?> probeHost(
    String host, {
    List<int> ports = WemoConstants.devicePorts,
  }) async {
    final ssdpResponse = await _ssdpClient.probe(host, ports: ports);
    if (ssdpResponse == null) {
      return null;
    }
    return _fetchDeviceInfo(ssdpResponse);
  }

  void dispose() {
    _httpClient.close();
  }
}
