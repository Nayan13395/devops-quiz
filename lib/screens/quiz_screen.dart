import 'package:flutter/material.dart';
import '../models/question.dart';
import '../services/question_service.dart';
import 'result_screen.dart';
import 'dart:async';
import '../services/leaderboard_service.dart';
import '../widgets/app_drawer.dart';
import '../services/daily_quiz_service.dart';
import '../l10n/app_localizations.dart';

class QuizScreen extends StatefulWidget {

  final String category;
  final int setNumber;

  const QuizScreen({
    super.key,
    required this.category,
    required this.setNumber,
  });

  @override
  State<QuizScreen> createState() =>
      _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<Question> questions = [];

  int currentQuestion = 0;

  bool loading = true;

  int points = 0;

  String? selectedAnswer;

bool answered = false;

int score = 0;
Map<int, String> userAnswers = {};
Timer? timer;

int timeLeft = 15;

Set<int> timedOutQuestions = {};
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

    debugPrint("==================================");
    debugPrint("Category: ${widget.category}");
    debugPrint("Set: ${widget.setNumber}");
    debugPrint("Questions Loaded: ${allQuestions.length}");

    if (widget.category == "DevOps" ||
        widget.category == "DailyQuiz") {
      questions = {
        for (var q in allQuestions) q.question: q,
      }.values.toList();

      questions.shuffle();
      questions = questions.take(25).toList();
    } else {
      for (final q in allQuestions) {
        debugPrint(
          "JSON -> Category=${q.category}, Set=${q.set}",
        );
      }

      questions = allQuestions
          .where((q) => q.set == widget.setNumber)
          .toList();

      debugPrint(
          "Questions After Filter: ${questions.length}");

      questions.shuffle();
    }

    setState(() {
      loading = false;
    });

