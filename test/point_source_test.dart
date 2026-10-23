import 'package:devops_quiz/services/leaderboard_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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
