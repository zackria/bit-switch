import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('WemoException', () {
    test('should format message correctly', () {
      final e = WemoException('Test error');
      expect(e.toString(), 'WemoException: Test error');

      final e2 = WemoException('Test error', 'Cause');
      expect(e2.toString(), 'WemoException: Test error (Cause)');
    });

    test('should store message and cause', () {
      final cause = Exception('Inner');
      final e = WemoException('Test', cause);
      expect(e.message, 'Test');
      expect(e.cause, cause);
    });
  });

  group('NetworkException', () {
    test('should format message correctly', () {
      final e = NetworkException('Network error');
      expect(e.toString(), 'NetworkException: Network error');
    });

    test('should include host and port when provided', () {
      final e = NetworkException(
        'Connection failed',
        host: '192.168.1.100',
        port: 49153,
      );
      expect(e.toString(), contains('[host: 192.168.1.100:49153]'));
    });

    test('should include attempt count when provided', () {
      final e = NetworkException(
        'Request timed out',
        attemptCount: 3,
        host: '192.168.1.100',
      );
      expect(e.toString(), contains('[attempts: 3]'));
      expect(e.attemptCount, 3);
    });

    test('should include all fields in toString', () {
      final e = NetworkException(
        'Failed',
        host: '10.0.0.1',
        port: 8080,
        attemptCount: 5,
        cause: 'Timeout',
      );
      final str = e.toString();
      expect(str, contains('NetworkException: Failed'));
      expect(str, contains('[host: 10.0.0.1:8080]'));
      expect(str, contains('[attempts: 5]'));
      expect(str, contains('(Timeout)'));
    });
  });

  group('DiscoveryException', () {
    test('should format message correctly', () {
      final e = DiscoveryException('Discovery failed');
      expect(e.toString(), 'DiscoveryException: Discovery failed');
    });

    test('should include devices found before error', () {
      final e = DiscoveryException('Timeout', null, 3);
      expect(e.devicesFoundBeforeError, 3);
      expect(e.toString(), contains('[found: 3]'));
    });

    test('should include failed location when provided', () {
      final e = DiscoveryException(
        'HTTP error',
        null,
        null,
        'http://192.168.1.100:49153/setup.xml',
      );
      expect(e.failedLocation, 'http://192.168.1.100:49153/setup.xml');
      expect(e.toString(), contains('[location:'));
    });
  });

  group('SoapException', () {
    test('should include all details in toString', () {
      final e = SoapException(
        'SOAP failed',
        action: 'GetBinaryState',
        faultCode: 'Client',
        faultString: 'Invalid Request',
        errorCode: 500,
        httpStatusCode: 500,
        cause: 'Inner',
      );

      final str = e.toString();
      expect(str, contains('SoapException: SOAP failed'));
      expect(str, contains('[action: GetBinaryState]'));
      expect(str, contains('[code: Client]'));
      expect(str, contains('[fault: Invalid Request]'));
      expect(str, contains('[error: 500]'));
      expect(str, contains('[http: 500]'));
      expect(str, contains('(Inner)'));
    });

    test('isSoapFault should return true when faultCode is set', () {
      final e = SoapException('Error', faultCode: 'Client');
      expect(e.isSoapFault, true);
    });

    test('isSoapFault should return true when faultString is set', () {
      final e = SoapException('Error', faultString: 'Invalid action');
      expect(e.isSoapFault, true);
    });

    test('isSoapFault should return false when no fault info', () {
      final e = SoapException('Error');
      expect(e.isSoapFault, false);
    });

    test('isHttpError should return true for non-200 status', () {
      final e = SoapException('Error', httpStatusCode: 404);
      expect(e.isHttpError, true);
    });

    test('isHttpError should return false for 200 status', () {
      final e = SoapException('Error', httpStatusCode: 200);
      expect(e.isHttpError, false);
    });

    test('isHttpError should return false when no status code', () {
      final e = SoapException('Error');
      expect(e.isHttpError, false);
    });
  });

  group('DeviceException', () {
    test('should include device name if provided', () {
      final e = DeviceException('Control failed', deviceName: 'My Switch');
      expect(e.toString(), 'DeviceException: [My Switch] Control failed');
    });

    test('should work without device name', () {
      final e = DeviceException('Control failed');
      expect(e.toString(), 'DeviceException: Control failed');
    });

    test('should include host and port when provided', () {
      final e = DeviceException(
        'Error',
        deviceName: 'Switch',
        host: '192.168.1.50',
        port: 49153,
      );
      expect(e.toString(), contains('[host: 192.168.1.50:49153]'));
    });

    test('should include operation when provided', () {
      final e = DeviceException(
        'Failed',
        deviceName: 'Plug',
        operation: 'setState',
      );
      expect(e.operation, 'setState');
      expect(e.toString(), contains('[op: setState]'));
    });

    test('should include all fields in toString', () {
      final e = DeviceException(
        'Connection error',
        deviceName: 'Kitchen Light',
        host: '10.0.0.5',
        port: 49154,
        operation: 'setBrightness',
        cause: Exception('Network timeout'),
      );
      final str = e.toString();
      expect(str, contains('[Kitchen Light]'));
      expect(str, contains('Connection error'));
      expect(str, contains('[host: 10.0.0.5:49154]'));
      expect(str, contains('[op: setBrightness]'));
      expect(str, contains('(Exception: Network timeout)'));
    });
  });

  group('TimeoutException', () {
    test('should include duration if provided', () {
      final e = TimeoutException('Timed out', duration: const Duration(seconds: 5));
      expect(e.toString(), 'TimeoutException: Timed out after 5s');
    });

    test('should work without duration', () {
      final e = TimeoutException('Timed out');
      expect(e.toString(), 'TimeoutException: Timed out');
    });

    test('should include operation when provided', () {
      final e = TimeoutException(
        'Discovery timeout',
        operation: 'SSDP discovery',
        duration: const Duration(seconds: 10),
      );
      expect(e.operation, 'SSDP discovery');
      expect(e.toString(), contains('[op: SSDP discovery]'));
      expect(e.toString(), contains('after 10s'));
    });

    test('should include cause when provided', () {
      final e = TimeoutException(
        'Operation failed',
        cause: 'Socket timeout',
      );
      expect(e.toString(), contains('(Socket timeout)'));
    });
  });

  group('Exception hierarchy', () {
    test('all exceptions should extend WemoException', () {
      expect(NetworkException('test'), isA<WemoException>());
      expect(DiscoveryException('test'), isA<WemoException>());
      expect(SoapException('test'), isA<WemoException>());
      expect(DeviceException('test'), isA<WemoException>());
      expect(TimeoutException('test'), isA<WemoException>());
    });

    test('all exceptions should implement Exception', () {
      expect(WemoException('test'), isA<Exception>());
      expect(NetworkException('test'), isA<Exception>());
      expect(DiscoveryException('test'), isA<Exception>());
      expect(SoapException('test'), isA<Exception>());
      expect(DeviceException('test'), isA<Exception>());
      expect(TimeoutException('test'), isA<Exception>());
    });
  });
}
