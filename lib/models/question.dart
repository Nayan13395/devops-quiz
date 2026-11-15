class Question {
  final String? id;
  final String category;
  final int set;
  final String question;
  final List<String> options;
  final String answer;
  List<String> shuffledOptions = [];

  Question({
    this.id,
    required this.category,
    required this.set,
    required this.question,
    required this.options,
    required this.answer,
  });

  Question withId(String id) {
    final copy = Question(
      id: id,
      category: category,
      set: set,
      question: question,
      options: options,
      answer: answer,
    );
    copy.shuffledOptions = List<String>.from(shuffledOptions);
    return copy;
  }

  factory Question.fromJson(Map<String, dynamic> json) {
    final q = Question(
      category: json['category'],
      set: json['set'],
      question: json['question'],
      options: List<String>.from(json['options']),
      answer: json['answer'],
    );

    q.shuffledOptions = List<String>.from(q.options);

    q.shuffledOptions.shuffle();

    return q;
  }
}
