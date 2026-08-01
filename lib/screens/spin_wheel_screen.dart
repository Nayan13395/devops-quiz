import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class SpinWheelScreen extends StatefulWidget {
  const SpinWheelScreen({super.key});

  @override
  State<SpinWheelScreen> createState() =>
      _SpinWheelScreenState();
}

class _SpinWheelScreenState
    extends State<SpinWheelScreen>
    with SingleTickerProviderStateMixin {
  static const String _lastSpinKey =
      'spin_wheel_last_spin_date';

  final Random _random = Random();

  // Rewards on the wheel.
  final List<int> rewards = [
    10,
    20,
    50,
    100,
    200,
    500,
    750,
    1000,
  ];

  bool canSpin = false;
  bool loading = true;
  bool spinning = false;

  int? lastReward;

  late final AnimationController
      _animationController;

  late Animation<double> _rotationAnimation;

  double _currentRotation = 0;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4,
      ),
    );

    _rotationAnimation =
        AlwaysStoppedAnimation(
      _currentRotation,
    );

    _checkDailySpin();
  }

  // =========================================================
  // CHECK DAILY SPIN
  // =========================================================

  Future<void> _checkDailySpin() async {
    final prefs =
        await SharedPreferences.getInstance();

    final lastSpin =
        prefs.getString(
      _lastSpinKey,
    );

    final today =
        _dateKey(DateTime.now());

    if (!mounted) return;

    setState(() {
      canSpin =
          lastSpin != today;

      loading = false;
    });
  }

  // =========================================================
  // SPIN
  // =========================================================

  Future<void> _spin() async {
    if (!canSpin ||
        spinning) {
      return;
    }

    setState(() {
      spinning = true;
      lastReward = null;
    });

    final int selectedIndex =
        _random.nextInt(
      rewards.length,
    );

    final int reward =
        rewards[selectedIndex];

    final double sectionAngle =
        (2 * pi) / rewards.length;

    // Pointer is at the top.
    //
    // Add several complete rotations and then
    // position the selected segment under it.

    final double targetSegment =
        (2 * pi) -
            (selectedIndex *
                sectionAngle) -
            (sectionAngle / 2);

    final double extraRotations =
        (5 + _random.nextInt(3)) *
            2 *
            pi;

    final double targetRotation =
        _currentRotation +
            extraRotations +
            targetSegment;

    _rotationAnimation =
        Tween<double>(
      begin: _currentRotation,
      end: targetRotation,
    ).animate(
      CurvedAnimation(
        parent:
            _animationController,
        curve:
            Curves.easeOutCubic,
      ),
    );

    _animationController.reset();

    await _animationController.forward();

    _currentRotation =
        targetRotation %
            (2 * pi);

    // Add points.
    await PointService.addPoints(
      reward,
    );

    // Save today's spin.
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastSpinKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    if (!mounted) return;

    setState(() {
      spinning = false;
      canSpin = false;
      lastReward = reward;
    });

    _showRewardDialog(
      reward,
    );
  }

  // =========================================================
  // REWARD DIALOG
  // =========================================================

  void _showRewardDialog(
    int reward,
  ) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        return AlertDialog(
          icon: const Text(
            '🎉',
            style: TextStyle(
              fontSize: 55,
            ),
          ),

          title: const Text(
            'Congratulations!',
            textAlign:
                TextAlign.center,
          ),

          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              const Text(
                'You won',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                '⭐ +$reward',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight:
                      FontWeight.bold,
                  color: Theme.of(
                    context,
                  )
                      .colorScheme
                      .primary,
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              const Text(
                'POINTS',
                style: TextStyle(
                  fontWeight:
                      FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              const Text(
                'Come back tomorrow for another spin!',
                textAlign:
                    TextAlign.center,
              ),
            ],
          ),

          actionsAlignment:
              MainAxisAlignment.center,

          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                );
              },
              child: const Text(
                'Awesome!',
              ),
            ),
          ],
        );
      },
    );
  }

  // =========================================================
  // DATE KEY
  // =========================================================

  String _dateKey(
    DateTime date,
  ) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // =========================================================
  // UI
  // =========================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🎡 Spin Wheel',
        ),
      ),

      body: loading
          ? const Center(
              child:
                  CircularProgressIndicator(),
            )
          : SafeArea(
              child:
                  SingleChildScrollView(
                padding:
                    const EdgeInsets.all(
                  20,
                ),

                child: Center(
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(
                      maxWidth: 500,
                    ),

                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),

                        const Text(
                          'Daily Spin',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        Text(
                          canSpin
                              ? 'Spin the wheel and win bonus points!'
                              : 'You have already used today\'s spin.',

                          textAlign:
                              TextAlign
                                  .center,

                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(
                              context,
                            )
                                .colorScheme
                                .onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // =========================
                        // POINTER
                        // =========================

                        Icon(
                          Icons
                              .arrow_drop_down,
                          size: 55,
                          color: Theme.of(
                            context,
                          )
                              .colorScheme
                              .primary,
                        ),

                        Transform.translate(
                          offset:
                              const Offset(
                            0,
                            -15,
                          ),

                          child:
                              AnimatedBuilder(
                            animation:
                                _animationController,

                            builder: (
                              context,
                              child,
                            ) {
                              return Transform
                                  .rotate(
                                angle:
                                    _rotationAnimation
                                        .value,

                                child:
                                    child,
                              );
                            },

                            child:
                                _Wheel(
                              rewards:
                                  rewards,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        // =========================
                        // SPIN BUTTON
                        // =========================

                        SizedBox(
                          width:
                              double.infinity,
                          height: 55,

                          child:
                              ElevatedButton.icon(
                            onPressed:
                                canSpin &&
                                        !spinning
                                    ? _spin
                                    : null,

                            icon: spinning
                                ? const SizedBox(
                                    width:
                                        22,
                                    height:
                                        22,
                                    child:
                                        CircularProgressIndicator(
                                      strokeWidth:
                                          2,
                                    ),
                                  )
                                : const Icon(
                                    Icons
                                        .casino_outlined,
                                  ),

                            label: Text(
                              spinning
                                  ? 'Spinning...'
                                  : canSpin
                                      ? 'SPIN NOW'
                                      : 'COME BACK TOMORROW',

                              style:
                                  const TextStyle(
                                fontSize:
                                    17,
                                fontWeight:
                                    FontWeight
                                        .bold,
                              ),
                            ),
                          ),
                        ),

                        if (lastReward !=
                            null) ...[
                          const SizedBox(
                            height: 20,
                          ),

                          Text(
                            'Today you won ⭐ $lastReward points!',
                            textAlign:
                                TextAlign
                                    .center,
                            style:
                                const TextStyle(
                              fontSize: 17,
                              fontWeight:
                                  FontWeight
                                      .bold,
                            ),
                          ),
                        ],

                        const SizedBox(
                          height: 20,
                        ),

                        const Text(
                          'One free spin every day',
                          style: TextStyle(
                            fontSize: 13,
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

// ===========================================================
// WHEEL
// ===========================================================

class _Wheel extends StatelessWidget {
  final List<int> rewards;

  const _Wheel({
    required this.rewards,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: 300,
      height: 300,

      child: CustomPaint(
        painter: _WheelPainter(
          rewards: rewards,
          primaryColor:
              Theme.of(context)
                  .colorScheme
                  .primary,
          secondaryColor:
              Theme.of(context)
                  .colorScheme
                  .secondaryContainer,
          surfaceColor:
              Theme.of(context)
                  .colorScheme
                  .surface,
        ),
      ),
    );
  }
}

// ===========================================================
// WHEEL PAINTER
// ===========================================================

class _WheelPainter
    extends CustomPainter {
  final List<int> rewards;

  final Color primaryColor;
  final Color secondaryColor;
  final Color surfaceColor;

  _WheelPainter({
    required this.rewards,
    required this.primaryColor,
    required this.secondaryColor,
    required this.surfaceColor,
  });

  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius =
        size.width / 2;

    final sectionAngle =
        (2 * pi) /
            rewards.length;

    final rect =
        Rect.fromCircle(
      center: center,
      radius: radius,
    );

    for (int i = 0;
        i < rewards.length;
        i++) {
      final paint =
          Paint()
            ..style =
                PaintingStyle.fill
            ..color = i.isEven
                ? primaryColor
                : secondaryColor;

      final startAngle =
          -pi / 2 +
              (i *
                  sectionAngle);

      canvas.drawArc(
        rect,
        startAngle,
        sectionAngle,
        true,
        paint,
      );

      // Segment border
      final borderPaint =
          Paint()
            ..style =
                PaintingStyle.stroke
            ..strokeWidth = 2
            ..color =
                surfaceColor;

      canvas.drawArc(
        rect,
        startAngle,
        sectionAngle,
        true,
        borderPaint,
      );

      // ===============================
      // REWARD TEXT
      // ===============================

      final textPainter =
          TextPainter(
        text: TextSpan(
          text:
              '${rewards[i]}',

          style:
              const TextStyle(
            color:
                Colors.white,
            fontSize: 17,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        textDirection:
            TextDirection.ltr,
      );

      textPainter.layout();

      final textAngle =
          startAngle +
              (sectionAngle / 2);

      final textRadius =
          radius * 0.68;

      final position =
          Offset(
        center.dx +
            cos(textAngle) *
                textRadius,

        center.dy +
            sin(textAngle) *
                textRadius,
      );

      canvas.save();

      canvas.translate(
        position.dx,
        position.dy,
      );

      canvas.rotate(
        textAngle + pi / 2,
      );

      textPainter.paint(
        canvas,
        Offset(
          -textPainter.width /
              2,
          -textPainter.height /
              2,
        ),
      );

      canvas.restore();
    }

    // ===============================
    // CENTER
    // ===============================

    canvas.drawCircle(
      center,
      34,
      Paint()
        ..color =
            surfaceColor,
    );

    canvas.drawCircle(
      center,
      30,
      Paint()
        ..color =
            primaryColor,
    );

    final centerText =
        TextPainter(
      text: const TextSpan(
        text: 'SPIN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight:
              FontWeight.bold,
        ),
      ),
      textDirection:
          TextDirection.ltr,
    );

    centerText.layout();

    centerText.paint(
      canvas,
      Offset(
        center.dx -
            centerText.width / 2,
        center.dy -
            centerText.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(
    covariant _WheelPainter
        oldDelegate,
  ) {
    return oldDelegate
                .primaryColor !=
            primaryColor ||
        oldDelegate
                .secondaryColor !=
            secondaryColor;
  }
}