import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class WordGuessScreen extends StatefulWidget {
  const WordGuessScreen({super.key});

  @override
  State<WordGuessScreen> createState() => _WordGuessScreenState();
}

class _WordGuessScreenState extends State<WordGuessScreen> {
  static const int _maxAttempts = 6;

  static const List<String> _keyRows = ['QWERTYUIOP', 'ASDFGHJKL', 'ZXCVBNM'];

  static const List<String> _words = [
    'DOCKER',
    'PYTHON',
    'JENKINS',
    'ANSIBLE',
    'GIT',
    'TERRAFORM',
    'AWS',
    'AZURE',
    'GCP',
    'SCRIPTING',
    'LINUX',
    'CLOUD',
    'VAULT',
    'KUBERNETES',
  ];

  static const String _lastPlayedKey = 'word_guess_last_played';

  late String _word;
  final List<String> _guesses = [];
  String _current = '';
  final Map<String, int> _keyStates = {};
  bool _finished = false;
  bool _won = false;

  // Daily play tracking
  bool _hasPlayedToday = false;
  bool _isLoading = true;
  DateTime? _lastPlayedDate;

  @override
  void initState() {
    super.initState();
    _checkDailyPlay();
  }

  // =========================================================
  // DAILY PLAY CHECK
  // =========================================================

  Future<void> _checkDailyPlay() async {
    final prefs = await SharedPreferences.getInstance();
    final String? lastPlayedStr = prefs.getString(_lastPlayedKey);

    if (lastPlayedStr != null) {
      _lastPlayedDate = DateTime.parse(lastPlayedStr);
      final now = DateTime.now();
      final lastPlayed = _lastPlayedDate!;

      // Check if it's the same day (year, month, day)
      if (lastPlayed.year == now.year &&
          lastPlayed.month == now.month &&
          lastPlayed.day == now.day) {
        setState(() {
          _hasPlayedToday = true;
          _isLoading = false;
        });
        return;
      }
    }

    // Can play - initialize game
    _newGame();

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _markAsPlayed() async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    await prefs.setString(_lastPlayedKey, now.toIso8601String());
  }

  void _newGame() {
    _word = _words[Random().nextInt(_words.length)];
    _guesses.clear();
    _current = '';
    _keyStates.clear();
    _finished = false;
    _won = false;
  }

  List<int> _evaluate(String guess, String word) {
    final states = List<int>.filled(word.length, 0);
    final remaining = <String, int>{};

    for (int i = 0; i < word.length; i++) {
      if (guess[i] == word[i]) {
        states[i] = 2;
      } else {
        remaining[word[i]] = (remaining[word[i]] ?? 0) + 1;
      }
    }

    for (int i = 0; i < word.length; i++) {
      if (states[i] == 2) continue;
      final letter = guess[i];
      if ((remaining[letter] ?? 0) > 0) {
        states[i] = 1;
        remaining[letter] = remaining[letter]! - 1;
      }
    }

    return states;
  }

  void _submit() {
    if (_finished) return;

    if (_current.length != _word.length) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Enter ${_word.length} letters!')));
      return;
    }

    final states = _evaluate(_current, _word);

    setState(() {
      _guesses.add(_current);

      for (int i = 0; i < _word.length; i++) {
        final letter = _current[i];
        final old = _keyStates[letter] ?? 0;
        if (states[i] > old) _keyStates[letter] = states[i];
      }

      if (states.every((s) => s == 2)) {
        _won = true;
        _finished = true;
      } else if (_guesses.length == _maxAttempts) {
        _finished = true;
      }

      _current = '';
    });

