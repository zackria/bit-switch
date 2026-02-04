import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/services/device_control_service.dart';
import 'package:bit_switch/ui/widgets/network_list_tile.dart';

void main() {
  Widget buildTestWidget({
    required WifiNetwork network,
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return MaterialApp(
      home: Scaffold(
        body: NetworkListTile(
          network: network,
          isSelected: isSelected,
          onTap: onTap ?? () {},
        ),
      ),
    );
  }

  group('NetworkListTile', () {
    testWidgets('should display network SSID', (tester) async {
      final network = WifiNetwork(
        ssid: 'MyHomeNetwork',
        channel: 6,
        signalStrength: 80,
        authMode: 'WPAPSK',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.text('MyHomeNetwork'), findsOneWidget);
    });

    testWidgets('should show WPA2 security label', (tester) async {
      final network = WifiNetwork(
        ssid: 'TestNetwork',
        channel: 6,
        signalStrength: 70,
        authMode: 'WPAPSK',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.text('WPA2'), findsOneWidget);
    });

    testWidgets('should show open network label', (tester) async {
      final network = WifiNetwork(
        ssid: 'OpenNetwork',
        channel: 1,
        signalStrength: 50,
        authMode: 'OPEN',
        encryption: 'NONE',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.text('Open network'), findsOneWidget);
    });

    testWidgets('should display check icon when selected', (tester) async {
      final network = WifiNetwork(
        ssid: 'SelectedNetwork',
        channel: 6,
        signalStrength: 90,
        authMode: 'WPA2',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(
        network: network,
        isSelected: true,
      ));

      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });

    testWidgets('should not display check icon when not selected', (tester) async {
      final network = WifiNetwork(
        ssid: 'UnselectedNetwork',
        channel: 6,
        signalStrength: 90,
        authMode: 'WPA2',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(
        network: network,
        isSelected: false,
      ));

      expect(find.byIcon(Icons.check_circle), findsNothing);
    });

    testWidgets('should call onTap when tapped', (tester) async {
      var tapped = false;
      final network = WifiNetwork(
        ssid: 'TappableNetwork',
        channel: 6,
        signalStrength: 70,
        authMode: 'WPAPSK',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(
        network: network,
        onTap: () => tapped = true,
      ));

      await tester.tap(find.byType(ListTile));
      expect(tapped, true);
    });

    testWidgets('should show strong signal icon for high signal', (tester) async {
      final network = WifiNetwork(
        ssid: 'StrongSignal',
        channel: 6,
        signalStrength: 80,
        authMode: 'WPA2',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.byIcon(Icons.signal_wifi_4_bar), findsOneWidget);
    });

    testWidgets('should show medium signal icon for medium signal', (tester) async {
      final network = WifiNetwork(
        ssid: 'MediumSignal',
        channel: 6,
        signalStrength: 55,
        authMode: 'WPA2',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.byIcon(Icons.network_wifi_3_bar), findsOneWidget);
    });

    testWidgets('should show weak signal icon for low signal', (tester) async {
      final network = WifiNetwork(
        ssid: 'WeakSignal',
        channel: 6,
        signalStrength: 20,
        authMode: 'WPA2',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.byIcon(Icons.network_wifi_1_bar), findsOneWidget);
    });

    testWidgets('should show lock icon for secured networks', (tester) async {
      final network = WifiNetwork(
        ssid: 'SecuredNetwork',
        channel: 6,
        signalStrength: 70,
        authMode: 'WPAPSK',
        encryption: 'AES',
      );

      await tester.pumpWidget(buildTestWidget(network: network));

      expect(find.byIcon(Icons.lock), findsOneWidget);
    });
  });
}
