import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/ui/widgets/power_button.dart';

void main() {
  group('PowerButton', () {
    testWidgets('shows on state', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PowerButton(isOn: true, onPressed: () {}),
        ),
      ));

      expect(find.byIcon(Icons.power_settings_new), findsOneWidget);
      // Verify color or style if needed, but simple existence is good start
    });

    testWidgets('shows off state', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PowerButton(isOn: false, onPressed: () {}),
        ),
      ));

      expect(find.byIcon(Icons.power_settings_new), findsOneWidget);
    });

    testWidgets('handles tap', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PowerButton(isOn: false, onPressed: () => tapped = true),
        ),
      ));

      await tester.tap(find.byType(PowerButton));
      expect(tapped, true);
    });

    testWidgets('disabled when onPressed is null', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: PowerButton(isOn: false, onPressed: null),
        ),
      ));

      // Check for GestureDetector being present but verify enabled state via behavior?
      // Or just check if icon color is grey
      final icon = tester.widget<Icon>(find.byIcon(Icons.power_settings_new));
      expect(icon.color, Colors.grey[400]); // Disabled color
    });
  });
}
