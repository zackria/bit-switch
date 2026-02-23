import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('SoapClient retry and error handling', () {
    test('retries and succeeds on second attempt', () async {
      var calls = 0;

      final client = SoapClient.forTesting(
        mockHandler: (url, headers, body) async {
          calls++;
          if (calls == 1) throw Exception('transient network error');

          return HttpResponse(200, '''<?xml version="1.0"?>
<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
  <s:Body>
    <u:GetBinaryStateResponse xmlns:u="urn:Belkin:service:basicevent:1">
      <BinaryState>1</BinaryState>
    </u:GetBinaryStateResponse>
  </s:Body>
</s:Envelope>
''');
        },
        maxRetries: 2,
      );

      final result = await client.call(
        host: '192.168.1.100',
        port: 49153,
        serviceName: 'basicevent1',
        action: 'GetBinaryState',
        serviceType: 'urn:Belkin:service:basicevent:1',
      );

      expect(result['BinaryState'], '1');
      expect(calls, 2);
    });

    test(
      'exhausts retries and throws NetworkException with attemptCount',
      () async {
        final client = SoapClient.forTesting(
          mockHandler: (url, headers, body) async {
            throw Exception('permanent failure');
          },
          maxRetries: 2,
        );

        try {
          await client.call(
            host: '192.168.1.100',
            port: 49153,
            serviceName: 'basicevent1',
            action: 'GetBinaryState',
            serviceType: 'urn:Belkin:service:basicevent:1',
          );
          fail('Expected NetworkException');
        } catch (e) {
          expect(e, isA<NetworkException>());
          final ne = e as NetworkException;
          expect(ne.attemptCount, 2);
        }
      },
    );

    test(
      'non-200 non-500 HTTP returns SoapException with httpStatusCode',
      () async {
        final client = SoapClient.forTesting(
          mockHandler: (url, headers, body) async {
            return HttpResponse(404, 'Not Found');
          },
          maxRetries: 1,
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
            predicate((e) => e is SoapException && e.httpStatusCode == 404),
          ),
        );
      },
    );
  });
}
