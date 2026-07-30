class Question {

  final String category;
  final int set;
  final String question;
  final List<String> options;
  final String answer;
  List<String> shuffledOptions = [];

  Question({
    required this.category,
    required this.set,
    required this.question,
    required this.options,
    required this.answer,
  });

  factory Question.fromJson(
    Map<String, dynamic> json,
  ) {
    final q = Question(
  category: json['category'],
  set: json['set'],
  question: json['question'],
  options:
      List<String>.from(
          json['options']),
  answer: json['answer'],
);

q.shuffledOptions =
    List<String>.from(q.options);

q.shuffledOptions.shuffle();

return q;
  }
}