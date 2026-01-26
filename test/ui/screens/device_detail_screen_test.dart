import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bit_switch/ui/screens/device_detail_screen.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/models/device_state.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/exceptions.dart';
import 'package:bit_switch/core/ssdp_client.dart';

// Mock SoapClient
class MockSoapClient extends SoapClient {
  final Future<Map<String, String>> Function(
    String host,
    int port,
    String serviceName,
    String action,
    String serviceType,
    Map<String, String>? arguments,
  ) handler;

  MockSoapClient(this.handler);

  @override
  Future<Map<String, String>> call({
    required String host,
    required int port,
    required String serviceName,
    required String action,
    required String serviceType,
    Map<String, String>? arguments,
    Duration? requestTimeout,
  }) {
    return handler(host, port, serviceName, action, serviceType, arguments);
  }
}

// Mock DiscoveryService
class MockDiscoveryService extends DeviceDiscoveryService {
  final List<WemoDevice> devicesToDiscover;

  MockDiscoveryService(this.devicesToDiscover) : super(ssdpClient: SsdpClient());

  @override
  Stream<WemoDevice> discoverDevices({Duration timeout = const Duration(seconds: 10)}) async* {
    for (final device in devicesToDiscover) {
      yield device;
    }
  }
}

void main() {
  const testDevice = WemoDevice(
    id: 'test-id',
    name: 'Test Device',
    host: '192.168.1.100',
    port: 49153,
    type: WemoDeviceType.wemoSwitch,
  );

  Widget createScreen(DeviceProvider provider, {WemoDevice? overrideDevice}) {
    return ChangeNotifierProvider<DeviceProvider>.value(
      value: provider,
      child: MaterialApp(
        home: DeviceDetailScreen(device: overrideDevice ?? testDevice),
      ),
    );
  }

  group('DeviceDetailScreen', () {
    late DeviceProvider deviceProvider;

    setUp(() {
      const channel = MethodChannel('wifi_scan');
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        channel,
        (MethodCall methodCall) async {
          if (methodCall.method == 'canStartScan') return 0;
          if (methodCall.method == 'startScan') return true;
          if (methodCall.method == 'getScannedResults') {
            return [
              {
                'ssid': 'TestWiFi',
                'bssid': '00:11:22:33:44:55',
                'level': -50,
                'frequency': 2412,
                'capabilities': '[WPA2-PSK-CCMP][ESS]',
              }
            ];
          }
          return null;
        },
      );

      deviceProvider = DeviceProvider(
        controlService: DeviceControlService(
          soapClient: MockSoapClient((host, port, service, action, type, args) async {
             if (action == 'GetBinaryState') return {'BinaryState': '1'};
             if (action == 'GetInsightParams') return {'InsightParams': '1|0|0|0|0|0|0|1500|3000000|6000000|0'};
             return {};
          }),
        ),
        discoveryService: MockDiscoveryService([testDevice]),
      );
    });

    testWidgets('shows device name and type', (tester) async {
      await deviceProvider.discoverDevices(timeout: Duration.zero);
      await tester.pumpWidget(createScreen(deviceProvider));
      await tester.pumpAndSettle();
      expect(find.text('Test Device'), findsOneWidget);
    });

    testWidgets('shows device info from appBar', (tester) async {
      await deviceProvider.discoverDevices(timeout: Duration.zero);
      await tester.pumpWidget(createScreen(deviceProvider));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.info_outline));
      await tester.pumpAndSettle();
      expect(find.text('Device Information'), findsOneWidget);
    });

    testWidgets('completes wifi setup flow with validation', (tester) async {
      await deviceProvider.discoverDevices(timeout: Duration.zero);
      await tester.pumpWidget(createScreen(deviceProvider));
      await tester.pumpAndSettle();
      
      await tester.ensureVisible(find.text('WiFi Setup'));
      await tester.tap(find.text('WiFi Setup'));
      await tester.pumpAndSettle();
      
      // Test validation
      await tester.tap(find.text('Connect'));
      await tester.pump();
      expect(find.text('Please enter or select a network name'), findsOneWidget);
      
      // Tap scan in AppBar
      await tester.tap(find.byTooltip('Scan for networks'));
      await tester.pumpAndSettle();
      expect(find.text('TestWiFi'), findsOneWidget);
      
      // Select network
      await tester.tap(find.text('TestWiFi'));
      await tester.pump();
      
      // Test password validation
      await tester.tap(find.text('Connect'));
      await tester.pump();
      expect(find.text('Please enter the network password'), findsOneWidget);

      // Enter password
      await tester.enterText(find.widgetWithText(TextField, 'Password'), 'password123');
      
      // Connect
      await tester.tap(find.text('Connect'));
      await tester.pump();
    });

    testWidgets('performs WiFi reset', (tester) async {
       await deviceProvider.discoverDevices(timeout: Duration.zero);
       await tester.pumpWidget(createScreen(deviceProvider));
       await tester.pumpAndSettle();
       
       await tester.ensureVisible(find.widgetWithText(OutlinedButton, 'Reset'));
       await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
       await tester.pumpAndSettle();
       
       await tester.tap(find.text('Reset WiFi Settings'));
       await tester.pump();
       await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
       await tester.pumpAndSettle();
       await tester.tap(find.text('Yes, Reset'));
       await tester.pumpAndSettle();
    });

    testWidgets('performs Factory reset', (tester) async {
       await deviceProvider.discoverDevices(timeout: Duration.zero);
       await tester.pumpWidget(createScreen(deviceProvider));
       await tester.pumpAndSettle();
       
       await tester.ensureVisible(find.widgetWithText(OutlinedButton, 'Reset'));
       await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
       await tester.pumpAndSettle();
       
       await tester.tap(find.text('Factory Reset'));
       await tester.pumpAndSettle();
       // Confirmation dialog for Factory Reset uses "Factory Reset" as button text
       await tester.tap(find.widgetWithText(TextButton, 'Factory Reset'));
       await tester.pumpAndSettle();
    });

    testWidgets('shows insight stats for Insight device', (tester) async {
      final insight = testDevice.copyWith(type: WemoDeviceType.insight);
      final provider = DeviceProvider(
        controlService: DeviceControlService(
          soapClient: MockSoapClient((h, p, s, a, t, ar) async {
            if (a == 'GetInsightParams') return {'InsightParams': '1|0|0|0|0|0|0|1500|3000000|6000000|0'};
            return {'BinaryState': '1'};
          }),
        ),
        discoveryService: MockDiscoveryService([insight]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      await tester.runAsync(() async => provider.refreshDeviceState(insight.id));
      await tester.pumpWidget(createScreen(provider, overrideDevice: insight));
      await tester.pumpAndSettle();

      expect(find.text('Energy Statistics'), findsOneWidget);
      expect(find.text('1.5 W'), findsOneWidget);
    });

    testWidgets('shows warning when unreachable', (tester) async {
      final provider = DeviceProvider(
        controlService: DeviceControlService(
          soapClient: MockSoapClient((h, p, s, a, t, ar) async {
            throw NetworkException('Connection Refused');
          }),
        ),
        discoveryService: MockDiscoveryService([testDevice]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      await tester.pumpWidget(createScreen(provider));
      await tester.pumpAndSettle();
      expect(find.textContaining('Device is unreachable'), findsOneWidget);
    });
  });
}
