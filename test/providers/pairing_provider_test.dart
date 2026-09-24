import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/pairing_provider.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/services/wifi_detection_service.dart';
import 'package:bit_switch/models/pairing_state.dart';
import 'package:bit_switch/core/constants.dart';

void main() {
  group('PairingProvider', () {
    test('startPairing sets homeNetworkSsid and currentSsid', () async {
      final wifi = _FakeWifiService(getSsid: () async => 'HomeNet');
      final provider = PairingProvider(wifiService: wifi);

      await provider.startPairing();

      expect(provider.state.homeNetworkSsid, 'HomeNet');
      expect(provider.state.currentSsid, 'HomeNet');
    });

    test(
      'startPairing does not record the device AP as homeNetworkSsid when '
      'a previous attempt left the phone already connected to it',
      () async {
        final wifi = _FakeWifiService(
          getSsid: () async => 'Wemo.Mini.61C',
        );
        final provider = PairingProvider(wifiService: wifi);

        await provider.startPairing();

        expect(provider.state.homeNetworkSsid, isNull);
        expect(provider.state.currentSsid, 'Wemo.Mini.61C');
      },
    );

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

    group('additional coverage', () {
      final _device = WemoDevice(
        id: '1',
        name: 'WeMo',
        host: '10.22.22.1',
        port: 49153,
        type: WemoDeviceType.wemoSwitch,
        macAddress: 'AABBCCDDEEFF',
        serialNumber: '12345',
      );

      test('reset() returns to intro with no loading/error', () {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        provider.setError('oops');
        provider.reset();

        expect(provider.state.step, PairingStep.intro);
        expect(provider.state.isLoading, false);
        expect(provider.state.errorMessage, isNull);
      });

      test('retryDiscovery sets loading and then sets error when no device found', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: null),
        );

        await provider.retryDiscovery();

        expect(provider.state.isLoading, false);
        expect(provider.state.errorMessage, isNotNull);
      });

      test(
        'retryDiscovery probes the WiFi gateway IP first and finds the '
        'device there without trying the default IP',
        () async {
          final deviceAtGateway = _device.copyWith(host: '10.22.22.5');
          final discovery = _HostAwareDiscoveryService({
            '10.22.22.5': deviceAtGateway,
          });
          final provider = PairingProvider(
            wifiService: _FakeWifiService(
              getGatewayIp: () async => '10.22.22.5',
            ),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.retryDiscovery();

          expect(discovery.probedHosts, ['10.22.22.5']);
          expect(provider.state.device?.host, '10.22.22.5');
        },
      );

      test(
        'retryDiscovery falls back to the default AP IP when the gateway '
        "IP doesn't respond (e.g. a Wemo model with a different default)",
        () async {
          final discovery = _HostAwareDiscoveryService({
            '10.22.22.1': _device,
          });
          final provider = PairingProvider(
            wifiService: _FakeWifiService(
              getGatewayIp: () async => '10.22.22.5',
            ),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.retryDiscovery();

          expect(discovery.probedHosts, ['10.22.22.5', '10.22.22.1']);
          expect(provider.state.device?.host, '10.22.22.1');
        },
      );

      test(
        'retryDiscovery derives the AP gateway from our own lease when the '
        'OS reports no gateway IP',
        () async {
          final deviceOnApSubnet = _device.copyWith(host: '192.168.4.1');
          final discovery = _HostAwareDiscoveryService({
            '192.168.4.1': deviceOnApSubnet,
          });
          final provider = PairingProvider(
            // No gateway from the OS - the DhcpInfo API behind it returns
            // null on many Android builds.
            wifiService: _FakeWifiService(interfaceIp: '192.168.4.37'),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.retryDiscovery();

          // Only the derived address is probed: it's tried ahead of the
          // hardcoded default and answers, so the default is never needed.
          expect(discovery.probedHosts, ['192.168.4.1']);
          expect(provider.state.device?.host, '192.168.4.1');
        },
      );

      test(
        'retryDiscovery sweeps the AP subnet when the device answers on '
        "neither the guessable addresses nor the hardcoded default",
        () async {
          final deviceOffGateway = _device.copyWith(host: '10.22.22.57');
          final discovery = _HostAwareDiscoveryService({
            '10.22.22.57': deviceOffGateway,
          });
          final provider = PairingProvider(
            wifiService: _FakeWifiService(interfaceIp: '10.22.22.122'),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.retryDiscovery();

          expect(provider.state.device?.host, '10.22.22.57');
          expect(provider.state.step, PairingStep.selectNetwork);
          // The guessable address is still tried first; the sweep is the
          // fallback, not the first resort.
          expect(discovery.probedHosts.first, '10.22.22.1');
        },
      );

      test('subnet sweep covers the port a Mini was seen serving (49154)', () async {
        final discovery = _HostAwareDiscoveryService({});
        final provider = PairingProvider(
          wifiService: _FakeWifiService(interfaceIp: '10.22.22.122'),
          controlService: _FakeControlService(),
          discoveryService: discovery,
        );

        await provider.retryDiscovery();

        // The direct candidate probe uses the full port list; the sweep uses
        // a trimmed one, which must still include the port the device was
        // actually found on in the field.
        final sweepPorts = discovery.probedPorts
            .where((ports) => ports != null && ports.length < 9)
            .toList();
        expect(sweepPorts, isNotEmpty);
        expect(sweepPorts.first, contains(49154));
      });

      test(
        'falls back to SSDP on the setup AP when no address answers',
        () async {
          final deviceViaSsdp = _device.copyWith(host: '10.22.22.1', port: 49154);
          final discovery = _HostAwareDiscoveryService(
            {},
            ssdpStream: Stream.value(deviceViaSsdp),
          );
          final provider = PairingProvider(
            wifiService: _FakeWifiService(
              getSsid: () async => 'Wemo.Mini.61C',
              interfaceIp: '10.22.22.122',
            ),
            // Non-empty so the AP-list fetch doesn't sit through its
            // empty-result retry delay.
            controlService: _FakeControlService(
              networks: [
                WifiNetwork(
                  ssid: 'AARYAN',
                  channel: 6,
                  signalStrength: 70,
                  authMode: 'WPAPSK',
                  encryption: 'AES',
                ),
              ],
            ),
            discoveryService: discovery,
          );

          await provider.confirmConnectedToDeviceAp();

          expect(provider.state.device?.port, 49154);
          expect(provider.state.step, PairingStep.selectNetwork);
        },
      );

      test(
        "doesn't fall back to SSDP unless the phone is on a Wemo AP SSID",
        () async {
          final strayDevice = _device.copyWith(host: '192.168.1.50');
          final discovery = _HostAwareDiscoveryService(
            {},
            ssdpStream: Stream.value(strayDevice),
          );
          final provider = PairingProvider(
            // A home-network SSID: SSDP here would happily return an
            // already-paired device and we'd reconfigure the wrong one.
            wifiService: _FakeWifiService(
              getSsid: () async => 'AARYAN',
              interfaceIp: '192.168.1.22',
            ),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.confirmConnectedToDeviceAp();

          expect(provider.state.device, isNull);
          expect(provider.state.errorMessage, isNotNull);
        },
      );

      test('retryDiscovery reports failure when even the sweep finds nothing', () async {
        final discovery = _HostAwareDiscoveryService({});
        final provider = PairingProvider(
          wifiService: _FakeWifiService(interfaceIp: '10.22.22.122'),
          controlService: _FakeControlService(),
          discoveryService: discovery,
        );

        await provider.retryDiscovery();

        expect(provider.state.device, isNull);
        expect(provider.state.errorMessage, isNotNull);
        expect(provider.state.isLoading, isFalse);
        // The whole /24 was swept before giving up...
        expect(discovery.probedHosts, contains('10.22.22.254'));
        // ...except our own address, which is pointless to probe.
        expect(discovery.probedHosts, isNot(contains('10.22.22.122')));
      });

      test(
        'retryDiscovery probes the device AP with the extended pairing '
        'timeout, not the general-purpose default',
        () async {
          final discovery = _HostAwareDiscoveryService({
            '10.22.22.1': _device,
          });
          final provider = PairingProvider(
            wifiService: _FakeWifiService(),
            controlService: _FakeControlService(),
            discoveryService: discovery,
          );

          await provider.retryDiscovery();

          expect(
            discovery.probedTimeouts,
            everyElement(WemoConstants.pairingApProbeTimeout),
          );
        },
      );

      test('tryManualIp device not found sets error containing ip', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(probeResult: null),
        );

        await provider.tryManualIp('10.22.22.5');

        expect(provider.state.errorMessage, contains('10.22.22.5'));
        expect(provider.state.isLoading, false);
      });

      test('selectNetwork sets selectedSsid', () {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        provider.selectNetwork('MySSID');

        expect(provider.state.selectedSsid, 'MySSID');
      });

      test('setPassword updates password in state', () {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        provider.setPassword('secret');

        expect(provider.state.password, 'secret');
      });

      test('configureNetwork with missing fields sets errorMessage', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        await provider.configureNetwork();

        expect(provider.state.errorMessage, contains('Please select'));
      });

      test('configureNetwork with WifiSetupStatus.connected moves to reconnectHome', () async {
        final control = _FakeControlService(
          networks: [
            WifiNetwork(
              ssid: 'HomeNet',
              channel: 6,
              signalStrength: 80,
              authMode: 'WPAPSK',
              encryption: 'AES',
            ),
          ],
          wifiStatus: WifiSetupStatus.connected,
        );
        final discovery = _FakeDiscoveryService(probeResult: _device);
        final wifi = _FakeWifiService(getSsid: () async => null);

        final provider = PairingProvider(
          wifiService: wifi,
          controlService: control,
          discoveryService: discovery,
        );

        await provider.confirmConnectedToDeviceAp();
        provider.selectNetwork('HomeNet');
        provider.setPassword('password123');

        await provider.configureNetwork();

        expect(provider.state.step, PairingStep.reconnectHome);
      });

      test('configureNetwork with WifiSetupStatus.passwordShort sets error', () async {
        final control = _FakeControlService(
          networks: [
            WifiNetwork(
              ssid: 'HomeNet',
              channel: 6,
              signalStrength: 80,
              authMode: 'WPAPSK',
              encryption: 'AES',
            ),
          ],
          wifiStatus: WifiSetupStatus.passwordShort,
        );
        final discovery = _FakeDiscoveryService(probeResult: _device);
        final wifi = _FakeWifiService(getSsid: () async => null);

        final provider = PairingProvider(
          wifiService: wifi,
          controlService: control,
          discoveryService: discovery,
        );

        await provider.confirmConnectedToDeviceAp();
        provider.selectNetwork('HomeNet');
        provider.setPassword('pw');

        await provider.configureNetwork();

        expect(provider.state.step, PairingStep.selectNetwork);
        expect(provider.state.errorMessage, contains('short'));
      });

      test('configureNetwork with WifiSetupStatus.failed sets error', () async {
        final control = _FakeControlService(
          networks: [
            WifiNetwork(
              ssid: 'HomeNet',
              channel: 6,
              signalStrength: 80,
              authMode: 'WPAPSK',
              encryption: 'AES',
            ),
          ],
          wifiStatus: WifiSetupStatus.failed,
        );
        final discovery = _FakeDiscoveryService(probeResult: _device);
        final wifi = _FakeWifiService(getSsid: () async => null);

        final provider = PairingProvider(
          wifiService: wifi,
          controlService: control,
          discoveryService: discovery,
        );

        await provider.confirmConnectedToDeviceAp();
        provider.selectNetwork('HomeNet');
        provider.setPassword('wrongpass');

        await provider.configureNetwork();

        expect(provider.state.step, PairingStep.selectNetwork);
        expect(provider.state.errorMessage, contains('Failed'));
      });

      test('confirmReconnectedToHome moves to success', () async {
        final discovery = _FakeDiscoveryService(
          probeResult: _device,
          discoverStream: Stream.value(_device),
        );
        final control = _FakeControlService();
        final wifi = _FakeWifiService(getSsid: () async => null);

        final provider = PairingProvider(
          wifiService: wifi,
          controlService: control,
          discoveryService: discovery,
        );

        await provider.confirmConnectedToDeviceAp();
        provider.goToStep(PairingStep.reconnectHome);

        await provider.confirmReconnectedToHome();

        expect(provider.state.step, PairingStep.success);
      });

      test('_finalizeSetup with empty stream still reaches success', () async {
        final discovery = _FakeDiscoveryService(
          probeResult: _device,
          discoverStream: const Stream.empty(),
        );
        final wifi = _FakeWifiService(getSsid: () async => null);

        final provider = PairingProvider(
          wifiService: wifi,
          controlService: _FakeControlService(),
          discoveryService: discovery,
        );

        await provider.confirmConnectedToDeviceAp();
        provider.goToStep(PairingStep.reconnectHome);
        await provider.confirmReconnectedToHome();

        expect(provider.state.step, PairingStep.success);
      });

      test('dispose does not throw', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        expect(() => provider.dispose(), returnsNormally);
      });

      test('openWifiSettings handles platform failure and sets error', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _FakeDiscoveryService(),
        );

        await provider.openWifiSettings();

        expect(
          provider.state.errorMessage,
          contains('Could not open WiFi settings'),
        );
      });

      test(
        'confirmConnectedToDeviceAp aborts when still on home network',
        () async {
          final wifi = _FakeWifiService(getSsid: () async => 'HomeNet');
          final provider = PairingProvider(
            wifiService: wifi,
            controlService: _FakeControlService(),
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.startPairing();
          await provider.confirmConnectedToDeviceAp();

          expect(provider.state.step, PairingStep.intro);
          expect(provider.state.errorMessage, contains('still connected'));
          expect(provider.state.isLoading, false);
        },
      );

      test('confirmConnectedToDeviceAp reports exception from probe', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
          controlService: _FakeControlService(),
          discoveryService: _ThrowingDiscoveryService(),
        );

        await provider.confirmConnectedToDeviceAp();

        expect(provider.state.errorMessage, contains('Error discovering device'));
        expect(provider.state.isLoading, false);
      });

      test('tryManualIp reports exception path', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(),
          controlService: _FakeControlService(),
          discoveryService: _ThrowingDiscoveryService(),
        );

        await provider.tryManualIp('10.0.0.10');

        expect(provider.state.errorMessage, contains('Error connecting to 10.0.0.10'));
      });

      test(
        'confirmConnectedToDeviceAp retries network fetch when first scan is empty',
        () async {
          final control = _SequencedControlService(
            sequences: [
              const [],
              [
                WifiNetwork(
                  ssid: 'StrongNet',
                  channel: 11,
                  signalStrength: 90,
                  authMode: 'WPAPSK',
                  encryption: 'AES',
                ),
              ],
            ],
          );
          final provider = PairingProvider(
            wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
            controlService: control,
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.confirmConnectedToDeviceAp();

          expect(control.getAvailableNetworksCalls, 2);
          expect(provider.state.availableNetworks, isNotEmpty);
          expect(provider.state.availableNetworks.first.ssid, 'StrongNet');
        },
      );

      test(
        'confirmConnectedToDeviceAp sets error when getAvailableNetworks throws',
        () async {
          final provider = PairingProvider(
            wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
            controlService: _ThrowingControlService(),
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.confirmConnectedToDeviceAp();

          expect(provider.state.errorMessage, contains('Could not scan networks'));
          expect(provider.state.isLoading, false);
        },
      );

      test('configureNetwork handles connectToHomeNetwork throw', () async {
        final control = _ThrowingConnectControlService();
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
          controlService: control,
          discoveryService: _FakeDiscoveryService(probeResult: _device),
        );

        await provider.confirmConnectedToDeviceAp();
        provider.selectNetwork('HomeNet');
        provider.setPassword('password123');
        await provider.configureNetwork();

        expect(provider.state.step, PairingStep.selectNetwork);
        expect(provider.state.errorMessage, contains('Failed to configure'));
      });

      test(
        'configureNetwork retries with the next password encryption scheme '
        'when the device rejects the credentials',
        () async {
          // Firmware that only accepts method 2 (the RTOS scheme a Mini
          // uses). Method 1 produces valid-looking but undecryptable
          // ciphertext, which the device reports as a rejection.
          final control = _EncryptionAwareControlService(acceptsMethod: 2);
          final provider = PairingProvider(
            wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
            controlService: control,
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.confirmConnectedToDeviceAp();
          provider.selectNetwork('HomeNet');
          provider.setPassword('correct-horse');
          await provider.configureNetwork();

          expect(control.attemptedMethods, [1, 2]);
          expect(provider.state.step, PairingStep.reconnectHome);
          expect(provider.state.errorMessage, isNull);
        },
      );

      test(
        'configureNetwork reports a bad password once every scheme is '
        'rejected',
        () async {
          // acceptsMethod: 0 matches nothing, i.e. the password really is wrong.
          final control = _EncryptionAwareControlService(acceptsMethod: 0);
          final provider = PairingProvider(
            wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
            controlService: control,
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.confirmConnectedToDeviceAp();
          provider.selectNetwork('HomeNet');
          provider.setPassword('wrong');
          await provider.configureNetwork();

          expect(control.attemptedMethods, [1, 2, 3]);
          expect(provider.state.step, PairingStep.selectNetwork);
          expect(provider.state.errorMessage, isNotNull);
        },
      );

      test(
        'configureNetwork keeps polling through transient status failures '
        'instead of blaming the password',
        () async {
          // The device drops calls while it switches networks; that must not
          // be read as "credentials rejected".
          final control = _FlakyStatusControlService(failuresBeforeSuccess: 2);
          final provider = PairingProvider(
            wifiService: _FakeWifiService(getSsid: () async => 'WeMo.AP'),
            controlService: control,
            discoveryService: _FakeDiscoveryService(probeResult: _device),
          );

          await provider.confirmConnectedToDeviceAp();
          provider.selectNetwork('HomeNet');
          provider.setPassword('correct-horse');
          await provider.configureNetwork();

          expect(provider.state.step, PairingStep.reconnectHome);
          expect(provider.state.errorMessage, isNull);
          // One scheme was enough - the blips didn't trigger a retry.
          expect(control.connectCalls.toSet(), {1});
        },
      );

      test('finalize setup handles discovery stream error', () async {
        final provider = PairingProvider(
          wifiService: _FakeWifiService(getSsid: () async => null),
          controlService: _FakeControlService(),
          discoveryService: _ErrorStreamDiscoveryService(),
        );

        provider.goToStep(PairingStep.reconnectHome);
        await provider.confirmReconnectedToHome();

        expect(provider.state.step, PairingStep.error);
        expect(provider.state.errorMessage, contains('Error finalizing setup'));
      });
    });
  });
}

