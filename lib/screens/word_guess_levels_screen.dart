import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';
import '../services/word_guess_level_service.dart';

class WordGuessLevelsScreen extends StatefulWidget {
  const WordGuessLevelsScreen({super.key});

  @override
  State<WordGuessLevelsScreen> createState() => _WordGuessLevelsScreenState();
}

class _WordGuessLevelsScreenState extends State<WordGuessLevelsScreen> {
  static const int _maxAttempts = 6;
  static const int _levelReward = 100;
  static const int _hintPenalty = 20;
  static const String _progressKey = 'word_guess_completed_levels_v2';
  static const List<String> _keyRows = ['QWERTYUIOP', 'ASDFGHJKL', 'ZXCVBNM'];

  final Map<String, int> _keyStates = {};
  late String _word;
  late List<String?> _inputLetters;
  final List<String> _guesses = [];
  Set<int> _revealedPositions = {};
  int _completedLevels = 0;
  int _hintsUsed = 0;
  bool _isLoading = true;
  bool _finished = false;
  bool _won = false;
  bool _allLevelsComplete = false;

  WordGuessLevel get _level => WordGuessLevelService.levels[_completedLevels];
  int get _levelNumber => _completedLevels + 1;
  int get _earnedPoints =>
      math.max(0, _levelReward - _hintsUsed * _hintPenalty);
  int get _enteredCount => _inputLetters.whereType<String>().length;
  int get _requiredInputs => _word.length - _revealedPositions.length;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final progress = (prefs.getInt(_progressKey) ?? 0).clamp(
      0,
      WordGuessLevelService.levels.length,
    );
    if (!mounted) return;

