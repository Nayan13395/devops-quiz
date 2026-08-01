import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/point_service.dart';

class ScratchCardScreen extends StatefulWidget {
  const ScratchCardScreen({super.key});

  @override
  State<ScratchCardScreen> createState() =>
      _ScratchCardScreenState();
}

class _ScratchCardScreenState
    extends State<ScratchCardScreen> {
  static const String _lastScratchKey =
      'scratch_card_last_date';

  final Random _random = Random();

  final GlobalKey<ScratcherState> _scratcherKey =
      GlobalKey<ScratcherState>();

  bool loading = true;
  bool canScratch = false;
  bool rewardClaimed = false;

  int reward = 0;

  @override
  void initState() {
    super.initState();

    _initializeScratchCard();
  }

  // =========================================================
  // INITIALIZE
  // =========================================================

  Future<void> _initializeScratchCard() async {
    final prefs =
        await SharedPreferences.getInstance();

    final String today =
        _dateKey(DateTime.now());

    final String? lastScratch =
        prefs.getString(
      _lastScratchKey,
    );

    final bool available =
        lastScratch != today;

    int generatedReward = 0;

    if (available) {
      generatedReward =
          _generateWeightedReward();
    }

    if (!mounted) return;

    setState(() {
      canScratch = available;
      reward = generatedReward;
      loading = false;
    });
  }

  // =========================================================
  // WEIGHTED REWARD
  // =========================================================

  int _generateWeightedReward() {
    final int roll =
        _random.nextInt(100) + 1;

    if (roll <= 25) {
      return 10;
    }

    if (roll <= 45) {
      return 20;
    }

    if (roll <= 63) {
      return 50;
    }

    if (roll <= 78) {
      return 100;
    }

    if (roll <= 88) {
      return 200;
    }

    if (roll <= 94) {
      return 500;
    }

    if (roll <= 98) {
      return 750;
    }

    return 1000;
  }

  // =========================================================
  // CLAIM REWARD
  // =========================================================

  Future<void> _claimReward() async {
    if (!canScratch ||
        rewardClaimed ||
        reward <= 0) {
      return;
    }

    // Prevent another completion callback.
    setState(() {
      rewardClaimed = true;
    });

    await PointService.addPoints(
      reward,
    );

    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _lastScratchKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    if (!mounted) return;

    setState(() {
      canScratch = false;
    });

    await _showRewardDialog();
  }

  // =========================================================
  // REWARD DIALOG
  // =========================================================

  Future<void> _showRewardDialog() async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Text(
            '🎉',
            style: TextStyle(
              fontSize: 55,
            ),
          ),

          title: const Text(
            'Congratulations!',
            textAlign: TextAlign.center,
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
                  fontSize: 34,
                  fontWeight:
                      FontWeight.bold,
                  color: Theme.of(context)
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
                height: 18,
              ),

              const Text(
                'Come back tomorrow for another scratch card!',
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
  // UI
  // =========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🎟️ Scratch Card',
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

                        // =================================
                        // TITLE
                        // =================================

                        const Text(
                          'Daily Scratch',
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
                          canScratch
                              ? 'Scratch the card and reveal your reward!'
                              : 'You have already used today\'s scratch card.',

                          textAlign:
                              TextAlign.center,

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
                          height: 35,
                        ),

                        // =================================
                        // SCRATCH CARD
                        // =================================

                        if (canScratch)
                          _buildScratchCard(
                            context,
                          )
                        else
                          _buildCompletedCard(
                            context,
                          ),

                        const SizedBox(
                          height: 30,
                        ),

                        // =================================
                        // INFO
                        // =================================

                        Card(
                          elevation: 2,

                          child: Padding(
                            padding:
                                const EdgeInsets
                                    .all(18),

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .touch_app_outlined,
                                      color: Theme.of(
                                        context,
                                      )
                                          .colorScheme
                                          .primary,
                                    ),

                                    const SizedBox(
                                      width: 12,
                                    ),

                                    const Expanded(
                                      child: Text(
                                        'Use your finger to scratch the card.',
                                        style:
                                            TextStyle(
                                          fontSize:
                                              15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .stars_outlined,
                                      color: Theme.of(
                                        context,
                                      )
                                          .colorScheme
                                          .primary,
                                    ),

                                    const SizedBox(
                                      width: 12,
                                    ),

                                    const Expanded(
                                      child: Text(
                                        'Win up to 1,000 bonus points.',
                                        style:
                                            TextStyle(
                                          fontSize:
                                              15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(
                                  height: 15,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons
                                          .calendar_today_outlined,
                                      color: Theme.of(
                                        context,
                                      )
                                          .colorScheme
                                          .primary,
                                    ),

                                    const SizedBox(
                                      width: 12,
                                    ),

                                    const Expanded(
                                      child: Text(
                                        'One scratch card is available every day.',
                                        style:
                                            TextStyle(
                                          fontSize:
                                              15,
                                        ),
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

                        const Text(
                          'Come back every day for another chance to win!',
                          textAlign:
                              TextAlign.center,
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

  // =========================================================
  // ACTIVE SCRATCH CARD
  // =========================================================

  Widget _buildScratchCard(
    BuildContext context,
  ) {
    final double width =
        min(
      MediaQuery.sizeOf(context)
              .width -
          40,
      380,
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      ),

      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(22),

        child: Scratcher(
          key: _scratcherKey,

          brushSize: 45,

          threshold: 55,

          color: Colors.grey.shade400,

          onThreshold: () async {
            await _claimReward();
          },

          child: SizedBox(
            width: width,
            height: 220,

            child: Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(
                  begin:
                      Alignment.topLeft,
                  end:
                      Alignment.bottomRight,
                  colors: [
                    Theme.of(context)
                        .colorScheme
                        .primaryContainer,

                    Theme.of(context)
                        .colorScheme
                        .secondaryContainer,
                  ],
                ),
              ),

              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                children: [
                  const Text(
                    '🎉',
                    style: TextStyle(
                      fontSize: 45,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    'YOU WON',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold,
                      letterSpacing:
                          1.5,
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  Text(
                    '⭐ $reward',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight:
                          FontWeight.bold,
                      color:
                          Theme.of(context)
                              .colorScheme
                              .primary,
                    ),
                  ),

                  const Text(
                    'POINTS',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight:
                          FontWeight.bold,
                      letterSpacing:
                          2,
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

  // =========================================================
  // COMPLETED CARD
  // =========================================================

  Widget _buildCompletedCard(
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      constraints:
          const BoxConstraints(
        maxWidth: 380,
      ),

      height: 200,

      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .surfaceContainer,

        borderRadius:
            BorderRadius.circular(22),

        border: Border.all(
          color: Theme.of(context)
              .colorScheme
              .outlineVariant,
        ),
      ),

      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          const Text(
            '⏳',
            style: TextStyle(
              fontSize: 45,
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          const Text(
            'Today\'s card is complete',
            textAlign:
                TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          Text(
            'New scratch card available tomorrow',
            textAlign:
                TextAlign.center,
            style: TextStyle(
              color: Theme.of(context)
                  .colorScheme
                  .onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}