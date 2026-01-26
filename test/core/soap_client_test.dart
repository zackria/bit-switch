import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
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

      expect(xml, contains('<u:GetBinaryState xmlns:u="urn:Belkin:service:basicevent:1">'));
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
      final mockClient = MockClient((request) async {
        expect(request.url.toString(), 'http://192.168.1.100:49153/upnp/control/basicevent1');
        expect(request.headers['SOAPACTION'], '"urn:Belkin:service:basicevent:1#GetBinaryState"');
        
        return http.Response('''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<u:GetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
<BinaryState>1</BinaryState>
</u:GetBinaryStateResponse>
</s:Body>
</s:Envelope>''', 200);
      });

      final client = SoapClient(client: mockClient);
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
      final mockClient = MockClient((request) async {
        return http.Response('''<?xml version="1.0"?>
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
</s:Envelope>''', 500); // Usually 500 for faults
      });

      final client = SoapClient(client: mockClient);
      
      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'InvalidAction',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(isA<SoapException>()
            .having((e) => e.errorCode, 'errorCode', 401)
            .having((e) => e.faultString, 'faultString', 'UPnPError')),
      );
    });

    test('call should handle HTTP error', () async {
      final mockClient = MockClient((request) async {
        return http.Response('Not Found', 404);
      });

      final client = SoapClient(client: mockClient);
      
      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(isA<SoapException>().having((e) => e.message, 'message', contains('HTTP 404'))),
      );
    });
    
    test('call should handle empty response element', () async {
       final mockClient = MockClient((request) async {
        return http.Response('''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<u:SetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
</u:SetBinaryStateResponse>
</s:Body>
</s:Envelope>''', 200);
      });

      final client = SoapClient(client: mockClient);
      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'SetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );
      
      expect(result, isEmpty);
    });

     test('call should try finding response without namespace prefix if first attempt fails', () async {
      // Some devices might return Body without namespace or weird structure
      // The code attempts to find 'Body' with namespace, then children.
      final mockClient = MockClient((request) async {
        return http.Response('''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<GetBinaryStateResponse>
<BinaryState>0</BinaryState>
</GetBinaryStateResponse>
</s:Body>
</s:Envelope>''', 200);
      });

      final client = SoapClient(client: mockClient);
      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'GetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );

      expect(result['BinaryState'], '0');
    });

    test('call should throw if response element not found', () async {
      final mockClient = MockClient((request) async {
        return http.Response('''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
<s:Body>
<OtherResponse>
</OtherResponse>
</s:Body>
</s:Envelope>''', 200);
      });

      final client = SoapClient(client: mockClient);
      
      expect(
        () => client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'GetBinaryState',
          serviceType: 'urn:Belkin:service:basicevent:1',
        ),
        throwsA(isA<SoapException>().having((e) => e.message, 'message', contains('No response element found'))),
      );
    });
  });
}