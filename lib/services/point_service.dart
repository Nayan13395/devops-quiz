import 'package:shared_preferences/shared_preferences.dart';
import 'leaderboard_service.dart';

class PointService {
  static const String _pointsKey = "total_points";

  static Future<int> getTotalPoints() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_pointsKey) ?? 0;
  }

  static Future<void> addPoints(int points) async {
    final prefs = await SharedPreferences.getInstance();

    final total = (prefs.getInt(_pointsKey) ?? 0) + points;

    await prefs.setInt(_pointsKey, total);

    // Update leaderboard
    await LeaderboardService().saveScore(points);
  }

  static Future<void> resetPoints() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_pointsKey);
  }
}
