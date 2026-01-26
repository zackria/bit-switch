import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/core/constants.dart';

void main() {
  group('SsdpClient', () {
    test('buildMSearchRequest should create valid request', () {
      final requestBytes = SsdpClient.buildMSearchRequest();
      final request = String.fromCharCodes(requestBytes);

      expect(request, contains('M-SEARCH * HTTP/1.1'));
      expect(request, contains('HOST: ${WemoConstants.ssdpMulticastAddress}:${WemoConstants.ssdpPort}'));
      expect(request, contains('MAN: "ssdp:discover"'));
      expect(request, contains('ST: ${WemoConstants.ssdpSearchTarget}'));
      expect(request, contains('MX: 3'));
    });

    test('parseResponse should parse valid Wemo response', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'CACHE-CONTROL: max-age=86400\r\n' 
          'DATE: Tue, 14 Dec 2024 10:00:00 GMT\r\n' 
          'EXT:\r\n' 
          'LOCATION: http://192.168.1.100:49153/setup.xml\r\n' 
          'OPT: "http://schemas.upnp.org/upnp/1/0/"; ns=01\r\n' 
          '01-NLS: 8c34f3b8-1dd2-11b2-8000-000000000000\r\n' 
          'SERVER: Unspecified, UPnP/1.0, Unspecified\r\n' 
          'X-User-Agent: redsonic\r\n' 
          'ST: urn:Belkin:service:basicevent:1\r\n' 
          'USN: uuid:Socket-1_0-221517K0101769::urn:Belkin:service:basicevent:1\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      expect(response, isNotNull);
      expect(response!.location, 'http://192.168.1.100:49153/setup.xml');
      expect(response.usn, 'uuid:Socket-1_0-221517K0101769::urn:Belkin:service:basicevent:1');
      expect(response.host, '192.168.1.100');
      expect(response.port, 49153);
    });

    test('parseResponse should parse response with Belkin in Server header', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://192.168.1.100:49153/setup.xml\r\n' 
          'SERVER: Linux/2.6.21, UPnP/1.0, Belkin/1.0\r\n' 
          'USN: uuid:Socket-1_0-221517K0101769\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      expect(response, isNotNull);
    });

    test('parseResponse should return null for non-HTTP response', () {
      final responseStr = 'INVALID RESPONSE\r\n';
      
      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      expect(response, isNull);
    });

    test('parseResponse should return null if Location or USN missing', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'SERVER: Belkin\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      expect(response, isNull);
    });

    test('parseResponse should return null if not a Wemo device', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://192.168.1.200:80/desc.xml\r\n' 
          'SERVER: SomeOtherDevice\r\n' 
          'USN: uuid:SomeOtherDevice\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.200'),
      );

      expect(response, isNull);
    });

    test('parseResponse should recognize device by UUID prefix even if Server header is missing', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://192.168.1.100:49153/setup.xml\r\n' 
          'USN: uuid:Lightswitch-1_0-1234567890\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      expect(response, isNotNull);
      expect(response!.usn, 'uuid:Lightswitch-1_0-1234567890');
    });

    test('parseResponse should handle malformed headers gracefully', () {
      final responseStr = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION http://192.168.1.100:49153/setup.xml\r\n' // Missing colon
          'USN: uuid:Socket-1_0-12345\r\n' 
          '\r\n';

      final response = SsdpClient.parseResponse(
        responseStr.codeUnits,
        InternetAddress('192.168.1.100'),
      );

      // Location is null because of malformed header
      expect(response, isNull);
    });

    test('discoverAll should return empty list if discover yields nothing', () async {
      final client = _TestSsdpClient();
      final devices = await client.discoverAll(timeout: const Duration(milliseconds: 100));
      expect(devices, isEmpty);
    });

    test('probe should return null if connection fails', () async {
      final client = SsdpClient();
      // Use an address that is definitely unreachable to ensure failure
      final response = await client.probe('10.255.255.1', timeout: const Duration(milliseconds: 50));
      expect(response, isNull);
    });

    test('buildMSearchRequest with custom ST and MX', () {
      final requestBytes = SsdpClient.buildMSearchRequest(searchTarget: 'custom:st', mx: 5);
      final request = String.fromCharCodes(requestBytes);
      expect(request, contains('ST: custom:st'));
      expect(request, contains('MX: 5'));
    });

    test('parseResponse should handle malformed USN gracefully', () {
      final baseResponse = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://192.168.1.100:49153/setup.xml\r\n'
          'SERVER: Belkin\r\n'
          'USN: malformed-no-uuid\r\n\r\n';
      
      final response = SsdpClient.parseResponse(
        baseResponse.codeUnits,
        InternetAddress('1.1.1.1'),
      );
      // It should still pass if SERVER contains Belkin
      expect(response, isNotNull);
    });

    test('parseResponse should return null for completely invalid data', () {
       expect(SsdpClient.parseResponse([0, 1, 2], InternetAddress('127.0.0.1')), isNull);
    });

    test('parseResponse should handle USN with known prefix', () {
       final baseResponse = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://1.1.1.1:1/s.xml\r\n'
          'USN: uuid:Socket-1_0-123::urn:service:1\r\n\r\n';
      final response = SsdpClient.parseResponse(baseResponse.codeUnits, InternetAddress('1.1.1.1'));
      expect(response, isNotNull);
    });

    test('parseResponse should handle various USN formats', () {
      final baseResponse = 'HTTP/1.1 200 OK\r\n' 
          'LOCATION: http://192.168.1.100:49153/setup.xml\r\n';
      
      // Known UUID
      final r1 = SsdpClient.parseResponse(
        ('${baseResponse}USN: uuid:Socket-1_0-123\r\n\r\n').codeUnits,
        InternetAddress('1.1.1.1'),
      );
      expect(r1, isNotNull);

      // Known UUID with Belkin prefix
      final r2 = SsdpClient.parseResponse(
        ('${baseResponse}USN: uuid:Belkin:device:Socket:1\r\n\r\n').codeUnits,
        InternetAddress('1.1.1.1'),
      );
      expect(r2, isNotNull);

      // Unknown UUID and no Belkin in SERVER
      final r3 = SsdpClient.parseResponse(
        ('${baseResponse}USN: uuid:Unknown-1_0-123\r\n\r\n').codeUnits,
        InternetAddress('1.1.1.1'),
      );
      expect(r3, isNull);
    });

    test('probe should return response if port is open', () async {
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      final port = server.port;
      
      // We don't even need to handle requests if we only test the connection success
      final client = SsdpClient();
      final response = await client.probe(InternetAddress.loopbackIPv4.address, ports: [port]);
      
      expect(response, isNotNull);
      expect(response!.port, port);
      
      await server.close();
    });
  });

  group('WemoConstants', () {
    test('constants are consistent', () {
      expect(WemoConstants.ssdpPort, 1900);
      expect(WemoConstants.devicePorts, isNotEmpty);
      expect(WemoConstants.deviceTypesByUuid, contains('Socket-1_0'));
      expect(WemoConstants.setupXmlPath, '/setup.xml');
    });
  });

  group('SsdpResponse', () {
    test('toString should return correct string', () {
      final response = SsdpResponse(
        location: 'http://loc',
        usn: 'uuid:123',
        server: 'server',
        address: InternetAddress('127.0.0.1'),
      );
      expect(response.toString(), 'SsdpResponse(location: http://loc, usn: uuid:123)');
    });

    test('host and port getters should extract values from location', () {
      final response = SsdpResponse(
        location: 'http://192.168.1.50:49153/setup.xml',
        usn: 'uuid:abc',
        server: 'Belkin',
        address: InternetAddress('192.168.1.50'),
      );
      expect(response.host, '192.168.1.50');
      expect(response.port, 49153);
      expect(response.locationUri.path, '/setup.xml');
    });
  });
}

// A test SSDP client that yields no responses to avoid network/timer usage.
class _TestSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({Duration timeout = const Duration(seconds: 3), String searchTarget = ''}) async* {
    return;
  }
}
