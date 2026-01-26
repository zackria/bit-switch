import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/exceptions.dart';

void main() {
  group('Exceptions', () {
    test('WemoException should format message correctly', () {
      final e = WemoException('Test error');
      expect(e.toString(), 'WemoException: Test error');
      
      final e2 = WemoException('Test error', 'Cause');
      expect(e2.toString(), 'WemoException: Test error (Cause)');
    });

    test('NetworkException should format message correctly', () {
      final e = NetworkException('Network error');
      expect(e.toString(), 'NetworkException: Network error');
    });

    test('DiscoveryException should format message correctly', () {
      final e = DiscoveryException('Discovery failed');
      expect(e.toString(), 'DiscoveryException: Discovery failed');
    });

    test('SoapException should include details', () {
      final e = SoapException(
        'SOAP failed',
        faultCode: 'Client',
        faultString: 'Invalid Request',
        errorCode: 500,
        cause: 'Inner',
      );
      
      final str = e.toString();
      expect(str, contains('SoapException: SOAP failed'));
      expect(str, contains('[code: Client]'));
      expect(str, contains('[fault: Invalid Request]'));
      expect(str, contains('[error: 500]'));
      expect(str, contains('(Inner)'));
    });

    test('DeviceException should include device name if provided', () {
      final e = DeviceException('Control failed', deviceName: 'My Switch');
      expect(e.toString(), 'DeviceException: [My Switch] Control failed');
      
      final e2 = DeviceException('Control failed');
      expect(e2.toString(), 'DeviceException: Control failed');
    });

    test('TimeoutException should include duration if provided', () {
      final e = TimeoutException('Timed out', duration: const Duration(seconds: 5));
      expect(e.toString(), 'TimeoutException: Timed out after 5s');
      
      final e2 = TimeoutException('Timed out');
      expect(e2.toString(), 'TimeoutException: Timed out');
    });
  });
}
