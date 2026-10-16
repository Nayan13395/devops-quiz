import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'l10n/app_localizations.dart';

class AppLanguage {
  final String code;
  final String nativeName;
  final String flag;

  const AppLanguage(this.code, this.nativeName, this.flag);
}

class LanguageProvider extends ChangeNotifier {
  static const List<AppLanguage> languages = [
    AppLanguage('en', 'English', '🇬🇧'),
    AppLanguage('hi', 'हिन्दी', '🇮🇳'),
    AppLanguage('mr', 'मराठी', '🇮🇳'),
    AppLanguage('es', 'Español', '🇪🇸'),
    AppLanguage('fr', 'Français', '🇫🇷'),
    AppLanguage('de', 'Deutsch', '🇩🇪'),
    AppLanguage('pt', 'Português', '🇧🇷'),
    AppLanguage('ar', 'العربية', '🇸🇦'),
    AppLanguage('id', 'Bahasa Indonesia', '🇮🇩'),
    AppLanguage('ru', 'Русский', '🇷🇺'),
    AppLanguage('ja', '日本語', '🇯🇵'),
    AppLanguage('zh', '中文', '🇨🇳'),
    AppLanguage('bn', 'বাংলা', '🇧🇩'),
    AppLanguage('as', 'অসমীয়া', '🇮🇳'),
    AppLanguage('brx', 'बड़ो', '🇮🇳'),
    AppLanguage('doi', 'डोगरी', '🇮🇳'),
    AppLanguage('gu', 'ગુજરાતી', '🇮🇳'),
    AppLanguage('kn', 'ಕನ್ನಡ', '🇮🇳'),
    AppLanguage('ks', 'کٲشُر', '🇮🇳'),
    AppLanguage('gom', 'कोंकणी', '🇮🇳'),
    AppLanguage('mai', 'मैथिली', '🇮🇳'),
    AppLanguage('ml', 'മലയാളം', '🇮🇳'),
    AppLanguage('mni', 'ꯃꯩꯇꯩꯂꯣꯟ', '🇮🇳'),
    AppLanguage('ne', 'नेपाली', '🇮🇳'),
    AppLanguage('or', 'ଓଡ଼ିଆ', '🇮🇳'),
    AppLanguage('pa', 'ਪੰਜਾਬੀ', '🇮🇳'),
    AppLanguage('sa', 'संस्कृतम्', '🇮🇳'),
    AppLanguage('sat', 'ᱥᱟᱱᱛᱟᱲᱤ', '🇮🇳'),
    AppLanguage('sd', 'سنڌي', '🇮🇳'),
    AppLanguage('ta', 'தமிழ்', '🇮🇳'),
    AppLanguage('te', 'తెలుగు', '🇮🇳'),
    AppLanguage('ur', 'اردو', '🇮🇳'),
  ];

  /// Show a language only after gen-l10n has produced its UI bundle.
  static List<AppLanguage> get availableLanguages {
    final supported = AppLocalizations.supportedLocales
        .map((locale) => locale.languageCode)
        .toSet();

    return languages
        .where((language) => supported.contains(language.code))
        .toList();
  }

  static bool isSupported(String code) =>
      availableLanguages.any((language) => language.code == code);

  static bool isUiAvailable(String code) => AppLocalizations.supportedLocales
      .any((locale) => locale.languageCode == code);

  static AppLanguage languageFor(String code) => languages.firstWhere(
    (language) => language.code == code,
    orElse: () => languages.first,
  );

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  LanguageProvider() {
    loadLanguage();
  }

  Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();

    String? languageCode = prefs.getString('languageCode');

    // First launch: follow the phone's language when it is supported.
    if (languageCode == null || !isSupported(languageCode)) {
      final String deviceCode =
          WidgetsBinding.instance.platformDispatcher.locale.languageCode;

      languageCode = isSupported(deviceCode) ? deviceCode : 'en';
    }

    _locale = Locale(languageCode);
    notifyListeners();
  }

  Future<void> changeLanguage(String languageCode) async {
    if (!isSupported(languageCode)) return;

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('languageCode', languageCode);

    _locale = Locale(languageCode);

    notifyListeners();
  }
}
