import '../l10n/game_localizations.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/jigsaw_puzzle_service.dart';
import '../services/game_sound_service.dart';
import '../widgets/level_picker_dialog.dart';

class JigsawPuzzleScreen extends StatefulWidget {
  const JigsawPuzzleScreen({super.key});

  @override
  State<JigsawPuzzleScreen> createState() => _JigsawPuzzleScreenState();
}

/// Fraction of a tile kept as breathing room for the interlocking knobs.
/// Kept small so neighboring pieces sit as close together as possible.
const double _kPieceInsetFraction = 0.035;

class _JigsawPuzzleScreenState extends State<JigsawPuzzleScreen> {
  Set<int> _completedLevels = {};
  late List<int> _tiles;
  int _level = 1;
  int _moves = 0;
  int? _selectedSlot;
  bool _loading = true;
  ui.Image? _artwork;
  bool _artworkLoading = true;
  bool _artworkFailed = false;
  int _artworkRequest = 0;

  int get _gridSize => JigsawPuzzleService.gridSizeFor(_level);
  bool get _busy => _loading || _artworkLoading || _artworkFailed;
  double get _artworkAspectRatio => _artwork!.width / _artwork!.height;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  @override
  void dispose() {
    _artworkRequest++;
    _artwork?.dispose();
    super.dispose();
  }

