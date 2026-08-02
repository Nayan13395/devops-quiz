import 'dart:math';

import 'package:flutter/material.dart';

import '../models/question.dart';
import '../services/point_service.dart';
import '../services/question_service.dart';

class RewardQuestionScreen extends StatefulWidget {
  final int reward;
  final String gameName;

  const RewardQuestionScreen({
    super.key,
    required this.reward,
    required this.gameName,
  });

  @override
  State<RewardQuestionScreen> createState() =>
      _RewardQuestionScreenState();
}

class _RewardQuestionScreenState
    extends State<RewardQuestionScreen> {
  Question? _question;

  bool _loading = true;
  bool _answerLocked = false;
  bool _pointsAdded = false;

  String? _selectedAnswer;
  bool? _correct;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _loadQuestion();
      },
    );
  }

  // =========================================================
  // LOAD RANDOM QUESTION
  // =========================================================

  Future<void> _loadQuestion() async {
    try {
      final locale =
          Localizations.localeOf(context);

      final questions =
          await QuestionService().loadQuestions(
        locale,
        'RewardGame',
      );

      if (!mounted) {
        return;
      }

      if (questions.isEmpty) {
        throw Exception(
          'No questions available.',
        );
      }

      final question =
          questions[
              Random().nextInt(
                questions.length,
              )];

      question.shuffledOptions =
          List<String>.from(
        question.options,
      );

      question.shuffledOptions.shuffle();

      setState(() {
        _question = question;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) {
        return;
      }

      setState(() {
        _loading = false;
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
        _question == null) {
      return;
    }

    final correct =
        answer == _question!.answer;

    setState(() {
      _selectedAnswer = answer;
      _correct = correct;
      _answerLocked = true;
    });

    // Add reward only when correct.
    if (correct && !_pointsAdded) {
      await PointService.addPoints(
        widget.reward,
      );

      _pointsAdded = true;
    }

    if (!mounted) {
      return;
    }

    await Future<void>.delayed(
      const Duration(
        milliseconds: 500,
      ),
    );

    if (!mounted) {
      return;
    }

    await _showResultDialog();
  }

  // =========================================================
  // RESULT DIALOG
  // =========================================================

  Future<void> _showResultDialog() async {
    final bool correct =
        _correct == true;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        final colors =
            Theme.of(dialogContext)
                .colorScheme;

        return AlertDialog(
          // IMPORTANT:
          // Do not use AlertDialog.icon here.
          // We put everything inside content so that
          // the icon is always perfectly centered.

          contentPadding:
              const EdgeInsets.fromLTRB(
            24,
            28,
            24,
            10,
          ),

          content: SizedBox(
            width: 380,
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                // ===========================================
                // CENTERED RESULT ICON
                // ===========================================

                SizedBox(
                  width:
                      double.infinity,
                  child: Center(
                    child: correct
                        ? const Text(
                            '🎉',
                            textAlign:
                                TextAlign.center,
                            style:
                                TextStyle(
                              fontSize: 70,
                            ),
                          )
                        : const Icon(
                            Icons
                                .close_rounded,
                            size: 90,
                            color:
                                Colors.red,
                          ),
                  ),
                ),

                const SizedBox(
                  height: 18,
                ),

                // ===========================================
                // TITLE
                // ===========================================

                SizedBox(
                  width:
                      double.infinity,
                  child: Text(
                    correct
                        ? 'Correct Answer!'
                        : 'Wrong Answer',
                    textAlign:
                        TextAlign.center,
                    style:
                        const TextStyle(
                      fontSize: 28,
                      fontWeight:
                          FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                // ===========================================
                // CORRECT RESULT
                // ===========================================

                if (correct) ...[
                  const Text(
                    'You claimed your reward!',
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),

                  const SizedBox(
                    height: 14,
                  ),

                  Text(
                    '⭐ +${widget.reward}',
                    textAlign:
                        TextAlign.center,
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
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'Added to your total points.',
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      color: colors
                          .onSurfaceVariant,
                    ),
                  ),
                ]

                // ===========================================
                // WRONG RESULT
                // ===========================================

                else ...[
                  const Text(
                    'The correct answer was:',
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  SizedBox(
                    width:
                        double.infinity,
                    child: Text(
                      _question?.answer ??
                          '',
                      textAlign:
                          TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                        color:
                            colors.primary,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  SizedBox(
                    width:
                        double.infinity,
                    child: Text(
                      '${widget.reward} point reward lost.',
                      textAlign:
                          TextAlign.center,
                      style:
                          const TextStyle(
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  const SizedBox(
                    width:
                        double.infinity,
                    child: Text(
                      'Your existing points were not deducted.',
                      textAlign:
                          TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),

          // ===============================================
          // DONE BUTTON
          // ===============================================

          actionsPadding:
              const EdgeInsets.fromLTRB(
            24,
            8,
            24,
            20,
          ),

          actions: [
            SizedBox(
              width:
                  double.infinity,
              height: 50,
              child:
                  ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    dialogContext,
                  );

                  Navigator.pop(
                    context,
                    correct,
                  );
                },
                child:
                    const Text(
                  'Done',
                  style: TextStyle(
                    fontSize: 16,
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
  // OPTION BACKGROUND COLOR
  // =========================================================

  Color _backgroundColor(
    String option,
  ) {
    final colors =
        Theme.of(context)
            .colorScheme;

    if (!_answerLocked ||
        _question == null) {
      return colors
          .surfaceContainerHighest;
    }

    // Correct answer
    if (option ==
        _question!.answer) {
      return Colors.green;
    }

    // Selected wrong answer
    if (option ==
            _selectedAnswer &&
        _correct == false) {
      return Colors.red;
    }

    return colors
        .surfaceContainerHighest;
  }

  // =========================================================
  // OPTION TEXT COLOR
  // =========================================================

  Color _foregroundColor(
    String option,
  ) {
    if (_answerLocked &&
        _question != null) {
      if (option ==
              _question!.answer ||
          (option ==
                  _selectedAnswer &&
              _correct ==
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '🎯 ${widget.gameName}',
        ),
      ),

      body: SafeArea(
        child: Center(
          child:
              ConstrainedBox(
            constraints:
                const BoxConstraints(
              maxWidth: 600,
            ),

            child: _loading
                ? const Center(
                    child:
                        CircularProgressIndicator(),
                  )
                : _question ==
                        null
                    ? const Center(
                        child:
                            Text(
                          'Unable to load question.',
                        ),
                      )
                    : SingleChildScrollView(
                        padding:
                            const EdgeInsets.all(
                          20,
                        ),
                        child:
                            _buildQuestion(),
                      ),
          ),
        ),
      ),
    );
  }

  // =========================================================
  // QUESTION UI
  // =========================================================

  Widget _buildQuestion() {
    final question =
        _question!;

    final colors =
        Theme.of(context)
            .colorScheme;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        // ===============================================
        // REWARD CARD
        // ===============================================

        Container(
          width:
              double.infinity,
          padding:
              const EdgeInsets.all(
            18,
          ),
          decoration:
              BoxDecoration(
            color: colors
                .primaryContainer,
            borderRadius:
                BorderRadius.circular(
              18,
            ),
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .center,
            children: [
              const Text(
                'Your Reward',
                textAlign:
                    TextAlign.center,
              ),

              const SizedBox(
                height: 6,
              ),

              Text(
                '⭐ ${widget.reward} POINTS',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight:
                      FontWeight.bold,
                  color: colors
                      .onPrimaryContainer,
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              const Text(
                'Answer correctly to claim it!',
                textAlign:
                    TextAlign.center,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        // ===============================================
        // CATEGORY
        // ===============================================

        Container(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          decoration:
              BoxDecoration(
            color: colors
                .secondaryContainer,
            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),
          child: Text(
            question.category,
            textAlign:
                TextAlign.center,
            style: TextStyle(
              fontWeight:
                  FontWeight.bold,
              color: colors
                  .onSecondaryContainer,
            ),
          ),
        ),

        const SizedBox(
          height: 14,
        ),

        // ===============================================
        // QUESTION
        // ===============================================

        Card(
          elevation: 3,
          child: Padding(
            padding:
                const EdgeInsets.all(
              20,
            ),
            child:
                SizedBox(
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

        // ===============================================
        // OPTIONS
        // ===============================================

        ...question
            .shuffledOptions
            .map(
          (option) {
            final background =
                _backgroundColor(
              option,
            );

            final foreground =
                _foregroundColor(
              option,
            );

            return Padding(
              padding:
                  const EdgeInsets.only(
                bottom: 12,
              ),
              child:
                  SizedBox(
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