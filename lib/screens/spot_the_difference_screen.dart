import '../l10n/game_localizations.dart';
import '../l10n/game_scene_localizations.dart';
import 'dart:async';

import 'package:flutter/material.dart';

import '../services/game_sound_service.dart';
import '../services/point_service.dart';
import '../services/spot_difference_service.dart';
import '../widgets/game_hint_purchase.dart';
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
  bool _purchasingHint = false;
  bool _loadError = false;
  int _imageAttempt = 0;
  final Set<String> _loadedAssets = {};
  final Set<String> _reportedImageErrors = {};
  Timer? _hintTimer;
  final _pictureTransform = TransformationController();
  bool _zoomed = false;

  SpotDifferenceLevel get _level =>
      SpotDifferenceService.levels[_levelNumber - 1];
  bool get _levelComplete => _found.length == _level.differences.length;
  bool get _busy => _loading || _completing || _purchasingHint;
  bool get _picturesReady =>
      _loadedAssets.contains(_level.leftAsset) &&
      _loadedAssets.contains(_level.rightAsset);

  String _levelTitle(BuildContext context) =>
      _level.title.startsWith('3D Scene ')
      ? _level.title
      : gameSceneTitle(context, _level.title);

  @override
  void initState() {
    super.initState();
    _loadProgress();
    _pictureTransform.addListener(_onPictureTransform);
  }

  void _onPictureTransform() {
    final zoomed = _pictureTransform.value.getMaxScaleOnAxis() > 1.01;
    if (zoomed != _zoomed && mounted) setState(() => _zoomed = zoomed);
  }

  void _toggleZoom() {
    _pictureTransform.value = _zoomed
        ? Matrix4.identity()
        : (Matrix4.identity()..scaleByDouble(2, 2, 1, 1));
  }

  Future<void> _loadProgress() async {
    try {
      final completed = await SpotDifferenceService.loadCompletedLevels();
      if (!mounted) return;
      setState(() {
        _completedLevels = completed;
        _levelNumber = SpotDifferenceService.nextUncompletedLevel(completed);
        _loading = false;
        _loadError = false;
      });
    } catch (error, stack) {
      debugPrint('Spot the Difference loading failed: $error\n$stack');
      if (mounted) {
        setState(() {
          _loading = false;
          _loadError = true;
        });
      }
    }
  }

  void _startLevel(int level) {
    if (!SpotDifferenceService.isUnlocked(level, _completedLevels)) return;
    _hintTimer?.cancel();
    _pictureTransform.value = Matrix4.identity();
    setState(() {
      _levelNumber = level;
      _found = {};
      _hinted = null;
      _misses = 0;
      _hintsUsed = 0;
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
    if (level != null && mounted) _startLevel(level);
  }

  Future<void> _useHint() async {
    if (_busy || !_picturesReady || _levelComplete) return;
    final next = _level.differences
        .where((difference) => !_found.contains(difference.feature))
        .firstOrNull;
    if (next == null) return;
    setState(() => _purchasingHint = true);
    final purchased = await purchaseGameHint(context);
    if (!mounted) return;
    setState(() => _purchasingHint = false);
    if (!purchased) return;
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
    if (_busy || !_picturesReady || _levelComplete) return;
    final point = Offset(position.dx / size.width, position.dy / size.height);
    final difference = _level.spotAt(point, rightImage: rightImage);
    if (difference != null) {
      // Repeated taps on a found region must not discover adjacent differences.
      if (_found.contains(difference.feature)) return;
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
    } else {
      setState(() => _misses++);
      unawaited(GameSoundService.play(GameSoundEffect.incorrect));
    }
  }

  Future<void> _completeLevel() async {
    if (_completing) return;
    final completedLevel = _levelNumber;
    setState(() => _completing = true);
    _hintTimer?.cancel();
    _hinted = null;
    try {
      final firstClear = await SpotDifferenceService.completeLevel(
        completedLevel,
      );
      final completed = await SpotDifferenceService.loadCompletedLevels();
      if (firstClear) {
        await PointService.addPoints(
          SpotDifferenceService.rewardPerLevel,
          source: PointSource.game,
        );
      }
      if (!mounted) return;
      setState(() => _completedLevels = completed);
      final action = await _showCompletionDialog(completedLevel, firstClear);
      if (!mounted) return;
      if (action == 'next') {
        _startLevel(completedLevel + 1);
      } else if (action == 'levels') {
        await _chooseLevel();
      }
    } catch (error, stack) {
      debugPrint('Spot the Difference progress save failed: $error\n$stack');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              gameL10n(context).gameUiCouldNotSaveProgressPleaseTryAgain,
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _completing = false);
    }
  }

  Future<String?> _showCompletionDialog(int level, bool firstClear) {
    final hasNext = level < SpotDifferenceService.levelCount;
    final allComplete =
        _completedLevels.length == SpotDifferenceService.levelCount;
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => PopScope(
        canPop: false,
        child: AlertDialog(
          key: const ValueKey('difference-completion-dialog'),
          scrollable: true,
          icon: const Icon(Icons.auto_awesome_rounded, size: 42),
          title: Text(
            gameL10n(context).gameUiLevelComplete((level).toString()),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                firstClear
                    ? gameL10n(context).gameUiYouEarnedPoints(
                        (SpotDifferenceService.rewardPerLevel).toString(),
                      )
                    : gameL10n(
                        context,
                      ).gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn,
                key: const ValueKey('difference-completion-reward'),
                textAlign: TextAlign.center,
              ),
              if (allComplete) ...[
                const SizedBox(height: 12),
                Text(
                  gameL10n(context).gameUiYouCompletedEveryPicture,
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              key: const ValueKey('difference-completion-levels'),
              onPressed: () => Navigator.pop(dialogContext, 'levels'),
              child: Text(gameL10n(context).gameUiLevels),
            ),
            if (hasNext)
              FilledButton.icon(
                key: const ValueKey('difference-completion-next'),
                onPressed: () => Navigator.pop(dialogContext, 'next'),
                icon: const Icon(Icons.arrow_forward_rounded),
                label: Text(gameL10n(context).gameUiNextLevel),
              ),
          ],
        ),
      ),
    );
  }

  Widget _imagePanel({required bool right, required ColorScheme colors}) {
    final asset = right ? _level.rightAsset : _level.leftAsset;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            right
                ? gameL10n(context).gameUiPictureB
                : gameL10n(context).gameUiPictureA,
            textAlign: TextAlign.center,
          ),
        ),
        AspectRatio(
          aspectRatio: _level.aspectRatio,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InteractiveViewer(
              key: ValueKey(
                right ? 'difference-zoom-right' : 'difference-zoom-left',
              ),
              transformationController: _pictureTransform,
              minScale: 1,
              maxScale: 4,
              panEnabled: _zoomed,
              child: Image.asset(
                asset,
                key: ValueKey('$asset-$_imageAttempt'),
                fit: BoxFit.fill,
                semanticLabel:
                    '${_levelTitle(context)}, ${right ? gameL10n(context).gameUiPictureB : gameL10n(context).gameUiPictureA}',
                errorBuilder: (context, error, stack) {
                  if (_reportedImageErrors.add(asset)) {
                    debugPrint('Picture asset failed: $asset: $error');
                  }
                  return ColoredBox(
                    color: colors.surfaceContainer,
                    child: Center(
                      child: TextButton(
                        onPressed: () async {
                          await AssetImage(asset).evict();
                          if (mounted) {
                            setState(() {
                              _loadedAssets.remove(asset);
                              _reportedImageErrors.remove(asset);
                              _imageAttempt++;
                            });
                          }
                        },
                        child: Text(
                          gameL10n(context).gameUiPictureCouldNotLoadRetry,
                        ),
                      ),
                    ),
                  );
                },
                frameBuilder: (context, image, frame, synchronouslyLoaded) {
                  if (!synchronouslyLoaded && frame == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (!_loadedAssets.contains(asset)) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted && !_loadedAssets.contains(asset)) {
                        setState(() => _loadedAssets.add(asset));
                      }
                    });
                  }
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return GestureDetector(
                        key: ValueKey(
                          right
                              ? 'difference-image-right'
                              : 'difference-image-left',
                        ),
                        behavior: HitTestBehavior.opaque,
                        onTapUp: (details) => _tapImage(
                          right,
                          details.localPosition,
                          constraints.biggest,
                        ),
                        child: CustomPaint(
                          foregroundPainter: _DifferenceOverlay(
                            level: _level,
                            right: right,
                            found: _found,
                            hinted: _hinted,
                          ),
                          child: image,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _hintTimer?.cancel();
    _pictureTransform.removeListener(_onPictureTransform);
    _pictureTransform.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final nextLevel = _levelNumber + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(gameL10n(context).gameUiSpotTheDifference),
        actions: [
          IconButton(
            key: const ValueKey('difference-zoom'),
            tooltip: _zoomed
                ? gameL10n(context).gameUiResetZoom
                : gameL10n(context).gameUiZoomBothPictures,
            onPressed: _busy || !_picturesReady || _loadError
                ? null
                : _toggleZoom,
            icon: Icon(
              _zoomed ? Icons.zoom_out_rounded : Icons.zoom_in_rounded,
            ),
          ),
          IconButton(
            key: const ValueKey('difference-hint'),
            tooltip: gameL10n(context).gameUiHintPointsPerHint(
              (SpotDifferenceService.hintPenalty).toString(),
            ),
            onPressed: _busy || !_picturesReady || _loadError || _levelComplete
                ? null
                : _useHint,
            icon: const Icon(Icons.lightbulb_outline_rounded),
          ),
          IconButton(
            tooltip: gameL10n(context).gameUiChooseLevel,
            onPressed: _busy || _loadError ? null : _chooseLevel,
            icon: const Icon(Icons.grid_view_rounded),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _loadError
          ? Center(
              child: TextButton(
                onPressed: _loadProgress,
                child: Text(gameL10n(context).gameUiCouldNotLoadProgressRetry),
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
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
                                    gameL10n(context).gameUiLevel01cef48(
                                      (_levelNumber).toString(),
                                      (SpotDifferenceService.levelCount)
                                          .toString(),
                                    ),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                  Text(_levelTitle(context)),
                                ],
                              ),
                            ),
                            Text(
                              '${_found.length} / ${_level.differences.length}',
                              key: const ValueKey('difference-progress'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        LinearProgressIndicator(
                          value: _found.length / _level.differences.length,
                          minHeight: 8,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _levelComplete
                              ? gameL10n(context).gameUiAllDifferencesFound
                              : gameL10n(
                                  context,
                                ).gameUiFindFiveDifferencesTapEachOneInEitherPicture(
                                  _level.differences.length,
                                ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 14),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            if (constraints.maxWidth >= 640) {
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
                            for (final (index, spot)
                                in _level.differences.indexed)
                              CircleAvatar(
                                key: ValueKey('difference-marker-${index + 1}'),
                                radius: 15,
                                child: _found.contains(spot.feature)
                                    ? const Icon(Icons.check_rounded, size: 18)
                                    : Text('${index + 1}'),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          gameL10n(context).gameUiMissesHintsPtsLevelsComplete(
                            (_misses).toString(),
                            (_hintsUsed).toString(),
                            (_hintsUsed * SpotDifferenceService.hintPenalty)
                                .toString(),
                            (_completedLevels.length).toString(),
                          ),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
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
                              onPressed: _busy
                                  ? null
                                  : () => _startLevel(nextLevel),
                              icon: const Icon(Icons.arrow_forward_rounded),
                              label: Text(
                                gameL10n(context).gameUiNextLevel50934e0(
                                  (nextLevel).toString(),
                                ),
                              ),
                            ),
                          ),
                        ],
                        if (_levelComplete &&
                            _completedLevels.length ==
                                SpotDifferenceService.levelCount)
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Text(
                              gameL10n(context).gameUiYouCompletedEveryPicture,
                              textAlign: TextAlign.center,
                            ),
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

class _DifferenceOverlay extends CustomPainter {
  const _DifferenceOverlay({
    required this.level,
    required this.right,
    required this.found,
    required this.hinted,
  });

  final SpotDifferenceLevel level;
  final bool right;
  final Set<DifferenceFeature> found;
  final DifferenceFeature? hinted;

  @override
  void paint(Canvas canvas, Size size) {
    for (final spot in level.differences) {
      if (!found.contains(spot.feature) && hinted != spot.feature) continue;
      final position = right ? spot.right : spot.left;
      final rect = Rect.fromCenter(
        center: Offset(position.dx * size.width, position.dy * size.height),
        width: spot.radius.width * 2 * size.width,
        height: spot.radius.height * 2 * size.height,
      );
      canvas.drawOval(
        rect,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5,
      );
      canvas.drawOval(
        rect,
        Paint()
          ..color = found.contains(spot.feature)
              ? Colors.green.shade800
              : Colors.orange.shade800
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3,
      );
    }
  }

  @override
  bool shouldRepaint(_DifferenceOverlay old) =>
      old.level != level ||
      old.right != right ||
      old.found != found ||
      old.hinted != hinted;
}
