import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../widgets/app_drawer.dart';
import 'category_screen.dart';
import 'package:share_plus/share_plus.dart';
import '../l10n/app_localizations.dart';

class ResultScreen extends StatelessWidget {

  final int score;
  final int totalQuestions;
  final int points;
  final String category;
  final int setNumber;

  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.points,
    required this.category,
    required this.setNumber,
  });
String getExpertTitle() {
  switch (category) {
    case "Linux":
      return "🐧 Linux expert";

    case "Docker":
      return "🐳 Docker expert";

    case "Kubernetes":
      return "☸️ Kubernetes expert";

    case "Networking":
      return "🌐 Networking expert";

    case "Git":
      return "🌿 Git expert";

    case "Jenkins":
      return "⚙️ Jenkins expert";

    case "AWS":
      return "☁️ AWS expert";

    case "Terraform":
      return "🏗️ Terraform expert";

    case "Ansible":
      return "🤖 Ansible expert";

    default:
      return "🚀 DevOps expert";
  }
}
  @override
  Widget build(BuildContext context) {

double percentage =
    (score / totalQuestions) * 100;

// Points earned from correct answers
final int earnedPoints = score * 10;

int bonus = 0;

if (category == "DailyQuiz") {
  bonus = (score == totalQuestions)
      ? 500
      : earnedPoints;
}

    return Scaffold(
drawer: const AppDrawer(),
      appBar: AppBar(
title: Text(
  AppLocalizations.of(context)!.quizResult,
),
      ),

      body: SafeArea(
  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

  Text(
  score >= 20
      ? "🎉 ${AppLocalizations.of(context)!.outstanding}"
      : score >= 15
          ? "👏 ${AppLocalizations.of(context)!.greatJob}"
          : score >= 10
              ? "👍 ${AppLocalizations.of(context)!.goodEffort}"
              : score >= 5
                  ? "💪 ${AppLocalizations.of(context)!.keepPracticing}"
                  : "📚 ${AppLocalizations.of(context)!.dontGiveUp}",
  style: const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  textAlign: TextAlign.center,
),

const SizedBox(height: 10),

Text(
  score >= 20
      ? AppLocalizations.of(context)!
          .excellentPerformance(getExpertTitle())
      : score >= 15
          ? AppLocalizations.of(context)!.greatProgress
          : score >= 10
              ? AppLocalizations.of(context)!.practiceMore
              : score >= 5
                  ? AppLocalizations.of(context)!.keepLearning
                  : AppLocalizations.of(context)!.everyExpertStarted,
  style: const TextStyle(
    fontSize: 18,
    color: Colors.grey,
  ),
  textAlign: TextAlign.center,
),
              const SizedBox(height: 30),

              Text(
                "${AppLocalizations.of(context)!.score}: $score / $totalQuestions",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "🏆 ${AppLocalizations.of(context)!.points}: $earnedPoints",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
 if (category == "DailyQuiz")
  Text(
    score == totalQuestions
        ? "\n🎖 ${AppLocalizations.of(context)!.perfectScoreBonus} +500"
        : "\n🎖 ${AppLocalizations.of(context)!.bonus} +$bonus",
  ),

              const SizedBox(height: 20),

              Text(
                "${AppLocalizations.of(context)!.percentage}: ${percentage.toStringAsFixed(0)}%",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 25),
              
if (category == "DailyQuiz")
  Padding(
  padding: const EdgeInsets.only(bottom: 20),
  child: Text(
    AppLocalizations.of(context)!.dailyQuizCompletedMessage,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
),
  SizedBox(
  width: 240,
  child: ElevatedButton.icon(
    onPressed: () {
      final earnedPoints = category == "DailyQuiz"
    ? (score * 10)
    : points;
 Share.share(
  "${AppLocalizations.of(context)!.shareMessage(
    score,
    totalQuestions,
    earnedPoints,
    bonus,
    percentage.toStringAsFixed(0),
  )}\n"
  "https://play.google.com/store/apps/details?id=com.nayan.devops",
);
    },
    icon: const Icon(Icons.share),
label: Text(
  AppLocalizations.of(context)!.shareScore,
),
  ),
),
              const SizedBox(height: 40),

category == "DailyQuiz"
    ? ElevatedButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => const CategoryScreen(),
            ),
            (route) => false,
          );
        },
        child: Text(
  "🏠 ${AppLocalizations.of(context)!.backToCategories}",
)
      )
    : SizedBox(
  width: 240,
  child: ElevatedButton(
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => QuizScreen(
            category: category,
            setNumber: setNumber,
          ),
        ),
      );
    },
    child: Text(
  AppLocalizations.of(context)!.restartQuiz,
)
  ),
),

const SizedBox(height: 25),

              
                          ],
          ),
        ),
      ),
    )
    )
    );
  }
}
