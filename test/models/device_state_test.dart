import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/models/device_state.dart';

void main() {
  group('DeviceState', () {
    final now = DateTime.now();
    final state = DeviceState(
      isOn: true,
      isReachable: true,
      lastUpdated: now,
      brightness: 50,
    );

    test('should create instance correctly', () {
      expect(state.isOn, true);
      expect(state.isReachable, true);
      expect(state.lastUpdated, now);
      expect(state.brightness, 50);
      expect(state.error, null);
    });

    test('unknown factory should create default state', () {
      final unknown = DeviceState.unknown();
      expect(unknown.isOn, false);
      expect(unknown.isReachable, false);
      expect(unknown.error, null);
    });

    test('error factory should create error state', () {
      final error = DeviceState.error('Connection failed');
      expect(error.isOn, false);
      expect(error.isReachable, false);
      expect(error.error, 'Connection failed');
    });

    test('copyWith should update fields', () {
      final updated = state.copyWith(isOn: false, brightness: 100);
      expect(updated.isOn, false);
      expect(updated.brightness, 100);
      expect(updated.isReachable, state.isReachable);
    });

    test('equality should work correctly', () {
      final state2 = DeviceState(
        isOn: true,
        isReachable: true,
        lastUpdated: now.add(const Duration(seconds: 1)), // Time ignored in equality
        brightness: 50,
      );
      final state3 = DeviceState(
        isOn: false,
        isReachable: true,
        lastUpdated: now,
      );

      expect(state, state2); // Assuming hash/equals doesn't check time if implementation ignores it?
      // Checking implementation: Object.hash(isOn, brightness, isReachable)
      // Yes, lastUpdated and error are ignored in equality.
      
      expect(state, isNot(state3));
    });

    test('toString should return correct string', () {
      expect(state.toString(), contains('isOn: true'));
      expect(state.toString(), contains('brightness: 50'));
    });
  });

  group('InsightState', () {
    final now = DateTime.now();
    final state = InsightState(
      isOn: true,
      lastUpdated: now,
      currentPowerMw: 5000,
      standbyState: 1,
    );

    test('should create instance correctly', () {
      expect(state.currentPowerMw, 5000);
      expect(state.currentPowerWatts, 5.0);
      expect(state.standbyState, 1);
    });

    test('standbyStateDisplay should return correct string', () {
      final off = state.copyWith(standbyState: 0);
      final on = state.copyWith(standbyState: 1);
      final standby = state.copyWith(standbyState: 8);
      final unknown = state.copyWith(standbyState: 99);

      expect(off.standbyStateDisplay, 'Off');
      expect(on.standbyStateDisplay, 'On');
      expect(standby.standbyStateDisplay, 'Standby');
      expect(unknown.standbyStateDisplay, 'Unknown');
    });

    test('copyWith should update fields', () {
      final updated = state.copyWith(currentPowerMw: 10000);
      expect(updated.currentPowerMw, 10000);
      expect(updated.isOn, state.isOn);
    });
  });
}
