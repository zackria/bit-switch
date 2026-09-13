import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bit_switch/ui/screens/device_detail_screen.dart';
import 'package:bit_switch/ui/widgets/power_button.dart';
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
    SoapCallOptions? options,
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

    // --- WiFi setup: iOS banner (Theme.of(context).platform, not dart:io) ---

    testWidgets('shows iOS manual-entry banner when platform is iOS', (
      tester,
    ) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(
          ChangeNotifierProvider<DeviceProvider>.value(
            value: deviceProvider,
            child: MaterialApp(
              theme: ThemeData(platform: TargetPlatform.iOS),
              home: DeviceDetailScreen(device: testDevice),
            ),
          ),
        );
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        expect(
          find.text(
            'iOS strictly prohibits third-party apps from scanning for nearby Wi-Fi networks. Please enter your network name manually below.',
          ),
          findsOneWidget,
        );
      });
    });

    // --- WiFi setup: Android-style scan permission gate ---
    //
    // Note: `Platform.isIOS`/`Platform.isAndroid` are the real dart:io
    // getters and reflect the actual OS this test process runs on (never
    // "ios"/"android" for a plain `flutter test` run). So:
    //  - `_scanNetworks()` always takes the non-iOS branch here, which is
    //    why these tests exercise `_scanNetworksAndroid()`.
    //  - `_requestWifiScanPermission()` always falls through to its
    //    "desktop platforms don't need permission" branch (returns true),
    //    since neither Platform.isIOS nor Platform.isAndroid is true on this
    //    host. That means `_requestIosWifiScanPermission()` and
    //    `_requestAndroidWifiScanPermission()` (and therefore the
    //    NEARBY_WIFI_DEVICES / location-permission branches, and the
    //    `detailPermissionScan` error branch) cannot be reached from a
    //    widget test without either a real mobile OS process or adding a
    //    Platform-abstraction seam to the source — neither of which is
    //    available here, so those specific branches are left uncovered.

    testWidgets(
      'wifi scan proceeds without requesting permission when already available',
      (tester) async {
        await tester.runAsync(() async {
          const channel = MethodChannel('wifi_scan');
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
              .setMockMethodCallHandler(channel, (
                MethodCall methodCall,
              ) async {
                if (methodCall.method == 'canStartScan') {
                  return 1; // CanStartScan.yes — permission check is skipped
                }
                if (methodCall.method == 'startScan') return true;
                if (methodCall.method == 'getScannedResults') {
                  return [
                    {
                      'ssid': 'GrantedNet',
                      'bssid': '00:11:22:33:44:66',
                      'level': -50,
                      'frequency': 2412,
                      'capabilities': '[WPA2-PSK-CCMP][ESS]',
                    },
                  ];
                }
                return null;
              });

          await deviceProvider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(createScreen(deviceProvider));
          await tester.pumpAndSettle();

          await tester.ensureVisible(find.text('WiFi Setup'));
          await tester.tap(find.text('WiFi Setup'));
          await tester.pumpAndSettle();

          expect(find.text('GrantedNet'), findsOneWidget);
        });
      },
    );

    testWidgets(
      'wifi scan requests permission before scanning when not yet available',
      (tester) async {
        await tester.runAsync(() async {
          const channel = MethodChannel('wifi_scan');
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
              .setMockMethodCallHandler(channel, (
                MethodCall methodCall,
              ) async {
                if (methodCall.method == 'canStartScan') {
                  return 2; // CanStartScan.noLocationPermissionRequired
                }
                if (methodCall.method == 'startScan') return true;
                if (methodCall.method == 'getScannedResults') {
                  return [
                    {
                      'ssid': 'PermRequestedNet',
                      'bssid': '00:11:22:33:44:77',
                      'level': -50,
                      'frequency': 2412,
                      'capabilities': '[WPA2-PSK-CCMP][ESS]',
                    },
                  ];
                }
                return null;
              });

          await deviceProvider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(createScreen(deviceProvider));
          await tester.pumpAndSettle();

          await tester.ensureVisible(find.text('WiFi Setup'));
          await tester.tap(find.text('WiFi Setup'));
          await tester.pumpAndSettle();

          // On this desktop test host the permission request falls through
          // to "desktop platforms don't need permission", so the scan still
          // succeeds — see the note above the previous test.
          expect(find.text('PermRequestedNet'), findsOneWidget);
        });
      },
    );

    testWidgets('shows manual-entry error when network scan throws', (
      tester,
    ) async {
      await tester.runAsync(() async {
        const channel = MethodChannel('wifi_scan');
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
              if (methodCall.method == 'canStartScan') {
                throw PlatformException(code: 'error', message: 'boom');
              }
              return null;
            });

        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        expect(
          find.text('Could not scan networks. Enter the network name manually.'),
          findsOneWidget,
        );
      });
    });

    testWidgets('shows enter-network message when scan finds no networks', (
      tester,
    ) async {
      await tester.runAsync(() async {
        const channel = MethodChannel('wifi_scan');
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
              if (methodCall.method == 'canStartScan') return 0;
              if (methodCall.method == 'startScan') return true;
              if (methodCall.method == 'getScannedResults') {
                return <Map<String, dynamic>>[];
              }
              return null;
            });

        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        expect(find.text('Enter your network name below'), findsOneWidget);
      });
    });

    testWidgets('shows scanning indicator while a network scan is in progress', (
      tester,
    ) async {
      await tester.runAsync(() async {
        const channel = MethodChannel('wifi_scan');
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
              if (methodCall.method == 'canStartScan') {
                await Future.delayed(const Duration(milliseconds: 50));
                return 1; // CanStartScan.yes
              }
              if (methodCall.method == 'startScan') return true;
              if (methodCall.method == 'getScannedResults') {
                return <Map<String, dynamic>>[];
              }
              return null;
            });

        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pump(); // process the tap and start the page route
        await tester.pump(); // build the new route and run its initState

        expect(find.byType(CircularProgressIndicator), findsOneWidget);

        // canStartScan's real 50ms delay is still in flight here. pumpAndSettle
        // pumps frames but doesn't itself wait for real timers/futures created
        // outside the fake test clock (we're inside runAsync), so let it
        // actually resolve first or pumpAndSettle can spin until it times out.
        await Future.delayed(const Duration(milliseconds: 60));
        await tester.pumpAndSettle();
      });
    });

    testWidgets(
      'lists scanned networks sorted, deduped, and with correct signal/security info',
      (tester) async {
        await tester.runAsync(() async {
          const channel = MethodChannel('wifi_scan');
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
              .setMockMethodCallHandler(channel, (
                MethodCall methodCall,
              ) async {
                if (methodCall.method == 'canStartScan') return 0;
                if (methodCall.method == 'startScan') return true;
                if (methodCall.method == 'getScannedResults') {
                  return [
                    {
                      'ssid': 'StrongNet',
                      'bssid': '00:11:22:33:44:01',
                      'level': -20,
                      'frequency': 5180,
                      'capabilities': '[WPA2-PSK-CCMP][ESS]',
                    },
                    // Weaker duplicate of StrongNet — should be deduped away.
                    {
                      'ssid': 'StrongNet',
                      'bssid': '00:11:22:33:44:02',
                      'level': -90,
                      'frequency': 5180,
                      'capabilities': '[WPA2-PSK-CCMP][ESS]',
                    },
                    {
                      'ssid': 'MidNet',
                      'bssid': '00:11:22:33:44:03',
                      'level': -79,
                      'frequency': 2412,
                      'capabilities': '',
                    },
                    {
                      'ssid': 'WeakNet',
                      'bssid': '00:11:22:33:44:04',
                      'level': -95,
                      'frequency': 2462,
                      'capabilities': '[WEP][ESS]',
                    },
                    // Hidden network (empty SSID) — should be filtered out.
                    {
                      'ssid': '',
                      'bssid': '00:11:22:33:44:05',
                      'level': -50,
                      'frequency': 2412,
                      'capabilities': '[WPA2-PSK-CCMP][ESS]',
                    },
                  ];
                }
                return null;
              });

          await deviceProvider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(createScreen(deviceProvider));
          await tester.pumpAndSettle();

          await tester.ensureVisible(find.text('WiFi Setup'));
          await tester.tap(find.text('WiFi Setup'));
          await tester.pumpAndSettle();

          // 5 access points in, but 1 was a weaker duplicate (deduped) and
          // 1 had an empty SSID (filtered) — 3 tiles should remain.
          expect(find.byType(ListTile), findsNWidgets(3));

          expect(find.text('StrongNet'), findsOneWidget);
          expect(find.text('WPA2 • Ch 36'), findsOneWidget);
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'StrongNet'),
              matching: find.byIcon(Icons.signal_wifi_4_bar),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'StrongNet'),
              matching: find.byIcon(Icons.lock),
            ),
            findsOneWidget,
          );

          expect(find.text('MidNet'), findsOneWidget);
          expect(find.text('OPEN • Ch 1'), findsOneWidget);
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'MidNet'),
              matching: find.byIcon(Icons.network_wifi_2_bar),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'MidNet'),
              matching: find.byIcon(Icons.lock),
            ),
            findsNothing,
          );

          expect(find.text('WeakNet'), findsOneWidget);
          expect(find.text('WEP • Ch 11'), findsOneWidget);
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'WeakNet'),
              matching: find.byIcon(Icons.network_wifi_1_bar),
            ),
            findsOneWidget,
          );
          expect(
            find.descendant(
              of: find.widgetWithText(ListTile, 'WeakNet'),
              matching: find.byIcon(Icons.lock),
            ),
            findsOneWidget,
          );
        });
      },
    );

    testWidgets('selecting a network fills SSID field and clears existing error', (
      tester,
    ) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.text('WiFi Setup'));
        await tester.tap(find.text('WiFi Setup'));
        await tester.pumpAndSettle();

        // Trigger the "no network name" validation error first.
        await tester.tap(find.text('Connect'));
        await tester.pump();
        expect(
          find.text('Please enter or select a network name'),
          findsOneWidget,
        );

        await tester.tap(find.text('TestWiFi'));
        await tester.pump();

        expect(
          find.text('Please enter or select a network name'),
          findsNothing,
        );
        // One match for the list tile title, one for the now-filled field.
        expect(find.text('TestWiFi'), findsNWidgets(2));
      });
    });

    testWidgets('wifi setup shows success snackbar and pops when connected', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: MockWifiSetupControlService(
            status: WifiSetupStatus.connected,
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

        expect(find.text('WiFi configured successfully!'), findsOneWidget);
        // Back on DeviceDetailScreen — only the Advanced-section button
        // remains, confirming the WiFi setup screen was popped.
        expect(find.text('WiFi Setup'), findsOneWidget);
      });
    });

    testWidgets('wifi setup shows failed status message without an exception', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: MockWifiSetupControlService(
            status: WifiSetupStatus.failed,
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

        expect(find.text('Connection failed'), findsOneWidget);
      });
    });

    // --- Reset dialog ---

    testWidgets(
      'reset dialog shows matching warnings for selected options and supports cancelling confirmation',
      (tester) async {
        await tester.runAsync(() async {
          await deviceProvider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(createScreen(deviceProvider));
          await tester.pumpAndSettle();

          await tester.ensureVisible(
            find.widgetWithText(OutlinedButton, 'Reset'),
          );
          await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
          await tester.pumpAndSettle();

          // Select "Reset User Data" only — only the data warning shows.
          await tester.tap(find.text('Reset User Data'));
          await tester.pump();
          await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
          await tester.pumpAndSettle();

          expect(
            find.text('• All schedules and automation rules will be deleted'),
            findsOneWidget,
          );
          expect(find.text('• WiFi settings will be erased'), findsNothing);

          // Cancel the confirmation — no reset should be performed.
          await tester.tap(find.widgetWithText(TextButton, 'Cancel').last);
          await tester.pumpAndSettle();

          expect(find.text('Reset options for "Test Device"'), findsOneWidget);

          // Also select "Reset WiFi Settings" — all warnings should show.
          await tester.tap(find.text('Reset WiFi Settings'));
          await tester.pump();
          await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
          await tester.pumpAndSettle();

          expect(
            find.text('• All schedules and automation rules will be deleted'),
            findsOneWidget,
          );
          expect(find.text('• WiFi settings will be erased'), findsOneWidget);
          expect(
            find.text('• You will need to set up the device again'),
            findsOneWidget,
          );
          expect(
            find.text('• The device may become temporarily unreachable'),
            findsOneWidget,
          );

          await tester.tap(find.widgetWithText(TextButton, 'Cancel').last);
          await tester.pumpAndSettle();

          // Deselect "Reset User Data" — only the WiFi warnings should remain.
          await tester.tap(find.text('Reset User Data'));
          await tester.pump();
          await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
          await tester.pumpAndSettle();

          expect(
            find.text('• All schedules and automation rules will be deleted'),
            findsNothing,
          );
          expect(find.text('• WiFi settings will be erased'), findsOneWidget);

          await tester.tap(find.widgetWithText(TextButton, 'Cancel').last);
          await tester.pumpAndSettle();
        });
      },
    );

    testWidgets('shows success snackbar and pops when reset succeeds', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: DeviceControlService(
            soapClient: MockSoapClient((h, p, s, a, t, ar) async {
              if (a == 'GetBinaryState') return {'BinaryState': '1'};
              if (a == 'ReSetup') return {'Reset': 'success'};
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
        await tester.pump();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Yes, Reset'));
        await tester.pumpAndSettle();

        expect(find.text('Device reset successfully'), findsOneWidget);
        // Reset dialog is gone; only the Advanced-section button remains.
        expect(find.widgetWithText(OutlinedButton, 'Reset'), findsOneWidget);
      });
    });

    testWidgets('shows user-friendly error when reset throws', (tester) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: DeviceControlService(
            soapClient: MockSoapClient((h, p, s, a, t, ar) async {
              if (a == 'GetBinaryState') return {'BinaryState': '1'};
              if (a == 'ReSetup') {
                throw NetworkException('Connection closed by peer');
              }
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
        await tester.pump();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Reset'));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(ElevatedButton, 'Yes, Reset'));
        await tester.pumpAndSettle();

        expect(
          find.textContaining('Unable to reach the device'),
          findsOneWidget,
        );
      });
    });

    testWidgets('cancels factory reset confirmation without resetting', (
      tester,
    ) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        await tester.ensureVisible(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.tap(find.widgetWithText(OutlinedButton, 'Reset'));
        await tester.pumpAndSettle();

        await tester.tap(find.text('Factory Reset'));
        await tester.pumpAndSettle();

        await tester.tap(find.widgetWithText(TextButton, 'Cancel').last);
        await tester.pumpAndSettle();

        expect(find.text('Reset options for "Test Device"'), findsOneWidget);
      });
    });

    testWidgets('shows user-friendly error when factory reset throws', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: DeviceControlService(
            soapClient: MockSoapClient((h, p, s, a, t, ar) async {
              if (a == 'GetBinaryState') return {'BinaryState': '1'};
              if (a == 'ReSet') {
                throw NetworkException('Connection closed by peer');
              }
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

        await tester.tap(find.text('Factory Reset'));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(TextButton, 'Factory Reset'));
        await tester.pumpAndSettle();

        expect(
          find.textContaining('Unable to reach the device'),
          findsOneWidget,
        );
      });
    });

    // --- Quick actions / power button / brightness ---

    testWidgets(
      'hides quick action buttons for devices that do not support on/off',
      (tester) async {
        await tester.runAsync(() async {
          final motionDevice = testDevice.copyWith(
            type: WemoDeviceType.motion,
          );
          final provider = DeviceProvider(
            controlService: DeviceControlService(
              soapClient: MockSoapClient((h, p, s, a, t, ar) async {
                if (a == 'GetBinaryState') return {'BinaryState': '1'};
                return {};
              }),
            ),
            discoveryService: MockDiscoveryService([motionDevice]),
          );
          await provider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(
            createScreen(provider, overrideDevice: motionDevice),
          );
          await tester.pumpAndSettle();

          expect(find.text('On'), findsNothing);
          expect(find.text('Off'), findsNothing);
        });
      },
    );

    testWidgets('quick action buttons turn device on and off', (
      tester,
    ) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        expect(deviceProvider.getDeviceState(testDevice.id).isOn, true);

        await tester.tap(find.widgetWithText(ElevatedButton, 'Off'));
        await tester.pumpAndSettle();
        expect(deviceProvider.getDeviceState(testDevice.id).isOn, false);

        await tester.tap(find.widgetWithText(ElevatedButton, 'On'));
        await tester.pumpAndSettle();
        expect(deviceProvider.getDeviceState(testDevice.id).isOn, true);
      });
    });

    testWidgets('tapping power button toggles device state', (tester) async {
      await tester.runAsync(() async {
        await deviceProvider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(deviceProvider));
        await tester.pumpAndSettle();

        expect(deviceProvider.getDeviceState(testDevice.id).isOn, true);

        await tester.tap(find.byType(PowerButton));
        await tester.pumpAndSettle();

        expect(deviceProvider.getDeviceState(testDevice.id).isOn, false);
      });
    });

    testWidgets('shows failure snackbar when toggling device throws', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = DeviceProvider(
          controlService: DeviceControlService(
            soapClient: MockSoapClient((h, p, s, a, t, ar) async {
              if (a == 'GetBinaryState') return {'BinaryState': '1'};
              if (a == 'SetBinaryState') {
                throw NetworkException('Connection closed by peer');
              }
              return {};
            }),
          ),
          discoveryService: MockDiscoveryService([testDevice]),
        );
        await provider.discoverDevices(timeout: Duration.zero);
        await tester.pumpWidget(createScreen(provider));
        await tester.pumpAndSettle();

        await tester.tap(find.byType(PowerButton));
        await tester.pumpAndSettle();

        expect(find.textContaining('Failed to toggle:'), findsOneWidget);
      });
    });

    testWidgets(
      'shows brightness slider for dimmer devices and updates brightness',
      (tester) async {
        await tester.runAsync(() async {
          final dimmer = testDevice.copyWith(type: WemoDeviceType.dimmer);
          final provider = DeviceProvider(
            controlService: DeviceControlService(
              soapClient: MockSoapClient((h, p, s, a, t, ar) async {
                if (a == 'GetBinaryState') return {'BinaryState': '1'};
                return {};
              }),
            ),
            discoveryService: MockDiscoveryService([dimmer]),
          );
          await provider.discoverDevices(timeout: Duration.zero);
          await tester.pumpWidget(
            createScreen(provider, overrideDevice: dimmer),
          );
          await tester.pumpAndSettle();

          expect(find.text('Brightness'), findsOneWidget);

          await tester.tap(find.widgetWithText(OutlinedButton, '75%'));
          await tester.pumpAndSettle();

          expect(provider.getDeviceState(dimmer.id).brightness, 75);
        });
      },
    );
  });
}
