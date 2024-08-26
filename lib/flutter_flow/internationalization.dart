import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'unvtxnga': {
      'en': 'Voter Advice Application',
      'ar': 'طلب المشورة للناخبين',
    },
    '44cpvh7g': {
      'en': 'Voter Compass',
      'ar': '',
    },
    'jw49qfj8': {
      'en':
          'Our app is designed to help you navigate the complexities of elections by matching your views with those of candidates and political parties. By answering a few questions about your political preferences, you\'ll receive personalized recommendations that align with your values.',
      'ar': '',
    },
    'akf6x5on': {
      'en': 'Start  quiz',
      'ar': 'ابدأ الاختبار',
    },
    '2i8rzl5s': {
      'en': 'share',
      'ar': '',
    },
    'sn3zdb7u': {
      'en': 'Home',
      'ar': '',
    },
  },
  // QuestionPage
  {
    'a0axn9vi': {
      'en': 'Voter Advice Application',
      'ar': '',
    },
    '7iufwmmu': {
      'en': 'Back',
      'ar': 'عودة',
    },
    '0l89ikkn': {
      'en': 'Save & Next',
      'ar': '',
    },
    'x1o88i2q': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
    },
    '5zud9qes': {
      'en': 'Home',
      'ar': '',
    },
  },
  // page
  {
    'k8sl3vhd': {
      'en': 'Page Title',
      'ar': '',
    },
    '0a2hci8s': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'lfvs7c5w': {
      'en': '',
      'ar': '',
    },
    'bm8wubl9': {
      'en': '',
      'ar': '',
    },
    '3739okt5': {
      'en': '',
      'ar': '',
    },
    'my0113x9': {
      'en': '',
      'ar': '',
    },
    'b7jv0gce': {
      'en': '',
      'ar': '',
    },
    '3nuqnteb': {
      'en': '',
      'ar': '',
    },
    'ua03e8i2': {
      'en': '',
      'ar': '',
    },
    'h20rac2m': {
      'en': '',
      'ar': '',
    },
    'tbrjvcmw': {
      'en': '',
      'ar': '',
    },
    'o93km3vl': {
      'en': '',
      'ar': '',
    },
    'uas6yuqb': {
      'en': '',
      'ar': '',
    },
    'weebvdm4': {
      'en': '',
      'ar': '',
    },
    'bkem4rgp': {
      'en': '',
      'ar': '',
    },
    '0c3bc44q': {
      'en': '',
      'ar': '',
    },
    'c0nq67gi': {
      'en': '',
      'ar': '',
    },
    'u65tg3lz': {
      'en': '',
      'ar': '',
    },
    '2zs7xspb': {
      'en': '',
      'ar': '',
    },
    'c8mtxs16': {
      'en': '',
      'ar': '',
    },
    'o2ob12oi': {
      'en': '',
      'ar': '',
    },
    'mgaxh0ca': {
      'en': '',
      'ar': '',
    },
    '8gtujukd': {
      'en': '',
      'ar': '',
    },
    '4qm8mmn6': {
      'en': '',
      'ar': '',
    },
    '5yaqafxr': {
      'en': '',
      'ar': '',
    },
    'sdoovanv': {
      'en': '',
      'ar': '',
    },
    '4vh1x1ty': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
