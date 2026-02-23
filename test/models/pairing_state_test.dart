import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/models/pairing_state.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/services/device_control_service.dart';

void _firstMain() {
  group('PairingStep extension', () {
    test('title mapping and stepNumber', () {
      expect(PairingStep.intro.title, 'Get Started');
      expect(PairingStep.connectToAp.title, 'Connect to Device');
      expect(PairingStep.discoverDevice.title, 'Find Device');
      expect(PairingStep.selectNetwork.title, 'Select Network');
      expect(PairingStep.configuring.title, 'Configuring');
      expect(PairingStep.reconnectHome.title, 'Reconnect');
      expect(PairingStep.finalize.title, 'Finalizing');
      expect(PairingStep.success.title, 'Success');
      expect(PairingStep.error.title, 'Error');

      expect(PairingStep.intro.stepNumber, 1);
      expect(PairingStep.connectToAp.stepNumber, 2);
      expect(PairingStep.discoverDevice.stepNumber, 3);
      expect(PairingStep.selectNetwork.stepNumber, 4);
      expect(PairingStep.configuring.stepNumber, 5);
      expect(PairingStep.reconnectHome.stepNumber, 6);
      // finalize, success, error map to 7
      expect(PairingStep.finalize.stepNumber, 7);
      expect(PairingStep.success.stepNumber, 7);
      expect(PairingStep.error.stepNumber, 7);

      expect(PairingStepExtension.totalSteps, 7);
    });
  });

  group('PairingState', () {
    final wifiList = [
      WifiNetwork(ssid: 'A', channel: 1, signalStrength: 10, authMode: 'WPA', encryption: 'AES'),
    ];

    test('initial state and copyWith basics', () {
      final initial = PairingState.initial();
      expect(initial.step, PairingStep.intro);
      expect(initial.currentSsid, isNull);
      expect(initial.availableNetworks, isEmpty);

      final modified = initial.copyWith(
        step: PairingStep.connectToAp,
        currentSsid: 'WeMo.ABC',
        homeNetworkSsid: 'HomeNet',
        availableNetworks: wifiList,
        selectedSsid: 'A',
        password: 'p',
        isLoading: true,
        loadingMessage: 'Loading',
        errorMessage: 'Err',
        canRetry: false,
      );

      expect(modified.step, PairingStep.connectToAp);
      expect(modified.currentSsid, 'WeMo.ABC');
      expect(modified.homeNetworkSsid, 'HomeNet');
      expect(modified.availableNetworks, wifiList);
      expect(modified.selectedSsid, 'A');
      expect(modified.password, 'p');
      expect(modified.isLoading, true);
      expect(modified.loadingMessage, 'Loading');
      expect(modified.errorMessage, 'Err');
      expect(modified.canRetry, false);
    });

    test('copyWith clear flags remove values', () {
      final s = PairingState(
        currentSsid: 'WeMo.X',
        homeNetworkSsid: 'Home',
        device: const WemoDevice(
          id: 'id',
          name: 'D',
          host: '1.2.3.4',
          port: 80,
          type: WemoDeviceType.wemoSwitch,
        ),
        selectedSsid: 'A',
        password: 'p',
        loadingMessage: 'L',
        errorMessage: 'E',
      );

      final cleared = s.copyWith(
        clearCurrentSsid: true,
        clearHomeNetworkSsid: true,
        clearDevice: true,
        clearSelectedSsid: true,
        clearPassword: true,
        clearLoadingMessage: true,
        clearErrorMessage: true,
      );

      expect(cleared.currentSsid, isNull);
      expect(cleared.homeNetworkSsid, isNull);
      expect(cleared.device, isNull);
      expect(cleared.selectedSsid, isNull);
      expect(cleared.password, isNull);
      expect(cleared.loadingMessage, isNull);
      expect(cleared.errorMessage, isNull);
    });

    test('isOnWemoAp and isOnHomeNetwork flags', () {
      final s1 = PairingState(currentSsid: 'WeMo.123');
      expect(s1.isOnWemoAp, isTrue);
      expect(s1.isOnHomeNetwork, isFalse);

      final s2 = PairingState(currentSsid: 'Home', homeNetworkSsid: 'Home');
      expect(s2.isOnWemoAp, isFalse);
      expect(s2.isOnHomeNetwork, isTrue);

      final s3 = PairingState();
      expect(s3.isOnWemoAp, isFalse);
      expect(s3.isOnHomeNetwork, isFalse);
    });

    test('equality and hashCode consider fields and list identity', () {
      final list = [
        WifiNetwork(ssid: 'X', channel: 1, signalStrength: 1, authMode: 'WPA', encryption: 'AES')
      ];

      final a = PairingState(availableNetworks: list, currentSsid: 'S');
      final b = PairingState(availableNetworks: list, currentSsid: 'S');
      // same list instance -> should be equal
      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));

      // different list instance with same contents is not equal because WifiNetwork has no equality
      final c = PairingState(availableNetworks: [list.first], currentSsid: 'S');
      expect(a == c, isFalse);
    });

    test('toString contains step and device name when present', () {
      final d = PairingState(device: const WemoDevice(id: '1', name: 'Dev', host: 'x', port: 1, type: WemoDeviceType.wemoSwitch));
      final s = d.toString();
      expect(s, contains('PairingState'));
      expect(s, contains('Dev'));
    });
  });
}
void main() {
  group('PairingStep', () {
    test('title should return correct titles', () {
      expect(PairingStep.intro.title, 'Get Started');
      expect(PairingStep.connectToAp.title, 'Connect to Device');
      expect(PairingStep.discoverDevice.title, 'Find Device');
      expect(PairingStep.selectNetwork.title, 'Select Network');
      expect(PairingStep.configuring.title, 'Configuring');
      expect(PairingStep.reconnectHome.title, 'Reconnect');
      expect(PairingStep.finalize.title, 'Finalizing');
      expect(PairingStep.success.title, 'Success');
      expect(PairingStep.error.title, 'Error');
    });

    test('stepNumber should return correct step numbers', () {
      expect(PairingStep.intro.stepNumber, 1);
      expect(PairingStep.connectToAp.stepNumber, 2);
      expect(PairingStep.discoverDevice.stepNumber, 3);
      expect(PairingStep.selectNetwork.stepNumber, 4);
      expect(PairingStep.configuring.stepNumber, 5);
      expect(PairingStep.reconnectHome.stepNumber, 6);
      expect(PairingStep.finalize.stepNumber, 7);
      expect(PairingStep.success.stepNumber, 7);
      expect(PairingStep.error.stepNumber, 7);
    });

    test('totalSteps should be 7', () {
      expect(PairingStepExtension.totalSteps, 7);
    });
  });

  group('PairingState', () {
    test('initial factory should create default state', () {
      final state = PairingState.initial();

      expect(state.step, PairingStep.intro);
      expect(state.currentSsid, isNull);
      expect(state.homeNetworkSsid, isNull);
      expect(state.device, isNull);
      expect(state.availableNetworks, isEmpty);
      expect(state.selectedSsid, isNull);
      expect(state.password, isNull);
      expect(state.isLoading, false);
      expect(state.loadingMessage, isNull);
      expect(state.errorMessage, isNull);
      expect(state.canRetry, true);
    });

    test('copyWith should update specified fields', () {
      final state = PairingState.initial();
      final updated = state.copyWith(
        step: PairingStep.connectToAp,
        currentSsid: 'WeMo.ABC123',
        isLoading: true,
      );

      expect(updated.step, PairingStep.connectToAp);
      expect(updated.currentSsid, 'WeMo.ABC123');
      expect(updated.isLoading, true);
      // Unchanged fields
      expect(updated.device, isNull);
      expect(updated.password, isNull);
    });

    test('copyWith clear flags should null out fields', () {
      final state = PairingState.initial().copyWith(
        currentSsid: 'TestNetwork',
        errorMessage: 'Some error',
        device: const WemoDevice(
          id: 'test',
          name: 'Test',
          host: '10.22.22.1',
          port: 49152,
          type: WemoDeviceType.wemoSwitch,
        ),
      );

      final cleared = state.copyWith(
        clearCurrentSsid: true,
        clearErrorMessage: true,
        clearDevice: true,
      );

      expect(cleared.currentSsid, isNull);
      expect(cleared.errorMessage, isNull);
      expect(cleared.device, isNull);
    });

    test('isOnWemoAp should detect Wemo AP networks', () {
      final state1 = PairingState.initial().copyWith(currentSsid: 'WeMo.ABC123');
      expect(state1.isOnWemoAp, true);

      final state2 = PairingState.initial().copyWith(currentSsid: 'WeMo.XYZ');
      expect(state2.isOnWemoAp, true);

      final state3 = PairingState.initial().copyWith(currentSsid: 'HomeNetwork');
      expect(state3.isOnWemoAp, false);

      final state4 = PairingState.initial().copyWith(currentSsid: 'WeMo'); // No suffix
      expect(state4.isOnWemoAp, false);

      final state5 = PairingState.initial(); // null SSID
      expect(state5.isOnWemoAp, false);
    });

    test('isOnHomeNetwork should detect home network', () {
      final state1 = PairingState.initial().copyWith(
        currentSsid: 'HomeNetwork',
        homeNetworkSsid: 'HomeNetwork',
      );
      expect(state1.isOnHomeNetwork, true);

      final state2 = PairingState.initial().copyWith(
        currentSsid: 'WeMo.ABC123',
        homeNetworkSsid: 'HomeNetwork',
      );
      expect(state2.isOnHomeNetwork, false);

      final state3 = PairingState.initial().copyWith(
        currentSsid: 'HomeNetwork',
      );
      expect(state3.isOnHomeNetwork, false); // No home SSID set
    });

    test('equality should work correctly', () {
      final state1 = PairingState.initial().copyWith(
        step: PairingStep.selectNetwork,
        currentSsid: 'WeMo.ABC',
      );

      final state2 = PairingState.initial().copyWith(
        step: PairingStep.selectNetwork,
        currentSsid: 'WeMo.ABC',
      );

      final state3 = PairingState.initial().copyWith(
        step: PairingStep.intro,
        currentSsid: 'WeMo.ABC',
      );

      expect(state1, state2);
      expect(state1, isNot(state3));
    });

    test('should store available networks', () {
      final networks = [
        WifiNetwork(
          ssid: 'Network1',
          channel: 6,
          signalStrength: 80,
          authMode: 'WPAPSK',
          encryption: 'AES',
        ),
        WifiNetwork(
          ssid: 'Network2',
          channel: 11,
          signalStrength: 50,
          authMode: 'WPA2',
          encryption: 'AES',
        ),
      ];

      final state = PairingState.initial().copyWith(
        availableNetworks: networks,
      );

      expect(state.availableNetworks, hasLength(2));
      expect(state.availableNetworks[0].ssid, 'Network1');
      expect(state.availableNetworks[1].ssid, 'Network2');
    });

    test('toString should include key fields', () {
      final state = PairingState.initial().copyWith(
        step: PairingStep.discoverDevice,
        currentSsid: 'WeMo.ABC',
        isLoading: true,
      );

      final str = state.toString();
      expect(str, contains('discoverDevice'));
      expect(str, contains('WeMo.ABC'));
      expect(str, contains('isLoading: true'));
    });
  });
}
