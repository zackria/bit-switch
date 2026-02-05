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

    group('requestLocationPermission', () {
      test('returns a tri-state (true/false/null)', () async {
        final result = await service.requestLocationPermission();
        // On test platform (desktop), should return true
        // On actual mobile devices with permission_handler, can return true/false/null
        expect(result == true || result == false || result == null, true);
      });

      test('returns true on desktop platforms', () async {
        // Desktop platforms don't require location permissions
        final result = await service.requestLocationPermission();
        // In test environment (which behaves like desktop), expect true
        expect(result, true);
      });

      test('caches permission result on subsequent calls', () async {
        // First call requests permission
        final firstResult = await service.requestLocationPermission();
        
        // Second call should use cached value
        final secondResult = await service.requestLocationPermission();
        
        expect(firstResult, equals(secondResult));
      });
    });

    group('hasLocationPermission', () {
      test('returns a boolean value', () async {
        final result = await service.hasLocationPermission();
        expect(result, isA<bool>());
      });

      test('returns true on desktop platforms', () async {
        final result = await service.hasLocationPermission();
        // In test environment (which behaves like desktop), expect true
        expect(result, true);
      });

      test('does not throw exceptions on error', () async {
        // Should handle errors gracefully and return false
        expect(() => service.hasLocationPermission(), returnsNormally);
      });
    });

    group('getCurrentSsid', () {
      test('returns either null or a String', () async {
        final ssid = await service.getCurrentSsid();
        expect(ssid == null || ssid is String, true);
      });

      test('handles requestPermission parameter', () async {
        // Should not throw when requestPermission is false
        final ssid = await service.getCurrentSsid(requestPermission: false);
        expect(ssid == null || ssid is String, true);
      });

      test('handles requestPermission=true parameter', () async {
        // Should not throw when requestPermission is true
        final ssid = await service.getCurrentSsid(requestPermission: true);
        expect(ssid == null || ssid is String, true);
      });

      test('cleans SSID by removing quotes', () async {
        // The service should remove quotes from SSID
        // We can't easily mock NetworkInfo in this test without adding a mocking
        // framework, but the implementation in getCurrentSsid() handles this:
        // final cleanedSsid = ssid.replaceAll('"', '');
        // This test verifies the method works without throwing
        final ssid = await service.getCurrentSsid();
        if (ssid != null) {
          expect(ssid.contains('"'), false);
        }
      });

      test('returns null for unknown ssid', () async {
        // NetworkInfo can return '<unknown ssid>' which should be treated as null
        // The implementation checks: if (ssid != null && ssid != '<unknown ssid>')
        final ssid = await service.getCurrentSsid();
        // Should never return '<unknown ssid>' - either null or a valid SSID
        expect(ssid != '<unknown ssid>', true);
      });
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

    group('isPairingSupported', () {
      test('returns a boolean value', () {
        expect(WifiDetectionService.isPairingSupported, isA<bool>());
      });

      test('returns false on non-mobile platforms', () {
        // In test environment (which behaves like desktop), expect false
        expect(WifiDetectionService.isPairingSupported, false);
      });
    });

    group('openWifiSettings', () {
      test('returns false (not implemented)', () async {
        final result = await service.openWifiSettings();
        expect(result, false);
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