    setState(() {
      _completedLevels = progress;
      _allLevelsComplete = progress == WordGuessLevelService.levels.length;
      if (!_allLevelsComplete) _startLevel();
      _isLoading = false;
    });
  }

  void _startLevel() {
    _word = _level.word;
    _inputLetters = List<String?>.filled(_word.length, null);
    _guesses.clear();
    _keyStates.clear();
    _hintsUsed = 0;
    _finished = false;
    _won = false;

    final revealCount = _word.length <= 4 ? 2 : 1;
    _revealedPositions = {
      for (var index = 0; index < revealCount; index++)
        (index * (_word.length - 1) / math.max(1, revealCount - 1)).round(),
    };
  }

  String _currentGuess() => List.generate(_word.length, (index) {
    if (_revealedPositions.contains(index)) return _word[index];
    return _inputLetters[index] ?? '';
  }).join();

  List<int> _evaluate(String guess) {
    final states = List<int>.filled(_word.length, 0);
    final remaining = <String, int>{};

    for (var index = 0; index < _word.length; index++) {
      if (guess[index] == _word[index]) {
        states[index] = 2;
      } else {
        remaining[_word[index]] = (remaining[_word[index]] ?? 0) + 1;
      }
    }

    for (var index = 0; index < _word.length; index++) {
      if (states[index] == 2) continue;
      final letter = guess[index];
      if ((remaining[letter] ?? 0) > 0) {
        states[index] = 1;
        remaining[letter] = remaining[letter]! - 1;
      }
    }

    return states;
  }

  void _enterLetter(String letter) {
    if (_finished || _enteredCount >= _requiredInputs) return;
    final position = List<int>.generate(_word.length, (index) => index)
        .firstWhere(
          (index) =>
              !_revealedPositions.contains(index) &&
              _inputLetters[index] == null,
        );
    setState(() => _inputLetters[position] = letter);
  }

  void _deleteLetter() {
    if (_finished) return;
    for (var index = _word.length - 1; index >= 0; index--) {
      if (!_revealedPositions.contains(index) && _inputLetters[index] != null) {
        setState(() => _inputLetters[index] = null);
        return;
      }
    }
  }

  void _useHint() {
    if (_finished || _revealedPositions.length == _word.length) return;
    final position = List<int>.generate(
      _word.length,
      (index) => index,
    ).firstWhere((index) => !_revealedPositions.contains(index));
    setState(() {
      _revealedPositions = {..._revealedPositions, position};
      _inputLetters[position] = null;
      _hintsUsed++;
    });
  }

  void _submit() {
    if (_finished) return;
    if (_enteredCount != _requiredInputs) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Fill all ${_word.length} letters to submit.')),
      );
      return;
    }

    final guess = _currentGuess();
    final states = _evaluate(guess);
    setState(() {
      _guesses.add(guess);
      for (var index = 0; index < _word.length; index++) {
        final letter = guess[index];
        final old = _keyStates[letter] ?? 0;
        if (states[index] > old) _keyStates[letter] = states[index];
      }
      _won = states.every((state) => state == 2);
      _finished = _won || _guesses.length == _maxAttempts;
      _inputLetters = List<String?>.filled(_word.length, null);
    });

    if (_finished) _finishLevel();
  }

  Future<void> _finishLevel() async {
    final didWin = _won;
    final completedWord = _word;
    final hintsUsed = _hintsUsed;
    final points = didWin ? _earnedPoints : 0;
    final completedNumber = _levelNumber;

    if (didWin) {
      await PointService.addPoints(points);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_progressKey, completedNumber);
      if (!mounted) return;
      setState(() {
        _completedLevels = completedNumber;
        _allLevelsComplete =
            _completedLevels == WordGuessLevelService.levels.length;
        if (!_allLevelsComplete) _startLevel();
      });
    }

    if (!mounted) return;
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(
          didWin ? Icons.emoji_events_rounded : Icons.lightbulb_outline_rounded,
          size: 44,
        ),
        title: Text(
          didWin
              ? _allLevelsComplete
                    ? 'All Levels Complete!'
                    : 'Level $completedNumber Complete!'
              : 'Try Again',
          textAlign: TextAlign.center,
        ),
        content: Text(
          didWin
              ? 'The word was $completedWord. You earned $points points${hintsUsed == 0 ? '' : ' after $hintsUsed hint${hintsUsed == 1 ? '' : 's'}'}.'
              : 'The word was $completedWord. Level $_levelNumber is still waiting for you.',
          textAlign: TextAlign.center,
        ),
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              if (_allLevelsComplete) {
                Navigator.pop(context);
              } else if (!didWin) {
                setState(_startLevel);
              }
            },
            child: Text(
              _allLevelsComplete
                  ? 'Finish'
                  : didWin
                  ? 'Next Level'
                  : 'Retry Level',
            ),
          ),
        ],
      ),
    );
  }

  Color _stateColor(int state) {
    switch (state) {
      case 2:
        return Colors.green.shade600;
      case 1:
        return Colors.orange.shade600;
      default:
        return Theme.of(context).colorScheme.surfaceContainerHighest;
    }
  }

  Widget _buildRow(int row, ColorScheme colors) {
    var guess = '';
    List<int>? states;
    if (row < _guesses.length) {
      guess = _guesses[row];
      states = _evaluate(guess);
    } else if (row == _guesses.length && !_finished) {
      guess = _currentGuess();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: List.generate(_word.length, (column) {
          final letter = column < guess.length ? guess[column] : '';
          final isRevealed =
              row == _guesses.length &&
              !_finished &&
              _revealedPositions.contains(column);
          final state = states != null && column < states.length
              ? states[column]
              : isRevealed
              ? 2
              : -1;
          final fontSize = _word.length > 12
              ? 15.0
              : _word.length > 9
              ? 18.0
              : 22.0;

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: AspectRatio(
                aspectRatio: 0.92,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 130),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: state >= 0 ? _stateColor(state) : colors.surface,
                    border: Border.all(
                      color: state < 0
                          ? colors.outlineVariant
                          : Colors.transparent,
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      letter,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _keyButton(String letter, ColorScheme colors) {
    final state = _keyStates[letter];
    Color background = colors.surfaceContainerHighest;
    Color foreground = colors.onSurface;
    if (state == 2) {
      background = Colors.green.shade600;
      foreground = Colors.white;
    } else if (state == 1) {
      background = Colors.orange.shade600;
      foreground = Colors.white;
    } else if (state == 0) {
      background = colors.surfaceContainerHighest.withValues(alpha: 0.4);
      foreground = colors.onSurface.withValues(alpha: 0.4);
    }

    return Material(
      key: ValueKey('word-guess-key-$letter'),
      color: background,
      borderRadius: BorderRadius.circular(7),
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: _finished ? null : () => _enterLetter(letter),
        child: Center(
          child: Text(
            letter,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: foreground,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  void _showHelpDialog() {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('How to Play'),
        content: const Text(
          'Each level has one DevOps word. One or two letters are shown for free. '
          'Type the remaining letters and press Enter. Use a hint to reveal the '
          'next letter; each hint reduces the level reward by 20 points. A win '
          'earns up to 100 points.',
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isCompact = MediaQuery.sizeOf(context).height < 600;
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Word Guess')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_allLevelsComplete) {
      return Scaffold(
        appBar: AppBar(title: const Text('Word Guess')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.emoji_events_rounded,
                  size: 68,
                  color: colors.primary,
                ),
                const SizedBox(height: 16),
                const Text(
                  'All 100 Levels Complete!',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_rounded),
                  label: const Text('Back to Games'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final difficulty = switch (_level.difficulty) {
      WordGuessDifficulty.easy => 'Easy',
      WordGuessDifficulty.medium => 'Medium',
      WordGuessDifficulty.hard => 'Hard',
    };
    final hintEnabled = !_finished && _revealedPositions.length < _word.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Guess'),
        actions: [
          IconButton(
            tooltip: 'How to play',
            onPressed: _showHelpDialog,
            icon: const Icon(Icons.help_outline_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, isCompact ? 4 : 12, 12, 4),
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'Level $_levelNumber/${WordGuessLevelService.levels.length}',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        difficulty,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: colors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    _level.hint,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Reward $_earnedPoints pts · hints used $_hintsUsed',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 480),
                    child: Column(
                      children: [
                        for (var row = 0; row < _maxAttempts; row++)
                          _buildRow(row, colors),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  TextButton.icon(
                    key: const ValueKey('word-guess-hint'),
                    onPressed: hintEnabled ? _useHint : null,
                    style: TextButton.styleFrom(
                      minimumSize: Size(0, isCompact ? 30 : 40),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: isCompact ? 0 : 4,
                      ),
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    icon: const Icon(Icons.lightbulb_outline_rounded),
                    label: const Text('Hint · −20 pts'),
                  ),
                  ..._keyRows.map(
                    (row) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: row
                            .split('')
                            .map(
                              (letter) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2,
                                  ),
                                  child: SizedBox(
                                    height: isCompact ? 34 : 44,
                                    child: _keyButton(letter, colors),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: isCompact ? 1 : 4),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: isCompact ? 40 : 46,
                            child: FilledButton.icon(
                              key: const ValueKey('word-guess-enter'),
                              onPressed: _finished ? null : _submit,
                              icon: const Icon(Icons.check_rounded),
                              label: const Text('Enter'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: SizedBox(
                            height: isCompact ? 40 : 46,
                            child: OutlinedButton.icon(
                              key: const ValueKey('word-guess-delete'),
                              onPressed: _finished ? null : _deleteLetter,
                              icon: const Icon(Icons.backspace_rounded),
                              label: const Text('Delete'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
