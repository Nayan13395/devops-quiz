import 'dart:async';
import 'dart:ui' as ui;

import 'package:devops_quiz/widgets/animated_devops_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const _flowKey = ValueKey('welcome-logo-flow');
const _staticKey = ValueKey('welcome-logo-static');
const _captureKey = ValueKey('logo-capture');
const _retryKey = ValueKey('welcome-logo-retry');

class _LogoBundle extends CachingAssetBundle {
  _LogoBundle(this.data);

  final Map<String, ByteData> data;
  String? missing;
  Completer<ByteData>? pending;
  bool pipeRequested = false;

  @override
  Future<ByteData> load(String key) async {
    if (key == AnimatedDevOpsLogo.pipeAsset) pipeRequested = true;
    if (key == missing) throw FlutterError('Test asset unavailable: $key');
    if (key == AnimatedDevOpsLogo.pipeAsset && pending != null) {
      return pending!.future;
    }
    return data[key] ?? await rootBundle.load(key);
  }
}

Widget _app({
  double width = 420,
  bool disableAnimations = false,
  bool accessibleNavigation = false,
  bool tickerEnabled = true,
  double textScale = 1,
  TextDirection direction = TextDirection.ltr,
  Brightness brightness = Brightness.light,
  AssetBundle? bundle,
}) => MaterialApp(
  theme: ThemeData(brightness: brightness),
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context).copyWith(
      disableAnimations: disableAnimations,
      accessibleNavigation: accessibleNavigation,
      textScaler: TextScaler.linear(textScale),
    ),
    child: TickerMode(
      enabled: tickerEnabled,
      child: Directionality(textDirection: direction, child: child!),
    ),
  ),
  home: DefaultAssetBundle(
    bundle: bundle ?? rootBundle,
    child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: RepaintBoundary(
            key: _captureKey,
            child: AnimatedDevOpsLogo(width: width),
          ),
        ),
      ),
    ),
  ),
);

DevOpsLogoPainter _painter(WidgetTester tester) =>
    tester.widget<CustomPaint>(find.byKey(_flowKey)).painter!
        as DevOpsLogoPainter;

Future<void> _pumpArtwork(WidgetTester tester) async {
  await tester.runAsync(() async {
    final deadline = DateTime.now().add(const Duration(seconds: 5));
    do {
      await tester.pump();
      if (find.byKey(_flowKey).evaluate().isNotEmpty ||
          find.byKey(_retryKey).evaluate().isNotEmpty) {
        return;
      }
      await Future<void>.delayed(const Duration(milliseconds: 10));
    } while (DateTime.now().isBefore(deadline));
    throw StateError('Welcome logo did not finish loading');
  });
  await tester.pump();
}

Future<ui.Image> _decode(String asset) async {
  final bytes = await rootBundle.load(asset);
  final codec = await ui.instantiateImageCodec(
    bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes),
  );
  try {
    return (await codec.getNextFrame()).image;
  } finally {
    codec.dispose();
  }
}

