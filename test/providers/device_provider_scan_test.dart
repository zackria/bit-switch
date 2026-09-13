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

    test('scanSubnet ignores concurrent calls while a scan is in progress', () async {
      final provider = DeviceProvider();

      final first = provider.scanSubnet(
        getInterfaces: () async {
          await Future.delayed(const Duration(milliseconds: 100));
          return <NetworkInterface>[];
        },
      );

      // Give the first call a chance to set isDiscovering before we try a
      // second, concurrent call.
      await Future.delayed(const Duration(milliseconds: 10));
      expect(provider.isDiscovering, true);

      // A second call made while the first is still in flight must be a
      // no-op and must not interfere with the in-flight scan.
      await provider.scanSubnet(getInterfaces: () async => <NetworkInterface>[]);
      expect(provider.isDiscovering, true);

      await first;
      expect(provider.isDiscovering, false);
      expect(provider.error, expectedError);
    });
  });
}
