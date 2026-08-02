import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'reward_question_screen.dart';

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

  // =========================================================
  // WHEEL REWARDS
  // =========================================================

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

  // =========================================================
  // INIT
  // =========================================================

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
        _dateKey(
      DateTime.now(),
    );

    if (!mounted) {
      return;
    }

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

    // =======================================================
    // SELECT RANDOM REWARD
    // =======================================================

    final int selectedIndex =
        _random.nextInt(
      rewards.length,
    );

    final int reward =
        rewards[selectedIndex];

    final double sectionAngle =
        (2 * pi) /
            rewards.length;

    // Pointer is at the top.
    //
    // Rotate the wheel several times and
    // stop the selected section under the pointer.

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

    // =======================================================
    // SAVE DAILY SPIN
    //
    // IMPORTANT:
    // We mark the spin as used here.
    // Points are NOT added here.
    // User must answer the question correctly.
    // =======================================================

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastSpinKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      spinning = false;
      canSpin = false;
      lastReward = reward;
    });

    // =======================================================
    // SHOW REWARD + QUESTION CHALLENGE
    // =======================================================

    await _showChallengeDialog(
      reward,
    );
  }

  // =========================================================
  // CHALLENGE DIALOG
  // =========================================================

  Future<void> _showChallengeDialog(
    int reward,
  ) async {
    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        return AlertDialog(
          icon: const Text(
            '🎡',
            style: TextStyle(
              fontSize: 55,
            ),
          ),

          title: const Text(
            'Wheel Stopped!',
            textAlign:
                TextAlign.center,
          ),

          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              const Text(
                'Your reward is',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                '⭐ $reward',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      Theme.of(context)
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
                  fontSize: 15,
                  fontWeight:
                      FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                width:
                    double.infinity,
                padding:
                    const EdgeInsets.all(
                  14,
                ),
                decoration:
                    BoxDecoration(
                  color:
                      Theme.of(context)
                          .colorScheme
                          .primaryContainer,
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),
                ),
                child: const Text(
                  'Answer 1 quiz question correctly to claim this reward.',
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                'Wrong answer = reward lost.',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color:
                      Theme.of(context)
                          .colorScheme
                          .onSurfaceVariant,
                ),
              ),
            ],
          ),

          actions: [
            SizedBox(
              width:
                  double.infinity,
              child:
                  ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(
                    dialogContext,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          RewardQuestionScreen(
                        reward:
                            reward,
                        gameName:
                            'Spin Wheel',
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.quiz_outlined,
                ),
                label: const Text(
                  'Answer Question',
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
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

  // =========================================================
  // DISPOSE
  // =========================================================

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
                  child:
                      ConstrainedBox(
                    constraints:
                        const BoxConstraints(
                      maxWidth: 500,
                    ),

                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),

                        // =====================================
                        // TITLE
                        // =====================================

                        const Text(
                          'Daily Spin',
                          style:
                              TextStyle(
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
                              ? 'Spin the wheel, then answer a question to claim your reward!'
                              : 'You have already used today\'s spin.',

                          textAlign:
                              TextAlign
                                  .center,

                          style:
                              TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(
                              context,
                            )
                                    .colorScheme
                                    .onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // =====================================
                        // POINTER
                        // =====================================

                        Icon(
                          Icons
                              .arrow_drop_down,
                          size: 55,
                          color:
                              Theme.of(
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

                            child: _Wheel(
                              rewards:
                                  rewards,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        // =====================================
                        // SPIN BUTTON
                        // =====================================

                        SizedBox(
                          width:
                              double.infinity,
                          height: 55,

                          child:
                              ElevatedButton
                                  .icon(
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

                        // =====================================
                        // TODAY'S REWARD
                        // =====================================

                        if (lastReward !=
                            null) ...[
                          const SizedBox(
                            height: 20,
                          ),

                          Container(
                            width:
                                double.infinity,
                            padding:
                                const EdgeInsets
                                    .all(
                              14,
                            ),
                            decoration:
                                BoxDecoration(
                              color:
                                  Theme.of(
                                context,
                              )
                                      .colorScheme
                                      .primaryContainer,
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                14,
                              ),
                            ),
                            child: Text(
                              'Today\'s reward: ⭐ $lastReward points',
                              textAlign:
                                  TextAlign
                                      .center,
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
                        ],

                        const SizedBox(
                          height: 24,
                        ),

                        // =====================================
                        // HOW TO PLAY
                        // =====================================

                        Card(
                          child: Padding(
                            padding:
                                const EdgeInsets
                                    .all(
                              18,
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  '🎯 How to Play',
                                  style:
                                      TextStyle(
                                    fontSize:
                                        17,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),

                                const SizedBox(
                                  height: 12,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .casino_outlined,
                                      color:
                                          Theme.of(
                                        context,
                                      )
                                              .colorScheme
                                              .primary,
                                    ),

                                    const SizedBox(
                                      width:
                                          12,
                                    ),

                                    const Expanded(
                                      child:
                                          Text(
                                        'Spin the wheel to reveal your reward.',
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .quiz_outlined,
                                      color:
                                          Theme.of(
                                        context,
                                      )
                                              .colorScheme
                                              .primary,
                                    ),

                                    const SizedBox(
                                      width:
                                          12,
                                    ),

                                    const Expanded(
                                      child:
                                          Text(
                                        'Answer one DevOps question.',
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .stars_outlined,
                                      color:
                                          Theme.of(
                                        context,
                                      )
                                              .colorScheme
                                              .primary,
                                    ),

                                    const SizedBox(
                                      width:
                                          12,
                                    ),

                                    const Expanded(
                                      child:
                                          Text(
                                        'Correct answer = reward added to your points.',
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .close_rounded,
                                      color:
                                          Theme.of(
                                        context,
                                      )
                                              .colorScheme
                                              .error,
                                    ),

                                    const SizedBox(
                                      width:
                                          12,
                                    ),

                                    const Expanded(
                                      child:
                                          Text(
                                        'Wrong answer = reward lost. Existing points are safe.',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,
                          children: [
                            Icon(
                              Icons
                                  .calendar_today_outlined,
                              size: 16,
                              color:
                                  Theme.of(
                                context,
                              )
                                      .colorScheme
                                      .onSurfaceVariant,
                            ),

                            const SizedBox(
                              width: 7,
                            ),

                            Text(
                              'One free spin every day',
                              style:
                                  TextStyle(
                                fontSize:
                                    13,
                                color:
                                    Theme.of(
                                  context,
                                )
                                        .colorScheme
                                        .onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
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
    final center =
        Offset(
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
            ..color =
                i.isEven
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

      // =====================================
      // SEGMENT BORDER
      // =====================================

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

      // =====================================
      // REWARD TEXT
      // =====================================

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

    // =====================================
    // CENTER
    // =====================================

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
          color:
              Colors.white,
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
            centerText.width /
                2,
        center.dy -
            centerText.height /
                2,
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