/// Control service standing in for firmware that only accepts one password
/// encryption scheme, recording which schemes were tried.
class _EncryptionAwareControlService extends DeviceControlService {
  final int acceptsMethod;
  final List<int> attemptedMethods = [];
  int? _lastMethod;

  _EncryptionAwareControlService({required this.acceptsMethod});

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async => [];

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
    int encryptionMethod = 1,
  }) async {
    // Credentials are sent twice per attempt; record each distinct scheme.
    if (_lastMethod != encryptionMethod) attemptedMethods.add(encryptionMethod);
    _lastMethod = encryptionMethod;
  }

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return _lastMethod == acceptsMethod
        ? WifiSetupStatus.connected
        : WifiSetupStatus.failed;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

/// Control service whose status calls throw a few times before reporting
/// success, mimicking the device dropping calls as it changes networks.
class _FlakyStatusControlService extends DeviceControlService {
  final int failuresBeforeSuccess;
  final List<int> connectCalls = [];
  int _statusCalls = 0;

  _FlakyStatusControlService({required this.failuresBeforeSuccess});

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async => [];

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
    int encryptionMethod = 1,
  }) async {
    connectCalls.add(encryptionMethod);
  }

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    if (_statusCalls++ < failuresBeforeSuccess) {
      throw Exception('device unreachable while switching networks');
    }
    return WifiSetupStatus.connected;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

