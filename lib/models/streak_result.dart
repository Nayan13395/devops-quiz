class StreakResult {
  final int streak;
  final int reward;
  final int totalPoints;
  final bool showReward;
  final bool streakBroken;

  StreakResult({
    required this.streak,
    required this.reward,
    required this.totalPoints,
    required this.showReward,
    required this.streakBroken,
  });
}