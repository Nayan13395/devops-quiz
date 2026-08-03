import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'reward_question_screen.dart';
import 'games_screen.dart';

class ScratchCardScreen extends StatefulWidget {
  const ScratchCardScreen({
    super.key,
  });

  @override
  State<ScratchCardScreen> createState() =>
      _ScratchCardScreenState();
}

class _ScratchCardScreenState
    extends State<ScratchCardScreen> {
  static const String _lastScratchKey =
      'scratch_card_last_scratch_date';

  final Random _random = Random();

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

  bool loading = true;
  bool canScratch = false;
  bool rewardClaimed = false;

  int reward = 0;

  final List<Offset> _scratchPoints = [];

  // =========================================================
  // INIT
  // =========================================================

  @override
  void initState() {
    super.initState();

    _checkDailyScratch();
  }

  // =========================================================
  // CHECK DAILY SCRATCH
  // =========================================================

  Future<void> _checkDailyScratch() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    final String? lastScratch =
        prefs.getString(
      _lastScratchKey,
    );

    final String today =
        _dateKey(
      DateTime.now(),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      canScratch =
          lastScratch != today;

      loading = false;

      if (canScratch) {
        reward =
            rewards[
                _random.nextInt(
                  rewards.length,
                )];
      }
    });
  }

  // =========================================================
  // SCRATCH
  // =========================================================

  void _scratch(
    Offset position,
  ) {
    if (!canScratch ||
        rewardClaimed) {
      return;
    }

    setState(() {
      _scratchPoints.add(
        position,
      );
    });

    // Once enough scratch gestures have
    // been made, reveal the reward.
    //
    // This is intentionally simple and
    // works consistently across mobile/web.

    if (_scratchPoints.length >= 45) {
      _claimReward();
    }
  }

  // =========================================================
  // REVEAL REWARD
  //
  // IMPORTANT:
  // Points are NOT added here.
  // The user must answer a question first.
  // =========================================================

  Future<void> _claimReward() async {
    if (!canScratch ||
        rewardClaimed ||
        reward <= 0) {
      return;
    }

    setState(() {
      rewardClaimed = true;
    });

    // =======================================================
    // CONSUME TODAY'S SCRATCH
    // =======================================================

    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastScratchKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      canScratch = false;
    });

    await _showChallengeDialog();
  }

  // =========================================================
  // CHALLENGE DIALOG
  // =========================================================

  Future<void>
      _showChallengeDialog() async {
    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        final ColorScheme colors =
            Theme.of(
          dialogContext,
        ).colorScheme;

        return AlertDialog(
          icon: const Text(
            '🎟️',
             textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 55,
            ),
          ),

          title: const Text(
            'Reward Revealed!',
            textAlign:
                TextAlign.center,
          ),

          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              const Text(
                'You found',
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
                      colors.primary,
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
                  color: colors
                      .primaryContainer,
                  borderRadius:
                      BorderRadius.circular(
                    14,
                  ),
                ),
                child: Text(
                  'Answer 1 quiz question correctly to claim this reward.',
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w600,
                    color: colors
                        .onPrimaryContainer,
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
                  color: colors
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
                            'Scratch Card',
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
  // BUILD
  // =========================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colors =
        Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🎟️ Scratch Card',
              textAlign: TextAlign.center,
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
                          'Daily Scratch',
                          textAlign:
                              TextAlign
                                  .center,
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
                          canScratch
                              ? 'Scratch the card to reveal today\'s reward!'
                              : 'You have already used today\'s scratch card.',
                          textAlign:
                              TextAlign
                                  .center,
                          style:
                              TextStyle(
                            fontSize: 16,
                            color: colors
                                .onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // =====================================
                        // SCRATCH CARD
                        // =====================================

                        _buildScratchCard(
                          context,
                        ),

                        const SizedBox(
                          height: 24,
                        ),

                        // =====================================
                        // STATUS
                        // =====================================

                        if (!canScratch &&
                            rewardClaimed)
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
                              color: colors
                                  .primaryContainer,
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                14,
                              ),
                            ),
                            child: Text(
                              'Today\'s reward: ⭐ $reward points',
                              textAlign:
                                  TextAlign
                                      .center,
                              style:
                                  TextStyle(
                                fontSize:
                                    17,
                                fontWeight:
                                    FontWeight
                                        .bold,
                                color: colors
                                    .onPrimaryContainer,
                              ),
                            ),
                          ),

const SizedBox(
  height: 20,
),

// =====================================
// PLAY MORE GAMES
// =====================================

