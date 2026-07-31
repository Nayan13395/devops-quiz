// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get settings => 'Settings';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Start Quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Switch Category';

  @override
  String get dailyQuiz => 'Daily Quiz';

  @override
  String get dailyQuizCompleted => 'Daily Quiz Completed';

  @override
  String get dailyQuizCompletedMessage => 'You have already completed today\'s Daily Quiz.\n\nCome back tomorrow for a new challenge!';

  @override
  String get leaderboard => 'Leaderboard';

  @override
  String get shareApp => 'Share App';

  @override
  String get rateApp => 'Rate App';

  @override
  String get about => 'About';

  @override
  String get ok => 'OK';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Developer';

  @override
  String get contact => 'Contact';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Connect with me';

  @override
  String get aboutDescription => 'DevOps Quiz helps learners prepare for interviews and certifications through thousands of carefully selected questions covering Linux, Docker, Kubernetes, Networking, Git, Jenkins, Terraform, Ansible and other DevOps technologies.';

  @override
  String get quizResult => 'Quiz Result';

  @override
  String get outstanding => 'Outstanding!';

  @override
  String get greatJob => 'Great Job!';

  @override
  String get goodEffort => 'Good Effort!';

  @override
  String get keepPracticing => 'Keep Practicing!';

  @override
  String get dontGiveUp => 'Don\'t Give Up!';

  @override
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

  @override
  String get score => 'Score';

  @override
  String get points => 'Points';

  @override
  String get percentage => 'Percentage';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Perfect Score Bonus';

  @override
  String get shareScore => 'Share Score';

  @override
  String get restartQuiz => 'Restart Quiz';

  @override
  String get backToCategories => 'Back to Categories';

  @override
  String get greatProgress => 'Well done! You\'re making great progress.';

  @override
  String get practiceMore => 'Good work! A little more practice and you\'ll score even higher.';

  @override
  String get keepLearning => 'Keep learning and try again. You\'ll improve with practice.';

  @override
  String get everyExpertStarted => 'Every expert started as a beginner. Practice and come back stronger!';

  @override
  String get quizInstructions => 'Quiz Instructions';

  @override
  String get instruction1 => 'Each set contains 25 questions.';

  @override
  String get instruction2 => 'You have 15 seconds per question.';

  @override
  String get instruction3 => 'Green = Correct Answer.';

  @override
  String get instruction4 => 'Red = Wrong Answer.';

  @override
  String get instruction5 => 'Answer cannot be changed.';

  @override
  String get instruction6 => 'Back button is for review only.';

  @override
  String get instruction7 => 'Score is shown after completion.';

  @override
  String excellentPerformance(Object expert) {
    return 'Excellent performance! You\'re a $expert.';
  }

  @override
  String get selectCategory => 'Select Category';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Select Set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Questions';

  @override
  String get noScoresYet => 'No Scores Yet';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Welcome to DevOps Quiz';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 I scored $score/$totalQuestions in today\'s #DevOps Quiz!\n\n🏆 Points: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Percentage: $percentage%\n\nCan you beat my score?\n\nDownload the app:';
  }
}
