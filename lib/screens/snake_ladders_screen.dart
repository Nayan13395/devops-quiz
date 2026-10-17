import 'dart:math';

import 'package:flutter/material.dart';

import '../services/point_service.dart';

const List<Color> _snakeColors = [
  Color(0xFFE85D3F),
  Color(0xFF8E5AC7),
  Color(0xFF168C83),
  Color(0xFFD14F8B),
  Color(0xFFB77818),
  Color(0xFF3974C5),
  Color(0xFF5F8733),
  Color(0xFFB34237),
];

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

  int? _snakeHeadForSquare(int square) {
    for (final snake in _snakes.entries) {
      if (snake.key == square || snake.value == square) return snake.key;
    }
    return null;
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
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              IgnorePointer(
                                child: CustomPaint(
                                  painter: _SnakePathPainter(snakes: _snakes),
                                ),
                              ),
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 100,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 10,
                                    ),
                                itemBuilder: (context, index) {
                                  final number = _squareAt(
                                    index ~/ 10,
                                    index % 10,
                                  );
                                  final isLadderStart = _ladders.containsKey(
                                    number,
                                  );
                                  final isLadderEnd = _ladders.containsValue(
                                    number,
                                  );
                                  final snakeHead = _snakeHeadForSquare(number);
                                  final snakeColor = snakeHead == null
                                      ? null
                                      : _snakeColors[_snakes.keys
                                            .toList()
                                            .indexOf(snakeHead)];
                                  final color =
                                      (index ~/ 10 + index % 10).isEven
                                      ? colors.surfaceContainerHighest
                                      : colors.surface;

                                  return Container(
                                    key: ValueKey(
                                      'snake-ladder-square-$number',
                                    ),
                                    decoration: BoxDecoration(
                                      color: color.withValues(alpha: 0.62),
                                      border: Border.all(
                                        color:
                                            snakeColor ??
                                            colors.outlineVariant.withValues(
                                              alpha: 0.35,
                                            ),
                                        width: snakeColor == null ? 0.5 : 1.8,
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
                                                fontSize: boardSize < 360
                                                    ? 7
                                                    : 9,
                                                fontWeight: snakeColor == null
                                                    ? FontWeight.normal
                                                    : FontWeight.w800,
                                                color: colors.onSurface,
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
                            ],
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

class _SnakePathPainter extends CustomPainter {
  const _SnakePathPainter({required this.snakes});

  final Map<int, int> snakes;

  Offset _centerOf(int square, Size size) {
    final rowFromBottom = (square - 1) ~/ 10;
    final offset = (square - 1) % 10;
    final column = rowFromBottom.isEven ? offset : 9 - offset;
    final row = 9 - rowFromBottom;
    final cellSize = size.width / 10;
    return Offset((column + 0.5) * cellSize, (row + 0.5) * cellSize);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cellSize = size.width / 10;
    var colorIndex = 0;

    for (final snake in snakes.entries) {
      final color = _snakeColors[colorIndex++ % _snakeColors.length];
      final head = _centerOf(snake.key, size);
      final tail = _centerOf(snake.value, size);
      final delta = tail - head;
      final distance = delta.distance;
      if (distance == 0) continue;

      final axis = delta / distance;
      final normal = Offset(-axis.dy, axis.dx);
      final bend = min(cellSize * 0.9, distance * 0.16);
      final path = Path()
        ..moveTo(head.dx, head.dy)
        ..cubicTo(
          head.dx + delta.dx * 0.32 + normal.dx * bend,
          head.dy + delta.dy * 0.32 + normal.dy * bend,
          head.dx + delta.dx * 0.68 - normal.dx * bend,
          head.dy + delta.dy * 0.68 - normal.dy * bend,
          tail.dx,
          tail.dy,
        );

      canvas.drawPath(
        path,
        Paint()
          ..color = Colors.black.withValues(alpha: 0.45)
          ..style = PaintingStyle.stroke
          ..strokeWidth = cellSize * 0.5
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round,
      );
      canvas.drawPath(
        path,
        Paint()
          ..color = color.withValues(alpha: 0.92)
          ..style = PaintingStyle.stroke
          ..strokeWidth = cellSize * 0.38
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round,
      );
      _drawBodyStripe(canvas, path, cellSize);
      _drawHead(canvas, head, axis, normal, color, cellSize);
      _drawTail(canvas, tail, axis, normal, color, cellSize);
    }
  }

  void _drawBodyStripe(Canvas canvas, Path path, double cellSize) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.75)
      ..style = PaintingStyle.stroke
      ..strokeWidth = max(1.2, cellSize * 0.045)
      ..strokeCap = StrokeCap.round;

    for (final metric in path.computeMetrics()) {
      var distance = cellSize * 0.08;
      while (distance < metric.length) {
        final end = min(distance + cellSize * 0.12, metric.length);
        canvas.drawPath(metric.extractPath(distance, end), paint);
        distance += cellSize * 0.26;
      }
    }
  }

  void _drawHead(
    Canvas canvas,
    Offset center,
    Offset axis,
    Offset normal,
    Color color,
    double cellSize,
  ) {
    final radius = cellSize * 0.25;
    canvas.drawCircle(center, radius, Paint()..color = color);
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = max(1.2, cellSize * 0.05),
    );

    final eyeOffset = axis * (cellSize * 0.04);
    for (final side in [-1.0, 1.0]) {
      final eye = center + eyeOffset + normal * (cellSize * 0.1 * side);
      canvas.drawCircle(eye, cellSize * 0.065, Paint()..color = Colors.white);
      canvas.drawCircle(
        eye + axis * (cellSize * 0.025),
        cellSize * 0.032,
        Paint()..color = Colors.black87,
      );
    }
  }

  void _drawTail(
    Canvas canvas,
    Offset center,
    Offset axis,
    Offset normal,
    Color color,
    double cellSize,
  ) {
    final base = center - axis * (cellSize * 0.28);
    final halfWidth = cellSize * 0.16;
    final tail = Path()
      ..moveTo(center.dx, center.dy)
      ..lineTo(base.dx + normal.dx * halfWidth, base.dy + normal.dy * halfWidth)
      ..lineTo(base.dx - normal.dx * halfWidth, base.dy - normal.dy * halfWidth)
      ..close();
    canvas.drawPath(tail, Paint()..color = color);
    canvas.drawPath(
      tail,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = max(1.0, cellSize * 0.04),
    );
  }

  @override
  bool shouldRepaint(covariant _SnakePathPainter oldDelegate) =>
      oldDelegate.snakes != snakes;
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
