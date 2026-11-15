import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../models/question.dart';

class QuestionService {
  static const String dailyQuizCategory = 'DailyQuiz';

  /// Number of question sets every category offers.
  static const int setsPerCategory = 5;
  static const int questionsPerSet = 25;

  static const Set<String> supportedQuestionLanguages = {
    'en',
    'hi',
    'mr',
    'es',
    'fr',
    'de',
    'it',
    'pt',
    'ar',
    'id',
    'tr',
    'ru',
    'ja',
    'zh',
    'bn',
    'as',
    'doi',
    'gu',
    'kn',
    'gom',
    'mai',
    'ml',
    'mni',
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

  // Folder names must match the asset folders exactly (Android is case-sensitive).
  static const Map<String, Map<String, String>> categoryFiles = {
    "AWS": {"folder": "AWS", "file": "aws"},
    "Azure": {"folder": "Azure", "file": "azure"},
    "GCP": {"folder": "GCP", "file": "gcp"},
    "Oracle Cloud": {"folder": "Oracle", "file": "oracle"},
    "IBM Cloud": {"folder": "IBM", "file": "ibm"},
    "Multi Cloud": {"folder": "Multicloud", "file": "multicloud"},
    "Hybrid Cloud": {"folder": "Hybridcloud", "file": "hybridcloud"},
    "Linux": {"folder": "Linux", "file": "linux"},
    "Docker": {"folder": "Docker", "file": "docker"},
    "Kubernetes": {"folder": "K8s", "file": "k8s"},
    "Networking": {"folder": "Networking", "file": "networking"},
    "Git": {"folder": "Git", "file": "git"},
    "Jenkins": {"folder": "Jenkins", "file": "jenkins"},
    "Terraform": {"folder": "Terraform", "file": "terraform"},
    "Ansible": {"folder": "Ansible", "file": "ansible"},

    // --- SCRIPTING CATEGORIES ---
    "Bash": {"folder": "BASH", "file": "bash"},
    "Python": {"folder": "Python", "file": "python"},
    "Perl": {"folder": "Perl", "file": "perl"},
    "PowerShell": {"folder": "Powershell", "file": "powershell"},
    "JavaScript": {"folder": "Javascript", "file": "javascript"},
    "Ruby": {"folder": "Ruby", "file": "ruby"},
  };

  static List<String> get categories => categoryFiles.keys.toList();

  /// Resolve the question-bank locale independently of UI copy. A translated
  /// bank can be added for any supported UI locale without changing this map.
  static String questionLanguage(Locale locale) {
    final String code = locale.languageCode.toLowerCase();

    return supportedQuestionLanguages.contains(code) ? code : 'en';
  }

  static List<Question> buildSetQuiz(
    List<Question> bank,
    int setNumber, {
    Random? random,
  }) {
    if (setNumber < 1 || setNumber > setsPerCategory) {
      throw RangeError.range(setNumber, 1, setsPerCategory, 'setNumber');
    }
    final selected = bank
        .where((question) => question.set == setNumber)
        .toList();
    final uniqueQuestions = selected
        .map(
          (question) =>
              question.question.trim().replaceAll(RegExp(r'\s+'), ' '),
        )
        .toSet();
    if (selected.length != questionsPerSet ||
        uniqueQuestions.length != questionsPerSet ||
        selected.map((question) => question.category).toSet().length != 1) {
      throw FormatException(
        'Set $setNumber must contain exactly $questionsPerSet distinct questions from one category.',
      );
    }
    // Shuffle one complete deck, never randomly draw a new question per turn.
    return selected..shuffle(random);
  }

  Future<List<Question>> loadQuestions(Locale locale, String category) async {
    final String language = questionLanguage(locale);

    if (category == dailyQuizCategory ||
        category == 'DevOps' ||
        category == 'RewardGame') {
      return _loadAllCategories(language);
    }

    final config = categoryFiles[category];

    if (config == null) {
      throw ArgumentError.value(
        category,
        'category',
        'Unknown question category',
      );
    }

    return _loadCategory(category, config, language);
  }

  Future<List<Question>> _loadAllCategories(String language) async {
    final categoryQuestions = await Future.wait(
      categoryFiles.entries.map(
        (entry) => _loadCategory(entry.key, entry.value, language),
      ),
    );

    return categoryQuestions.expand((questions) => questions).toList();
  }

  Future<List<Question>> _loadCategory(
    String category,
    Map<String, String> config,
    String language,
  ) async {
    final sets = await Future.wait([
      for (var number = 1; number <= setsPerCategory; number++)
        _loadSet(config['folder']!, language, number),
    ]);
    return _identify(sets.expand((questions) => questions).toList(), category);
  }

  static String assetPath(String folder, String language, int setNumber) =>
      'assets/questions/$folder/$language/set$setNumber/questions.json';

  Future<List<Question>> _loadSet(
    String folder,
    String language,
    int number,
  ) async {
    final questions = await _loadFile(assetPath(folder, language, number));
    if (questions.length != questionsPerSet ||
        questions.any((question) => question.set != number) ||
        questions.map((question) => question.question.trim()).toSet().length !=
            questionsPerSet) {
      throw FormatException(
        '$folder/$language/set$number must contain 25 distinct questions from that set.',
      );
    }
    return questions;
  }

  // Category, set and position are shared by the aligned locale banks.
  static List<Question> _identify(List<Question> questions, String bank) {
    final positions = <int, int>{};
    return questions.map((question) {
      final position = positions.update(
        question.set,
        (value) => value + 1,
        ifAbsent: () => 0,
      );
      return question.withId('$bank:${question.set}:$position');
    }).toList();
  }

  Future<List<Question>> _loadFile(String fileName) async {
    final jsonString = await rootBundle.loadString(fileName);
    final List<dynamic> data = json.decode(jsonString);

    return data.map((e) => Question.fromJson(e)).toList();
  }

  /// Number of questions in [setNumber] for the given category.
  Future<int> countSetQuestions(
    Locale locale,
    String category,
    int setNumber,
  ) async {
    final all = await loadQuestions(locale, category);

    return all.where((q) => q.set == setNumber).length;
  }

  /// Picks [count] questions covering as many categories as possible.
  /// The selection is the same for every user on a given day.
  static List<Question> buildDailyQuiz(
    List<Question> pool, {
    int count = 25,
    DateTime? date,
  }) {
    final DateTime day = date ?? DateTime.now();
    final Random random = Random(day.year * 10000 + day.month * 100 + day.day);

    final Set<String> seen = {};
    final Map<String, List<Question>> byCategory = {};

    for (final question in pool) {
      if (!seen.add(question.question)) continue;

      byCategory.putIfAbsent(question.category, () => []).add(question);
    }

    final List<String> names = byCategory.keys.toList()..sort();

    for (final name in names) {
      byCategory[name]!.shuffle(random);
    }

    names.shuffle(random);

    final List<Question> picked = [];

    for (int round = 0; picked.length < count; round++) {
      bool addedAny = false;

      for (final name in names) {
        final list = byCategory[name]!;

        if (round >= list.length) continue;

        picked.add(list[round]);
        addedAny = true;

        if (picked.length == count) break;
      }

      if (!addedAny) break;
    }

    picked.shuffle(random);

    return picked;
  }
}