class _FakeWifiService extends WifiDetectionService {
  final Future<String?> Function()? _getSsid;
  final Future<String?> Function()? _getGatewayIp;
  final String? _interfaceIp;
  final Stream<String?>? _stream;

  _FakeWifiService({
    Future<String?> Function()? getSsid,
    Future<String?> Function()? getGatewayIp,
    String? interfaceIp,
    Stream<String?>? streamSsid,
  }) : _getSsid = getSsid,
       _getGatewayIp = getGatewayIp,
       _interfaceIp = interfaceIp,
       _stream = streamSsid,
       super();

  @override
  Future<String?> getCurrentSsid({bool requestPermission = true}) async {
    if (_getSsid != null) return _getSsid();
    return null;
  }

  @override
  Future<String?> getWifiGatewayIP() async {
    if (_getGatewayIp != null) return _getGatewayIp();
    return null;
  }

  /// Defaults to null so tests that don't care about the subnet sweep never
  /// touch the host machine's real interfaces (and never sweep 254 hosts).
  @override
  Future<String?> getWifiInterfaceIp() async => _interfaceIp;

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

/// Discovery service whose [probeHost] returns a different (or no) result
/// per host, and records every host probed, to verify the multi-IP
/// candidate fallback in [PairingProvider._buildApProbeCandidates].
class _HostAwareDiscoveryService extends DeviceDiscoveryService {
  final Map<String, WemoDevice> resultsByHost;
  final Stream<WemoDevice>? ssdpStream;
  final List<String> probedHosts = [];
  final List<Duration?> probedTimeouts = [];
  final List<List<int>?> probedPorts = [];

