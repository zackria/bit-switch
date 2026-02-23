import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/core/exceptions.dart';

// Reusable mock that mirrors the existing test pattern in the repo
class MockSoapClient extends SoapClient {
  final Future<Map<String, String>> Function(
    String host,
    int port,
    String serviceName,
    String action,
    String serviceType,
    Map<String, String>? arguments,
  )
  handler;

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

void main() {
  group('DeviceControlService extra tests', () {
    const device = WemoDevice(
      id: 'test-id',
      name: 'Test Device',
      host: '192.168.1.100',
      port: 49153,
      type: WemoDeviceType.wemoSwitch,
      macAddress: 'AABBCCDDEEFF',
      serialNumber: '12345',
    );

    test('toggle should invert state and call SetBinaryState', () async {
      final callActions = <String>[];

      final mockClient = MockSoapClient((
        host,
        port,
        service,
        action,
        type,
        args,
      ) async {
        if (action == 'GetBinaryState')
          return {'BinaryState': '1'}; // currently on

        if (action == 'SetBinaryState') {
          callActions.add(action);
          // Expect toggle to set to '0' (off)
          expect(args?['BinaryState'], '0');
          return {'BinaryState': args?['BinaryState'] ?? '0'};
        }

        return <String, String>{};
      });

      final svc = DeviceControlService(soapClient: mockClient);
      final newState = await svc.toggle(device);

      expect(newState, isFalse);
      expect(callActions, contains('SetBinaryState'));
    });

    test('setBrightness clamps values and sends correct brightness', () async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      final sentBrightness = <String>[];

      final mockClient = MockSoapClient((
        host,
        port,
        service,
        action,
        type,
        args,
      ) async {
        expect(action, 'SetBinaryState');
        sentBrightness.add(args?['brightness'] ?? '');
        return {'BinaryState': args?['BinaryState'] ?? '0'};
      });

      final svc = DeviceControlService(soapClient: mockClient);

      await svc.setBrightness(dimmer, 150); // should clamp to 100
      expect(sentBrightness.removeAt(0), '100');

      await svc.setBrightness(dimmer, -10); // should clamp to 0
      expect(sentBrightness.removeAt(0), '0');
    });

    test(
      'setBrightness throws when device does not support brightness',
      () async {
        final svc = DeviceControlService(
          soapClient: MockSoapClient(
            (_, __, ___, ____, _____, ______) async => <String, String>{},
          ),
        );

        expect(
          () => svc.setBrightness(device, 50),
          throwsA(isA<DeviceException>()),
        );
      },
    );

    test(
      'getState converts unexpected exceptions into DeviceException',
      () async {
        final mockClient = MockSoapClient((
          _,
          __,
          ___,
          ____,
          _____,
          ______,
        ) async {
          throw Exception('network error');
        });

        final svc = DeviceControlService(soapClient: mockClient);

        expect(() => svc.getState(device), throwsA(isA<DeviceException>()));
      },
    );

    test(
      'setState converts unexpected exceptions into DeviceException',
      () async {
        final mockClient = MockSoapClient((
          _,
          __,
          ___,
          ____,
          _____,
          ______,
        ) async {
          throw Exception('network error');
        });

        final svc = DeviceControlService(soapClient: mockClient);

        expect(
          () => svc.setState(device, true),
          throwsA(isA<DeviceException>()),
        );
      },
    );
  });

  group('pairing methods', () {
    const device = WemoDevice(
      id: 'pairing-device',
      name: 'Pairing Device',
      host: '10.22.22.1',
      port: 49153,
      type: WemoDeviceType.wemoSwitch,
      macAddress: 'AABBCCDDEEFF',
      serialNumber: '12345',
    );

    test('setSetupDoneStatus sends correct SOAP action', () async {
      String? capturedAction;
      String? capturedService;

      final mockClient = MockSoapClient((
        host,
        port,
        service,
        action,
        type,
        args,
      ) async {
        capturedAction = action;
        capturedService = service;
        return <String, String>{};
      });

      final svc = DeviceControlService(soapClient: mockClient);
      await svc.setSetupDoneStatus(device);

      expect(capturedAction, 'SetSetupDoneStatus');
      expect(capturedService, 'WiFiSetup1');
    });

    test('setSetupDoneStatus wraps non-WemoException as DeviceException', () {
      final mockClient = MockSoapClient((_, __, ___, ____, _____, ______) async {
        throw Exception('unexpected failure');
      });

      final svc = DeviceControlService(soapClient: mockClient);

      expect(
        () => svc.setSetupDoneStatus(device),
        throwsA(isA<DeviceException>()),
      );
    });

    test('closeSetup sends correct SOAP action', () async {
      String? capturedAction;

      final mockClient = MockSoapClient((
        host,
        port,
        service,
        action,
        type,
        args,
      ) async {
        capturedAction = action;
        return <String, String>{};
      });

      final svc = DeviceControlService(soapClient: mockClient);
      await svc.closeSetup(device);

      expect(capturedAction, 'CloseSetup');
    });

    test('closeSetup wraps non-WemoException as DeviceException', () {
      final mockClient = MockSoapClient((_, __, ___, ____, _____, ______) async {
        throw Exception('unexpected failure');
      });

      final svc = DeviceControlService(soapClient: mockClient);

      expect(
        () => svc.closeSetup(device),
        throwsA(isA<DeviceException>()),
      );
    });

    test('connectToHomeNetwork sends ConnectHomeNetwork with correct ssid', () async {
      String? capturedAction;
      String? capturedSsid;

      final mockClient = MockSoapClient((
        host,
        port,
        service,
        action,
        type,
        args,
      ) async {
        capturedAction = action;
        capturedSsid = args?['ssid'];
        return <String, String>{};
      });

      final svc = DeviceControlService(soapClient: mockClient);
      await svc.connectToHomeNetwork(device, ssid: 'MyNet', password: 'secret');

      expect(capturedAction, 'ConnectHomeNetwork');
      expect(capturedSsid, 'MyNet');
    });

    test('connectToHomeNetwork rethrows WemoException without wrapping', () {
      final mockClient = MockSoapClient((_, __, ___, ____, _____, ______) async {
        throw NetworkException('network failure', host: '10.22.22.1', port: 49153);
      });

      final svc = DeviceControlService(soapClient: mockClient);

      expect(
        () => svc.connectToHomeNetwork(device, ssid: 'MyNet', password: 'pass'),
        throwsA(isA<NetworkException>()),
      );
    });

    test('connectToHomeNetwork wraps non-WemoException as DeviceException', () {
      final mockClient = MockSoapClient((_, __, ___, ____, _____, ______) async {
        throw Exception('unknown error');
      });

      final svc = DeviceControlService(soapClient: mockClient);

      expect(
        () => svc.connectToHomeNetwork(device, ssid: 'MyNet', password: 'pass'),
        throwsA(isA<DeviceException>()),
      );
    });
  });
}
