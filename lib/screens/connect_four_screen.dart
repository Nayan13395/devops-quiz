import 'dart:async';

import 'package:flutter/material.dart';

import '../services/game_sound_service.dart';
import '../services/point_service.dart';

enum _ConnectFourMode { vsBot, twoPlayer }

class ConnectFourScreen extends StatefulWidget {
  const ConnectFourScreen({super.key});

  @override
  State<ConnectFourScreen> createState() => _ConnectFourScreenState();
}

class _ConnectFourScreenState extends State<ConnectFourScreen> {
  static const int _rows = 6;
  static const int _columns = 7;

  List<int?> _board = List<int?>.filled(_rows * _columns, null);
  int _turn = 1;
  int? _winner;
  bool _draw = false;
  _ConnectFourMode _mode = _ConnectFourMode.twoPlayer;
  bool _botThinking = false;
  int _turnToken = 0;
  Set<int> _winningCells = {};

  int _landingRow(int column) =>
      List<int>.generate(_rows, (index) => _rows - index - 1).firstWhere(
        (candidate) => _board[candidate * _columns + column] == null,
        orElse: () => -1,
      );

  void _drop(int column, {bool isBotMove = false}) {
    if (_winner != null ||
        _draw ||
        _botThinking && !isBotMove ||
        _mode == _ConnectFourMode.vsBot && _turn == 2 && !isBotMove) {
      return;
    }
    final row = _landingRow(column);
    if (row < 0) return;

    final movedBy = _turn;
    final cell = row * _columns + column;
    setState(() {
      _board[cell] = _turn;
      final line = _winningLine(row, column, _turn);
      if (line.isNotEmpty) {
        _winner = _turn;
        _winningCells = line.toSet();
      } else if (_board.every((piece) => piece != null)) {
        _draw = true;
      } else {
        _turn = _turn == 1 ? 2 : 1;
        _botThinking = _mode == _ConnectFourMode.vsBot && _turn == 2;
      }
    });

    unawaited(
      GameSoundService.play(
        _winner == null ? GameSoundEffect.click : GameSoundEffect.win,
      ),
    );
    if (_winner != null &&
        (_mode == _ConnectFourMode.twoPlayer || movedBy == 1)) {
      _awardWin();
    }
    if (_botThinking) unawaited(_playBotMove(_turnToken));
  }

  Future<void> _playBotMove(int turnToken) async {
    await Future<void>.delayed(const Duration(milliseconds: 350));
    if (!mounted ||
        turnToken != _turnToken ||
        _mode != _ConnectFourMode.vsBot ||
        _winner != null ||
        _draw ||
        _turn != 2) {
      return;
    }
    final column = _bestBotColumn();
    if (column == null) return;
    setState(() => _botThinking = false);
    _drop(column, isBotMove: true);
  }

  int? _bestBotColumn() {
    const centerOrder = [3, 2, 4, 1, 5, 0, 6];
    for (final player in [2, 1]) {
      for (final column in centerOrder) {
        final row = _landingRow(column);
        if (row < 0) continue;
        final cell = row * _columns + column;
        _board[cell] = player;
        final wins = _winningLine(row, column, player).isNotEmpty;
        _board[cell] = null;
        if (wins) return column;
      }
    }
    for (final column in centerOrder) {
      if (_landingRow(column) >= 0) return column;
    }
    return null;
  }

  void _setMode(_ConnectFourMode mode) {
    if (_mode == mode) return;
    _turnToken++;
    setState(() {
      _mode = mode;
      _board = List<int?>.filled(_rows * _columns, null);
      _turn = 1;
      _winner = null;
      _draw = false;
      _botThinking = false;
      _winningCells = {};
    });
  }

