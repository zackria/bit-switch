import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/ui/widgets/device_card.dart';
import 'package:bit_switch/models/wemo_device.dart';
import 'package:bit_switch/models/device_state.dart';

void main() {
  group('DeviceCard', () {
    const device = WemoDevice(
      id: 'id',
      name: 'Test Device',
      host: 'host',
      port: 123,
      type: WemoDeviceType.wemoSwitch,
    );

    testWidgets('renders device name and status', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: device,
            state: DeviceState(isOn: true, isReachable: true, lastUpdated: DateTime.now()),
          ),
        ),
      ));

      expect(find.text('Test Device'), findsOneWidget);
      expect(find.text('On'), findsOneWidget);
      expect(find.byIcon(Icons.power), findsOneWidget);
    });

    testWidgets('renders different statuses', (tester) async {
      // Off state
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: device,
            state: DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now()),
          ),
        ),
      ));
      expect(find.text('Off'), findsOneWidget);

      // Offline state
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: device,
            state: DeviceState(isOn: false, isReachable: false, lastUpdated: DateTime.now()),
          ),
        ),
      ));
      expect(find.text('Offline'), findsOneWidget);
    });

    testWidgets('renders specific device icons', (tester) async {
      final types = [
        WemoDeviceType.lightSwitch,
        WemoDeviceType.dimmer,
        WemoDeviceType.insight,
        WemoDeviceType.motion,
        WemoDeviceType.maker,
        WemoDeviceType.bridge,
        WemoDeviceType.coffeemaker,
        WemoDeviceType.crockpot,
        WemoDeviceType.humidifier,
        WemoDeviceType.unknown,
      ];

      for (final type in types) {
        await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: DeviceCard(
              device: device.copyWith(type: type),
              state: DeviceState(isOn: true, isReachable: true, lastUpdated: DateTime.now()),
            ),
          ),
        ));
        // Just ensuring it renders without error and uses some icon
        expect(find.byType(Icon), findsNWidgets(2)); // Device icon + Chevron
      }
    });

    testWidgets('shows brightness for dimmer', (tester) async {
      final dimmer = device.copyWith(type: WemoDeviceType.dimmer);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: dimmer,
            state: DeviceState(isOn: true, isReachable: true, brightness: 75, lastUpdated: DateTime.now()),
          ),
        ),
      ));

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });

    testWidgets('shows power for insight', (tester) async {
      final insight = device.copyWith(type: WemoDeviceType.insight);
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: insight,
            state: InsightState(
              isOn: true, 
              isReachable: true, 
              lastUpdated: DateTime.now(),
              currentPowerMw: 1500,
            ),
          ),
        ),
      ));

      expect(find.text('1.5 W'), findsOneWidget);
    });

    testWidgets('calls onToggle when switch changed', (tester) async {
      var toggled = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: device,
            state: DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now()),
            onToggle: () => toggled = true,
          ),
        ),
      ));

      await tester.tap(find.byType(Switch));
      expect(toggled, true);
    });

    testWidgets('calls onTap when card tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: DeviceCard(
            device: device,
            state: DeviceState(isOn: false, isReachable: true, lastUpdated: DateTime.now()),
            onTap: () => tapped = true,
          ),
        ),
      ));

      await tester.tap(find.byType(InkWell));
      expect(tapped, true);
    });
  });
}
