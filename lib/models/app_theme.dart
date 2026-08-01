import 'package:flutter/material.dart';

enum AppThemeType {
  light,
  dark,
  ocean,
  forest,
  cyberPurple,
  inferno,
  midnight,
  diamond,
  legendary,
}

class AppThemeInfo {
  final AppThemeType type;
  final String name;
  final String emoji;
  final int requiredPoints;
  final Color primaryColor;
  final Color secondaryColor;
  final Brightness brightness;

  const AppThemeInfo({
    required this.type,
    required this.name,
    required this.emoji,
    required this.requiredPoints,
    required this.primaryColor,
    required this.secondaryColor,
    required this.brightness,
  });
}

class AppThemes {
  static const List<AppThemeInfo> all = [
    // FREE THEMES
    AppThemeInfo(
      type: AppThemeType.light,
      name: 'Light',
      emoji: '☀️',
      requiredPoints: 0,
      primaryColor: Color(0xFF009688),
      secondaryColor: Color(0xFF80CBC4),
      brightness: Brightness.light,
    ),

    AppThemeInfo(
      type: AppThemeType.dark,
      name: 'Dark',
      emoji: '🌙',
      requiredPoints: 0,
      primaryColor: Color(0xFF26A69A),
      secondaryColor: Color(0xFF00695C),
      brightness: Brightness.dark,
    ),

    // 10,000 POINTS
    AppThemeInfo(
      type: AppThemeType.ocean,
      name: 'Ocean',
      emoji: '🌊',
      requiredPoints: 50000,
      primaryColor: Color(0xFF0277BD),
      secondaryColor: Color(0xFF4FC3F7),
      brightness: Brightness.light,
    ),

    // 20,000 POINTS
    AppThemeInfo(
      type: AppThemeType.forest,
      name: 'Forest',
      emoji: '🌲',
      requiredPoints: 100000,
      primaryColor: Color(0xFF2E7D32),
      secondaryColor: Color(0xFF81C784),
      brightness: Brightness.light,
    ),

    // 30,000 POINTS
    AppThemeInfo(
      type: AppThemeType.cyberPurple,
      name: 'Cyber Purple',
      emoji: '💜',
      requiredPoints: 300000,
      primaryColor: Color(0xFF7B1FA2),
      secondaryColor: Color(0xFFCE93D8),
      brightness: Brightness.dark,
    ),

    // 40,000 POINTS
    AppThemeInfo(
      type: AppThemeType.inferno,
      name: 'Inferno',
      emoji: '🔥',
      requiredPoints: 400000,
      primaryColor: Color(0xFFE65100),
      secondaryColor: Color(0xFFFFB74D),
      brightness: Brightness.dark,
    ),

    // 50,000 POINTS
    AppThemeInfo(
      type: AppThemeType.midnight,
      name: 'Midnight',
      emoji: '🌌',
      requiredPoints: 500000,
      primaryColor: Color(0xFF283593),
      secondaryColor: Color(0xFF7986CB),
      brightness: Brightness.dark,
    ),

    // 75,000 POINTS
    AppThemeInfo(
      type: AppThemeType.diamond,
      name: 'Diamond',
      emoji: '💎',
      requiredPoints: 750000,
      primaryColor: Color(0xFF00ACC1),
      secondaryColor: Color(0xFF80DEEA),
      brightness: Brightness.light,
    ),

    // 100,000 POINTS
    AppThemeInfo(
      type: AppThemeType.legendary,
      name: 'Legendary',
      emoji: '👑',
      requiredPoints: 1000000,
      primaryColor: Color(0xFFFFB300),
      secondaryColor: Color(0xFFFFD54F),
      brightness: Brightness.dark,
    ),
  ];

  static AppThemeInfo getTheme(
    AppThemeType type,
  ) {
    return all.firstWhere(
      (theme) => theme.type == type,
    );
  }

  static bool isUnlocked(
    AppThemeInfo theme,
    int totalPoints,
  ) {
    return totalPoints >=
        theme.requiredPoints;
  }
}