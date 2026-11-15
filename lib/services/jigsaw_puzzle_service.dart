import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';
import 'game_rewards.dart';

typedef JigsawPieceEdges = ({int top, int right, int bottom, int left});

class JigsawPuzzleService {
  JigsawPuzzleService._();

  static final int levelCount = artworkAssets.length;
  static const int rewardPerLevel = GameRewards.levelCompletion;
  static const String _completedKey = 'jigsaw_completed_levels_v3';
  static const String _selectedKey = 'jigsaw_selected_level_v3';

  static final List<String> artworkAssets = List.unmodifiable([
    for (var level = 1; level <= 300; level++) 'assets/Jigsaw/$level.webp',
  ]);

  static String artworkFor(int level) {
    if (level < 1 || level > levelCount) {
      throw RangeError.range(level, 1, levelCount, 'level');
    }
    return artworkAssets[level - 1];
  }

  static int gridSizeFor(int level) {
    if (level < 1 || level > levelCount) {
      throw RangeError.range(level, 1, levelCount, 'level');
    }
    if (level <= 15) return 2;
    if (level <= 100) return 3;
    if (level <= 200) return 4;
    return 5;
  }

  static int _edgeDirection(int level, int row, int column, int orientation) {
    final seed =
        level * 73856093 ^
        row * 19349663 ^
        column * 83492791 ^
        orientation * 2654435761;
    return Random(seed).nextBool() ? 1 : -1;
  }

  static JigsawPieceEdges pieceEdgesFor(int level, int tile) {
    final grid = gridSizeFor(level);
    if (tile < 0 || tile >= grid * grid) {
      throw RangeError.range(tile, 0, grid * grid - 1, 'tile');
    }
    final row = tile ~/ grid;
    final column = tile % grid;
    return (
      top: row == 0 ? 0 : -_edgeDirection(level, row - 1, column, 0),
      right: column == grid - 1 ? 0 : _edgeDirection(level, row, column, 1),
      bottom: row == grid - 1 ? 0 : _edgeDirection(level, row, column, 0),
      left: column == 0 ? 0 : -_edgeDirection(level, row, column - 1, 1),
    );
  }

  /// Returns a derangement of the tiles: no piece ever starts on its
  /// correct slot. Pass [random] (e.g. an unseeded [Random]) to get a
  /// different arrangement each call, as the shuffle button does.
  static List<int> shuffledTiles(int level, {Random? random}) {
    final count = gridSizeFor(level);
    final total = count * count;
    final tiles = List<int>.generate(total, (index) => index);
    final rng = random ?? Random(0x4A165A + level * 7919);
    // Sattolo's algorithm produces a single-cycle permutation, which
    // guarantees that no tile remains at its solved position.
    for (var i = total - 1; i > 0; i--) {
      final j = rng.nextInt(i);
      final temporary = tiles[i];
      tiles[i] = tiles[j];
      tiles[j] = temporary;
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
