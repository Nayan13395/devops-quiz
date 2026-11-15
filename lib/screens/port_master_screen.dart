import '../l10n/game_localizations.dart';
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/port_question_service.dart';
import '../widgets/save_question_button.dart';
import '../services/game_sound_service.dart';
import '../services/point_service.dart';
import '../widgets/daily_game_gate.dart';

class PortMasterScreen extends StatelessWidget {
  const PortMasterScreen({super.key});

  static const String gameKey = 'port_master';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(gameL10n(context).gameUiPortMaster9c730cf)),
      body: const DailyGameGate(gameKey: gameKey, child: _PortGame()),
    );
  }
}

class _PortGame extends StatefulWidget {
  const _PortGame();

  @override
  State<_PortGame> createState() => _PortGameState();
}

class _PortGameState extends State<_PortGame> {
  static const int _lives = 3;
  static const int _questions = 15;
  static const int _pointsPerAnswer = 15;

  final Random _random = Random();

  late final List<PortService> _deck = List<PortService>.of(
    PortQuestionService.services,
  )..shuffle();

  int _index = 0;
  int _livesLeft = _lives;
  int _correct = 0;
  int _streak = 0;
  int _points = 0;
  int? _picked;
  bool _locked = false;
  late List<int> _options;

  @override
  void initState() {
    super.initState();
    _options = _buildOptions();
  }

  List<int> _buildOptions() {
    final current = _deck[_index];

    final Set<int> options = {current.port};

    final List<int> others =
        PortQuestionService.services
            .map((s) => s.port)
            .where((port) => port != current.port)
            .toList()
          ..shuffle(_random);

    options.addAll(others.take(3));

    return options.toList()..shuffle(_random);
  }

  Future<void> _choose(int port) async {
    if (_locked) return;

    final bool right = port == _deck[_index].port;
    unawaited(
      GameSoundService.play(
        right ? GameSoundEffect.correct : GameSoundEffect.incorrect,
      ),
    );

    setState(() {
      _locked = true;
      _picked = port;

      if (right) {
        _correct++;
        _streak++;
        _points += _pointsPerAnswer + (_streak >= 3 ? 5 : 0);
      } else {
        _streak = 0;
        _livesLeft--;
      }
    });

    await Future<void>.delayed(const Duration(milliseconds: 900));

    if (!mounted) return;

    if (_livesLeft <= 0 || _index + 1 >= _questions) {
      await _finish();
      return;
    }

    setState(() {
      _index++;
      _picked = null;
      _locked = false;
      _options = _buildOptions();
    });
  }

  Future<void> _finish() async {
    await DailyGameGate.markPlayed(PortMasterScreen.gameKey);

    if (_points > 0)
      await PointService.addPoints(_points, source: PointSource.game);

    if (!mounted) return;

    await showGameResultDialog(
      context,
      icon: _livesLeft > 0 ? '🏆' : '🔌',
      title: _livesLeft > 0
          ? gameL10n(context).gameUiPortMastera796b69
          : gameL10n(context).gameUiOutOfLives,
      message: gameL10n(context)
          .gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(
            (_correct).toString(),
            (_points).toString(),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final current = _deck[_index];
    final question = PortQuestionService.question(
      current,
      _options,
      AppLocalizations.of(context)!,
    );

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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 12,
                        children: [
                          Chip(label: Text('${_index + 1} / $_questions')),
                          Chip(
                            label: Text(
                              '${'❤️' * _livesLeft}${'🖤' * (_lives - _livesLeft)}',
                            ),
                          ),
                          Chip(label: Text('⭐ $_points')),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        question.question,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: colors.onSurfaceVariant),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        current.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SaveQuestionButton(question: question),
                      const SizedBox(height: 24),
                      for (final port in _options) _option(port, current),
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

  Widget _option(int port, PortService current) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    Color background = colors.surfaceContainerHighest;

    if (_locked) {
      if (port == current.port) {
        background = Colors.green.shade600;
      } else if (port == _picked) {
        background = Colors.red.shade600;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: background,
            foregroundColor: background == colors.surfaceContainerHighest
                ? colors.onSurface
                : Colors.white,
          ),
          onPressed: () => _choose(port),
          child: Text('$port', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
