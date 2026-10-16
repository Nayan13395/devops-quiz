import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'leaderboard_service.dart';

class PointService {
  static const String _pointsKey = "total_points";
  static const String _leaderboardRewardsKey = 'leaderboard_rewards_applied';

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

  static Future<void> addPoints(int points) async {
    final prefs = await SharedPreferences.getInstance();

    final total = (prefs.getInt(_pointsKey) ?? 0) + points;

    await prefs.setInt(_pointsKey, total);

    final leaderboard = LeaderboardService();
    await leaderboard.saveScore(points);
    unawaited(
      leaderboard.submitDailyPoints(points).catchError((Object error) {
        debugPrint('Universal leaderboard update failed: $error');
      }),
    );
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
    await prefs.remove(_leaderboardRewardsKey);
  }
}
