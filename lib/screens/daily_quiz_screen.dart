import 'dart:math';

import 'package:flutter/material.dart';

import '../models/question.dart';
import '../services/question_service.dart';
import '../widgets/app_drawer.dart';

class DailyQuizScreen extends StatefulWidget {
  const DailyQuizScreen({
    super.key,
  });

  @override
  State<DailyQuizScreen> createState() =>
      _DailyQuizScreenState();
}

class _DailyQuizScreenState
    extends State<DailyQuizScreen> {
  bool loading = true;

  String? errorMessage;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        loadQuiz();
      },
    );
  }

  // =========================================================
  // LOAD DAILY QUIZ
  // =========================================================

  Future<void> loadQuiz() async {
    try {
      // Read locale BEFORE the async gap.
      final locale =
          Localizations.localeOf(context);

      final List<Question> allQuestions =
          await QuestionService().loadQuestions(
        locale,
        'DailyQuiz',
      );

      if (!mounted) return;

      // =============================================
      // NO QUESTIONS
      // =============================================

      if (allQuestions.isEmpty) {
        setState(() {
          loading = false;
          errorMessage =
              'No Daily Quiz questions are available.';
        });

        return;
      }

      // =============================================
      // RANDOMIZE QUESTIONS
      // =============================================

      allQuestions.shuffle(
        Random(),
      );

      // Keep maximum 25 questions.
      final List<Question> dailyQuestions =
          allQuestions.take(25).toList();

      if (!mounted) return;

      // =============================================
      // TEMPORARY DAILY QUIZ SCREEN
      // =============================================
      //
      // Your current file does not contain the actual
      // Daily Quiz question UI.
      //
      // We use dailyQuestions.length here so the
      // variable is no longer unused.
      // =============================================

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Scaffold(
            drawer: const AppDrawer(),

            appBar: AppBar(
              title: const Text(
                '📅 Daily Quiz',
              ),
            ),

            body: SafeArea(
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      // =================================
                      // ICON
                      // =================================

                      Icon(
                        Icons
                            .calendar_month_rounded,
                        size: 70,

                        // Theme aware.
                        color: Theme.of(context)
                            .colorScheme
                            .primary,
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // =================================
                      // TITLE
                      // =================================

                      Text(
                        'Daily Quiz Coming Soon',
                        textAlign:
                            TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight:
                                  FontWeight.bold,
                            ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),

                      // =================================
                      // QUESTION COUNT
                      // =================================

                      Text(
                        '${dailyQuestions.length} questions ready',
                        textAlign:
                            TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                              color:
                                  Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } catch (e) {
      if (!mounted) return;

      debugPrint(
        'Daily Quiz loading error: $e',
      );

      setState(() {
        loading = false;
        errorMessage =
            'Unable to load Daily Quiz.';
      });
    }
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    final colorScheme =
        Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '📅 Daily Quiz',
        ),
      ),

      body: SafeArea(
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  color:
                      colorScheme.primary,
                )
              : Padding(
                  padding:
                      const EdgeInsets.all(
                    24,
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                    children: [
                      Icon(
                        Icons
                            .error_outline_rounded,
                        size: 60,
                        color:
                            colorScheme.error,
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      Text(
                        errorMessage ??
                            'Unable to load Daily Quiz.',
                        textAlign:
                            TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              color:
                                  colorScheme
                                      .onSurface,
                            ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            loading = true;
                            errorMessage =
                                null;
                          });

                          loadQuiz();
                        },
                        icon: const Icon(
                          Icons
                              .refresh_rounded,
                        ),
                        label: const Text(
                          'Try Again',
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