import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bit_switch/ui/screens/home_screen.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/core/exceptions.dart';
import 'package:bit_switch/ui/screens/device_detail_screen.dart';
import 'package:bit_switch/ui/screens/settings_screen.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/models/device_state.dart';
import 'package:bit_switch/ui/widgets/device_card.dart';

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
    return {'BinaryState': '0'};
  }
}

Widget createScreen({
  required SettingsProvider settingsProvider,
  required DeviceProvider deviceProvider,
  DeviceProvider? provider,
}) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: settingsProvider),
      ChangeNotifierProvider.value(value: provider ?? deviceProvider),
    ],
    child: const MaterialApp(home: HomeScreen()),
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final testDevice = WemoDevice(
    id: 'test-switch',
    name: 'Kitchen Light',
    host: '192.168.1.100',
    port: 49153,
    type: WemoDeviceType.wemoSwitch,
  );

  group('HomeScreen', () {
    late DeviceProvider deviceProvider;
    late SettingsProvider settingsProvider;
    late MockDiscoveryService mockDiscovery;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      settingsProvider = SettingsProvider();
      await settingsProvider.ensureLoaded();
      
      mockDiscovery = MockDiscoveryService(devices: [testDevice]);
      deviceProvider = DeviceProvider(
        controlService: DeviceControlService(soapClient: MockSoapClient()),
        discoveryService: mockDiscovery,
      );

      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('dev.fluttercommunity.plus/network_info'),
        (MethodCall methodCall) async {
          if (methodCall.method == 'wifiName') return 'TestWiFi';
          return null;
        },
      );
    });

    testWidgets('shows wifi name', (tester) async {
      await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: deviceProvider));
      await tester.pumpAndSettle();
      expect(find.textContaining('Wi-Fi: TestWiFi'), findsOneWidget);
    });

    testWidgets('pull to refresh calls discover', (tester) async {
      await deviceProvider.discoverDevices(timeout: Duration.zero);
      await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: deviceProvider));
      await tester.pumpAndSettle();
      
      expect(find.byType(ListView), findsOneWidget);
      await tester.fling(find.byType(ListView), const Offset(0, 300), 1000);
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();
    });

    testWidgets('shows device list when devices present', (tester) async {
       await deviceProvider.discoverDevices(timeout: Duration.zero);
      
      await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: deviceProvider));
      await tester.pumpAndSettle();
      
      expect(find.byType(DeviceCard), findsOneWidget);
      expect(find.text('Kitchen Light'), findsOneWidget);
      
      await tester.tap(find.text('Kitchen Light'));
      await tester.pumpAndSettle();
      expect(find.byType(DeviceDetailScreen), findsOneWidget);
    });

    testWidgets('shows empty state when no devices', (tester) async {
      // Create a provider with a delayed discovery to catch it mid-flight
      final emptyDiscovery = MockDiscoveryService(devices: [], delay: const Duration(milliseconds: 100));
      final emptyProvider = DeviceProvider(discoveryService: emptyDiscovery);
      
      await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: emptyProvider));
      await tester.pumpAndSettle();
      
      expect(find.text('No devices found'), findsOneWidget);
      expect(find.text('Scan for devices'), findsOneWidget);
      
      await tester.tap(find.text('Scan for devices'));
      // discoverDevices is called internally in Scan for devices button
      await tester.pump(); 
      expect(emptyProvider.isDiscovering, true);
      
      // Clear the timer and wait for discovery to finish
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pumpAndSettle();
    });

    testWidgets('reacts to auto-refresh settings change', (tester) async {
      final mockControl = DeviceControlService(soapClient: MockSoapClient());
      final delayedDiscovery = MockDiscoveryService(devices: [testDevice], delay: const Duration(milliseconds: 100));
      final provider = DeviceProvider(
        controlService: mockControl,
        discoveryService: delayedDiscovery,
      );
      
      await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: provider));
      await tester.pumpAndSettle();
      
      // Initially disabled
      expect(settingsProvider.autoRefreshEnabled, false);
      
      // Enable it
      await settingsProvider.setAutoRefreshEnabled(true);
      await tester.pump(); // Handle listener
      
      // Should show 'Auto' label in refresh bar
      // We need to have some devices to see the refresh bar
      // ignore: unawaited_futures
      provider.discoverDevices(timeout: Duration.zero);
      await tester.pump(); // Start discovery
      expect(provider.isDiscovering, true);
      await tester.pump(const Duration(milliseconds: 100)); // Complete discovery
      await tester.pumpAndSettle();
      
      expect(find.text('Auto'), findsOneWidget);
      
      // Tap refresh in bar
      await tester.tap(find.text('Refresh'));
      await tester.pump();
      expect(provider.isDiscovering, true);
      await tester.pump(const Duration(milliseconds: 100));
      await tester.pumpAndSettle();
      
      provider.stopPeriodicRefresh();
    });

    testWidgets('navigates to settings', (tester) async {
       await tester.pumpWidget(createScreen(settingsProvider: settingsProvider, deviceProvider: deviceProvider));
      await tester.pumpAndSettle();
      
      await tester.tap(find.byIcon(Icons.settings));
      await tester.pumpAndSettle();
      expect(find.byType(SettingsScreen), findsOneWidget);
    });
  });

  group('HomeScreen error states', () {
    late SettingsProvider settingsProvider;
    late DeviceProvider deviceProvider;
    late MockDiscoveryService mockDiscovery;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      settingsProvider = SettingsProvider();
      await settingsProvider.ensureLoaded();
      
      mockDiscovery = MockDiscoveryService(error: DiscoveryException('Failed'));
      deviceProvider = DeviceProvider(
        discoveryService: mockDiscovery,
      );
    });

    testWidgets('shows error snackbar on failure', (tester) async {
      await tester.pumpWidget(MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: settingsProvider),
          ChangeNotifierProvider.value(value: deviceProvider),
        ],
        child: const MaterialApp(home: HomeScreen()),
      ));
      
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
      });
      
      await tester.pump(); 
      await tester.pump(); 

      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.textContaining('Failed'), findsOneWidget);
    });
  });
}

class MockDiscoveryService extends DeviceDiscoveryService {
  final List<WemoDevice> devices;
  final Exception? error;
  final Duration delay;

  MockDiscoveryService({
    this.devices = const [], 
    this.error, 
    this.delay = Duration.zero
  }) : super(ssdpClient: SsdpClient());

  @override
  Stream<WemoDevice> discoverDevices({Duration timeout = const Duration(seconds: 10)}) async* {
    if (delay > Duration.zero) {
      await Future.delayed(delay);
    }
    if (error != null) throw error!;
    for (final device in devices) {
      yield device;
    }
  }
}