  _HostAwareDiscoveryService(this.resultsByHost, {this.ssdpStream});

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int>? ports,
    Duration? timeout,
  }) async {
    probedHosts.add(host);
    probedTimeouts.add(timeout);
    probedPorts.add(ports);
    return resultsByHost[host];
  }

  /// Stubbed so the SSDP fallback never reaches the real multicast client.
  @override
  Stream<WemoDevice> discoverDevices({
    Duration? timeout = const Duration(seconds: 2),
    void Function(String)? onDebugLog,
  }) {
    return ssdpStream ?? const Stream.empty();
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
    int encryptionMethod = 1,
  }) async {
    return;
  }

  @override
  Future<WifiSetupStatus> getWifiStatus(WemoDevice device) async {
    return wifiStatus;
  }

  @override
  Future<void> setSetupDoneStatus(WemoDevice device) async {}

  @override
  Future<void> closeSetup(WemoDevice device) async {}
}

class _ThrowingDiscoveryService extends DeviceDiscoveryService {
  _ThrowingDiscoveryService();

  @override
  Future<WemoDevice?> probeHost(
    String host, {
    List<int>? ports,
    Duration? timeout,
  }) async {
    throw Exception('probe failed');
  }
}

class _ErrorStreamDiscoveryService extends DeviceDiscoveryService {
  _ErrorStreamDiscoveryService();

