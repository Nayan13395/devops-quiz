import 'dart:math';

import 'package:flutter/widgets.dart';

import '../models/question.dart';
import 'question_service.dart';

class TrueFalseBlitzStatement {
  const TrueFalseBlitzStatement({
    required this.category,
    required this.question,
    required this.answer,
    required this.isTrue,
  });

  final String category;
  final String question;
  final String answer;
  final bool isTrue;
}

class TrueFalseBlitzService {
  TrueFalseBlitzService._();

  static final Map<String, Future<List<TrueFalseBlitzStatement>>> _dailyDecks =
      {};

  static Future<List<TrueFalseBlitzStatement>> loadDailyDeck(
    Locale locale, {
    DateTime? date,
  }) async {
    final day = date ?? DateTime.now();
    final language = QuestionService.questionLanguage(locale);
    final cacheKey = '$language-${day.year}-${day.month}-${day.day}';
    final cached = _dailyDecks[cacheKey];
    if (cached != null) return cached;

    final future = QuestionService()
        .loadQuestions(locale, QuestionService.dailyQuizCategory)
        .then((questions) => buildDailyDeck(questions, date: day));
    _dailyDecks[cacheKey] = future;
    try {
      return await future;
    } catch (_) {
      _dailyDecks.remove(cacheKey);
      rethrow;
    }
  }

  static List<TrueFalseBlitzStatement> buildDailyDeck(
    List<Question> pool, {
    DateTime? date,
  }) {
    final day = date ?? DateTime.now();
    final random = Random(day.year * 10000 + day.month * 100 + day.day);
    final questionsByCategory = <String, List<Question>>{};
    final seen = <String>{};

    for (final question in pool) {
      final key = '${question.category}\u0000${question.question}';
      if (question.question.trim().isEmpty ||
          question.answer.trim().isEmpty ||
          !question.options.contains(question.answer) ||
          question.options
              .where((option) => option != question.answer)
              .isEmpty ||
          !seen.add(key)) {
        continue;
      }
      questionsByCategory
          .putIfAbsent(question.category, () => [])
          .add(question);
    }

    final categories = questionsByCategory.keys.toList()..sort();
    final deck = <TrueFalseBlitzStatement>[];
    for (final category in categories) {
      final questions = questionsByCategory[category]!..shuffle(random);
      final trueQuestion = questions.first;
      final falseQuestion = questions.length > 1 ? questions[1] : trueQuestion;
      final wrongAnswers = falseQuestion.options
          .where((option) => option != falseQuestion.answer)
          .toList();
      if (wrongAnswers.isEmpty) continue;

      deck.add(
        TrueFalseBlitzStatement(
          category: category,
          question: trueQuestion.question,
          answer: trueQuestion.answer,
          isTrue: true,
        ),
      );
      deck.add(
        TrueFalseBlitzStatement(
          category: category,
          question: falseQuestion.question,
          answer: wrongAnswers[random.nextInt(wrongAnswers.length)],
          isTrue: false,
        ),
      );
    }

    deck.shuffle(random);
    return deck;
  }
}
