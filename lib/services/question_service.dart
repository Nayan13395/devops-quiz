import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../models/question.dart';

class QuestionService {
  static const String dailyQuizCategory = 'DailyQuiz';

  /// Number of question sets every category offers.
  static const int setsPerCategory = 5;

  static const Set<String> supportedQuestionLanguages = {
    'en',
    'hi',
    'mr',
    'es',
    'fr',
    'de',
    'pt',
    'ar',
    'id',
    'ru',
    'ja',
    'zh',
    'bn',
    'as',
    'brx',
    'doi',
    'gu',
    'kn',
    'ks',
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

  Future<List<Question>> loadQuestions(Locale locale, String category) async {
    final String language = questionLanguage(locale);

    if (category == dailyQuizCategory || category == 'DevOps') {
      return _loadAllCategories(language);
    }

    final config = categoryFiles[category];

    if (config == null) {
      return _loadFile('assets/questions_$language.json');
    }

    return _loadCategory(config, language);
  }

  Future<List<Question>> _loadAllCategories(String language) async {
    final List<Question> pool = [];

    for (final config in categoryFiles.values) {
      try {
        pool.addAll(await _loadCategory(config, language));
      } catch (e) {
        debugPrint('Daily quiz skipped ${config['folder']}: $e');
      }
    }

    return pool;
  }

  Future<List<Question>> _loadCategory(
    Map<String, String> config,
    String language,
  ) async {
    String path(String lang) =>
        'assets/questions/${config['folder']}/${config['file']}_$lang.json';

    if (language == 'en') {
      return _loadFile(path('en'));
    }

    final List<Question> english = await _loadFile(path('en'));
    List<Question> questions;

    try {
      questions = await _loadFile(path(language));
    } catch (_) {
      // Until this locale's translation is generated, keep the quiz usable.
      return english;
    }

    // Sets without a translation are served in English.
    final Set<int> translatedSets = questions.map((q) => q.set).toSet();

    return [
      ...questions,
      ...english.where((q) => !translatedSets.contains(q.set)),
    ];
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
