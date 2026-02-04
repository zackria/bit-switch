import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';

void main() {
  group('DeviceProvider scanSubnet error cases', () {
    test('scanSubnet sets error when no network interfaces found', () async {
      final provider = DeviceProvider();

      await provider.scanSubnet(
        getInterfaces: () async => <NetworkInterface>[],
      );

      expect(provider.error, contains('local network'));
      expect(provider.isDiscovering, false);
    });

    test('scanSubnet sets error when getInterfaces throws', () async {
      final provider = DeviceProvider();

      await provider.scanSubnet(
        getInterfaces: () async {
          throw Exception('interfaces unavailable');
        },
      );

      expect(provider.error, contains('Could not determine local network'));
      expect(provider.isDiscovering, false);
    });
  });
}
