import 'dart:async';

import 'package:flutter/material.dart';

import '../services/game_sound_service.dart';
import '../services/point_service.dart';
import '../services/true_false_blitz_service.dart';
import '../widgets/daily_game_gate.dart';

class TrueFalseBlitzScreen extends StatelessWidget {
  const TrueFalseBlitzScreen({super.key});

  static const String gameKey = 'true_false_blitz';

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(title: const Text('True or False Blitz ⚡')),
      body: DailyGameGate(
        gameKey: gameKey,
        child: _BlitzGame(locale: locale),
      ),
    );
  }
}

class _BlitzGame extends StatefulWidget {
  const _BlitzGame({required this.locale});

  final Locale locale;

  @override
  State<_BlitzGame> createState() => _BlitzGameState();
}

class _BlitzGameState extends State<_BlitzGame> {
  static const int _defaultSeconds = 45;
  static const int _maxSeconds = 180;
  static const int _pointsPerAnswer = 10;
  static const int _wrongPenalty = 3;

  List<TrueFalseBlitzStatement> _deck = [];
  bool _loadingQuestions = true;
  int _deckLoadToken = 0;

  Timer? _timer;
  bool _started = false;
  bool _finished = false;
  int _index = 0;
  int _correct = 0;
  int _streak = 0;
  int _best = 0;
  int _roundSeconds = _defaultSeconds;
  int _timeLeft = _defaultSeconds;
  Color? _flash;

  @override
  void initState() {
    super.initState();
    _loadDeck();
  }

  @override
  void didUpdateWidget(covariant _BlitzGame oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_started && oldWidget.locale != widget.locale) _loadDeck();
  }

  Future<void> _loadDeck() async {
    final token = ++_deckLoadToken;
    setState(() => _loadingQuestions = true);
    try {
      final deck = await TrueFalseBlitzService.loadDailyDeck(widget.locale);
      if (!mounted || token != _deckLoadToken) return;
      setState(() {
        _deck = deck;
        _loadingQuestions = false;
      });
    } catch (error) {
      debugPrint('True/False Blitz question load failed: $error');
      if (!mounted || token != _deckLoadToken) return;
      setState(() {
        _deck = [];
        _loadingQuestions = false;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _start() {
    if (_started || _finished || _deck.isEmpty || _loadingQuestions) return;
    setState(() {
      _timeLeft = _roundSeconds;
      _started = true;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;

      setState(() => _timeLeft--);

      if (_timeLeft <= 0) {
        _finish();
      }
    });
  }

  void _answer(bool value) {
    if (_finished || !_started) return;

    final bool right = _deck[_index].isTrue == value;
    unawaited(
      GameSoundService.play(
        right ? GameSoundEffect.correct : GameSoundEffect.incorrect,
      ),
    );

    setState(() {
      if (right) {
        _correct++;
        _streak++;
        if (_streak > _best) _best = _streak;
      } else {
        _streak = 0;
        _timeLeft = (_timeLeft - _wrongPenalty).clamp(0, _roundSeconds);
      }

      _flash = right ? Colors.green : Colors.red;
      _index++;
    });

    Future<void>.delayed(const Duration(milliseconds: 200), () {
      if (mounted) setState(() => _flash = null);
    });

    if (_timeLeft <= 0 || _index >= _deck.length) {
      _finish();
    }
  }

  Future<void> _finish() async {
    if (_finished) return;

    _finished = true;
    _timer?.cancel();

    final int points = _correct * _pointsPerAnswer + (_best >= 5 ? 20 : 0);

    await DailyGameGate.markPlayed(TrueFalseBlitzScreen.gameKey);

    if (points > 0)
      await PointService.addPoints(points, source: PointSource.game);

    if (!mounted) return;

    await showGameResultDialog(
      context,
      icon: '⚡',
      title: 'Time\'s Up!',
      message:
          'Correct answers: $_correct\nBest streak: $_best\n'
          '${_best >= 5 ? 'Streak bonus: +20\n' : ''}'
          'You earned $points points!\n\nCome back tomorrow for another round!',
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 520),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: !_started ? _intro(colors) : _play(colors),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _intro(ColorScheme colors) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('⚡', style: TextStyle(fontSize: 64)),
        const SizedBox(height: 12),
        const Text(
          'Is the shown answer true or false?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        if (_loadingQuestions)
          Padding(
            padding: const EdgeInsets.all(12),
            child: CircularProgressIndicator(
              key: ValueKey('blitz-question-loading'),
            ),
          )
        else
          Text(
            '${_deck.length} questions across '
            '${_deck.map((statement) => statement.category).toSet().length} '
            'categories',
            key: const ValueKey('blitz-question-coverage'),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: colors.onSurfaceVariant),
          ),
        const SizedBox(height: 12),
        Text(
          'You have $_roundSeconds seconds. Each correct answer earns '
          '$_pointsPerAnswer points. A wrong answer costs $_wrongPenalty '
          'seconds. Reach a streak of 5 for a +20 bonus.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: colors.onSurfaceVariant),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            const Icon(Icons.timer_outlined),
            const SizedBox(width: 8),
            const Expanded(child: Text('Round timer')),
            Text(
              '${_roundSeconds ~/ 60}:${(_roundSeconds % 60).toString().padLeft(2, '0')}',
              key: const ValueKey('blitz-timer-duration'),
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Slider(
          key: const ValueKey('blitz-timer-slider'),
          min: 15,
          max: _maxSeconds.toDouble(),
          divisions: 11,
          value: _roundSeconds.toDouble(),
          label: '$_roundSeconds seconds',
          onChanged: (value) => setState(() => _roundSeconds = value.round()),
        ),
        const SizedBox(height: 12),
        FilledButton.icon(
          onPressed: _loadingQuestions || _deck.isEmpty ? null : _start,
          icon: const Icon(Icons.play_arrow_rounded),
          label: const Text('Start'),
        ),
      ],
    );
  }

  Widget _play(ColorScheme colors) {
    final TrueFalseBlitzStatement? current = _index < _deck.length
        ? _deck[_index]
        : null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          children: [
            Chip(label: Text('⏱ $_timeLeft s')),
            Chip(label: Text('✅ $_correct')),
            Chip(label: Text('🔥 $_streak')),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: _timeLeft / _roundSeconds,
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
        ),
        const SizedBox(height: 24),
        AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: double.infinity,
          constraints: const BoxConstraints(minHeight: 150),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _flash?.withValues(alpha: 0.25) ?? colors.surfaceContainer,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.outlineVariant),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                current?.category ?? '',
                key: const ValueKey('blitz-category'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colors.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                current?.question ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                current?.answer ?? '',
                key: const ValueKey('blitz-proposed-answer'),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 58,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _finished ? null : () => _answer(true),
                  icon: const Icon(Icons.check_rounded),
                  label: const Text('True', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 58,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _finished ? null : () => _answer(false),
                  icon: const Icon(Icons.close_rounded),
                  label: const Text('False', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
