import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/find_words_level_service.dart';
import '../services/point_service.dart';

class FindWordsScreen extends StatefulWidget {
  const FindWordsScreen({super.key});

  @override
  State<FindWordsScreen> createState() => _FindWordsScreenState();
}

class _FindWordsScreenState extends State<FindWordsScreen> {
  static const String _progressKey = 'find_words_completed_levels_v1';
  static const List<Color> _wordColors = [
    Color(0xFF087F73),
    Color(0xFFB84D70),
    Color(0xFF4E6FB4),
    Color(0xFFB47719),
    Color(0xFF7556A8),
    Color(0xFF4C7E42),
    Color(0xFFCA6742),
    Color(0xFF377F9E),
    Color(0xFF9B5639),
    Color(0xFF596A39),
  ];

  bool _isLoading = true;
  bool _allLevelsComplete = false;
  int _completedLevels = 0;
  late FindWordsPuzzle _puzzle;
  final Set<String> _foundWords = {};
  final Map<String, List<int>> _foundPaths = {};
  int? _selectionStart;
  int? _selectionEnd;
  int? _hintCell;
  int _hintsUsed = 0;
  String _status = 'Drag through a word';
  Timer? _hintTimer;

  int get _level => _puzzle.level;
  int get _remainingWords => _puzzle.words.length - _foundWords.length;
  int get _reward =>
      math.max(0, 50 + _puzzle.words.length * 5 - _hintsUsed * 10);

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  @override
  void dispose() {
    _hintTimer?.cancel();
    super.dispose();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final completed = (prefs.getInt(_progressKey) ?? 0).clamp(
      0,
      FindWordsLevelService.totalLevels,
    );
    if (!mounted) return;

    setState(() {
      _completedLevels = completed;
      _allLevelsComplete = completed == FindWordsLevelService.totalLevels;
      if (!_allLevelsComplete) _prepareLevel(completed + 1);
      _isLoading = false;
    });
  }

  void _prepareLevel(int level) {
    _hintTimer?.cancel();
    _puzzle = FindWordsLevelService.create(level);
    _foundWords.clear();
    _foundPaths.clear();
    _selectionStart = null;
    _selectionEnd = null;
    _hintCell = null;
    _hintsUsed = 0;
    _status = 'Drag through each word';
  }

  void _startLevel(int level) {
    if (level < 1 || level > _completedLevels + 1) return;
    setState(() {
      _allLevelsComplete = false;
      _prepareLevel(level);
    });
  }

