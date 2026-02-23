import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('SoapClient parse failure cases', () {
    test(
      'throws SoapException when expected response element missing',
      () async {
        final client = SoapClient.forTesting(
          mockHandler: (url, headers, body) async {
            return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
  <s:Body>
    <SomeOtherResponse xmlns:u="urn:Belkin:service:basicevent:1">
      <Value>42</Value>
    </SomeOtherResponse>
  </s:Body>
</s:Envelope>
''');
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
          throwsA(isA<SoapException>()),
        );
      },
    );

    test('parses UPnP errorCode from SOAP Fault (500)', () async {
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
</s:Envelope>
''');
        },
      );

      try {
        await client.call(
          host: '192.168.1.100',
          port: 49153,
          serviceName: 'basicevent1',
          action: 'InvalidAction',
          serviceType: 'urn:Belkin:service:basicevent:1',
        );
        fail('Expected SoapException');
      } catch (e) {
        expect(e, isA<SoapException>());
        final se = e as SoapException;
        expect(se.errorCode, 401);
        expect(se.faultString, contains('UPnPError'));
      }
    });
  });
}
