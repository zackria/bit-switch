import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/ui/widgets/brightness_slider.dart';

void main() {
  group('BrightnessSlider', () {
    testWidgets('renders initial brightness', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(brightness: 50),
        ),
      ));

      expect(find.text('50%'), findsWidgets); // Found two: title and preset button
      final slider = tester.widget<Slider>(find.byType(Slider));
      expect(slider.value, 50.0);
    });

    testWidgets('calls onChanged when slider moved', (tester) async {
      double? newValue;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(
            brightness: 50,
            onChanged: (val) => newValue = val,
          ),
        ),
      ));

      await tester.drag(find.byType(Slider), const Offset(100, 0));
      await tester.pump();
      
      final slider = tester.widget<Slider>(find.byType(Slider));
      expect(slider.value, greaterThan(50.0));
      expect(newValue, isNotNull);
    });

    testWidgets('didUpdateWidget updates value', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(brightness: 50),
        ),
      ));
      expect(find.text('50%'), findsWidgets);

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(brightness: 75),
        ),
      ));
      expect(find.text('75%'), findsWidgets);
    });

    testWidgets('preset buttons update value and call onChanged', (tester) async {
      double? newValue;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(
            brightness: 50,
            onChanged: (val) => newValue = val,
          ),
        ),
      ));

      await tester.tap(find.text('25%'));
      await tester.pump();
      expect(newValue, 25.0);
      expect(find.text('25%'), findsWidgets); // Both label and button find.

      await tester.tap(find.text('100%'));
      await tester.pump();
      expect(newValue, 100.0);
    });

    testWidgets('disabled state when onChanged is null', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: BrightnessSlider(brightness: 50),
        ),
      ));

      final slider = tester.widget<Slider>(find.byType(Slider));
      expect(slider.onChanged, isNull);

      final button = tester.widget<OutlinedButton>(find.widgetWithText(OutlinedButton, '25%'));
      expect(button.onPressed, isNull);
    });
  });
}
