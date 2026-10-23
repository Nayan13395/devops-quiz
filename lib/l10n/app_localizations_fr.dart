// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get certificates => 'Certificats';

  @override
  String get whatsNew => 'Nouveautés';

  @override
  String get settings => 'Paramètres';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get lightMode => 'Mode clair';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String get english => 'Anglais';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Commencer le quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Changer de catégorie';

  @override
  String get dailyQuiz => 'Quiz du jour';

  @override
  String get dailyQuizCompleted => 'Quiz du jour terminé';

  @override
  String get dailyQuizCompletedMessage => 'Vous avez déjà terminé le quiz du jour.\n\nRevenez demain pour un nouveau défi !';

  @override
  String get leaderboard => 'Classement';

  @override
  String get shareApp => 'Partager l\'appli';

  @override
  String get rateApp => 'Noter l\'appli';

  @override
  String get about => 'À propos';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Accueil';

  @override
  String get games => 'Jeux';

  @override
  String get referAndEarn => 'Parrainez et gagnez';

  @override
  String get themes => 'Thèmes';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Développeur';

  @override
  String get contact => 'Contact';

  @override
  String get learning => 'Apprentissage';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Connectez-vous avec moi';

  @override
  String get aboutDescription => 'DevOps Quiz aide les apprenants à se préparer aux entretiens et aux certifications grâce à des milliers de questions soigneusement choisies sur Linux, Docker, Kubernetes, les réseaux, Git, Jenkins, Terraform, Ansible et d\'autres technologies DevOps.';

  @override
  String get quizResult => 'Résultat du quiz';

  @override
  String get outstanding => 'Exceptionnel !';

  @override
  String get greatJob => 'Excellent travail !';

  @override
  String get goodEffort => 'Bel effort !';

  @override
  String get keepPracticing => 'Continuez à vous entraîner !';

  @override
  String get dontGiveUp => 'N\'abandonnez pas !';

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
  String get percentage => 'Pourcentage';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Bonus score parfait';

  @override
  String get shareScore => 'Partager le score';

  @override
  String get restartQuiz => 'Recommencer le quiz';

  @override
  String get backToCategories => 'Retour aux catégories';

  @override
  String get greatProgress => 'Bravo ! Vous progressez très bien.';

  @override
  String get practiceMore => 'Bon travail ! Encore un peu d\'entraînement et vous ferez encore mieux.';

  @override
  String get keepLearning => 'Continuez à apprendre et réessayez. Vous progresserez avec la pratique.';

  @override
  String get everyExpertStarted => 'Chaque expert a commencé comme débutant. Entraînez-vous et revenez plus fort !';

  @override
  String get quizInstructions => 'Instructions du quiz';

  @override
  String get instruction1 => 'Chaque série contient 25 questions.';

  @override
  String get instruction2 => 'Vous avez 15 secondes par question.';

  @override
  String get instruction3 => 'Vert = bonne réponse.';

  @override
  String get instruction4 => 'Rouge = mauvaise réponse.';

  @override
  String get instruction5 => 'La réponse ne peut pas être modifiée.';

  @override
  String get instruction6 => 'Le bouton Retour sert uniquement à réviser.';

  @override
  String get instruction7 => 'Le score s\'affiche à la fin.';

  @override
  String excellentPerformance(Object expert) {
    return 'Performance excellente ! Vous êtes un $expert.';
  }

  @override
  String get selectCategory => 'Choisir une catégorie';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Choisir une série';

  @override
  String get set => 'Série';

  @override
  String get questions => 'Questions';

  @override
  String get noScoresYet => 'Aucun score pour le moment';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Bienvenue dans DevOps Quiz';

  @override
  String get challengeMode => 'Mode défi';

  @override
  String get challenge => 'Défi';

  @override
  String get question => 'Question';

  @override
  String get reward => 'Récompense';

  @override
  String get survivalMode => 'Mode survie';

  @override
  String get speedChallenge => 'Défi de vitesse';

  @override
  String get dailyChallenge => 'Défi du jour';

  @override
  String get ultimateChallenge => 'Défi ultime';

  @override
  String get timeLeft => 'Temps restant';

  @override
  String get completed => 'Terminé';

  @override
  String get locked => 'Verrouillé';

  @override
  String get back => 'Retour';

  @override
  String get next => 'Suivant';

  @override
  String get submit => 'Valider';

  @override
  String get achievements => 'Succès';

  @override
  String get streak => 'Série de jours';

  @override
  String get days => 'Jours';

  @override
  String get tomorrowsReward => 'Récompense de demain';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 J\'ai obtenu $score/$totalQuestions au quiz #DevOps du jour !\n\n🏆 Points : $earnedPoints\n🔥 Bonus : $bonusPoints\n📊 Pourcentage : $percentage%\n\nPouvez-vous battre mon score ?\n\nTéléchargez l\'appli :';
  }
}
