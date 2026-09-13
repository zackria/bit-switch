import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/l10n/app_localizations_en.dart';

void main() {
  // scanSubnet surfaces a single localized message (errCheckWifiConnection)
  // for every reason it can't determine the local subnet, rather than a
  // bespoke non-localized string per failure mode.
  final expectedError = AppLocalizationsEn().errCheckWifiConnection;

  group('DeviceProvider subnet scan error handling', () {
    test('scanSubnet handles getInterfaces throwing', () async {
      final provider = DeviceProvider(
        discoveryService: _FakeDiscoveryService(),
        controlService: _FakeControlService(),
      );

      await provider.scanSubnet(
        getInterfaces: () async {
          throw Exception('no interfaces');
        },
      );

      expect(provider.error, expectedError);
      expect(provider.isDiscovering, false);
    });

    test('scanSubnet handles empty interfaces (no local ip)', () async {
      final provider = DeviceProvider(
        discoveryService: _FakeDiscoveryService(),
        controlService: _FakeControlService(),
      );

      await provider.scanSubnet(getInterfaces: () async => []);

      expect(provider.error, expectedError);
      expect(provider.isDiscovering, false);
    });
  });
}

class _FakeDiscoveryService extends DeviceDiscoveryService {}

class _FakeControlService extends DeviceControlService {}
