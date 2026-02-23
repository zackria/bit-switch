import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/core/ssdp_client.dart';

void main() {
  group('SsdpResponse helpers', () {
    test('locationUri host/port and hostPortKey work', () {
      final resp = SsdpResponse(
        location: 'http://192.168.1.50:49153/setup.xml',
        usn: 'uuid:Socket-1_0-TEST',
        server: 'Belkin/1.0',
        address: InternetAddress('192.168.1.50'),
      );

      expect(resp.locationUri.scheme, 'http');
      expect(resp.host, '192.168.1.50');
      expect(resp.port, 49153);
      expect(resp.hostPortKey, '192.168.1.50:49153');
      expect(resp.toString(), contains('192.168.1.50'));
    });
  });
}
