import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/achievement.dart';
import 'point_service.dart';
import 'streak_service.dart';

class AchievementService {
  static const String _achievementKey = "achievements";
  static const String _quizCountKey = "quiz_count";

  static final List<Achievement> _allAchievements = [
    const Achievement(
      id: "first_quiz",
      title: "First Quiz",
      description: "Complete your first quiz.",
      icon: "🎉",
      reward: 100,
      unlocked: false,
      current: 0,
      target: 1,
    ),
    const Achievement(
      id: "quiz_10",
      title: "Quiz Explorer",
      description: "Complete 10 quizzes.",
      icon: "📚",
      reward: 500,
      unlocked: false,
      current: 0,
      target: 10,
    ),
    const Achievement(
      id: "streak_7",
      title: "7 Day Streak",
      description: "Maintain a 7-day streak.",
      icon: "🔥",
      reward: 500,
      unlocked: false,
      current: 0,
      target: 7,
    ),
    // Streak Achievements
    const Achievement(
      id: "streak_14",
      title: "14 Day Streak",
      description: "Maintain a 14-day streak.",
      icon: "🔥",
      reward: 750,
      unlocked: false,
      current: 0,
      target: 14,
    ),

    const Achievement(
      id: "streak_21",
      title: "21 Day Streak",
      description: "Maintain a 21-day streak.",
      icon: "🔥",
      reward: 1000,
      unlocked: false,
      current: 0,
      target: 21,
    ),

    const Achievement(
      id: "streak_28",
      title: "28 Day Streak",
      description: "Maintain a 28-day streak.",
      icon: "🔥",
      reward: 1250,
      unlocked: false,
      current: 0,
      target: 28,
    ),

    const Achievement(
      id: "streak_30",
      title: "30 Day Streak",
      description: "Maintain a 30-day streak.",
      icon: "🔥",
      reward: 1500,
      unlocked: false,
      current: 0,
      target: 30,
    ),

    const Achievement(
      id: "streak_35",
      title: "35 Day Streak",
      description: "Maintain a 35-day streak.",
      icon: "🔥",
      reward: 1750,
      unlocked: false,
      current: 0,
      target: 35,
    ),

    const Achievement(
      id: "streak_42",
      title: "42 Day Streak",
      description: "Maintain a 42-day streak.",
      icon: "🔥",
      reward: 2000,
      unlocked: false,
      current: 0,
      target: 42,
    ),

    const Achievement(
      id: "streak_48",
      title: "48 Day Streak",
      description: "Maintain a 48-day streak.",
      icon: "🔥",
      reward: 2250,
      unlocked: false,
      current: 0,
      target: 48,
    ),

    const Achievement(
      id: "streak_50",
      title: "50 Day Streak",
      description: "Maintain a 50-day streak.",
      icon: "★",
      reward: 2500,
      unlocked: false,
      current: 0,
      target: 50,
    ),

    const Achievement(
      id: "streak_56",
      title: "56 Day Streak",
      description: "Maintain a 56-day streak.",
      icon: "🔥",
      reward: 2750,
      unlocked: false,
      current: 0,
      target: 56,
    ),

    const Achievement(
      id: "streak_63",
      title: "63 Day Streak",
      description: "Maintain a 63-day streak.",
      icon: "🔥",
      reward: 3000,
      unlocked: false,
      current: 0,
      target: 63,
    ),

    const Achievement(
      id: "streak_75",
      title: "75 Day Streak",
      description: "Maintain a 75-day streak.",
      icon: "🔥",
      reward: 3500,
      unlocked: false,
      current: 0,
      target: 75,
    ),

    const Achievement(
      id: "streak_100",
      title: "100 Day Streak",
      description: "Maintain a 100-day streak.",
      icon: "🌟",
      reward: 5000,
      unlocked: false,
      current: 0,
      target: 100,
    ),

    const Achievement(
      id: "streak_111",
      title: "111 Day Streak",
      description: "Maintain a 111-day streak.",
      icon: "🔥",
      reward: 5500,
      unlocked: false,
      current: 0,
      target: 111,
    ),

    const Achievement(
      id: "streak_125",
      title: "125 Day Streak",
      description: "Maintain a 125-day streak.",
      icon: "🔥",
      reward: 6250,
      unlocked: false,
      current: 0,
      target: 125,
    ),

    const Achievement(
      id: "streak_150",
      title: "150 Day Streak",
      description: "Maintain a 150-day streak.",
      icon: "🔥",
      reward: 7500,
      unlocked: false,
      current: 0,
      target: 150,
    ),

    const Achievement(
      id: "streak_175",
      title: "175 Day Streak",
      description: "Maintain a 175-day streak.",
      icon: "🔥",
      reward: 8750,
      unlocked: false,
      current: 0,
      target: 175,
    ),

    const Achievement(
      id: "streak_200",
      title: "200 Day Streak",
      description: "Maintain a 200-day streak.",
      icon: "🌟🌟",
      reward: 10000,
      unlocked: false,
      current: 0,
      target: 200,
    ),

    const Achievement(
      id: "streak_222",
      title: "222 Day Streak",
      description: "Maintain a 222-day streak.",
      icon: "🔥",
      reward: 11100,
      unlocked: false,
      current: 0,
      target: 222,
    ),

    const Achievement(
      id: "streak_250",
      title: "250 Day Streak",
      description: "Maintain a 250-day streak.",
      icon: "🔥",
      reward: 12500,
      unlocked: false,
      current: 0,
      target: 250,
    ),

    const Achievement(
      id: "streak_275",
      title: "275 Day Streak",
      description: "Maintain a 275-day streak.",
      icon: "🔥",
      reward: 13750,
      unlocked: false,
      current: 0,
      target: 275,
    ),

    const Achievement(
      id: "streak_300",
      title: "300 Day Streak",
      description: "Maintain a 300-day streak.",
      icon: "🌟🌟🌟",
      reward: 15000,
      unlocked: false,
      current: 0,
      target: 300,
    ),

    const Achievement(
      id: "streak_333",
      title: "333 Day Streak",
      description: "Maintain a 333-day streak.",
      icon: "🔥",
      reward: 16650,
      unlocked: false,
      current: 0,
      target: 333,
    ),

    const Achievement(
      id: "streak_350",
      title: "350 Day Streak",
      description: "Maintain a 350-day streak.",
      icon: "🔥",
      reward: 17500,
      unlocked: false,
      current: 0,
      target: 350,
    ),

    const Achievement(
      id: "streak_365",
      title: "1 Year Streak",
      description: "Maintain a 365-day streak.",
      icon: "👑",
      reward: 25000,
      unlocked: false,
      current: 0,
      target: 365,
    ),

    const Achievement(
      id: "streak_400",
      title: "400 Day Streak",
      description: "Maintain a 400-day streak.",
      icon: "💎",
      reward: 30000,
      unlocked: false,
      current: 0,
      target: 400,
    ),

    const Achievement(
      id: "points_1000",
      title: "1000 Points",
      description: "Earn 1000 total points in Quiz.",
      icon: "⚝",
      reward: 250,
      unlocked: false,
      current: 0,
      target: 1000,
    ),
    const Achievement(
      id: "perfect_score",
      title: "Perfect Score",
      description: "Score 100% in any quiz.",
      icon: "🎯",
      reward: 500,
      unlocked: false,
      current: 0,
      target: 1,
    ),
  ];

