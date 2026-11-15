import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/app_tour_service.dart';

class AppTourStep {
  const AppTourStep({
    required this.target,
    required this.title,
    required this.description,
    this.prepare,
  });

  final GlobalKey target;
  final String title;
  final String description;
  final Future<void> Function()? prepare;
}

enum _TourAction { back, next, skip }

Future<void> showAppTour(
  BuildContext context,
  List<AppTourStep> steps, {
  bool replay = false,
}) async {
  if (AppTourService.active.value || steps.isEmpty) return;
  AppTourService.active.value = true;
  try {
    if (!replay && !await AppTourService.shouldShow()) return;
    for (var index = 0; index < steps.length;) {
      final step = steps[index];
      await step.prepare?.call();
      if (!context.mounted) return;
      final targetContext = step.target.currentContext;
      if (targetContext == null) {
        throw StateError('Tour target is not mounted: ${step.title}');
      }
      await Scrollable.ensureVisible(
        targetContext,
        alignment: 0.5,
        duration: const Duration(milliseconds: 250),
      );
      if (!context.mounted) return;
      final action = await showGeneralDialog<_TourAction>(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.transparent,
        transitionDuration: Duration.zero,
        pageBuilder: (context, _, _) =>
            _TourCoachmark(step: step, index: index, total: steps.length),
      );
      if (!context.mounted) return;
      if (action == null) return;
      if (action == _TourAction.skip ||
          (action == _TourAction.next && index == steps.length - 1)) {
        await AppTourService.complete();
        return;
      }
      index += action == _TourAction.back ? -1 : 1;
    }
  } catch (error, stack) {
    debugPrint('App tour failed: $error\n$stack');
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.savedDataError)),
      );
    }
  } finally {
    AppTourService.active.value = false;
  }
}

class _TourCoachmark extends StatefulWidget {
  const _TourCoachmark({
    required this.step,
    required this.index,
    required this.total,
  });

  final AppTourStep step;
  final int index;
  final int total;

  @override
  State<_TourCoachmark> createState() => _TourCoachmarkState();
}

class _TourCoachmarkState extends State<_TourCoachmark>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final step = widget.step;
    final index = widget.index;
    final total = widget.total;
    final l10n = AppLocalizations.of(context)!;
    final media = MediaQuery.of(context);
    final box = step.target.currentContext!.findRenderObject()! as RenderBox;
    final rect = (box.localToGlobal(Offset.zero) & box.size).inflate(5);
    final safeTop = media.padding.top + 12;
    final safeBottom = media.size.height - media.padding.bottom - 12;
    final below = safeBottom - rect.bottom - 12;
    final above = rect.top - safeTop - 12;
    final showBelow = below >= above;
    final cardHeight = math.max(0.0, showBelow ? below : above);
    return PopScope(
      canPop: false,
      child: Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            Positioned.fill(child: CustomPaint(painter: _TourShade(rect))),
            Positioned.fromRect(
              rect: rect,
              child: IgnorePointer(
                child: DecoratedBox(
                  key: const ValueKey('tour-highlight'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Positioned(
              top: showBelow ? rect.bottom + 12 : null,
              bottom: showBelow ? null : media.size.height - rect.top + 12,
              left: media.padding.left + 12,
              right: media.padding.right + 12,
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 480,
                    maxHeight: cardHeight,
                  ),
                  child: Card(
                    key: const ValueKey('app-tour-card'),
                    margin: EdgeInsets.zero,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            l10n.tourStep(index + 1, total),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 8),
                          Semantics(
                            header: true,
                            liveRegion: true,
                            child: Text(
                              step.title,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(step.description),
                          const SizedBox(height: 12),
                          Wrap(
                            alignment: WrapAlignment.end,
                            spacing: 8,
                            children: [
                              TextButton(
                                key: const ValueKey('tour-skip'),
                                onPressed: () =>
                                    Navigator.pop(context, _TourAction.skip),
                                child: Text(l10n.skipTour),
                              ),
                              if (index > 0)
                                TextButton(
                                  key: const ValueKey('tour-back'),
                                  onPressed: () =>
                                      Navigator.pop(context, _TourAction.back),
                                  child: Text(l10n.back),
                                ),
                              FilledButton(
                                key: const ValueKey('tour-next'),
                                onPressed: () =>
                                    Navigator.pop(context, _TourAction.next),
                                child: Text(
                                  index == total - 1
                                      ? l10n.finishTour
                                      : l10n.next,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TourShade extends CustomPainter {
  const _TourShade(this.target);

  final Rect target;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(Offset.zero & size)
      ..addRRect(RRect.fromRectAndRadius(target, const Radius.circular(12)));
    canvas.drawPath(
      path,
      Paint()..color = Colors.black.withValues(alpha: 0.75),
    );
  }

  @override
  bool shouldRepaint(_TourShade oldDelegate) => target != oldDelegate.target;
}
