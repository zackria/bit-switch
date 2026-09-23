import 'package:flutter/widgets.dart';

/// Returns [locale]'s own name for itself, e.g. 'Español' or '日本語'.
///
/// Intentionally independent of the app's current display locale — a
/// language's name for itself doesn't change based on what language you're
/// currently viewing the app in, which is what lets someone who can't read
/// the current UI language still find their own in the picker.
String nativeLanguageName(Locale locale) {
  switch (locale.languageCode) {
    case 'ar':
      return 'العربية';
    case 'bn':
      return 'বাংলা';
    case 'ca':
      return 'Català';
    case 'cs':
      return 'Čeština';
    case 'da':
      return 'Dansk';
    case 'de':
      return 'Deutsch';
    case 'el':
      return 'Ελληνικά';
    case 'en':
      return 'English';
    case 'es':
      return locale.countryCode == '419'
          ? 'Español (Latinoamérica)'
          : 'Español';
    case 'fi':
      return 'Suomi';
    case 'fr':
      return locale.countryCode == 'CA' ? 'Français (Canada)' : 'Français';
    case 'gu':
      return 'ગુજરાતી';
    case 'he':
      return 'עברית';
    case 'hi':
      return 'हिन्दी';
    case 'hr':
      return 'Hrvatski';
    case 'hu':
      return 'Magyar';
    case 'id':
      return 'Bahasa Indonesia';
    case 'it':
      return 'Italiano';
    case 'ja':
      return '日本語';
    case 'kn':
      return 'ಕನ್ನಡ';
    case 'ko':
      return '한국어';
    case 'ml':
      return 'മലയാളം';
    case 'mr':
      return 'मराठी';
    case 'ms':
      return 'Bahasa Melayu';
    case 'nl':
      return 'Nederlands';
    case 'no':
      return 'Norsk';
    case 'or':
      return 'ଓଡ଼ିଆ';
    case 'pa':
      return 'ਪੰਜਾਬੀ';
    case 'pl':
      return 'Polski';
    case 'pt':
      return locale.countryCode == 'BR' ? 'Português (Brasil)' : 'Português';
    case 'ro':
      return 'Română';
    case 'ru':
      return 'Русский';
    case 'sk':
      return 'Slovenčina';
    case 'sl':
      return 'Slovenščina';
    case 'sv':
      return 'Svenska';
    case 'sw':
      return 'Kiswahili';
    case 'ta':
      return 'தமிழ்';
    case 'te':
      return 'తెలుగు';
    case 'th':
      return 'ไทย';
    case 'tr':
      return 'Türkçe';
    case 'uk':
      return 'Українська';
    case 'ur':
      return 'اردو';
    case 'vi':
      return 'Tiếng Việt';
    case 'zh':
      if (locale.scriptCode == 'Hant') return '繁體中文';
      if (locale.scriptCode == 'Hans') return '简体中文';
      return '中文';
    default:
      return locale.languageCode;
  }
}
