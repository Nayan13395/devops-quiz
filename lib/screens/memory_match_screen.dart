import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class MemoryMatchScreen extends StatefulWidget {
  const MemoryMatchScreen({super.key});

  @override
  State<MemoryMatchScreen> createState() => _MemoryMatchScreenState();
}

class _MemoryMatchScreenState extends State<MemoryMatchScreen> {
  static const int totalLevels = 100;
  static const String _highestUnlockedLevelKey =
      'memory_match_highest_unlocked_level_v1';
  static const String _allLevelsCompletedKey =
      'memory_match_all_levels_done_v1';

  static const List<String> _allEmojis = [
    '🐳',
    '☁️',
    '🐧',
    '🌿',
    '⚙️',
    '🤖',
    '📜',
    '🅰️',
    '🌐',
    '🐍',
    '🐚',
    '💻',
    '🟨',
    '💎',
    '🆉',
    '📦',
    '🚀',
    '🛡️',
  ];

  late List<String> _emojis;
  List<String> _cards = [];
  final Set<int> _matched = {};
  final List<int> _flipped = [];

  bool _lock = false;
  bool _finished = false;
  int _moves = 0;

  // Preview phase variables
  bool _isPreviewing = true;
  int _previewSeconds = 5;
  Timer? _previewTimer;

  bool _isLoading = true;
  bool _allLevelsCompleted = false;
  int _level = 1;
  int _highestUnlockedLevel = 1;

  int get _pairCount => min(4 + ((_level - 1) ~/ 7), _allEmojis.length);

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  @override
  void dispose() {
    _previewTimer?.cancel();
    super.dispose();
  }

  // =========================================================
  // LEVEL PROGRESSION
  // =========================================================

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLevel = prefs.getInt(_highestUnlockedLevelKey) ?? 1;
    final allLevelsCompleted = prefs.getBool(_allLevelsCompletedKey) ?? false;

