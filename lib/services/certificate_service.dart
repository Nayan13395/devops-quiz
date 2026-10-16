import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'question_service.dart';

class CertificateInfo {
  final String category;
  final String certificateId;
  final DateTime issuedOn;
  final int averagePercent;

  const CertificateInfo({
    required this.category,
    required this.certificateId,
    required this.issuedOn,
    required this.averagePercent,
  });

  Map<String, dynamic> toJson() => {
    'id': certificateId,
    'issuedOn': issuedOn.toIso8601String(),
    'average': averagePercent,
  };

  factory CertificateInfo.fromJson(String category, Map<String, dynamic> json) {
    return CertificateInfo(
      category: category,
      certificateId: json['id'] as String,
      issuedOn: DateTime.parse(json['issuedOn'] as String),
      averagePercent: json['average'] as int,
    );
  }
}

/// Tracks finished sets per category and issues a certificate once every
/// set of a category has been completed.
class CertificateService {
  CertificateService._();

  static const String _progressKey = 'completed_sets_v1';
  static const String _certificatesKey = 'certificates_v1';
  static const String _nameKey = 'certificate_holder_name';

  static const int setsRequired = QuestionService.setsPerCategory;

  // =========================================================
  // PROGRESS
  // =========================================================

  /// Best score percentage for each finished set: {set: percent}.
  static Future<Map<int, int>> progressFor(String category) async {
    final all = await _loadProgress();

    return all[category] ?? {};
  }

  static Future<int> totalSetsCompleted() async {
    final all = await _loadProgress();

    return all.values.fold<int>(0, (sum, sets) => sum + sets.length);
  }

  /// Records a finished set. Returns the certificate when this finish
  /// completed the category for the first time, otherwise null.
  static Future<CertificateInfo?> recordSetCompletion({
    required String category,
    required int setNumber,
    required int score,
    required int totalQuestions,
  }) async {
    if (!QuestionService.categoryFiles.containsKey(category) ||
        setNumber < 1 ||
        setNumber > setsRequired ||
        totalQuestions <= 0) {
      return null;
    }

    final int percent = ((score / totalQuestions) * 100).round();

    final all = await _loadProgress();
    final sets = all.putIfAbsent(category, () => {});

    if (percent > (sets[setNumber] ?? -1)) {
      sets[setNumber] = percent;
    }

    await _saveProgress(all);

    if (sets.length < setsRequired) {
      return null;
    }

    final certificates = await _loadCertificates();

    if (certificates.containsKey(category)) {
      return null;
    }

    final DateTime now = DateTime.now();
    final int average = (sets.values.reduce((a, b) => a + b) / sets.length)
        .round();

    final info = CertificateInfo(
      category: category,
      certificateId: _buildId(category, now),
      issuedOn: now,
      averagePercent: average,
    );

    certificates[category] = info;

    await _saveCertificates(certificates);

    return info;
  }

  // =========================================================
  // CERTIFICATES
  // =========================================================

  static Future<CertificateInfo?> getCertificate(String category) async {
    return (await _loadCertificates())[category];
  }

  static Future<Map<String, CertificateInfo>> earnedCertificates() {
    return _loadCertificates();
  }

  static Future<int> certificateCount() async {
    return (await _loadCertificates()).length;
  }

  // =========================================================
  // NAME PRINTED ON THE CERTIFICATE
  // =========================================================

  static Future<String?> savedName() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(_nameKey)?.trim();

    return (name == null || name.isEmpty) ? null : name;
  }

  static Future<void> saveName(String name) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_nameKey, name.trim());
  }

  // =========================================================
  // STORAGE
  // =========================================================

  static Future<Map<String, Map<int, int>>> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_progressKey);

    if (raw == null) return {};

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;

      return decoded.map(
        (category, sets) => MapEntry(
          category,
          (sets as Map<String, dynamic>).map(
            (set, percent) => MapEntry(int.parse(set), percent as int),
          ),
        ),
      );
    } catch (_) {
      return {};
    }
  }

  static Future<void> _saveProgress(Map<String, Map<int, int>> all) async {
    final prefs = await SharedPreferences.getInstance();

    final encoded = all.map(
      (category, sets) =>
          MapEntry(category, sets.map((s, p) => MapEntry('$s', p))),
    );

    await prefs.setString(_progressKey, jsonEncode(encoded));
  }

  static Future<Map<String, CertificateInfo>> _loadCertificates() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_certificatesKey);

    if (raw == null) return {};

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;

      return decoded.map(
        (category, json) => MapEntry(
          category,
          CertificateInfo.fromJson(category, json as Map<String, dynamic>),
        ),
      );
    } catch (_) {
      return {};
    }
  }

  static Future<void> _saveCertificates(
    Map<String, CertificateInfo> certificates,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      _certificatesKey,
      jsonEncode(certificates.map((k, v) => MapEntry(k, v.toJson()))),
    );
  }

  // Stable, readable id such as DQ-DOC-20261004-4821.
  static String _buildId(String category, DateTime date) {
    final String letters = category
        .replaceAll(RegExp(r'[^A-Za-z]'), '')
        .toUpperCase();
    final String code = letters.length >= 3 ? letters.substring(0, 3) : letters;

    final String day =
        '${date.year}${date.month.toString().padLeft(2, '0')}'
        '${date.day.toString().padLeft(2, '0')}';

    int hash = 7;
    for (final unit in '$category$day'.codeUnits) {
      hash = (hash * 31 + unit) % 10000;
    }

    return 'DQ-$code-$day-${hash.toString().padLeft(4, '0')}';
  }
}
