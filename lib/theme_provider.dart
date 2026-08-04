import 'package:flutter/material.dart';

import 'models/app_theme.dart';
import 'services/theme_service.dart';

class ThemeProvider extends ChangeNotifier {
  AppThemeType _selectedTheme = AppThemeType.light;

  bool _initialized = false;

  AppThemeType get selectedTheme => _selectedTheme;

  bool get initialized => _initialized;

  AppThemeInfo get currentTheme => AppThemes.getTheme(_selectedTheme);

  bool get isDark => currentTheme.brightness == Brightness.dark;

  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;

  ThemeData get themeData => _buildTheme(currentTheme);

  // =========================================================
  // LOAD SAVED THEME
  // =========================================================

  Future<void> loadTheme({required int totalPoints}) async {
    _selectedTheme = await ThemeService.loadAvailableTheme(totalPoints);

    _initialized = true;

    notifyListeners();
  }

  // =========================================================
  // SELECT THEME
  // =========================================================

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

  // =========================================================
  // LIGHT / DARK COMPATIBILITY
  // =========================================================

  Future<void> toggleTheme() async {
    if (isDark) {
      _selectedTheme = AppThemeType.light;
    } else {
      _selectedTheme = AppThemeType.dark;
    }

    await ThemeService.saveTheme(_selectedTheme);

    notifyListeners();
  }

  // =========================================================
  // BUILD THEME
  // =========================================================

  ThemeData _buildTheme(AppThemeInfo theme) {
    final bool dark = theme.brightness == Brightness.dark;

    final colorScheme = ColorScheme.fromSeed(
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
          : const Color(0xFFF5F8F8),

      // ==============================
      // APP BAR
      // ==============================
      appBarTheme: AppBarTheme(
        elevation: 0,

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

      // ==============================
      // CARDS
      // ==============================
      cardTheme: CardThemeData(
        elevation: 4,

        color: dark ? const Color(0xFF1E1E1E) : colorScheme.surface,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),

      // ==============================
      // ELEVATED BUTTON
      // ==============================
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

      // ==============================
      // OUTLINED BUTTON
      // ==============================
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

      // ==============================
      // TEXT BUTTON
      // ==============================
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: theme.primaryColor),
      ),

      // ==============================
      // FLOATING BUTTON
      // ==============================
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.primaryColor,

        foregroundColor: _foregroundColor(theme.primaryColor),
      ),

      // ==============================
      // PROGRESS
      // ==============================
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: theme.primaryColor,

        linearTrackColor: theme.secondaryColor.withValues(alpha: 0.25),
      ),

      // ==============================
      // DIVIDER
      // ==============================
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
      ),

      // ==============================
      // DIALOG
      // ==============================
      dialogTheme: DialogThemeData(
        backgroundColor: dark ? const Color(0xFF1E1E1E) : colorScheme.surface,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      ),

      // ==============================
      // LIST TILE
      // ==============================
      listTileTheme: ListTileThemeData(iconColor: theme.primaryColor),

      // ==============================
      // SWITCH
      // ==============================
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

      // ==============================
      // SNACKBAR
      // ==============================
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Color _foregroundColor(Color background) {
    final brightness = ThemeData.estimateBrightnessForColor(background);

    return brightness == Brightness.dark ? Colors.white : Colors.black;
  }
}
