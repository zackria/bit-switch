import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/providers/device_provider.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/services/device_discovery_service.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/models/device_state.dart';
import 'package:bit_switch/core/soap_client.dart';
import 'package:bit_switch/core/ssdp_client.dart';
import 'package:bit_switch/core/exceptions.dart';

// Mock Services
class MockControlService extends DeviceControlService {
  final Future<DeviceState> Function(WemoDevice)? getStateHandler;
  final Future<void> Function(WemoDevice, bool)? setStateHandler;
  
  MockControlService({this.getStateHandler, this.setStateHandler}) 
      : super(soapClient: SoapClient()); // Base soap client unused

  @override
  Future<DeviceState> getState(WemoDevice device) async {
    if (getStateHandler != null) return getStateHandler!(device);
    return DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now());
  }

  @override
  Future<void> setState(WemoDevice device, bool isOn) async {
    if (setStateHandler != null) await setStateHandler!(device, isOn);
  }
  
  @override
  Future<void> turnOn(WemoDevice device) => setState(device, true);
  
  @override
  Future<void> turnOff(WemoDevice device) => setState(device, false);

  @override
  Future<bool> toggle(WemoDevice device) async {
    final state = await getState(device);
    final newState = !state.isOn;
    await setState(device, newState);
    return newState;
  }

  @override
  Future<void> setBrightness(WemoDevice device, int brightness) async {
    if (!device.type.supportsBrightness) {
       throw DeviceException('Device does not support brightness control');
    }
  }
}

class MockDiscoveryService extends DeviceDiscoveryService {
  final List<WemoDevice> devices;
  
  MockDiscoveryService(this.devices) : super(ssdpClient: SsdpClient());

  @override
  Stream<WemoDevice> discoverDevices({Duration timeout = const Duration(seconds: 10)}) async* {
    for (final device in devices) {
      yield device;
    }
  }
}

