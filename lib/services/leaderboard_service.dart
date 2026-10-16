import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LeaderboardService {
  static const String key = "leaderboard";
  static const String _dailyCollection = 'dailyLeaderboards';

  static bool get isAuthenticated {
    try {
      return FirebaseAuth.instance.currentUser != null;
    } catch (_) {
      return false;
    }
  }

  static String get todayKey =>
      DateTime.now().toUtc().toIso8601String().substring(0, 10);

  Future<List<Map<String, dynamic>>> getLeaderboard() async {
    final prefs = await SharedPreferences.getInstance();

    final data = prefs.getString(key);

    if (data == null) {
      return [];
    }

    return List<Map<String, dynamic>>.from(jsonDecode(data));
  }

  Future<void> saveScore(int points) async {
    final prefs = await SharedPreferences.getInstance();

    final now = DateTime.now();

    final date = "${now.day}-${now.month}-${now.year}";

    List<Map<String, dynamic>> leaderboard = await getLeaderboard();

    int index = leaderboard.indexWhere((e) => e["date"] == date);

    if (index >= 0) {
      leaderboard[index]["points"] += points;
    } else {
      leaderboard.add({"date": date, "points": points});
    }

    await prefs.setString(key, jsonEncode(leaderboard));
  }

  Stream<List<Map<String, dynamic>>> watchDailyLeaderboard() {
    try {
      if (!isAuthenticated) return Stream.value([]);

      return FirebaseFirestore.instance
          .collection(_dailyCollection)
          .doc(todayKey)
          .collection('players')
          .orderBy('points', descending: true)
          .limit(100)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((document) => {'uid': document.id, ...document.data()})
                .toList(),
          );
    } catch (error, stackTrace) {
      return Stream.error(error, stackTrace);
    }
  }

  Future<List<Map<String, dynamic>>> getMyDailyRewards() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) return [];

      final snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection('leaderboardRewards')
          .get();

      return snapshot.docs
          .map((document) => {'date': document.id, ...document.data()})
          .toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> submitDailyPoints(int points) async {
    if (points <= 0 || !isAuthenticated) return;

    await FirebaseFunctions.instance
        .httpsCallable('recordLeaderboardPoints')
        .call({'points': points});
  }
}
