import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/l10n/app_localizations_en.dart';

void main() {
  // scanSubnet surfaces a single localized message (errCheckWifiConnection)
  // for every reason it can't determine the local subnet, rather than a
  // bespoke non-localized string per failure mode.
  final expectedError = AppLocalizationsEn().errCheckWifiConnection;

  group('DeviceProvider scanSubnet error cases', () {
    test('scanSubnet sets error when no network interfaces found', () async {
      final provider = DeviceProvider();

      await provider.scanSubnet(
        getInterfaces: () async => <NetworkInterface>[],
      );

      expect(provider.error, expectedError);
      expect(provider.isDiscovering, false);
    });

    test('scanSubnet sets error when getInterfaces throws', () async {
      final provider = DeviceProvider();

      await provider.scanSubnet(
        getInterfaces: () async {
          throw Exception('interfaces unavailable');
        },
      );

      expect(provider.error, expectedError);
      expect(provider.isDiscovering, false);
    });
  });
}
