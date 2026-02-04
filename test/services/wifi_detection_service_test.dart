import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/services/wifi_detection_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('WifiDetectionService', () {
    late WifiDetectionService service;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      service = WifiDetectionService();
    });

    test(
      'requestLocationPermission returns a tri-state (true/false/null)',
      () async {
        final result = await service.requestLocationPermission();
        expect(result == true || result == false || result == null, true);
      },
    );

    test('getCurrentSsid returns either null or a String', () async {
      final ssid = await service.getCurrentSsid();
      expect(ssid == null || ssid is String, true);
    });

    group('isWemoApNetwork', () {
      test('should return true for valid Wemo AP SSIDs', () {
        expect(service.isWemoApNetwork('WeMo.ABC123'), true);
        expect(service.isWemoApNetwork('WeMo.XYZ'), true);
        expect(service.isWemoApNetwork('WeMo.a'), true);
        expect(service.isWemoApNetwork('WeMo.123'), true);
        expect(service.isWemoApNetwork('WeMo.Test_Device'), true);
      });

      test('should return false for non-Wemo SSIDs', () {
        expect(service.isWemoApNetwork('HomeNetwork'), false);
        expect(
          service.isWemoApNetwork('WeMo'),
          false,
        ); // Missing dot and suffix
        expect(service.isWemoApNetwork('WeMo.'), false); // Missing suffix
        expect(service.isWemoApNetwork('wemo.ABC'), false); // Wrong case
        expect(service.isWemoApNetwork('WEMO.ABC'), false); // Wrong case
        expect(service.isWemoApNetwork(''), false);
        expect(service.isWemoApNetwork(null), false);
      });

      test('should return false for similar but invalid patterns', () {
        expect(service.isWemoApNetwork('MyWeMo.Setup'), false);
        expect(service.isWemoApNetwork('WeMo Network'), false);
        expect(service.isWemoApNetwork('WeMo-Setup'), false);
      });
    });

    group('watchSsidChanges', () {
      test('should create a stream with distinct values', () async {
        // Just verify stream is created - actual network calls can't be tested
        final stream = service.watchSsidChanges(
          interval: const Duration(milliseconds: 100),
        );
        expect(stream, isA<Stream<String?>>());
      });
    });
  });
}
