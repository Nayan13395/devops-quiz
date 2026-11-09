import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum GameSoundEffect { click, diceRoll, correct, incorrect, win }

class GameSoundService {
  GameSoundService._();

  static const String preferenceKey = 'game_sound_enabled';

  static Future<bool> isEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(preferenceKey) ?? true;
  }

  static Future<void> setEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(preferenceKey, enabled);
  }

  static Future<void> play(GameSoundEffect effect) async {
    if (!await isEnabled()) return;

    try {
      switch (effect) {
        case GameSoundEffect.diceRoll:
          for (int click = 0; click < 3; click++) {
            if (click > 0) {
              await Future<void>.delayed(const Duration(milliseconds: 45));
            }
            await SystemSound.play(SystemSoundType.click);
          }
        case GameSoundEffect.correct || GameSoundEffect.win:
          await SystemSound.play(SystemSoundType.alert);
        case GameSoundEffect.click || GameSoundEffect.incorrect:
          await SystemSound.play(SystemSoundType.click);
      }
    } catch (_) {
      // System sounds are optional on platforms that do not provide them.
    }
  }
}
