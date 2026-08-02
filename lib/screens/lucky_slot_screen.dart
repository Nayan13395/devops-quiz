import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'reward_question_screen.dart';

class LuckySlotScreen extends StatefulWidget {
  const LuckySlotScreen({
    super.key,
  });

  @override
  State<LuckySlotScreen> createState() =>
      _LuckySlotScreenState();
}

class _LuckySlotScreenState
    extends State<LuckySlotScreen> {
  static const String _lastPlayKey =
      'lucky_slot_last_play_date';

  static const String _lastRewardKey =
      'lucky_slot_last_reward';

  final Random _random = Random();

  bool loading = true;
  bool canPlay = false;
  bool spinning = false;

  // Each reel contains ONE digit only.
  int reel1 = 7;
  int reel2 = 7;
  int reel3 = 7;

  bool reel1Spinning = false;
  bool reel2Spinning = false;
  bool reel3Spinning = false;

  int? wonReward;

  Timer? _slotTimer;

  // =========================================================
  // INIT
  // =========================================================

  @override
  void initState() {
    super.initState();

    _checkDailyPlay();
  }

  // =========================================================
  // CHECK DAILY PLAY
  // =========================================================

  Future<void> _checkDailyPlay() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    final String? lastPlay =
        prefs.getString(
      _lastPlayKey,
    );

    final String today =
        _dateKey(
      DateTime.now(),
    );

    final int? savedReward =
        prefs.getInt(
      _lastRewardKey,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      canPlay = lastPlay != today;
      loading = false;

      // Restore yesterday/today result as
      // three individual digits.
      if (!canPlay &&
          savedReward != null) {
        wonReward = savedReward;

        final String rewardText =
            savedReward
                .toString()
                .padLeft(
                  3,
                  '0',
                );

        reel1 =
            int.parse(
          rewardText[0],
        );

        reel2 =
            int.parse(
          rewardText[1],
        );

        reel3 =
            int.parse(
          rewardText[2],
        );
      }
    });
  }

  // =========================================================
  // RANDOM DIGIT
  // 0 - 9
  // =========================================================

  int _generateDigit() {
    return _random.nextInt(10);
  }

  // =========================================================
  // CREATE REWARD FROM 3 REELS
  //
  // Example:
  // 5 | 0 | 1 = 501
  // 0 | 7 | 5 = 75
  // 0 | 0 | 9 = 9
  // 7 | 7 | 7 = 777 JACKPOT
  // =========================================================

  int _rewardFromDigits(
    int first,
    int second,
    int third,
  ) {
    return (first * 100) +
        (second * 10) +
        third;
  }

  // =========================================================
  // PLAY SLOT
  // =========================================================

  Future<void> _play() async {
    if (!canPlay ||
        spinning) {
      return;
    }

    // Decide final digits before spinning.
    final int finalReel1 =
        _generateDigit();

    final int finalReel2 =
        _generateDigit();

    final int finalReel3 =
        _generateDigit();

    setState(() {
      spinning = true;

      reel1Spinning = true;
      reel2Spinning = true;
      reel3Spinning = true;

      wonReward = null;
    });

    // =======================================================
    // START ALL 3 REELS
    // =======================================================

    _slotTimer?.cancel();

    _slotTimer =
        Timer.periodic(
      const Duration(
        milliseconds: 80,
      ),
      (_) {
        if (!mounted) {
          return;
        }

        setState(() {
          if (reel1Spinning) {
            reel1 =
                _generateDigit();
          }

          if (reel2Spinning) {
            reel2 =
                _generateDigit();
          }

          if (reel3Spinning) {
            reel3 =
                _generateDigit();
          }
        });
      },
    );

    // =======================================================
    // REEL 1 STOPS
    // =======================================================

    await Future<void>.delayed(
      const Duration(
        milliseconds: 1800,
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      reel1 = finalReel1;
      reel1Spinning = false;
    });

    // =======================================================
    // REEL 2 STOPS
    // =======================================================

    await Future<void>.delayed(
      const Duration(
        milliseconds: 700,
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      reel2 = finalReel2;
      reel2Spinning = false;
    });

    // =======================================================
    // REEL 3 STOPS
    // =======================================================

    await Future<void>.delayed(
      const Duration(
        milliseconds: 700,
      ),
    );

    if (!mounted) {
      return;
    }

    setState(() {
      reel3 = finalReel3;
      reel3Spinning = false;
    });

    // Stop animation timer.
    _slotTimer?.cancel();
    _slotTimer = null;

    // =======================================================
    // CALCULATE FINAL REWARD
    // =======================================================

    final int reward =
        _rewardFromDigits(
      finalReel1,
      finalReel2,
      finalReel3,
    );

    setState(() {
      wonReward = reward;
    });

    // Small pause after last reel stops.
    await Future<void>.delayed(
      const Duration(
        milliseconds: 700,
      ),
    );

    if (!mounted) {
      return;
    }

    // =======================================================
    // SAVE DAILY PLAY
    // =======================================================

    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastPlayKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    await prefs.setInt(
      _lastRewardKey,
      reward,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      spinning = false;
      canPlay = false;
    });

    // =======================================================
    // SHOW REWARD / QUESTION
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

    final bool jackpot =
        reward == 777;

    final String rewardText =
        reward
            .toString()
            .padLeft(
              3,
              '0',
            );

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
          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              // =============================================
              // CENTERED ICON
              // =============================================

              SizedBox(
                width:
                    double.infinity,
                child: Text(
                  jackpot
                      ? '🎰'
                      : '🎉',
                  textAlign:
                      TextAlign.center,
                  style:
                      const TextStyle(
                    fontSize: 55,
                  ),
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              // =============================================
              // TITLE
              // =============================================

              SizedBox(
                width:
                    double.infinity,
                child: Text(
                  jackpot
                      ? 'JACKPOT 777!'
                      : 'Reward Revealed!',
                  textAlign:
                      TextAlign.center,
                  style:
                      const TextStyle(
                    fontSize: 24,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 22,
              ),

              // =============================================
              // FINAL SLOT DIGITS
              // =============================================

              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                children: [
                  _ResultDigit(
                    digit:
                        rewardText[0],
                    jackpot:
                        jackpot,
                  ),

                  const SizedBox(
                    width: 8,
                  ),

                  _ResultDigit(
                    digit:
                        rewardText[1],
                    jackpot:
                        jackpot,
                  ),

                  const SizedBox(
                    width: 8,
                  ),

                  _ResultDigit(
                    digit:
                        rewardText[2],
                    jackpot:
                        jackpot,
                  ),
                ],
              ),

              const SizedBox(
                height: 22,
              ),

              Text(
                jackpot
                    ? 'Lucky 777!'
                    : 'Your reward',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize:
                      jackpot
                          ? 20
                          : 17,
                  fontWeight:
                      jackpot
                          ? FontWeight.bold
                          : FontWeight.normal,
                  color:
                      jackpot
                          ? Colors.orange
                          : null,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              // =============================================
              // REWARD
              // =============================================

              Text(
                '⭐ $reward',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      jackpot
                          ? Colors.orange
                          : colors.primary,
                ),
              ),

              const SizedBox(
                height: 4,
              ),

              const Text(
                'POINTS',
                textAlign:
                    TextAlign.center,
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

              // =============================================
              // QUESTION REQUIREMENT
              // =============================================

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
                            'Lucky Slots',
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
  // DATE
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
    _slotTimer?.cancel();

    super.dispose();
  }

  // =========================================================
  // UI
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
          '🎰 Lucky Slots',
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

                        // ===================================
                        // TITLE
                        // ===================================

                        const Text(
                          'Lucky Slots',
                          textAlign:
                              TextAlign.center,
                          style:
                              TextStyle(
                            fontSize: 28,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        const SizedBox(
                          height: 8,
                        ),

                        Text(
                          canPlay
                              ? 'Roll the slots, then answer a question to claim the reward!'
                              : 'You have already played today.',
                          textAlign:
                              TextAlign.center,
                          style:
                              TextStyle(
                            fontSize: 16,
                            color: colors
                                .onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(
                          height: 35,
                        ),

                        // ===================================
                        // SLOT MACHINE
                        // ===================================

                        Container(
                          width:
                              double.infinity,
                          padding:
                              const EdgeInsets.all(
                            20,
                          ),
                          decoration:
                              BoxDecoration(
                            color: colors
                                .surfaceContainer,
                            borderRadius:
                                BorderRadius.circular(
                              24,
                            ),
                            border:
                                Border.all(
                              color: colors
                                  .primary
                                  .withValues(
                                alpha: 0.35,
                              ),
                              width: 2,
                            ),
                            boxShadow:
                                const [
                              BoxShadow(
                                color:
                                    Colors.black12,
                                blurRadius:
                                    12,
                                offset:
                                    Offset(
                                  0,
                                  5,
                                ),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const Text(
                                '🎰',
                                style:
                                    TextStyle(
                                  fontSize: 55,
                                ),
                              ),

                              const SizedBox(
                                height: 20,
                              ),

                              // =============================
                              // THREE SINGLE-DIGIT REELS
                              // =============================

                              Row(
                                children: [
                                  Expanded(
                                    child:
                                        _SlotReel(
                                      value:
                                          reel1,
                                      spinning:
                                          reel1Spinning,
                                    ),
                                  ),

                                  const SizedBox(
                                    width: 8,
                                  ),

                                  Expanded(
                                    child:
                                        _SlotReel(
                                      value:
                                          reel2,
                                      spinning:
                                          reel2Spinning,
                                    ),
                                  ),

                                  const SizedBox(
                                    width: 8,
                                  ),

                                  Expanded(
                                    child:
                                        _SlotReel(
                                      value:
                                          reel3,
                                      spinning:
                                          reel3Spinning,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 18,
                              ),

                              const Text(
                                'The 3 digits together = your potential reward!',
                                textAlign:
                                    TextAlign.center,
                                style:
                                    TextStyle(
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // ===================================
                        // PLAY BUTTON
                        // ===================================

                        SizedBox(
                          width:
                              double.infinity,
                          height: 55,
                          child:
                              ElevatedButton.icon(
                            onPressed:
                                canPlay &&
                                        !spinning
                                    ? _play
                                    : null,
                            icon: spinning
                                ? const SizedBox(
                                    width: 22,
                                    height: 22,
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
                                  ? 'SPINNING...'
                                  : canPlay
                                      ? 'ROLL NOW'
                                      : 'COME BACK TOMORROW',
                              style:
                                  const TextStyle(
                                fontSize: 17,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        // ===================================
                        // TODAY'S REWARD
                        // ===================================

                        if (wonReward !=
                            null) ...[
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
                              wonReward == 777
                                  ? '🎰 JACKPOT! 777 points available!'
                                  : 'Today\'s reward: ⭐ $wonReward points',
                              textAlign:
                                  TextAlign.center,
                              style:
                                  TextStyle(
                                fontSize: 17,
                                fontWeight:
                                    FontWeight.bold,
                                color: colors
                                    .onPrimaryContainer,
                              ),
                            ),
                          ),
                        ],

                        const SizedBox(
                          height: 25,
                        ),

                        // ===================================
                        // HOW TO PLAY
                        // ===================================

                        Card(
                          child: Padding(
                            padding:
                                const EdgeInsets.all(
                              18,
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  '🎯 How to Play',
                                  style:
                                      TextStyle(
                                    fontSize: 17,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                const _HowToRow(
                                  icon: Icons
                                      .casino_outlined,
                                  text:
                                      'Each reel contains one digit from 0 to 9.',
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                const _HowToRow(
                                  icon: Icons
                                      .stop_circle_outlined,
                                  text:
                                      'The reels stop one by one.',
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                const _HowToRow(
                                  icon: Icons
                                      .quiz_outlined,
                                  text:
                                      'Answer one DevOps question.',
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                const _HowToRow(
                                  icon: Icons
                                      .stars_outlined,
                                  text:
                                      'Correct answer = reward added to your points.',
                                ),

                                const SizedBox(
                                  height: 14,
                                ),

                                const _HowToRow(
                                  icon: Icons
                                      .close_rounded,
                                  text:
                                      'Wrong answer = reward lost. Existing points are safe.',
                                  error:
                                      true,
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
                              MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .calendar_today_outlined,
                              size: 16,
                              color: colors
                                  .onSurfaceVariant,
                            ),

                            const SizedBox(
                              width: 7,
                            ),

                            Text(
                              'One Lucky Slots play every day',
                              style:
                                  TextStyle(
                                fontSize: 13,
                                color: colors
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
// SINGLE DIGIT SLOT REEL
// ===========================================================

class _SlotReel extends StatelessWidget {
  final int value;
  final bool spinning;

  const _SlotReel({
    required this.value,
    required this.spinning,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colors =
        Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration:
          const Duration(
        milliseconds: 150,
      ),
      height: 95,
      alignment:
          Alignment.center,
      decoration:
          BoxDecoration(
        color: colors
            .surfaceContainerHighest,
        borderRadius:
            BorderRadius.circular(
          16,
        ),
        border: Border.all(
          color: spinning
              ? colors.primary
              : colors
                  .outlineVariant,
          width: spinning
              ? 2
              : 1,
        ),
        boxShadow: spinning
            ? [
                BoxShadow(
                  color: colors
                      .primary
                      .withValues(
                    alpha: 0.20,
                  ),
                  blurRadius: 10,
                ),
              ]
            : null,
      ),

      // One digit only.
      child: AnimatedSwitcher(
        duration:
            const Duration(
          milliseconds: 70,
        ),
        transitionBuilder: (
          child,
          animation,
        ) {
          return SlideTransition(
            position: Tween<Offset>(
              begin:
                  const Offset(
                0,
                -0.4,
              ),
              end:
                  Offset.zero,
            ).animate(
              animation,
            ),
            child:
                FadeTransition(
              opacity:
                  animation,
              child:
                  child,
            ),
          );
        },
        child: Text(
          value.toString(),
          key: ValueKey<int>(
            value,
          ),
          style:
              const TextStyle(
            fontSize: 44,
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// ===========================================================
// RESULT DIGIT
// ===========================================================

class _ResultDigit
    extends StatelessWidget {
  final String digit;
  final bool jackpot;

  const _ResultDigit({
    required this.digit,
    required this.jackpot,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colors =
        Theme.of(context).colorScheme;

    return Container(
      width: 55,
      height: 65,
      alignment:
          Alignment.center,
      decoration:
          BoxDecoration(
        color: jackpot
            ? Colors.orange
                .withValues(
                alpha: 0.15,
              )
            : colors
                .primaryContainer,
        borderRadius:
            BorderRadius.circular(
          12,
        ),
        border: Border.all(
          color: jackpot
              ? Colors.orange
              : colors.primary,
          width: 2,
        ),
      ),
      child: Text(
        digit,
        style: TextStyle(
          fontSize: 30,
          fontWeight:
              FontWeight.bold,
          color: jackpot
              ? Colors.orange
              : colors
                  .onPrimaryContainer,
        ),
      ),
    );
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