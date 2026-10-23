import 'package:flutter/cupertino.dart' show CupertinoLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/app_localizations.dart';

const appLocalizationDelegates = <LocalizationsDelegate<dynamic>>[
  AppLocalizations.delegate,
  _MaterialFallbackDelegate(),
  GlobalMaterialLocalizations.delegate,
  _CupertinoFallbackDelegate(),
  GlobalCupertinoLocalizations.delegate,
  _WidgetsFallbackDelegate(),
  GlobalWidgetsLocalizations.delegate,
];

const _rightToLeftLanguages = {'ar', 'fa', 'he', 'ps', 'ur', 'sd', 'ks'};

Locale _controlLocale(Locale locale) =>
    Locale(_rightToLeftLanguages.contains(locale.languageCode) ? 'ur' : 'en');

class _MaterialFallbackDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MaterialFallbackDelegate();

  @override
  bool isSupported(Locale locale) =>
      !GlobalMaterialLocalizations.delegate.isSupported(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) =>
      GlobalMaterialLocalizations.delegate.load(_controlLocale(locale));

  @override
  bool shouldReload(_MaterialFallbackDelegate old) => false;
}

class _CupertinoFallbackDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _CupertinoFallbackDelegate();

  @override
  bool isSupported(Locale locale) =>
      !GlobalCupertinoLocalizations.delegate.isSupported(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      GlobalCupertinoLocalizations.delegate.load(_controlLocale(locale));

  @override
  bool shouldReload(_CupertinoFallbackDelegate old) => false;
}

class _WidgetsFallbackDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _WidgetsFallbackDelegate();

  @override
  bool isSupported(Locale locale) =>
      _rightToLeftLanguages.contains(locale.languageCode) ||
      !GlobalWidgetsLocalizations.delegate.isSupported(locale);

  @override
  Future<WidgetsLocalizations> load(Locale locale) =>
      GlobalWidgetsLocalizations.delegate.load(_controlLocale(locale));

  @override
  bool shouldReload(_WidgetsFallbackDelegate old) => false;
}
