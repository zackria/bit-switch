// Generates test/l10n/generated_catalog_coverage_test.dart by extracting every
// abstract member from lib/l10n/app_localizations.dart. Run with:
//   dart run tool/generate_l10n_coverage_test.dart
import 'dart:io';

void main() {
  final source = File('lib/l10n/app_localizations.dart').readAsStringSync();
  final getterRe = RegExp(r'^\s{2}String get (\w+);', multiLine: true);
  final methodRe = RegExp(r'^\s{2}String (\w+)\(([^)]*)\);', multiLine: true);

  final accessors = <String>[];

  for (final m in getterRe.allMatches(source)) {
    accessors.add('    buffer.write(l.${m.group(1)});');
  }

  for (final m in methodRe.allMatches(source)) {
    final name = m.group(1)!;
    final params = m.group(2)!.trim();
    final args = <String>[];
    if (params.isNotEmpty) {
      for (final p in params.split(',')) {
        final type = p.trim().split(RegExp(r'\s+')).first;
        switch (type) {
          case 'int':
          case 'num':
            args.add('1');
            break;
          case 'double':
            args.add('1.0');
            break;
          default:
            args.add("'x'");
        }
      }
    }
    accessors.add('    buffer.write(l.$name(${args.join(', ')}));');
  }

  accessors.sort();

  final buffer = StringBuffer()
    ..writeln('// GENERATED FILE - do not edit by hand.')
    ..writeln(
      '// Regenerate with: dart run tool/generate_l10n_coverage_test.dart',
    )
    ..writeln('//')
    ..writeln(
      '// Exercises every generated localization member for every supported',
    )
    ..writeln('// locale so the generated catalogs are fully covered.')
    ..writeln("import 'package:bit_switch/l10n/app_localizations.dart';")
    ..writeln("import 'package:flutter_test/flutter_test.dart';")
    ..writeln('')
    ..writeln('void _touchAll(AppLocalizations l) {')
    ..writeln('    final buffer = StringBuffer();')
    ..writeln(accessors.join('\n'))
    ..writeln('    expect(buffer.length, greaterThan(0));')
    ..writeln('}')
    ..writeln('')
    ..writeln('void main() {')
    ..writeln(
      "  test('every catalog member is accessible for every locale', () {",
    )
    ..writeln('    for (final locale in AppLocalizations.supportedLocales) {')
    ..writeln('      _touchAll(lookupAppLocalizations(locale));')
    ..writeln('    }')
    ..writeln('  });')
    ..writeln('}')
    ..writeln('');

  File(
    'test/l10n/generated_catalog_coverage_test.dart',
  ).writeAsStringSync(buffer.toString());
  stdout.writeln('Wrote ${accessors.length} accessors.');
}
