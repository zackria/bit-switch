import 'dart:convert';
import 'dart:io';

const localeTargets = <String, String>{
  'es': 'es',
  'fr': 'fr',
  'de': 'de',
  'ar': 'ar',
  'zh_Hans': 'zh-CN',
  'zh': 'zh-CN',
  'hi': 'hi',
  'ur': 'ur',
  'ja': 'ja',
  'ru': 'ru',
  'ko': 'ko',
  'zh_Hant': 'zh-TW',
  'pa': 'pa',
  'ta': 'ta',
  'bn': 'bn',
  'pt': 'pt',
  'id': 'id',
  'sw': 'sw',
  'mr': 'mr',
  'te': 'te',
  'tr': 'tr',
  'vi': 'vi',
  'fr_CA': 'fr-CA',
  'pt_BR': 'pt-BR',
  'es_419': 'es-419',
  'da': 'da',
  'cs': 'cs',
  'ro': 'ro',
  'kn': 'kn',
  'gu': 'gu',
  'or': 'or',
  'ms': 'ms',
  'sl': 'sl',
  'it': 'it',
  'th': 'th',
  'ml': 'ml',
  'uk': 'uk',
  'nl': 'nl',
  'fi': 'fi',
  'el': 'el',
  'he': 'he',
  'hu': 'hu',
  'no': 'no',
  'pl': 'pl',
  'sv': 'sv',
  'ca': 'ca',
  'hr': 'hr',
  'sk': 'sk',
};

const pluralKeys = {
  'commonSeconds',
  'homeDevicesFound',
  'homeDevicesFoundScanning',
};

const pluralParts = <String, String>{
  '__plural_common_one': '1 second',
  '__plural_common_other': '{seconds} seconds',
  '__plural_found_zero': 'No devices found',
  '__plural_found_one': '1 device found',
  '__plural_found_other': '{count} devices found',
  '__plural_scan_zero': 'No devices found, scanning...',
  '__plural_scan_one': '1 device found, scanning...',
  '__plural_scan_other': '{count} devices found, scanning...',
};

const protectedTerms = [
  'Bit Switch',
  'SSDP/UPnP',
  'SOAP over HTTP',
  'WeMo',
  'Wemo',
  'Wi-Fi',
  'WiFi',
  'SSID',
  'MAC',
  'HTTP',
  'SOAP',
  'UDP',
  'IP',
];

class Message {
  Message(this.key, this.text, this.saved);

  final String key;
  final String text;
  final Map<String, String> saved;
}

Message protectMessage(String key, String source) {
  final saved = <String, String>{};

  String hold(String value, String token) {
    saved[token] = value;
    return token;
  }

  var text = source;
  for (final term in protectedTerms) {
    if (text.contains(term)) {
      text = text.replaceAll(
        term,
        hold(term, 'ZXTERM${saved.length.toString().padLeft(3, '0')}ZX'),
      );
    }
  }
  text = text.replaceAllMapped(
    RegExp(r'\{([A-Za-z][A-Za-z0-9_]*)\}'),
    (match) => hold(match.group(0)!, 'ZXARG${match.group(1)!.toUpperCase()}ZX'),
  );
  return Message(key, text, saved);
}

String restoreMessage(String translated, Map<String, String> saved) {
  var result = translated.trim();
  for (final entry in saved.entries) {
    result = result
        .replaceAll(entry.key, entry.value)
        .replaceAll(entry.key.toLowerCase(), entry.value);
  }
  return result;
}

Future<String> requestTranslation(
  HttpClient client,
  String target,
  String payload,
) async {
  Object? lastError;
  for (var attempt = 0; attempt < 6; attempt++) {
    try {
      final uri = Uri.https('translate.googleapis.com', '/translate_a/single', {
        'client': 'gtx',
        'sl': 'en',
        'tl': target,
        'dt': 't',
        'q': payload,
      });
      final request = await client.getUrl(uri);
      final response = await request.close();
      if (response.statusCode != HttpStatus.ok) {
        throw HttpException('HTTP ${response.statusCode}', uri: uri);
      }
      final body = await utf8.decoder.bind(response).join();
      final data = jsonDecode(body) as List<dynamic>;
      final segments = data.first as List<dynamic>;
      return segments
          .whereType<List<dynamic>>()
          .map((segment) => segment.first as String)
          .join();
    } catch (error) {
      lastError = error;
      await Future<void>.delayed(Duration(milliseconds: 1500 * (attempt + 1)));
    }
  }
  throw StateError('Translation request for $target failed: $lastError');
}

