import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/main.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/ssdp_client.dart';

// A test SSDP client that yields no responses to avoid network/timer usage,
// matching the pattern used in test/widget_test.dart.
class _TestSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({
    Duration timeout = const Duration(seconds: 3),
    String searchTarget = '',
    void Function(String)? onDebugLog,
  }) async* {
    return;
  }

  @override
  Future<SsdpResponse?> probe(
    String host, {
    List<int> ports = const [80],
    Duration timeout = const Duration(seconds: 2),
  }) async {
    return null;
  }
}

void main() {
  setUpAll(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('configureGlobalErrorHandlers', () {
    test('registers handlers that run without throwing', () {
      final originalOnError = FlutterError.onError;
      final originalPlatformOnError = PlatformDispatcher.instance.onError;

      addTearDown(() {
        FlutterError.onError = originalOnError;
        PlatformDispatcher.instance.onError = originalPlatformOnError;
      });

      configureGlobalErrorHandlers();

      expect(FlutterError.onError, isNotNull);
      expect(PlatformDispatcher.instance.onError, isNotNull);

      // Exercise the FlutterError handler body directly (without letting a
      // real framework error propagate through the test harness).
      expect(
        () => FlutterError.onError!(
          FlutterErrorDetails(exception: Exception('test flutter error')),
        ),
        returnsNormally,
      );

      // Exercise the PlatformDispatcher handler body directly.
      final handled = PlatformDispatcher.instance.onError!(
        Exception('test platform error'),
        StackTrace.current,
      );
      expect(handled, isTrue);
    });
  });

  group('WemoControlApp', () {
    DeviceProvider? deviceProvider;

    tearDown(() {
      deviceProvider?.dispose();
      deviceProvider = null;
    });

    testWidgets('builds with light and dark themes configured', (
      WidgetTester tester,
    ) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(
          WemoControlApp(
            deviceProvider: deviceProvider = DeviceProvider(
              discoveryService: DeviceDiscoveryService(
                ssdpClient: _TestSsdpClient(),
                httpClient: http.Client(),
              ),
            ),
            settingsProvider: SettingsProvider(),
          ),
        );
        await tester.pumpAndSettle();
      });

      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.theme, isNotNull);
      expect(materialApp.darkTheme, isNotNull);
      expect(materialApp.theme!.useMaterial3, isTrue);
      expect(materialApp.darkTheme!.brightness, Brightness.dark);

      // Exercise every branch of the switchTheme resolveWith closures for
      // both the light and dark themes.
      for (final theme in [materialApp.theme!, materialApp.darkTheme!]) {
        final thumbColor = theme.switchTheme.thumbColor!;
        final trackColor = theme.switchTheme.trackColor!;
        expect(thumbColor.resolve({WidgetState.selected}), isNotNull);
        expect(thumbColor.resolve(<WidgetState>{}), Colors.grey);
        expect(trackColor.resolve({WidgetState.selected}), isNotNull);
        expect(trackColor.resolve(<WidgetState>{}), isNotNull);
      }
    });
  });
}
