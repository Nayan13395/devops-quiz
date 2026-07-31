import 'package:flutter/material.dart';

class Challenge {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final int reward;
  final int questionCount;
  final int? timeLimit;
  final bool survival;

  const Challenge({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.reward,
    required this.questionCount,
    this.timeLimit,
    this.survival = false,
  });
}