  List<int> _winningLine(int row, int column, int player) {
    const directions = [(0, 1), (1, 0), (1, 1), (1, -1)];
    for (final (rowStep, columnStep) in directions) {
      final line = <int>[row * _columns + column];
      for (final direction in [1, -1]) {
        var nextRow = row + rowStep * direction;
        var nextColumn = column + columnStep * direction;
        while (nextRow >= 0 &&
            nextRow < _rows &&
            nextColumn >= 0 &&
            nextColumn < _columns &&
            _board[nextRow * _columns + nextColumn] == player) {
          line.add(nextRow * _columns + nextColumn);
          nextRow += rowStep * direction;
          nextColumn += columnStep * direction;
        }
      }
      if (line.length >= 4) return line;
    }
    return const [];
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addPoints(20, source: PointSource.game);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Connect Four win: 20 points!')),
        );
      }
    } catch (error) {
      debugPrint('Connect Four reward failed: $error');
    }
  }

  void _reset() {
    setState(() {
      _board = List<int?>.filled(_rows * _columns, null);
      _turn = 1;
      _winner = null;
      _draw = false;
      _botThinking = false;
      _turnToken++;
      _winningCells = {};
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final done = _winner != null || _draw;
    final status = _winner != null
        ? _mode == _ConnectFourMode.vsBot
              ? _winner == 1
                    ? 'You win!'
                    : 'Bot wins!'
              : '${_winner == 1 ? 'Red' : 'Yellow'} wins!'
        : _draw
        ? 'Board full — draw'
        : _mode == _ConnectFourMode.vsBot
        ? _turn == 1
              ? 'Your turn'
              : _botThinking
              ? 'Bot is thinking'
              : 'Bot turn'
        : '${_turn == 1 ? 'Red' : 'Yellow'} to move';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect Four'),
        actions: [
          IconButton(
            tooltip: 'New game',
            onPressed: _reset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                children: [
                  SegmentedButton<_ConnectFourMode>(
                    segments: const [
                      ButtonSegment(
                        value: _ConnectFourMode.vsBot,
                        label: Text('Vs Bot'),
                        icon: Icon(Icons.smart_toy_outlined),
                      ),
                      ButtonSegment(
                        value: _ConnectFourMode.twoPlayer,
                        label: Text('2 Player'),
                        icon: Icon(Icons.people_outline),
                      ),
                    ],
                    selected: {_mode},
                    onSelectionChanged: (selection) =>
                        _setMode(selection.first),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    status,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    _mode == _ConnectFourMode.vsBot
                        ? 'Play against the bot · tap a column to drop a disc'
                        : 'Two players · tap a column to drop a disc',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: _columns / _rows,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _rows * _columns,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: _columns,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ),
                          itemBuilder: (context, index) {
                            final piece = _board[index];
                            final pieceColor = piece == 1
                                ? Colors.red.shade600
                                : piece == 2
                                ? Colors.amber.shade400
                                : colors.surface;
                            final winning = _winningCells.contains(index);

                            return Semantics(
                              button: true,
                              label: 'Column ${index % _columns + 1}',
                              child: InkWell(
                                key: ValueKey('connect-four-cell-$index'),
                                customBorder: const CircleBorder(),
                                onTap: done
                                    ? null
                                    : () => _drop(index % _columns),
                                child: AnimatedContainer(
                                  key: ValueKey('connect-four-disc-$index'),
                                  duration: const Duration(milliseconds: 180),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: winning
                                        ? Colors.lightGreenAccent
                                        : pieceColor,
                                    border: Border.all(
                                      color: colors.onPrimary.withValues(
                                        alpha: 0.18,
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 18,
                    runSpacing: 8,
                    children: [
                      _Legend(
                        color: Colors.red.shade600,
                        label: _mode == _ConnectFourMode.vsBot
                            ? 'You · Red'
                            : 'Red · Player 1',
                      ),
                      _Legend(
                        color: Colors.amber.shade400,
                        label: _mode == _ConnectFourMode.vsBot
                            ? 'Bot · Yellow'
                            : 'Yellow · Player 2',
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  FilledButton.icon(
                    onPressed: _reset,
                    icon: const Icon(Icons.replay_rounded),
                    label: const Text('New game'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  const _Legend({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 7, backgroundColor: color),
        const SizedBox(width: 6),
        Text(label),
      ],
    );
  }
}