Future<Map<String, String>> translateLocale(
  HttpClient client,
  String target,
  List<MapEntry<String, String>> sourceMessages,
) async {
  final prepared = sourceMessages
      .map((entry) => protectMessage(entry.key, entry.value))
      .toList();
  final chunks = <List<Message>>[];
  var current = <Message>[];
  var size = 0;
  for (final message in prepared) {
    final addition = message.text.length + 20;
    if (current.isNotEmpty && size + addition > 4200) {
      chunks.add(current);
      current = <Message>[];
      size = 0;
    }
    current.add(message);
    size += addition;
  }
  if (current.isNotEmpty) chunks.add(current);

  final translated = <String, String>{};
  // Some target languages insert spaces inside angle-bracket markers.
  final marker = RegExp(r'<{2,}\s*<?(\d{4})>?\s*>{2,}\s*\n?');
  for (final chunk in chunks) {
    final payload = [
      for (var index = 0; index < chunk.length; index++)
        '<<<${index.toString().padLeft(4, '0')}>>>\n${chunk[index].text}',
    ].join('\n');
    final output = await requestTranslation(client, target, payload);
    final matches = marker.allMatches(output).toList();
    if (matches.length != chunk.length) {
      throw StateError(
        'Marker mismatch for $target: ${matches.length} != ${chunk.length}',
      );
    }
    for (var index = 0; index < matches.length; index++) {
      final match = matches[index];
      final messageIndex = int.parse(match.group(1)!);
      final end = index + 1 < matches.length
          ? matches[index + 1].start
          : output.length;
      final message = chunk[messageIndex];
      translated[message.key] = restoreMessage(
        output.substring(match.end, end),
        message.saved,
      );
    }
  }
  return translated;
}

Future<void> main(List<String> arguments) async {
  final sourceFile = File('app_en.arb');
  final source =
      (jsonDecode(await sourceFile.readAsString()) as Map<String, dynamic>)
          .cast<String, dynamic>();
  final messages = <MapEntry<String, String>>[
    for (final entry in source.entries)
      if (!entry.key.startsWith('@') && !pluralKeys.contains(entry.key))
        MapEntry(entry.key, entry.value as String),
    ...pluralParts.entries,
  ];

  final client = HttpClient()..connectionTimeout = const Duration(seconds: 45);
  try {
    var completed = 0;
    final requested = arguments
        .where((argument) => argument != '--force')
        .toSet();
    final force = arguments.contains('--force');
    final targets = requested.isEmpty
        ? localeTargets.entries
        : localeTargets.entries.where((entry) => requested.contains(entry.key));
    for (final locale in targets) {
      final outputFile = File('app_${locale.key}.arb');
      if (locale.key == 'zh' && await File('app_zh_Hans.arb').exists()) {
        final fallback =
            (jsonDecode(await File('app_zh_Hans.arb').readAsString())
                  as Map<String, dynamic>)
              ..['@@locale'] = 'zh';
        await outputFile.writeAsString(
          '${const JsonEncoder.withIndent('  ').convert(fallback)}\n',
        );
        completed++;
        stdout.writeln(
          '[${completed.toString().padLeft(2, '0')}/${targets.length}] '
          'app_zh.arb (zh_Hans fallback)',
        );
        continue;
      }
      if (!force && await outputFile.exists()) {
        final existing = jsonDecode(await outputFile.readAsString());
        if (existing is Map &&
            existing.length ==
                source.keys.where((key) => !key.startsWith('@')).length + 1) {
          completed++;
          stdout.writeln(
            '[${completed.toString().padLeft(2, '0')}/${targets.length}] '
            'app_${locale.key}.arb (existing)',
          );
          continue;
        }
      }
      final translated = await translateLocale(client, locale.value, messages);
      final output = <String, dynamic>{'@@locale': locale.key};
      for (final entry in source.entries) {
        if (entry.key.startsWith('@')) continue;
        output[entry.key] = switch (entry.key) {
          'commonSeconds' =>
            '{seconds, plural, =1{${translated['__plural_common_one']}} other{${translated['__plural_common_other']}}}',
          'homeDevicesFound' =>
            '{count, plural, =0{${translated['__plural_found_zero']}} =1{${translated['__plural_found_one']}} other{${translated['__plural_found_other']}}}',
          'homeDevicesFoundScanning' =>
            '{count, plural, =0{${translated['__plural_scan_zero']}} =1{${translated['__plural_scan_one']}} other{${translated['__plural_scan_other']}}}',
          _ => translated[entry.key],
        };
      }
      final encoder = const JsonEncoder.withIndent('  ');
      await outputFile.writeAsString('${encoder.convert(output)}\n');
      completed++;
      stdout.writeln(
        '[${completed.toString().padLeft(2, '0')}/${targets.length}] '
        'app_${locale.key}.arb',
      );
    }
  } finally {
    client.close(force: true);
  }
}
