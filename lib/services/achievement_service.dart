import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/achievement.dart';
import 'certificate_service.dart';
import 'daily_quiz_service.dart';
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

    // Quiz count milestones
    ..._milestones('quiz', '🧠', [
      (25, 'Quiz Enthusiast', 'Complete 25 quizzes.', 750),
      (50, 'Quiz Master', 'Complete 50 quizzes.', 1500),
      (100, 'Century Club', 'Complete 100 quizzes.', 3000),
      (250, 'Quiz Legend', 'Complete 250 quizzes.', 7500),
    ]),

    // Point milestones
    ..._milestones('points', '⭐', [
      (5000, '5,000 Points', 'Earn 5,000 total points.', 500),
      (10000, '10,000 Points', 'Earn 10,000 total points.', 1000),
      (50000, '50,000 Points', 'Earn 50,000 total points.', 3000),
      (100000, '100,000 Points', 'Earn 100,000 total points.', 6000),
    ]),

    // Daily quiz milestones
    ..._milestones('daily', '📅', [
      (1, 'Daily Starter', 'Complete your first Daily Quiz.', 200),
      (7, 'Daily Habit', 'Complete 7 Daily Quizzes.', 1000),
      (30, 'Daily Champion', 'Complete 30 Daily Quizzes.', 5000),
    ]),

    // Finished set milestones
    ..._milestones('sets', '🧩', [
      (5, 'Set Starter', 'Finish 5 quiz sets.', 300),
      (25, 'Set Collector', 'Finish 25 quiz sets.', 1500),
      (50, 'Set Master', 'Finish 50 quiz sets.', 4000),
      (100, 'Set Legend', 'Finish 100 quiz sets.', 10000),
    ]),

    // Certificate milestones
    ..._milestones('cert', '🎓', [
      (1, 'First Certificate', 'Earn your first category certificate.', 1000),
      (5, 'Certified Pro', 'Earn 5 category certificates.', 5000),
      (
        21,
        'Fully Certified',
        'Earn a certificate in all 21 categories.',
        25000,
      ),
    ]),
  ];

  static List<Achievement> _milestones(
    String prefix,
    String icon,
    List<(int, String, String, int)> items,
  ) {
    return [
      for (final (target, title, description, reward) in items)
        Achievement(
          id: '${prefix}_$target',
          title: title,
          description: description,
          icon: icon,
          reward: reward,
          unlocked: false,
          current: 0,
          target: target,
        ),
    ];
  }

  /// Which progress counter an achievement id is measured against.
  static String? _metricFor(String id) {
    if (id == 'first_quiz' || id.startsWith('quiz_')) return 'quiz';
    if (id.startsWith('streak_')) return 'streak';
    if (id.startsWith('points_')) return 'points';
    if (id.startsWith('daily_')) return 'daily';
    if (id.startsWith('sets_')) return 'sets';
    if (id.startsWith('cert_')) return 'cert';

    return null;
  }

  static Future<Map<String, int>> _metrics({required int quizCount}) async {
    return {
      'quiz': quizCount,
      'streak': await StreakService.getCurrentStreak(),
      'points': await PointService.getTotalPoints(),
      'daily': await DailyQuizService.totalCompleted(),
      'sets': await CertificateService.totalSetsCompleted(),
      'cert': await CertificateService.certificateCount(),
    };
  }

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

    final metrics = await _metrics(quizCount: quizCount);

    List<Achievement> newlyUnlocked = [];

    for (final achievement in _allAchievements) {
      if (unlocked.contains(achievement.id)) continue;

      bool shouldUnlock = false;

      if (achievement.id == "perfect_score") {
        shouldUnlock = score == totalQuestions;
      } else {
        final metric = _metricFor(achievement.id);

        if (metric != null) {
          shouldUnlock = metrics[metric]! >= achievement.target;
        }
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

    final metrics = await _metrics(quizCount: quizCount);

    return _allAchievements.map((achievement) {
      int current = 0;

      if (achievement.id == "perfect_score") {
        current = unlocked.contains("perfect_score") ? 1 : 0;
      } else {
        final metric = _metricFor(achievement.id);

        if (metric != null) {
          current = metrics[metric]!.clamp(0, achievement.target);
        }
      }

      return achievement.copyWith(
        unlocked: unlocked.contains(achievement.id),
        current: current,
      );
    }).toList();
  }
}
