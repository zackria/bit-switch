import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/models/wemo_device.dart';

class MockSsdpClient extends SsdpClient {
  final Stream<SsdpResponse> Function() discoverHandler;
  final Future<SsdpResponse?> Function(String host, {List<int>? ports})? probeHandler;

  MockSsdpClient({required this.discoverHandler, this.probeHandler});

  @override
  Stream<SsdpResponse> discover({Duration timeout = const Duration(seconds: 5), String searchTarget = ''}) {
    return discoverHandler();
  }

  @override
  Future<SsdpResponse?> probe(String host, {List<int> ports = const [], Duration timeout = const Duration(seconds: 2)}) async {
    if (probeHandler != null) {
      return probeHandler!(host, ports: ports);
    }
    return super.probe(host, ports: ports, timeout: timeout);
  }
}

void main() {
  group('DeviceDiscoveryService', () {
    const xmlBody = '''<?xml version="1.0"?>
<root>
  <device>
    <friendlyName>Test Switch</friendlyName>
    <manufacturer>Belkin International Inc.</manufacturer>
    <modelName>Socket</modelName>
    <serialNumber>221517K0101769</serialNumber>
    <UDN>uuid:Socket-1_0-221517K0101769</UDN>
    <firmwareVersion>WeMo_WW_2.00.10966.PVT-OWRT-SNS</firmwareVersion>
    <macAddress>AABBCCDDEEFF</macAddress>
  </device>
</root>''';

    test('discoverDevices should yield discovered devices', () async {
      final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
        yield SsdpResponse(
          location: 'http://192.168.1.100:49153/setup.xml',
          usn: 'uuid:Socket-1_0-221517K0101769',
          server: 'Belkin',
          address: InternetAddress('192.168.1.100'),
        );
      });

      final mockHttpClient = MockClient((request) async {
        expect(request.url.toString(), 'http://192.168.1.100:49153/setup.xml');
        return http.Response(xmlBody, 200);
      });

      final service = DeviceDiscoveryService(
        ssdpClient: mockSsdpClient,
        httpClient: mockHttpClient,
      );

      final devices = await service.discoverDevices().toList();
      expect(devices.length, 1);
      expect(devices.first.name, 'Test Switch');
      expect(devices.first.type, WemoDeviceType.wemoSwitch);
      expect(devices.first.host, '192.168.1.100');
    });

    test('discoverDevices should handle fetch failure', () async {
       final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
        yield SsdpResponse(
          location: 'http://192.168.1.100:49153/setup.xml',
          usn: 'uuid:1',
          server: 'Belkin',
          address: InternetAddress('192.168.1.100'),
        );
      });

      final mockHttpClient = MockClient((request) async {
        return http.Response('Not Found', 404);
      });

      final service = DeviceDiscoveryService(
        ssdpClient: mockSsdpClient,
        httpClient: mockHttpClient,
      );

      final devices = await service.discoverDevices().toList();
      expect(devices.isEmpty, true);
    });

    test('discoverDevices should handle XML parse error', () async {
       final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
        yield SsdpResponse(
          location: 'http://192.168.1.100:49153/setup.xml',
          usn: 'uuid:1',
          server: 'Belkin',
          address: InternetAddress('192.168.1.100'),
        );
      });

      final mockHttpClient = MockClient((request) async {
        return http.Response('<invalid xml', 200);
      });

      final service = DeviceDiscoveryService(
        ssdpClient: mockSsdpClient,
        httpClient: mockHttpClient,
      );

      final devices = await service.discoverDevices().toList();
      expect(devices.isEmpty, true);
    });

    test('discoverAll should return list of devices', () async {
      final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
         yield SsdpResponse(
          location: 'http://192.168.1.100:49153/setup.xml',
          usn: 'uuid:Socket-1_0-221517K0101769',
          server: 'Belkin',
          address: InternetAddress('192.168.1.100'),
        );
      });
      final mockHttpClient = MockClient((request) async => http.Response(xmlBody, 200));

      final service = DeviceDiscoveryService(
        ssdpClient: mockSsdpClient,
        httpClient: mockHttpClient,
      );

      final devices = await service.discoverAll();
      expect(devices.length, 1);
    });
    
    test('probeHost should return device if found', () async {
      final mockSsdpClient = MockSsdpClient(
        discoverHandler: () async* {},
        probeHandler: (host, {ports = const []}) async {
          if (host == '192.168.1.100') {
             return SsdpResponse(
              location: 'http://192.168.1.100:49153/setup.xml',
              usn: 'probed',
              server: 'probed',
              address: InternetAddress('192.168.1.100'),
            );
          }
          return null;
        }
      );
      
      final mockHttpClient = MockClient((request) async => http.Response(xmlBody, 200));

      final service = DeviceDiscoveryService(
        ssdpClient: mockSsdpClient,
        httpClient: mockHttpClient,
      );
      
      final device = await service.probeHost('192.168.1.100');
      expect(device, isNotNull);
      expect(device!.name, 'Test Switch');
    });
    
    test('_determineDeviceType should identify types correctly', () async {
       // Since _determineDeviceType is private, we test via discover with different XMLs
       // Helper to create service with XML
       Future<WemoDevice?> scanWithXml(String udn, String model) async {
         final xml = '''<?xml version="1.0"?>
<root><device>
<friendlyName>Test</friendlyName><UDN>$udn</UDN><modelName>$model</modelName>
</device></root>''';
         
          final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
            yield SsdpResponse(
              location: 'http://192.168.1.100:49153/setup.xml',
              usn: udn,
              server: 'Belkin',
              address: InternetAddress('192.168.1.100'),
            );
          });
          final mockHttpClient = MockClient((request) async => http.Response(xml, 200));
          final service = DeviceDiscoveryService(ssdpClient: mockSsdpClient, httpClient: mockHttpClient);
          return (await service.discoverDevices().toList()).firstOrNull;
       }
       
       expect((await scanWithXml('uuid:Lightswitch-1_0', 'LightSwitch'))?.type, WemoDeviceType.lightSwitch);
       expect((await scanWithXml('uuid:Dimmer-1_0', 'Dimmer'))?.type, WemoDeviceType.dimmer);
       expect((await scanWithXml('uuid:Dimmer-2_0', 'Dimmer'))?.type, WemoDeviceType.dimmerV2);
       expect((await scanWithXml('uuid:Insight-1_0', 'Insight'))?.type, WemoDeviceType.insight);
       expect((await scanWithXml('uuid:Sensor-1_0', 'Motion'))?.type, WemoDeviceType.motion);
       expect((await scanWithXml('uuid:Bridge-1_0', 'Bridge'))?.type, WemoDeviceType.bridge);
       expect((await scanWithXml('uuid:Maker-1_0', 'Maker'))?.type, WemoDeviceType.maker);
       expect((await scanWithXml('uuid:CoffeeMaker-1_0', 'CoffeeMaker'))?.type, WemoDeviceType.coffeemaker);
       expect((await scanWithXml('uuid:Crockpot-1_0', 'Crockpot'))?.type, WemoDeviceType.crockpot);
       expect((await scanWithXml('uuid:Humidifier-1_0', 'Humidifier'))?.type, WemoDeviceType.humidifier);
       expect((await scanWithXml('uuid:Outdoor-1_0', 'Outdoor'))?.type, WemoDeviceType.outdoorPlug);
       expect((await scanWithXml('uuid:Unknown-1_0', 'Unknown'))?.type, WemoDeviceType.unknown);
    });

    test('should return null if friendlyName or UDN missing', () async {
      final xml = '''<?xml version="1.0"?>
<root><device>
<manufacturer>Belkin</manufacturer>
</device></root>''';
      
      final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
        yield SsdpResponse(
          location: 'http://loc',
          usn: 'usn',
          server: 'server',
          address: InternetAddress('127.0.0.1'),
        );
      });
      final mockHttpClient = MockClient((request) async => http.Response(xml, 200));
      final service = DeviceDiscoveryService(ssdpClient: mockSsdpClient, httpClient: mockHttpClient);
      
      final devices = await service.discoverDevices().toList();
      expect(devices, isEmpty);
    });

    test('should handle missing device element', () async {
      final xml = '''<?xml version="1.0"?><root></root>''';
      final mockSsdpClient = MockSsdpClient(discoverHandler: () async* {
        yield SsdpResponse(
          location: 'http://loc',
          usn: 'usn',
          server: 'server',
          address: InternetAddress('127.0.0.1'),
        );
      });
      final mockHttpClient = MockClient((request) async => http.Response(xml, 200));
      final service = DeviceDiscoveryService(ssdpClient: mockSsdpClient, httpClient: mockHttpClient);
      
      final devices = await service.discoverDevices().toList();
      expect(devices, isEmpty);
    });
  });
}
