import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LeaderboardService {

  static const String key =
      "leaderboard";

  Future<List<Map<String, dynamic>>>
      getLeaderboard() async {

    final prefs =
        await SharedPreferences
            .getInstance();

    final data =
        prefs.getString(key);

    if (data == null) {
      return [];
    }

    return List<Map<String, dynamic>>
        .from(
      jsonDecode(data),
    );
  }

  Future<void> saveScore(
    int points,
  ) async {

    final prefs =
        await SharedPreferences
            .getInstance();

    final now = DateTime.now();

    final date =
        "${now.day}-${now.month}-${now.year}";

    List<Map<String, dynamic>>
        leaderboard =
        await getLeaderboard();

    int index =
        leaderboard.indexWhere(
      (e) => e["date"] == date,
    );

    if (index >= 0) {

      leaderboard[index]["points"] +=
          points;

    } else {

      leaderboard.add({
        "date": date,
        "points": points,
      });
    }

    await prefs.setString(
      key,
      jsonEncode(leaderboard),
    );
  }
}