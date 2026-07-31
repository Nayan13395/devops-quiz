import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../services/challenge_service.dart';
import '../widgets/challenge_card.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final challenges = ChallengeService.getChallenges();

    return Scaffold(
      appBar: AppBar(
        title: const Text("🏆 Challenge Mode"),
      ),
      body: ListView.builder(
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          final challenge = challenges[index];

          return ChallengeCard(
            challenge: challenge,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => QuizScreen(
                    category: "DevOps",
                    setNumber: 1,
                    challenge: challenge,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}