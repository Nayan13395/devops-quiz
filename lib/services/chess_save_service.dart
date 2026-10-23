import 'dart:convert';

import 'package:chess/chess.dart' as chess;
import 'package:shared_preferences/shared_preferences.dart';

class ChessSavedGame {
  const ChessSavedGame({
    required this.game,
    required this.againstComputer,
    required this.userIsWhite,
    required this.botStartsNext,
    required this.rewarded,
  });

  final chess.Chess game;
  final bool againstComputer;
  final bool userIsWhite;
  final bool botStartsNext;
  final bool rewarded;
}

class ChessSaveService {
  static const saveKey = 'chess_saved_game_v1';

  static Future<void> save(ChessSavedGame match) async {
    final snapshot = jsonEncode({
      'pgn': match.game.pgn(),
      'fen': match.game.fen,
      'againstComputer': match.againstComputer,
      'userIsWhite': match.userIsWhite,
      'botStartsNext': match.botStartsNext,
      'rewarded': match.rewarded,
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(saveKey, snapshot);
  }

  static Future<ChessSavedGame?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(saveKey);
    if (raw == null) return null;
    try {
      final data = Map<String, dynamic>.from(jsonDecode(raw) as Map);
      final game = chess.Chess();
      final pgn = data['pgn'] as String;
      if ((pgn.trim().isNotEmpty && !game.load_pgn(pgn)) ||
          game.fen != data['fen']) {
        return null;
      }
      return ChessSavedGame(
        game: game,
        againstComputer: data['againstComputer'] as bool,
        userIsWhite: data['userIsWhite'] as bool,
        botStartsNext: data['botStartsNext'] as bool,
        rewarded: data['rewarded'] as bool,
      );
    } catch (_) {
      return null;
    }
  }
}
