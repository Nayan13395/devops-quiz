import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' show Locale;

import '../models/question.dart';
import 'question_service.dart';

class LearningCardTranslation {
  const LearningCardTranslation({
    required this.command,
    required this.description,
  });

  final String command;
  final String description;
}

class LearningTranslationService {
  static final _cache = <String, Map<String, LearningCardTranslation>>{};
  static final _questionCache =
      <
        (String, Map<String, (String, int)>),
        Map<String, LearningCardTranslation>
      >{};

  static Future<Map<String, LearningCardTranslation>> loadForQuestions(
    String language,
    Map<String, (String, int)> references, {
    QuestionService? questionService,
  }) async {
    final key = (language, references);
    final cached = questionService == null ? _questionCache[key] : null;
    if (cached != null) return cached;
    final service = questionService ?? QuestionService();
    final translations = Map<String, LearningCardTranslation>.from(
      await load(language),
    );
    final banks = <String, List<Question>>{};
    final englishBanks = <String, List<Question>>{};
    for (final reference in references.values) {
      if (!banks.containsKey(reference.$1)) {
        banks[reference.$1] = await service.loadQuestions(
          Locale(language),
          reference.$1,
        );
        englishBanks[reference.$1] = language == 'en'
            ? banks[reference.$1]!
            : await service.loadQuestions(const Locale('en'), reference.$1);
      }
    }
    for (final entry in references.entries) {
      final bank = banks[entry.value.$1]!;
      final index = entry.value.$2;
      if (index < 0 || index >= bank.length) {
        throw StateError('Invalid learning question reference: ${entry.key}');
      }
      final source = bank[index];
      final english = englishBanks[entry.value.$1]![index];
      translations.remove(entry.key);
      if (!source.options.contains(source.answer) ||
          source.options.indexOf(source.answer) !=
              english.options.indexOf(english.answer) ||
          (language != 'en' && source.question == english.question)) {
        debugPrint(
          'Learning translation unavailable: $language/${entry.key}: '
          'untranslated question or misaligned answer.',
        );
        continue;
      }
      translations[entry.key] = LearningCardTranslation(
        command: source.question,
        description: source.answer,
      );
    }
    final result = Map<String, LearningCardTranslation>.unmodifiable(
      translations,
    );
    if (questionService == null) _questionCache[key] = result;
    return result;
  }

  static Future<Map<String, LearningCardTranslation>> load(
    String language,
  ) async {
    final cached = _cache[language];
    if (cached != null) return cached;
    final translations = await _load(language);
    _cache[language] = translations;
    return translations;
  }

  static Future<Map<String, LearningCardTranslation>> _load(
    String language,
  ) async {
    final decoded = jsonDecode(
      await rootBundle.loadString('assets/learning/cards_$language.json'),
    );
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Invalid learning translation catalog');
    }
    return decoded.map((id, value) {
      if (value is! Map<String, dynamic> ||
          value['command'] is! String ||
          value['description'] is! String) {
        throw FormatException('Invalid learning translation: $language/$id');
      }
      return MapEntry(
        id,
        LearningCardTranslation(
          command: value['command'] as String,
          description: value['description'] as String,
        ),
      );
    });
  }
}
