import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/models/pairing_state.dart';
import 'package:bit_switch/ui/widgets/pairing_step_indicator.dart';

void main() {
  Widget buildTestWidget(PairingStep step) {
    return MaterialApp(
      home: Scaffold(
        body: PairingStepIndicator(currentStep: step),
      ),
    );
  }

  group('PairingStepIndicator', () {
    testWidgets('should display intro step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.intro));

      expect(find.text('Get Started'), findsOneWidget);
    });

    testWidgets('should display connect step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.connectToAp));

      expect(find.text('Connect to Device'), findsOneWidget);
    });

    testWidgets('should display discover step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.discoverDevice));

      expect(find.text('Find Device'), findsOneWidget);
    });

    testWidgets('should display select network step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.selectNetwork));

      expect(find.text('Select Network'), findsOneWidget);
    });

    testWidgets('should display configuring step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.configuring));

      expect(find.text('Configuring'), findsOneWidget);
    });

    testWidgets('should display reconnect step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.reconnectHome));

      expect(find.text('Reconnect'), findsOneWidget);
    });

    testWidgets('should display finalize step correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.finalize));

      expect(find.text('Finalizing'), findsOneWidget);
    });

    testWidgets('should display success correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.success));

      expect(find.text('Success'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsWidgets); // Multiple check icons
    });

    testWidgets('should display error correctly', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.error));

      expect(find.text('Error'), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
    });

    testWidgets('should show all 7 step dots', (tester) async {
      await tester.pumpWidget(buildTestWidget(PairingStep.selectNetwork));

      // There should be 7 step indicators in a row
      // Each step is wrapped in a Row with the dot and optionally a connector
      final row = tester.widget<Row>(find.byType(Row).first);
      // The row contains 7 Row children (each containing a dot + connector)
      expect(row.children.length, 7);
    });
  });
}