  Future<void> _showLevelPicker() async {
    final maxUnlocked = math.min(
      FindWordsLevelService.totalLevels,
      _completedLevels + 1,
    );
    final selected = await showDialog<int>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Choose level'),
        content: SizedBox(
          width: 360,
          height: 420,
          child: GridView.builder(
            itemCount: maxUnlocked,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              final level = index + 1;
              return FilledButton.tonal(
                key: ValueKey('find-words-level-$level'),
                onPressed: () => Navigator.pop(dialogContext, level),
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
    if (selected != null && mounted) _startLevel(selected);
  }

  int? _cellAt(Offset position, Size boardSize) {
    if (position.dx < 0 ||
        position.dy < 0 ||
        position.dx >= boardSize.width ||
        position.dy >= boardSize.height) {
      return null;
    }
    final cellSize = boardSize.width / _puzzle.gridSize;
    final row = (position.dy / cellSize).floor();
    final column = (position.dx / cellSize).floor();
    if (row >= _puzzle.gridSize || column >= _puzzle.gridSize) return null;
    return row * _puzzle.gridSize + column;
  }

  void _beginSelection(DragStartDetails details, Size boardSize) {
    final cell = _cellAt(details.localPosition, boardSize);
    if (cell == null) return;
    setState(() {
      _selectionStart = cell;
      _selectionEnd = cell;
      _status = 'Release to select';
    });
  }

  void _updateSelection(DragUpdateDetails details, Size boardSize) {
    final start = _selectionStart;
    final cell = _cellAt(details.localPosition, boardSize);
    if (start == null || cell == null || cell == _selectionEnd) return;
    setState(() => _selectionEnd = cell);
  }

  Future<void> _finishSelection(DragEndDetails details) async {
    final start = _selectionStart;
    final end = _selectionEnd;
    if (start == null || end == null) return;

    final path = _puzzle.pathBetween(start, end);
    final word = _puzzle.wordAtPath(start, end);
    if (word != null && !_foundWords.contains(word)) {
      setState(() {
        _foundWords.add(word);
        _foundPaths[word] = path!;
        _status = 'Found $word';
        _selectionStart = null;
        _selectionEnd = null;
      });
      if (_foundWords.length == _puzzle.words.length) await _completeLevel();
      return;
    }

    setState(() {
      _selectionStart = null;
      _selectionEnd = null;
      _status = word == null ? 'No word there' : 'Already found $word';
    });
  }

  Future<void> _showHint() async {
    final nextWord = _puzzle.words.firstWhere(
      (word) => !_foundWords.contains(word),
      orElse: () => '',
    );
    if (nextWord.isEmpty) return;

    _hintTimer?.cancel();
    setState(() {
      _hintCell = _puzzle.wordPaths[nextWord]!.first;
      _hintsUsed++;
      _status = 'Look for $nextWord';
    });
    _hintTimer = Timer(const Duration(milliseconds: 1400), () {
      if (mounted) setState(() => _hintCell = null);
    });
  }

  Future<void> _completeLevel() async {
    final completedLevel = _level;
    final firstClear = completedLevel > _completedLevels;
    final points = _reward;

    if (firstClear) {
      await PointService.addLocalPoints(points);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_progressKey, completedLevel);
      if (!mounted) return;
      setState(() {
        _completedLevels = completedLevel;
        _allLevelsComplete =
            completedLevel == FindWordsLevelService.totalLevels;
      });
    }

    if (!mounted) return;
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: const Icon(Icons.emoji_events_rounded, size: 44),
        title: Text(
          completedLevel == FindWordsLevelService.totalLevels
              ? 'All levels complete!'
              : 'Level $completedLevel complete!',
          textAlign: TextAlign.center,
        ),
        content: Text(
          firstClear
              ? 'You found every word and earned $points points.'
              : 'You found every word. This level was already cleared.',
          textAlign: TextAlign.center,
        ),
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              if (completedLevel < FindWordsLevelService.totalLevels) {
                _startLevel(completedLevel + 1);
              } else {
                Navigator.pop(context);
              }
            },
            child: Text(
              completedLevel == FindWordsLevelService.totalLevels
                  ? 'Finish'
                  : 'Next level',
            ),
          ),
        ],
      ),
    );
  }

  Color? _foundColorForCell(int cell, ColorScheme colors) {
    var wordIndex = 0;
    for (final entry in _foundPaths.entries) {
      if (entry.value.contains(cell))
        return _wordColors[wordIndex % _wordColors.length];
      wordIndex++;
    }
    return null;
  }

  Widget _buildBoard(ColorScheme colors) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final side = math.min(constraints.maxWidth, constraints.maxHeight);
        final boardSize = Size.square(side);
        final selectedPath = _selectionStart != null && _selectionEnd != null
            ? _puzzle.pathBetween(_selectionStart!, _selectionEnd!) ??
                  <int>[_selectionStart!]
            : const <int>[];

        return SizedBox.square(
          key: const ValueKey('find-words-board'),
          dimension: side,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onPanStart: (details) => _beginSelection(details, boardSize),
            onPanUpdate: (details) => _updateSelection(details, boardSize),
            onPanEnd: _finishSelection,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _puzzle.letters.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: _puzzle.gridSize,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemBuilder: (context, index) {
                final selected = selectedPath.contains(index);
                final foundColor = _foundColorForCell(index, colors);
                final hinted = _hintCell == index;
                final background = hinted
                    ? colors.tertiaryContainer
                    : selected
                    ? colors.primaryContainer
                    : foundColor?.withValues(alpha: 0.18) ??
                          colors.surfaceContainerHighest;
                final border = hinted
                    ? colors.tertiary
                    : selected
                    ? colors.primary
                    : foundColor ??
                          colors.outlineVariant.withValues(alpha: 0.3);
                final letterSize = math.max(
                  9.0,
                  math.min(22.0, side / _puzzle.gridSize * 0.56),
                );

                return DecoratedBox(
                  key: ValueKey('find-words-cell-$index'),
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(
                      color: border,
                      width: selected || hinted ? 1.5 : 0.5,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _puzzle.letters[index],
                        style: TextStyle(
                          fontSize: letterSize,
                          fontWeight: FontWeight.w700,
                          color: colors.onSurface,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Find Words')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_allLevelsComplete) {
      return Scaffold(
        appBar: AppBar(title: const Text('Find Words')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.emoji_events_rounded, size: 64, color: colors.primary),
              const SizedBox(height: 16),
              const Text(
                'All 500 levels complete!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: _showLevelPicker,
                icon: const Icon(Icons.grid_view_rounded),
                label: const Text('Review levels'),
              ),
            ],
          ),
        ),
      );
    }

    final difficulty = _level <= 25
        ? 'Easy'
        : _level <= 60
        ? 'Medium'
        : 'Hard';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Words'),
        actions: [
          IconButton(
            tooltip: 'Choose level',
            onPressed: _showLevelPicker,
            icon: const Icon(Icons.grid_view_rounded),
          ),
          IconButton(
            tooltip: 'Hint',
            onPressed: _showHint,
            icon: const Icon(Icons.lightbulb_outline_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Level $_level/${FindWordsLevelService.totalLevels}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    '$difficulty · ${_puzzle.gridSize}×${_puzzle.gridSize}',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              LinearProgressIndicator(
                value: _level / FindWordsLevelService.totalLevels,
                minHeight: 4,
                borderRadius: BorderRadius.circular(4),
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 6,
                runSpacing: 3,
                children: [
                  for (final word in _puzzle.words)
                    Text(
                      word,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: _foundWords.contains(word)
                            ? colors.onSurfaceVariant.withValues(alpha: 0.55)
                            : colors.onSurface,
                        decoration: _foundWords.contains(word)
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(child: Center(child: _buildBoard(colors))),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _status,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '$_remainingWords left',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '+$_reward pts',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: colors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
