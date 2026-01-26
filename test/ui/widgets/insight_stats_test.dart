import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bit_switch/ui/widgets/insight_stats.dart';
import 'package:bit_switch/models/device_state.dart';

void main() {
  group('InsightStats', () {
    testWidgets('shows all stats', (tester) async {
      final state = InsightState(
        isOn: true,
        lastUpdated: DateTime.now(),
        currentPowerMw: 5000,
        todayKwh: 1.5,
        totalKwh: 10.0,
        todayOnTimeSeconds: 3600,
        totalOnTimeSeconds: 7200,
        standbyState: 1,
      );

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: InsightStats(state: state),
        ),
      ));

      expect(find.text('Current Power'), findsOneWidget);
      expect(find.text('5.0 W'), findsOneWidget); // 5000mW = 5W

      expect(find.text('Today'), findsOneWidget);
      expect(find.text('1.500 kWh'), findsOneWidget);

      expect(find.text('Total'), findsOneWidget);
      expect(find.text('10.00 kWh'), findsOneWidget);

      expect(find.text('On Time Today'), findsOneWidget);
      expect(find.text('1h 0m'), findsOneWidget); // 3600s

      expect(find.text('Total On Time'), findsOneWidget);
      expect(find.text('2h 0m'), findsOneWidget); // 7200s
      
      expect(find.text('Status'), findsOneWidget);
      expect(find.text('On'), findsOneWidget);
    });

    testWidgets('handles null values', (tester) async {
      final state = InsightState(
        isOn: true,
        lastUpdated: DateTime.now(),
      );

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: InsightStats(state: state),
        ),
      ));

      expect(find.text('Current Power'), findsOneWidget);
      expect(find.text('0 W'), findsOneWidget);
      expect(find.text('0 kWh'), findsNWidgets(2));
    });
  });
}
