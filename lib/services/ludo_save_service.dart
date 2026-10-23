import 'dart:convert';

import 'package:flutter_ludo/flutter_ludo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LudoSavedGame {
  const LudoSavedGame({
    required this.state,
    required this.botPlayers,
    required this.rewarded,
  });

  final LudoGameState state;
  final Set<int> botPlayers;
  final bool rewarded;
}

class LudoSaveService {
  static const saveKey = 'ludo_saved_game_v1';

  static Future<void> save(
    LudoController controller, {
    required bool rewarded,
  }) async {
    final snapshot = jsonEncode({
      'state': controller.state.toJson(),
      'bots': controller.botPlayers.toList()..sort(),
      'rewarded': rewarded,
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(saveKey, snapshot);
  }

  static Future<LudoSavedGame?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(saveKey);
    if (raw == null) return null;
    try {
      final data = Map<String, dynamic>.from(jsonDecode(raw) as Map);
      final state = LudoGameState.fromJson(
        Map<String, dynamic>.from(data['state'] as Map),
      );
      final bots = Set<int>.from(data['bots'] as List);
      if (state.players.length < 2 ||
          state.players.length > 4 ||
          bots.any((seat) => seat < 0 || seat >= state.players.length)) {
        return null;
      }
      return LudoSavedGame(
        state: state,
        botPlayers: bots,
        rewarded: data['rewarded'] as bool,
      );
    } catch (_) {
      return null;
    }
  }
}
