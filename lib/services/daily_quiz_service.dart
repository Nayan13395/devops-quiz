import 'package:shared_preferences/shared_preferences.dart';

class DailyQuizService {
  static const String key = "daily_quiz_completed";

  static Future<bool> isCompletedToday() async {
    final prefs = await SharedPreferences.getInstance();

    final savedDate = prefs.getString(key);

    final today = DateTime.now().toIso8601String().substring(0, 10);

    return savedDate == today;
  }

  static Future<void> markCompleted() async {
    final prefs = await SharedPreferences.getInstance();

    final today = DateTime.now().toIso8601String().substring(0, 10);

    await prefs.setString(key, today);
  }
}
