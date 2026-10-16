import 'package:shared_preferences/shared_preferences.dart';
import '../models/streak_result.dart';
import 'point_service.dart';

class StreakService {
  static const String _lastOpenKey = "last_open_date";
  static const String _streakKey = "current_streak";

  static Future<StreakResult> checkDailyReward() async {
    final prefs = await SharedPreferences.getInstance();

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);

    final lastOpenString = prefs.getString(_lastOpenKey);

    int streak = prefs.getInt(_streakKey) ?? 0;

    bool showReward = false;
    bool streakBroken = false;
    int reward = 0;

    if (lastOpenString == null) {
      // First launch
      streak = 1;
      reward = 100;
      showReward = true;
    } else {
      final lastOpen = DateTime.parse(lastOpenString);
      final lastDate = DateTime(lastOpen.year, lastOpen.month, lastOpen.day);

      final difference = todayDate.difference(lastDate).inDays;

      if (difference == 0) {
        // Already opened today
        showReward = false;
      } else if (difference == 1) {
        // Continue streak
        streak++;
        reward = streak * 100;
        showReward = true;
      } else {
        // Streak broken
        streak = 1;
        reward = 100;
        streakBroken = true;
        showReward = true;
      }
    }

    if (showReward) {
      await PointService.addPoints(reward);

      await prefs.setString(_lastOpenKey, todayDate.toIso8601String());

      await prefs.setInt(_streakKey, streak);
    }

    final totalPoints = await PointService.getTotalPoints();

    return StreakResult(
      streak: streak,
      reward: reward,
      totalPoints: totalPoints,
      showReward: showReward,
      streakBroken: streakBroken,
    );
  }

  static Future<int> getCurrentStreak() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_streakKey) ?? 0;
  }

  static Future<bool> hasStreakToSave({DateTime? date}) async {
    final prefs = await SharedPreferences.getInstance();
    if ((prefs.getInt(_streakKey) ?? 0) <= 0) return false;

    final lastOpenString = prefs.getString(_lastOpenKey);
    if (lastOpenString == null) return false;

    final lastOpen = DateTime.tryParse(lastOpenString);
    if (lastOpen == null) return false;

    final now = date ?? DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastDate = DateTime(lastOpen.year, lastOpen.month, lastOpen.day);
    final daysSinceOpen = today.difference(lastDate).inDays;

    return daysSinceOpen == 0 || daysSinceOpen == 1;
  }
}
