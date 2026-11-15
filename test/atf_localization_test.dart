import 'dart:convert';
import 'dart:io';

import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'ATF: every selectable locale supplies every UI message and placeholder',
    () async {
      final english =
          jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
              as Map<String, dynamic>;
      final keys = english.keys.where((key) => !key.startsWith('@')).toList();
      final placeholders = RegExp(r'\{[A-Za-z][A-Za-z0-9_]*\}');
      for (final language in LanguageProvider.availableLanguages) {
        final data =
            jsonDecode(
                  File('lib/l10n/app_${language.code}.arb').readAsStringSync(),
                )
                as Map<String, dynamic>;
        expect(data['@@locale'], language.code);
        for (final key in keys) {
          expect(data[key], isA<String>(), reason: '${language.code}/$key');
          expect(
            (data[key] as String).trim(),
            isNotEmpty,
            reason: '${language.code}/$key',
          );
          expect(
            placeholders
                .allMatches(data[key] as String)
                .map((match) => match[0])
                .toSet(),
            placeholders
                .allMatches(english[key] as String)
                .map((match) => match[0])
                .toSet(),
            reason: '${language.code}/$key',
          );
        }
        expect(
          AppLocalizations.supportedLocales.any(
            (locale) => locale.languageCode == language.code,
          ),
          isTrue,
        );
      }
    },
  );
}