    setState(() {
      _highestUnlockedLevel = savedLevel.clamp(1, totalLevels);
      _allLevelsCompleted = allLevelsCompleted;
      _level = allLevelsCompleted ? totalLevels : _highestUnlockedLevel;
      if (!allLevelsCompleted) {
        _selectLevelEmojis();
        _newGame();
      }
      _isLoading = false;
    });
  }

  void _selectLevelEmojis() {
    final random = Random(7919 * _level);
    final shuffled = List<String>.from(_allEmojis)..shuffle(random);
    _emojis = shuffled.take(_pairCount).toList();
  }

  void _startLevel(int level) {
    if (level < 1 || level > _highestUnlockedLevel || level > totalLevels) {
      return;
    }

    setState(() {
      _level = level;
      _selectLevelEmojis();
      _newGame();
    });
  }

  Future<void> _chooseLevel() async {
    final selectedLevel = await showDialog<int>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Choose level'),
        content: SizedBox(
          width: 360,
          height: 420,
          child: GridView.builder(
            itemCount: totalLevels,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final level = index + 1;
              final unlocked = level <= _highestUnlockedLevel;
              return FilledButton.tonal(
                key: ValueKey('memory-match-level-$level'),
                onPressed: unlocked
                    ? () => Navigator.pop(dialogContext, level)
                    : null,
                child: Text('$level'),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close'),
          ),
        ],
      ),
    );

    if (selectedLevel != null && mounted) _startLevel(selectedLevel);
  }

  void _newGame() {
    _cards = [..._emojis, ..._emojis]..shuffle(Random());
    _matched.clear();
    _flipped.clear();
    _lock = true;
    _finished = false;
    _moves = 0;
    _isPreviewing = true;
    _previewSeconds = 5;
    _previewTimer?.cancel();

    _previewTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      if (_previewSeconds > 1) {
        setState(() {
          _previewSeconds--;
        });
      } else {
        timer.cancel();
        setState(() {
          _isPreviewing = false;
          _lock = false;
        });
      }
    });
  }

  int _pointsForMoves() {
    final parMoves = _pairCount + 2;
    if (_moves <= parMoves) return 100;
    if (_moves <= parMoves + 2) return 60;
    if (_moves <= parMoves + 4) return 30;
    return 15;
  }

  Future<void> _tapCard(int index) async {
    if (_lock || _finished || _isPreviewing) return;
    if (_matched.contains(index) || _flipped.contains(index)) return;

    setState(() => _flipped.add(index));

    if (_flipped.length < 2) return;

    setState(() {
      _lock = true;
      _moves += 1;
    });

    final first = _flipped[0];
    final second = _flipped[1];

    if (_cards[first] == _cards[second]) {
      await Future.delayed(const Duration(milliseconds: 300));
      if (!mounted) return;
      setState(() {
        _matched.addAll([first, second]);
        _flipped.clear();
        _lock = false;
      });
      if (_matched.length == _cards.length) await _finish();
    } else {
      await Future.delayed(const Duration(milliseconds: 800));
      if (!mounted) return;
      setState(() {
        _flipped.clear();
        _lock = false;
      });
    }
  }

  Future<void> _finish() async {
    setState(() => _finished = true);

    final points = _pointsForMoves();
    final completedLevel = _level;
    final isFirstClear =
        !_allLevelsCompleted && completedLevel == _highestUnlockedLevel;

    if (isFirstClear) {
      await PointService.addPoints(points);
      final prefs = await SharedPreferences.getInstance();
      if (completedLevel == totalLevels) {
        _allLevelsCompleted = true;
        await prefs.setBool(_allLevelsCompletedKey, true);
      } else {
        _highestUnlockedLevel = completedLevel + 1;
        await prefs.setInt(_highestUnlockedLevelKey, _highestUnlockedLevel);
      }
    }

    if (!mounted) return;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        scrollable: true,
        icon: const Icon(Icons.emoji_events_rounded, size: 46),
        title: Text(
          completedLevel == totalLevels
              ? 'All $totalLevels levels complete!'
              : 'Level $completedLevel complete!',
          textAlign: TextAlign.center,
        ),
        content: Text(
          isFirstClear
              ? 'Completed in $_moves moves.\nYou earned $points points!'
              : 'Completed in $_moves moves.\nThis level was already cleared.',
          textAlign: TextAlign.center,
        ),
        actions: [
          if (completedLevel < totalLevels)
            FilledButton.icon(
              onPressed: () {
                Navigator.pop(dialogContext);
                _startLevel(completedLevel + 1);
              },
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Next level'),
            )
          else
            FilledButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.pop(context);
              },
              child: const Text('Done'),
            ),
        ],
      ),
    );
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // 1. Loading state
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Memory Match 🧠')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_allLevelsCompleted) {
      return Scaffold(
        appBar: AppBar(title: const Text('Memory Match 🧠')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_month_rounded,
                      size: 80,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'All 100 levels complete!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'You completed every Memory Match level. Well played!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 32),
                    FilledButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_rounded),
                      label: const Text('Back to Games'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Active game state
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memory Match 🧠'),
        actions: [
          IconButton(
            tooltip: 'Choose level',
            onPressed: _chooseLevel,
            icon: const Icon(Icons.grid_view_rounded),
          ),
          if (!_isPreviewing)
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'Moves: $_moves',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Level $_level of $totalLevels',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text('$_pairCount pairs'),
                  ],
                ),
                const SizedBox(height: 6),
                LinearProgressIndicator(
                  value: _level / totalLevels,
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(3),
                ),
                const SizedBox(height: 14),
                if (_isPreviewing)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        Text(
                          'Memorize Level $_level',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '$_previewSeconds',
                            style: TextStyle(
                              color: colorScheme.onPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Find $_pairCount matching pairs',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),

                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.85,
                        ),
                    itemCount: _cards.length,
                    itemBuilder: (context, index) {
                      final isMatched = _matched.contains(index);
                      final isFlipped = _flipped.contains(index);
                      final showEmoji = _isPreviewing || isMatched || isFlipped;

                      return InkWell(
                        key: ValueKey('memory-match-card-$index'),
                        onTap: () => _tapCard(index),
                        borderRadius: BorderRadius.circular(14),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          decoration: BoxDecoration(
                            color: isMatched
                                ? Colors.green.shade600
                                : showEmoji
                                ? colorScheme.surfaceContainerHighest
                                : colorScheme.surface,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: colorScheme.primary.withValues(
                                  alpha: 0.3,
                                ),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: showEmoji
                                ? Text(
                                    _cards[index],
                                    style: const TextStyle(fontSize: 36),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(7),
                                    child: Image.asset(
                                      'assets/icon/app_icon.png',
                                      fit: BoxFit.contain,
                                      semanticLabel: 'DevOps Quiz logo',
                                    ),
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
