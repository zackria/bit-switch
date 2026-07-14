import 'dart:convert';
import 'dart:io';

final placeholderPattern = RegExp(r'\{([A-Za-z][A-Za-z0-9_]*)\}');

Set<String> messageKeys(Map<String, dynamic> arb) =>
    arb.keys.where((key) => !key.startsWith('@')).toSet();

Set<String> placeholders(String value) => placeholderPattern
    .allMatches(value)
    .map((match) => match.group(1)!)
    .toSet();

Future<void> main() async {
  final files =
      Directory.current
          .listSync()
          .whereType<File>()
          .where(
            (file) => RegExp(r'app_[A-Za-z0-9_]+\.arb$').hasMatch(file.path),
          )
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  final template =
      (jsonDecode(await File('app_en.arb').readAsString())
              as Map<String, dynamic>)
          .cast<String, dynamic>();
  final expectedKeys = messageKeys(template);
  final errors = <String>[];

  for (final file in files) {
    final arb = (jsonDecode(await file.readAsString()) as Map<String, dynamic>)
        .cast<String, dynamic>();
    final locale = arb['@@locale'];
    final expectedLocale = file.uri.pathSegments.last
        .replaceFirst('app_', '')
        .replaceFirst('.arb', '');
    if (locale != expectedLocale) {
      errors.add('${file.path}: @@locale is $locale, expected $expectedLocale');
    }
    final keys = messageKeys(arb)..remove('@@locale');
    final missing = expectedKeys.difference(keys);
    final extra = keys.difference(expectedKeys);
    if (missing.isNotEmpty) errors.add('${file.path}: missing $missing');
    if (extra.isNotEmpty) errors.add('${file.path}: extra $extra');
    for (final key in expectedKeys.intersection(keys)) {
      final value = arb[key];
      if (value is! String || value.trim().isEmpty) {
        errors.add('${file.path}: $key is empty or not a string');
        continue;
      }
      if (value.contains('ZXPH') || value.contains('<<<')) {
        errors.add('${file.path}: $key contains a translation marker');
      }
      final expectedPlaceholders = placeholders(template[key] as String);
      final actualPlaceholders = placeholders(value);
      if (expectedPlaceholders.length != actualPlaceholders.length ||
          !expectedPlaceholders.containsAll(actualPlaceholders)) {
        errors.add(
          '${file.path}: $key placeholders $actualPlaceholders, '
          'expected $expectedPlaceholders',
        );
      }
    }
  }

  if (files.length != 49) {
    errors.add(
      'Expected 49 ARB files including English and the required zh fallback; '
      'found ${files.length}',
    );
  }
  if (errors.isNotEmpty) {
    stderr.writeln(errors.join('\n'));
    exitCode = 1;
    return;
  }
  stdout.writeln(
    'Validated ${files.length} locales with ${expectedKeys.length} messages each.',
  );
}
