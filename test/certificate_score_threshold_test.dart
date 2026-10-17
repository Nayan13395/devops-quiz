import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:devops_quiz/services/certificate_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('a score below 65 percent is not recorded', () async {
    SharedPreferences.setMockInitialValues({});

    final certificate = await CertificateService.recordSetCompletion(
      category: 'Linux',
      setNumber: 1,
      score: 129,
      totalQuestions: 200,
    );

    expect(certificate, isNull);
    expect(await CertificateService.progressFor('Linux'), isEmpty);
    expect(await CertificateService.totalSetsCompleted(), 0);
  });

  test('certificate requires at least 65 percent in every set', () async {
    SharedPreferences.setMockInitialValues({});

    for (int set = 1; set < CertificateService.setsRequired; set++) {
      expect(
        await CertificateService.recordSetCompletion(
          category: 'Linux',
          setNumber: set,
          score: 13,
          totalQuestions: 20,
        ),
        isNull,
      );
    }

    expect(
      await CertificateService.recordSetCompletion(
        category: 'Linux',
        setNumber: CertificateService.setsRequired,
        score: 12,
        totalQuestions: 20,
      ),
      isNull,
    );
    expect(await CertificateService.certificateCount(), 0);
    expect((await CertificateService.progressFor('Linux')).keys.toSet(), {
      1,
      2,
      3,
      4,
    });

    final certificate = await CertificateService.recordSetCompletion(
      category: 'Linux',
      setNumber: CertificateService.setsRequired,
      score: 13,
      totalQuestions: 20,
    );

    expect(certificate, isNotNull);
    expect(certificate!.averagePercent, 65);
    expect(await CertificateService.certificateCount(), 1);
  });

  test('legacy certificates with a failing set are removed', () async {
    SharedPreferences.setMockInitialValues({
      'completed_sets_v1': jsonEncode({
        'Linux': {'1': 64, '2': 65, '3': 80, '4': 65, '5': 65},
      }),
      'certificates_v1': jsonEncode({
        'Linux': {
          'id': 'DQ-LIN-20261017-0001',
          'issuedOn': DateTime(2026, 10, 17).toIso8601String(),
          'average': 68,
        },
      }),
    });

    expect(await CertificateService.getCertificate('Linux'), isNull);
    expect(await CertificateService.certificateCount(), 0);
    expect((await CertificateService.progressFor('Linux')).keys.toSet(), {
      2,
      3,
      4,
      5,
    });
  });
}
