import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/providers/settings_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SettingsProvider', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    test('should load default values', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      expect(provider.autoRefreshEnabled, false);
      expect(provider.autoRefreshIntervalSeconds, 30);
      expect(provider.discoveryTimeoutSeconds, 60);
      expect(provider.isLoaded, true);
    });

    test('should save and load autoRefreshEnabled', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      await provider.setAutoRefreshEnabled(true);
      expect(provider.autoRefreshEnabled, true);

      // Verify persistence
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getBool('auto_refresh_enabled'), true);
    });

    test('should save and load autoRefreshIntervalSeconds', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      await provider.setAutoRefreshIntervalSeconds(60);
      expect(provider.autoRefreshIntervalSeconds, 60);

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('auto_refresh_interval_seconds'), 60);
    });

    test('should save and load discoveryTimeoutSeconds', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      await provider.setDiscoveryTimeoutSeconds(120);
      expect(provider.discoveryTimeoutSeconds, 120);

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('discovery_timeout_seconds'), 120);
    });
    
    test('should not notify if value unchanged', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();
      
      var notifyCount = 0;
      provider.addListener(() => notifyCount++);
      
      await provider.setAutoRefreshEnabled(false); // Default is false
      expect(notifyCount, 0);
    });
  });
}
