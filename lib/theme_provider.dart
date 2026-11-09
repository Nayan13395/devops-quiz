import 'dart:async';

import 'package:flutter/material.dart';

import 'models/app_theme.dart';
import 'services/point_service.dart';
import 'services/theme_service.dart';

class ThemeProvider extends ChangeNotifier {
  AppThemeType _selectedTheme = AppThemeType.light;
  bool _autoThemeEnabled = false;
  Timer? _autoThemeTimer;
  bool _disposed = false;

  bool _initialized = false;

  AppThemeType get selectedTheme => _selectedTheme;
  bool get autoThemeEnabled => _autoThemeEnabled;

  bool get initialized => _initialized;

  AppThemeInfo get currentTheme => AppThemes.getTheme(_selectedTheme);

  bool get isDark => currentTheme.brightness == Brightness.dark;

  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;

  ThemeData get themeData => _buildTheme(currentTheme);

  // =========================================================
  // LOAD SAVED THEME
  // =========================================================

  Future<void> loadTheme({required int totalPoints, DateTime? now}) async {
    _autoThemeEnabled = await ThemeService.loadAutoThemeEnabled();
    _selectedTheme = _autoThemeEnabled
        ? await ThemeService.loadDailyAutoTheme(
            totalPoints: totalPoints,
            previousTheme: _selectedTheme,
            now: now,
          )
        : await ThemeService.loadAvailableTheme(totalPoints, now: now);

    _initialized = true;

    notifyListeners();
    _scheduleAutoThemeChange();
  }

  Future<void> toggleAutoTheme({
    required int totalPoints,
    DateTime? now,
  }) async {
    final enable = !_autoThemeEnabled;
    _autoThemeTimer?.cancel();
    if (enable) {
      _selectedTheme = await ThemeService.loadDailyAutoTheme(
        totalPoints: totalPoints,
        previousTheme: _selectedTheme,
        now: now,
      );
    } else {
      await ThemeService.saveAutoThemeEnabled(false);
      await ThemeService.clearAutoThemeDate();
    }
    _autoThemeEnabled = enable;
    if (enable) await ThemeService.saveAutoThemeEnabled(true);
    notifyListeners();
    _scheduleAutoThemeChange();
  }

  Future<void> refreshAutoTheme({DateTime? now}) async {
    if (!_autoThemeEnabled || _disposed) return;
    final points = await PointService.getTotalPoints();
    final theme = await ThemeService.loadDailyAutoTheme(
      totalPoints: points,
      previousTheme: _selectedTheme,
      now: now,
    );
    if (_disposed) return;
    if (theme != _selectedTheme) {
      _selectedTheme = theme;
      notifyListeners();
    }
    _scheduleAutoThemeChange(now: now);
  }

  void _scheduleAutoThemeChange({DateTime? now}) {
    _autoThemeTimer?.cancel();
    if (!_autoThemeEnabled || _disposed) return;
    final current = now ?? DateTime.now();
    final nextDay = DateTime(current.year, current.month, current.day + 1);
    final delay = nextDay.difference(current) + const Duration(seconds: 1);
    _autoThemeTimer = Timer(delay, () => unawaited(refreshAutoTheme()));
  }

  Future<void> _disableAutoTheme() async {
    if (!_autoThemeEnabled) return;
    _autoThemeEnabled = false;
    _autoThemeTimer?.cancel();
    await ThemeService.saveAutoThemeEnabled(false);
    await ThemeService.clearAutoThemeDate();
  }

  // =========================================================
  // SELECT THEME
  // =========================================================

  Future<bool> setTheme({
    required AppThemeType theme,
    required int totalPoints,
    DateTime? now,
  }) async {
    final themeInfo = AppThemes.getTheme(theme);

    final unlocked = ThemeService.isThemeUnlocked(
      theme: themeInfo,
      totalPoints: totalPoints,
      now: now,
    );

    if (!unlocked) {
      return false;
    }

    await _disableAutoTheme();
    _selectedTheme = theme;

    await ThemeService.saveTheme(theme);

    notifyListeners();

    return true;
  }

  // =========================================================
  // LIGHT / DARK COMPATIBILITY
  // =========================================================

  Future<void> toggleTheme() async {
    await _disableAutoTheme();
    if (isDark) {
      _selectedTheme = AppThemeType.light;
    } else {
      _selectedTheme = AppThemeType.dark;
    }

    await ThemeService.saveTheme(_selectedTheme);

    notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    _autoThemeTimer?.cancel();
    super.dispose();
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
      tertiary: theme.tertiaryColor,
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
