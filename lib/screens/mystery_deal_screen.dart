import 'dart:math';

import 'package:flutter/material.dart';

import '../services/mystery_deal_service.dart';
import 'games_screen.dart';
import 'reward_question_screen.dart';

class MysteryDealScreen extends StatefulWidget {
  const MysteryDealScreen({super.key});

  @override
  State<MysteryDealScreen> createState() => _MysteryDealScreenState();
}

class _MysteryDealScreenState extends State<MysteryDealScreen> {
  final List<int> _rewardValues = [
    10,
    20,
    30,
    40,
    50,
    75,
    100,
    150,
    200,
    250,
    300,
    400,
    500,
    600,
    750,
    1000,
  ];

  late List<int> _boxRewards;

  int? _selectedBox;
  int? _selectedReward;

  bool _boxSelected = false;

  bool _checkingDailyStatus = true;
  bool _completedToday = false;

  int? _lastReward;
  bool? _lastWon;

  @override
  void initState() {
    super.initState();

    _prepareGame();
    _checkDailyStatus();
  }

  // =========================================================
  // PREPARE GAME
  // =========================================================

  void _prepareGame() {
    final List<int> rewards = List<int>.from(_rewardValues);

    rewards.shuffle(Random());

    _boxRewards = rewards.take(4).toList();
  }

  // =========================================================
  // CHECK DAILY STATUS
  // =========================================================

  Future<void> _checkDailyStatus() async {
    try {
      final bool completed = await MysteryDealService.isCompletedToday();

      int? lastReward;
      bool? lastWon;

      if (completed) {
        lastReward = await MysteryDealService.getLastReward();

        lastWon = await MysteryDealService.didWinLastAttempt();
      }

      if (!mounted) {
        return;
      }

      setState(() {
        _completedToday = completed;
        _lastReward = lastReward;
        _lastWon = lastWon;
        _checkingDailyStatus = false;
      });
    } catch (e) {
      if (!mounted) {
        return;
      }

      setState(() {
        _checkingDailyStatus = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unable to check Mystery Deal status: $e')),
      );
    }
  }

  // =========================================================
  // SELECT BOX
  // =========================================================

  void _selectBox(int index) {
    if (_boxSelected || _completedToday) {
      return;
    }

    setState(() {
      _selectedBox = index;
      _selectedReward = _boxRewards[index];

      _boxSelected = true;
    });

    _showRewardDialog();
  }

  // =========================================================
  // REWARD DIALOG
  // =========================================================

  Future<void> _showRewardDialog() async {
    if (_selectedBox == null || _selectedReward == null) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        final ColorScheme colors = Theme.of(dialogContext).colorScheme;

        return AlertDialog(
          // Gift icon is inside content instead of
          // AlertDialog.icon so it stays centered.
          contentPadding: const EdgeInsets.fromLTRB(24, 28, 24, 10),

          content: SizedBox(
            width: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ===========================================
                // CENTERED GIFT BOX
                // ===========================================
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '🎁',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // ===========================================
                // BOX NUMBER
                // ===========================================
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Box ${_selectedBox! + 1}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // ===========================================
                // YOU FOUND
                // ===========================================
                Text(
                  'You found',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: colors.onSurfaceVariant,
                  ),
                ),

                const SizedBox(height: 8),

                // ===========================================
                // REWARD
                // ===========================================
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '${_selectedReward!} POINTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: colors.primary,
                    ),
                  ),
                ),

                const SizedBox(height: 22),

                // ===========================================
                // INFORMATION
                // ===========================================
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Answer 1 quiz question correctly '
                    'to claim this reward.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: colors.onPrimaryContainer,
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                Text(
                  'Wrong answer = reward lost.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),

          actionsPadding: const EdgeInsets.fromLTRB(24, 14, 24, 20),

          actions: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(dialogContext);

                  _openRewardQuestion();
                },
                icon: const Icon(Icons.quiz_outlined),
                label: const Text(
                  'Start Question',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // =========================================================
  // OPEN COMMON REWARD QUESTION SCREEN
  // =========================================================

  Future<void> _openRewardQuestion() async {
    final int? reward = _selectedReward;

    if (reward == null || !mounted) {
      return;
    }

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            RewardQuestionScreen(reward: reward, gameName: 'Mystery Deal'),
      ),
    );

    if (!mounted) {
      return;
    }

