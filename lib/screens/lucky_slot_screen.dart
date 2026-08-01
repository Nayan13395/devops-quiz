import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class LuckySlotScreen extends StatefulWidget {
  const LuckySlotScreen({super.key});

  @override
  State<LuckySlotScreen> createState() =>
      _LuckySlotScreenState();
}

class _LuckySlotScreenState extends State<LuckySlotScreen> {
  static const String _lastPlayKey =
      'lucky_slot_last_play_date';

  final Random _random = Random();

  bool loading = true;
  bool canPlay = false;
  bool spinning = false;

  int reel1 = 7;
  int reel2 = 7;
  int reel3 = 7;

  int? wonReward;

  @override
  void initState() {
    super.initState();
    _checkDailyPlay();
  }

  // =========================================================
  // CHECK DAILY PLAY
  // =========================================================

  Future<void> _checkDailyPlay() async {
    final prefs =
        await SharedPreferences.getInstance();

    final String? lastPlay =
        prefs.getString(_lastPlayKey);

    final String today =
        _dateKey(DateTime.now());

    if (!mounted) return;

    setState(() {
      canPlay = lastPlay != today;
      loading = false;
    });
  }

  // =========================================================
  // RANDOM REWARD: 10 - 999
  // =========================================================

  int _generateReward() {
    return 10 + _random.nextInt(990);
  }

  // =========================================================
  // RANDOM DIGIT: 0 - 9
  // =========================================================

  int _randomDigit() {
    return _random.nextInt(10);
  }

  // =========================================================
  // PLAY SLOT
  // =========================================================

  Future<void> _play() async {
    if (!canPlay || spinning) {
      return;
    }

    setState(() {
      spinning = true;
      wonReward = null;
    });

    // Generate final reward before animation.
    final int reward =
        _generateReward();

    final String rewardText =
        reward.toString().padLeft(3, '0');

    final int finalReel1 =
        int.parse(rewardText[0]);

    final int finalReel2 =
        int.parse(rewardText[1]);

    final int finalReel3 =
        int.parse(rewardText[2]);

    // =======================================================
    // STAGE 1
    // FAST SPIN
    // =======================================================

    for (int i = 0; i < 18; i++) {
      if (!mounted) return;

      setState(() {
        reel1 = _randomDigit();
        reel2 = _randomDigit();
        reel3 = _randomDigit();
      });

      await Future.delayed(
        const Duration(
          milliseconds: 65,
        ),
      );
    }

    // =======================================================
    // STAGE 2
    // MEDIUM SPEED
    // =======================================================

    for (int i = 0; i < 9; i++) {
      if (!mounted) return;

      setState(() {
        reel1 = _randomDigit();
        reel2 = _randomDigit();
        reel3 = _randomDigit();
      });

      await Future.delayed(
        const Duration(
          milliseconds: 125,
        ),
      );
    }

    // =======================================================
    // STAGE 3
    // SLOW DOWN
    // =======================================================

    for (int i = 0; i < 5; i++) {
      if (!mounted) return;

      setState(() {
        reel1 = _randomDigit();
        reel2 = _randomDigit();
        reel3 = _randomDigit();
      });

      await Future.delayed(
        Duration(
          milliseconds:
              180 + (i * 45),
        ),
      );
    }

    // =======================================================
    // FIRST REEL SLOWS AND STOPS
    // =======================================================

    for (int i = 0; i < 3; i++) {
      if (!mounted) return;

      setState(() {
        reel1 = _randomDigit();
        reel2 = _randomDigit();
        reel3 = _randomDigit();
      });

      await Future.delayed(
        Duration(
          milliseconds:
              250 + (i * 60),
        ),
      );
    }

    if (!mounted) return;

    setState(() {
      reel1 = finalReel1;
    });

    // =======================================================
    // SECOND + THIRD REELS CONTINUE
    // =======================================================

    for (int i = 0; i < 4; i++) {
      if (!mounted) return;

      setState(() {
        reel2 = _randomDigit();
        reel3 = _randomDigit();
      });

      await Future.delayed(
        Duration(
          milliseconds:
              230 + (i * 55),
        ),
      );
    }

    // =======================================================
    // SECOND REEL STOPS
    // =======================================================

    if (!mounted) return;

    setState(() {
      reel2 = finalReel2;
    });

    // =======================================================
    // THIRD REEL CONTINUES SLOWLY
    // =======================================================

    for (int i = 0; i < 4; i++) {
      if (!mounted) return;

      setState(() {
        reel3 = _randomDigit();
      });

      await Future.delayed(
        Duration(
          milliseconds:
              280 + (i * 70),
        ),
      );
    }

    // =======================================================
    // THIRD REEL STOPS
    // =======================================================

    if (!mounted) return;

    setState(() {
      reel3 = finalReel3;
      wonReward = reward;
    });

    // Let user see the result before popup.
    await Future.delayed(
      const Duration(
        milliseconds: 800,
      ),
    );

    // =======================================================
    // SAVE DAILY PLAY
    // =======================================================

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastPlayKey,
      _dateKey(DateTime.now()),
    );

