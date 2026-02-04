import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/ui/screens/settings_screen.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/ssdp_client.dart';

class MockSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({
    Duration timeout = const Duration(seconds: 5),
    String searchTarget = '',
    void Function(String)? onDebugLog,
  }) async* {
    return;
  }
}

void main() {
  testWidgets('dump settings screen tree', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final settingsProvider = SettingsProvider();
    final deviceProvider = DeviceProvider(
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

    // Print the widget tree
    debugDumpApp();

    expect(find.byType(SettingsScreen), findsOneWidget);
  });
}
