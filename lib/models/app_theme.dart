import 'package:flutter/material.dart';

enum AppThemeType {
  light,
  dark,
  sakura,
  sunset,
  coffee,
  tea,
  ocean,
  forest,
  aurora,
  matrix,
  cyberPurple,
  inferno,
  midnight,
  diamond,
  darkGrey,
  legendary,
  barbee,
  valentineDay,
  dqSpecial,
  army,
  spiderMan,
  krrish,
  avengers,
  ironMan,
  captainAmerica,
  thor,
  hulk,
  blackWidow,
  hawkeye,
  blackPanther,
  scarletWitch,
  vision,
  antMan,
  captainMarvel,
  doctorStrange,
  dc,
  batman,
  superman,
  wonderWoman,
  flash,
  aquaman,
  greenLantern,
  cyborg,
  supergirl,
  rainbow,
}

enum AnnualThemeFreePeriod { valentinesWeek, dqSpecialWeek }

class AppThemeInfo {
  final AppThemeType type;
  final String name;
  final String emoji;
  final int requiredPoints;
  final Color primaryColor;
  final Color secondaryColor;
  final Color? tertiaryColor;
  final Brightness brightness;
  final AnnualThemeFreePeriod? annualFreePeriod;

  const AppThemeInfo({
    required this.type,
    required this.name,
    required this.emoji,
    required this.requiredPoints,
    required this.primaryColor,
    required this.secondaryColor,
    this.tertiaryColor,
    required this.brightness,
    this.annualFreePeriod,
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

    // 5,000 POINTS
    AppThemeInfo(
      type: AppThemeType.sakura,
      name: 'Sakura',
      emoji: '🌸',
      requiredPoints: 5000,
      primaryColor: Color(0xFFD81B60),
      secondaryColor: Color(0xFFF8BBD0),
      brightness: Brightness.light,
    ),

    // 10,000 POINTS
    AppThemeInfo(
      type: AppThemeType.sunset,
      name: 'Sunset',
      emoji: '🌅',
      requiredPoints: 10000,
      primaryColor: Color(0xFFF4511E),
      secondaryColor: Color(0xFFFFAB91),
      brightness: Brightness.light,
    ),

    // 20,000 POINTS
    AppThemeInfo(
      type: AppThemeType.coffee,
      name: 'Coffee',
      emoji: '☕',
      requiredPoints: 20000,
      primaryColor: Color(0xFF6D4C41),
      secondaryColor: Color(0xFFBCAAA4),
      brightness: Brightness.light,
    ),

    AppThemeInfo(
      type: AppThemeType.tea,
      name: 'Tea',
      emoji: '🫖',
      requiredPoints: 25000,
      primaryColor: Color(0xFF558B2F),
      secondaryColor: Color(0xFFC5E1A5),
      brightness: Brightness.light,
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

    // 150,000 POINTS
    AppThemeInfo(
      type: AppThemeType.aurora,
      name: 'Aurora',
      emoji: '🌌',
      requiredPoints: 150000,
      primaryColor: Color(0xFF1DE9B6),
      secondaryColor: Color(0xFF7C4DFF),
      brightness: Brightness.dark,
    ),

    // 200,000 POINTS
    AppThemeInfo(
      type: AppThemeType.matrix,
      name: 'Matrix',
      emoji: '💻',
      requiredPoints: 200000,
      primaryColor: Color(0xFF00E676),
      secondaryColor: Color(0xFF1B5E20),
      brightness: Brightness.dark,
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

    AppThemeInfo(
      type: AppThemeType.darkGrey,
      name: 'Dark Grey',
      emoji: '◼️',
      requiredPoints: 850000,
      primaryColor: Color(0xFF42464B),
      secondaryColor: Color(0xFF858B91),
      brightness: Brightness.dark,
    ),

    AppThemeInfo(
      type: AppThemeType.barbee,
      name: 'Barbee',
      emoji: '💗',
      requiredPoints: 30000,
      primaryColor: Color(0xFFC2185B),
      secondaryColor: Color(0xFFF06292),
      brightness: Brightness.dark,
    ),

    AppThemeInfo(
      type: AppThemeType.valentineDay,
      name: 'Valentine Day',
      emoji: '❤️',
      requiredPoints: 40000,
      primaryColor: Color(0xFF8B0000),
      secondaryColor: Color(0xFFE53935),
      brightness: Brightness.dark,
      annualFreePeriod: AnnualThemeFreePeriod.valentinesWeek,
    ),

    AppThemeInfo(
      type: AppThemeType.dqSpecial,
      name: 'DQ Special',
      emoji: '🌈',
      requiredPoints: 600000,
      primaryColor: Color(0xFFE53935),
      secondaryColor: Color(0xFFFDD835),
      tertiaryColor: Color(0xFF039BE5),
      brightness: Brightness.light,
      annualFreePeriod: AnnualThemeFreePeriod.dqSpecialWeek,
    ),

    AppThemeInfo(
      type: AppThemeType.army,
      name: 'Army',
      emoji: '🪖',
      requiredPoints: 1050000,
      primaryColor: Color(0xFF556B2F),
      secondaryColor: Color(0xFFC3B091),
      tertiaryColor: Color(0xFFD4AF37),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.spiderMan,
      name: 'Spider-Man',
      emoji: '🕷️',
      requiredPoints: 1100000,
      primaryColor: Color(0xFFD50000),
      secondaryColor: Color(0xFF1565C0),
      tertiaryColor: Color(0xFFECEFF1),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.krrish,
      name: 'Krrish',
      emoji: '⚡',
      requiredPoints: 1150000,
      primaryColor: Color(0xFF101820),
      secondaryColor: Color(0xFF00A86B),
      tertiaryColor: Color(0xFFB0BEC5),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.ironMan,
      name: 'Iron Man',
      emoji: '🤖',
      requiredPoints: 1250000,
      primaryColor: Color(0xFFC62828),
      secondaryColor: Color(0xFFFFC107),
      tertiaryColor: Color(0xFF263238),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.captainAmerica,
      name: 'Captain America',
      emoji: '🛡️',
      requiredPoints: 1300000,
      primaryColor: Color(0xFF123A70),
      secondaryColor: Color(0xFFC62828),
      tertiaryColor: Color(0xFFF5F5F5),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.thor,
      name: 'Thor',
      emoji: '⚡',
      requiredPoints: 1350000,
      primaryColor: Color(0xFF304FFE),
      secondaryColor: Color(0xFFB0BEC5),
      tertiaryColor: Color(0xFFFFC107),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.hulk,
      name: 'Hulk',
      emoji: '💚',
      requiredPoints: 1400000,
      primaryColor: Color(0xFF2E7D32),
      secondaryColor: Color(0xFF9CCC65),
      tertiaryColor: Color(0xFF6A1B9A),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.blackWidow,
      name: 'Black Widow',
      emoji: '🕷️',
      requiredPoints: 1450000,
      primaryColor: Color(0xFF212121),
      secondaryColor: Color(0xFFD32F2F),
      tertiaryColor: Color(0xFFB0BEC5),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.hawkeye,
      name: 'Hawkeye',
      emoji: '🏹',
      requiredPoints: 1500000,
      primaryColor: Color(0xFF4527A0),
      secondaryColor: Color(0xFF212121),
      tertiaryColor: Color(0xFFFFB300),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.blackPanther,
      name: 'Black Panther',
      emoji: '🐾',
      requiredPoints: 1550000,
      primaryColor: Color(0xFF212121),
      secondaryColor: Color(0xFF6A1B9A),
      tertiaryColor: Color(0xFFB39DDB),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.scarletWitch,
      name: 'Scarlet Witch',
      emoji: '🔮',
      requiredPoints: 1600000,
      primaryColor: Color(0xFF7F0000),
      secondaryColor: Color(0xFFE53935),
      tertiaryColor: Color(0xFF8E24AA),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.vision,
      name: 'Vision',
      emoji: '💎',
      requiredPoints: 1650000,
      primaryColor: Color(0xFF1B5E20),
      secondaryColor: Color(0xFFD32F2F),
      tertiaryColor: Color(0xFFFFC107),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.antMan,
      name: 'Ant-Man',
      emoji: '🐜',
      requiredPoints: 1700000,
      primaryColor: Color(0xFFB71C1C),
      secondaryColor: Color(0xFF263238),
      tertiaryColor: Color(0xFFB0BEC5),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.captainMarvel,
      name: 'Captain Marvel',
      emoji: '🌟',
      requiredPoints: 1750000,
      primaryColor: Color(0xFF123A70),
      secondaryColor: Color(0xFFC62828),
      tertiaryColor: Color(0xFFFFD54F),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.doctorStrange,
      name: 'Doctor Strange',
      emoji: '🌀',
      requiredPoints: 1800000,
      primaryColor: Color(0xFF6D1028),
      secondaryColor: Color(0xFFE65100),
      tertiaryColor: Color(0xFF1565C0),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.avengers,
      name: 'Avengers',
      emoji: '🛡️',
      requiredPoints: 1200000,
      primaryColor: Color(0xFF173A70),
      secondaryColor: Color(0xFFB71C1C),
      tertiaryColor: Color(0xFFFFC107),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.batman,
      name: 'Batman',
      emoji: '🦇',
      requiredPoints: 1900000,
      primaryColor: Color(0xFF212121),
      secondaryColor: Color(0xFF455A64),
      tertiaryColor: Color(0xFFFFC107),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.superman,
      name: 'Superman',
      emoji: '💥',
      requiredPoints: 1950000,
      primaryColor: Color(0xFF1565C0),
      secondaryColor: Color(0xFFC62828),
      tertiaryColor: Color(0xFFFFD600),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.wonderWoman,
      name: 'Wonder Woman',
      emoji: '⚔️',
      requiredPoints: 2000000,
      primaryColor: Color(0xFF9D1C2E),
      secondaryColor: Color(0xFF123A70),
      tertiaryColor: Color(0xFFFFD54F),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.flash,
      name: 'Flash',
      emoji: '⚡',
      requiredPoints: 2050000,
      primaryColor: Color(0xFFC62828),
      secondaryColor: Color(0xFFFFD600),
      tertiaryColor: Color(0xFF7F0000),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.aquaman,
      name: 'Aquaman',
      emoji: '🌊',
      requiredPoints: 2100000,
      primaryColor: Color(0xFF00695C),
      secondaryColor: Color(0xFFFFB300),
      tertiaryColor: Color(0xFF0277BD),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.greenLantern,
      name: 'Green Lantern',
      emoji: '💚',
      requiredPoints: 2150000,
      primaryColor: Color(0xFF1B5E20),
      secondaryColor: Color(0xFF76FF03),
      tertiaryColor: Color(0xFF263238),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.cyborg,
      name: 'Cyborg',
      emoji: '🤖',
      requiredPoints: 2200000,
      primaryColor: Color(0xFF37474F),
      secondaryColor: Color(0xFF00ACC1),
      tertiaryColor: Color(0xFFE53935),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.supergirl,
      name: 'Supergirl',
      emoji: '⭐',
      requiredPoints: 2250000,
      primaryColor: Color(0xFF1565C0),
      secondaryColor: Color(0xFFD32F2F),
      tertiaryColor: Color(0xFFFFD54F),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.dc,
      name: 'DC Heroes',
      emoji: '🦸',
      requiredPoints: 1850000,
      primaryColor: Color(0xFF123A70),
      secondaryColor: Color(0xFFB71C1C),
      tertiaryColor: Color(0xFFFFC107),
      brightness: Brightness.dark,
    ),
    AppThemeInfo(
      type: AppThemeType.rainbow,
      name: 'Rainbow',
      emoji: '🌈',
      requiredPoints: 2300000,
      primaryColor: Color(0xFFE53935),
      secondaryColor: Color(0xFF1E88E5),
      tertiaryColor: Color(0xFF8E24AA),
      brightness: Brightness.light,
    ),
    AppThemeInfo(
      type: AppThemeType.diamond,
      name: 'Diamond',
      emoji: '💎',
      requiredPoints: 750000,
      primaryColor: Color(0xFF00ACC1),
      secondaryColor: Color(0xFF80DEEA),
      brightness: Brightness.light,
    ),
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

  static AppThemeInfo getTheme(AppThemeType type) {
    return all.firstWhere((theme) => theme.type == type);
  }

  static bool isUnlocked(AppThemeInfo theme, int totalPoints, {DateTime? now}) {
    return totalPoints >= theme.requiredPoints || isFreeNow(theme, now: now);
  }

  static bool isFreeNow(AppThemeInfo theme, {DateTime? now}) {
    final date = now ?? DateTime.now();
    switch (theme.annualFreePeriod) {
      case AnnualThemeFreePeriod.valentinesWeek:
        return date.month == 2 && date.day >= 7 && date.day <= 14;
      case AnnualThemeFreePeriod.dqSpecialWeek:
        return date.month == 3 && date.day >= 8 && date.day <= 15;
      case null:
        return false;
    }
  }

  static String? freePeriodLabel(AppThemeInfo theme) {
    switch (theme.annualFreePeriod) {
      case AnnualThemeFreePeriod.valentinesWeek:
        return 'Free Feb 7-14 each year';
      case AnnualThemeFreePeriod.dqSpecialWeek:
        return 'Free Mar 8-15 each year';
      case null:
        return null;
    }
  }
}
