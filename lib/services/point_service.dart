import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'leaderboard_service.dart';

enum PointSource { quiz, game, other }

class PointService {
  static const String _pointsKey = "total_points";
  static const String _quizPointsKey = 'quiz_points_earned';
  static const String _gamePointsKey = 'game_points_earned';
  static const String _leaderboardRewardsKey = 'leaderboard_rewards_applied';
  static final Map<String, Future<void>> _pendingReferralRewards = {};

  static Future<int> getTotalPoints() async {
    final prefs = await SharedPreferences.getInstance();
    final points = prefs.getInt(_pointsKey) ?? 0;
    final rawRewards = prefs.getString(_leaderboardRewardsKey);
    if (rawRewards == null) return points;

    final rewards = Map<String, dynamic>.from(jsonDecode(rawRewards));
    return points +
        rewards.values.whereType<num>().fold<int>(
          0,
          (sum, reward) => sum + reward.toInt(),
        );
  }

  static Future<Map<PointSource, int>> getEarnedPoints() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      PointSource.quiz: prefs.getInt(_quizPointsKey) ?? 0,
      PointSource.game: prefs.getInt(_gamePointsKey) ?? 0,
    };
  }

  static Future<void> _recordSource(
    SharedPreferences prefs,
    int points,
    PointSource source,
  ) async {
    if (points <= 0 || source == PointSource.other) return;
    final key = source == PointSource.quiz ? _quizPointsKey : _gamePointsKey;
    await prefs.setInt(key, (prefs.getInt(key) ?? 0) + points);
  }

  static Future<void> addPoints(
    int points, {
    PointSource source = PointSource.other,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    final total = (prefs.getInt(_pointsKey) ?? 0) + points;

    await prefs.setInt(_pointsKey, total);
    await _recordSource(prefs, points, source);

    final leaderboard = LeaderboardService();
    await leaderboard.saveScore(points);
    unawaited(
      leaderboard.submitDailyPoints(points).catchError((Object error) {
        debugPrint('Universal leaderboard update failed: $error');
      }),
    );
  }

  static Future<void> addLocalPoints(
    int points, {
    PointSource source = PointSource.other,
  }) async {
    if (points <= 0) return;

    final prefs = await SharedPreferences.getInstance();
    final total = (prefs.getInt(_pointsKey) ?? 0) + points;
    await prefs.setInt(_pointsKey, total);
    await _recordSource(prefs, points, source);
    await LeaderboardService().saveScore(points);
  }

  static Future<void> applyReferralReward(String uid, int cumulativePoints) {
    if (uid.isEmpty || cumulativePoints < 0) return Future.value();
    final pending = _pendingReferralRewards[uid];
    if (pending != null) {
      return pending.then((_) => applyReferralReward(uid, cumulativePoints));
    }
    final operation = _creditReferralDifference(uid, cumulativePoints)
        .whenComplete(() {
          _pendingReferralRewards.remove(uid);
        });
    _pendingReferralRewards[uid] = operation;
    return operation;
  }

  static Future<void> _creditReferralDifference(
    String uid,
    int cumulativePoints,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final receiptKey = 'referral_reward_applied_$uid';
    final applied = prefs.getInt(receiptKey) ?? 0;
    if (cumulativePoints <= applied) return;
    await addLocalPoints(cumulativePoints - applied);
    await prefs.setInt(receiptKey, cumulativePoints);
  }

  static Future<void> applyLeaderboardReward(String date, int points) async {
    if (date.isEmpty || points <= 0) return;

    final prefs = await SharedPreferences.getInstance();
    final rawRewards = prefs.getString(_leaderboardRewardsKey);
    final rewards = rawRewards == null
        ? <String, dynamic>{}
        : Map<String, dynamic>.from(jsonDecode(rawRewards));

    if (rewards.containsKey(date)) return;

    rewards[date] = points;
    await prefs.setString(_leaderboardRewardsKey, jsonEncode(rewards));
  }

  static Future<void> resetPoints() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_pointsKey);
    await prefs.remove(_quizPointsKey);
    await prefs.remove(_gamePointsKey);
    await prefs.remove(_leaderboardRewardsKey);
  }
}
