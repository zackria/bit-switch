import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/ui/screens/home_screen.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/models/device_state.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/device_control_service.dart';

// Minimal mock services to construct a DeviceProvider for widget tests
class _MockDiscoveryService extends DeviceDiscoveryService {
  final List<WemoDevice> devices;
  _MockDiscoveryService(this.devices)
    : super(ssdpClient: null, httpClient: null);

  @override
  Stream<WemoDevice> discoverDevices({
    Duration timeout = const Duration(seconds: 1),
    void Function(String)? onDebugLog,
  }) async* {
    for (final d in devices) {
      yield d;
    }
  }
}

class _MockControlService extends DeviceControlService {
  _MockControlService() : super(soapClient: null);

  @override
  Future<DeviceState> getState(WemoDevice device) async =>
      DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now());
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('HomeScreen shows Wi-Fi info and debug icon when enabled', (
    WidgetTester tester,
  ) async {
    await tester.runAsync(() async {
      SharedPreferences.setMockInitialValues({});
      final settings = SettingsProvider();
      // Ensure settings are loaded and enable debug option
      await settings.ensureLoaded();
      await settings.setShowDebugOption(true);

      final deviceProvider = DeviceProvider(
        controlService: _MockControlService(),
        discoveryService: _MockDiscoveryService(const []),
      );
      addTearDown(deviceProvider.dispose);

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider<SettingsProvider>.value(value: settings),
            ChangeNotifierProvider<DeviceProvider>.value(value: deviceProvider),
          ],
          child: const MaterialApp(home: HomeScreen()),
        ),
      );

      // Allow initState and async tasks to settle
      await tester.pumpAndSettle();

      // Wi-Fi info title should be present (description text also contains
      // "Wi-Fi" so we match "Wi-Fi:" to target only the title widget)
      expect(find.textContaining('Wi-Fi:'), findsOneWidget);

      // Debug icon should be present because setting enabled
      expect(find.byIcon(Icons.bug_report), findsOneWidget);

      // Toggle debug mode — this triggers _runNetworkDiagnostics() which does
      // real dart:io I/O; runAsync() is required so those operations complete.
      deviceProvider.setDebugMode(true);
      // Give the background diagnostics time to finish before settling
      await Future.delayed(const Duration(milliseconds: 500));
      await tester.pumpAndSettle();

      // Now debug panel should be visible (contains 'Debug Log' text)
      expect(find.text('Debug Log'), findsOneWidget);
    });
  });
}