  Future<void> _loadArtwork(int level) async {
    final request = ++_artworkRequest;
    final asset = JigsawPuzzleService.artworkFor(level);
    try {
      final data = await rootBundle.load(asset);
      final codec = await ui.instantiateImageCodec(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      final ui.FrameInfo frame;
      try {
        frame = await codec.getNextFrame();
      } finally {
        codec.dispose();
      }
      if (!mounted || request != _artworkRequest) {
        frame.image.dispose();
        return;
      }
      setState(() {
        _artwork?.dispose();
        _artwork = frame.image;
        _artworkLoading = false;
      });
    } catch (error, stack) {
      debugPrint('Jigsaw artwork failed: $asset: $error\n$stack');
      if (!mounted || request != _artworkRequest) return;
      setState(() {
        _artworkLoading = false;
        _artworkFailed = true;
      });
    }
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
    _artworkLoading = true;
    _artworkFailed = false;
    unawaited(_loadArtwork(level));
    JigsawPuzzleService.saveSelectedLevel(level);
  }

  void _startLevel(int level) {
    if (!JigsawPuzzleService.isUnlocked(level, _completedLevels)) return;
    setState(() => _prepareLevel(level));
  }

  void _reshuffle() {
    final random = math.Random();
    var next = JigsawPuzzleService.shuffledTiles(_level, random: random);
    // Avoid occasionally re-rolling the exact same arrangement.
    for (var attempt = 0;
        attempt < 8 && _listEquals(next, _tiles);
        attempt++) {
      next = JigsawPuzzleService.shuffledTiles(_level, random: random);
    }
    setState(() {
      _tiles = next.toList();
      _moves = 0;
      _selectedSlot = null;
    });
  }

  static bool _listEquals(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
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
    if (_isFixed(slot)) {
      if (_selectedSlot != null) setState(() => _selectedSlot = null);
      return;
    }
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
    if (first == second || _isFixed(first) || _isFixed(second)) return;
    setState(() {
      final value = _tiles[first];
      _tiles[first] = _tiles[second];
      _tiles[second] = value;
      _moves++;
      _selectedSlot = null;
    });
    if (JigsawPuzzleService.isSolved(_tiles)) {
      unawaited(GameSoundService.play(GameSoundEffect.win));
      _finishLevel();
    } else {
      unawaited(GameSoundService.play(GameSoundEffect.click));
    }
  }

  bool _isFixed(int slot) => _tiles[slot] == slot;

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
        title: Text(
          gameL10n(context).gameUiPuzzleComplete((completedLevel).toString()),
        ),
        content: Text(
          rewarded
              ? gameL10n(context).gameUiPictureCompleteInMovesYouEarnedPoints(
                  (_moves).toString(),
                  (JigsawPuzzleService.rewardPerLevel).toString(),
                )
              : gameL10n(
                  context,
                ).gameUiPictureCompleteInMoves((_moves).toString()),
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, 'levels'),
            child: Text(gameL10n(context).gameUiLevels),
          ),
          if (hasNext)
            FilledButton.icon(
              onPressed: () => Navigator.pop(dialogContext, 'next'),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: Text(gameL10n(context).gameUiNextPuzzle),
            )
          else
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, 'levels'),
              child: Text(gameL10n(context).gameUiAllPuzzlesComplete),
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

  Widget _tile(int tile, int slot, Size size, ColorScheme colors) {
    final selected = _selectedSlot == slot;
    final fixed = _isFixed(slot);
    final pieceClipper = JigsawPieceClipper(
      JigsawPuzzleService.pieceEdgesFor(_level, tile),
      insetFraction: _kPieceInsetFraction,
    );
    final tileImage = ClipPath(
      key: ValueKey('jigsaw-grid-piece-$tile'),
      clipper: pieceClipper,
      child: CustomPaint(
        painter: JigsawImageTilePainter(
          image: _artwork!,
          gridSize: _gridSize,
          tile: tile,
          insetFraction: _kPieceInsetFraction,
        ),
        child: const SizedBox.expand(),
      ),
    );

    return DragTarget<int>(
      onWillAcceptWithDetails: (details) =>
          details.data != slot && !_isFixed(details.data) && !fixed,
      onAcceptWithDetails: (details) => _swapSlots(details.data, slot),
      builder: (context, candidates, rejected) => LongPressDraggable<int>(
        key: ValueKey('jigsaw-drag-$slot'),
        data: slot,
        maxSimultaneousDrags: fixed ? 0 : null,
        feedback: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: tileImage,
          ),
        ),
        childWhenDragging: Opacity(opacity: 0.3, child: tileImage),
        child: Semantics(
          button: true,
          label: fixed
              ? gameL10n(context).gameUiPuzzlePieceOfCorrectlyPlaced(
                  (tile + 1).toString(),
                  (_tiles.length).toString(),
                )
              : gameL10n(context).gameUiPuzzlePieceOf(
                  (tile + 1).toString(),
                  (_tiles.length).toString(),
                ),
          child: InkWell(
            key: ValueKey('jigsaw-slot-$slot'),
            onTap: () => _tapSlot(slot),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              foregroundDecoration: BoxDecoration(
                color: fixed ? Colors.green.withValues(alpha: 0.24) : null,
                border: Border.all(
                  color: fixed
                      ? Colors.green.shade600
                      : selected
                      ? colors.primary
                      : candidates.isNotEmpty
                      ? colors.tertiary
                      : Colors.transparent,
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
        final boardWidth = math.min(constraints.maxWidth, 560.0);
        final contentWidth = boardWidth - 6;
        final boardHeight = contentWidth / _artworkAspectRatio + 6;
        final tileSize = Size(
          contentWidth / _gridSize,
          (boardHeight - 6) / _gridSize,
        );
        return Center(
          child: SizedBox(
            width: boardWidth,
            height: boardHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: colors.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                key: const ValueKey('jigsaw-board-grid'),
                children: [
                  for (var piece = 0; piece < _tiles.length; piece++)
                    _positionedPiece(piece, tileSize, colors),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _positionedPiece(int piece, Size size, ColorScheme colors) {
    final slot = _tiles.indexOf(piece);
    return AnimatedPositioned(
      key: ValueKey('jigsaw-piece-pos-$piece'),
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeInOutCubic,
      left: 3 + (slot % _gridSize) * size.width,
      top: 3 + (slot ~/ _gridSize) * size.height,
      width: size.width,
      height: size.height,
      child: _tile(piece, slot, size, colors),
    );
  }

  Widget _buildPreview(double maxWidth) {
    return Center(
      child: SizedBox(
        width: maxWidth,
        child: AspectRatio(
          aspectRatio: _artworkAspectRatio,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomPaint(
              key: const ValueKey('jigsaw-preview'),
              painter: JigsawImageTilePainter(
                image: _artwork!,
                gridSize: 1,
                tile: 0,
              ),
              child: const SizedBox.expand(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(gameL10n(context).gameUiJigsawPuzzle),
        actions: [
          IconButton(
            tooltip: gameL10n(context).gameUiChoosePuzzle,
            onPressed: _busy ? null : _showLevelPicker,
            icon: const Icon(Icons.grid_view_rounded),
          ),
          IconButton(
            tooltip: gameL10n(context).gameUiShufflePieces,
            onPressed: _busy ? null : _reshuffle,
            icon: const Icon(Icons.shuffle_rounded),
          ),
        ],
      ),
      body: _loading || _artworkLoading
          ? const Center(child: CircularProgressIndicator())
          : _artworkFailed
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(gameL10n(context).gameUiUnableToLoadThePuzzlePicture),
                  const SizedBox(height: 12),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        _artworkLoading = true;
                        _artworkFailed = false;
                      });
                      unawaited(_loadArtwork(_level));
                    },
                    child: Text(gameL10n(context).retry),
                  ),
                ],
              ),
            )
          : SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final desktop = constraints.maxWidth >= 900;
                  return SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: desktop ? 1200 : 620,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  tooltip: gameL10n(
                                    context,
                                  ).gameUiPreviousPuzzle,
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
                                        gameL10n(
                                          context,
                                        ).gameUiPuzzle((_level).toString()),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Text(
                                        gameL10n(context).gameUiMoves9d0612c(
                                          (_level).toString(),
                                          (JigsawPuzzleService.levelCount)
                                              .toString(),
                                          (_gridSize).toString(),
                                          (_gridSize).toString(),
                                          (_moves).toString(),
                                        ),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: colors.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  tooltip: gameL10n(context).gameUiNextPuzzle,
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
                              gameL10n(
                                context,
                              ).gameUiDragPiecesToSwapThemOrTapTwoPieces,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: colors.onSurfaceVariant),
                            ),
                            const SizedBox(height: 14),
                            if (desktop)
                              Row(
                                key: const ValueKey('jigsaw-desktop-layout'),
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: _buildPreview(560)),
                                  const SizedBox(width: 24),
                                  Expanded(child: _buildBoard(colors)),
                                ],
                              )
                            else ...[
                              _buildPreview(
                                math.min(200, constraints.maxWidth - 32),
                              ),
                              const SizedBox(height: 14),
                              _buildBoard(colors),
                            ],
                            const SizedBox(height: 12),
                            Text(
                              gameL10n(context).gameUiPuzzlesSolvedPointsEach(
                                (_completedLevels.length).toString(),
                                (JigsawPuzzleService.levelCount).toString(),
                                (JigsawPuzzleService.rewardPerLevel).toString(),
                              ),
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(color: colors.onSurfaceVariant),
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

class JigsawImageTilePainter extends CustomPainter {
  const JigsawImageTilePainter({
    required this.image,
    required this.gridSize,
    required this.tile,
    this.insetFraction = 0,
  });

  final ui.Image image;
  final int gridSize;
  final int tile;

  /// When non-zero, the tile's full image region is mapped onto the inset
  /// piece body (matching [JigsawPieceClipper]), so the knob areas show the
  /// correct content of the neighboring pieces and nothing of the picture
  /// is lost between pieces.
  final double insetFraction;

  @override
  void paint(Canvas canvas, Size size) {
    final row = tile ~/ gridSize;
    final column = tile % gridSize;
    final margin = math.min(size.width, size.height) * insetFraction;
    final bodyWidth = size.width - 2 * margin;
    final bodyHeight = size.height - 2 * margin;
    canvas.save();
    canvas.clipRect(Offset.zero & size);
    canvas.translate(margin - column * bodyWidth, margin - row * bodyHeight);
    paintImage(
      canvas: canvas,
      rect: Rect.fromLTWH(0, 0, bodyWidth * gridSize, bodyHeight * gridSize),
      image: image,
      fit: BoxFit.fill,
      filterQuality: FilterQuality.high,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(JigsawImageTilePainter oldDelegate) =>
      oldDelegate.image != image ||
      oldDelegate.gridSize != gridSize ||
      oldDelegate.tile != tile ||
      oldDelegate.insetFraction != insetFraction;
}

class JigsawPieceClipper extends CustomClipper<Path> {
  const JigsawPieceClipper(this.edges, {this.insetFraction = 0.035});

  final JigsawPieceEdges edges;

  /// Fraction of the tile kept free around the piece body so knobs fit
  /// inside the widget bounds. Small on purpose: pieces should sit as
  /// close together as possible.
  final double insetFraction;

  @override
  Path getClip(Size size) {
    final margin = math.min(size.width, size.height) * insetFraction;
    final depth = margin;
    final left = margin;
    final top = margin;
    final right = size.width - margin;
    final bottom = size.height - margin;
    final path = Path()..moveTo(left, top);

    _horizontalEdge(path, left, right, top, edges.top, depth);
    _verticalEdge(path, top, bottom, right, edges.right, depth);
    _horizontalEdge(path, right, left, bottom, edges.bottom, -depth);
    _verticalEdge(path, bottom, top, left, edges.left, -depth);
    path.close();
    return path;
  }

  static void _horizontalEdge(
    Path path,
    double start,
    double end,
    double y,
    int edge,
    double depth,
  ) {
    if (edge == 0) {
      path.lineTo(end, y);
      return;
    }
    final width = end - start;
    final direction = edge * depth;
    path
      ..lineTo(start + width * 0.35, y)
      ..cubicTo(
        start + width * 0.38,
        y,
        start + width * 0.36,
        y - direction,
        start + width * 0.5,
        y - direction,
      )
      ..cubicTo(
        start + width * 0.64,
        y - direction,
        start + width * 0.62,
        y,
        start + width * 0.65,
        y,
      )
      ..lineTo(end, y);
  }

  static void _verticalEdge(
    Path path,
    double start,
    double end,
    double x,
    int edge,
    double depth,
  ) {
    if (edge == 0) {
      path.lineTo(x, end);
      return;
    }
    final height = end - start;
    final direction = edge * depth;
    path
      ..lineTo(x, start + height * 0.35)
      ..cubicTo(
        x,
        start + height * 0.38,
        x + direction,
        start + height * 0.36,
        x + direction,
        start + height * 0.5,
      )
      ..cubicTo(
        x + direction,
        start + height * 0.64,
        x,
        start + height * 0.62,
        x,
        start + height * 0.65,
      )
      ..lineTo(x, end);
  }

  @override
  bool shouldReclip(JigsawPieceClipper oldClipper) =>
      oldClipper.edges != edges || oldClipper.insetFraction != insetFraction;
}
