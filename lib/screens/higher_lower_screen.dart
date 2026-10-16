import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class HigherLowerScreen extends StatefulWidget {
  const HigherLowerScreen({super.key});

  @override
  State<HigherLowerScreen> createState() => _HigherLowerScreenState();
}

class _HigherLowerScreenState extends State<HigherLowerScreen> {
  static const String _lastPlayedKey = 'higher_lower_last_played';

  final Random _random = Random();

  int _current = 0;
  int _streak = 0;
  int _runPoints = 0;
  int _lastNext = 0;
  bool _gameOver = false;

  // Daily play tracking
  bool _hasPlayedToday = false;
  bool _isLoading = true;
  DateTime? _lastPlayedDate;

  @override
  void initState() {
    super.initState();
    _checkDailyPlay();
  }

  Future<void> _checkDailyPlay() async {
    final prefs = await SharedPreferences.getInstance();
    final String? lastPlayedStr = prefs.getString(_lastPlayedKey);

    if (lastPlayedStr != null) {
      _lastPlayedDate = DateTime.parse(lastPlayedStr);
      final now = DateTime.now();
      final lastPlayed = _lastPlayedDate!;

      // Check if it's the same day
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
    _current = _random.nextInt(100) + 1;

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
    _current = _random.nextInt(100) + 1;
    _streak = 0;
    _runPoints = 0;
    _gameOver = false;
  }

  Future<void> _guess(bool higher) async {
    if (_gameOver) return;

    int next = _random.nextInt(100) + 1;
    while (next == _current) {
      next = _random.nextInt(100) + 1;
    }

    final correct = higher ? next > _current : next < _current;

    setState(() {
      _lastNext = next;

      if (correct) {
        _streak += 1;
        _runPoints += 10 + ((_streak - 1) ~/ 3) * 5;
        _current = next;
      } else {
        _gameOver = true;
      }
    });

    if (!correct) {
      if (_runPoints > 0) await PointService.addPoints(_runPoints);
      await _markAsPlayed(); // Mark as played after game over

      if (!mounted) return;

      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) => AlertDialog(
          scrollable: true,
          icon: const Icon(Icons.trending_down_rounded, size: 46),
          title: const Text('Game Over', textAlign: TextAlign.center),
          content: Text(
            'The number was $_lastNext.\nStreak: $_streak\nYou earned $_runPoints points!\n\nCome back tomorrow for another chance!',
            textAlign: TextAlign.center,
          ),
          actions: [
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
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    // Loading state
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Higher or Lower 📈')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    // Already played today
    if (_hasPlayedToday) {
      return Scaffold(
        appBar: AppBar(title: const Text('Higher or Lower 📈')),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
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
                              ? 'You played on ${_lastPlayedDate!.day}/${_lastPlayedDate!.month}/${_lastPlayedDate!.year}.\n\nCome back tomorrow to build a new streak!'
                              : 'You have already played today.\n\nCome back tomorrow for another chance!',
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
          ),
        ),
      );
    }

    // Game screen
    return Scaffold(
      appBar: AppBar(title: const Text('Higher or Lower 📈')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 520),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 12,
                          children: [
                            Chip(label: Text('🔥 Streak: $_streak')),
                            Chip(label: Text('⭐ Points: $_runPoints')),
                          ],
                        ),

                        const SizedBox(height: 30),

                        const Text(
                          'Will the next number be higher or lower?',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),

                        const SizedBox(height: 20),

                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: Card(
                            key: ValueKey<int>(_current),
                            elevation: 8,
                            child: SizedBox(
                              width: 160,
                              height: 140,
                              child: Center(
                                child: Text(
                                  '$_current',
                                  style: const TextStyle(
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 60,
                                child: FilledButton.icon(
                                  onPressed: _gameOver
                                      ? null
                                      : () => _guess(false),
                                  icon: const Icon(
                                    Icons.arrow_downward_rounded,
                                  ),
                                  label: const Text(
                                    'Lower',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: SizedBox(
                                height: 60,
                                child: FilledButton.icon(
                                  onPressed: _gameOver
                                      ? null
                                      : () => _guess(true),
                                  icon: const Icon(Icons.arrow_upward_rounded),
                                  label: const Text(
                                    'Higher',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
