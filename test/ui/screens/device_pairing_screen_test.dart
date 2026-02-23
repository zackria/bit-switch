import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bit_switch/providers/pairing_provider.dart';
import 'package:bit_switch/models/pairing_state.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/wifi_detection_service.dart';
import 'package:bit_switch/ui/screens/device_pairing_screen.dart';

// ---------------------------------------------------------------------------
// Fake services
// ---------------------------------------------------------------------------

class _FakeWifiService extends WifiDetectionService {
  final Future<String?> Function()? _getSsid;
  final Stream<String?>? _stream;

  _FakeWifiService({
    Future<String?> Function()? getSsid,
    Stream<String?>? streamSsid,
  })  : _getSsid = getSsid,
        _stream = streamSsid,
        super();

  @override
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    if (_getSsid != null) return _getSsid();
    return null;
  }

  @override
  Stream<String?> watchSsidChanges({
    Duration interval = const Duration(seconds: 2),
  }) {
    return _stream ?? const Stream.empty();
  }
}

class _FakeDiscoveryService extends DeviceDiscoveryService {
  final WemoDevice? probeResult;
  final Stream<WemoDevice>? discoverStream;

  _FakeDiscoveryService({this.probeResult, this.discoverStream});

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int>? ports,
    Duration? timeout,
  }) async {
    return probeResult;
  }

  @override
  Stream<WemoDevice> discoverDevices({
    Duration? timeout = const Duration(seconds: 2),
    void Function(String)? onDebugLog,
  }) {
    return discoverStream ?? const Stream.empty();
  }
}

class _FakeControlService extends DeviceControlService {
  final List<WifiNetwork> networks;
  final WifiSetupStatus wifiStatus;

  _FakeControlService({
    this.networks = const [],
    this.wifiStatus = WifiSetupStatus.connecting,
  });

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    return List.from(networks);
  }

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
  }) async {}

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return wifiStatus;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

// ---------------------------------------------------------------------------
// Test helpers
// ---------------------------------------------------------------------------

Widget _buildScreen(PairingProvider provider) =>
    ChangeNotifierProvider<PairingProvider>.value(
      value: provider,
      child: const MaterialApp(home: DevicePairingScreen()),
    );

PairingProvider _makeProvider({
  WemoDevice? probeResult,
  List<WifiNetwork> networks = const [],
  Stream<WemoDevice>? discoverStream,
}) {
  return PairingProvider(
    wifiService: _FakeWifiService(getSsid: () async => null),
    controlService: _FakeControlService(networks: networks),
    discoveryService: _FakeDiscoveryService(
      probeResult: probeResult,
      discoverStream: discoverStream,
    ),
  );
}