SizedBox(
  width: double.infinity,
  height: 52,
  child: ElevatedButton.icon(
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const GamesScreen(),
        ),
      );
    },
    icon: const Icon(
      Icons.sports_esports_outlined,
    ),
    label: const Text(
      'Play More Games',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
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

  // =========================================================
  // SCRATCH CARD UI
  // =========================================================

  Widget _buildScratchCard(
    BuildContext context,
  ) {
    final ColorScheme colors =
        Theme.of(context).colorScheme;

    // =======================================================
    // ALREADY USED
    // =======================================================

    if (!canScratch &&
        !rewardClaimed) {
      return Container(
        width:
            double.infinity,
        height: 220,
        decoration:
            BoxDecoration(
          color: colors
              .surfaceContainerHighest,
          borderRadius:
              BorderRadius.circular(
            24,
          ),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            const Text(
              '🎟️',
              style: TextStyle(
                fontSize: 55,
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            const Text(
              'Already Scratched',
              style: TextStyle(
                fontSize: 21,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 8,
            ),

            Text(
              'Come back tomorrow for another reward.',
              textAlign:
                  TextAlign.center,
              style: TextStyle(
                color: colors
                    .onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    // =======================================================
    // REWARD REVEALED
    // =======================================================

    if (rewardClaimed) {
      return Container(
        width:
            double.infinity,
        height: 220,
        decoration:
            BoxDecoration(
          color:
              colors.primaryContainer,
          borderRadius:
              BorderRadius.circular(
            24,
          ),
          border: Border.all(
            color:
                colors.primary,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            const Text(
              '🎉',
              style: TextStyle(
                fontSize: 48,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            const Text(
              'You revealed',
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            const SizedBox(
              height: 6,
            ),

            Text(
              '⭐ $reward',
              style: TextStyle(
                fontSize: 38,
                fontWeight:
                    FontWeight.bold,
                color: colors
                    .onPrimaryContainer,
              ),
            ),

            const SizedBox(
              height: 4,
            ),

            Text(
              'POINTS',
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
                color: colors
                    .onPrimaryContainer,
              ),
            ),
          ],
        ),
      );
    }

    // =======================================================
    // ACTIVE SCRATCH CARD
    // =======================================================

    return ClipRRect(
      borderRadius:
          BorderRadius.circular(
        24,
      ),
      child: SizedBox(
        width:
            double.infinity,
        height: 220,
        child: LayoutBuilder(
          builder: (
            context,
            constraints,
          ) {
            return Stack(
              fit: StackFit.expand,
              children: [
                // ===========================================
                // REWARD UNDER SCRATCH LAYER
                // ===========================================

                Container(
                  color:
                      colors.primaryContainer,
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                    children: [
                      const Text(
                        '🎁',
                        style:
                            TextStyle(
                          fontSize:
                              45,
                        ),
                      ),

                      const SizedBox(
                        height:
                            8,
                      ),

                      Text(
                        '⭐ $reward',
                        style:
                            TextStyle(
                          fontSize:
                              38,
                          fontWeight:
                              FontWeight
                                  .bold,
                          color: colors
                              .onPrimaryContainer,
                        ),
                      ),

                      const SizedBox(
                        height:
                            4,
                      ),

                      Text(
                        'POINTS',
                        style:
                            TextStyle(
                          fontWeight:
                              FontWeight
                                  .bold,
                          color: colors
                              .onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),

                // ===========================================
                // SCRATCH LAYER
                // ===========================================

                GestureDetector(
                  behavior:
                      HitTestBehavior
                          .opaque,

                  onPanStart: (
                    details,
                  ) {
                    _scratch(
                      details
                          .localPosition,
                    );
                  },

                  onPanUpdate: (
                    details,
                  ) {
                    _scratch(
                      details
                          .localPosition,
                    );
                  },

                  child:
                      CustomPaint(
                    painter:
                        _ScratchPainter(
                      scratchPoints:
                          _scratchPoints,
                      coverColor:
                          colors
                              .secondaryContainer,
                      textColor:
                          colors
                              .onSecondaryContainer,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// ===========================================================
// SCRATCH PAINTER
// ===========================================================

class _ScratchPainter
    extends CustomPainter {
  final List<Offset>
      scratchPoints;

  final Color coverColor;
  final Color textColor;

  _ScratchPainter({
    required this.scratchPoints,
    required this.coverColor,
    required this.textColor,
  });

  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final Paint coverPaint =
        Paint()
          ..color =
              coverColor;

    canvas.drawRect(
      Offset.zero &
          size,
      coverPaint,
    );

    // =======================================================
    // SCRATCH INSTRUCTION
    // =======================================================

    if (scratchPoints.length <
        15) {
      final TextPainter
          textPainter =
          TextPainter(
        text: TextSpan(
          text:
              'SCRATCH HERE\n👆',
          style:
              TextStyle(
            color:
                textColor,
            fontSize: 22,
            fontWeight:
                FontWeight.bold,
            height: 1.5,
          ),
        ),
        textAlign:
            TextAlign.center,
        textDirection:
            TextDirection.ltr,
      );

      textPainter.layout(
        maxWidth:
            size.width,
      );

      textPainter.paint(
        canvas,
        Offset(
          (size.width -
                  textPainter
                      .width) /
              2,
          (size.height -
                  textPainter
                      .height) /
              2,
        ),
      );
    }

    // =======================================================
    // ERASE SCRATCHED AREAS
    // =======================================================

    final Paint scratchPaint =
        Paint()
          ..blendMode =
              BlendMode.clear
          ..style =
              PaintingStyle.fill;

    for (final Offset point
        in scratchPoints) {
      canvas.drawCircle(
        point,
        25,
        scratchPaint,
      );
    }
  }

  @override
  bool shouldRepaint(
    covariant _ScratchPainter
        oldDelegate,
  ) {
    return true;
  }
}

// ===========================================================
// HOW TO ROW
// ===========================================================

class _HowToRow
    extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool error;

  const _HowToRow({
    required this.icon,
    required this.text,
    this.error = false,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colors =
        Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: error
              ? colors.error
              : colors.primary,
        ),

        const SizedBox(
          width: 12,
        ),

        Expanded(
          child: Text(
            text,
          ),
        ),
      ],
    );
  }
}