    if (_finished) _finish();
  }

  Future<void> _finish() async {
    final points = _won ? (_maxAttempts - _guesses.length + 1) * 15 : 0;

    if (points > 0) await PointService.addPoints(points);
    await _markAsPlayed(); // Mark as played after finishing (win or lose)

    if (!mounted) return;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(
          _won
              ? Icons.emoji_events_rounded
              : Icons.sentiment_dissatisfied_rounded,
          size: 46,
        ),
        title: Text(
          _won ? 'You Won!' : 'Game Over',
          textAlign: TextAlign.center,
        ),
        content: Text(
          _won
              ? 'You guessed $_word in ${_guesses.length} tries.\nYou earned $points points!\n\nCome back tomorrow for a new word!'
              : 'The word was $_word.\nBetter luck tomorrow!',
          textAlign: TextAlign.center,
        ),
        actions: [
          // "Play Again" removed to enforce daily limit
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

  Widget _buildRow(int row, ColorScheme colorScheme) {
    String guess = '';
    List<int>? states;

    if (row < _guesses.length) {
      guess = _guesses[row];
      states = _evaluate(guess, _word);
    } else if (row == _guesses.length && !_finished) {
      guess = _current;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: List.generate(_word.length, (col) {
          final letter = col < guess.length ? guess[col] : '';
          final state = states != null && col < states.length
              ? states[col]
              : -1;

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: state >= 0
                        ? _stateColor(state)
                        : colorScheme.surface,
                    border: Border.all(
                      color: state < 0
                          ? colorScheme.outlineVariant
                          : Colors.transparent,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    letter,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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

  Widget _keyButton(String letter, ColorScheme colorScheme) {
    final state = _keyStates[letter];

    Color background = colorScheme.surfaceContainerHighest;
    Color foreground = colorScheme.onSurface;

    if (state == 2) {
      background = Colors.green.shade600;
      foreground = Colors.white;
    } else if (state == 1) {
      background = Colors.orange.shade600;
      foreground = Colors.white;
    } else if (state == 0) {
      background = colorScheme.surfaceContainerHighest.withValues(alpha: 0.4);
      foreground = colorScheme.onSurface.withValues(alpha: 0.4);
    }

    return Material(
      color: background,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: _finished
            ? null
            : () => setState(() {
                if (_current.length < _word.length) _current += letter;
              }),
        child: Center(
          child: Text(
            letter,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: foreground,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  void _showHelpDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('How to Play', textAlign: TextAlign.center),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Guess the DevOps word in 6 tries!\n'),
            _buildHelpRow(Colors.green.shade600, 'Correct letter & position'),
            const SizedBox(height: 8),
            _buildHelpRow(
              Colors.orange.shade600,
              'Correct letter, wrong position',
            ),
            const SizedBox(height: 8),
            _buildHelpRow(
              Theme.of(context).colorScheme.surfaceContainerHighest,
              'Letter not in word',
            ),
            const SizedBox(height: 12),
            const Text('Each guess must be a valid DevOps term!'),
          ],
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Got it!'),
          ),
        ],
      ),
    );
  }

  Widget _buildHelpRow(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Expanded(child: Text(text, style: const TextStyle(fontSize: 12))),
      ],
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
        appBar: AppBar(title: const Text('Word Guess 🔤')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    // 2. Already played today state
    if (_hasPlayedToday) {
      return Scaffold(
        appBar: AppBar(title: const Text('Word Guess 🔤')),
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
                      'Already Played Today!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _lastPlayedDate != null
                          ? 'You played on ${_lastPlayedDate!.day}/${_lastPlayedDate!.month}/${_lastPlayedDate!.year}.\n\nCome back tomorrow for a new word!'
                          : 'You have already played today.\n\nCome back tomorrow for a new challenge!',
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

    // 3. Active Game state
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Guess 🔤'),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: _showHelpDialog,
            tooltip: 'How to Play',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        _maxAttempts,
                        (row) => _buildRow(row, colorScheme),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  ..._keyRows.map(
                    (keyRow) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          ...keyRow
                              .split('')
                              .map(
                                (letter) => Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: SizedBox(
                                      height: 48,
                                      child: _keyButton(letter, colorScheme),
                                    ),
                                  ),
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 48,
                            child: FilledButton.icon(
                              onPressed: _finished ? null : _submit,
                              icon: const Icon(Icons.check_rounded, size: 20),
                              label: const Text(
                                'Enter',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 48,
                            child: OutlinedButton.icon(
                              onPressed: _finished
                                  ? null
                                  : () => setState(() {
                                      if (_current.isNotEmpty) {
                                        _current = _current.substring(
                                          0,
                                          _current.length - 1,
                                        );
                                      }
                                    }),
                              icon: const Icon(
                                Icons.backspace_rounded,
                                size: 20,
                              ),
                              label: const Text(
                                'Del',
                                style: TextStyle(fontSize: 16),
                              ),
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
