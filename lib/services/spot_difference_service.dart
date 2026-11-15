import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/spot_picture_catalog.dart';
import 'game_rewards.dart';

enum DifferenceFeature { first, second, third, fourth, fifth }

class SpotDifferenceSpot {
  const SpotDifferenceSpot({
    required this.feature,
    required this.left,
    required this.right,
    required this.radius,
    required this.label,
  });

  final DifferenceFeature feature;
  final Offset left;
  final Offset right;
  final Size radius;
  final String label;

  double hitDistance(Offset point, {required bool rightImage}) {
    final center = rightImage ? right : left;
    final dx = (point.dx - center.dx) / radius.width;
    final dy = (point.dy - center.dy) / radius.height;
    return dx * dx + dy * dy;
  }
}

class SpotDifferenceLevel {
  const SpotDifferenceLevel({
    required this.number,
    required this.title,
    required this.difficulty,
    required this.leftAsset,
    required this.rightAsset,
    required this.aspectRatio,
    required this.differences,
  });

  final int number;
  final String title;
  final String difficulty;
  final String leftAsset;
  final String rightAsset;
  final double aspectRatio;
  final List<SpotDifferenceSpot> differences;

  SpotDifferenceSpot? spotAt(Offset point, {required bool rightImage}) {
    if (point.dx < 0 || point.dy < 0 || point.dx > 1 || point.dy > 1) {
      return null;
    }
    SpotDifferenceSpot? closest;
    double distance = double.infinity;
    for (final spot in differences) {
      final candidate = spot.hitDistance(point, rightImage: rightImage);
      if (candidate <= 1 && candidate < distance) {
        closest = spot;
        distance = candidate;
      }
    }
    return closest;
  }
}

class SpotDifferenceService {
  SpotDifferenceService._();

  static final int levelCount = levels.length;
  static const int rewardPerLevel = GameRewards.levelCompletion;
  static const int hintPenalty = GameRewards.hintCost;
  static const String _completedAssetsKey =
      'spot_difference_completed_assets_v3';

  static final List<SpotDifferenceLevel> levels = List.unmodifiable([
    for (final (index, data) in spotPictureCatalog.indexed)
      SpotDifferenceLevel(
        number: index + 1,
        title: data.title,
        difficulty: data.difficulty,
        leftAsset: data.leftAsset,
        rightAsset: data.rightAsset,
        aspectRatio: data.aspectRatio,
        differences: [
          for (final (spotIndex, spot) in data.spots.indexed)
            SpotDifferenceSpot(
              feature: DifferenceFeature.values[spotIndex],
              left: Offset(spot.x, spot.y),
              right: Offset(spot.x, spot.y),
              radius: Size(spot.rx * math.sqrt2, spot.ry * math.sqrt2),
              label: spot.label,
            ),
        ],
      ),
  ]);

  static bool isUnlocked(int level, Set<int> completed) =>
      level >= 1 &&
      level <= levelCount &&
      (level == 1 ||
          completed.contains(level) ||
          completed.contains(level - 1));

  static int nextUncompletedLevel(Set<int> completed) =>
      levels
          .where((level) => !completed.contains(level.number))
          .firstOrNull
          ?.number ??
      levelCount;

  static Set<int> _completedNumbers(Set<String> assets) => {
    for (final level in levels)
      if (assets.contains(level.leftAsset)) level.number,
  };

  static Future<void> _saveCompletedAssets(
    SharedPreferences prefs,
    Set<String> assets,
  ) async {
    try {
      if (!await prefs.setStringList(
        _completedAssetsKey,
        assets.toList()..sort(),
      )) {
        throw StateError('Could not save Spot the Difference progress');
      }
    } catch (_) {
      await prefs.reload();
      rethrow;
    }
  }

  static Future<Set<String>> _loadCompletedAssets(
    SharedPreferences prefs,
  ) async {
    final stored = prefs.getStringList(_completedAssetsKey);
    if (stored != null) return stored.toSet();
    final assets = <String>{};
    await _saveCompletedAssets(prefs, assets);
    return assets;
  }

  static Future<Set<int>> loadCompletedLevels() async {
    final prefs = await SharedPreferences.getInstance();
    return _completedNumbers(await _loadCompletedAssets(prefs));
  }

  static Future<bool> completeLevel(int level) async {
    if (level < 1 || level > levelCount) return false;
    final prefs = await SharedPreferences.getInstance();
    final assets = await _loadCompletedAssets(prefs);
    final completed = _completedNumbers(assets);
    if (!isUnlocked(level, completed) ||
        !assets.add(levels[level - 1].leftAsset)) {
      return false;
    }
    await _saveCompletedAssets(prefs, assets);
    return true;
  }
}
