import 'package:cloud_functions/cloud_functions.dart';

class TechQuestionReply {
  const TechQuestionReply({
    required this.answer,
    required this.isTechnologyRelated,
  });

  final String answer;
  final bool isTechnologyRelated;
}

class AskAiService {
  static const int maxQuestionLength = 1000;

  Future<TechQuestionReply> ask(String question) async {
    final normalized = question.trim();
    if (normalized.isEmpty) {
      throw ArgumentError.value(
        question,
        'question',
        'Question cannot be empty.',
      );
    }
    if (normalized.length > maxQuestionLength) {
      throw ArgumentError.value(
        question,
        'question',
        'Keep questions under $maxQuestionLength characters.',
      );
    }

    try {
      final result = await FirebaseFunctions.instance
          .httpsCallable(
            'askTechnologyQuestion',
            options: HttpsCallableOptions(timeout: const Duration(seconds: 40)),
          )
          .call<Map<String, dynamic>>({'question': normalized});
      final data = Map<String, dynamic>.from(result.data);

      return TechQuestionReply(
        answer: data['answer'] as String? ?? 'No answer was returned.',
        isTechnologyRelated: data['isTechnologyRelated'] as bool? ?? false,
      );
    } on FirebaseFunctionsException catch (error) {
      if (error.code == 'unauthenticated') {
        throw StateError('Sign in with Google to use Ask AI.');
      }
      if (error.code == 'resource-exhausted') {
        throw StateError('Daily Ask AI limit reached. Try again tomorrow.');
      }
      if (error.code == 'failed-precondition') {
        throw StateError('Ask AI is not configured on this project yet.');
      }
      if (error.code == 'not-found') {
        throw StateError(
          'Ask AI is not deployed in this Firebase project yet. Deploy the askTechnologyQuestion function to enable it.',
        );
      }
      throw StateError(error.message ?? 'Ask AI could not answer right now.');
    }
  }
}
