import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/ui/screens/settings_screen.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/wifi_detection_service.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/ssdp_client.dart';

// Mock Services
class MockSoapClient extends SoapClient {
  @override
  Future<Map<String, String>> call({
    required String host,
    required int port,
    required String serviceName,
    required String action,
    required String serviceType,
    Map<String, String>? arguments,
    Duration? requestTimeout,
    int? maxRetriesOverride,
  }) async {
    return {};
  }
}

class MockSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({
    Duration timeout = const Duration(seconds: 5),
    String searchTarget = '',
    void Function(String)? onDebugLog,
  }) async* {
    // Empty
  }
}

class TestWifiDetectionService extends WifiDetectionService {
  bool hasPermissionResult;
  bool? requestPermissionResult;
  String? currentSsidResult;

  int requestPermissionCalls = 0;
  int getCurrentSsidCalls = 0;

  TestWifiDetectionService({
    this.hasPermissionResult = false,
    this.requestPermissionResult = false,
    this.currentSsidResult,
  });

  @override
  Future<bool> hasLocationPermission() async => hasPermissionResult;

  @override
  Future<bool?> requestLocationPermission() async {
    requestPermissionCalls++;
    return requestPermissionResult;
  }

  @override
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    getCurrentSsidCalls++;
    return currentSsidResult;
  }
}

