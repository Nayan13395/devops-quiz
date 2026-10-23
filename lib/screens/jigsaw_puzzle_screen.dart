import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../services/jigsaw_puzzle_service.dart';
import '../widgets/level_picker_dialog.dart';

class JigsawPuzzleScreen extends StatefulWidget {
  const JigsawPuzzleScreen({super.key});

  @override
  State<JigsawPuzzleScreen> createState() => _JigsawPuzzleScreenState();
}

class _JigsawPuzzleScreenState extends State<JigsawPuzzleScreen> {
  Set<int> _completedLevels = {};
  late List<int> _tiles;
  int _level = 1;
  int _moves = 0;
  int? _selectedSlot;
  bool _loading = true;

  int get _gridSize => JigsawPuzzleService.gridSizeFor(_level);

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final completed = await JigsawPuzzleService.loadCompletedLevels();
    final savedLevel = await JigsawPuzzleService.loadSelectedLevel();
    var selected = savedLevel;
    if (!JigsawPuzzleService.isUnlocked(selected, completed)) {
      selected = 1;
      while (selected < JigsawPuzzleService.levelCount &&
          completed.contains(selected)) {
        selected++;
      }
    }
    if (!mounted) return;
    setState(() {
      _completedLevels = completed;
      _prepareLevel(selected);
      _loading = false;
    });
  }

  void _prepareLevel(int level) {
    _level = level;
    _tiles = JigsawPuzzleService.shuffledTiles(level).toList();
    _moves = 0;
    _selectedSlot = null;
    JigsawPuzzleService.saveSelectedLevel(level);
  }

  void _startLevel(int level) {
    if (!JigsawPuzzleService.isUnlocked(level, _completedLevels)) return;
    setState(() => _prepareLevel(level));
  }

  Future<void> _showLevelPicker() async {
    final selected = await showDialog<int>(
      context: context,
      builder: (_) => LevelPickerDialog(
        levelCount: JigsawPuzzleService.levelCount,
        isUnlocked: (level) =>
            JigsawPuzzleService.isUnlocked(level, _completedLevels),
        isCompleted: _completedLevels.contains,
        currentLevel: _level,
        levelKeyPrefix: 'jigsaw',
      ),
    );
    if (selected != null && mounted) _startLevel(selected);
  }

  void _tapSlot(int slot) {
    if (_selectedSlot == null) {
      setState(() => _selectedSlot = slot);
      return;
    }
    if (_selectedSlot == slot) {
      setState(() => _selectedSlot = null);
      return;
    }
    _swapSlots(_selectedSlot!, slot);
  }

  void _swapSlots(int first, int second) {
    if (first == second) return;
    setState(() {
      final value = _tiles[first];
      _tiles[first] = _tiles[second];
      _tiles[second] = value;
      _moves++;
      _selectedSlot = null;
    });
    if (JigsawPuzzleService.isSolved(_tiles)) _finishLevel();
  }

  Future<void> _finishLevel() async {
    final completedLevel = _level;
    final rewarded = await JigsawPuzzleService.completeLevel(
      completedLevel,
      _tiles,
    );
    if (!mounted) return;
    setState(() => _completedLevels.add(completedLevel));

    final hasNext = completedLevel < JigsawPuzzleService.levelCount;
    final action = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: const Icon(Icons.auto_awesome_rounded, size: 42),
        title: Text('Puzzle $completedLevel complete!'),
        content: Text(
          rewarded
              ? 'Picture complete in $_moves moves. '
                    'You earned ${JigsawPuzzleService.rewardPerLevel} points.'
              : 'Picture complete in $_moves moves.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, 'levels'),
            child: const Text('Levels'),
          ),
          if (hasNext)
            FilledButton.icon(
              onPressed: () => Navigator.pop(dialogContext, 'next'),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Next puzzle'),
            )
          else
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, 'levels'),
              child: const Text('All puzzles complete'),
            ),
        ],
      ),
    );
    if (!mounted) return;
    if (action == 'next' && hasNext) {
      _startLevel(completedLevel + 1);
    } else if (action == 'levels') {
      _showLevelPicker();
    }
  }

  Widget _tile(int tile, int slot, double size, ColorScheme colors) {
    final selected = _selectedSlot == slot;
    final tileImage = ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: CustomPaint(
        painter: _PuzzleSceneTilePainter(
          seed: _level,
          gridSize: _gridSize,
          tile: tile,
        ),
        child: const SizedBox.expand(),
      ),
    );

    return DragTarget<int>(
      onWillAcceptWithDetails: (details) => details.data != slot,
      onAcceptWithDetails: (details) => _swapSlots(details.data, slot),
      builder: (context, candidates, rejected) => LongPressDraggable<int>(
        data: slot,
        feedback: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(width: size, height: size, child: tileImage),
        ),
        childWhenDragging: Opacity(opacity: 0.3, child: tileImage),
        child: Semantics(
          button: true,
          label: 'Puzzle piece ${tile + 1} of ${_tiles.length}',
          child: InkWell(
            key: ValueKey('jigsaw-slot-$slot'),
            onTap: () => _tapSlot(slot),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              foregroundDecoration: BoxDecoration(
                border: Border.all(
                  color: selected
                      ? colors.primary
                      : candidates.isNotEmpty
                      ? colors.tertiary
                      : colors.surface.withValues(alpha: 0.72),
                  width: selected || candidates.isNotEmpty ? 3 : 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: tileImage,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBoard(ColorScheme colors) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boardSize = math.min(constraints.maxWidth, 560.0);
        final tileSize = boardSize / _gridSize;
        return Center(
          child: SizedBox.square(
            dimension: boardSize,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: colors.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _tiles.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _gridSize,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, slot) =>
                      _tile(_tiles[slot], slot, tileSize, colors),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jigsaw Puzzle'),
        actions: [
          IconButton(
            tooltip: 'Choose puzzle',
            onPressed: _loading ? null : _showLevelPicker,
            icon: const Icon(Icons.grid_view_rounded),
          ),
          IconButton(
            tooltip: 'Shuffle pieces',
            onPressed: _loading
                ? null
                : () => setState(() => _prepareLevel(_level)),
            icon: const Icon(Icons.shuffle_rounded),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 620),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                tooltip: 'Previous puzzle',
                                onPressed:
                                    _level > 1 &&
                                        JigsawPuzzleService.isUnlocked(
                                          _level - 1,
                                          _completedLevels,
                                        )
                                    ? () => _startLevel(_level - 1)
                                    : null,
                                icon: const Icon(Icons.chevron_left_rounded),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Puzzle $_level',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      '$_level / ${JigsawPuzzleService.levelCount}  ·  '
                                      '$_gridSize × $_gridSize  ·  $_moves moves',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: colors.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                tooltip: 'Next puzzle',
                                onPressed:
                                    _level < JigsawPuzzleService.levelCount &&
                                        JigsawPuzzleService.isUnlocked(
                                          _level + 1,
                                          _completedLevels,
                                        )
                                    ? () => _startLevel(_level + 1)
                                    : null,
                                icon: const Icon(Icons.chevron_right_rounded),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Drag pieces to swap them, or tap two pieces.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colors.onSurfaceVariant),
                          ),
                          const SizedBox(height: 14),
                          AspectRatio(
                            aspectRatio: 16 / 7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CustomPaint(
                                painter: _PuzzleSceneTilePainter(
                                  seed: _level,
                                  gridSize: 1,
                                  tile: 0,
                                ),
                                child: const SizedBox.expand(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),
                          _buildBoard(colors),
                          const SizedBox(height: 12),
                          Text(
                            '${_completedLevels.length} / '
                            '${JigsawPuzzleService.levelCount} puzzles solved  ·  '
                            '${JigsawPuzzleService.rewardPerLevel} points each',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: colors.onSurfaceVariant),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

class _PuzzleSceneTilePainter extends CustomPainter {
  const _PuzzleSceneTilePainter({
    required this.seed,
    required this.gridSize,
    required this.tile,
  });

  final int seed;
  final int gridSize;
  final int tile;

  @override
  void paint(Canvas canvas, Size size) {
    final row = tile ~/ gridSize;
    final column = tile % gridSize;
    canvas.save();
    canvas.clipRect(Offset.zero & size);
    canvas.translate(-column * size.width, -row * size.height);
    _paintScene(canvas, Size(size.width * gridSize, size.height * gridSize));
    canvas.restore();
  }

  void _paintScene(Canvas canvas, Size size) {
    final random = math.Random(seed * 65537);
    final hue = (seed * 37.0) % 360;
    final skyTop = HSLColor.fromAHSL(1, hue, 0.62, 0.68).toColor();
    final skyBottom = HSLColor.fromAHSL(
      1,
      (hue + 34) % 360,
      0.72,
      0.88,
    ).toColor();
    final bounds = Offset.zero & size;
    canvas.drawRect(
      bounds,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [skyTop, skyBottom],
        ).createShader(bounds),
    );

    final sunCenter = Offset(
      size.width * (0.2 + random.nextDouble() * 0.6),
      size.height * (0.16 + random.nextDouble() * 0.2),
    );
    canvas.drawCircle(
      sunCenter,
      size.shortestSide * (0.055 + random.nextDouble() * 0.035),
      Paint()..color = const Color(0xFFFFF3B0),
    );

    final cloudPaint = Paint()..color = Colors.white.withValues(alpha: 0.52);
    for (int cloud = 0; cloud < 4; cloud++) {
      final x = size.width * (0.12 + random.nextDouble() * 0.78);
      final y = size.height * (0.12 + random.nextDouble() * 0.28);
      final width = size.width * (0.08 + random.nextDouble() * 0.07);
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(x, y),
          width: width,
          height: width * 0.22,
        ),
        cloudPaint,
      );
      canvas.drawCircle(Offset(x - width * 0.18, y), width * 0.14, cloudPaint);
      canvas.drawCircle(Offset(x + width * 0.1, y), width * 0.19, cloudPaint);
    }

    for (int range = 0; range < 3; range++) {
      final baseY = size.height * (0.55 + range * 0.12);
      final path = Path()..moveTo(0, size.height);
      path.lineTo(0, baseY);
      for (int point = 0; point <= 8; point++) {
        final x = size.width * point / 8;
        final y =
            baseY -
            size.height *
                (0.04 + random.nextDouble() * (range == 0 ? 0.18 : 0.1));
        path.lineTo(x, y);
      }
      path.lineTo(size.width, size.height);
      path.close();
      final color = HSLColor.fromAHSL(
        1,
        (hue + 100 + range * 38) % 360,
        0.42 + range * 0.08,
        0.36 + range * 0.09,
      ).toColor();
      canvas.drawPath(path, Paint()..color = color);
    }

    final foregroundY = size.height * 0.84;
    final ground = Path()
      ..moveTo(0, foregroundY)
      ..quadraticBezierTo(
        size.width * 0.48,
        size.height * 0.72,
        size.width,
        foregroundY,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(
      ground,
      Paint()
        ..color = HSLColor.fromAHSL(1, (hue + 145) % 360, 0.5, 0.3).toColor(),
    );

    final treePaint = Paint()
      ..color = HSLColor.fromAHSL(1, (hue + 125) % 360, 0.48, 0.23).toColor();
    for (int tree = 0; tree < 7; tree++) {
      final x = size.width * random.nextDouble();
      final y = size.height * (0.77 + random.nextDouble() * 0.17);
      final radius = size.shortestSide * (0.018 + random.nextDouble() * 0.025);
      canvas.drawCircle(Offset(x, y), radius, treePaint);
      canvas.drawRect(
        Rect.fromLTWH(x - radius * 0.12, y, radius * 0.24, radius),
        Paint()..color = const Color(0xFF684B35),
      );
    }
  }

  @override
  bool shouldRepaint(_PuzzleSceneTilePainter oldDelegate) =>
      oldDelegate.seed != seed ||
      oldDelegate.gridSize != gridSize ||
      oldDelegate.tile != tile;
}