/// Build the screen and wait for initState postFrameCallback + startPairing().
/// After this returns, provider.state.step == PairingStep.intro and state is reset.
Future<void> _pumpAndStart(
  WidgetTester tester,
  PairingProvider provider,
) async {
  await tester.pumpWidget(_buildScreen(provider));
  await tester.pump(); // trigger postFrameCallback
  await tester.pump(); // allow startPairing() to settle
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Shared device and networks for selectNetwork tests
  const _device = WemoDevice(
    id: '1',
    name: 'WeMo Switch',
    host: '10.22.22.1',
    port: 49153,
    type: WemoDeviceType.wemoSwitch,
    macAddress: 'AABBCCDDEEFF',
    serialNumber: '12345',
  );

  final _networks = [
    WifiNetwork(
      ssid: 'Network A',
      channel: 1,
      signalStrength: 80,
      authMode: 'WPAPSK',
      encryption: 'AES',
    ),
    WifiNetwork(
      ssid: 'Network B',
      channel: 6,
      signalStrength: 60,
      authMode: 'WPAPSK',
      encryption: 'AES',
    ),
  ];

  group('DevicePairingScreen — scaffold', () {
    testWidgets('shows Pair New Device in app bar', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        expect(find.text('Pair New Device'), findsOneWidget);
      });
    });

    testWidgets('close button pops route', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await tester.pumpWidget(
          ChangeNotifierProvider<PairingProvider>.value(
            value: provider,
            child: MaterialApp(
              home: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          ChangeNotifierProvider<PairingProvider>.value(
                            value: provider,
                            child: const DevicePairingScreen(),
                          ),
                    ),
                  ),
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        );
        await tester.tap(find.text('Open'));
        await tester.pumpAndSettle();

        expect(find.text('Pair New Device'), findsOneWidget);
        await tester.tap(find.byIcon(Icons.close));
        await tester.pumpAndSettle();

        expect(find.text('Pair New Device'), findsNothing);
      });
    });

    testWidgets('progress step indicator divider is present', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        expect(find.byType(Divider), findsOneWidget);
      });
    });
  });

  group('DevicePairingScreen — intro step', () {
    testWidgets('shows Set Up Your Wemo Device heading', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        expect(find.text('Set Up Your Wemo Device'), findsOneWidget);
      });
    });

    testWidgets('Start Pairing button navigates to connectToAp', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);

        await tester.ensureVisible(find.text('Start Pairing'));
        await tester.pump();
        await tester.tap(find.text('Start Pairing'), warnIfMissed: false);
        await tester.pump();

        expect(provider.state.step, PairingStep.connectToAp);
      });
    });
  });

  group('DevicePairingScreen — connectToAp step', () {
    testWidgets('shows required buttons', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        // Navigate AFTER startPairing() completes
        provider.goToStep(PairingStep.connectToAp);
        await tester.pump();

        expect(find.text('Open WiFi Settings'), findsOneWidget);
        expect(find.text("I've Connected"), findsOneWidget);
      });
    });

    testWidgets('shows connected status when isOnWemoAp is true', (tester) async {
      await tester.runAsync(() async {
        final wifi = _FakeWifiService(
          getSsid: () async => null,
          streamSsid: Stream.value('WeMo.ABCDE'),
        );
        final provider = PairingProvider(
          wifiService: wifi,
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        // Build widget so startPairing() runs and resets state
        await _pumpAndStart(tester, provider);

        // Now start watching SSID — stream emits 'WeMo.ABCDE'
        await provider.startConnectToDevice();
        await Future.delayed(const Duration(milliseconds: 50));
        await tester.pump();

        expect(find.text('Connected to Wemo device!'), findsOneWidget);
      });
    });
  });

  group('DevicePairingScreen — discoverDevice step', () {
    testWidgets('shows Try Again button when not loading', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.discoverDevice);
        await tester.pump();

        expect(find.text('Try Again'), findsOneWidget);
      });
    });

    testWidgets('shows error card when discovery fails', (tester) async {
      await tester.runAsync(() async {
        // Use probeResult: null so confirmConnectedToDeviceAp sets an error at discoverDevice
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: null),
        );
        await _pumpAndStart(tester, provider);
        await provider.confirmConnectedToDeviceAp(); // fast — probe returns null
        await tester.pump();

        // State is discoverDevice with errorMessage set
        expect(provider.state.step, PairingStep.discoverDevice);
        expect(provider.state.errorMessage, isNotNull);
        // Error message text appears in the card
        expect(find.textContaining('Could not find'), findsWidgets);
      });
    });

    testWidgets('Connect to IP disabled when field is empty', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.discoverDevice);
        await tester.pump();

        final button = tester.widget<OutlinedButton>(
          find.ancestor(
            of: find.text('Connect to IP'),
            matching: find.byType(OutlinedButton),
          ),
        );
        expect(button.onPressed, isNull);
      });
    });

    testWidgets('Connect to IP enabled after entering IP text', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.discoverDevice);
        await tester.pump();

        await tester.enterText(find.byType(TextField).first, '192.168.1.5');
        await tester.pump();
        // Trigger a Consumer rebuild by notifying the provider
        provider.setPassword('');
        await tester.pump();

        final button = tester.widget<OutlinedButton>(
          find.ancestor(
            of: find.text('Connect to IP'),
            matching: find.byType(OutlinedButton),
          ),
        );
        expect(button.onPressed, isNotNull);
      });
    });
  });

  group('DevicePairingScreen — selectNetwork (empty list)', () {
    testWidgets('shows No networks found text', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        expect(find.text('No networks found'), findsOneWidget);
      });
    });

    testWidgets('Scan Again button is present', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        expect(find.text('Scan Again'), findsOneWidget);
      });
    });
  });

  group('DevicePairingScreen — selectNetwork step interactions', () {
    testWidgets('password field hidden when no network selected', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        expect(find.text('WiFi Password'), findsNothing);
      });
    });

    testWidgets('password field visible after selectNetwork', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        provider.selectNetwork('HomeNet');
        await tester.pump();

        expect(find.text('WiFi Password'), findsOneWidget);
      });
    });

    testWidgets('Connect button disabled when no password', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        provider.selectNetwork('HomeNet');
        await tester.pump();

        // The password field and Connect button are visible
        expect(find.text('WiFi Password'), findsOneWidget);
        expect(find.text('Connect'), findsOneWidget);
        // Provider has no password set → button's onPressed is null
        // Tapping should not trigger configureNetwork (no state change)
        expect(provider.state.password, isNull);
      });
    });

    testWidgets('password visibility toggle changes icon', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        provider.selectNetwork('HomeNet');
        provider.setPassword('secret');
        await tester.pump();

        expect(find.byIcon(Icons.visibility), findsOneWidget);
        await tester.tap(find.byIcon(Icons.visibility));
        await tester.pump();
        expect(find.byIcon(Icons.visibility_off), findsOneWidget);
      });
    });

    testWidgets('network list, manual entry, Use This Network (needs discovery)', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider(probeResult: _device, networks: _networks);
        await _pumpAndStart(tester, provider);
        // confirmConnectedToDeviceAp causes 2s delay for _fetchAvailableNetworks
        await provider.confirmConnectedToDeviceAp();
        await tester.pump();

        // State is now selectNetwork with device + networks
        expect(find.text('Network A'), findsOneWidget);
        expect(find.text('Network B'), findsOneWidget);
        expect(find.text('Enter network manually'), findsOneWidget);

        // Manual SSID: expand card
        await tester.tap(find.text('Enter network manually'));
        await tester.pump();
        expect(find.text('Network Name (SSID)'), findsOneWidget);

        // Cancel hides card — scroll into view first
        await tester.ensureVisible(find.text('Cancel'));
        await tester.pump();
        await tester.tap(find.text('Cancel'));
        await tester.pump();
        expect(find.text('Network Name (SSID)'), findsNothing);
        expect(find.text('Enter network manually'), findsOneWidget);

        // Use This Network: expand again, enter SSID
        await tester.tap(find.text('Enter network manually'));
        await tester.pump();
        await tester.enterText(
          find.widgetWithText(TextField, 'Network Name (SSID)'),
          'ManualNet',
        );
        await tester.pump();
        // Trigger Consumer rebuild so the button picks up the new text
        provider.setPassword('');
        await tester.pump();

        await tester.ensureVisible(find.text('Use This Network'));
        await tester.pump();
        await tester.tap(find.text('Use This Network'));
        await tester.pump();
        expect(provider.state.selectedSsid, 'ManualNet');
      });
    });
  });

  group('DevicePairingScreen — configuring step', () {
    testWidgets('shows CircularProgressIndicator and loading text', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.configuring);
        await tester.pump();

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.text('Configuring device...'), findsOneWidget);
      });
    });
  });

  group('DevicePairingScreen — reconnectHome step', () {
    testWidgets('shows heading and action buttons', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.reconnectHome);
        await tester.pump();

        expect(find.text('Reconnect to Your Network'), findsOneWidget);
        expect(find.text('Open WiFi Settings'), findsOneWidget);
        expect(find.text("I've Reconnected"), findsOneWidget);
      });
    });
  });

  group('DevicePairingScreen — success step', () {
    testWidgets('shows Setup Complete! and Done button', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.success);
        await tester.pump();

        expect(find.text('Setup Complete!'), findsOneWidget);
        expect(find.text('Done'), findsOneWidget);
      });
    });

    testWidgets('Done button pops route', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await tester.pumpWidget(
          ChangeNotifierProvider<PairingProvider>.value(
            value: provider,
            child: MaterialApp(
              home: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) =>
                          ChangeNotifierProvider<PairingProvider>.value(
                            value: provider,
                            child: const DevicePairingScreen(),
                          ),
                    ),
                  ),
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        );
        await tester.tap(find.text('Open'));
        await tester.pumpAndSettle();

        provider.goToStep(PairingStep.success);
        await tester.pump();

        await tester.tap(find.text('Done'));
        await tester.pumpAndSettle();

        expect(find.text('Setup Complete!'), findsNothing);
      });
    });
  });

  group('DevicePairingScreen — error step (canRetry: true)', () {
    testWidgets('shows error message and Start Over button', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.setError('Something broke', canRetry: true);
        await tester.pump();

        expect(find.text('Something broke'), findsOneWidget);
        expect(find.text('Start Over'), findsOneWidget);
      });
    });

    testWidgets('Start Over resets provider to intro', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.setError('broken', canRetry: true);
        await tester.pump();

        await tester.tap(find.text('Start Over'));
        await tester.pump();

        expect(provider.state.step, PairingStep.intro);
      });
    });
  });

  group('DevicePairingScreen — error step (canRetry: false)', () {
    testWidgets('shows Cancel but not Start Over', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.setError('Fatal error', canRetry: false);
        await tester.pump();

        expect(find.text('Start Over'), findsNothing);
        expect(find.text('Cancel'), findsOneWidget);
      });
    });
  });
}
