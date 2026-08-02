import 'dart:math';

import 'package:flutter/material.dart';

import '../models/question.dart';
import '../services/mystery_deal_service.dart';
import '../services/point_service.dart';
import '../services/question_service.dart';

class MysteryDealScreen extends StatefulWidget {
  const MysteryDealScreen({
    super.key,
  });

  @override
  State<MysteryDealScreen> createState() =>
      _MysteryDealScreenState();
}

class _MysteryDealScreenState
    extends State<MysteryDealScreen> {
  // =========================================================
  // REWARDS
  // =========================================================

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

  // =========================================================
  // DAILY STATUS
  // =========================================================

  bool _checkingDailyStatus = true;
  bool _completedToday = false;

  int? _lastReward;
  bool? _lastWon;

  // =========================================================
  // QUESTION STATE
  // =========================================================

  Question? _question;

  bool _loadingQuestion = false;
  bool _showQuestion = false;
  bool _answerLocked = false;

  String? _selectedAnswer;
  bool? _answerCorrect;

  bool _rewardAdded = false;
  bool _attemptSaved = false;

  // =========================================================
  // INIT
  // =========================================================

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
    _boxRewards = List<int>.from(
      _rewardValues,
    );

    _boxRewards.shuffle(
      Random(),
    );
  }

  // =========================================================
  // CHECK DAILY STATUS
  // =========================================================

  Future<void> _checkDailyStatus() async {
    try {
      final bool completed =
          await MysteryDealService
              .isCompletedToday();

      int? lastReward;
      bool? lastWon;

      if (completed) {
        lastReward =
            await MysteryDealService
                .getLastReward();

        lastWon =
            await MysteryDealService
                .didWinLastAttempt();
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

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Unable to check Mystery Deal status: $e',
          ),
        ),
      );
    }
  }

  // =========================================================
  // SELECT BOX
  // =========================================================

  void _selectBox(
    int index,
  ) {
    if (_boxSelected ||
        _completedToday) {
      return;
    }

    setState(() {
      _selectedBox = index;
      _selectedReward =
          _boxRewards[index];
      _boxSelected = true;
    });

    _showRewardDialog();
  }

  // =========================================================
  // REWARD DIALOG
  // =========================================================

  Future<void> _showRewardDialog() async {
    if (_selectedBox == null ||
        _selectedReward == null) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        final ColorScheme colorScheme =
            Theme.of(dialogContext)
                .colorScheme;

        return AlertDialog(
          icon: const Text(
            '🎁',
            style: TextStyle(
              fontSize: 52,
            ),
          ),
          title: Text(
            'Box ${_selectedBox! + 1}',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              Text(
                'You found',
                style: TextStyle(
                  fontSize: 16,
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                '${_selectedReward!} POINTS',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 18,
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
                  color: colorScheme
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
                    color: colorScheme
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
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),
            ],
          ),
          actionsAlignment:
              MainAxisAlignment.center,
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

                  _startQuestion();
                },
                icon: const Icon(
                  Icons.quiz_outlined,
                ),
                label: const Text(
                  'Start Question',
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
  // LOAD RANDOM QUESTION
  // =========================================================

  Future<void> _startQuestion() async {
    if (_loadingQuestion ||
        _completedToday) {
      return;
    }

    setState(() {
      _loadingQuestion = true;
    });

    try {
      final Locale locale =
          Localizations.localeOf(
        context,
      );

      final List<Question> questions =
          await QuestionService()
              .loadQuestions(
        locale,
        'MysteryDeal',
      );

      if (!mounted) {
        return;
      }

      if (questions.isEmpty) {
        throw Exception(
          'No questions available.',
        );
      }

      final Question question =
          questions[
              Random().nextInt(
                questions.length,
              )];

      question.shuffledOptions =
          List<String>.from(
        question.options,
      );

      question.shuffledOptions
          .shuffle(
        Random(),
      );

      setState(() {
        _question = question;
        _showQuestion = true;
        _loadingQuestion = false;

        _answerLocked = false;
        _selectedAnswer = null;
        _answerCorrect = null;
      });
    } catch (e) {
      if (!mounted) {
        return;
      }

      setState(() {
        _loadingQuestion = false;
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Unable to load question: $e',
          ),
        ),
      );
    }
  }

  // =========================================================
  // SELECT ANSWER
  // =========================================================

  Future<void> _selectAnswer(
    String answer,
  ) async {
    if (_answerLocked ||
        _question == null ||
        _selectedReward == null ||
        _attemptSaved) {
      return;
    }

    final bool correct =
        answer ==
            _question!.answer;

    // Lock immediately so the user cannot
    // tap multiple options.
    setState(() {
      _selectedAnswer = answer;
      _answerCorrect = correct;
      _answerLocked = true;
    });

    try {
      // =====================================================
      // ADD POINTS ONLY WHEN CORRECT
      // =====================================================

      if (correct &&
          !_rewardAdded) {
        await PointService.addPoints(
          _selectedReward!,
        );

        _rewardAdded = true;
      }

      // =====================================================
      // SAVE DAILY ATTEMPT
      // =====================================================

      await MysteryDealService
          .markCompleted(
        reward:
            _selectedReward!,
        won: correct,
      );

      _attemptSaved = true;

      if (!mounted) {
        return;
      }

      // =====================================================
      // SHOW RESULT
      // =====================================================

      if (correct) {
        await _showCorrectDialog();
      } else {
        await _showWrongDialog();
      }

      if (!mounted) {
        return;
      }

      setState(() {
        _completedToday = true;
        _lastReward =
            _selectedReward;
        _lastWon = correct;
      });
    } catch (e) {
      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Unable to save Mystery Deal result: $e',
          ),
        ),
      );
    }
  }

  // =========================================================
  // CORRECT DIALOG
  // =========================================================

  Future<void>
      _showCorrectDialog() async {
    await Future<void>.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );

    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        final ColorScheme colorScheme =
            Theme.of(dialogContext)
                .colorScheme;

        return AlertDialog(
          icon: const Text(
            '🎉',
            style: TextStyle(
              fontSize: 55,
            ),
          ),
          title: const Text(
            'Correct Answer!',
            textAlign:
                TextAlign.center,
          ),
          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              const Text(
                'You won',
                textAlign:
                    TextAlign.center,
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                '+${_selectedReward ?? 0} POINTS',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'The reward has been added to your points.',
                textAlign:
                    TextAlign.center,
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                'Come back tomorrow for another Mystery Deal.',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: colorScheme
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
                  ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    dialogContext,
                  );
                },
                child: const Text(
                  'Done',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // =========================================================
  // WRONG DIALOG
  // =========================================================

  Future<void>
      _showWrongDialog() async {
    await Future<void>.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );

    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (
        dialogContext,
      ) {
        final ColorScheme colorScheme =
            Theme.of(dialogContext)
                .colorScheme;

        return AlertDialog(
          icon: const Text(
            '❌',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          title: const Text(
            'Wrong Answer',
            textAlign:
                TextAlign.center,
          ),
          content: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              Text(
                'The correct answer was:',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                _question?.answer ?? '',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                  color:
                      colorScheme.primary,
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              Text(
                '${_selectedReward ?? 0} point reward lost.',
                textAlign:
                    TextAlign.center,
                style:
                    const TextStyle(
                  fontSize: 17,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              Text(
                'Your existing points were not deducted.',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                'Come back tomorrow and try again.',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight:
                      FontWeight.w600,
                  color:
                      colorScheme.primary,
                ),
              ),
            ],
          ),
          actions: [
            SizedBox(
              width:
                  double.infinity,
              child:
                  ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    dialogContext,
                  );
                },
                child: const Text(
                  'Done',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // =========================================================
  // ANSWER BACKGROUND COLOR
  // =========================================================

  Color _answerBackgroundColor(
    BuildContext context,
    String option,
  ) {
    final ColorScheme colorScheme =
        Theme.of(context).colorScheme;

    if (!_answerLocked ||
        _question == null) {
      return colorScheme
          .surfaceContainerHighest;
    }

    if (option ==
        _question!.answer) {
      return Colors.green;
    }

    if (option ==
            _selectedAnswer &&
        _answerCorrect == false) {
      return Colors.red;
    }

    return colorScheme
        .surfaceContainerHighest;
  }

  // =========================================================
  // ANSWER TEXT COLOR
  // =========================================================

  Color _answerForegroundColor(
    BuildContext context,
    String option,
  ) {
    if (_answerLocked &&
        _question != null) {
      if (option ==
              _question!.answer ||
          (option ==
                  _selectedAnswer &&
              _answerCorrect ==
                  false)) {
        return Colors.white;
      }
    }

    return Theme.of(context)
        .colorScheme
        .onSurface;
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colorScheme =
        Theme.of(context).colorScheme;

    // =======================================================
    // CHECKING DAILY STATUS
    // =======================================================

    if (_checkingDailyStatus) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            '💼 Mystery Deal',
          ),
        ),
        body: const Center(
          child:
              CircularProgressIndicator(),
        ),
      );
    }

    // =======================================================
    // ALREADY COMPLETED TODAY
    // =======================================================

    if (_completedToday) {
      return _buildCompletedScreen(
        context,
        colorScheme,
      );
    }

    // =======================================================
    // ACTIVE GAME
    // =======================================================

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '💼 Mystery Deal',
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (
            context,
            constraints,
          ) {
            return Center(
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(
                  maxWidth: 800,
                ),
                child:
                    SingleChildScrollView(
                  padding:
                      const EdgeInsets.all(
                    16,
                  ),
                  child: _showQuestion
                      ? _buildQuestionArea(
                          context,
                        )
                      : _buildBoxArea(
                          context,
                          constraints,
                          colorScheme,
                        ),
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

  Widget _buildCompletedScreen(
    BuildContext context,
    ColorScheme colorScheme,
  ) {
    final bool won =
        _lastWon == true;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '💼 Mystery Deal',
        ),
      ),
      body: SafeArea(
        child: Center(
          child:
              SingleChildScrollView(
            padding:
                const EdgeInsets.all(
              24,
            ),
            child:
                ConstrainedBox(
              constraints:
                  const BoxConstraints(
                maxWidth: 500,
              ),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min,
                children: [
                  Text(
                    won
                        ? '🎉'
                        : '💼',
                    style:
                        const TextStyle(
                      fontSize: 72,
                    ),
                  ),

                  const SizedBox(
                    height: 18,
                  ),

                  const Text(
                    'Mystery Deal Completed!',
                    textAlign:
                        TextAlign.center,
                    style:
                        TextStyle(
                      fontSize: 25,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'You have already played Mystery Deal today.',
                    textAlign:
                        TextAlign.center,
                    style:
                        TextStyle(
                      fontSize: 16,
                      color: colorScheme
                          .onSurfaceVariant,
                    ),
                  ),

                  if (_lastReward !=
                      null) ...[
                    const SizedBox(
                      height: 22,
                    ),

                    Container(
                      width:
                          double.infinity,
                      padding:
                          const EdgeInsets
                              .all(
                        18,
                      ),
                      decoration:
                          BoxDecoration(
                        color: won
                            ? colorScheme
                                .primaryContainer
                            : colorScheme
                                .surfaceContainerHighest,
                        borderRadius:
                            BorderRadius
                                .circular(
                          18,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            won
                                ? 'Today you won'
                                : 'Today\'s reward',
                            style:
                                TextStyle(
                              color: won
                                  ? colorScheme
                                      .onPrimaryContainer
                                  : colorScheme
                                      .onSurfaceVariant,
                            ),
                          ),

                          const SizedBox(
                            height: 6,
                          ),

                          Text(
                            won
                                ? '+$_lastReward POINTS'
                                : '$_lastReward POINTS LOST',
                            textAlign:
                                TextAlign
                                    .center,
                            style:
                                TextStyle(
                              fontSize:
                                  25,
                              fontWeight:
                                  FontWeight
                                      .bold,
                              color: won
                                  ? colorScheme
                                      .onPrimaryContainer
                                  : colorScheme
                                      .error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  const SizedBox(
                    height: 22,
                  ),

                  Text(
                    'Come back tomorrow for another mystery box!',
                    textAlign:
                        TextAlign.center,
                    style:
                        TextStyle(
                      fontSize: 15,
                      fontWeight:
                          FontWeight.w600,
                      color:
                          colorScheme.primary,
                    ),
                  ),

                  const SizedBox(
                    height: 26,
                  ),

                  SizedBox(
                    width:
                        double.infinity,
                    child:
                        ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      icon:
                          const Icon(
                        Icons
                            .arrow_back_rounded,
                      ),
                      label:
                          const Text(
                        'Back to Games',
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
    ColorScheme colorScheme,
  ) {
    int columns = 4;

    if (constraints.maxWidth >=
        900) {
      columns = 6;
    }

    return Column(
      children: [
        const Text(
          'Choose Your Mystery Box',
          textAlign:
              TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        const SizedBox(
          height: 8,
        ),

        Text(
          'Each box contains a hidden reward between 10 and 1000 points.',
          textAlign:
              TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: colorScheme
                .onSurfaceVariant,
          ),
        ),

        const SizedBox(
          height: 8,
        ),

        Text(
          'Pick only one box!',
          textAlign:
              TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight:
                FontWeight.bold,
            color:
                colorScheme.primary,
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        GridView.builder(
          shrinkWrap: true,
          physics:
              const NeverScrollableScrollPhysics(),
          itemCount: 16,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                columns,
            crossAxisSpacing:
                10,
            mainAxisSpacing:
                10,
            childAspectRatio:
                0.95,
          ),
          itemBuilder: (
            context,
            index,
          ) {
            return _MysteryBox(
              number:
                  index + 1,
              selected:
                  _selectedBox ==
                      index,
              disabled:
                  _boxSelected &&
                      _selectedBox !=
                          index,
              reward:
                  _selectedBox ==
                          index
                      ? _selectedReward
                      : null,
              onTap: () {
                _selectBox(
                  index,
                );
              },
            );
          },
        ),

        const SizedBox(
          height: 24,
        ),

        Container(
          width:
              double.infinity,
          padding:
              const EdgeInsets.all(
            16,
          ),
          decoration:
              BoxDecoration(
            color: colorScheme
                .surfaceContainerHighest,
            borderRadius:
                BorderRadius.circular(
              18,
            ),
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
                height: 10,
              ),

              Text(
                '1. Choose one mystery box.\n'
                '2. Reveal your hidden points.\n'
                '3. Answer one DevOps question.\n'
                '4. Correct answer = win the points.\n'
                '5. Wrong answer = reward is lost.\n'
                '6. You can play once per day.',
                style:
                    TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // =========================================================
  // QUESTION AREA
  // =========================================================

  Widget _buildQuestionArea(
    BuildContext context,
  ) {
    final ColorScheme colorScheme =
        Theme.of(context).colorScheme;

    final Question? question =
        _question;

    if (_loadingQuestion ||
        question == null) {
      return const Padding(
        padding:
            EdgeInsets.all(
          40,
        ),
        child: Center(
          child:
              CircularProgressIndicator(),
        ),
      );
    }

    return Column(
      children: [
        Container(
          width:
              double.infinity,
          padding:
              const EdgeInsets.all(
            16,
          ),
          decoration:
              BoxDecoration(
            color: colorScheme
                .primaryContainer,
            borderRadius:
                BorderRadius.circular(
              18,
            ),
          ),
          child: Column(
            children: [
              Text(
                'Box ${(_selectedBox ?? 0) + 1}',
                style:
                    TextStyle(
                  fontSize: 14,
                  color: colorScheme
                      .onPrimaryContainer,
                ),
              ),

              const SizedBox(
                height: 4,
              ),

              Text(
                '🎁 ${_selectedReward ?? 0} POINTS',
                style:
                    TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.bold,
                  color: colorScheme
                      .onPrimaryContainer,
                ),
              ),

              const SizedBox(
                height: 4,
              ),

              Text(
                'Answer correctly to claim your reward',
                textAlign:
                    TextAlign.center,
                style:
                    TextStyle(
                  fontSize: 13,
                  color: colorScheme
                      .onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        Container(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          decoration:
              BoxDecoration(
            color: colorScheme
                .secondaryContainer,
            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),
          child: Text(
            question.category,
            style:
                TextStyle(
              fontSize: 13,
              fontWeight:
                  FontWeight.bold,
              color: colorScheme
                  .onSecondaryContainer,
            ),
          ),
        ),

        const SizedBox(
          height: 14,
        ),

        Card(
          elevation: 3,
          child: Padding(
            padding:
                const EdgeInsets.all(
              20,
            ),
            child: SizedBox(
              width:
                  double.infinity,
              child: Text(
                question.question,
                textAlign:
                    TextAlign.center,
                style:
                    const TextStyle(
                  fontSize: 20,
                  height: 1.35,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        ...question.shuffledOptions
            .map(
          (
            option,
          ) {
            final Color background =
                _answerBackgroundColor(
              context,
              option,
            );

            final Color foreground =
                _answerForegroundColor(
              context,
              option,
            );

            return Padding(
              padding:
                  const EdgeInsets.only(
                bottom: 12,
              ),
              child: SizedBox(
                width:
                    double.infinity,
                child:
                    ElevatedButton(
                  onPressed:
                      _answerLocked
                          ? null
                          : () {
                              _selectAnswer(
                                option,
                              );
                            },
                  style:
                      ElevatedButton
                          .styleFrom(
                    backgroundColor:
                        background,
                    disabledBackgroundColor:
                        background,
                    foregroundColor:
                        foreground,
                    disabledForegroundColor:
                        foreground,
                    minimumSize:
                        const Size(
                      double.infinity,
                      58,
                    ),
                    padding:
                        const EdgeInsets
                            .symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    elevation:
                        _answerLocked
                            ? 0
                            : 2,
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                        15,
                      ),
                    ),
                  ),
                  child: Text(
                    option,
                    textAlign:
                        TextAlign.center,
                    style:
                        const TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

// ============================================================
// MYSTERY BOX
// ============================================================

class _MysteryBox
    extends StatelessWidget {
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
  Widget build(
    BuildContext context,
  ) {
    final ColorScheme colorScheme =
        Theme.of(context).colorScheme;

    Color backgroundColor;
    Color foregroundColor;

    if (selected) {
      backgroundColor =
          colorScheme.primary;

      foregroundColor =
          colorScheme.onPrimary;
    } else if (disabled) {
      backgroundColor =
          colorScheme
              .surfaceContainerHighest;

      foregroundColor =
          colorScheme
              .onSurfaceVariant
              .withValues(
            alpha: 0.45,
          );
    } else {
      backgroundColor =
          colorScheme.primaryContainer;

      foregroundColor =
          colorScheme.onPrimaryContainer;
    }

    return AnimatedOpacity(
      duration:
          const Duration(
        milliseconds: 250,
      ),
      opacity:
          disabled ? 0.45 : 1,
      child: Material(
        color:
            backgroundColor,
        borderRadius:
            BorderRadius.circular(
          16,
        ),
        child: InkWell(
          onTap:
              disabled || selected
                  ? null
                  : onTap,
          borderRadius:
              BorderRadius.circular(
            16,
          ),
          child: AnimatedContainer(
            duration:
                const Duration(
              milliseconds: 250,
            ),
            padding:
                const EdgeInsets.all(
              8,
            ),
            decoration:
                BoxDecoration(
              borderRadius:
                  BorderRadius.circular(
                16,
              ),
              border: Border.all(
                color: selected
                    ? colorScheme
                        .secondary
                    : colorScheme
                        .outlineVariant,
                width:
                    selected
                        ? 3
                        : 1,
              ),
              boxShadow:
                  selected
                      ? [
                          BoxShadow(
                            color: colorScheme
                                .primary
                                .withValues(
                              alpha:
                                  0.30,
                            ),
                            blurRadius:
                                14,
                            spreadRadius:
                                2,
                          ),
                        ]
                      : null,
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment
                      .center,
              children: [
                Text(
                  selected
                      ? '🎁'
                      : '💼',
                  style:
                      const TextStyle(
                    fontSize: 30,
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),

                if (reward == null)
                  Text(
                    number
                        .toString()
                        .padLeft(
                          2,
                          '0',
                        ),
                    style:
                        TextStyle(
                      fontSize: 17,
                      fontWeight:
                          FontWeight.bold,
                      color:
                          foregroundColor,
                    ),
                  )
                else
                  FittedBox(
                    child: Text(
                      '$reward',
                      style:
                          TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold,
                        color:
                            foregroundColor,
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