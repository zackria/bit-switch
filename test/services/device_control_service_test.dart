import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/core/exceptions.dart';
import 'package:bit_switch/core/constants.dart';
import 'package:bit_switch/models/device_state.dart';

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

void main() {
  group('DeviceControlService', () {
    const device = WemoDevice(
      id: 'test-id',
      name: 'Test Device',
      host: '192.168.1.100',
      port: 49153,
      type: WemoDeviceType.wemoSwitch,
      macAddress: 'AABBCCDDEEFF',
      serialNumber: '12345',
    );

    test('getState should return device state', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'GetBinaryState');
        return {'BinaryState': '1'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final state = await service.getState(device);

      expect(state.isOn, true);
    });

    test('getState should handle complex binary state (dimmer)', () async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        return {'BinaryState': '1|50'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final state = await service.getState(dimmer);

      expect(state.isOn, true);
      expect(state.brightness, 50);
    });

    test('setState should call correct SOAP action', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'SetBinaryState');
        expect(args?['BinaryState'], '1');
        return {'BinaryState': '1'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      await service.setState(device, true);
    });

    test('turnOn/turnOff should call setState', () async {
      var callCount = 0;
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        callCount++;
        expect(args?['BinaryState'], callCount == 1 ? '1' : '0');
        return {'BinaryState': args!['BinaryState']!};
      });

      final service = DeviceControlService(soapClient: mockClient);
      await service.turnOn(device);
      await service.turnOff(device);
    });

    test('toggle should flip state', () async {
      var callCount = 0;
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        if (action == 'GetBinaryState') {
          return {'BinaryState': '0'};
        }
        if (action == 'SetBinaryState') {
          callCount++;
          expect(args?['BinaryState'], '1'); // Should flip to 1
          return {'BinaryState': '1'};
        }
        throw UnimplementedError();
      });

      final service = DeviceControlService(soapClient: mockClient);
      final newState = await service.toggle(device);
      expect(newState, true);
      expect(callCount, 1);
    });

    test('setBrightness should throw if not supported', () async {
      final service = DeviceControlService();
      expect(
        () => service.setBrightness(device, 50),
        throwsA(isA<DeviceException>().having((e) => e.message, 'message', contains('does not support brightness'))),
      );
    });

    test('setBrightness should call SetBinaryState with brightness', () async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'SetBinaryState');
        expect(args?['brightness'], '50');
        expect(args?['BinaryState'], '1'); // Should be 1 if brightness > 0
        return {};
      });

      final service = DeviceControlService(soapClient: mockClient);
      await service.setBrightness(dimmer, 50);
    });

    test('getInsightParams should return valid state', () async {
      final insight = device.copyWith(type: WemoDeviceType.insight);
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'GetInsightParams');
        // "state|lastchange|onfor|ontoday|ontotal|timeperiod|avgpower|currpower|todaymw|totalmw|powerthreshold"
        // 1|0|0|100|200|0|0|5000|3000000|6000000|0
        return {'InsightParams': '1|0|0|100|200|0|0|5000|3000000|6000000|0'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final state = await service.getInsightParams(insight);

      expect(state.isOn, true);
      expect(state.currentPowerMw, 5000);
      expect(state.todayOnTimeSeconds, 100);
      // 3000000 / (60*1000*1000) = 0.05 kWh
      expect(state.todayKwh, 3000000 / 60000000);
    });

    test('getInsightParams should handle malformed strings', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        return {'InsightParams': 'short|string'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final insight = device.copyWith(type: WemoDeviceType.insight);
      
      final state = await service.getInsightParams(insight);
      expect(state.error, contains('Invalid Insight parameters format'));
    });

    test('getInsightParams should handle invalid numbers (gracefully with zeros)', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        return {'InsightParams': '1|0|0|0|0|0|0|not_a_number|0|0|0'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final insight = device.copyWith(type: WemoDeviceType.insight);
      
      final state = await service.getInsightParams(insight);
      expect(state.currentPowerMw, 0);
    });

    test('getInsightParams should throw if not insight', () async {
      final service = DeviceControlService();
      expect(
        () => service.getInsightParams(device),
        throwsA(isA<DeviceException>()),
      );
    });

    test('resetDevice should handle success', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'ReSetup');
        return {'Reset': 'success'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final result = await service.resetDevice(device);
      expect(result, ResetResult.success);
    });
    
     test('factoryReset should call ReSet', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'ReSet');
        return {};
      });

      final service = DeviceControlService(soapClient: mockClient);
      await service.factoryReset(device);
    });

    test('getAvailableNetworks should parse AP list', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'GetApList');
        return {'ApList': 'HomeWiFi|6|80|WPA2|AES,GuestWiFi|11|50|Open|None'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final networks = await service.getAvailableNetworks(device);

      expect(networks.length, 2);
      expect(networks[0].ssid, 'HomeWiFi');
      expect(networks[0].channel, 6);
      expect(networks[1].ssid, 'GuestWiFi');
    });

    test('setupWifi should try to connect', () async {
      var statusCallCount = 0;
      
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        if (action == 'ConnectHomeNetwork') {
           expect(args?['ssid'], 'MyWiFi');
           expect(args?['password'], isNotNull);
           return {};
        }
        if (action == 'GetNetworkStatus') {
          statusCallCount++;
          if (statusCallCount == 1) return {'NetworkStatus': '0'};
          return {'NetworkStatus': '1'};
        }
        throw UnimplementedError();
      });

      final service = DeviceControlService(
        soapClient: mockClient,
        delay: (d) async {}, // No delay
      );
      
      final status = await service.setupWifi(
        device,
        ssid: 'MyWiFi',
        password: 'password',
        timeout: const Duration(seconds: 10), 
      );
      
      expect(status, WifiSetupStatus.connected);
      expect(statusCallCount, 2);
    });

    test('setupWifi should return failed on timeout', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        if (action == 'ConnectHomeNetwork') return {};
        if (action == 'GetNetworkStatus') return {'NetworkStatus': '0'}; // Still connecting
        return {};
      });

      final service = DeviceControlService(
        soapClient: mockClient,
        delay: (d) async {},
      );

      final status = await service.setupWifi(
        device,
        ssid: 'MyWiFi',
        password: 'password',
        timeout: const Duration(milliseconds: 100),
      );

      expect(status, WifiSetupStatus.failed);
    });

    test('setupWifi should return handshake status', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        if (action == 'ConnectHomeNetwork') return {};
        if (action == 'GetNetworkStatus') return {'NetworkStatus': '3'}; 
        return {};
      });

      final service = DeviceControlService(
        soapClient: mockClient,
        delay: (d) async {},
      );

      final status = await service.setupWifi(
        device,
        ssid: 'MyWiFi',
        password: 'password',
      );

      expect(status, WifiSetupStatus.handshake);
    });

    test('closeWifiConnection should call CloseNetwork', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        expect(action, 'CloseNetwork');
        return {};
      });

      final service = DeviceControlService(soapClient: mockClient);
      await service.closeWifiConnection(device);
    });

    test('getState should throw DeviceException on client error', () async {
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        throw Exception('Network error');
      });

      final service = DeviceControlService(soapClient: mockClient);
      expect(() => service.getState(device), throwsA(isA<DeviceException>()));
    });

    test('setBrightness should clamp values', () async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      int? sentBrightness;
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        sentBrightness = int.tryParse(args?['brightness'] ?? '');
        return {};
      });

      final service = DeviceControlService(soapClient: mockClient);
      
      await service.setBrightness(dimmer, 150);
      expect(sentBrightness, 100);

      await service.setBrightness(dimmer, -10);
      expect(sentBrightness, 0);
    });

    test('_parseInsightParams should return error state on malformed data', () async {
      final insight = device.copyWith(type: WemoDeviceType.insight);
      final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        return {'InsightParams': 'too|short'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      final state = await service.getInsightParams(insight);

      expect(state.error, contains('Invalid Insight parameters format'));
    });

    test('resetDevice should return failed/resetRemote', () async {
       final mockClient = MockSoapClient((host, port, service, action, type, args) async {
        if (args?['Reset'] == '1|0') return {'Reset': 'failed'};
        return {'Reset': 'reset_remote_control'};
      });

      final service = DeviceControlService(soapClient: mockClient);
      
      expect(await service.resetDevice(device, data: true), ResetResult.failed);
      expect(await service.resetDevice(device, wifi: true), ResetResult.resetRemote);
    });

    test('WifiNetwork toString should be correct', () {
      final network = WifiNetwork(
        ssid: 'TestSSID',
        channel: 6,
        signalStrength: 80,
        authMode: 'WPA2',
        encryption: 'AES',
      );
      expect(network.toString(), contains('TestSSID'));
      expect(network.toString(), contains('WPA2/AES'));
    });
  });
}