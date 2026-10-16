import 'package:shared_preferences/shared_preferences.dart';

class DailyQuizService {
  static const String key = "daily_quiz_completed";
  static const String _totalKey = "daily_quiz_total_completed";

  /// How many Daily Quizzes the user has finished in total.
  static Future<int> totalCompleted() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getInt(_totalKey) ?? 0;
  }

  static Future<bool> isCompletedToday() async {
    final prefs = await SharedPreferences.getInstance();

    final savedDate = prefs.getString(key);

    final today = DateTime.now().toIso8601String().substring(0, 10);

    return savedDate == today;
  }

  static Future<void> markCompleted() async {
    final prefs = await SharedPreferences.getInstance();

    final today = DateTime.now().toIso8601String().substring(0, 10);

    final bool firstCompletionToday = prefs.getString(key) != today;

    await prefs.setString(key, today);

    // Counted once per day so replays cannot inflate milestones.
    if (firstCompletionToday) {
      await prefs.setInt(_totalKey, (prefs.getInt(_totalKey) ?? 0) + 1);
    }
  }
}
