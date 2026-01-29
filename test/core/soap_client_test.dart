import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('SoapClient', () {
    test('buildSoapEnvelope should create valid XML', () {
      final client = SoapClient();
      final xml = client.buildSoapEnvelope(
        action: 'GetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
        arguments: {'BinaryState': '1'},
      );

      expect(
        xml,
        contains(
          '<u:GetBinaryState xmlns:u="urn:Belkin:service:basicevent:1">',
        ),
      );
      expect(xml, contains('<BinaryState>1</BinaryState>'));
      expect(xml, contains('</s:Body>'));
    });

    test('buildSoapEnvelope should escape special characters', () {
      final client = SoapClient();
      final xml = client.buildSoapEnvelope(
        action: 'SetFriendlyName',
        serviceType: 'urn:Belkin:service:basicevent:1',
        arguments: {'FriendlyName': 'Living Room & Kitchen'},
      );

      expect(xml, contains('Living Room &amp; Kitchen'));
    });

    test('call should send correct request and parse response', () async {
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          expect(
            url.toString(),
            'http://192.168.1.100:49153/upnp/control/basicevent1',
          );
          expect(
            headers['SOAPACTION'],
            '"urn:Belkin:service:basicevent:1#GetBinaryState"',
          );

          return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<u:GetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
<BinaryState>1</BinaryState>
</u:GetBinaryStateResponse>
</s:Body>
</s:Envelope>''');
        },
      );

      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'GetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );

      expect(result['BinaryState'], '1');
    });

    test('call should handle SOAP Fault', () async {
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          return HttpResponse(500, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<s:Fault>
<faultcode>s:Client</faultcode>
<faultstring>UPnPError</faultstring>
<detail>
<UPnPError xmlns="urn:schemas-upnp-org:control-1-0">
<errorCode>401</errorCode>
<errorDescription>Invalid Action</errorDescription>
</UPnPError>
</detail>
</s:Fault>
</s:Body>
</s:Envelope>''');
        },
      );

      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'InvalidAction',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(
          isA<SoapException>()
              .having((e) => e.errorCode, 'errorCode', 401)
              .having((e) => e.faultString, 'faultString', 'UPnPError'),
        ),
      );
    });

    test('call should handle HTTP error', () async {
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          return HttpResponse(404, 'Not Found');
        },
      );

      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(
          isA<SoapException>().having(
            (e) => e.message,
            'message',
            contains('HTTP 404'),
          ),
        ),
      );
    });

    test('call should handle empty response element', () async {
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<u:SetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
</u:SetBinaryStateResponse>
</s:Body>
</s:Envelope>''');
        },
      );

      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'SetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );

      expect(result, isEmpty);
    });

    test(
      'call should try finding response without namespace prefix if first attempt fails',
      () async {
        final client = SoapClient.forTesting(
          mockHandler: (url, headers, body) async {
            return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<GetBinaryStateResponse>
<BinaryState>0</BinaryState>
</GetBinaryStateResponse>
</s:Body>
</s:Envelope>''');
          },
        );

        final result = await client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        );

        expect(result['BinaryState'], '0');
      },
    );

    test('call should throw if response element not found', () async {
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<OtherResponse>
</OtherResponse>
</s:Body>
</s:Envelope>''');
        },
      );

      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(
          isA<SoapException>().having(
            (e) => e.message,
            'message',
            contains('No response element found'),
          ),
        ),
      );
    });

    test('call should retry on network failure', () async {
      int attemptCount = 0;
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          attemptCount++;
          if (attemptCount < 3) {
            throw Exception('Network error');
          }
          return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<u:GetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
<BinaryState>1</BinaryState>
</u:GetBinaryStateResponse>
</s:Body>
</s:Envelope>''');
        },
        maxRetries: 3,
      );

      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'GetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );

      expect(result['BinaryState'], '1');
      expect(attemptCount, 3);
    });

    test('call should throw NetworkException after max retries', () async {
      int attemptCount = 0;
      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          attemptCount++;
          throw Exception('Network error');
        },
        maxRetries: 3,
      );

      await expectLater(
        client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(
          isA<NetworkException>().having(
            (e) => e.message,
            'message',
            contains('after 3 attempts'),
          ),
        ),
      );
      expect(attemptCount, 3);
    });

    test('timeout can be updated at runtime', () {
      final client = SoapClient(timeout: const Duration(seconds: 3));
      expect(client.timeout, const Duration(seconds: 3));

      client.timeout = const Duration(seconds: 10);
      expect(client.timeout, const Duration(seconds: 10));
    });
  });
}
