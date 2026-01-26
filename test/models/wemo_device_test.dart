import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/models/wemo_device.dart';

void main() {
  group('WemoDevice', () {
    const device = WemoDevice(
      id: 'test-id',
      name: 'Test Device',
      host: '192.168.1.100',
      port: 49153,
      type: WemoDeviceType.wemoSwitch,
    );

    test('should create instance correctly', () {
      expect(device.id, 'test-id');
      expect(device.name, 'Test Device');
      expect(device.host, '192.168.1.100');
      expect(device.port, 49153);
      expect(device.type, WemoDeviceType.wemoSwitch);
    });

    test('copyWith should return new instance with updated fields', () {
      final updated = device.copyWith(name: 'New Name', port: 8080);
      expect(updated.id, device.id);
      expect(updated.name, 'New Name');
      expect(updated.port, 8080);
      expect(updated.type, device.type);
    });

    test('equality should work correctly', () {
      const device2 = WemoDevice(
        id: 'test-id',
        name: 'Another Name', // Name affects equality now
        host: '1.2.3.4',
        port: 1234,
        type: WemoDeviceType.lightSwitch,
      );
      const device3 = WemoDevice(
        id: 'other-id',
        name: 'Test Device',
        host: '192.168.1.100',
        port: 49153,
        type: WemoDeviceType.wemoSwitch,
      );

      // Create a device that is exactly the same as 'device'
      const device4 = WemoDevice(
        id: 'test-id',
        name: 'Test Device',
        host: '192.168.1.100',
        port: 49153,
        type: WemoDeviceType.wemoSwitch,
      );

      expect(device, device4); // Should be equal
      expect(device, isNot(device2)); // Should NOT be equal (different name)
      expect(device, isNot(device3)); // Should NOT be equal (different ID)
    });

    test('toString should return correct string representation', () {
      expect(device.toString(), contains('Test Device'));
      expect(device.toString(), contains('Smart Switch'));
      expect(device.toString(), contains('192.168.1.100:49153'));
    });
  });

  group('WemoDeviceTypeExtension', () {
    test('displayName should return correct names', () {
      expect(WemoDeviceType.wemoSwitch.displayName, 'Smart Switch');
      expect(WemoDeviceType.lightSwitch.displayName, 'Light Switch');
      expect(WemoDeviceType.dimmer.displayName, 'Dimmer');
      expect(WemoDeviceType.insight.displayName, 'Insight Plug');
      expect(WemoDeviceType.motion.displayName, 'Motion Sensor');
      expect(WemoDeviceType.unknown.displayName, 'Unknown Device');
      // Cover all cases
      expect(WemoDeviceType.dimmerV2.displayName, 'Dimmer');
      expect(WemoDeviceType.maker.displayName, 'Maker');
      expect(WemoDeviceType.bridge.displayName, 'Bridge');
      expect(WemoDeviceType.coffeemaker.displayName, 'Coffee Maker');
      expect(WemoDeviceType.crockpot.displayName, 'Crockpot');
      expect(WemoDeviceType.humidifier.displayName, 'Humidifier');
      expect(WemoDeviceType.outdoorPlug.displayName, 'Outdoor Plug');
    });

    test('iconName should return correct icons', () {
      expect(WemoDeviceType.wemoSwitch.iconName, 'power');
      expect(WemoDeviceType.lightSwitch.iconName, 'lightbulb_outline');
      expect(WemoDeviceType.dimmer.iconName, 'brightness_6');
      expect(WemoDeviceType.insight.iconName, 'insights');
      expect(WemoDeviceType.motion.iconName, 'sensors');
      // Cover all cases
      expect(WemoDeviceType.outdoorPlug.iconName, 'power');
      expect(WemoDeviceType.dimmerV2.iconName, 'brightness_6');
      expect(WemoDeviceType.maker.iconName, 'handyman');
      expect(WemoDeviceType.bridge.iconName, 'device_hub');
      expect(WemoDeviceType.coffeemaker.iconName, 'coffee');
      expect(WemoDeviceType.crockpot.iconName, 'soup_kitchen');
      expect(WemoDeviceType.humidifier.iconName, 'water_drop');
      expect(WemoDeviceType.unknown.iconName, 'device_unknown');
    });

    test('supportsBrightness should work correctly', () {
      expect(WemoDeviceType.dimmer.supportsBrightness, true);
      expect(WemoDeviceType.dimmerV2.supportsBrightness, true);
      expect(WemoDeviceType.wemoSwitch.supportsBrightness, false);
    });

    test('supportsOnOff should work correctly', () {
      expect(WemoDeviceType.wemoSwitch.supportsOnOff, true);
      expect(WemoDeviceType.motion.supportsOnOff, false);
      expect(WemoDeviceType.bridge.supportsOnOff, false);
    });
  });
}
