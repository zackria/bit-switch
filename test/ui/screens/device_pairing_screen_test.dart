import 'dart:async';

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
  final Future<String?> Function()? getSsid;
  final Stream<String?>? streamSsid;

  _FakeWifiService({this.getSsid, this.streamSsid}) : super();

  @override
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    if (getSsid != null) return getSsid!();
    return null;
  }

  @override
  Stream<String?> watchSsidChanges({
    Duration interval = const Duration(seconds: 2),
  }) {
    return streamSsid ?? const Stream.empty();
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

  _FakeControlService({this.networks = const []});

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
    int encryptionMethod = 1,
  }) async {}

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return WifiSetupStatus.connecting;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

/// Discovery service whose [probeHost] stays pending until [completer] is
/// completed, so tests can observe the intermediate "looking for device"
/// loading state.
class _PendingDiscoveryService extends DeviceDiscoveryService {
  final Completer<WemoDevice?> completer;

  _PendingDiscoveryService(this.completer);

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int>? ports,
    Duration? timeout,
  }) {
    return completer.future;
  }

  @override
  Stream<WemoDevice> discoverDevices({
    Duration? timeout = const Duration(seconds: 2),
    void Function(String)? onDebugLog,
  }) {
    return const Stream.empty();
  }
}

/// Control service whose [getAvailableNetworks] always fails, to exercise the
/// error-alongside-empty-list state on the selectNetwork step.
class _ThrowingControlService extends DeviceControlService {
  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    throw Exception('scan failed');
  }

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
    int encryptionMethod = 1,
  }) async {}

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return WifiSetupStatus.connecting;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

// ---------------------------------------------------------------------------
// Test helpers
// ---------------------------------------------------------------------------

