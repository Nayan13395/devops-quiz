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
    final ThemeData theme = Theme.of(context);

    final ColorScheme colorScheme = theme.colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      decoration: BoxDecoration(
        // Uses the currently selected theme.
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.45),
        ),

        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 3),
            color: colorScheme.shadow.withValues(alpha: 0.10),
          ),
        ],
      ),
      child: _buildQuestion(context),
    );
  }

  // =========================================================
  // QUESTION
  // =========================================================

  Widget _buildQuestion(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final ColorScheme colorScheme = theme.colorScheme;

    final TextStyle questionStyle =
        theme.textTheme.titleLarge?.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.bold,

          // IMPORTANT:
          // Automatically adapts to every theme.
          color: colorScheme.onSurface,

          height: 1.35,
        ) ??
        TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
          height: 1.35,
        );

    // =======================================================
    // DEVOPS / DAILY QUIZ
    // =======================================================

    if (category == 'DevOps' || category == 'DailyQuiz') {
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: questionStyle,
          children: [
            // ===============================================
            // CATEGORY PREFIX
            // ===============================================
            TextSpan(
              text: 'In ${question.category}, ',
              style: questionStyle.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),

            // ===============================================
            // QUESTION
            // ===============================================
            TextSpan(
              text: question.question,
              style: questionStyle.copyWith(color: colorScheme.onSurface),
            ),
          ],
        ),
      );
    }

    // =======================================================
    // NORMAL CATEGORY QUESTION
    // =======================================================

    return Text(
      question.question,
      textAlign: TextAlign.center,
      style: questionStyle,
    );
  }
}
