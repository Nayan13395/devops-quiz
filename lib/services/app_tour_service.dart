import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppTourService {
  static const completedKey = 'app_tour_completed_v1';
  static final active = ValueNotifier<bool>(false);

  static Future<bool> shouldShow() async {
    final prefs = await SharedPreferences.getInstance();
    return !(prefs.getBool(completedKey) ?? false);
  }

  static Future<void> complete() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      if (!await prefs.setBool(completedKey, true)) {
        throw StateError('Could not save app tour preference');
      }
    } catch (_) {
      await prefs.reload();
      rethrow;
    }
  }
}