    startTimer();
  } catch (e, stackTrace) {
    debugPrint("LOAD ERROR: $e");
    debugPrint(stackTrace.toString());
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



        if (widget.category == "DailyQuiz") {
          await DailyQuizService.markCompleted();
        }

await LeaderboardService()
    .saveScore(getFinalPoints());

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
    },
  );
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
  widget.category == "DailyQuiz"
      ? "📅 ${AppLocalizations.of(context)!.dailyQuiz}"
      : widget.category == "DevOps"
          ? "🚀 ${AppLocalizations.of(context)!.appName}"
          : "${widget.category} - Set ${widget.setNumber}",
),
      ),

      body: Container(
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

  child: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

              children: [

                Container(
  padding: const EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  ),

  decoration: BoxDecoration(
color: Theme.of(context)
    .colorScheme
    .secondaryContainer,    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
  color: Colors.orange.withValues(alpha: 0.3),
  blurRadius: 8,
)
    ],
  ),

                  child: Text(
  "⏳ ${timeLeft}s",
  style: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
)
                ),

                Container(
                  padding:
                      const EdgeInsets.all(10),

                  decoration: BoxDecoration(

color: Theme.of(context)
    .colorScheme
    .primaryContainer,  borderRadius: BorderRadius.circular(15),
  boxShadow: [
    BoxShadow(
color: Colors.blue.withValues(alpha: 0.3),
      blurRadius: 8,
    )
  ],
),

                  child: Text(
                    "🏆 $points",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            /// Question Card

Container(
  padding: const EdgeInsets.all(20),

  decoration: BoxDecoration(
    color: Theme.of(context).cardColor,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
        blurRadius: 10,
        offset: Offset(0, 3),
        color: Colors.black12,
      ),
    ],
  ),

  child: Column(
    children: [

Text(
  "Question ${currentQuestion + 1} / ${questions.length}",
),

const SizedBox(height: 15),
Text(
  (widget.category == "DevOps" ||
          widget.category == "DailyQuiz")
      ? "In ${questions[currentQuestion].category}, ${questions[currentQuestion].question}"
      : questions[currentQuestion].question,
              textAlign: TextAlign.center,

        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
            const SizedBox(height: 20),

            /// Options

...questions[currentQuestion]
    .shuffledOptions
    .map((option) => optionButton(option))
    ,
                    const SizedBox(height: 20),

            /// Navigation Buttons

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {

  if (currentQuestion > 0) {

    setState(() {

      currentQuestion--;

selectedAnswer =
    userAnswers[currentQuestion];

answered =
    userAnswers.containsKey(
        currentQuestion) ||
    timedOutQuestions.contains(
        currentQuestion);

if (!answered &&
    !timedOutQuestions.contains(
      currentQuestion,
    )) {

  startTimer();

} else {

  timer?.cancel();
}
    });
  }
},

                    child: const Padding(
  padding: EdgeInsets.all(12),
  child: Text(
    "⬅ Back",
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {

  if (currentQuestion ==
      questions.length - 1) {

await LeaderboardService()
    .saveScore(getFinalPoints());
if (widget.category ==
    "DailyQuiz") {

  await DailyQuizService
      .markCompleted();
}

if (widget.category == "DailyQuiz") {
  await DailyQuizService.markCompleted();
}
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (_) => ResultScreen(
  score: score,
  totalQuestions: questions.length,
  points: getFinalPoints(),
  category: widget.category,
  setNumber: widget.setNumber,
)
  ),
);

    return;
  }

  setState(() {

    currentQuestion++;
selectedAnswer =
    userAnswers[currentQuestion];

answered =
    userAnswers.containsKey(
        currentQuestion) ||
    timedOutQuestions.contains(
        currentQuestion);

if (!answered &&
    !timedOutQuestions.contains(
      currentQuestion,
    )) {

  startTimer();

} else {

  timer?.cancel();
}
  });
},
                    child: Padding(
  padding: const EdgeInsets.all(12),
  child: Text(
    currentQuestion == questions.length - 1
        ? "Submit"
        : "Next ➡",
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
      ),
    );
  }

 Widget optionButton(
  String text,
)  {
Color getColor() {

  bool timedOut =
      timedOutQuestions.contains(
          currentQuestion);

  if (!userAnswers.containsKey(
          currentQuestion) &&
      !timedOut) {
    return Theme.of(context).cardColor;
  }

  if (text ==
      questions[currentQuestion]
          .answer) {
    return Colors.green;
  }

  if (text ==
          userAnswers[currentQuestion] &&
      text !=
          questions[currentQuestion]
              .answer) {
    return Colors.red;
  }

return Theme.of(context).cardColor;
}
bool isLocked =
    userAnswers.containsKey(
        currentQuestion) ||
    timedOutQuestions.contains(
        currentQuestion);
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),

      child: SizedBox(
        width: double.infinity,
        height: 60,

child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: getColor(),
disabledBackgroundColor: getColor(),
foregroundColor:
    isLocked
        ? Colors.black
        : Colors.black,
  elevation: 4,

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),

  minimumSize:
      const Size(double.infinity, 60),
),

onPressed: () async {

  if (userAnswers.containsKey(
        currentQuestion) ||
      timedOutQuestions.contains(
        currentQuestion)) {
    return;
  }

  setState(() {

    userAnswers[currentQuestion] = text;
    timer?.cancel();

    selectedAnswer = text;
    answered = true;

    if (text ==
        questions[currentQuestion].answer) {

      score++;
      points += 10;
    }

  });

  Future.delayed(
  const Duration(milliseconds: 200),
  () async {

      if (!mounted) return;

      if (currentQuestion <
          questions.length - 1) {

        setState(() {

          currentQuestion++;

          selectedAnswer =
              userAnswers[currentQuestion];

          answered =
              userAnswers.containsKey(
                  currentQuestion) ||
              timedOutQuestions.contains(
                  currentQuestion);

          if (!answered) {
            startTimer();
          }
        });

} else {


  if (widget.category ==
      "DailyQuiz") {

    await DailyQuizService
        .markCompleted();
  }

await LeaderboardService()
    .saveScore(getFinalPoints());

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => ResultScreen(
        score: score,
        totalQuestions:
            questions.length,
points: getFinalPoints(),
        category: widget.category,
        setNumber:
            widget.setNumber,
      ),
    ),
  );
}
  }
  );
},
child: Text(
  text,
  style: TextStyle(
    fontSize: 18,
color: Theme.of(context).textTheme.bodyLarge?.color,
fontWeight:
    (userAnswers.containsKey(
            currentQuestion) ||
        timedOutQuestions.contains(
            currentQuestion)) &&
            text ==
                questions[currentQuestion]
                    .answer
        ? FontWeight.bold
        : FontWeight.w500,
  ),
),
),      ),
    );
  }
}
