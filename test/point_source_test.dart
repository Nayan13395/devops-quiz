import 'package:devops_quiz/services/leaderboard_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

class _FailingPointStore extends InMemorySharedPreferencesStore {
  _FailingPointStore() : super.withData({'flutter.total_points': 20});

  @override
  Future<bool> setValue(String valueType, String key, Object value) async =>
      false;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'failed hint debits report failure and restore the stored balance',
    () async {
      SharedPreferences.setMockInitialValues({});
      SharedPreferencesStorePlatform.instance = _FailingPointStore();
      await expectLater(PointService.spendPoints(20), throwsStateError);
      expect(await PointService.getTotalPoints(), 20);
    },
  );

  test('hints debit the wallet without reducing gross earned points', () async {
    SharedPreferences.setMockInitialValues({});
    await PointService.addPoints(100, source: PointSource.game);
    expect(await PointService.spendPoints(20), isTrue);
    expect(await PointService.getTotalPoints(), 80);
    expect((await PointService.getEarnedPoints())[PointSource.game], 100);
    final history = await LeaderboardService().getLeaderboard();
    expect(history.single['points'], 100);
  });

  test(
    'concurrent hints cannot overspend and additions are preserved',
    () async {
      SharedPreferences.setMockInitialValues({'total_points': 20});
      final purchases = await Future.wait([
        PointService.spendPoints(20),
        PointService.spendPoints(20),
      ]);
      expect(purchases, [true, false]);
      expect(await PointService.getTotalPoints(), 0);
      await Future.wait([
        PointService.addPoints(100, source: PointSource.game),
        PointService.spendPoints(20),
        PointService.addLocalPoints(100),
      ]);
      expect(await PointService.getTotalPoints(), 180);
    },
  );

  test(
    'hints can spend leaderboard rewards without a negative total',
    () async {
      SharedPreferences.setMockInitialValues({});
      await PointService.applyLeaderboardReward('2026-11-13', 20);
      expect(await PointService.spendPoints(20), isTrue);
      expect(await PointService.getTotalPoints(), 0);
      expect(await PointService.spendPoints(20), isFalse);
      expect(await PointService.getTotalPoints(), 0);
    },
  );

  test(
    'quiz and game counters preserve total and daily history behavior',
    () async {
      SharedPreferences.setMockInitialValues({});
      await PointService.addPoints(30, source: PointSource.quiz);
      await PointService.addPoints(50, source: PointSource.game);
      await PointService.addPoints(10);
      expect(await PointService.getTotalPoints(), 90);
      expect(await PointService.getEarnedPoints(), {
        PointSource.quiz: 30,
        PointSource.game: 50,
      });
      final history = await LeaderboardService().getLeaderboard();
      expect(history.single['points'], 90);
    },
  );

  test(
    'legacy points and leaderboard rewards are not guessed into categories',
    () async {
      SharedPreferences.setMockInitialValues({'total_points': 1200});
      expect(await PointService.getEarnedPoints(), {
        PointSource.quiz: 0,
        PointSource.game: 0,
      });
      expect(await PointService.getTotalPoints(), 1200);
      await PointService.applyLeaderboardReward('2026-10-01', 100);
      expect(await PointService.getTotalPoints(), 1300);
      expect(await PointService.getEarnedPoints(), {
        PointSource.quiz: 0,
        PointSource.game: 0,
      });
      await PointService.addLocalPoints(20, source: PointSource.game);
      expect((await PointService.getEarnedPoints())[PointSource.game], 20);
      expect(await PointService.getTotalPoints(), 1320);
      await PointService.resetPoints();
      expect(await PointService.getTotalPoints(), 0);
      expect(await PointService.getEarnedPoints(), {
        PointSource.quiz: 0,
        PointSource.game: 0,
      });
    },
  );
}