void main() {
  group('SettingsScreen', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('shows settings options', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();

        // DEBUG: dump widget tree to help diagnose missing widgets in CI/tests
        debugDumpApp();

        // DEBUG: print all Text widget contents
        final allTextWidgets = find.byType(Text);
        final texts = tester.widgetList(allTextWidgets).map((w) {
          final t = w as Text;
          return t.data ?? (t.textSpan?.toPlainText() ?? '<rich>');
        }).toList();
        print('DEBUG TEXTS: $texts');

        expect(find.text('Discovery Timeout'), findsOneWidget);
        expect(find.text('Auto-refresh'), findsOneWidget);
        expect(find.text('About Bit Switch'), findsOneWidget);
        expect(find.text('Network Diagnostics'), findsOneWidget);
      });
    });

    testWidgets('changes auto refresh', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      await tester.tap(find.byType(Switch).first);
      await tester.pump();

      expect(settingsProvider.autoRefreshEnabled, true);
      deviceProvider.dispose();
    });

    testWidgets('shows timeout dialog', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      await tester.tap(find.text('Discovery Timeout'));
      await tester.pumpAndSettle();

      expect(find.text('Discovery Timeout'), findsNWidgets(2));
      expect(find.text('30s'), findsOneWidget);

      await tester.tap(find.text('30s'));
      await tester.pumpAndSettle();

      expect(settingsProvider.discoveryTimeoutSeconds, 30);
    });

    testWidgets('shows refresh interval option when auto refresh enabled', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();
      await settingsProvider.setAutoRefreshEnabled(true);

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      expect(find.text('Auto-refresh Interval'), findsOneWidget);

      await tester.tap(find.text('Auto-refresh Interval'));
      await tester.pumpAndSettle();

      expect(find.text('Auto-refresh Interval'), findsNWidgets(2));
      await tester.tap(find.text('60s'));
      await tester.pumpAndSettle();

      expect(settingsProvider.autoRefreshIntervalSeconds, 60);
      deviceProvider.dispose();
    });

    testWidgets('shows about dialog', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      await tester.tap(find.text('About Bit Switch'));
      await tester.pumpAndSettle();

      expect(
        find.text('About Bit Switch'),
        findsNWidgets(2),
      ); // Tile + Dialog title
      expect(find.textContaining('1.0.1'), findsNWidgets(2)); // Tile + Dialog
      expect(find.text('Close'), findsOneWidget);
    });

    testWidgets('shows diagnostics dialog', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      await tester.tap(find.text('Network Diagnostics'));
      await tester.pumpAndSettle();

      expect(find.text('Protocol: SSDP/UPnP'), findsOneWidget);
    });

    testWidgets('request timeout dialog chip selection updates provider', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      await tester.tap(find.text('Request Timeout'));
      await tester.pumpAndSettle();

      // Dialog should be open
      expect(find.text('Request Timeout'), findsNWidgets(2));
      expect(find.text('5s'), findsOneWidget);

      await tester.tap(find.text('5s'));
      await tester.pumpAndSettle();

      expect(settingsProvider.requestTimeoutSeconds, 5);
      deviceProvider.dispose();
    });

    testWidgets('disabling show debug option also clears debugMode', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();
      await settingsProvider.setShowDebugOption(true);
      deviceProvider.setDebugMode(true);

      await tester.runAsync(() async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: const MaterialApp(home: SettingsScreen()),
          ),
        );
        await tester.pumpAndSettle();
      });

      // Scroll down to bring the tile into the viewport
      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pumpAndSettle();

      // Tap the "Show Debug Mode" tile, which triggers SwitchListTile.onChanged.
      // The tile text tap is more reliable than find.byType(Switch) because it
      // hits the ListTile onTap handler directly.
      final debugTile = find.text('Show Debug Mode');
      await tester.ensureVisible(debugTile);
      await tester.tap(debugTile);
      await tester
          .pump(); // runs onChanged up to first await; _showDebugOption = false

      // The onChanged handler awaits setShowDebugOption (which calls
      // SharedPreferences.getInstance() internally). Allow those async
      // continuations (including devices.setDebugMode(false)) to finish.
      await tester.runAsync(() async {
        await Future.delayed(const Duration(milliseconds: 50));
      });
      await tester.pump(); // process any rebuild from setDebugMode

      expect(settingsProvider.showDebugOption, false);
      expect(deviceProvider.debugMode, false);
      deviceProvider.dispose();
    });

    testWidgets('shows mobile network and device setup sections when forced', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(
        hasPermissionResult: false,
        requestPermissionResult: false,
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('NETWORK'), findsOneWidget);
      expect(find.text('Current Network'), findsOneWidget);
      expect(find.text('Network Access Status'), findsOneWidget);
      expect(find.text('DEVICE SETUP'), findsOneWidget);
      expect(find.text('Pair New Device'), findsOneWidget);

      deviceProvider.dispose();
    });

    testWidgets('granted permission path shows SSID snackbar', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(
        hasPermissionResult: false,
        requestPermissionResult: true,
        currentSsidResult: 'HomeNet',
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Grant'));
      await tester.pump(const Duration(milliseconds: 600));
      await tester.pumpAndSettle();

      expect(
        find.textContaining('Permission granted! WiFi name: HomeNet'),
        findsOneWidget,
      );
      expect(wifiService.requestPermissionCalls, 1);
      expect(wifiService.getCurrentSsidCalls, greaterThan(0));

      deviceProvider.dispose();
    });

    testWidgets('permanently denied flow opens settings callback', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(
        hasPermissionResult: false,
        requestPermissionResult: null,
      );
      var openSettingsCalls = 0;
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
              openAppSettings: () async {
                openSettingsCalls++;
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Grant'));
      await tester.pumpAndSettle();
      expect(find.text('Enable Location in Settings'), findsOneWidget);

      await tester.tap(find.text('Open Settings'));
      await tester.pumpAndSettle();

      expect(openSettingsCalls, 1);
      deviceProvider.dispose();
    });

    testWidgets('denied flow shows retry dialog and supports try again', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(
        hasPermissionResult: false,
        requestPermissionResult: false,
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Grant'));
      await tester.pumpAndSettle();

      expect(find.text('Location Permission Required'), findsOneWidget);
      await tester.tap(find.text('Try Again'));
      await tester.pumpAndSettle();

      expect(wifiService.requestPermissionCalls, greaterThanOrEqualTo(2));
      deviceProvider.dispose();
    });

    testWidgets(
      'local network missing flow shows fix dialog and open settings',
      (tester) async {
        final settingsProvider = SettingsProvider();
        final deviceProvider = DeviceProvider(
          controlService: DeviceControlService(soapClient: MockSoapClient()),
          discoveryService: DeviceDiscoveryService(
            ssdpClient: MockSsdpClient(),
          ),
        );
        final wifiService = TestWifiDetectionService(
          hasPermissionResult: true,
          currentSsidResult: null,
        );
        var openSettingsCalls = 0;
        await settingsProvider.ensureLoaded();

        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider.value(value: settingsProvider),
              ChangeNotifierProvider.value(value: deviceProvider),
            ],
            child: MaterialApp(
              home: SettingsScreen(
                wifiService: wifiService,
                isMobilePlatform: true,
                isIOSPlatform: true,
                openAppSettings: () async {
                  openSettingsCalls++;
                },
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text('Enable Local Network in Settings'), findsOneWidget);
        expect(find.text('Local Network permission needed'), findsOneWidget);
        expect(find.widgetWithText(OutlinedButton, 'Fix'), findsOneWidget);

        await tester.tap(find.text('Current Network'));
        await tester.pumpAndSettle();
        expect(find.text('Additional Permission Needed'), findsOneWidget);

        await tester.tap(find.text('Open Settings'));
        await tester.pumpAndSettle();
        expect(openSettingsCalls, 1);

        deviceProvider.dispose();
      },
    );

    testWidgets('permission info dialog opens from status tile tap', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(hasPermissionResult: false);
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Network Access Status'));
      await tester.pumpAndSettle();

      expect(find.text('About WiFi Name Permission'), findsOneWidget);
      await tester.tap(find.widgetWithText(TextButton, 'Cancel'));
      await tester.pumpAndSettle();

      deviceProvider.dispose();
    });

    testWidgets('granted permission but no SSID shows local network snackbar', (
      tester,
    ) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      final wifiService = TestWifiDetectionService(
        hasPermissionResult: false,
        requestPermissionResult: true,
        currentSsidResult: null,
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: MaterialApp(
            home: SettingsScreen(
              wifiService: wifiService,
              isMobilePlatform: true,
              isIOSPlatform: true,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Grant'));
      await tester.pump(const Duration(milliseconds: 600));
      await tester.pumpAndSettle();

      expect(
        find.textContaining(
          'Location granted, but Local Network permission also needed',
        ),
        findsOneWidget,
      );
      deviceProvider.dispose();
    });

    testWidgets('discovery timeout dialog cancel closes it', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: settingsProvider),
            ChangeNotifierProvider.value(value: deviceProvider),
          ],
          child: const MaterialApp(home: SettingsScreen()),
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Discovery Timeout'));
      await tester.pumpAndSettle();
      expect(find.widgetWithText(TextButton, 'Cancel'), findsOneWidget);

      await tester.tap(find.widgetWithText(TextButton, 'Cancel'));
      await tester.pumpAndSettle();
      expect(find.text('How long to scan for devices:'), findsNothing);
      deviceProvider.dispose();
    });
  });
}
