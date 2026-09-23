import 'package:flutter/widgets.dart';
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
      expect(provider.discoveryTimeoutSeconds, 30);
      expect(provider.requestTimeoutSeconds, 10);
      expect(provider.locale, isNull);
      expect(provider.isLoaded, true);
    });

    test('should save and load locale', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      await provider.setLocale(const Locale('es'));
      expect(provider.locale, const Locale('es'));

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('app_locale'), 'es');

      // A fresh provider instance should load the persisted locale back.
      final reloaded = SettingsProvider();
      await reloaded.ensureLoaded();
      expect(reloaded.locale, const Locale('es'));
    });

    test('should persist region/script locale variants by language tag', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      await provider.setLocale(const Locale('pt', 'BR'));

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('app_locale'), 'pt-BR');

      final reloaded = SettingsProvider();
      await reloaded.ensureLoaded();
      expect(reloaded.locale, const Locale('pt', 'BR'));
    });

    test('setLocale(null) reverts to system default and clears storage', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();
      await provider.setLocale(const Locale('fr'));

      await provider.setLocale(null);
      expect(provider.locale, isNull);

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('app_locale'), isNull);
    });

    test('should not notify if locale unchanged', () async {
      final provider = SettingsProvider();
      await provider.ensureLoaded();

      var notifyCount = 0;
      provider.addListener(() => notifyCount++);

      await provider.setLocale(null); // Default is already null
      expect(notifyCount, 0);
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
