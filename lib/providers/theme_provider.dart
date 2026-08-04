import 'package:flutter/material.dart';

import '../models/app_theme.dart';
import '../services/theme_service.dart';

class ThemeProvider extends ChangeNotifier {
  AppThemeType _selectedTheme = AppThemeType.light;

  bool _initialized = false;

  AppThemeType get selectedTheme => _selectedTheme;

  bool get initialized => _initialized;

  bool get isDarkMode =>
      AppThemes.getTheme(_selectedTheme).brightness == Brightness.dark;

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  ThemeData get themeData {
    final theme = AppThemes.getTheme(_selectedTheme);

    return _buildTheme(theme);
  }

  // ==========================================================
  // LOAD SAVED THEME
  // ==========================================================

  Future<void> loadTheme({required int totalPoints}) async {
    _selectedTheme = await ThemeService.loadAvailableTheme(totalPoints);

    _initialized = true;

    notifyListeners();
  }

  // ==========================================================
  // CHANGE THEME
  // ==========================================================

  Future<bool> setTheme({
    required AppThemeType theme,
    required int totalPoints,
  }) async {
    final themeInfo = AppThemes.getTheme(theme);

    final unlocked = ThemeService.isThemeUnlocked(
      theme: themeInfo,
      totalPoints: totalPoints,
    );

    if (!unlocked) {
      return false;
    }

    _selectedTheme = theme;

    await ThemeService.saveTheme(theme);

    notifyListeners();

    return true;
  }

  // ==========================================================
  // BUILD THEME
  // ==========================================================

  ThemeData _buildTheme(AppThemeInfo theme) {
    final bool dark = theme.brightness == Brightness.dark;

    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: theme.primaryColor,
      brightness: theme.brightness,
      primary: theme.primaryColor,
      secondary: theme.secondaryColor,
    );

    return ThemeData(
      useMaterial3: true,

      brightness: theme.brightness,

      colorScheme: colorScheme,

      scaffoldBackgroundColor: dark
          ? const Color(0xFF121212)
          : const Color(0xFFF4FAF8),

      // ======================================================
      // APP BAR
      // ======================================================
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: dark
            ? const Color(0xFF1C1C1C)
            : colorScheme.surfaceContainer,

        foregroundColor: colorScheme.onSurface,

        titleTextStyle: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),

        iconTheme: IconThemeData(color: colorScheme.onSurface),
      ),

      // ======================================================
      // CARDS
      // ======================================================
      cardTheme: CardThemeData(
        elevation: 4,

        color: dark ? const Color(0xFF1E1E1E) : colorScheme.surface,

        margin: const EdgeInsets.symmetric(vertical: 8),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),

      // ======================================================
      // ELEVATED BUTTON
      // ======================================================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.primaryColor,

          foregroundColor: _foregroundColor(theme.primaryColor),

          elevation: 3,

          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      // ======================================================
      // OUTLINED BUTTON
      // ======================================================
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: theme.primaryColor,

          side: BorderSide(color: theme.primaryColor),

          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      // ======================================================
      // TEXT BUTTON
      // ======================================================
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: theme.primaryColor),
      ),

      // ======================================================
      // FLOATING ACTION BUTTON
      // ======================================================
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.primaryColor,

        foregroundColor: _foregroundColor(theme.primaryColor),
      ),

      // ======================================================
      // PROGRESS INDICATOR
      // ======================================================
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: theme.primaryColor,

        linearTrackColor: theme.secondaryColor.withValues(alpha: 0.25),
      ),

      // ======================================================
      // DIVIDER
      // ======================================================
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
      ),

      // ======================================================
      // DIALOG
      // ======================================================
      dialogTheme: DialogThemeData(
        backgroundColor: dark ? const Color(0xFF1E1E1E) : colorScheme.surface,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      ),

      // ======================================================
      // LIST TILE
      // ======================================================
      listTileTheme: ListTileThemeData(
        iconColor: theme.primaryColor,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),

      // ======================================================
      // SWITCH
      // ======================================================
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return theme.primaryColor;
          }

          return null;
        }),

        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return theme.primaryColor.withValues(alpha: 0.45);
          }

          return null;
        }),
      ),

      // ======================================================
      // ICONS
      // ======================================================
      iconTheme: IconThemeData(color: colorScheme.onSurface),

      // ======================================================
      // SNACKBAR
      // ======================================================
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // ==========================================================
  // BUTTON TEXT COLOR
  // ==========================================================

  Color _foregroundColor(Color background) {
    return ThemeData.estimateBrightnessForColor(background) == Brightness.dark
        ? Colors.white
        : Colors.black;
  }
}
