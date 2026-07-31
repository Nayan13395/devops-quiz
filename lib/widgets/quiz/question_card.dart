import 'package:flutter/material.dart';

import '../../models/challenge.dart';
import '../../models/question.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final int currentQuestion;
  final int totalQuestions;
  final String category;
  final bool isChallenge;
  final Challenge? challenge;

  const QuestionCard({
    super.key,
    required this.question,
    required this.currentQuestion,
    required this.totalQuestions,
    required this.category,
    required this.isChallenge,
    this.challenge,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
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
      child: _buildQuestion(context),
    );
  }

  Widget _buildQuestion(BuildContext context) {
  if (category == "DevOps" || category == "DailyQuiz") {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          height: 1.3,
        ),
        children: [
          TextSpan(
            text: "In ${question.category}, ",
            style: const TextStyle(
              color: Colors.teal,
            ),
          ),
          TextSpan(
            text: question.question,
          ),
        ],
      ),
    );
  }

  return Text(
    question.question,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1.3,
    ),
  );
}
}