  @override
  Stream<WemoDevice> discoverDevices({
    Duration? timeout = const Duration(seconds: 2),
    void Function(String)? onDebugLog,
  }) async* {
    throw Exception('stream failed');
  }
}

class _SequencedControlService extends DeviceControlService {
  final List<List<WifiNetwork>> sequences;
  int getAvailableNetworksCalls = 0;

  _SequencedControlService({required this.sequences});

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    final idx = getAvailableNetworksCalls++;
    if (idx < sequences.length) {
      return List<WifiNetwork>.from(sequences[idx]);
    }
    return const [];
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
    return WifiSetupStatus.connected;
  }
}

class _ThrowingControlService extends DeviceControlService {
  _ThrowingControlService();

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    throw Exception('scan failed');
  }
}

class _ThrowingConnectControlService extends DeviceControlService {
  _ThrowingConnectControlService();

  @override
  Future<List<WifiNetwork>> getAvailableNetworks(WemoDevice device) async {
    return [
      WifiNetwork(
        ssid: 'HomeNet',
        channel: 1,
        signalStrength: 60,
        authMode: 'WPAPSK',
        encryption: 'AES',
      ),
    ];
  }

  @override
  Future<void> connectToHomeNetwork(
    WemoDevice device, {
    required String ssid,
    required String password,
    String authMode = 'WPAPSK',
    String encryption = 'AES',
    int encryptionMethod = 1,
  }) async {
    throw Exception('connect failed');
  }
}