Future<Uint8List> _render(void Function(Canvas) draw) async {
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  draw(canvas);
  final picture = recorder.endRecording();
  final image = await picture.toImage(1765, 900);
  try {
    final data = (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  } finally {
    image.dispose();
    picture.dispose();
  }
}

Future<Uint8List> _capture(
  WidgetTester tester,
) async => (await tester.runAsync(() async {
  final boundary = tester.renderObject<RenderRepaintBoundary>(
    find.byKey(_captureKey),
  );
  final image = await boundary.toImage();
  try {
    final bytes = (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
  } finally {
    image.dispose();
  }
}))!;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'approved full-width arrows have thin gaps and centered labels throughout the loop',
    () {
      expect(DevOpsLogoPainter.pipelineWidth, 120);
      expect(DevOpsLogoPainter.separatorGap, 6);
      expect(DevOpsLogoPainter.arrowDepth, 32);
      final length = DevOpsLogoPainter.routeLength;
      for (var sample = 0; sample <= 48; sample++) {
        final arrows = DevOpsLogoPainter.arrowsAt(sample / 48);
        expect(arrows, hasLength(8));
        expect(arrows.first.rear, isTrue);
        arrows.sort((a, b) => a.stage.compareTo(b.stage));
        for (var index = 0; index < arrows.length; index++) {
          final arrow = arrows[index];
          final next = arrows[(index + 1) % arrows.length];
          final left =
              arrow.center - (arrow.start + DevOpsLogoPainter.arrowDepth / 2);
          final right =
              (arrow.end - DevOpsLogoPainter.arrowDepth / 2) - arrow.center;
          expect(
            left,
            closeTo(right, .000001),
            reason: 'Centered stage $index at $sample',
          );
          final gap =
              (next.start + DevOpsLogoPainter.arrowDepth - arrow.end) % length;
          expect(
            gap,
            closeTo(6, .000001),
            reason: 'Thin separator $index at $sample',
          );
          expect(left, greaterThan(80), reason: 'Room for stage label');
        }
      }
      expect(DevOpsLogoPainter.arrowsAt(1), DevOpsLogoPainter.arrowsAt(0));
      final initial = DevOpsLogoPainter.arrowsAt(0)
        ..sort((a, b) => a.stage.compareTo(b.stage));
      final advanced = DevOpsLogoPainter.arrowsAt(.25)
        ..sort((a, b) => a.stage.compareTo(b.stage));
      for (var index = 0; index < initial.length; index++) {
        expect(
          advanced[index].center - initial[index].center,
          closeTo(length / 4, .000001),
        );
        expect(
          advanced[index].end - initial[index].end,
          closeTo(length / 4, .000001),
        );
      }
    },
  );

  late Map<String, ByteData> fixtureData;
  setUpAll(() async {
    fixtureData = {
      for (final asset in [
        AnimatedDevOpsLogo.originalAsset,
        AnimatedDevOpsLogo.pipeAsset,
      ])
        asset: await rootBundle.load(asset),
    };
  });

  test(
    'original logo and center-label layer are bundled at the original resolution',
    () async {
      final assets = await AssetManifest.loadFromAssetBundle(rootBundle);
      for (final path in [
        AnimatedDevOpsLogo.originalAsset,
        AnimatedDevOpsLogo.pipeAsset,
      ]) {
        expect(assets.listAssets(), contains(path));
        final image = await _decode(path);
        expect(image.width, 1765);
        expect(image.height, 900);
        image.dispose();
      }
      expect(AnimatedDevOpsLogo.cycleDuration, const Duration(seconds: 24));
      expect(DevOpsLogoPainter.stageNames, [
        'PLAN',
        'CODE',
        'BUILD',
        'TEST',
        'RELEASE',
        'DEPLOY',
        'OPERATE',
        'MONITOR',
      ]);
    },
  );

  test(
    'arrows and text move while DEV/OPS and outer background stay fixed',
    () async {
      final background = await _decode(AnimatedDevOpsLogo.pipeAsset);
      final phase = AnimationController(vsync: const TestVSync());
      final painter = DevOpsLogoPainter(background: background, phase: phase);
      addTearDown(() {
        phase.dispose();
        painter.dispose();
      });
      final base = await _render(
        (canvas) => canvas.drawImage(
          background,
          Offset.zero,
          Paint()..filterQuality = FilterQuality.high,
        ),
      );
      Uint8List? first;
      for (final value in [
        0.0,
        0.125,
        0.25,
        0.375,
        0.5,
        0.625,
        0.75,
        0.875,
        1.0,
      ]) {
        phase.value = value;
        final pixels = await _render(
          (canvas) => painter.paint(canvas, DevOpsLogoPainter.sourceSize),
        );
        var changed = 0;
        var outside = 0;
        for (var index = 0; index < pixels.length; index += 4) {
          final different =
              pixels[index] != base[index] ||
              pixels[index + 1] != base[index + 1] ||
              pixels[index + 2] != base[index + 2] ||
              pixels[index + 3] != base[index + 3];
          if (different) {
            changed++;
            final x = (index ~/ 4) % 1765;
            final y = (index ~/ 4) ~/ 1765;
            final point = Offset(x.toDouble(), y.toDouble());
            if (const Rect.fromLTWH(490, 370, 196, 86).contains(point) ||
                const Rect.fromLTWH(1110, 370, 210, 86).contains(point) ||
                !const Rect.fromLTRB(240, 90, 1560, 740).contains(point)) {
              outside++;
            }
          }
        }
        expect(
          changed,
          greaterThan(1000),
          reason: 'Visible redrawn arrows and stage text at $value',
        );
        expect(
          outside,
          0,
          reason: 'Unchanged central labels and outer background at $value',
        );
        if (value == 0) {
          first = pixels;
          final filled = [
            for (var x = 250; x < 440; x++)
              if (pixels[(415 * 1765 + x) * 4 + 3] > 200) x,
          ];
          expect(
            filled.last - filled.first + 1,
            inInclusiveRange(119, 123),
            reason: 'Rendered pipe retains the approved 120-pixel width',
          );
          const regions = [
            Rect.fromLTRB(510, 164, 645, 213),
            Rect.fromLTRB(742, 241, 857, 353),
            Rect.fromLTRB(319, 341, 379, 487),
            Rect.fromLTRB(547, 611, 668, 672),
            Rect.fromLTRB(848, 302, 1008, 464),
            Rect.fromLTRB(1127, 160, 1310, 216),
            Rect.fromLTRB(1394, 319, 1478, 527),
            Rect.fromLTRB(1077, 586, 1300, 672),
          ];
          for (final region in regions) {
            var visible = 0;
            for (var y = region.top.toInt(); y < region.bottom; y++) {
              for (var x = region.left.toInt(); x < region.right; x++) {
                final offset = (y * 1765 + x) * 4;
                if (pixels[offset] != base[offset]) visible++;
              }
            }
            expect(
              visible,
              greaterThan(20),
              reason: 'Stage text exists near $region',
            );
          }
        } else if (value == 1) {
          expect(
            pixels,
            orderedEquals(first!),
            reason: 'Seamless full circuit',
          );
        } else {
          var movingEdges = 0;
          for (var i = 3; i < pixels.length; i += 4) {
            if ((pixels[i] > 200) != (first![i] > 200)) movingEdges++;
          }
          expect(
            movingEdges,
            greaterThan(500),
            reason: 'Arrow silhouettes move, not just their white lettering',
          );
          expect(
            pixels,
            isNot(orderedEquals(first!)),
            reason: 'Arrows and text move at $value',
          );
        }
      }
    },
  );

  testWidgets(
    'arrows and labels move over 24 seconds without scaling the logo',
    (tester) async {
      await tester.pumpWidget(_app());
      await _pumpArtwork(tester);
      expect(find.byKey(_flowKey), findsOneWidget);
      final painter = _painter(tester);
      final initial = painter.phase.value;
      final rect = tester.getRect(find.byType(AnimatedDevOpsLogo));
      final first = await _capture(tester);
      await tester.pump(const Duration(seconds: 4));
      expect(painter.phase.value, closeTo((initial + 4 / 24) % 1, 0.001));
      final later = await _capture(tester);
      expect(later, isNot(orderedEquals(first)));
      expect(tester.getRect(find.byType(AnimatedDevOpsLogo)), rect);
      expect(
        find.descendant(
          of: find.byType(AnimatedDevOpsLogo),
          matching: find.byType(ScaleTransition),
        ),
        findsNothing,
      );
      await tester.pump(const Duration(seconds: 20));
      expect(painter.phase.value, closeTo(initial, 0.001));
      await tester.pumpWidget(const SizedBox());
      expect(tester.binding.transientCallbackCount, 0);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'reduced motion and accessible navigation use the original static logo',
    (tester) async {
      for (final reduce in [true, false]) {
        await tester.pumpWidget(_app());
        await _pumpArtwork(tester);
        final phase = _painter(tester).phase;
        await tester.pump(const Duration(seconds: 2));
        await tester.pumpWidget(
          _app(disableAnimations: reduce, accessibleNavigation: !reduce),
        );
        await tester.pumpAndSettle();
        expect(find.byKey(_staticKey), findsOneWidget);
        expect(find.byKey(_flowKey), findsNothing);
        expect(
          tester.widget<Image>(find.byKey(_staticKey)).image,
          const AssetImage(AnimatedDevOpsLogo.originalAsset),
        );
        expect(phase.value, 0);
        expect(tester.binding.transientCallbackCount, 0);
        final pixels = await _capture(tester);
        await tester.pump(const Duration(seconds: 10));
        expect(await _capture(tester), orderedEquals(pixels));
        await tester.pumpWidget(_app());
        await tester.pump(const Duration(seconds: 2));
        expect(find.byKey(_flowKey), findsOneWidget);
        expect(phase.value, greaterThan(0));
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets(
    'route ticker mode and backgrounding pause and resume from the same point',
    (tester) async {
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      addTearDown(
        () => tester.binding.handleAppLifecycleStateChanged(
          AppLifecycleState.resumed,
        ),
      );
      await tester.pumpWidget(_app());
      await _pumpArtwork(tester);
      final phase = _painter(tester).phase;
      await tester.pump(const Duration(seconds: 4));
      final initial = phase.value;
      await tester.pumpWidget(_app(tickerEnabled: false));
      await tester.pump(const Duration(seconds: 12));
      expect(phase.value, initial);
      expect(tester.binding.transientCallbackCount, 0);
      await tester.pumpWidget(_app());
      await tester.pump(const Duration(seconds: 2));
      expect(phase.value, closeTo(initial + 2 / 24, 0.001));
      for (final state in [
        AppLifecycleState.inactive,
        AppLifecycleState.hidden,
        AppLifecycleState.paused,
      ]) {
        final stopped = phase.value;
        tester.binding.handleAppLifecycleStateChanged(state);
        await tester.pump(const Duration(seconds: 6));
        expect(phase.value, stopped);
        expect(tester.binding.transientCallbackCount, 0);
      }
      final stopped = phase.value;
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      expect(phase.value, closeTo(stopped + 1 / 24, 0.001));
      await tester.pumpWidget(const SizedBox());
      expect(tester.binding.transientCallbackCount, 0);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'light, dark, RTL, landscape and large text keep the same logo proportions',
    (tester) async {
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      tester.view.devicePixelRatio = 1;
      for (final viewport in [const Size(320, 568), const Size(844, 390)]) {
        tester.view.physicalSize = viewport;
        for (final brightness in Brightness.values) {
          for (final direction in TextDirection.values) {
            await tester.pumpWidget(
              _app(
                width: viewport.width * .75,
                brightness: brightness,
                direction: direction,
                textScale: 2.5,
              ),
            );
            await _pumpArtwork(tester);
            await tester.pump(const Duration(milliseconds: 250));
            final rect = tester.getRect(find.byType(AnimatedDevOpsLogo));
            expect(rect.width, lessThanOrEqualTo(viewport.width - 48));
            expect(rect.size.aspectRatio, closeTo(1765 / 900, 0.001));
            expect(_painter(tester).phase.value, greaterThan(0));
            expect(tester.takeException(), isNull);
            await tester.pumpWidget(const SizedBox());
          }
        }
      }
    },
  );

  testWidgets('one stable accessible label names all eight stages', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    try {
      final label = 'DevOps Quiz: ${DevOpsLogoPainter.stageNames.join(', ')}';
      await tester.pumpWidget(_app());
      await _pumpArtwork(tester);
      expect(find.bySemanticsLabel(label), findsOneWidget);
      await tester.pump(const Duration(seconds: 5));
      expect(find.bySemanticsLabel(label), findsOneWidget);
      await tester.pumpWidget(_app(disableAnimations: true));
      await tester.pumpAndSettle();
      expect(find.bySemanticsLabel(label), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    } finally {
      semantics.dispose();
    }
  });

  testWidgets('missing center-label asset shows an error and supports retry', (
    tester,
  ) async {
    for (final missing in [AnimatedDevOpsLogo.pipeAsset]) {
      final bundle = _LogoBundle(fixtureData)..missing = missing;
      await tester.pumpWidget(_app(bundle: bundle));
      await _pumpArtwork(tester);
      expect(find.text('Logo could not load.'), findsOneWidget);
      expect(find.byKey(_flowKey), findsNothing);
      expect(tester.binding.transientCallbackCount, 0);
      bundle.missing = null;
      await tester.tap(find.byKey(_retryKey));
      await _pumpArtwork(tester);
      expect(find.byKey(_flowKey), findsOneWidget);
      expect(find.byKey(_retryKey), findsNothing);
      await tester.pumpWidget(const SizedBox());
      expect(tester.takeException(), isNull);
    }
  });

  testWidgets(
    'a stale asset load cannot replace the current logo or restart its flow',
    (tester) async {
      final slow = _LogoBundle(fixtureData)..pending = Completer<ByteData>();
      await tester.pumpWidget(_app(bundle: slow));
      expect(find.byKey(_staticKey), findsOneWidget);
      await tester.pumpWidget(_app(bundle: _LogoBundle(fixtureData)));
      await _pumpArtwork(tester);
      final current = _painter(tester);
      await tester.pump(const Duration(seconds: 2));
      final progress = current.phase.value;
      slow.pending!.complete(fixtureData[AnimatedDevOpsLogo.pipeAsset]);
      await tester.runAsync(() async {
        for (var attempt = 0; attempt < 100; attempt++) {
          await tester.pump();
          if (slow.pipeRequested) break;
          await Future<void>.delayed(const Duration(milliseconds: 10));
        }
        expect(slow.pipeRequested, isTrue);
        await Future<void>.delayed(const Duration(milliseconds: 100));
      });
      await tester.pump();
      expect(_painter(tester), same(current));
      expect(current.phase.value, progress);
      expect(find.byKey(_retryKey), findsNothing);
      await tester.pumpWidget(const SizedBox());
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'leaving during asset loading does not set state or leak tickers',
    (tester) async {
      final bundle = _LogoBundle(fixtureData)..pending = Completer<ByteData>();
      await tester.pumpWidget(_app(bundle: bundle));
      expect(find.byKey(_staticKey), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      bundle.pending!.complete(fixtureData[AnimatedDevOpsLogo.pipeAsset]);
      await tester.runAsync(() async {
        for (var attempt = 0; attempt < 100; attempt++) {
          await tester.pump();
          if (bundle.pipeRequested) break;
          await Future<void>.delayed(const Duration(milliseconds: 10));
        }
        expect(bundle.pipeRequested, isTrue);
        await Future<void>.delayed(const Duration(milliseconds: 100));
      });
      await tester.pump();
      expect(tester.binding.transientCallbackCount, 0);
      expect(tester.takeException(), isNull);
    },
  );
}
