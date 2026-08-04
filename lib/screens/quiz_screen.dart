import 'dart:async';

import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/challenge.dart';
import '../models/question.dart';
import '../services/achievement_service.dart';
import '../services/daily_quiz_service.dart';
import '../services/point_service.dart';
import '../services/question_service.dart';
import '../widgets/achievement_dialog.dart';
import '../widgets/app_drawer.dart';
import '../widgets/quiz/challenge_banner.dart';
import '../widgets/quiz/navigation_buttons.dart';
import '../widgets/quiz/option_button.dart';
import '../widgets/quiz/question_card.dart';
import '../widgets/quiz/quiz_header.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final String category;
  final int setNumber;
  final Challenge? challenge;

  const QuizScreen({
    super.key,
    required this.category,
    required this.setNumber,
    this.challenge,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool get isChallenge => widget.challenge != null;

  bool get isSpeedChallenge => widget.challenge?.id == 'speed';

  bool get isSurvivalMode => widget.challenge?.survival ?? false;

  List<Question> questions = [];

  int currentQuestion = 0;

  bool loading = true;

  int points = 0;

  int score = 0;

  String? selectedAnswer;

  bool answered = false;

  final Map<int, String> userAnswers = {};

  final Map<int, List<String>> displayedOptions = {};

  final Set<int> timedOutQuestions = {};

  Timer? timer;

  int timeLeft = 30;

  bool _quizFinished = false;

  bool _exitDialogOpen = false;

  // =========================================================
  // FINAL POINTS
  // =========================================================

  int getFinalPoints() {
    int finalPoints = points;

    if (widget.category == 'DailyQuiz') {
      if (score == questions.length) {
        finalPoints += 500;
      } else {
        finalPoints += points;
      }
    }

    return finalPoints;
  }

  // =========================================================
  // INIT
  // =========================================================

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadQuestions();
    });
  }

  // =========================================================
  // LOAD QUESTIONS
  // =========================================================

  Future<void> loadQuestions() async {
    try {
      final locale = Localizations.localeOf(context);

      List<Question> allQuestions = await QuestionService().loadQuestions(
        locale,
        widget.category,
      );

      if (!mounted) return;

      if (widget.category == 'DevOps' || widget.category == 'DailyQuiz') {
        questions = {
          for (final q in allQuestions) q.question: q,
        }.values.toList();

        questions.shuffle();

        if (isChallenge) {
          questions = questions.take(widget.challenge!.questionCount).toList();
        } else {
          questions = questions.take(25).toList();
        }
      } else {
        questions = allQuestions
            .where((q) => q.set == widget.setNumber)
            .toList();

        questions.shuffle();

        if (isChallenge) {
          questions = questions.take(widget.challenge!.questionCount).toList();
        }
      }

      displayedOptions.clear();

      for (int i = 0; i < questions.length; i++) {
        displayedOptions[i] = List<String>.from(questions[i].shuffledOptions);
      }

      if (!mounted) return;

      setState(() {
        loading = false;
      });

      if (questions.isNotEmpty) {
        startTimer();
      }
    } catch (e) {
      debugPrint('Question loading error: $e');

      if (!mounted) return;

      setState(() {
        loading = false;
      });
    }
  }

  // =========================================================
  // TIMER
  // =========================================================

  void startTimer() {
    timer?.cancel();

    if (_quizFinished) {
      return;
    }

    // =======================================================
    // SPEED CHALLENGE
    // =======================================================

    if (isSpeedChallenge) {
      timeLeft = 60;

      timer = Timer.periodic(const Duration(seconds: 1), (t) {
        if (!mounted || _quizFinished) {
          t.cancel();
          return;
        }

        if (timeLeft > 0) {
          setState(() {
            timeLeft--;
          });
        } else {
          t.cancel();
          finishQuiz();
        }
      });

      return;
    }

    // =======================================================
    // NORMAL QUIZ
    // =======================================================

    timeLeft = 30;

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted || _quizFinished) {
        t.cancel();
        return;
      }

      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        t.cancel();
        autoSubmit();
      }
    });
  }

  // =========================================================
  // AUTO SUBMIT
  // =========================================================

  void autoSubmit() {
    if (_quizFinished) return;

    if (userAnswers.containsKey(currentQuestion) ||
        timedOutQuestions.contains(currentQuestion)) {
      return;
    }

    setState(() {
      timedOutQuestions.add(currentQuestion);

      answered = true;
    });

    if (isSurvivalMode) {
      Future.delayed(const Duration(milliseconds: 400), () async {
        if (!mounted) return;

        await finishQuiz();
      });

      return;
    }

    Future.delayed(const Duration(milliseconds: 400), () async {
      if (!mounted || _quizFinished) {
        return;
      }

      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;

          selectedAnswer = userAnswers[currentQuestion];

          answered =
              userAnswers.containsKey(currentQuestion) ||
              timedOutQuestions.contains(currentQuestion);
        });

        if (!answered && !isSpeedChallenge) {
          startTimer();
        }
      } else {
        await finishQuiz();
      }
    });
  }

  // =========================================================
  // FINISH QUIZ
  // =========================================================

  Future<void> finishQuiz() async {
    if (_quizFinished) return;

    _quizFinished = true;

    timer?.cancel();

    if (widget.category == 'DailyQuiz') {
      await DailyQuizService.markCompleted();
    }

    final int finalPoints = getFinalPoints();

    await PointService.addPoints(finalPoints);

    final achievements = await AchievementService.checkAchievements(
      score: score,
      totalQuestions: questions.length,
    );

    for (final achievement in achievements) {
      if (!mounted) return;

      await showAchievementDialog(context, achievement);
    }

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          score: score,
          totalQuestions: questions.length,
          points: finalPoints,
          category: widget.category,
          setNumber: widget.setNumber,
          questions: List<Question>.from(questions),
          userAnswers: Map<int, String>.from(userAnswers),
          displayedOptions: displayedOptions.map(
            (key, value) => MapEntry(key, List<String>.from(value)),
          ),
          timedOutQuestions: Set<int>.from(timedOutQuestions),
        ),
      ),
    );
  }

  // =========================================================
  // SELECT ANSWER
  // =========================================================

  Future<void> selectAnswer(String text) async {
    if (_quizFinished) return;

    if (userAnswers.containsKey(currentQuestion) ||
        timedOutQuestions.contains(currentQuestion)) {
      return;
    }

    final bool isCorrect = text == questions[currentQuestion].answer;

    if (!isSpeedChallenge) {
      timer?.cancel();
    }

    setState(() {
      userAnswers[currentQuestion] = text;

      selectedAnswer = text;

      answered = true;

      if (isCorrect) {
        score++;
        points += 10;
      }
    });

    if (isSurvivalMode && !isCorrect) {
      await Future.delayed(const Duration(milliseconds: 500));

      if (!mounted) return;

      await finishQuiz();

      return;
    }

    Future.delayed(const Duration(milliseconds: 200), () async {
      if (!mounted || _quizFinished) {
        return;
      }

      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;

          selectedAnswer = userAnswers[currentQuestion];

          answered =
              userAnswers.containsKey(currentQuestion) ||
              timedOutQuestions.contains(currentQuestion);
        });

        if (!answered && !isSpeedChallenge) {
          startTimer();
        }
      } else {
        await finishQuiz();
      }
    });
  }

  // =========================================================
  // OPTION COLOR
  // =========================================================

  Color getOptionColor(String text) {
    final colorScheme = Theme.of(context).colorScheme;

    final bool timedOut = timedOutQuestions.contains(currentQuestion);

    final bool locked = userAnswers.containsKey(currentQuestion) || timedOut;

    if (!locked) {
      return colorScheme.surfaceContainerHighest;
    }

    if (text == questions[currentQuestion].answer) {
      return Colors.green.shade600;
    }

    if (text == userAnswers[currentQuestion] &&
        text != questions[currentQuestion].answer) {
      return Colors.red.shade600;
    }

    return colorScheme.surfaceContainerHighest;
  }

  // =========================================================
  // PREVIOUS QUESTION
  // =========================================================

  void goToPreviousQuestion() {
    if (currentQuestion <= 0 || _quizFinished) {
      return;
    }

    if (!isSpeedChallenge) {
      timer?.cancel();
    }

    setState(() {
      currentQuestion--;

      selectedAnswer = userAnswers[currentQuestion];

      answered =
          userAnswers.containsKey(currentQuestion) ||
          timedOutQuestions.contains(currentQuestion);
    });

    if (!answered && !isSpeedChallenge) {
      startTimer();
    }
  }

  // =========================================================
  // NEXT QUESTION
  // =========================================================

  Future<void> goToNextQuestion() async {
    if (_quizFinished) return;

    if (currentQuestion == questions.length - 1) {
      await finishQuiz();

      return;
    }

    if (!isSpeedChallenge) {
      timer?.cancel();
    }

    setState(() {
      currentQuestion++;

      selectedAnswer = userAnswers[currentQuestion];

      answered =
          userAnswers.containsKey(currentQuestion) ||
          timedOutQuestions.contains(currentQuestion);
    });

    if (!answered && !isSpeedChallenge) {
      startTimer();
    }
  }

  // =========================================================
  // EXIT CONFIRMATION
  // =========================================================

  Future<bool> _showExitConfirmation() async {
    // Quiz has already finished.
    // Allow normal navigation.
    if (_quizFinished) {
      return true;
    }

    // Prevent multiple dialogs.
    if (_exitDialogOpen) {
      return false;
    }

    _exitDialogOpen = true;

    // Pause normal question timer while
    // the confirmation popup is visible.
    //
    // For speed challenge we keep the timer
    // running because it is a timed challenge.
    if (!isSpeedChallenge) {
      timer?.cancel();
    }

    final bool? shouldExit = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        final colorScheme = Theme.of(dialogContext).colorScheme;

        return AlertDialog(
          icon: Icon(
            Icons.warning_amber_rounded,
            size: 46,
            color: colorScheme.error,
          ),

          title: const Text('Exit Quiz?', textAlign: TextAlign.center),

          content: const Text(
            'Are you sure you want to exit the quiz?\n\n'
            'Your current progress will be lost.',
            textAlign: TextAlign.center,
          ),

          actionsAlignment: MainAxisAlignment.spaceEvenly,

          actions: [
            // ===============================================
            // CONTINUE QUIZ
            // ===============================================
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(false);
              },
              child: const Text('Continue Quiz'),
            ),

            // ===============================================
            // EXIT
            // ===============================================
            FilledButton.icon(
              onPressed: () {
                Navigator.of(dialogContext).pop(true);
              },
              style: FilledButton.styleFrom(
                backgroundColor: colorScheme.error,
                foregroundColor: colorScheme.onError,
              ),
              icon: const Icon(Icons.exit_to_app_rounded),
              label: const Text('Exit'),
            ),
          ],
        );
      },
    );

    _exitDialogOpen = false;

    if (!mounted) {
      return shouldExit ?? false;
    }

    // User selected Continue Quiz.
    if (shouldExit != true) {
      // Restart the timer only for normal quiz.
      //
      // This gives the current question a fresh
      // 15 seconds after closing the dialog.
      if (!isSpeedChallenge && !_quizFinished && !answered) {
        startTimer();
      }

      return false;
    }

    // User selected Exit.
    timer?.cancel();

    return true;
  }

  // =========================================================
  // HANDLE SYSTEM BACK
  // =========================================================

  Future<void> _handleBackAttempt() async {
    final bool shouldExit = await _showExitConfirmation();

    if (!mounted || !shouldExit) {
      return;
    }

    timer?.cancel();

    Navigator.of(context).pop();
  }

  // =========================================================
  // DISPOSE
  // =========================================================

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final colorScheme = theme.colorScheme;

    // =======================================================
    // LOADING
    // =======================================================

    if (loading) {
      return Scaffold(
        drawer: const AppDrawer(),
        body: Center(
          child: CircularProgressIndicator(color: colorScheme.primary),
        ),
      );
    }

    // =======================================================
    // EMPTY QUESTIONS
    // =======================================================

    if (questions.isEmpty) {
      return Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(title: Text(widget.category)),
        body: Center(
          child: Text(
            'No questions available.',
            style: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
      );
    }

    // =======================================================
    // QUIZ
    // =======================================================

    return PopScope(
      // Prevent Flutter from immediately leaving.
      // We decide after showing the confirmation.
      canPop: _quizFinished,

      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }

        await _handleBackAttempt();
      },

      child: Scaffold(
        drawer: const AppDrawer(),

        appBar: AppBar(
          title: Text(
            isChallenge
                ? widget.challenge!.title
                : widget.category == 'DailyQuiz'
                ? '📅 ${AppLocalizations.of(context)!.dailyQuiz}'
                : widget.category == 'DevOps'
                ? '🚀 ${AppLocalizations.of(context)!.appName}'
                : '${widget.category} - Set ${widget.setNumber}',
          ),
        ),

        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,

            // ===============================================
            // THEME-AWARE BACKGROUND
            // ===============================================
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [colorScheme.surface, theme.scaffoldBackgroundColor],
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  // =========================================
                  // CHALLENGE
                  // =========================================
                  if (isChallenge)
                    ChallengeBanner(challenge: widget.challenge!),

                  // =========================================
                  // HEADER
                  // =========================================
                  QuizHeader(
                    timeLeft: timeLeft,
                    points: points,
                    currentQuestion: currentQuestion + 1,
                    totalQuestions: questions.length,
                  ),

                  const SizedBox(height: 14),

                  // =========================================
                  // QUESTION
                  // =========================================
                  QuestionCard(
                    question: questions[currentQuestion],
                    currentQuestion: currentQuestion + 1,
                    totalQuestions: questions.length,
                    category: widget.category,
                    isChallenge: isChallenge,
                    challenge: widget.challenge,
                  ),

                  const SizedBox(height: 14),

                  // =========================================
                  // OPTIONS
                  // =========================================
                  Expanded(
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        ...(displayedOptions[currentQuestion] ?? <String>[])
                            .map((option) {
                              final bool isLocked =
                                  userAnswers.containsKey(currentQuestion) ||
                                  timedOutQuestions.contains(currentQuestion);

                              return OptionButton(
                                text: option,
                                backgroundColor: getOptionColor(option),
                                isLocked: isLocked,
                                isCorrectAnswer:
                                    isLocked &&
                                    option == questions[currentQuestion].answer,
                                onPressed: () {
                                  selectAnswer(option);
                                },
                              );
                            }),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // =========================================
                  // NAVIGATION
                  // =========================================
                  NavigationButtons(
                    canGoBack: currentQuestion > 0,
                    isLastQuestion: currentQuestion == questions.length - 1,
                    onBack: goToPreviousQuestion,
                    onNext: () async {
                      await goToNextQuestion();
                    },
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
