import 'dart:math';

import 'package:flutter/material.dart';

import '../services/point_service.dart';

class SnakeLaddersScreen extends StatefulWidget {
  const SnakeLaddersScreen({super.key, this.diceRoller});

  final int Function()? diceRoller;

  @override
  State<SnakeLaddersScreen> createState() => _SnakeLaddersScreenState();
}

class _SnakeLaddersScreenState extends State<SnakeLaddersScreen> {
  static const Map<int, int> _ladders = {
    4: 25,
    13: 46,
    33: 49,
    42: 63,
    50: 69,
    62: 81,
    74: 92,
  };
  static const Map<int, int> _snakes = {
    27: 5,
    40: 3,
    43: 18,
    54: 31,
    66: 45,
    76: 58,
    89: 53,
    99: 41,
  };

  final Random _random = Random();
  final List<int> _positions = [0, 0];
  int _currentPlayer = 0;
  int? _lastRoll;
  String _status = 'Player 1 rolls first';
  bool _finished = false;

  int _roll() => widget.diceRoller?.call() ?? _random.nextInt(6) + 1;

  Future<void> _rollDice() async {
    if (_finished) return;
    final roll = _roll();
    if (roll < 1 || roll > 6) {
      throw RangeError.range(roll, 1, 6, 'diceRoller result');
    }

    final player = _currentPlayer;
    final previous = _positions[player];
    final tentative = previous + roll;
    var destination = previous;
    String? moveMessage;

    if (tentative <= 100) {
      destination = tentative;
      if (_ladders.containsKey(destination)) {
        final top = _ladders[destination]!;
        moveMessage = ' climbed a ladder to $top';
        destination = top;
      } else if (_snakes.containsKey(destination)) {
        final tail = _snakes[destination]!;
        moveMessage = ' slid down a snake to $tail';
        destination = tail;
      }
    }

    setState(() {
      _lastRoll = roll;
      _positions[player] = destination;
      if (destination == 100) {
        _finished = true;
        _status = 'Player ${player + 1} wins!';
      } else {
        _currentPlayer = 1 - player;
        _status = tentative > 100
            ? 'Player ${player + 1} needs an exact roll to finish'
            : 'Player ${player + 1}$moveMessage · Player ${_currentPlayer + 1} next';
      }
    });

    if (_finished) await _awardWin();
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addLocalPoints(50);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Snake and Ladders win: 50 points!')),
        );
      }
    } catch (error) {
      debugPrint('Snake and Ladders reward failed: $error');
    }
  }

  void _reset() {
    setState(() {
      _positions
        ..[0] = 0
        ..[1] = 0;
      _currentPlayer = 0;
      _lastRoll = null;
      _status = 'Player 1 rolls first';
      _finished = false;
    });
  }

  int _squareAt(int row, int column) {
    final rowFromBottom = 9 - row;
    final offset = rowFromBottom.isEven ? column : 9 - column;
    return rowFromBottom * 10 + offset + 1;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snake and Ladders'),
        actions: [
          IconButton(
            tooltip: 'New game',
            onPressed: _reset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final boardSize = min(constraints.maxWidth - 24, 560.0);
            return SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: Column(
                    children: [
                      Text(
                        _status,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Two players · roll the exact number to reach 100',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox.square(
                        dimension: boardSize,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: colors.outline, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 100,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 10,
                                ),
                            itemBuilder: (context, index) {
                              final number = _squareAt(index ~/ 10, index % 10);
                              final isLadderStart = _ladders.containsKey(
                                number,
                              );
                              final isLadderEnd = _ladders.containsValue(
                                number,
                              );
                              final isSnakeHead = _snakes.containsKey(number);
                              final isSnakeTail = _snakes.containsValue(number);
                              final color = (index ~/ 10 + index % 10).isEven
                                  ? colors.surfaceContainerHighest
                                  : colors.surface;

                              return Container(
                                key: ValueKey('snake-ladder-square-$number'),
                                decoration: BoxDecoration(
                                  color: color,
                                  border: Border.all(
                                    color: colors.outlineVariant.withValues(
                                      alpha: 0.35,
                                    ),
                                    width: 0.5,
                                  ),
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 2,
                                          top: 1,
                                        ),
                                        child: Text(
                                          '$number',
                                          style: TextStyle(
                                            fontSize: boardSize < 360 ? 7 : 9,
                                            color: colors.onSurfaceVariant,
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (isLadderStart || isLadderEnd)
                                      Icon(
                                        Icons.stairs_rounded,
                                        size: boardSize < 360 ? 11 : 16,
                                        color: Colors.green.withValues(
                                          alpha: 0.72,
                                        ),
                                      ),
                                    if (isSnakeHead || isSnakeTail)
                                      Icon(
                                        Icons.storm_rounded,
                                        size: boardSize < 360 ? 11 : 16,
                                        color: Colors.deepOrange.withValues(
                                          alpha: 0.72,
                                        ),
                                      ),
                                    if (_positions[0] == number ||
                                        _positions[1] == number)
                                      Align(
                                        alignment:
                                            _positions[0] == number &&
                                                _positions[1] == number
                                            ? Alignment.center
                                            : _positions[0] == number
                                            ? const Alignment(-0.45, 0.35)
                                            : const Alignment(0.45, 0.35),
                                        child: Container(
                                          width: boardSize < 360 ? 9 : 15,
                                          height: boardSize < 360 ? 9 : 15,
                                          decoration: BoxDecoration(
                                            color: _positions[0] == number
                                                ? Colors.red.shade600
                                                : Colors.indigo.shade600,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _PlayerPosition(player: 1, position: _positions[0]),
                          const SizedBox(width: 16),
                          _PlayerPosition(player: 2, position: _positions[1]),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: colors.secondaryContainer,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              _lastRoll?.toString() ?? '—',
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: FilledButton.icon(
                              key: const ValueKey('snake-ladder-roll'),
                              onPressed: _finished ? null : _rollDice,
                              icon: const Icon(Icons.casino_rounded),
                              label: Text(
                                'Player ${_currentPlayer + 1} · Roll',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PlayerPosition extends StatelessWidget {
  const _PlayerPosition({required this.player, required this.position});

  final int player;
  final int position;

  @override
  Widget build(BuildContext context) {
    final color = player == 1 ? Colors.red.shade600 : Colors.indigo.shade600;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 7, backgroundColor: color),
        const SizedBox(width: 6),
        Text('P$player: $position'),
      ],
    );
  }
}