  static Future<List<String>> _getUnlockedIds() async {
    final prefs = await SharedPreferences.getInstance();

    final json = prefs.getString(_achievementKey);

    if (json == null) return [];

    return List<String>.from(jsonDecode(json));
  }

  static Future<void> _saveUnlockedIds(List<String> ids) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_achievementKey, jsonEncode(ids));
  }

  static Future<int> incrementQuizCount() async {
    final prefs = await SharedPreferences.getInstance();

    int count = prefs.getInt(_quizCountKey) ?? 0;

    count++;

    await prefs.setInt(_quizCountKey, count);

    return count;
  }

  static Future<int> getQuizCount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_quizCountKey) ?? 0;
  }

  static Future<List<Achievement>> checkAchievements({
    required int score,
    required int totalQuestions,
  }) async {
    final unlocked = await _getUnlockedIds();

    final quizCount = await incrementQuizCount();

    final streak = await StreakService.getCurrentStreak();

    final totalPoints = await PointService.getTotalPoints();

    List<Achievement> newlyUnlocked = [];

    for (final achievement in _allAchievements) {
      if (unlocked.contains(achievement.id)) continue;

      bool shouldUnlock = false;

      switch (achievement.id) {
        case "first_quiz":
          shouldUnlock = quizCount >= 1;
          break;

        case "quiz_10":
          shouldUnlock = quizCount >= 10;
          break;

        case "streak_7":
          shouldUnlock = streak >= 7;
          break;

        case "points_1000":
          shouldUnlock = totalPoints >= 1000;
          break;

        case "perfect_score":
          shouldUnlock = score == totalQuestions;
          break;
      }

      if (shouldUnlock) {
        unlocked.add(achievement.id);

        await PointService.addPoints(achievement.reward);

        newlyUnlocked.add(
          achievement.copyWith(unlocked: true, current: achievement.target),
        );
      }
    }

    await _saveUnlockedIds(unlocked);

    return newlyUnlocked;
  }

  static Future<List<Achievement>> getAchievements() async {
    final unlocked = await _getUnlockedIds();

    final quizCount = await getQuizCount();

    final streak = await StreakService.getCurrentStreak();

    final totalPoints = await PointService.getTotalPoints();

    return _allAchievements.map((achievement) {
      int current = 0;

      switch (achievement.id) {
        case "first_quiz":
          current = quizCount.clamp(0, achievement.target);
          break;

        case "quiz_10":
          current = quizCount.clamp(0, achievement.target);
          break;

        case "streak_7":
          current = streak.clamp(0, achievement.target);
          break;

        case "points_1000":
          current = totalPoints.clamp(0, achievement.target);
          break;

        case "perfect_score":
          current = unlocked.contains("perfect_score") ? 1 : 0;
          break;
      }

      return achievement.copyWith(
        unlocked: unlocked.contains(achievement.id),
        current: current,
      );
    }).toList();
  }
}
