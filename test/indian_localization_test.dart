import 'dart:convert';
import 'dart:io';

import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

const indianLanguageCodes = {
  'as',
  'bn',
  'brx',
  'doi',
  'gu',
  'hi',
  'kn',
  'ks',
  'gom',
  'mai',
  'ml',
  'mni',
  'mr',
  'ne',
  'or',
  'pa',
  'sa',
  'sat',
  'sd',
  'ta',
  'te',
  'ur',
};

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'all 22 scheduled Indian languages have selectable generated UI bundles',
    () async {
      for (final code in indianLanguageCodes) {
        expect(LanguageProvider.isUiAvailable(code), isTrue, reason: code);
        expect(
          LanguageProvider.availableLanguages.any(
            (language) => language.code == code,
          ),
          isTrue,
          reason: code,
        );
        final bundle = await AppLocalizations.delegate.load(Locale(code));
        expect(bundle.settings, isNotEmpty);
        expect(bundle.startQuiz, isNotEmpty);
        expect(bundle.welcomeToDevOpsQuiz, isNotEmpty);
      }
    },
  );

  test('Indian ARBs preserve locale, message keys and ICU placeholders', () {
    final english =
        jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
            as Map<String, dynamic>;
    final keys = english.keys.where((key) => !key.startsWith('@')).toSet();
    final placeholder = RegExp(r'\{[A-Za-z][A-Za-z0-9_]*\}');
    for (final code in indianLanguageCodes) {
      final file = File('lib/l10n/app_$code.arb');
      expect(file.existsSync(), isTrue, reason: code);
      final localized =
          jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      expect(localized['@@locale'], code);
      for (final key in keys) {
        expect(localized[key], isA<String>(), reason: '$code/$key');
        expect(
          (localized[key] as String).trim(),
          isNotEmpty,
          reason: '$code/$key',
        );
        expect(
          placeholder
              .allMatches(localized[key] as String)
              .map((match) => match[0])
              .toList()
            ..sort(),
          placeholder
              .allMatches(english[key] as String)
              .map((match) => match[0])
              .toList()
            ..sort(),
          reason: '$code/$key',
        );
      }
    }
  });

  test('Indian language choices persist across provider recreation', () async {
    SharedPreferences.setMockInitialValues({});
    for (final code in indianLanguageCodes) {
      final provider = LanguageProvider();
      await provider.loadLanguage();
      await provider.changeLanguage(code);
      expect(provider.locale.languageCode, code);
      provider.dispose();
      final restored = LanguageProvider();
      await restored.loadLanguage();
      expect(restored.locale.languageCode, code);
      restored.dispose();
    }
  });

  testWidgets(
    'all Indian locales render Flutter controls with correct text direction',
    (tester) async {
      for (final code in indianLanguageCodes) {
        await tester.pumpWidget(
          MaterialApp(
            locale: Locale(code),
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: appLocalizationDelegates,
            home: Builder(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context)!.settings),
                ),
                body: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.language,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(AppLocalizations.of(context)!.ok),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();
        final field = tester.element(find.byType(TextField));
        expect(
          Directionality.of(field),
          {'ks', 'sd', 'ur'}.contains(code)
              ? TextDirection.rtl
              : TextDirection.ltr,
          reason: code,
        );
        expect(MaterialLocalizations.of(field).okButtonLabel, isNotEmpty);
        expect(tester.takeException(), isNull, reason: code);
        await tester.pumpWidget(const SizedBox.shrink());
      }
    },
  );
}
