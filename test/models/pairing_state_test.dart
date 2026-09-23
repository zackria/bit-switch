import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/models/pairing_state.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/services/device_control_service.dart';

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

      // Wemo Mini uses lowercase "Wemo" and multiple dot-separated segments.
      final state6 = PairingState.initial().copyWith(
        currentSsid: 'Wemo.Mini.61C',
      );
      expect(state6.isOnWemoAp, true);
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

    test('copyWith should update every field independently', () {
      final state = PairingState.initial();
      const device = WemoDevice(
        id: 'dev-1',
        name: 'Living Room',
        host: '192.168.1.5',
        port: 49153,
        type: WemoDeviceType.wemoSwitch,
      );
      final networks = [
        WifiNetwork(
          ssid: 'Net',
          channel: 3,
          signalStrength: 70,
          authMode: 'WPA2',
          encryption: 'AES',
        ),
      ];

      final updated = state.copyWith(
        step: PairingStep.configuring,
        currentSsid: 'WeMo.999',
        homeNetworkSsid: 'MyHome',
        device: device,
        availableNetworks: networks,
        selectedSsid: 'MyHome',
        password: 'secret',
        isLoading: true,
        loadingMessage: 'Working',
        errorMessage: 'Oops',
        canRetry: false,
      );

      expect(updated.step, PairingStep.configuring);
      expect(updated.currentSsid, 'WeMo.999');
      expect(updated.homeNetworkSsid, 'MyHome');
      expect(updated.device, device);
      expect(updated.availableNetworks, networks);
      expect(updated.selectedSsid, 'MyHome');
      expect(updated.password, 'secret');
      expect(updated.isLoading, true);
      expect(updated.loadingMessage, 'Working');
      expect(updated.errorMessage, 'Oops');
      expect(updated.canRetry, false);
    });

    test('copyWith with no arguments keeps all existing field values', () {
      const device = WemoDevice(
        id: 'dev-2',
        name: 'Kitchen',
        host: '192.168.1.9',
        port: 49153,
        type: WemoDeviceType.wemoSwitch,
      );
      final networks = [
        WifiNetwork(
          ssid: 'Kept',
          channel: 6,
          signalStrength: 55,
          authMode: 'WPA2',
          encryption: 'AES',
        ),
      ];

      final state = PairingState(
        step: PairingStep.selectNetwork,
        currentSsid: 'WeMo.KEEP',
        homeNetworkSsid: 'HomeKeep',
        device: device,
        availableNetworks: networks,
        selectedSsid: 'HomeKeep',
        password: 'pw',
        isLoading: true,
        loadingMessage: 'msg',
        errorMessage: 'err',
        canRetry: false,
      );

      final copy = state.copyWith();

      expect(copy.step, state.step);
      expect(copy.currentSsid, state.currentSsid);
      expect(copy.homeNetworkSsid, state.homeNetworkSsid);
      expect(copy.device, state.device);
      expect(copy.availableNetworks, state.availableNetworks);
      expect(copy.selectedSsid, state.selectedSsid);
      expect(copy.password, state.password);
      expect(copy.isLoading, state.isLoading);
      expect(copy.loadingMessage, state.loadingMessage);
      expect(copy.errorMessage, state.errorMessage);
      expect(copy.canRetry, state.canRetry);
    });

    test('copyWith remaining clear flags should null out fields', () {
      final state = PairingState.initial().copyWith(
        homeNetworkSsid: 'HomeNet',
        selectedSsid: 'Selected',
        password: 'secret',
        loadingMessage: 'Loading...',
      );

      final cleared = state.copyWith(
        clearHomeNetworkSsid: true,
        clearSelectedSsid: true,
        clearPassword: true,
        clearLoadingMessage: true,
      );

      expect(cleared.homeNetworkSsid, isNull);
      expect(cleared.selectedSsid, isNull);
      expect(cleared.password, isNull);
      expect(cleared.loadingMessage, isNull);
    });

    test('isOnHomeNetwork should be false when currentSsid is null', () {
      final state = PairingState.initial().copyWith(
        homeNetworkSsid: 'HomeNetwork',
      );
      expect(state.isOnHomeNetwork, false);
    });

    test('hashCode should match for equal states and differ for different states', () {
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

      expect(state1.hashCode, state2.hashCode);
      expect(state1.hashCode, isNot(state3.hashCode));
    });

    test('equality should return false for different list instances with equal contents', () {
      final state1 = PairingState.initial().copyWith(
        availableNetworks: [
          WifiNetwork(
            ssid: 'Same',
            channel: 1,
            signalStrength: 10,
            authMode: 'WPA',
            encryption: 'AES',
          ),
        ],
      );
      final state2 = PairingState.initial().copyWith(
        availableNetworks: [
          WifiNetwork(
            ssid: 'Same',
            channel: 1,
            signalStrength: 10,
            authMode: 'WPA',
            encryption: 'AES',
          ),
        ],
      );

      expect(state1, isNot(state2));
    });

    test('toString should show null device when device is not set', () {
      final state = PairingState.initial();
      expect(state.toString(), contains('device: null'));
    });

    test('toString should include device name when device is present', () {
      final state = PairingState.initial().copyWith(
        device: const WemoDevice(
          id: 'id-1',
          name: 'Bedroom Switch',
          host: '10.0.0.5',
          port: 49153,
          type: WemoDeviceType.wemoSwitch,
        ),
      );
      expect(state.toString(), contains('Bedroom Switch'));
    });
  });
}
