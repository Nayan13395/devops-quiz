import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_theme.dart';

class ThemeService {
  ThemeService._();

  static const String _selectedThemeKey =
      'selected_app_theme';

  /// Save the theme selected by the user.
  static Future<void> saveTheme(
    AppThemeType theme,
  ) async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _selectedThemeKey,
      theme.name,
    );
  }

  /// Load the previously selected theme.
  ///
  /// If nothing has been selected yet,
  /// Light theme will be used.
  static Future<AppThemeType>
      loadTheme() async {
    final prefs =
        await SharedPreferences.getInstance();

    final savedTheme =
        prefs.getString(
      _selectedThemeKey,
    );

    if (savedTheme == null) {
      return AppThemeType.light;
    }

    try {
      return AppThemeType.values.firstWhere(
        (theme) =>
            theme.name == savedTheme,
      );
    } catch (_) {
      return AppThemeType.light;
    }
  }

  /// Check whether a theme can be used
  /// based on the user's total points.
  static bool isThemeUnlocked({
    required AppThemeInfo theme,
    required int totalPoints,
  }) {
    // Light and Dark have 0 required
    // points, so they are always unlocked.
    return totalPoints >=
        theme.requiredPoints;
  }

  /// Number of points still required
  /// to unlock a theme.
  static int pointsRemaining({
    required AppThemeInfo theme,
    required int totalPoints,
  }) {
    final remaining =
        theme.requiredPoints -
            totalPoints;

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

    final progress =
        totalPoints /
            theme.requiredPoints;

    return progress.clamp(
      0.0,
      1.0,
    );
  }

  /// Protect against loading a locked
  /// theme.
  ///
  /// Example:
  /// User selected Ocean at 10,000 points,
  /// but if the points system changes later,
  /// this prevents an invalid theme from
  /// being activated.
  static Future<AppThemeType>
      loadAvailableTheme(
    int totalPoints,
  ) async {
    final selected =
        await loadTheme();

    final themeInfo =
        AppThemes.getTheme(
      selected,
    );

    if (isThemeUnlocked(
      theme: themeInfo,
      totalPoints: totalPoints,
    )) {
      return selected;
    }

    // Fall back to Light if the saved
    // theme isn't currently available.
    return AppThemeType.light;
  }
}