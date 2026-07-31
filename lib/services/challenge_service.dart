import 'package:flutter/material.dart';
import '../models/challenge.dart';

class ChallengeService {
  static List<Challenge> getChallenges() {
    return const [
      Challenge(
        id: "speed",
        title: "Speed Challenge",
        description: "Answer 20 questions in 60 seconds.",
        icon: Icons.flash_on,
        reward: 500,
        questionCount: 20,
        timeLimit: 60,
      ),
      Challenge(
        id: "perfect",
        title: "Perfect Challenge",
        description: "Answer all 15 questions correctly.",
        icon: Icons.verified,
        reward: 750,
        questionCount: 15,
      ),
      Challenge(
        id: "survival",
        title: "Survival Mode",
        description: "One wrong answer ends the challenge.",
        icon: Icons.favorite,
        reward: 1000,
        questionCount: 50,
        survival: true,
      ),
      Challenge(
        id: "random",
        title: "Random Challenge",
        description: "25 random questions from all categories.",
        icon: Icons.shuffle,
        reward: 500,
        questionCount: 25,
      ),
      Challenge(
        id: "marathon",
        title: "Marathon",
        description: "Complete 100 questions.",
        icon: Icons.emoji_events,
        reward: 3000,
        questionCount: 100,
      ),
    ];
  }
}