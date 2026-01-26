import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/ui/screens/settings_screen.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
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
  }) async {
    return {};
  }
}

class MockSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({Duration timeout = const Duration(seconds: 5), String searchTarget = ''}) async* {
    // Empty
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

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));

      expect(find.text('Discovery Timeout'), findsOneWidget);
      expect(find.text('Auto-refresh'), findsOneWidget);
      expect(find.text('About Bit Switch'), findsOneWidget);
      expect(find.text('Network Diagnostics'), findsOneWidget);
    });

    testWidgets('changes auto refresh', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));

      await tester.tap(find.byType(Switch));
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

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));

      await tester.tap(find.text('Discovery Timeout'));
      await tester.pumpAndSettle();

      expect(find.text('Discovery Timeout'), findsNWidgets(2)); 
      expect(find.text('30s'), findsOneWidget);
      
      await tester.tap(find.text('30s'));
      await tester.pumpAndSettle();
      
      expect(settingsProvider.discoveryTimeoutSeconds, 30);
    });
    
    testWidgets('shows refresh interval option when auto refresh enabled', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();
      await settingsProvider.setAutoRefreshEnabled(true);

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));
      
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

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));

      await tester.tap(find.text('About Bit Switch'));
      await tester.pumpAndSettle();

      expect(find.text('About Bit Switch'), findsNWidgets(2)); // Tile + Dialog title
      expect(find.textContaining('1.0.0'), findsNWidgets(2)); // Tile + Dialog
      expect(find.text('Close'), findsOneWidget);
    });

    testWidgets('shows diagnostics dialog', (tester) async {
      final settingsProvider = SettingsProvider();
      final deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: DeviceDiscoveryService(ssdpClient: MockSsdpClient()),
      );
      await settingsProvider.ensureLoaded();

      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: SettingsScreen()),
      ));

      await tester.tap(find.text('Network Diagnostics'));
      await tester.pumpAndSettle();

      expect(find.text('Protocol: SSDP/UPnP'), findsOneWidget);
    });
  });
}
