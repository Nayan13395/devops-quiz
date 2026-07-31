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

  bool get isSpeedChallenge =>
      widget.challenge?.id == "speed";

  bool get isSurvivalMode =>
      widget.challenge?.survival ?? false;

  List<Question> questions = [];

  int currentQuestion = 0;

  bool loading = true;

  int points = 0;

  int score = 0;

  String? selectedAnswer;

  bool answered = false;

  Map<int, String> userAnswers = {};

  Set<int> timedOutQuestions = {};

  Timer? timer;

  int timeLeft = 15;

  int getFinalPoints() {
    int finalPoints = points;

    if (widget.category == "DailyQuiz") {
      if (score == questions.length) {
        finalPoints += 500;
      } else {
        finalPoints += points;
      }
    }

    return finalPoints;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadQuestions();
    });
  }

  Future<void> loadQuestions() async {
    try {
      final locale = Localizations.localeOf(context);

      List<Question> allQuestions =
          await QuestionService().loadQuestions(
        locale,
        widget.category,
      );

      if (widget.category == "DevOps" ||
          widget.category == "DailyQuiz") {
        questions = {
          for (var q in allQuestions) q.question: q,
        }.values.toList();

        questions.shuffle();

        if (isChallenge) {
          questions = questions
              .take(widget.challenge!.questionCount)
              .toList();
        } else {
          questions = questions.take(25).toList();
        }
      } else {
        questions = allQuestions
            .where(
              (q) => q.set == widget.setNumber,
            )
            .toList();

        questions.shuffle();

        if (isChallenge) {
          questions = questions
              .take(widget.challenge!.questionCount)
              .toList();
        }
      }

      setState(() {
        loading = false;
      });

      startTimer();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void startTimer() {
    timer?.cancel();

    timeLeft = 15;

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        if (timeLeft > 0) {
          setState(() {
            timeLeft--;
          });
        } else {
          t.cancel();
          autoSubmit();
        }
      },
    );
  }
  void autoSubmit() {
  if (userAnswers.containsKey(currentQuestion) ||
      timedOutQuestions.contains(currentQuestion)) {
    return;
  }

  setState(() {
    timedOutQuestions.add(currentQuestion);
    answered = true;
  });

  Future.delayed(
    const Duration(milliseconds: 400),
    () async {
      if (!mounted) return;

      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;

          selectedAnswer = userAnswers[currentQuestion];

          answered =
              userAnswers.containsKey(currentQuestion) ||
                  timedOutQuestions.contains(currentQuestion);

          if (!answered) {
            startTimer();
          }
        });
      } else {
        await finishQuiz();
      }
    },
  );
}

Future<void> finishQuiz() async {
  timer?.cancel();

  if (widget.category == "DailyQuiz") {
    await DailyQuizService.markCompleted();
  }

  await PointService.addPoints(
    getFinalPoints(),
  );

  final achievements =
      await AchievementService.checkAchievements(
    score: score,
    totalQuestions: questions.length,
  );

  for (final achievement in achievements) {
    if (!mounted) return;

    await showAchievementDialog(
      context,
      achievement,
    );
  }

  if (!mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => ResultScreen(
        score: score,
        totalQuestions: questions.length,
        points: getFinalPoints(),
        category: widget.category,
        setNumber: widget.setNumber,
      ),
    ),
  );
}

Future<void> selectAnswer(String text) async {
  if (userAnswers.containsKey(currentQuestion) ||
      timedOutQuestions.contains(currentQuestion)) {
    return;
  }

  setState(() {
    userAnswers[currentQuestion] = text;

    timer?.cancel();

    selectedAnswer = text;

    answered = true;

    if (text == questions[currentQuestion].answer) {
      score++;
      points += 10;
    }
  });

  Future.delayed(
    const Duration(milliseconds: 200),
    () async {
      if (!mounted) return;

      if (currentQuestion < questions.length - 1) {
        setState(() {
          currentQuestion++;

          selectedAnswer =
              userAnswers[currentQuestion];

          answered =
              userAnswers.containsKey(currentQuestion) ||
                  timedOutQuestions.contains(currentQuestion);

          if (!answered) {
            startTimer();
          }
        });
      } else {
        await finishQuiz();
      }
    },
  );
}

Color getOptionColor(String text) {
  bool timedOut =
      timedOutQuestions.contains(currentQuestion);

  if (!userAnswers.containsKey(currentQuestion) &&
      !timedOut) {
    return Theme.of(context).cardColor;
  }

  if (text == questions[currentQuestion].answer) {
    return Colors.green;
  }

  if (text == userAnswers[currentQuestion] &&
      text != questions[currentQuestion].answer) {
    return Colors.red;
  }

  return Theme.of(context).cardColor;
}

@override
void dispose() {
  timer?.cancel();
  super.dispose();
}
@override
Widget build(BuildContext context) {
  if (loading) {
    return const Scaffold(
      drawer: AppDrawer(),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  return Scaffold(
    drawer: const AppDrawer(),
    appBar: AppBar(
      title: Text(
        isChallenge
            ? widget.challenge!.title
            : widget.category == "DailyQuiz"
                ? "📅 ${AppLocalizations.of(context)!.dailyQuiz}"
                : widget.category == "DevOps"
                    ? "🚀 ${AppLocalizations.of(context)!.appName}"
                    : "${widget.category} - Set ${widget.setNumber}",
      ),
    ),
    body: SafeArea(
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).colorScheme.surface,
          Theme.of(context).scaffoldBackgroundColor,
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 16,
),
      child: Column(
        children: [

          if (isChallenge)
            ChallengeBanner(
              challenge: widget.challenge!,
            ),

          QuizHeader(
  timeLeft: timeLeft,
  points: points,
  currentQuestion: currentQuestion + 1,
  totalQuestions: questions.length,
),

          const SizedBox(height: 14),

          QuestionCard(
            question: questions[currentQuestion],
            currentQuestion: currentQuestion + 1,
            totalQuestions: questions.length,
            category: widget.category,
            isChallenge: isChallenge,
            challenge: widget.challenge,
          ),

          const SizedBox(height: 14),

          Expanded(
            child: ListView(
              children: [
                ...questions[currentQuestion]
                    .shuffledOptions
                    .map((option) {
                  final bool isLocked =
                      userAnswers.containsKey(currentQuestion) ||
                          timedOutQuestions.contains(currentQuestion);

                  return OptionButton(
                    text: option,
                    backgroundColor: getOptionColor(option),
                    isLocked: isLocked,
                    isCorrectAnswer: isLocked &&
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

          NavigationButtons(
            canGoBack: currentQuestion > 0,
            isLastQuestion:
                currentQuestion == questions.length - 1,
            onBack: () {
              if (currentQuestion > 0) {
                setState(() {
                  currentQuestion--;

                  selectedAnswer =
                      userAnswers[currentQuestion];

                  answered =
                      userAnswers.containsKey(currentQuestion) ||
                          timedOutQuestions.contains(
                              currentQuestion);

                  if (!answered) {
                    startTimer();
                  } else {
                    timer?.cancel();
                  }
                });
              }
            },
            onNext: () async {
              if (currentQuestion ==
                  questions.length - 1) {
                await finishQuiz();
                return;
              }

              setState(() {
                currentQuestion++;

                selectedAnswer =
                    userAnswers[currentQuestion];

                answered =
                    userAnswers.containsKey(currentQuestion) ||
                        timedOutQuestions.contains(
                            currentQuestion);

                if (!answered) {
                  startTimer();
                } else {
                  timer?.cancel();
                }
              });
            },
          ),
        ],
      ),
    ),
  ),
),
  );
}
}