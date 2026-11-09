import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_theme.dart';

class ThemeService {
  ThemeService._();

  static const String _selectedThemeKey = 'selected_app_theme';
  static const String _autoThemeEnabledKey = 'auto_theme_enabled_v1';
  static const String _autoThemeDateKey = 'auto_theme_date_v1';

  /// Save the theme selected by the user.
  static Future<void> saveTheme(AppThemeType theme) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_selectedThemeKey, theme.name);
  }

  /// Load the previously selected theme.
  ///
  /// If nothing has been selected yet,
  /// Light theme will be used.
  static Future<AppThemeType> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();

    final savedTheme = prefs.getString(_selectedThemeKey);

    if (savedTheme == null) {
      return AppThemeType.light;
    }

    try {
      return AppThemeType.values.firstWhere(
        (theme) => theme.name == savedTheme,
      );
    } catch (_) {
      return AppThemeType.light;
    }
  }

  static Future<bool> loadAutoThemeEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_autoThemeEnabledKey) ?? false;
  }

  static Future<void> saveAutoThemeEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_autoThemeEnabledKey, enabled);
  }

  static Future<void> clearAutoThemeDate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_autoThemeDateKey);
  }

  static Future<AppThemeType> loadDailyAutoTheme({
    required int totalPoints,
    AppThemeType? previousTheme,
    DateTime? now,
  }) async {
    final date = now ?? DateTime.now();
    final dateKey = '${date.year}-${date.month}-${date.day}';
    final prefs = await SharedPreferences.getInstance();
    final unlocked = AppThemes.sortedByUnlock
        .where((theme) => AppThemes.isUnlocked(theme, totalPoints, now: date))
        .toList();
    if (unlocked.isEmpty) return AppThemeType.light;

    if (prefs.getString(_autoThemeDateKey) == dateKey) {
      final saved = await loadTheme();
      if (unlocked.any((theme) => theme.type == saved)) return saved;
    }

    final dayIndex = DateTime.utc(
      date.year,
      date.month,
      date.day,
    ).difference(DateTime.utc(2000)).inDays;
    var index = dayIndex % unlocked.length;
    if (unlocked.length > 1 && unlocked[index].type == previousTheme) {
      index = (index + 1) % unlocked.length;
    }
    final selected = unlocked[index].type;
    await prefs.setString(_selectedThemeKey, selected.name);
    await prefs.setString(_autoThemeDateKey, dateKey);
    return selected;
  }

  /// Check whether a theme can be used
  /// based on the user's total points.
  static bool isThemeUnlocked({
    required AppThemeInfo theme,
    required int totalPoints,
    DateTime? now,
  }) {
    return AppThemes.isUnlocked(theme, totalPoints, now: now);
  }

  /// Number of points still required
  /// to unlock a theme.
  static int pointsRemaining({
    required AppThemeInfo theme,
    required int totalPoints,
  }) {
    final remaining = theme.requiredPoints - totalPoints;

    if (remaining <= 0) {
      return 0;
    }

    return remaining;
  }

  /// Progress from 0.0 to 1.0 toward
  /// unlocking the selected theme.
  static double unlockProgress({
    required AppThemeInfo theme,
    required int totalPoints,
  }) {
    if (theme.requiredPoints == 0) {
      return 1.0;
    }

    final progress = totalPoints / theme.requiredPoints;

    return progress.clamp(0.0, 1.0);
  }

  /// Protect against loading a locked
  /// theme.
  ///
  /// Example:
  /// User selected Ocean at 10,000 points,
  /// but if the points system changes later,
  /// this prevents an invalid theme from
  /// being activated.
  static Future<AppThemeType> loadAvailableTheme(
    int totalPoints, {
    DateTime? now,
  }) async {
    final selected = await loadTheme();

    final themeInfo = AppThemes.getTheme(selected);

    if (isThemeUnlocked(theme: themeInfo, totalPoints: totalPoints, now: now)) {
      return selected;
    }

    // Fall back to Light if the saved
    // theme isn't currently available.
    return AppThemeType.light;
  }
}