    await _checkDailyStatus();
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    if (_checkingDailyStatus) {
      return Scaffold(
        appBar: AppBar(title: const Text('💼 Mystery Deal')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_completedToday) {
      return _buildCompletedScreen(context, colors);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('💼 Mystery Deal')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: _buildBoxArea(context, constraints, colors),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // =========================================================
  // COMPLETED SCREEN
  // =========================================================

  Widget _buildCompletedScreen(BuildContext context, ColorScheme colors) {
    final bool won = _lastWon == true;

    return Scaffold(
      appBar: AppBar(title: const Text('💼 Mystery Deal')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(won ? '🎉' : '💼', style: const TextStyle(fontSize: 72)),

                  const SizedBox(height: 18),

                  const Text(
                    'Mystery Deal Completed!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'You have already played '
                    'Mystery Deal today.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: colors.onSurfaceVariant,
                    ),
                  ),

                  if (_lastReward != null) ...[
                    const SizedBox(height: 22),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: won
                            ? colors.primaryContainer
                            : colors.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Text(
                            won ? 'Today you won' : 'Today\'s reward',
                            style: TextStyle(
                              color: won
                                  ? colors.onPrimaryContainer
                                  : colors.onSurfaceVariant,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            won
                                ? '+$_lastReward POINTS'
                                : '$_lastReward POINTS LOST',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: won
                                  ? colors.onPrimaryContainer
                                  : colors.error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  const SizedBox(height: 22),

                  Text(
                    'Come back tomorrow for '
                    'another mystery box!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: colors.primary,
                    ),
                  ),

                  const SizedBox(height: 26),

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
                      icon: const Icon(Icons.sports_esports_outlined),
                      label: const Text(
                        'Play More Games',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
  // BOX AREA
  // =========================================================

  Widget _buildBoxArea(
    BuildContext context,
    BoxConstraints constraints,
    ColorScheme colors,
  ) {
    int columns = 2;

    if (constraints.maxWidth >= 700) {
      columns = 4;
    }

    return Column(
      children: [
        const Text(
          'Choose Your Mystery Box',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        Text(
          'Each box contains a hidden reward '
          'between 10 and 1000 points.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: colors.onSurfaceVariant),
        ),

        const SizedBox(height: 8),

        Text(
          'Pick only one box!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: colors.primary,
          ),
        ),

        const SizedBox(height: 24),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            return _MysteryBox(
              number: index + 1,
              selected: _selectedBox == index,
              disabled: _boxSelected && _selectedBox != index,
              reward: _selectedBox == index ? _selectedReward : null,
              onTap: () {
                _selectBox(index);
              },
            );
          },
        ),

        const SizedBox(height: 24),

        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colors.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(18),
          ),
        ),

        const SizedBox(height: 24),

        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const GamesScreen()),
              );
            },
            icon: const Icon(Icons.sports_esports_outlined),
            label: const Text(
              'Play More Games',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}

// ============================================================
// MYSTERY BOX
// ============================================================

class _MysteryBox extends StatelessWidget {
  final int number;
  final bool selected;
  final bool disabled;
  final int? reward;
  final VoidCallback onTap;

  const _MysteryBox({
    required this.number,
    required this.selected,
    required this.disabled,
    required this.reward,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    Color backgroundColor;
    Color foregroundColor;

    if (selected) {
      backgroundColor = colors.primary;

      foregroundColor = colors.onPrimary;
    } else if (disabled) {
      backgroundColor = colors.surfaceContainerHighest;

      foregroundColor = colors.onSurfaceVariant.withValues(alpha: 0.45);
    } else {
      backgroundColor = colors.primaryContainer;

      foregroundColor = colors.onPrimaryContainer;
    }

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: disabled ? 0.45 : 1,
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: disabled || selected ? null : onTap,
          borderRadius: BorderRadius.circular(16),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: selected ? colors.secondary : colors.outlineVariant,
                width: selected ? 3 : 1,
              ),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: colors.primary.withValues(alpha: 0.30),
                        blurRadius: 14,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  selected ? '🎁' : '💼',
                  style: const TextStyle(fontSize: 30),
                ),

                const SizedBox(height: 5),

                if (reward == null)
                  Text(
                    number.toString().padLeft(2, '0'),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: foregroundColor,
                    ),
                  )
                else
                  FittedBox(
                    child: Text(
                      '$reward',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: foregroundColor,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
