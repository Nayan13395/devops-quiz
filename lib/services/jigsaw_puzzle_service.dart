import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';

class JigsawPuzzleService {
  JigsawPuzzleService._();

  static const int levelCount = 100;
  static const int rewardPerLevel = 100;
  static const String _completedKey = 'jigsaw_completed_levels_v1';
  static const String _selectedKey = 'jigsaw_selected_level_v1';

  static int gridSizeFor(int level) {
    if (level < 1 || level > levelCount) {
      throw RangeError.range(level, 1, levelCount, 'level');
    }
    if (level <= 20) return 3;
    if (level <= 75) return 4;
    return 5;
  }

  static List<int> shuffledTiles(int level) {
    final count = gridSizeFor(level);
    final tiles = List<int>.generate(count * count, (index) => index);
    tiles.shuffle(Random(0x4A165A + level * 7919));
    if (isSolved(tiles)) {
      final temporary = tiles[0];
      tiles[0] = tiles[1];
      tiles[1] = temporary;
    }
    return List.unmodifiable(tiles);
  }

  static bool isSolved(List<int> tiles) =>
      tiles.indexed.every((entry) => entry.$1 == entry.$2);

  static Future<Set<int>> loadCompletedLevels() async {
    final prefs = await SharedPreferences.getInstance();
    final completed = <int>{};
    for (final value in prefs.getStringList(_completedKey) ?? const []) {
      final level = int.tryParse(value);
      if (level != null && level >= 1 && level <= levelCount) {
        completed.add(level);
      }
    }
    return completed;
  }

  static Future<int> loadSelectedLevel() async {
    final prefs = await SharedPreferences.getInstance();
    final level = prefs.getInt(_selectedKey) ?? 1;
    return level.clamp(1, levelCount);
  }

  static Future<void> saveSelectedLevel(int level) async {
    if (level < 1 || level > levelCount) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_selectedKey, level);
  }

  static bool isUnlocked(int level, Set<int> completed) =>
      level == 1 || completed.contains(level - 1);

  static Future<bool> completeLevel(int level, List<int> tiles) async {
    if (level < 1 ||
        level > levelCount ||
        tiles.length != gridSizeFor(level) * gridSizeFor(level) ||
        !isSolved(tiles)) {
      return false;
    }

    final prefs = await SharedPreferences.getInstance();
    final completed = <int>{
      for (final value in prefs.getStringList(_completedKey) ?? const [])
        if (int.tryParse(value) case final int parsed)
          if (parsed >= 1 && parsed <= levelCount) parsed,
    };
    if (!isUnlocked(level, completed) || !completed.add(level)) return false;

    await prefs.setStringList(
      _completedKey,
      (completed.toList()..sort()).map((value) => value.toString()).toList(),
    );
    await PointService.addPoints(rewardPerLevel, source: PointSource.game);
    return true;
  }
}
