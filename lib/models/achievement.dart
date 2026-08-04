class Achievement {
  final String id;
  final String title;
  final String description;
  final String icon;
  final int reward;

  final bool unlocked;

  final int current;

  final int target;

  const Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.reward,
    required this.unlocked,
    required this.current,
    required this.target,
  });

  Achievement copyWith({bool? unlocked, int? current, int? target}) {
    return Achievement(
      id: id,
      title: title,
      description: description,
      icon: icon,
      reward: reward,
      unlocked: unlocked ?? this.unlocked,
      current: current ?? this.current,
      target: target ?? this.target,
    );
  }

  double get progress => target == 0 ? 0 : current / target;
}
