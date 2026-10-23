import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../services/point_service.dart';
import '../services/snake_ladders_service.dart';

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

const List<Color> _playerColors = [
  Color(0xFFD32F2F),
  Color(0xFF3949AB),
  Color(0xFF00875A),
  Color(0xFFDC8500),
];

class SnakeLaddersScreen extends StatefulWidget {
  const SnakeLaddersScreen({super.key, this.diceRoller});

  final int Function()? diceRoller;

  @override
  State<SnakeLaddersScreen> createState() => _SnakeLaddersScreenState();
}

class _SnakeLaddersScreenState extends State<SnakeLaddersScreen> {
  final Random _random = Random();
  SnakeLaddersGame _game = SnakeLaddersGame.create();
  Timer? _botTimer;
  bool _loading = true;
  bool _busy = false;

  List<int> get _positions => _game.positions;
  Map<int, int> get _snakes => _game.snakes;
  Map<int, int> get _ladders => _game.ladders;
  int get _currentPlayer => _game.currentPlayer;
  int? get _lastRoll => _game.lastRoll;
  bool get _finished => _game.finished;
  String get _status => _finished
      ? '${_game.playerName(_currentPlayer)} wins!'
      : _lastRoll == null
      ? 'Player 1 rolls first'
      : '${_game.playerName(_currentPlayer)}${_lastRoll == 6 ? ' rolls again' : ' to roll'}';

  @override
  void initState() {
    super.initState();
    _loadGame();
  }

  Future<void> _loadGame() async {
    final saved = await SnakeLaddersService.load();
    if (!mounted) return;
    setState(() {
      if (saved != null) _game = saved;
      _loading = false;
    });
    _scheduleBot();
  }

  @override
  void dispose() {
    _botTimer?.cancel();
    super.dispose();
  }

  void _scheduleBot() {
    _botTimer?.cancel();
    if (!_finished && _game.botTurn) {
      _botTimer = Timer(const Duration(milliseconds: 800), () {
        if (mounted) unawaited(_rollDice());
      });
    }
  }

  int _roll() => widget.diceRoller?.call() ?? _random.nextInt(6) + 1;

