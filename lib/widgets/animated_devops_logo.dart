import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class AnimatedDevOpsLogo extends StatefulWidget {
  const AnimatedDevOpsLogo({super.key, required this.width});

  final double width;

  static const cycleDuration = Duration(seconds: 24);
  static const originalAsset = 'assets/images/devops_logo.png';
  static const pipeAsset = 'assets/images/devops_logo_pipe.png';

  @override
  State<AnimatedDevOpsLogo> createState() => _AnimatedDevOpsLogoState();
}

class _AnimatedDevOpsLogoState extends State<AnimatedDevOpsLogo>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final AnimationController _flow;
  DevOpsLogoPainter? _painter;
  bool _loading = true;
  bool _failed = false;
  bool _reduceMotion = false;
  bool _tickersEnabled = true;
  AppLifecycleState? _lifecycle;
  AssetBundle? _bundle;
  int _loadRequest = 0;

  @override
  void initState() {
    super.initState();
    _flow = AnimationController(
      vsync: this,
      duration: AnimatedDevOpsLogo.cycleDuration,
    );
    _lifecycle = WidgetsBinding.instance.lifecycleState;
    WidgetsBinding.instance.addObserver(this);
  }

  Future<ui.Image> _decode(AssetBundle bundle, String asset) async {
    final data = await bundle.load(asset);
    final codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    );
    try {
      final image = (await codec.getNextFrame()).image;
      if (image.width != DevOpsLogoPainter.sourceSize.width ||
          image.height != DevOpsLogoPainter.sourceSize.height) {
        image.dispose();
        throw StateError('Unexpected welcome logo dimensions: $asset');
      }
      return image;
    } finally {
      codec.dispose();
    }
  }

  Future<void> _loadArtwork(AssetBundle bundle) async {
    final request = ++_loadRequest;
    ui.Image? background;
    try {
      background = await _decode(bundle, AnimatedDevOpsLogo.pipeAsset);
      if (!mounted || request != _loadRequest) return;
      final painter = DevOpsLogoPainter(background: background, phase: _flow);
      setState(() {
        _painter?.dispose();
        _painter = painter;
        _loading = false;
        _failed = false;
      });
      background = null;
      _syncAnimation();
    } catch (error, stack) {
      debugPrint('Welcome logo could not load: $error\n$stack');
      if (mounted && request == _loadRequest) {
        setState(() {
          _loading = false;
          _failed = true;
        });
        _syncAnimation();
      }
    } finally {
      background?.dispose();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduceMotion =
        MediaQuery.disableAnimationsOf(context) ||
        MediaQuery.accessibleNavigationOf(context);
    _tickersEnabled = TickerMode.valuesOf(context).enabled;
    final bundle = DefaultAssetBundle.of(context);
    if (!identical(bundle, _bundle)) {
      _bundle = bundle;
      _loading = true;
      _failed = false;
      unawaited(_loadArtwork(bundle));
    }
    _syncAnimation();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _lifecycle = state;
    _syncAnimation();
  }

  void _syncAnimation() {
    final active =
        _lifecycle == null || _lifecycle == AppLifecycleState.resumed;
    if (_loading || _failed || _reduceMotion || !_tickersEnabled || !active) {
      _flow.stop();
      if (_reduceMotion) _flow.value = 0;
    } else if (!_flow.isAnimating) {
      _flow.repeat();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _loadRequest++;
    _flow.dispose();
    _painter?.dispose();
    super.dispose();
  }

  Widget _error() => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Logo could not load.', textAlign: TextAlign.center),
        TextButton(
          key: const ValueKey('welcome-logo-retry'),
          onPressed: () {
            setState(() {
              _loading = true;
              _failed = false;
            });
            unawaited(_loadArtwork(_bundle!));
          },
          child: Text(AppLocalizations.of(context)?.retry ?? 'Retry'),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) => SizedBox(
    width: widget.width,
    child: AspectRatio(
      aspectRatio: DevOpsLogoPainter.sourceSize.aspectRatio,
      child: _failed
          ? _error()
          : _loading || _reduceMotion
          ? Image.asset(
              AnimatedDevOpsLogo.originalAsset,
              key: const ValueKey('welcome-logo-static'),
              fit: BoxFit.contain,
              semanticLabel:
                  'DevOps Quiz: ${DevOpsLogoPainter.stageNames.join(', ')}',
              errorBuilder: (context, error, stack) {
                debugPrint(
                  'Static welcome logo could not load: $error\n$stack',
                );
                return const Center(
                  child: Text(
                    'Logo could not load.',
                    textAlign: TextAlign.center,
                  ),
                );
              },
            )
          : Semantics(
              image: true,
              label: 'DevOps Quiz: ${DevOpsLogoPainter.stageNames.join(', ')}',
              excludeSemantics: true,
              child: RepaintBoundary(
                child: CustomPaint(
                  key: const ValueKey('welcome-logo-flow'),
                  painter: _painter,
                  child: const SizedBox.expand(),
                ),
              ),
            ),
    ),
  );
}

typedef _LogoGlyph = ({TextPainter text, double offset});

typedef LogoArrowGeometry = ({
  int stage,
  double start,
  double end,
  double center,
  bool rear,
});

class DevOpsLogoPainter extends CustomPainter {
  DevOpsLogoPainter({required this.background, required this.phase})
    : _words = stageNames.map(_layoutWord).toList(),
      super(repaint: phase);

  final ui.Image background;
  final Animation<double> phase;
  final List<List<_LogoGlyph>> _words;

  static const sourceSize = Size(1765, 900);
  static const pipelineWidth = 120.0;
  static const arrowDepth = 32.0;
  static const separatorGap = 6.0;
  static const stageNames = [
    'PLAN',
    'CODE',
    'BUILD',
    'TEST',
    'RELEASE',
    'DEPLOY',
    'OPERATE',
    'MONITOR',
  ];
  static final _route =
      (Path()
            ..moveTo(805, 295)
            ..cubicTo(730, 219, 686, 183, 585, 183)
            ..cubicTo(450, 183, 345, 274, 345, 415)
            ..cubicTo(345, 552, 452, 646, 585, 646)
            ..cubicTo(740, 653, 847, 470, 1041, 258)
            ..cubicTo(1100, 192, 1149, 180, 1210, 184)
            ..cubicTo(1354, 187, 1444, 282, 1444, 415)
            ..cubicTo(1444, 550, 1340, 646, 1208, 646)
            ..cubicTo(1057, 657, 951, 444, 805, 295)
            ..close())
          .computeMetrics()
          .single;
  static final _anchors = _measureAnchors();
  static final _rearCross = _measureRearCross();
  static final _pipePaint = Paint()
    ..shader = ui.Gradient.linear(
      const Offset(300, 0),
      const Offset(1460, 0),
      const [
        Color(0xFF061B68),
        Color(0xFF0C298F),
        Color(0xFF2348CE),
        Color(0xFF2245C5),
      ],
      const [0, .42, .72, 1],
    );
  static final _outlinePaint = Paint()
    ..color = const Color(0xFF041141)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  static const _centerRegions = [
    Rect.fromLTWH(490, 370, 196, 86),
    Rect.fromLTWH(1110, 370, 210, 86),
  ];

  static double _wrap(double distance) => distance % _route.length;

  static double _measureRearCross() {
    var nearest = double.infinity;
    var result = 0.0;
    for (var sample = 0; sample < 1000; sample++) {
      final distance =
          _anchors.last + sample * (_route.length - _anchors.last) / 1000;
      final point = _route.getTangentForOffset(distance)!.position;
      final error = (point - const Offset(895, 400)).distanceSquared;
      if (error < nearest) {
        nearest = error;
        result = distance;
      }
    }
    return result;
  }

  @visibleForTesting
  static double get routeLength => _route.length;

  @visibleForTesting
  static List<LogoArrowGeometry> arrowsAt(double phase) {
    final shift = (phase % 1) * _route.length;
    final arrows = <LogoArrowGeometry>[];
    for (var i = 0; i < _anchors.length; i++) {
      final prior = i == 0 ? _anchors.last - _route.length : _anchors[i - 1];
      final next = i == _anchors.length - 1 ? _route.length : _anchors[i + 1];
      final start = (prior + _anchors[i]) / 2 + shift + separatorGap / 2;
      final end =
          (_anchors[i] + next) / 2 + shift + arrowDepth - separatorGap / 2;
      arrows.add((
        stage: i,
        start: start,
        end: end,
        center: (start + end) / 2,
        rear: _wrap(_rearCross - start) <= end - start,
      ));
    }
    // Paint the returning arm first, under the forward arm and its labels.
    arrows.sort((a, b) {
      if (a.rear != b.rear) return a.rear ? -1 : 1;
      return a.stage.compareTo(b.stage);
    });
    return arrows;
  }

  static Offset _offsetPoint(double distance, double side) {
    final tangent = _route.getTangentForOffset(_wrap(distance))!;
    return tangent.position +
        Offset(-tangent.vector.dy, tangent.vector.dx) * side;
  }

  static Path _arrowPath(LogoArrowGeometry arrow) {
    const halfWidth = pipelineWidth / 2;
    final path = Path();
    final first = _offsetPoint(arrow.start, halfWidth);
    path.moveTo(first.dx, first.dy);
    final steps = math.max(
      2,
      ((arrow.end - arrow.start - arrowDepth) / 7).ceil(),
    );
    for (var i = 1; i <= steps; i++) {
      final point = _offsetPoint(
        arrow.start + (arrow.end - arrowDepth - arrow.start) * i / steps,
        halfWidth,
      );
      path.lineTo(point.dx, point.dy);
    }
    final tip = _offsetPoint(arrow.end, 0);
    path.lineTo(tip.dx, tip.dy);
    final shoulder = _offsetPoint(arrow.end - arrowDepth, -halfWidth);
    path.lineTo(shoulder.dx, shoulder.dy);
    for (var i = steps - 1; i >= 0; i--) {
      final point = _offsetPoint(
        arrow.start + (arrow.end - arrowDepth - arrow.start) * i / steps,
        -halfWidth,
      );
      path.lineTo(point.dx, point.dy);
    }
    final notch = _offsetPoint(arrow.start + arrowDepth, 0);
    path.lineTo(notch.dx, notch.dy);
    return path..close();
  }

  static List<double> _measureAnchors() {
    const points = [
      Offset(805, 295),
      Offset(585, 183),
      Offset(345, 415),
      Offset(585, 646),
      Offset(924, 394),
      Offset(1210, 184),
      Offset(1444, 415),
      Offset(1208, 646),
    ];
    final nearest = List.filled(points.length, double.infinity);
    final distances = List.filled(points.length, 0.0);
    for (var sample = 0; sample < 4000; sample++) {
      final distance = sample * _route.length / 4000;
      final position = _route.getTangentForOffset(distance)!.position;
      for (var index = 0; index < points.length; index++) {
        final error = (position - points[index]).distanceSquared;
        if (error < nearest[index]) {
          nearest[index] = error;
          distances[index] = distance;
        }
      }
    }
    return distances;
  }

  static List<_LogoGlyph> _layoutWord(String word) {
    final letters = [
      for (final letter in word.split(''))
        TextPainter(
          text: TextSpan(
            text: letter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 37,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
            ),
          ),
          textDirection: TextDirection.ltr,
          textScaler: TextScaler.noScaling,
        )..layout(),
    ];
    final width =
        letters.fold(0.0, (total, letter) => total + letter.width) +
        (letters.length - 1) * 0.7;
    var offset = -width / 2;
    final glyphs = <_LogoGlyph>[];
    for (final letter in letters) {
      glyphs.add((text: letter, offset: offset + letter.width / 2));
      offset += letter.width + 0.7;
    }
    return glyphs;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(
      size.width / sourceSize.width,
      size.height / sourceSize.height,
    );
    for (final arrow in arrowsAt(phase.value)) {
      final path = _arrowPath(arrow);
      canvas.drawPath(path, _pipePaint);
      canvas.drawPath(path, _outlinePaint);
      final distance = _wrap(arrow.center);
      final reverse = _route.getTangentForOffset(distance)!.vector.dx < 0;
      canvas.save();
      canvas.clipPath(path);
      for (final glyph in _words[arrow.stage]) {
        final offset =
            (distance + (reverse ? -glyph.offset : glyph.offset)) %
            _route.length;
        final tangent = _route.getTangentForOffset(offset)!;
        canvas.save();
        canvas.translate(tangent.position.dx, tangent.position.dy);
        canvas.rotate(
          math.atan2(tangent.vector.dy, tangent.vector.dx) +
              (reverse ? math.pi : 0),
        );
        glyph.text.paint(
          canvas,
          Offset(-glyph.text.width / 2, -glyph.text.height / 2),
        );
        canvas.restore();
      }
      canvas.restore();
    }
    for (final region in _centerRegions) {
      canvas.drawImageRect(
        background,
        region,
        region,
        Paint()..filterQuality = FilterQuality.high,
      );
    }
    canvas.restore();
  }

  void dispose() {
    for (final word in _words) {
      for (final glyph in word) {
        glyph.text.dispose();
      }
    }
    background.dispose();
  }

  @override
  bool shouldRepaint(covariant DevOpsLogoPainter oldDelegate) =>
      background != oldDelegate.background || phase != oldDelegate.phase;
}
