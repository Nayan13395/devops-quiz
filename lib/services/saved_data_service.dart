import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedDataService {
  static const cardsKey = 'saved_learning_cards';
  static const questionsKey = 'saved_quiz_questions';
  static final changes = ValueNotifier<int>(0);

  static Future<Set<String>> cardIds() => _read(cardsKey);
  static Future<Set<String>> questionIds() => _read(questionsKey);

  static Future<Set<String>> _read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return (prefs.getStringList(key) ?? []).toSet();
  }

  static Future<void> saveCard(String id, bool saved) =>
      _write(cardsKey, id, saved);

  static Future<void> saveQuestion(String id, bool saved) =>
      _write(questionsKey, id, saved);

  static Future<void> _write(String key, String id, bool saved) async {
    final prefs = await SharedPreferences.getInstance();
    final ids = (prefs.getStringList(key) ?? []).toSet();
    if (saved) {
      ids.add(id);
    } else {
      ids.remove(id);
    }
    if (!await prefs.setStringList(key, ids.toList())) {
      throw StateError('Could not persist $key');
    }
    changes.value++;
  }
}
