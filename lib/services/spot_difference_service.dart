import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum DifferenceFeature {
  cloud,
  sun,
  antenna,
  windows,
  tree,
  flower,
  flag,
  fan,
  roof,
  door,
  dish,
  chimney,
}

class SpotDifferenceSpot {
  const SpotDifferenceSpot({
    required this.feature,
    required this.left,
    required this.right,
    required this.label,
  });

  final DifferenceFeature feature;
  final Offset left;
  final Offset right;
  final String label;
}

class SpotDifferenceLevel {
  const SpotDifferenceLevel({
    required this.number,
    required this.title,
    required this.sceneIndex,
    required this.palette,
    required this.differences,
  });

  final int number;
  final String title;
  final int sceneIndex;
  final int palette;
  final List<SpotDifferenceSpot> differences;
}

class SpotDifferenceService {
  SpotDifferenceService._();

  static const int levelCount = 100;
  static const int differencesPerLevel = 5;
  static const int rewardPerLevel = 50;
  static const int hintPenalty = 10;
  static const String _completedKey = 'spot_difference_completed_levels_v1';

  static const List<SpotDifferenceSpot> _features = [
    SpotDifferenceSpot(
      feature: DifferenceFeature.cloud,
      left: Offset(0.20, 0.23),
      right: Offset(0.20, 0.23),
      label: 'Cloud shape',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.sun,
      left: Offset(0.82, 0.17),
      right: Offset(0.75, 0.21),
      label: 'Sun position',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.antenna,
      left: Offset(0.66, 0.34),
      right: Offset(0.66, 0.34),
      label: 'Antenna',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.windows,
      left: Offset(0.59, 0.60),
      right: Offset(0.59, 0.60),
      label: 'Window',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.tree,
      left: Offset(0.82, 0.68),
      right: Offset(0.82, 0.68),
      label: 'Tree branch',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.flower,
      left: Offset(0.19, 0.82),
      right: Offset(0.19, 0.82),
      label: 'Flower petal',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.flag,
      left: Offset(0.49, 0.28),
      right: Offset(0.49, 0.28),
      label: 'Flag color',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.fan,
      left: Offset(0.65, 0.57),
      right: Offset(0.65, 0.57),
      label: 'Server fan',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.roof,
      left: Offset(0.22, 0.39),
      right: Offset(0.22, 0.39),
      label: 'Roof color',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.door,
      left: Offset(0.22, 0.69),
      right: Offset(0.22, 0.69),
      label: 'Door',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.dish,
      left: Offset(0.66, 0.34),
      right: Offset(0.66, 0.34),
      label: 'Satellite dish',
    ),
    SpotDifferenceSpot(
      feature: DifferenceFeature.chimney,
      left: Offset(0.29, 0.28),
      right: Offset(0.29, 0.28),
      label: 'Chimney',
    ),
  ];

  static const List<String> _sceneStyles = [
    'Golden hour',
    'Breezy morning',
    'After the rain',
    'Summer afternoon',
    'Clear skies',
    'Soft sunset',
    'Fresh spring day',
    'Cloud watching',
    'Evening glow',
    'Garden morning',
  ];

  static const List<String> _scenePlaces = [
    'Cloudside Campus',
    'Antenna Avenue',
    'Sunny Server Farm',
    'Garden Gateway',
    'Blue-Sky Datacenter',
    'Rooftop Observatory',
    'Flower Field Station',
    'Windy Hill Servers',
    'Sunset Cloud Station',
    'Lakeside Network Hub',
  ];

  static List<List<int>> _buildDifferenceSets() {
    final combinations = <List<int>>[];
    void addCombinations(int start, List<int> current) {
      if (current.length == differencesPerLevel) {
        combinations.add(List.unmodifiable(current));
        return;
      }
      for (
        int index = start;
        index <= _features.length - (differencesPerLevel - current.length);
        index++
      ) {
        current.add(index);
        addCombinations(index + 1, current);
        current.removeLast();
      }
    }

    addCombinations(0, []);
    combinations.shuffle(math.Random(0x5D1FF));
    return combinations.take(levelCount).toList(growable: false);
  }

  static final List<List<int>> _differenceSets = _buildDifferenceSets();

  static final List<SpotDifferenceLevel> levels = [
    for (int level = 1; level <= levelCount; level++)
      SpotDifferenceLevel(
        number: level,
        title:
            '${_sceneStyles[(level - 1) % _sceneStyles.length]} · '
            '${_scenePlaces[(level - 1) ~/ _scenePlaces.length]}',
        sceneIndex: (level - 1) ~/ _scenePlaces.length,
        palette: (level - 1) % _sceneStyles.length,
        differences: [
          for (final featureIndex in _differenceSets[level - 1])
            _features[featureIndex],
        ],
      ),
  ];

  static bool isUnlocked(int level, Set<int> completed) =>
      level == 1 || completed.contains(level - 1);

  static Future<Set<int>> loadCompletedLevels() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      for (final value in prefs.getStringList(_completedKey) ?? const [])
        if (int.tryParse(value) case final int level)
          if (level >= 1 && level <= levelCount) level,
    };
  }

  static Future<bool> completeLevel(int level) async {
    if (level < 1 || level > levelCount) return false;
    final prefs = await SharedPreferences.getInstance();
    final completed = await loadCompletedLevels();
    if (!isUnlocked(level, completed) || !completed.add(level)) return false;
    await prefs.setStringList(
      _completedKey,
      (completed.toList()..sort()).map((value) => '$value').toList(),
    );
    return true;
  }
}
