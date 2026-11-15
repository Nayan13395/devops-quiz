import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum GameSoundEffect { click, diceRoll, correct, incorrect, win }

class GameSoundService {
  GameSoundService._();

  static const String preferenceKey = 'game_sound_enabled';
  static AudioPlayer? _player;
  static Future<void>? _pending;
  static int _generation = 0;

  @visibleForTesting
  static AudioPlayer Function() createPlayer = AudioPlayer.new;

  // Keep source changes and mute operations ordered on the single player.
  static Future<void> _run(Future<void> Function() action) {
    final next = _pending?.then((_) => action()) ?? Future<void>.sync(action);
    late final Future<void> tail;
    tail = next.then<void>(
      (_) {
        if (identical(_pending, tail)) _pending = null;
      },
      onError: (Object error, StackTrace stack) {
        debugPrint('Game sound operation failed: $error\n$stack');
        if (identical(_pending, tail)) _pending = null;
      },
    );
    _pending = tail;
    return next;
  }

  static Future<bool> isEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(preferenceKey) ?? true;
  }

  static Future<void> setEnabled(bool enabled) {
    if (!enabled) _generation++;
    return _run(() async {
      final prefs = await SharedPreferences.getInstance();
      try {
        if (!await prefs.setBool(preferenceKey, enabled)) {
          throw StateError('Could not save sound preference');
        }
      } catch (_) {
        // Restore the cache from storage even if the native write throws.
        await prefs.reload();
        rethrow;
      }
      if (!enabled) await _player?.stop();
    });
  }

  static Future<void> play(GameSoundEffect effect) async {
    try {
      await preview(effect);
    } catch (error, stack) {
      // Game feedback must not interrupt scoring; Settings exposes the error.
      debugPrint('Unable to play $effect: $error\n$stack');
    }
  }

  static Future<void> preview([
    GameSoundEffect effect = GameSoundEffect.correct,
  ]) {
    final generation = _generation;
    return _run(() async {
      if (generation != _generation || !await isEnabled()) return;
      if (generation != _generation) return;
      final player = _player ??= createPlayer();
      await player.stop();
      if (generation != _generation) return;
      await player.play(
        AssetSource('sounds/${effect.name}.wav'),
        volume: 0.7,
        ctx: AudioContext(
          android: const AudioContextAndroid(
            usageType: AndroidUsageType.game,
            contentType: AndroidContentType.sonification,
            audioFocus: AndroidAudioFocus.none,
          ),
          iOS: AudioContextIOS(category: AVAudioSessionCategory.ambient),
        ),
      );
      if (generation != _generation) await player.stop();
    });
  }

  static Future<void> dispose() {
    _generation++;
    return _run(() async {
      final player = _player;
      _player = null;
      await player?.dispose();
    });
  }
}