  Future<void> _rollDice() async {
    if (_loading || _busy || _finished) return;
    final roll = _roll();
    if (roll < 1 || roll > 6) {
      throw RangeError.range(roll, 1, 6, 'diceRoller result');
    }

    setState(() {
      _busy = true;
      _game.roll(roll);
    });
    try {
      await SnakeLaddersService.save(_game);
      if (_finished && !_game.botTurn) await _awardWin();
    } finally {
      if (mounted) {
        setState(() => _busy = false);
        _scheduleBot();
      }
    }
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addPoints(50, source: PointSource.game);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Snake and Ladders win: 50 points!')),
        );
      }
    } catch (error) {
      debugPrint('Snake and Ladders reward failed: $error');
    }
  }

  Future<void> _reset() async {
    _botTimer?.cancel();
    setState(() {
      _game = SnakeLaddersGame.create(mode: _game.mode);
      _busy = true;
    });
    await SnakeLaddersService.save(_game);
    if (mounted) setState(() => _busy = false);
  }

  Future<void> _chooseMode(SnakeLaddersMode? mode) async {
    if (mode == null || mode == _game.mode || _busy) return;
    if (_positions.any((position) => position != 0) && !_finished) {
      final restart = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Start a new game?'),
          content: const Text('Changing players replaces the saved game.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('New game'),
            ),
          ],
        ),
      );
      if (restart != true || !mounted) return;
    }
    _botTimer?.cancel();
    setState(() {
      _game = SnakeLaddersGame.create(mode: mode);
      _busy = true;
    });
    await SnakeLaddersService.save(_game);
    if (mounted) setState(() => _busy = false);
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
            onPressed: _loading || _busy ? null : _reset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
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
                            DropdownButtonFormField<SnakeLaddersMode>(
                              key: ValueKey(
                                'snake-ladder-mode-${_game.mode.name}',
                              ),
                              isExpanded: true,
                              initialValue: _game.mode,
                              decoration: const InputDecoration(
                                labelText: 'Players',
                                prefixIcon: Icon(Icons.people_alt_outlined),
                                border: OutlineInputBorder(),
                                isDense: true,
                              ),
                              onChanged: _busy ? null : _chooseMode,
                              items: const [
                                DropdownMenuItem(
                                  value: SnakeLaddersMode.twoPlayers,
                                  child: Text('2 players'),
                                ),
                                DropdownMenuItem(
                                  value: SnakeLaddersMode.bot,
                                  child: Text('Play against bot'),
                                ),
                                DropdownMenuItem(
                                  value: SnakeLaddersMode.threePlayers,
                                  child: Text('3 players'),
                                ),
                                DropdownMenuItem(
                                  value: SnakeLaddersMode.fourPlayers,
                                  child: Text('4 players'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              _status,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${_positions.length} players · Weekly board ${_game.week}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: colors.onSurfaceVariant),
                            ),
                            const SizedBox(height: 12),
                            SizedBox.square(
                              dimension: boardSize,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: colors.outline,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colors.shadow.withValues(
                                        alpha: 0.22,
                                      ),
                                      blurRadius: 12,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    GridView.builder(
                                      padding: EdgeInsets.zero,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                        final isEndpoint =
                                            number == 1 || number == 100;
                                        final color =
                                            (index ~/ 10 + index % 10).isEven
                                            ? colors.surfaceContainerHighest
                                            : colors.surface;

                                        return Container(
                                          key: ValueKey(
                                            'snake-ladder-square-$number',
                                          ),
                                          decoration: BoxDecoration(
                                            color: isEndpoint
                                                ? colors.primaryContainer
                                                : color,
                                            border: Border.all(
                                              color: isEndpoint
                                                  ? colors.primary
                                                  : colors.outlineVariant
                                                        .withValues(
                                                          alpha: 0.35,
                                                        ),
                                              width: isEndpoint ? 2 : 0.5,
                                            ),
                                          ),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 2,
                                                        top: 1,
                                                      ),
                                                  child: Text(
                                                    '$number',
                                                    style: TextStyle(
                                                      fontSize: boardSize < 360
                                                          ? 7
                                                          : 9,
                                                      fontWeight: !isEndpoint
                                                          ? FontWeight.normal
                                                          : FontWeight.w800,
                                                      color: colors.onSurface,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (isEndpoint)
                                                Icon(
                                                  number == 1
                                                      ? Icons.flag_outlined
                                                      : Icons
                                                            .emoji_events_rounded,
                                                  size: boardSize < 360
                                                      ? 11
                                                      : 16,
                                                  color: colors.primary,
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    IgnorePointer(
                                      child: CustomPaint(
                                        key: const ValueKey(
                                          'snake-ladder-artwork',
                                        ),
                                        painter: _SnakePathPainter(
                                          snakes: _snakes,
                                          ladders: _ladders,
                                        ),
                                      ),
                                    ),
                                    for (
                                      int player = 0;
                                      player < _positions.length;
                                      player++
                                    )
                                      if (_positions[player] > 0)
                                        _token(player, boardSize),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 16,
                              runSpacing: 8,
                              children: [
                                for (
                                  int player = 0;
                                  player < _positions.length;
                                  player++
                                )
                                  _PlayerPosition(
                                    player: player + 1,
                                    position: _positions[player],
                                    bot:
                                        _game.mode == SnakeLaddersMode.bot &&
                                        player == 1,
                                  ),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(fontWeight: FontWeight.w800),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: FilledButton.icon(
                                    key: const ValueKey('snake-ladder-roll'),
                                    onPressed:
                                        _finished || _busy || _game.botTurn
                                        ? null
                                        : _rollDice,
                                    icon: const Icon(Icons.casino_rounded),
                                    label: Text(
                                      '${_game.playerName(_currentPlayer)} · Roll',
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

  Widget _token(int player, double boardSize) {
    final center = _SnakePathPainter(
      snakes: _snakes,
      ladders: _ladders,
    )._centerOf(_positions[player], Size.square(boardSize));
    final diameter = boardSize / 30;
    final shift = Offset(
      player.isEven ? -diameter * 0.55 : diameter * 0.55,
      player < 2 ? -diameter * 0.45 : diameter * 0.55,
    );
    return Positioned(
      left: center.dx + shift.dx - diameter / 2,
      top: center.dy + shift.dy - diameter / 2,
      child: Semantics(
        label: '${_game.playerName(player)} on ${_positions[player]}',
        child: Container(
          key: ValueKey('snake-ladder-token-$player'),
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              center: const Alignment(-0.4, -0.5),
              colors: [Colors.white, _playerColors[player]],
            ),
            border: Border.all(color: _playerColors[player], width: 1.5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                offset: Offset(1, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SnakePathPainter extends CustomPainter {
  const _SnakePathPainter({required this.snakes, required this.ladders});

  final Map<int, int> snakes;
  final Map<int, int> ladders;

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
    for (final ladder in ladders.entries) {
      _drawLadder(
        canvas,
        _centerOf(ladder.key, size),
        _centerOf(ladder.value, size),
        cellSize,
      );
    }
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
      final centers = List<Offset>.generate(65, (index) {
        final progress = index / 64;
        return head +
            delta * progress +
            normal * (sin(progress * pi * 4) * sin(progress * pi) * bend);
      });
      final path = Path()..moveTo(head.dx, head.dy);
      final body = Path();
      final left = <Offset>[];
      final right = <Offset>[];
      for (int index = 0; index < centers.length; index++) {
        final tangent =
            centers[min(index + 1, 64)] - centers[max(index - 1, 0)];
        final side = Offset(-tangent.dy, tangent.dx) / tangent.distance;
        final radius = cellSize * (0.18 * (1 - index / 64) + 0.012);
        left.add(centers[index] + side * radius);
        right.add(centers[index] - side * radius);
        path.lineTo(centers[index].dx, centers[index].dy);
      }
      body.addPolygon([...left, ...right.reversed], true);
      canvas.drawShadow(body, Colors.black87, cellSize * 0.09, false);
      canvas.drawPath(
        body,
        Paint()..color = Color.lerp(color, Colors.black, 0.45)!,
      );
      canvas.drawPath(
        body,
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.lerp(color, Colors.white, 0.55)!,
              color,
              Color.lerp(color, Colors.black, 0.35)!,
            ],
          ).createShader(body.getBounds()),
      );
      canvas.save();
      canvas.clipPath(body);
      _drawBodyStripe(canvas, path, cellSize);
      canvas.restore();
      final forward = (centers.first - centers[1]);
      _drawHead(
        canvas,
        head,
        forward / forward.distance,
        normal,
        color,
        cellSize,
      );
    }
  }

  void _drawLadder(Canvas canvas, Offset start, Offset end, double cellSize) {
    final delta = end - start;
    canvas.save();
    canvas.translate(start.dx, start.dy);
    canvas.rotate(atan2(delta.dy, delta.dx));
    final halfWidth = cellSize * 0.20;
    final length = delta.distance;
    final rails = Path()
      ..moveTo(-cellSize * 0.12, -halfWidth)
      ..lineTo(length + cellSize * 0.12, -halfWidth)
      ..moveTo(-cellSize * 0.12, halfWidth)
      ..lineTo(length + cellSize * 0.12, halfWidth);
    final rungs = Path();
    final count = max(2, (length / (cellSize * 0.45)).round());
    for (int rung = 0; rung <= count; rung++) {
      final position = length * rung / count;
      rungs.moveTo(position, -halfWidth);
      rungs.lineTo(position, halfWidth);
    }
    for (final structure in [rails, rungs]) {
      canvas.drawPath(
        structure.shift(const Offset(1.5, 2.5)),
        Paint()
          ..color = Colors.black54
          ..style = PaintingStyle.stroke
          ..strokeWidth = cellSize * 0.12
          ..strokeCap = StrokeCap.round,
      );
      canvas.drawPath(
        structure,
        Paint()
          ..color = const Color(0xFF795018)
          ..style = PaintingStyle.stroke
          ..strokeWidth = cellSize * 0.11
          ..strokeCap = StrokeCap.round,
      );
      canvas.drawPath(
        structure.shift(const Offset(0, -0.7)),
        Paint()
          ..color = const Color(0xFFF2C96B)
          ..style = PaintingStyle.stroke
          ..strokeWidth = cellSize * 0.055
          ..strokeCap = StrokeCap.round,
      );
    }
    canvas.restore();
  }

  void _drawBodyStripe(Canvas canvas, Path path, double cellSize) {
    final paint = Paint()..color = Colors.black.withValues(alpha: 0.32);

    for (final metric in path.computeMetrics()) {
      var distance = cellSize * 0.08;
      while (distance < metric.length) {
        final tangent = metric.getTangentForOffset(distance)!;
        canvas.save();
        canvas.translate(tangent.position.dx, tangent.position.dy);
        canvas.rotate(atan2(tangent.vector.dy, tangent.vector.dx));
        final marking = Path()
          ..addPolygon([
            Offset(-cellSize * 0.09, 0),
            Offset(0, -cellSize * 0.13),
            Offset(cellSize * 0.09, 0),
            Offset(0, cellSize * 0.13),
          ], true);
        canvas.drawPath(marking, paint);
        canvas.restore();
        distance += cellSize * 0.38;
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
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(atan2(axis.dy, axis.dx));
    final tongue = Path()
      ..moveTo(cellSize * 0.22, 0)
      ..lineTo(cellSize * 0.46, 0)
      ..lineTo(cellSize * 0.56, -cellSize * 0.06)
      ..moveTo(cellSize * 0.46, 0)
      ..lineTo(cellSize * 0.56, cellSize * 0.06);
    canvas.drawPath(
      tongue,
      Paint()
        ..color = const Color(0xFFB51E36)
        ..style = PaintingStyle.stroke
        ..strokeWidth = max(1, cellSize * 0.035),
    );
    final headRect = Rect.fromCenter(
      center: Offset.zero,
      width: cellSize * 0.62,
      height: cellSize * 0.44,
    );
    canvas.drawOval(
      headRect.shift(const Offset(1, 2)),
      Paint()..color = Colors.black45,
    );
    canvas.drawOval(
      headRect,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.3, -0.5),
          colors: [
            Color.lerp(color, Colors.white, 0.6)!,
            color,
            Color.lerp(color, Colors.black, 0.4)!,
          ],
        ).createShader(headRect),
    );
    for (final side in [-1.0, 1.0]) {
      final eye = Offset(cellSize * 0.09, cellSize * 0.13 * side);
      canvas.drawCircle(
        eye,
        cellSize * 0.065,
        Paint()..color = const Color(0xFFFFE998),
      );
      canvas.drawOval(
        Rect.fromCenter(
          center: eye,
          width: cellSize * 0.025,
          height: cellSize * 0.09,
        ),
        Paint()..color = Colors.black,
      );
      canvas.drawCircle(
        Offset(cellSize * 0.23, cellSize * 0.05 * side),
        cellSize * 0.017,
        Paint()..color = Colors.black54,
      );
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _SnakePathPainter oldDelegate) =>
      oldDelegate.snakes != snakes || oldDelegate.ladders != ladders;
}

class _PlayerPosition extends StatelessWidget {
  const _PlayerPosition({
    required this.player,
    required this.position,
    this.bot = false,
  });

  final int player;
  final int position;
  final bool bot;

  @override
  Widget build(BuildContext context) {
    final color = _playerColors[player - 1];
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 7, backgroundColor: color),
        const SizedBox(width: 6),
        Text('${bot ? 'Bot' : 'P$player'}: $position'),
      ],
    );
  }
}
