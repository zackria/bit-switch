import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bit_switch/ui/screens/device_detail_screen.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
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
    int? maxRetriesOverride,
  }) {
    return handler(host, port, serviceName, action, serviceType, arguments);
  }
}

// Mock DiscoveryService
class MockDiscoveryService extends DeviceDiscoveryService {
  final List<WemoDevice> devicesToDiscover;

  MockDiscoveryService(this.devicesToDiscover) : super(ssdpClient: SsdpClient());

  @override
  Stream<WemoDevice> discoverDevices(
      {Duration timeout = const Duration(seconds: 10),
      void Function(String)? onDebugLog}) async* {
    for (final device in devicesToDiscover) {
      yield device;
    }
  }
}

class MockWifiSetupControlService extends DeviceControlService {
  final WifiSetupStatus status;
  final Object? setupError;

  MockWifiSetupControlService({required this.status, this.setupError});

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    return [
      WifiNetwork(
        ssid: 'Net1',
        channel: 1,
        signalStrength: 70,
        authMode: 'WPA2',
        encryption: 'AES',
      ),
    ];
  }

  @override
  Future<WifiSetupStatus> setupWifi(
    WemoDevice device, {
    required String ssid,
    required String password,
    Duration timeout = const Duration(seconds: 30),
  }) async {
    if (setupError != null) throw setupError!;
    return status;
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
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();
        expect(find.text('Test Device'), findsOneWidget);
      });
    });

    testWidgets('shows device info from appBar', (tester) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();
        await tester.tap(find.byIcon(Icons.info_outline));
        await tester.pumpAndSettle();
        expect(find.text('Device Information'), findsOneWidget);
      });
    });

    testWidgets('completes wifi setup flow with validation', (tester) async {
      await tester.runAsync(() async {
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
    });

    testWidgets('performs WiFi reset', (tester) async {
      await tester.runAsync(() async {
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
    });

    testWidgets('performs Factory reset', (tester) async {
      await tester.runAsync(() async {
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
    });

    testWidgets('shows insight stats for Insight device', (tester) async {
      await tester.runAsync(() async {
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
        await provider.refreshDeviceState(insight.id);
        await tester.pumpWidget(createScreen(provider, overrideDevice: insight));
        await tester.pumpAndSettle();

        expect(find.text('Energy Statistics'), findsOneWidget);
        expect(find.text('1.5 W'), findsOneWidget);
      });
    });

    testWidgets('shows warning when unreachable', (tester) async {
      await tester.runAsync(() async {
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

    testWidgets('shows optional device metadata in info sheet', (tester) async {
      await tester.runAsync(() async {
        final richDevice = testDevice.copyWith(
          manufacturer: 'Belkin',
          model: 'F7C027',
          serialNumber: 'SER12345',
          firmwareVersion: '2.00.11408',
          macAddress: 'AA:BB:CC:DD:EE:FF',
        );

        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(
          createScreen(deviceProvider, overrideDevice: richDevice),
        );
        await tester.pumpAndSettle();

        await tester.tap(find.byIcon(Icons.info_outline));
        await tester.pumpAndSettle();

        expect(find.text('Manufacturer'), findsOneWidget);
        expect(find.text('Belkin'), findsOneWidget);
        expect(find.text('Model'), findsOneWidget);
        expect(find.text('F7C027'), findsOneWidget);
        expect(find.text('Serial'), findsOneWidget);
        expect(find.text('SER12345'), findsOneWidget);
        expect(find.text('Firmware'), findsOneWidget);
        expect(find.text('2.00.11408'), findsOneWidget);
        expect(find.text('MAC'), findsOneWidget);
        expect(find.text('AA:BB:CC:DD:EE:FF'), findsOneWidget);
      });
    });

    testWidgets('reset dialog validates at least one option selected', (
      tester,
    ) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.pumpAndSettle();

        await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
        await tester.pumpAndSettle();

        expect(find.text('Please select what to reset'), findsOneWidget);
      });
    });

    testWidgets('shows remote reset snackbar when device returns resetRemote', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: DeviceControlService(
            soapClient: MockSoapClient((h, p, s, a, t, ar) async {
              if (a == 'GetBinaryState') return {'BinaryState': '1'};
              if (a == 'ReSetup') return {'Reset': 'remote'};
              return {};
            }),
          ),
          discoveryService: MockDiscoveryService([testDevice]),
        );

        await provider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(provider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.pumpAndSettle();

        await tester.tap(find.text('Reset WiFi Settings'));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Yes, Reset'));
        await tester.pumpAndSettle();

        expect(find.text('Device will reset remotely'), findsOneWidget);
      });
    });

    testWidgets('wifi setup shows password-short status message', (tester) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: MockWifiSetupControlService(
            status: WifiSetupStatus.passwordShort,
          ),
          discoveryService: MockDiscoveryService([testDevice]),
        );
        await provider.discoverDevices(timeout: Duration.zero);

        await tester.pumpWidget(createScreen(provider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        await tester.enterText(
          find.widgetWithText(TextField, 'Network Name (SSID)'),
          'Net1',
        );
        await tester.enterText(
          find.widgetWithText(TextField, 'Password'),
          '12345678',
        );
        await tester.tap(find.text('Connect'));
        await tester.pumpAndSettle();

        expect(find.text('Password is too short'), findsOneWidget);
      });
    });

    testWidgets('wifi setup shows handshake status message', (tester) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: MockWifiSetupControlService(
            status: WifiSetupStatus.handshake,
          ),
          discoveryService: MockDiscoveryService([testDevice]),
        );
        await provider.discoverDevices(timeout: Duration.zero);

        await tester.pumpWidget(createScreen(provider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        await tester.enterText(
          find.widgetWithText(TextField, 'Network Name (SSID)'),
          'Net1',
        );
        await tester.enterText(
          find.widgetWithText(TextField, 'Password'),
          '12345678',
        );
        await tester.tap(find.text('Connect'));
        await tester.pumpAndSettle();

        expect(
          find.text('Authentication failed - check password'),
          findsOneWidget,
        );
      });
    });

    testWidgets('wifi setup shows user-friendly error on exception', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: MockWifiSetupControlService(
            status: WifiSetupStatus.failed,
            setupError: NetworkException('Connection closed by peer'),
          ),
          discoveryService: MockDiscoveryService([testDevice]),
        );
        await provider.discoverDevices(timeout: Duration.zero);

        await tester.pumpWidget(createScreen(provider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        await tester.enterText(
          find.widgetWithText(TextField, 'Network Name (SSID)'),
          'Net1',
        );
        await tester.enterText(
          find.widgetWithText(TextField, 'Password'),
          '12345678',
        );
        await tester.tap(find.text('Connect'));
        await tester.pumpAndSettle();

        expect(
          find.textContaining('Unable to reach the device'),
          findsOneWidget,
        );
      });
    });
  });
}