    // =======================================================
    // ADD EXACT REWARD
    // =======================================================

    await PointService.addPoints(
      reward,
    );

    if (!mounted) return;

    setState(() {
      spinning = false;
      canPlay = false;
    });

    // =======================================================
    // RESULT DIALOG
    // =======================================================

    await _showWinnerDialog(
      reward,
    );
  }

  // =========================================================
  // WINNER DIALOG
  // =========================================================

  Future<void> _showWinnerDialog(
    int reward,
  ) async {
    if (!mounted) return;

    final bool jackpot =
        reward == 777;

    final String rewardText =
        reward.toString().padLeft(3, '0');

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        return AlertDialog(
          icon: Text(
            jackpot
                ? '🎰'
                : '🎉',
            style: const TextStyle(
              fontSize: 55,
            ),
          ),

          title: Text(
            jackpot
                ? 'JACKPOT 777!'
                : 'Congratulations!',
            textAlign:
                TextAlign.center,
          ),

          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              // ===============================================
              // FINAL SLOT NUMBER
              // ===============================================

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
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
                    : 'You won',
                style: TextStyle(
                  fontSize:
                      jackpot ? 20 : 17,
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

              Text(
                '⭐ +$reward',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      jackpot
                          ? Colors.orange
                          : Theme.of(
                              context,
                            )
                                .colorScheme
                                .primary,
                ),
              ),

              const SizedBox(
                height: 4,
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
                height: 18,
              ),

              const Text(
                'Come back tomorrow for another chance to win!',
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
                          'Lucky Slots',
                          textAlign:
                              TextAlign.center,
                          style: TextStyle(
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
                              ? 'Roll the slots and win the number shown!'
                              : 'You have already played today.',
                          textAlign:
                              TextAlign.center,
                          style: TextStyle(
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
                          height: 35,
                        ),

                        // =====================================
                        // SLOT MACHINE
                        // =====================================

                        Container(
                          width:
                              double.infinity,

                          padding:
                              const EdgeInsets
                                  .all(20),

                          decoration:
                              BoxDecoration(
                            color:
                                Theme.of(
                              context,
                            )
                                    .colorScheme
                                    .surfaceContainer,

                            borderRadius:
                                BorderRadius
                                    .circular(
                              24,
                            ),

                            border:
                                Border.all(
                              color:
                                  Theme.of(
                                context,
                              )
                                      .colorScheme
                                      .primary
                                      .withValues(
                                        alpha:
                                            0.35,
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

                              // ===============================
                              // REELS
                              // ===============================

                              Row(
                                children: [
                                  Expanded(
                                    child:
                                        _SlotReel(
                                      value:
                                          reel1,
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
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 18,
                              ),

                              const Text(
                                'The 3-digit number = your points!',
                                textAlign:
                                    TextAlign
                                        .center,
                                style:
                                    TextStyle(
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        // =====================================
                        // PLAY BUTTON
                        // =====================================

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

                            icon:
                                spinning
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
                                  ? 'SPINNING...'
                                  : canPlay
                                      ? 'PLAY NOW'
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
                        // TODAY'S WIN
                        // =====================================

                        if (wonReward !=
                            null) ...[
                          const SizedBox(
                            height: 22,
                          ),

                          Container(
                            width:
                                double.infinity,
                            padding:
                                const EdgeInsets
                                    .all(16),

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
                                15,
                              ),
                            ),

                            child: Text(
                              wonReward == 777
                                  ? '🎰 JACKPOT! You won 777 points!'
                                  : '🎉 Today you won $wonReward points!',
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
                          height: 30,
                        ),

                        // =====================================
                        // POSSIBLE REWARD
                        // =====================================

                        Card(
                          child: Padding(
                            padding:
                                const EdgeInsets
                                    .all(20),

                            child: Column(
                              children: [
                                const Text(
                                  'Possible Reward',
                                  style:
                                      TextStyle(
                                    fontSize:
                                        18,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

                                Text(
                                  '⭐ 10 - 999 Points',
                                  style:
                                      TextStyle(
                                    fontSize:
                                        25,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                    color:
                                        Theme.of(
                                      context,
                                    )
                                            .colorScheme
                                            .primary,
                                  ),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),

                                const Text(
                                  'Every play wins!',
                                  style:
                                      TextStyle(
                                    fontSize:
                                        15,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),

                                const SizedBox(
                                  height: 8,
                                ),

                                const Text(
                                  '🎰 Get 777 for the special jackpot!',
                                  textAlign:
                                      TextAlign
                                          .center,
                                  style:
                                      TextStyle(
                                    fontSize:
                                        14,
                                  ),
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
                              'One free play every day',
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
// SLOT REEL
// ===========================================================

class _SlotReel extends StatelessWidget {
  final int value;

  const _SlotReel({
    required this.value,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 90,

      alignment:
          Alignment.center,

      decoration:
          BoxDecoration(
        color:
            Theme.of(context)
                .colorScheme
                .surface,

        borderRadius:
            BorderRadius.circular(
          15,
        ),

        border:
            Border.all(
          color:
              Theme.of(context)
                  .colorScheme
                  .outlineVariant,
        ),

        boxShadow:
            const [
          BoxShadow(
            color:
                Colors.black12,
            blurRadius: 5,
            offset:
                Offset(
              0,
              2,
            ),
          ),
        ],
      ),

      // Clip prevents the moving number from
      // appearing outside the reel window.
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(
          15,
        ),

        child:
            AnimatedSwitcher(
          duration:
              const Duration(
            milliseconds: 150,
          ),

          switchInCurve:
              Curves.easeOut,

          switchOutCurve:
              Curves.easeIn,

          transitionBuilder: (
            child,
            animation,
          ) {
            final slide =
                Tween<Offset>(
              begin:
                  const Offset(
                0,
                -1.2,
              ),
              end:
                  Offset.zero,
            ).animate(
              animation,
            );

            return SlideTransition(
              position: slide,
              child: FadeTransition(
                opacity:
                    animation,
                child:
                    child,
              ),
            );
          },

          child: SizedBox(
            key:
                ValueKey(
              value,
            ),

            width:
                double.infinity,
            height: 90,

            child:
                Center(
              child: Text(
                '$value',
                style:
                    TextStyle(
                  fontSize:
                      46,
                  fontWeight:
                      FontWeight
                          .bold,
                  color:
                      Theme.of(
                    context,
                  )
                          .colorScheme
                          .primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ===========================================================
// RESULT DIGIT
// ===========================================================

class _ResultDigit extends StatelessWidget {
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
    return Container(
      width: 52,
      height: 60,

      alignment:
          Alignment.center,

      decoration:
          BoxDecoration(
        color:
            Theme.of(context)
                .colorScheme
                .surfaceContainer,

        borderRadius:
            BorderRadius.circular(
          10,
        ),

        border:
            Border.all(
          color:
              jackpot
                  ? Colors.orange
                  : Theme.of(
                      context,
                    )
                        .colorScheme
                        .outlineVariant,
          width:
              jackpot ? 2 : 1,
        ),
      ),

      child: Text(
        digit,
        style:
            TextStyle(
          fontSize: 32,
          fontWeight:
              FontWeight.bold,
          color:
              jackpot
                  ? Colors.orange
                  : Theme.of(
                      context,
                    )
                        .colorScheme
                        .primary,
        ),
      ),
    );
  }
}