Widget _buildScreen(PairingProvider provider, {TargetPlatform? platform}) =>
    ChangeNotifierProvider<PairingProvider>.value(
      value: provider,
      child: MaterialApp(
        theme: platform != null ? ThemeData(platform: platform) : null,
        home: const DevicePairingScreen(),
      ),
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
  PairingProvider provider, {
  TargetPlatform? platform,
}) async {
  await tester.pumpWidget(_buildScreen(provider, platform: platform));
  await tester.pump(); // trigger postFrameCallback
  await tester.pump(); // allow startPairing() to settle
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Shared device and networks for selectNetwork tests
  const device = WemoDevice(
    id: '1',
    name: 'WeMo Switch',
    host: '10.22.22.1',
    port: 49153,
    type: WemoDeviceType.wemoSwitch,
    macAddress: 'AABBCCDDEEFF',
    serialNumber: '12345',
  );

  final networks = [
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

    testWidgets('Start Pairing button navigates to connectToAp', (
      tester,
    ) async {
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

    testWidgets('keeps Start Pairing above the system navigation area', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(400, 800);
      tester.view.devicePixelRatio = 1;
      tester.view.padding = const FakeViewPadding(bottom: 48);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPadding);

      final provider = _makeProvider();
      await _pumpAndStart(tester, provider);

      final button = find.widgetWithText(FilledButton, 'Start Pairing');
      await tester.ensureVisible(button);
      await tester.pump();

      expect(tester.getBottomRight(button).dy, lessThanOrEqualTo(752));
    });
  });

  group('DevicePairingScreen — intro step iOS setup limitation banner', () {
    testWidgets('shows iOS setup limitation banner on iOS', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider, platform: TargetPlatform.iOS);

        expect(find.textContaining('Wemo Mini'), findsOneWidget);
      });
    });

    testWidgets('hides iOS setup limitation banner on Android', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider, platform: TargetPlatform.android);

        expect(find.textContaining('Wemo Mini'), findsNothing);
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

    testWidgets('shows connected status when isOnWemoAp is true', (
      tester,
    ) async {
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
        await provider
            .confirmConnectedToDeviceAp(); // fast — probe returns null
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

    testWidgets('shows loading indicator while looking for device', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final completer = Completer<WemoDevice?>();
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _FakeControlService(),
          discoveryService: _PendingDiscoveryService(completer),
        );
        await _pumpAndStart(tester, provider);

        // Kick off discovery without awaiting completion so the pending
        // probeHost future keeps the screen in its loading state.
        final future = provider.confirmConnectedToDeviceAp();
        await tester.pump();
        await tester.pump();

        expect(provider.state.step, PairingStep.discoverDevice);
        expect(provider.state.isLoading, isTrue);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.text('Looking for your Wemo device...'), findsOneWidget);

        completer.complete(null);
        await future;
        await tester.pump();
      });
    });

    testWidgets('tapping Try Again invokes retryDiscovery', (tester) async {
      await tester.runAsync(() async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: null),
        );
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.discoverDevice);
        await tester.pump();

        await tester.tap(find.text('Try Again'));
        await tester.pump();
        // retryDiscovery() now looks up the WiFi gateway IP before probing,
        // which is a real (non-fake-clock) platform-channel round trip in
        // this test environment - give it a real tick to resolve before
        // pumping for the resulting rebuild.
        await Future.delayed(const Duration(milliseconds: 50));
        await tester.pump();

        expect(provider.state.step, PairingStep.discoverDevice);
        expect(provider.state.errorMessage, isNotNull);
      });
    });

    testWidgets('tapping Connect to IP invokes tryManualIp', (tester) async {
      await tester.runAsync(() async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: null),
        );
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.discoverDevice);
        await tester.pump();

        await tester.enterText(find.byType(TextField).first, '192.168.1.50');
        await tester.pump();
        // Trigger a Consumer rebuild so the button picks up the new text
        provider.setPassword('');
        await tester.pump();

        await tester.tap(find.text('Connect to IP'));
        await tester.pump();
        await tester.pump();

        expect(provider.state.errorMessage, contains('192.168.1.50'));
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

    testWidgets(
      'offers manual SSID entry so the empty state is not a dead end',
      (tester) async {
        await tester.runAsync(() async {
          final provider = _makeProvider();
          await _pumpAndStart(tester, provider);
          provider.goToStep(PairingStep.selectNetwork);
          await tester.pump();

          final manualEntry = find.text('Enter network manually');
          expect(manualEntry, findsOneWidget);

          await tester.tap(manualEntry);
          await tester.pump();

          // Tapping it reveals a field to type the network name into.
          expect(find.text('Enter network name:'), findsOneWidget);

          // Typing has to enable the confirm button: its enabled state is read
          // from the controller at build time, so without a rebuild on input
          // it stays disabled and the escape hatch is useless.
          await tester.enterText(
            find.widgetWithText(TextField, 'Network Name (SSID)'),
            'AARYAN',
          );
          await tester.pump();

          final useNetwork = find.widgetWithText(
            FilledButton,
            'Use This Network',
          );
          expect(useNetwork, findsOneWidget);
          expect(tester.widget<FilledButton>(useNetwork).onPressed, isNotNull);

          await tester.tap(useNetwork);
          await tester.pump();

          expect(provider.state.selectedSsid, 'AARYAN');
        });
      },
    );

    testWidgets('tapping Scan Again triggers a refresh', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        // No device is set, so refreshNetworks() is a fast no-op, but the
        // button handler still runs and rebuilds without error.
        await tester.tap(find.text('Scan Again'));
        await tester.pump();
        await tester.pump();

        expect(find.text('No networks found'), findsOneWidget);
      });
    });

    testWidgets('shows error message alongside empty network list', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _ThrowingControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: device),
        );
        await _pumpAndStart(tester, provider);
        // confirmConnectedToDeviceAp discovers the device, then
        // _fetchAvailableNetworks fails while fetching networks.
        await provider.confirmConnectedToDeviceAp();
        await tester.pump();

        expect(find.text('No networks found'), findsOneWidget);
        expect(find.textContaining('scan failed'), findsWidgets);
      });
    });
  });

  group('DevicePairingScreen — selectNetwork step interactions', () {
    testWidgets('password field hidden when no network selected', (
      tester,
    ) async {
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

    testWidgets('password entry remains scrollable with the keyboard open', (
      tester,
    ) async {
      tester.view.physicalSize = const Size(400, 800);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetViewInsets);

      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider);
        provider.goToStep(PairingStep.selectNetwork);
        provider.selectNetwork('HomeNet');
        await tester.pump();

        await tester.showKeyboard(
          find.widgetWithText(TextField, 'WiFi Password'),
        );
        tester.view.viewInsets = const FakeViewPadding(bottom: 300);
        await tester.pump();

        expect(
          MediaQuery.of(
            tester.element(find.byType(Scaffold)),
          ).viewInsets.bottom,
          300,
        );
        expect(find.text('HomeNet'), findsOneWidget);
        expect(find.text('WiFi Password'), findsOneWidget);
        expect(find.byType(ListView), findsWidgets);
        expect(tester.takeException(), isNull);
      });
    });

    testWidgets(
      'network list, manual entry, Use This Network (needs discovery)',
      (tester) async {
        await tester.runAsync(() async {
          final provider = _makeProvider(
            probeResult: device,
            networks: networks,
          );
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
      },
    );

    testWidgets(
      'Connect button enabled and tapping it invokes configureNetwork',
      (tester) async {
        await tester.runAsync(() async {
          final provider = _makeProvider();
          await _pumpAndStart(tester, provider);
          provider.goToStep(PairingStep.selectNetwork);
          provider.selectNetwork('HomeNet');
          provider.setPassword('secret');
          await tester.pump();

          final button = tester.widget<FilledButton>(
            find.ancestor(
              of: find.text('Connect'),
              matching: find.byType(FilledButton),
            ),
          );
          expect(button.onPressed, isNotNull);

          await tester.tap(find.text('Connect'));
          await tester.pump();

          // No device was ever discovered, so configureNetwork() takes its
          // early-return error path instead of trying to contact a device.
          expect(
            provider.state.errorMessage,
            'Please select a network and enter the password.',
          );
        });
      },
    );

    testWidgets('shows loading indicator while fetching available networks', (
      tester,
    ) async {
      await tester.runAsync(() async {
        final provider = _makeProvider(probeResult: device, networks: networks);
        await _pumpAndStart(tester, provider);

        // confirmConnectedToDeviceAp discovers the device almost immediately,
        // then _fetchAvailableNetworks waits a real 2s before resolving —
        // giving us a window to observe the "fetching networks" loading state.
        final future = provider.confirmConnectedToDeviceAp();
        await Future.delayed(const Duration(milliseconds: 50));
        await tester.pump();

        expect(provider.state.step, PairingStep.selectNetwork);
        expect(provider.state.isLoading, isTrue);
        expect(provider.state.availableNetworks, isEmpty);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);

        await future;
        await tester.pump();
      });
    });
  });

  group('DevicePairingScreen — selectNetwork iOS banner', () {
    testWidgets('shows iOS scan limitation banner on iOS', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider, platform: TargetPlatform.iOS);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        expect(find.textContaining('iOS strictly prohibits'), findsOneWidget);
      });
    });

    testWidgets('hides iOS scan limitation banner on Android', (tester) async {
      await tester.runAsync(() async {
        final provider = _makeProvider();
        await _pumpAndStart(tester, provider, platform: TargetPlatform.android);
        provider.goToStep(PairingStep.selectNetwork);
        await tester.pump();

        expect(find.textContaining('iOS strictly prohibits'), findsNothing);
      });
    });
  });

  group('DevicePairingScreen — configuring step', () {
    testWidgets('shows CircularProgressIndicator and loading text', (
      tester,
    ) async {
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

    testWidgets(
      'shows device info card with connected SSID when device is set',
      (tester) async {
        await tester.runAsync(() async {
          final provider = _makeProvider(
            probeResult: device,
            networks: networks,
          );
          await _pumpAndStart(tester, provider);
          await provider.confirmConnectedToDeviceAp();
          provider.selectNetwork('Network A');
          provider.goToStep(PairingStep.success);
          await tester.pump();

          expect(find.text('WeMo Switch'), findsOneWidget);
          expect(find.text('Connected to Network A'), findsOneWidget);
          expect(find.byIcon(Icons.check_circle), findsOneWidget);
        });
      },
    );
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

    testWidgets('Cancel button pops route and resets provider to intro', (
      tester,
    ) async {
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

        provider.setError('Fatal error', canRetry: false);
        await tester.pump();

        await tester.tap(find.text('Cancel'));
        await tester.pumpAndSettle();

        expect(find.text('Open'), findsOneWidget);
        expect(provider.state.step, PairingStep.intro);
      });
    });
  });
}
