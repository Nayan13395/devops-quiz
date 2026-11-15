import 'package:flutter/material.dart';

class AnimatedWelcomeGreeting extends StatefulWidget {
  const AnimatedWelcomeGreeting({
    super.key,
    this.greeting,
    required this.message,
  });

  final String? greeting;
  final String message;

  @override
  State<AnimatedWelcomeGreeting> createState() =>
      _AnimatedWelcomeGreetingState();
}

class _AnimatedWelcomeGreetingState extends State<AnimatedWelcomeGreeting>
    with TickerProviderStateMixin {
  late final AnimationController _entrance;
  late final AnimationController _shimmer;
  late final Animation<double> _nameOpacity;
  late final Animation<double> _messageOpacity;
  late final Animation<Offset> _namePosition;
  late final Animation<Offset> _messagePosition;
  bool _reduceMotion = false;
  bool _tickersEnabled = true;

  @override
  void initState() {
    super.initState();
    _entrance = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    _shimmer = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _nameOpacity = _entrance.drive(
      CurveTween(curve: const Interval(0, 0.65, curve: Curves.easeOutCubic)),
    );
    _messageOpacity = _entrance.drive(
      CurveTween(curve: const Interval(0.2, 1, curve: Curves.easeOutCubic)),
    );
    _namePosition = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(_nameOpacity);
    _messagePosition = Tween<Offset>(
      begin: const Offset(0, 0.25),
      end: Offset.zero,
    ).animate(_messageOpacity);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _reduceMotion =
        MediaQuery.disableAnimationsOf(context) ||
        MediaQuery.accessibleNavigationOf(context);
    _tickersEnabled = TickerMode.valuesOf(context).enabled;
    _syncAnimations();
  }

  @override
  void didUpdateWidget(covariant AnimatedWelcomeGreeting oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.greeting != widget.greeting ||
        oldWidget.message != widget.message) {
      _entrance.value = _reduceMotion ? 1 : 0;
      _syncAnimations();
    }
  }

  void _syncAnimations() {
    if (_reduceMotion) {
      _entrance.value = 1;
      _shimmer
        ..stop()
        ..value = 0;
    } else if (!_tickersEnabled) {
      _entrance.stop();
      _shimmer.stop();
    } else {
      if (!_entrance.isCompleted) _entrance.forward();
      if (!_shimmer.isAnimating) _shimmer.repeat();
    }
  }

  @override
  void dispose() {
    _entrance.dispose();
    _shimmer.dispose();
    super.dispose();
  }

  Widget _shimmerText(
    Widget child, {
    required Color base,
    required Color highlight,
  }) {
    if (_reduceMotion) return child;
    final direction = Directionality.of(context) == TextDirection.rtl
        ? -1.0
        : 1.0;
    return AnimatedBuilder(
      animation: _shimmer,
      child: child,
      builder: (context, child) {
        final phase = const Interval(
          0.2,
          0.8,
          curve: Curves.easeInOut,
        ).transform(_shimmer.value);
        final center = -3 + phase * 6;
        return ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment((center - 1) * direction, 0),
            end: Alignment((center + 1) * direction, 0),
            colors: [base, highlight, base],
          ).createShader(bounds),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return RepaintBoundary(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.greeting case final greeting?) ...[
            FadeTransition(
              key: const ValueKey('welcome-name-entrance'),
              opacity: _nameOpacity,
              alwaysIncludeSemantics: true,
              child: SlideTransition(
                position: _namePosition,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: colors.primary.withValues(alpha: 0.18),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        colors.primaryContainer.withValues(alpha: 0.35),
                        colors.tertiaryContainer.withValues(alpha: 0.25),
                      ],
                    ),
                  ),
                  child: _shimmerText(
                    Text(
                      greeting,
                      key: const ValueKey('welcome-name'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: colors.onSurface,
                      ),
                    ),
                    base: colors.onSurface,
                    highlight: colors.primary,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
          ],
          FadeTransition(
            key: const ValueKey('welcome-message-entrance'),
            opacity: _messageOpacity,
            alwaysIncludeSemantics: true,
            child: SlideTransition(
              position: _messagePosition,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Semantics(
                    header: true,
                    child: _shimmerText(
                      Text(
                        widget.message,
                        key: const ValueKey('welcome-message'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          height: 1.35,
                          color: colors.primary,
                        ),
                      ),
                      base: colors.primary,
                      highlight: colors.tertiary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 64,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: LinearGradient(
                        colors: [colors.primary, colors.tertiary],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
