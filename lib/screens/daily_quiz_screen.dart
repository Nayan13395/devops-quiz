import 'dart:math';
import 'package:flutter/material.dart';
import '../services/question_service.dart';
import '../widgets/app_drawer.dart';
import '../models/question.dart';

class DailyQuizScreen
    extends StatefulWidget {

  const DailyQuizScreen({
    super.key,
  });

  @override
  State<DailyQuizScreen>
      createState() =>
          _DailyQuizScreenState();
}

class _DailyQuizScreenState
    extends State<DailyQuizScreen> {

  bool loading = true;

@override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {
    loadQuiz();
  });
}

  Future<void> loadQuiz() async {

 final locale = Localizations.localeOf(context);

List<Question> allQuestions =
    await QuestionService()
        .loadQuestions(
          locale,
          "DailyQuiz",
        );

    allQuestions.shuffle(
      Random(),
    );

    final dailyQuestions =
        allQuestions
            .take(25)
            .toList();

    Navigator.pushReplacement(
  context,
  MaterialPageRoute(
builder: (_) => const Scaffold(
  drawer: AppDrawer(),
  body: Center(
    child: Text("Daily Quiz Coming Soon"),
  ),
),
  ),
);
  }

  @override
  Widget build(
      BuildContext context) {

    return const Scaffold(
      body: Center(
        child:
            CircularProgressIndicator(),
      ),
    );
  }
}