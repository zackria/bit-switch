import 'package:bit_switch/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all requested locales generate and expose the full catalog', () {
    expect(AppLocalizations.supportedLocales, hasLength(49));

    for (final locale in AppLocalizations.supportedLocales) {
      final localizations = lookupAppLocalizations(locale);
      expect(localizations.appTitle, isNotEmpty, reason: locale.toString());
      expect(
        localizations.settingsTitle,
        isNotEmpty,
        reason: locale.toString(),
      );
      expect(
        localizations.detailDeviceInformation,
        isNotEmpty,
        reason: locale.toString(),
      );
      expect(
        localizations.pairingSetupTitle,
        isNotEmpty,
        reason: locale.toString(),
      );
    }
  });

  testWidgets('Arabic uses right-to-left layout direction', (tester) async {
    TextDirection? direction;
    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('ar'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) {
          direction = Directionality.of(context);
          return child ?? const SizedBox.shrink();
        },
        home: const SizedBox.shrink(),
      ),
    );

    expect(direction, TextDirection.rtl);
  });
}
