import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bit_switch/ui/screens/settings_screen.dart';
import 'package:bit_switch/providers/settings_provider.dart';
import 'package:bit_switch/providers/device_provider.dart';

void main() {
  testWidgets('SettingsScreen builds and shows title', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => SettingsProvider()),
            ChangeNotifierProvider(create: (_) => DeviceProvider()),
          ],
          child: const SettingsScreen(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Settings'), findsOneWidget);
  });
}
