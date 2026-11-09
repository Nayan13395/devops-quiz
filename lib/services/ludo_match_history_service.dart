import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LudoPlayerMatchStats {
  const LudoPlayerMatchStats({
    required this.name,
    required this.played,
    required this.won,
    required this.lost,
  });

  final String name;
  final int played;
  final int won;
  final int lost;
}

class LudoMatchHistoryService {
  static const historyKey = 'ludo_match_history_v1';

  static String createMatchId() =>
      DateTime.now().microsecondsSinceEpoch.toString();

  static Future<void> recordMatch({
    required String matchId,
    required List<String> players,
    required String winner,
  }) async {
    if (matchId.isEmpty || players.length < 2 || !players.contains(winner)) {
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final records = _readRecords(prefs.getString(historyKey));
    if (records.any((record) => record['id'] == matchId)) return;

    records.add({'id': matchId, 'players': players, 'winner': winner});
    await prefs.setString(historyKey, jsonEncode(records));
  }

  static Future<List<LudoPlayerMatchStats>> loadStats() async {
    final prefs = await SharedPreferences.getInstance();
    final totals = <String, List<int>>{};
    for (final record in _readRecords(prefs.getString(historyKey))) {
      final players = List<String>.from(record['players'] as List);
      final winner = record['winner'] as String;
      for (final player in players.toSet()) {
        final stats = totals.putIfAbsent(player, () => [0, 0, 0]);
        stats[0]++;
        stats[winner == player ? 1 : 2]++;
      }
    }
    return [
      for (final entry in totals.entries)
        LudoPlayerMatchStats(
          name: entry.key,
          played: entry.value[0],
          won: entry.value[1],
          lost: entry.value[2],
        ),
    ]..sort((a, b) {
      final playedOrder = b.played.compareTo(a.played);
      return playedOrder != 0 ? playedOrder : a.name.compareTo(b.name);
    });
  }

  static List<Map<String, dynamic>> _readRecords(String? raw) {
    if (raw == null) return [];
    try {
      return (jsonDecode(raw) as List)
          .map((record) => Map<String, dynamic>.from(record as Map))
          .toList();
    } catch (_) {
      return [];
    }
  }
}
