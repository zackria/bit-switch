import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/device_control_service.dart';

void main() {
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

      expect(provider.error, isNotNull);
      expect(
        provider.error!.contains('Could not determine local network'),
        true,
      );
      expect(provider.isDiscovering, false);
    });

    test('scanSubnet handles empty interfaces (no local ip)', () async {
      final provider = DeviceProvider(
        discoveryService: _FakeDiscoveryService(),
        controlService: _FakeControlService(),
      );

      await provider.scanSubnet(getInterfaces: () async => []);

      expect(provider.error, isNotNull);
      expect(
        provider.error!.contains('Could not determine local network'),
        true,
      );
      expect(provider.isDiscovering, false);
    });
  });
}

class _FakeDiscoveryService extends DeviceDiscoveryService {}

class _FakeControlService extends DeviceControlService {}
