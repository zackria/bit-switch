import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/pairing_provider.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/wifi_detection_service.dart';
import 'package:bit_switch/models/pairing_state.dart';

void main() {
  group('PairingProvider', () {
    test('startPairing sets homeNetworkSsid and currentSsid', () async {
      final wifi = _FakeWifiService(getSsid: () async => 'HomeNet');
      final provider = PairingProvider(wifiService: wifi);

      await provider.startPairing();

      expect(provider.state.homeNetworkSsid, 'HomeNet');
      expect(provider.state.currentSsid, 'HomeNet');
    });

    test('navigation steps next/goTo/previous behave correctly', () {
      final provider = PairingProvider(
        wifiService: _FakeWifiService(),
        controlService: _FakeControlService(),
        discoveryService: _FakeDiscoveryService(),
      );

      expect(provider.state.step, PairingStep.intro);
      provider.nextStep();
      expect(provider.state.step, PairingStep.connectToAp);

      provider.goToStep(PairingStep.selectNetwork);
      expect(provider.state.step, PairingStep.selectNetwork);

      provider.previousStep();
      expect(provider.state.step, PairingStep.discoverDevice);
    });

    test(
      'startConnectToDevice starts SSID watch and updates currentSsid',
      () async {
        final wifi = _FakeWifiService(streamSsid: Stream.value('WeMo.TEST'));
        final provider = PairingProvider(wifiService: wifi);

        await provider.startConnectToDevice();

        // allow stream event
        await Future.delayed(Duration(milliseconds: 50));

        expect(provider.state.step, PairingStep.connectToAp);
        expect(provider.state.currentSsid, 'WeMo.TEST');
      },
    );

    test(
      'confirmConnectedToDeviceAp finds device and fetches networks',
      () async {
        final wifi = _FakeWifiService(getSsid: () async => 'WeMo.AP');
        final device = WemoDevice(
          id: '1',
          name: 'WeMo',
          host: '192.168.1.1',
          port: 80,
          type: WemoDeviceType.wemoSwitch,
        );

        final discovery = _FakeDiscoveryService(probeResult: device);
        final control = _FakeControlService(
          networks: [
            WifiNetwork(
              ssid: 'A',
              channel: 1,
              signalStrength: 10,
              authMode: 'WPAPSK',
              encryption: 'AES',
            ),
            WifiNetwork(
              ssid: 'B',
              channel: 6,
              signalStrength: 50,
              authMode: 'WPAPSK',
              encryption: 'AES',
            ),
          ],
        );

        final provider = PairingProvider(
          wifiService: wifi,
          discoveryService: discovery,
          controlService: control,
        );

        await provider.confirmConnectedToDeviceAp();

        // networks should be fetched and sorted by signalStrength (desc)
        expect(provider.state.device, isNotNull);
        expect(provider.state.step, PairingStep.selectNetwork);
        expect(provider.state.availableNetworks.first.ssid, 'B');
        expect(provider.state.isLoading, false);
      },
    );

    test(
      'confirmConnectedToDeviceAp reports error when no device found',
      () async {
        final wifi = _FakeWifiService(getSsid: () async => 'WeMo.AP');
        final discovery = _FakeDiscoveryService(
          probeResult: null,
          discoverStream: const Stream.empty(),
        );
        final control = _FakeControlService();

        final provider = PairingProvider(
          wifiService: wifi,
          discoveryService: discovery,
          controlService: control,
        );

        await provider.confirmConnectedToDeviceAp();

        expect(provider.state.device, isNull);
        expect(provider.state.errorMessage, isNotNull);
        expect(provider.state.isLoading, false);
      },
    );

    test('setError sets error state and canRetry flag', () {
      final provider = PairingProvider(
        wifiService: _FakeWifiService(),
        controlService: _FakeControlService(),
        discoveryService: _FakeDiscoveryService(),
      );

      provider.setError('boom', canRetry: false);

      expect(provider.state.step, PairingStep.error);
      expect(provider.state.errorMessage, 'boom');
      expect(provider.state.canRetry, false);
    });
  });
}

class _FakeWifiService extends WifiDetectionService {
  final Future<String?> Function()? _getSsid;
  final Stream<String?>? _stream;

  _FakeWifiService({
    Future<String?> Function()? getSsid,
    Stream<String?>? streamSsid,
  }) : _getSsid = getSsid,
       _stream = streamSsid,
       super();

  @override
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    if (_getSsid != null) return _getSsid!();
    return null;
  }

  @override
  Stream<String?> watchSsidChanges({
    Duration interval = const Duration(seconds: 2),
  }) {
    return _stream ?? super.watchSsidChanges(interval: interval);
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
    this.wifiStatus = WifiSetupStatus.connected,
  });

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    return networks;
  }

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
  }) async {
    return;
  }

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return wifiStatus;
  }
}
