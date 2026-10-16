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
  // All DevOps category emojis (Web-Safe Only)
  static const List<String> _allEmojis = [
    '🐳',
    '☁️',
    '🐧',
    '🌿',
    '⚙️',
    '🤖',
    '📜',
    '️A',
    '🌐',
    '🐍',
    '🐚',
    '💻',
    '🟨',
    '💎',
    'Z',
    '📦',
    '🚀',
    '🛡️',
  ];

  static const String _lastPlayedKey = 'memory_match_last_played';

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

  // Daily play tracking
  bool _hasPlayedToday = false;
  bool _isLoading = true;
  DateTime? _lastPlayedDate;

  @override
  void initState() {
    super.initState();
    _checkDailyPlay();
  }

  @override
  void dispose() {
    _previewTimer?.cancel();
    super.dispose();
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
    _selectDailyEmojis();
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

  void _selectDailyEmojis() {
    final now = DateTime.now();
    final daySeed = now.year * 10000 + now.month * 100 + now.day;
    final random = Random(daySeed);
    final shuffled = List<String>.from(_allEmojis)..shuffle(random);
    _emojis = shuffled.take(4).toList();
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
    if (_moves <= 6) return 100;
    if (_moves <= 8) return 60;
    if (_moves <= 10) return 30;
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
    await PointService.addPoints(points);
    await _markAsPlayed(); // Mark as played after winning

    if (!mounted) return;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        scrollable: true,
        icon: const Icon(Icons.emoji_events_rounded, size: 46),
        title: const Text('You Won!', textAlign: TextAlign.center),
        content: Text(
          'Completed in $_moves moves.\nYou earned $points points!\n\nCome back tomorrow for a new challenge!',
          textAlign: TextAlign.center,
        ),
        actions: [
          // "Play Again" is intentionally removed to enforce the daily limit
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

    // 2. Already played today state
    if (_hasPlayedToday) {
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
                          ? 'You played on ${_lastPlayedDate!.day}/${_lastPlayedDate!.month}/${_lastPlayedDate!.year}.\n\nCome back tomorrow for a new set of cards!'
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
        title: const Text('Memory Match 🧠'),
        actions: [
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
                if (_isPreviewing)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        const Text(
                          'Memorize the cards!',
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Today's Cards: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        ..._emojis.map(
                          (emoji) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              emoji,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
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
                                      'assets/images/devops_logo.png',
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
