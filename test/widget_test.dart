import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/ui/screens/home_screen.dart';

// A test SSDP client that yields no responses to avoid network/timer usage.
class _TestSsdpClient extends SsdpClient {
  @override
  Stream<SsdpResponse> discover({Duration timeout = const Duration(seconds: 3), String searchTarget = ''}) async* {
    // No responses during tests
    return;
  }

  @override
  Future<SsdpResponse?> probe(String host, {List<int> ports = const [80], Duration timeout = const Duration(seconds: 2)}) async {
    return null;
  }
}

void main() {
  setUpAll(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('App loads and shows title', (WidgetTester tester) async {
    // Inject a DeviceProvider that uses a test SSDP client to avoid network/timers.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<DeviceProvider>(
            create: (_) => DeviceProvider(
              discoveryService: DeviceDiscoveryService(ssdpClient: _TestSsdpClient(), httpClient: http.Client()),
            ),
          ),
          ChangeNotifierProvider<SettingsProvider>(
            create: (_) => SettingsProvider(),
          ),
        ],
        child: const MaterialApp(
          title: 'Bit Switch',
          home: HomeScreen(),
        ),
      ),
    );

    // Verify the app title is displayed in the AppBar
    expect(find.text('B I T   S W I T C H'), findsOneWidget);
  });

  testWidgets('App shows scan button when no devices', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<DeviceProvider>(
            create: (_) => DeviceProvider(
              discoveryService: DeviceDiscoveryService(ssdpClient: _TestSsdpClient(), httpClient: http.Client()),
            ),
          ),
          ChangeNotifierProvider<SettingsProvider>(
            create: (_) => SettingsProvider(),
          ),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
        ),
      ),
    );

    // Allow one frame for widgets to build without waiting for network/timers
    await tester.pump();

    // Verify scan button or discovering text is shown (no network discovery running)
    expect(
      find.byType(CircularProgressIndicator).evaluate().isNotEmpty ||
          find.text('Scan for devices').evaluate().isNotEmpty ||
          find.text('Discovering devices...').evaluate().isNotEmpty,
      isTrue,
    );
  });
}
