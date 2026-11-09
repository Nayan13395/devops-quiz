import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../services/game_sound_service.dart';
import '../services/point_service.dart';
import '../services/spot_difference_service.dart';
import '../widgets/level_picker_dialog.dart';

class SpotTheDifferenceScreen extends StatefulWidget {
  const SpotTheDifferenceScreen({super.key});

  @override
  State<SpotTheDifferenceScreen> createState() =>
      _SpotTheDifferenceScreenState();
}

class _SpotTheDifferenceScreenState extends State<SpotTheDifferenceScreen> {
  Set<int> _completedLevels = {};
  Set<DifferenceFeature> _found = {};
  DifferenceFeature? _hinted;
  int _levelNumber = 1;
  int _misses = 0;
  int _hintsUsed = 0;
  bool _loading = true;
  bool _completing = false;
  Timer? _hintTimer;

  SpotDifferenceLevel get _level =>
      SpotDifferenceService.levels[_levelNumber - 1];
  bool get _levelComplete =>
      _found.length == SpotDifferenceService.differencesPerLevel;
  int get _nextUnlocked =>
      (_completedLevels.isEmpty ? 1 : _completedLevels.reduce(math.max) + 1)
          .clamp(1, SpotDifferenceService.levelCount);

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final completed = await SpotDifferenceService.loadCompletedLevels();
    if (!mounted) return;
    setState(() {
      _completedLevels = completed;
      _levelNumber = _nextUnlocked;
      _loading = false;
    });
  }

  Future<void> _chooseLevel() async {
    final level = await showDialog<int>(
      context: context,
      builder: (context) => LevelPickerDialog(
        levelCount: SpotDifferenceService.levelCount,
        isUnlocked: (level) =>
            SpotDifferenceService.isUnlocked(level, _completedLevels),
        isCompleted: _completedLevels.contains,
        currentLevel: _levelNumber,
        levelKeyPrefix: 'spot-difference',
      ),
    );
    if (level != null && mounted) {
      setState(() {
        _levelNumber = level;
        _found = {};
        _misses = 0;
        _hintsUsed = 0;
        _hinted = null;
        _hintTimer?.cancel();
      });
    }
  }

  void _useHint() {
    if (_loading || _completing || _levelComplete) return;
    final next = _level.differences
        .where((difference) => !_found.contains(difference.feature))
        .firstOrNull;
    if (next == null) return;
    _hintTimer?.cancel();
    setState(() {
      _hinted = next.feature;
      _hintsUsed++;
    });
    unawaited(GameSoundService.play(GameSoundEffect.click));
    _hintTimer = Timer(const Duration(milliseconds: 2200), () {
      if (mounted) setState(() => _hinted = null);
    });
  }

  void _tapImage(bool rightImage, Offset position, Size size) {
    if (_loading || _completing || _levelComplete) return;
    final point = Offset(position.dx / size.width, position.dy / size.height);
    for (final difference in _level.differences) {
      if (_found.contains(difference.feature)) continue;
      final target = rightImage ? difference.right : difference.left;
      if ((target - point).distance <= 0.075) {
        final isLast = _found.length + 1 == _level.differences.length;
        unawaited(
          GameSoundService.play(
            isLast ? GameSoundEffect.win : GameSoundEffect.correct,
          ),
        );
        setState(() {
          _found = {..._found, difference.feature};
          if (_hinted == difference.feature) _hinted = null;
        });
        if (_hinted == null) _hintTimer?.cancel();
        if (_levelComplete) unawaited(_completeLevel());
        return;
      }
    }
    setState(() => _misses++);
    unawaited(GameSoundService.play(GameSoundEffect.incorrect));
  }

  Future<void> _completeLevel() async {
    if (_completing) return;
    setState(() => _completing = true);
    _hintTimer?.cancel();
    _hinted = null;
    try {
      final firstClear = await SpotDifferenceService.completeLevel(
        _levelNumber,
      );
      final completed = await SpotDifferenceService.loadCompletedLevels();
      if (firstClear) {
        final points = math.max(
          0,
          SpotDifferenceService.rewardPerLevel -
              _hintsUsed * SpotDifferenceService.hintPenalty,
        );
        await PointService.addPoints(points, source: PointSource.game);
      }
      if (!mounted) return;
      setState(() {
        _completedLevels = completed;
        _completing = false;
      });
    } catch (error) {
      debugPrint('Spot the Difference progress save failed: $error');
      if (mounted) setState(() => _completing = false);
    }
  }

  Widget _imagePanel({required bool right, required ColorScheme colors}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            right ? 'Picture B' : 'Picture A',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        AspectRatio(
          aspectRatio: 4 / 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final imageSize = constraints.biggest;
                return GestureDetector(
                  key: ValueKey(
                    right ? 'difference-image-right' : 'difference-image-left',
                  ),
                  behavior: HitTestBehavior.opaque,
                  onTapUp: (details) =>
                      _tapImage(right, details.localPosition, imageSize),
                  child: CustomPaint(
                    painter: _DifferenceScenePainter(
                      level: _level,
                      rightImage: right,
                      found: _found,
                      hinted: _hinted,
                      colors: colors,
                    ),
                    child: const SizedBox.expand(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _hintTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final nextLevel = _levelNumber + 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spot the Difference'),
        actions: [
          IconButton(
            key: const ValueKey('difference-hint'),
            tooltip:
                'Hint · ${SpotDifferenceService.hintPenalty} points per hint',
            onPressed: _loading || _completing || _levelComplete
                ? null
                : _useHint,
            icon: const Icon(Icons.lightbulb_outline_rounded),
          ),
          IconButton(
            tooltip: 'Choose level',
            onPressed: _loading ? null : _chooseLevel,
            icon: const Icon(Icons.grid_view_rounded),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 820),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Level $_levelNumber / '
                                      '${SpotDifferenceService.levelCount}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                    Text(
                                      _level.title,
                                      style: TextStyle(
                                        color: colors.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '${_found.length} / '
                                '${SpotDifferenceService.differencesPerLevel}',
                                key: const ValueKey('difference-progress'),
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: LinearProgressIndicator(
                              value:
                                  _found.length /
                                  SpotDifferenceService.differencesPerLevel,
                              minHeight: 8,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _levelComplete
                                ? 'All differences found!'
                                : 'Find five differences. Tap each one in either picture.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colors.onSurfaceVariant),
                          ),
                          const SizedBox(height: 14),
                          LayoutBuilder(
                            builder: (context, panelConstraints) {
                              if (panelConstraints.maxWidth >= 640) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: _imagePanel(
                                        right: false,
                                        colors: colors,
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: _imagePanel(
                                        right: true,
                                        colors: colors,
                                      ),
                                    ),
                                  ],
                                );
                              }
                              return Column(
                                children: [
                                  _imagePanel(right: false, colors: colors),
                                  const SizedBox(height: 12),
                                  _imagePanel(right: true, colors: colors),
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: 14),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              for (
                                int index = 0;
                                index < _level.differences.length;
                                index++
                              )
                                _DifferenceMarker(
                                  index: index + 1,
                                  found: _found.contains(
                                    _level.differences[index].feature,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Misses: $_misses  ·  Hints: $_hintsUsed '
                            '(−${_hintsUsed * SpotDifferenceService.hintPenalty} pts)  ·  '
                            '${_completedLevels.length} levels complete',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: colors.onSurfaceVariant),
                          ),
                          if (_levelComplete &&
                              nextLevel <= SpotDifferenceService.levelCount &&
                              SpotDifferenceService.isUnlocked(
                                nextLevel,
                                _completedLevels,
                              )) ...[
                            const SizedBox(height: 14),
                            Center(
                              child: FilledButton.icon(
                                key: const ValueKey('difference-next-level'),
                                onPressed: () => setState(() {
                                  _levelNumber = nextLevel;
                                  _found = {};
                                  _misses = 0;
                                }),
                                icon: const Icon(Icons.arrow_forward_rounded),
                                label: Text('Next level: $nextLevel'),
                              ),
                            ),
                          ],
                          if (_levelComplete &&
                              _levelNumber == SpotDifferenceService.levelCount)
                            const Padding(
                              padding: EdgeInsets.only(top: 14),
                              child: Text(
                                'You completed every picture!',
                                textAlign: TextAlign.center,
                              ),
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

class _DifferenceMarker extends StatelessWidget {
  const _DifferenceMarker({required this.index, required this.found});

  final int index;
  final bool found;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
    key: ValueKey('difference-marker-$index'),
    duration: const Duration(milliseconds: 180),
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: found
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.surfaceContainerHighest,
      border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
    ),
    child: found
        ? const Icon(Icons.check_rounded, size: 18, color: Colors.white)
        : Text('$index', style: const TextStyle(fontWeight: FontWeight.w700)),
  );
}

class _DifferenceScenePainter extends CustomPainter {
  const _DifferenceScenePainter({
    required this.level,
    required this.rightImage,
    required this.found,
    required this.hinted,
    required this.colors,
  });

  final SpotDifferenceLevel level;
  final bool rightImage;
  final Set<DifferenceFeature> found;
  final DifferenceFeature? hinted;
  final ColorScheme colors;

  bool _differs(DifferenceFeature feature) =>
      rightImage && level.differences.any((spot) => spot.feature == feature);

  Offset _point(double x, double y, Size size) =>
      Offset(x * size.width, y * size.height);

  Offset _featurePoint(DifferenceFeature feature, Size size) {
    final spot = level.differences.where((item) => item.feature == feature);
    if (spot.isEmpty) {
      return switch (feature) {
        DifferenceFeature.cloud => _point(0.20, 0.23, size),
        DifferenceFeature.sun => _point(0.82, 0.17, size),
        DifferenceFeature.antenna => _point(0.66, 0.34, size),
        DifferenceFeature.windows => _point(0.36, 0.55, size),
        DifferenceFeature.tree => _point(0.82, 0.76, size),
        DifferenceFeature.flower => _point(0.19, 0.82, size),
        DifferenceFeature.flag => _point(0.49, 0.28, size),
        DifferenceFeature.fan => _point(0.65, 0.57, size),
        DifferenceFeature.roof => _point(0.22, 0.39, size),
        DifferenceFeature.door => _point(0.22, 0.69, size),
        DifferenceFeature.dish => _point(0.76, 0.39, size),
        DifferenceFeature.chimney => _point(0.29, 0.28, size),
      };
    }
    final definition = spot.first;
    return _point(
      rightImage ? definition.right.dx : definition.left.dx,
      rightImage ? definition.right.dy : definition.left.dy,
      size,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final palettes = [
      [
        const Color(0xFFB7E4EA),
        const Color(0xFF72B9C9),
        const Color(0xFF547D69),
      ],
      [
        const Color(0xFFFFD8A5),
        const Color(0xFFF29F67),
        const Color(0xFF71885A),
      ],
      [
        const Color(0xFFC9D8FA),
        const Color(0xFF899ED0),
        const Color(0xFF587969),
      ],
      [
        const Color(0xFFFFD4D8),
        const Color(0xFFE992A3),
        const Color(0xFF688566),
      ],
      [
        const Color(0xFFC7E9CF),
        const Color(0xFF79BBAA),
        const Color(0xFF557E60),
      ],
      [
        const Color(0xFFFFE0A3),
        const Color(0xFFEAB577),
        const Color(0xFF758A64),
      ],
      [
        const Color(0xFFD8E6F3),
        const Color(0xFF88A9C3),
        const Color(0xFF627F6C),
      ],
      [
        const Color(0xFFFFD3AF),
        const Color(0xFFE9A078),
        const Color(0xFF788458),
      ],
      [
        const Color(0xFFC8E4E2),
        const Color(0xFF70AAA6),
        const Color(0xFF54775F),
      ],
      [
        const Color(0xFFE7D8F3),
        const Color(0xFFB69AD1),
        const Color(0xFF69806C),
      ],
    ];
    final palette = palettes[level.palette];
    canvas.drawRect(
      Offset.zero & size,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [palette[0], palette[1]],
        ).createShader(Offset.zero & size),
    );
    _drawLocationScene(canvas, size, palette);
    _drawSun(canvas, size);
    _drawCloud(canvas, size);
    _drawBuilding(canvas, size, const Rect.fromLTWH(0.08, 0.40, 0.30, 0.38), 0);
    _drawBuilding(canvas, size, const Rect.fromLTWH(0.37, 0.30, 0.34, 0.48), 1);
    _drawBuilding(canvas, size, const Rect.fromLTWH(0.70, 0.46, 0.22, 0.32), 2);
    _drawAntenna(canvas, size);
    _drawSatelliteDish(canvas, size);
    _drawFlag(canvas, size);
    _drawTree(canvas, size, palette[2]);
    _drawFlower(canvas, size);
    _drawFan(canvas, size);
    _drawGround(canvas, size, palette[2]);
    _drawFoundMarkers(canvas, size);
    _drawHintMarker(canvas, size);
  }

  void _drawLocationScene(Canvas canvas, Size size, List<Color> palette) {
    final accent = Paint()..color = palette[2].withValues(alpha: 0.48);
    final outline = Paint()
      ..color = const Color(0xFF42596A).withValues(alpha: 0.65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.012
      ..strokeCap = StrokeCap.round;

    switch (level.sceneIndex) {
      case 0:
        final path = Path()
          ..moveTo(size.width * 0.42, size.height)
          ..lineTo(size.width * 0.47, size.height * 0.66)
          ..lineTo(size.width * 0.53, size.height * 0.66)
          ..lineTo(size.width * 0.62, size.height)
          ..close();
        canvas.drawPath(
          path,
          Paint()..color = accent.color.withValues(alpha: 0.5),
        );
      case 1:
        for (int tower = 0; tower < 5; tower++) {
          final x = size.width * (0.04 + tower * 0.19);
          final height = size.height * (0.13 + ((tower * 7) % 4) * 0.035);
          canvas.drawRect(
            Rect.fromLTWH(
              x,
              size.height * 0.68 - height,
              size.width * 0.11,
              height,
            ),
            Paint()..color = accent.color.withValues(alpha: 0.52),
          );
        }
      case 2:
        for (int row = 0; row < 7; row++) {
          final y = size.height * (0.54 + row * 0.045);
          canvas.drawLine(
            Offset(size.width * 0.04, y),
            Offset(size.width * 0.96, y - size.height * 0.03),
            outline,
          );
        }
      case 3:
        final arch = Path()
          ..moveTo(size.width * 0.40, size.height * 0.73)
          ..lineTo(size.width * 0.40, size.height * 0.49)
          ..cubicTo(
            size.width * 0.40,
            size.height * 0.30,
            size.width * 0.60,
            size.height * 0.30,
            size.width * 0.60,
            size.height * 0.49,
          )
          ..lineTo(size.width * 0.60, size.height * 0.73);
        canvas.drawPath(arch, outline);
      case 4:
        for (int rack = 0; rack < 6; rack++) {
          final rect = Rect.fromLTWH(
            size.width * (0.04 + rack * 0.155),
            size.height * 0.48,
            size.width * 0.105,
            size.height * 0.25,
          );
          canvas.drawRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(size.width * 0.012)),
            Paint()..color = accent.color.withValues(alpha: 0.55),
          );
          for (int light = 0; light < 3; light++) {
            canvas.drawCircle(
              Offset(
                rect.left + rect.width * 0.25,
                rect.top + size.height * (0.05 + light * 0.07),
              ),
              size.width * 0.007,
              Paint()..color = const Color(0xFFDAF5A5),
            );
          }
        }
      case 5:
        final dome = Rect.fromLTWH(
          size.width * 0.38,
          size.height * 0.36,
          size.width * 0.28,
          size.height * 0.28,
        );
        canvas.drawArc(dome, math.pi, math.pi, false, outline);
        canvas.drawLine(
          Offset(dome.left, dome.bottom),
          Offset(dome.right, dome.bottom),
          outline,
        );
        canvas.drawLine(
          Offset(dome.center.dx, dome.center.dy),
          Offset(dome.right + size.width * 0.08, dome.top - size.height * 0.08),
          outline,
        );
      case 6:
        for (int row = 0; row < 4; row++) {
          final y = size.height * (0.48 + row * 0.075);
          for (int bloom = 0; bloom < 8; bloom++) {
            final x =
                size.width * (0.04 + bloom * 0.13 + (row.isEven ? 0 : 0.045));
            canvas.drawCircle(
              Offset(x, y),
              size.width * 0.012,
              Paint()
                ..color = row.isEven
                    ? const Color(0xFFE992A3)
                    : const Color(0xFFFFD15C),
            );
          }
        }
      case 7:
        for (final x in [0.12, 0.88]) {
          final hub = _point(x, 0.50, size);
          canvas.drawLine(hub, Offset(hub.dx, size.height * 0.76), outline);
          for (int blade = 0; blade < 3; blade++) {
            final angle = blade * math.pi * 2 / 3 - math.pi / 2;
            canvas.drawLine(
              hub,
              hub +
                  Offset(math.cos(angle), math.sin(angle)) * size.width * 0.08,
              outline,
            );
          }
        }
      case 8:
        final horizon = size.height * 0.70;
        canvas.drawRect(
          Rect.fromLTWH(0, horizon, size.width, size.height * 0.12),
          Paint()..color = const Color(0xFF477E91).withValues(alpha: 0.5),
        );
        for (int wave = 0; wave < 4; wave++) {
          final y = horizon + size.height * (0.025 + wave * 0.022);
          canvas.drawLine(
            Offset(size.width * 0.08, y),
            Offset(size.width * 0.92, y),
            outline,
          );
        }
      case 9:
        final bridge = Path()
          ..moveTo(0, size.height * 0.64)
          ..quadraticBezierTo(
            size.width * 0.50,
            size.height * 0.49,
            size.width,
            size.height * 0.64,
          );
        canvas.drawPath(bridge, outline);
        for (int wave = 0; wave < 5; wave++) {
          final y = size.height * (0.70 + wave * 0.045);
          canvas.drawLine(
            Offset(size.width * 0.05, y),
            Offset(size.width * 0.95, y),
            Paint()
              ..color = const Color(0xFF4F9BAA).withValues(alpha: 0.62)
              ..strokeWidth = size.height * 0.008
              ..strokeCap = StrokeCap.round,
          );
        }
    }
  }

  void _drawSun(Canvas canvas, Size size) {
    final spot = level.differences.where(
      (item) => item.feature == DifferenceFeature.sun,
    );
    final position = spot.isNotEmpty && rightImage
        ? spot.first.right
        : const Offset(0.82, 0.17);
    final center = _point(position.dx, position.dy, size);
    canvas.drawCircle(
      center,
      size.width * (_differs(DifferenceFeature.sun) ? 0.071 : 0.083),
      Paint()..color = const Color(0xFFFFD15C),
    );
    if (!_differs(DifferenceFeature.sun)) {
      canvas.drawCircle(
        center,
        size.width * 0.096,
        Paint()
          ..color = const Color(0xFFFFF1B8).withValues(alpha: 0.65)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.012,
      );
    }
  }

  void _drawCloud(Canvas canvas, Size size) {
    final center = _point(0.20, 0.23, size);
    final paint = Paint()..color = const Color(0xFFF6FCF8);
    canvas.drawOval(
      Rect.fromCenter(
        center: center + Offset(-size.width * 0.035, 0),
        width: size.width * 0.19,
        height: size.height * 0.075,
      ),
      paint,
    );
    canvas.drawCircle(center, size.width * 0.051, paint);
    canvas.drawCircle(
      center + Offset(size.width * 0.047, -size.height * 0.025),
      size.width * 0.042,
      paint,
    );
    if (!_differs(DifferenceFeature.cloud)) {
      canvas.drawCircle(
        center + Offset(-size.width * 0.045, -size.height * 0.024),
        size.width * 0.035,
        paint,
      );
    }
  }

  void _drawBuilding(Canvas canvas, Size size, Rect normalized, int building) {
    final rect = Rect.fromLTWH(
      normalized.left * size.width,
      normalized.top * size.height,
      normalized.width * size.width,
      normalized.height * size.height,
    );
    final walls = [
      const Color(0xFFF1C58B),
      const Color(0xFFE5EEF1),
      const Color(0xFFC5D6C1),
    ];
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(size.width * 0.018)),
      Paint()..color = walls[building],
    );
    final roof = Path()
      ..moveTo(rect.left - size.width * 0.02, rect.top)
      ..lineTo(rect.center.dx, rect.top - size.height * 0.065)
      ..lineTo(rect.right + size.width * 0.02, rect.top)
      ..close();
    canvas.drawPath(
      roof,
      Paint()
        ..color =
            _differs(DifferenceFeature.roof) && rightImage && building == 0
            ? const Color(0xFFBD6A45)
            : const Color(0xFF526982),
    );

    final windows =
        _differs(DifferenceFeature.windows) && rightImage && building == 1
        ? 3
        : 4;
    final windowPaint = Paint()..color = const Color(0xFF5C9CB1);
    for (int index = 0; index < windows; index++) {
      final column = index % 2;
      final row = index ~/ 2;
      final window = Rect.fromLTWH(
        rect.left + rect.width * (0.18 + column * 0.47),
        rect.top + rect.height * (0.22 + row * 0.34),
        rect.width * 0.20,
        rect.height * 0.16,
      );
      canvas.drawRRect(
        RRect.fromRectAndRadius(window, Radius.circular(size.width * 0.008)),
        windowPaint,
      );
      canvas.drawLine(
        Offset(window.center.dx, window.top),
        Offset(window.center.dx, window.bottom),
        Paint()
          ..color = const Color(0xFFEAF7F6)
          ..strokeWidth = size.width * 0.006,
      );
    }

    if (building == 0) {
      if (!_differs(DifferenceFeature.door) || !rightImage) {
        final door = Rect.fromLTWH(
          rect.left + rect.width * 0.36,
          rect.top + rect.height * 0.67,
          rect.width * 0.27,
          rect.height * 0.33,
        );
        canvas.drawRRect(
          RRect.fromRectAndRadius(door, Radius.circular(size.width * 0.01)),
          Paint()..color = const Color(0xFF8A6047),
        );
        canvas.drawCircle(
          Offset(door.right - door.width * 0.18, door.center.dy),
          size.width * 0.006,
          Paint()..color = const Color(0xFFFFD15C),
        );
      }
      if (!_differs(DifferenceFeature.chimney) || !rightImage) {
        final chimney = Rect.fromLTWH(
          rect.left + rect.width * 0.68,
          rect.top - size.height * 0.12,
          rect.width * 0.14,
          size.height * 0.10,
        );
        canvas.drawRect(chimney, Paint()..color = const Color(0xFFB56F51));
      }
    }

    if (building == 0 && _differs(DifferenceFeature.roof) && rightImage) {
      final chimneySmoke = Path()
        ..moveTo(rect.center.dx, rect.top - size.height * 0.13)
        ..quadraticBezierTo(
          rect.center.dx - size.width * 0.05,
          rect.top - size.height * 0.18,
          rect.center.dx + size.width * 0.01,
          rect.top - size.height * 0.22,
        );
      canvas.drawPath(
        chimneySmoke,
        Paint()
          ..color = const Color(0xFFEFE6DA)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.012
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  void _drawAntenna(Canvas canvas, Size size) {
    if (_differs(DifferenceFeature.antenna)) return;
    final base = _point(0.66, 0.34, size);
    final paint = Paint()
      ..color = const Color(0xFF546271)
      ..strokeWidth = size.width * 0.012
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(base, base - Offset(0, size.height * 0.14), paint);
    canvas.drawLine(
      base - Offset(size.width * 0.05, size.height * 0.09),
      base + Offset(size.width * 0.05, -size.height * 0.09),
      paint,
    );
    canvas.drawCircle(
      base - Offset(0, size.height * 0.14),
      size.width * 0.018,
      Paint()..color = const Color(0xFFE96C52),
    );
  }

  void _drawSatelliteDish(Canvas canvas, Size size) {
    final center = _featurePoint(DifferenceFeature.dish, size);
    final dish = Path()
      ..moveTo(center.dx - size.width * 0.045, center.dy - size.height * 0.015)
      ..quadraticBezierTo(
        center.dx,
        center.dy + size.height * 0.04,
        center.dx + size.width * 0.045,
        center.dy - size.height * 0.015,
      );
    canvas.drawPath(
      dish,
      Paint()
        ..color = _differs(DifferenceFeature.dish) && rightImage
            ? const Color(0xFFE96C52)
            : const Color(0xFF73879A)
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.012,
    );
    canvas.drawLine(
      center,
      center + Offset(0, size.height * 0.045),
      Paint()
        ..color = const Color(0xFF53636D)
        ..strokeWidth = size.width * 0.008,
    );
  }

  void _drawFlag(Canvas canvas, Size size) {
    final base = _point(0.49, 0.28, size);
    final pole = Paint()
      ..color = const Color(0xFF53636D)
      ..strokeWidth = size.width * 0.009;
    canvas.drawLine(base, base - Offset(0, size.height * 0.11), pole);
    final flag = Path()
      ..moveTo(base.dx, base.dy - size.height * 0.11)
      ..lineTo(base.dx + size.width * 0.085, base.dy - size.height * 0.085)
      ..lineTo(base.dx, base.dy - size.height * 0.055)
      ..close();
    canvas.drawPath(
      flag,
      Paint()
        ..color = _differs(DifferenceFeature.flag) && rightImage
            ? const Color(0xFF42A99B)
            : const Color(0xFFE96C52),
    );
  }

  void _drawTree(Canvas canvas, Size size, Color ground) {
    final base = _point(0.82, 0.76, size);
    canvas.drawRect(
      Rect.fromCenter(
        center: base + Offset(0, size.height * 0.02),
        width: size.width * 0.035,
        height: size.height * 0.19,
      ),
      Paint()..color = const Color(0xFF76513F),
    );
    final leaves = Paint()..color = const Color(0xFF3A896D);
    canvas.drawCircle(
      base - Offset(0, size.height * 0.09),
      size.width * 0.08,
      leaves,
    );
    canvas.drawCircle(
      base + Offset(-size.width * 0.055, -size.height * 0.055),
      size.width * 0.055,
      leaves,
    );
    if (!_differs(DifferenceFeature.tree)) {
      canvas.drawCircle(
        base + Offset(size.width * 0.052, -size.height * 0.055),
        size.width * 0.052,
        leaves,
      );
    }
    canvas.drawOval(
      Rect.fromCenter(
        center: base + Offset(0, size.height * 0.12),
        width: size.width * 0.18,
        height: size.height * 0.035,
      ),
      Paint()..color = ground.withValues(alpha: 0.8),
    );
  }

  void _drawFlower(Canvas canvas, Size size) {
    final center = _point(0.19, 0.82, size);
    canvas.drawLine(
      center,
      center + Offset(0, size.height * 0.11),
      Paint()
        ..color = const Color(0xFF307657)
        ..strokeWidth = size.width * 0.009,
    );
    for (int petal = 0; petal < 5; petal++) {
      if (_differs(DifferenceFeature.flower) && rightImage && petal == 0) {
        continue;
      }
      final angle = petal * math.pi * 2 / 5;
      canvas.drawCircle(
        center + Offset(math.cos(angle), math.sin(angle)) * size.width * 0.025,
        size.width * 0.016,
        Paint()..color = const Color(0xFFEF8EA5),
      );
    }
    canvas.drawCircle(
      center,
      size.width * 0.014,
      Paint()..color = const Color(0xFFFFD15C),
    );
  }

  void _drawFan(Canvas canvas, Size size) {
    final center = _point(0.65, 0.57, size);
    canvas.drawCircle(
      center,
      size.width * 0.035,
      Paint()..color = const Color(0xFF445E70),
    );
    for (int blade = 0; blade < 3; blade++) {
      if (_differs(DifferenceFeature.fan) && rightImage && blade == 0) continue;
      final angle = blade * math.pi * 2 / 3 - math.pi / 2;
      canvas.drawLine(
        center,
        center + Offset(math.cos(angle), math.sin(angle)) * size.width * 0.065,
        Paint()
          ..color = const Color(0xFFE5F5F1)
          ..strokeWidth = size.width * 0.012
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  void _drawGround(Canvas canvas, Size size, Color color) {
    final hill = Path()
      ..moveTo(0, size.height * 0.82)
      ..quadraticBezierTo(
        size.width * 0.48,
        size.height * 0.72,
        size.width,
        size.height * 0.81,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(hill, Paint()..color = color);
    canvas.drawLine(
      Offset(0, size.height * 0.84),
      Offset(size.width, size.height * 0.84),
      Paint()
        ..color = Colors.white.withValues(alpha: 0.4)
        ..strokeWidth = size.height * 0.012,
    );
  }

  void _drawFoundMarkers(Canvas canvas, Size size) {
    for (final difference in level.differences) {
      if (!found.contains(difference.feature)) continue;
      final point = _point(
        rightImage ? difference.right.dx : difference.left.dx,
        rightImage ? difference.right.dy : difference.left.dy,
        size,
      );
      canvas.drawCircle(
        point,
        size.width * 0.075,
        Paint()
          ..color = const Color(0xFF46C78A).withValues(alpha: 0.24)
          ..style = PaintingStyle.fill,
      );
      canvas.drawCircle(
        point,
        size.width * 0.075,
        Paint()
          ..color = const Color(0xFF126C4D)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.012,
      );
    }
  }

  void _drawHintMarker(Canvas canvas, Size size) {
    if (hinted == null) return;
    final spot = level.differences.firstWhere(
      (difference) => difference.feature == hinted,
    );
    final point = _point(
      rightImage ? spot.right.dx : spot.left.dx,
      rightImage ? spot.right.dy : spot.left.dy,
      size,
    );
    final pulse =
        0.5 + 0.5 * math.sin(DateTime.now().millisecond / 1000 * math.pi * 2);
    canvas.drawCircle(
      point,
      size.shortestSide * (0.055 + pulse * 0.012),
      Paint()
        ..color = const Color(0xFFFFA726).withValues(alpha: 0.26)
        ..style = PaintingStyle.fill,
    );
    canvas.drawCircle(
      point,
      size.shortestSide * (0.055 + pulse * 0.012),
      Paint()
        ..color = const Color(0xFF9A4D00)
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.shortestSide * 0.009,
    );
  }

  @override
  bool shouldRepaint(covariant _DifferenceScenePainter oldDelegate) =>
      oldDelegate.level != level ||
      oldDelegate.rightImage != rightImage ||
      oldDelegate.found != found ||
      oldDelegate.hinted != hinted ||
      oldDelegate.colors != colors;
}