void main() {
  group('DeviceProvider', () {
    const device = WemoDevice(
      id: 'test-id',
      name: 'Test Device',
      host: '192.168.1.100',
      port: 49153,
      type: WemoDeviceType.wemoSwitch,
    );

    test('discoverDevices populates list', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(),
        discoveryService: MockDiscoveryService([device]),
      );

      await provider.discoverDevices(timeout: Duration.zero);
      expect(provider.devices.length, 1);
      expect(provider.devices.first.id, device.id);
    });

    test('refreshDeviceState updates state', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(
          getStateHandler: (d) async => DeviceState(
            isOn: true,
            isReachable: true,
            lastUpdated: DateTime.now(),
          ),
        ),
        discoveryService: MockDiscoveryService([device]),
      );

      await provider.discoverDevices(timeout: Duration.zero);
      await provider.refreshDeviceState(device.id);

      final state = provider.getDeviceState(device.id);
      expect(state.isOn, true);
    });

    test('turnOn updates state', () async {
      var called = false;
      final provider = DeviceProvider(
        controlService: MockControlService(
          setStateHandler: (d, isOn) async {
            called = true;
            expect(isOn, true);
          },
        ),
        discoveryService: MockDiscoveryService([device]),
      );

      await provider.discoverDevices(timeout: Duration.zero);
      await provider.turnOn(device.id);
      
      expect(called, true);
      expect(provider.getDeviceState(device.id).isOn, true);
    });

    test('turnOff updates state', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(
          setStateHandler: (d, isOn) async {
            expect(isOn, false);
          },
        ),
        discoveryService: MockDiscoveryService([device]),
      );

      await provider.discoverDevices(timeout: Duration.zero);
      await provider.turnOff(device.id);
      
      expect(provider.getDeviceState(device.id).isOn, false);
    });

    test('clearDevices clears list', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(),
        discoveryService: MockDiscoveryService([device]),
      );

      await provider.discoverDevices(timeout: Duration.zero);
      expect(provider.devices.isNotEmpty, true);
      
      provider.clearDevices();
      expect(provider.devices.isEmpty, true);
    });
    
    test('periodic refresh calls refreshAll', () async {
      var refreshCount = 0;
      final provider = DeviceProvider(
        controlService: MockControlService(
          getStateHandler: (d) async {
            refreshCount++;
            return DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now());
          },
        ),
        discoveryService: MockDiscoveryService([device]),
      );
      
      await provider.discoverDevices(timeout: Duration.zero);
      
      provider.startPeriodicRefresh(interval: const Duration(milliseconds: 100));
      await Future.delayed(const Duration(milliseconds: 250));
      provider.stopPeriodicRefresh();
      
      // Initial discovery calls refresh (1)
      // Periodic should call at least once or twice
      expect(refreshCount > 1, true);
    });
    
    test('removeDevice removes it', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(),
        discoveryService: MockDiscoveryService([device]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      
      provider.removeDevice(device.id);
      expect(provider.devices.isEmpty, true);
    });

    test('toggle flips the state in provider', () async {
      bool currentState = false;
      final provider = DeviceProvider(
        controlService: MockControlService(
          getStateHandler: (d) async => DeviceState(isOn: currentState, isReachable: true, lastUpdated: DateTime.now()),
          setStateHandler: (d, isOn) async {
            currentState = isOn;
          },
        ),
        discoveryService: MockDiscoveryService([device]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      
      await provider.toggle(device.id);
      expect(provider.getDeviceState(device.id).isOn, true);
      expect(currentState, true);
      
      await provider.toggle(device.id);
      expect(provider.getDeviceState(device.id).isOn, false);
      expect(currentState, false);
    });

    test('setBrightness updates state for dimmer', () async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      final provider = DeviceProvider(
        controlService: MockControlService(),
        discoveryService: MockDiscoveryService([dimmer]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      
      await provider.setBrightness(dimmer.id, 75);
      expect(provider.getDeviceState(dimmer.id).brightness, 75);
    });

    test('refreshAllDevices calls refresh for all', () async {
      var callCount = 0;
      final provider = DeviceProvider(
        controlService: MockControlService(
          getStateHandler: (d) async {
            callCount++;
            return DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now());
          },
        ),
        discoveryService: MockDiscoveryService([device, device.copyWith(id: 'dev2')]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      callCount = 0; // Reset after initial discovery refresh
      
      await provider.refreshAllDevices();
      expect(callCount, 2);
    });

    test('error handling', () async {
      final provider = DeviceProvider(
        controlService: MockControlService(),
        discoveryService: MockDiscoveryService([device]),
      );
      await provider.discoverDevices(timeout: Duration.zero);
      
      provider.clearError();
      expect(provider.error, null);

      // Trigger error in setBrightness
      try {
        await provider.setBrightness(device.id, 50);
      } catch (_) {}
      expect(provider.error, contains('support brightness'));
    });

    test('InsightState discovery', () async {
      final insight = device.copyWith(type: WemoDeviceType.insight);
      final provider = DeviceProvider(
        controlService: MockInsightControlService(),
        discoveryService: MockDiscoveryService([insight]),
      );
      
      await provider.discoverDevices(timeout: Duration.zero);
      final state = provider.getDeviceState(insight.id);
      
      expect(state, isA<InsightState>());
      expect((state as InsightState).currentPowerMw, 1500);
    });

    test('DiscoveryException handling', () async {
       final failingDiscovery = failingDiscoveryService();
       final provider = DeviceProvider(
         controlService: MockControlService(),
         discoveryService: failingDiscovery,
       );
       
       await provider.discoverDevices(timeout: Duration.zero);
       expect(provider.error, 'Network Error');
    });

    test('getters coverage', () {
      final provider = DeviceProvider();
      expect(provider.controlService, isNotNull);
    });
  });
}

DeviceDiscoveryService failingDiscoveryService() {
  final mock = MockDiscoveryService([]);
  return FailingDiscoveryService();
}

class FailingDiscoveryService extends DeviceDiscoveryService {
  FailingDiscoveryService() : super(ssdpClient: SsdpClient());
  @override
  Stream<WemoDevice> discoverDevices({Duration timeout = const Duration(seconds: 10)}) async* {
    throw DiscoveryException('Network Error');
  }
}

class MockInsightControlService extends MockControlService {
  @override
  Future<InsightState> getInsightParams(WemoDevice device) async {
    return InsightState(
      isOn: true,
      currentPowerMw: 1500,
      todayKwh: 0.1,
      totalKwh: 1.5,
      todayOnTimeSeconds: 3600,
      totalOnTimeSeconds: 36000,
      isReachable: true,
      lastUpdated: DateTime.now(),
    );
  }
}
