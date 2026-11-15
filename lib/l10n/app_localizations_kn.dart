// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTour => 'ಅಪ್ಲಿಕೇಶನ್ ಪರಿಚಯ';

  @override
  String get skipTour => 'ಪರಿಚಯ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get finishTour => 'ಪರಿಚಯ ಮುಗಿಸಿ';

  @override
  String tourStep(int current, int total) {
    return 'ಹಂತ $current / $total';
  }

  @override
  String get tourMenuTitle => 'ನ್ಯಾವಿಗೇಶನ್ ಮೆನು';

  @override
  String get tourSearch => 'ಸಂಬಂಧಿತ ರಸಪ್ರಶ್ನೆ ವಿಭಾಗಗಳನ್ನು ಹುಡುಕಲು ಇಲ್ಲಿ ವಿಷಯವನ್ನು ಟೈಪ್ ಮಾಡಿ.';

  @override
  String get tourCategory => 'ಮಿಶ್ರ ರಸಪ್ರಶ್ನೆಗೆ DevOps ಟ್ಯಾಪ್ ಮಾಡಿ. ಇತರ ವಿಭಾಗಗಳಲ್ಲಿ ಪ್ರಶ್ನೆ ಸೆಟ್‌ಗಳಿವೆ. ನಂತರ ಓದಲು ಪ್ರಶ್ನೆಗಳನ್ನು ಬುಕ್‌ಮಾರ್ಕ್ ಮಾಡಿ.';

  @override
  String get tourMenu => 'ನ್ಯಾವಿಗೇಶನ್ ಮೆನು ತೆರೆಯಲು ಈ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get tourLearning => 'ಕಾರ್ಡ್‌ಗಳಿಗಾಗಿ ಕಲಿಕೆ ತೆರೆಯಿರಿ. ಯಾವುದೇ ದಿಕ್ಕಿಗೆ ಸ್ವೈಪ್ ಮಾಡಿ, ಷಫಲ್ ಮಾಡಿ, ಸ್ವಯಂಚಾಲಿತ ಬದಲಾವಣೆ ಬಳಸಿ ಅಥವಾ ಕಾರ್ಡ್ ಬುಕ್‌ಮಾರ್ಕ್ ಮಾಡಿ.';

  @override
  String get tourGames => 'ಆಟಗಳ ಮೂಲಕ ಅಂಕ ಗಳಿಸಿ. ಹಂತಗಳಿರುವ ಆಟಗಳಲ್ಲಿ ಪ್ರತಿ ಹಂತ ಪೂರ್ಣಗೊಳಿಸಿದಾಗ 100 ಅಂಕ ಸಿಗುತ್ತದೆ; ಸುಳಿವಿಗೆ 20 ಅಂಕ ಬೇಕು.';

  @override
  String get tourAchievements => 'ನಿಮ್ಮ ಸಾಧನೆಗಳನ್ನು ಇಲ್ಲಿ ನೋಡಿ. ಹೊಸ ಸಾಧನೆಗಳು ಮತ್ತು ಲಭ್ಯವಿರುವ ಥೀಮ್‌ಗಳನ್ನು ಪಾಪ್‌ಅಪ್ ತಿಳಿಸುತ್ತದೆ.';

  @override
  String get tourSettings => 'ಭಾಷೆ, ಥೀಮ್ ಮತ್ತು ಧ್ವನಿ ಆಯ್ಕೆ ಮಾಡಿ. ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳಿಗೆ ಉಳಿಸಿದ ಡೇಟಾ ಅಥವಾ ಈ ಮಾರ್ಗದರ್ಶಿಯನ್ನು ಮತ್ತೆ ನೋಡಲು ಅಪ್ಲಿಕೇಶನ್ ಪರಿಚಯ ತೆರೆಯಿರಿ.';

  @override
  String get achievementUnlocked => 'ಸಾಧನೆ ಅನ್‌ಲಾಕ್ ಆಗಿದೆ!';

  @override
  String get themeUnlocked => 'ಹೊಸ ಥೀಮ್ ಲಭ್ಯವಿದೆ!';

  @override
  String get themeUnlockedMessage => 'ಈಗ ಸೆಟ್ಟಿಂಗ್‌ಗಳು > ಥೀಮ್‌ಗಳಲ್ಲಿ ಈ ಥೀಮ್ ಆಯ್ಕೆ ಮಾಡಬಹುದು.';

  @override
  String get gameSounds => 'ಆಟದ ಧ್ವನಿಗಳು';

  @override
  String get gameSoundsDescription => 'ಆಟಗಳು ಮತ್ತು ರಸಪ್ರಶ್ನೆಗಳಿಗೆ ಧ್ವನಿ ಪರಿಣಾಮಗಳು. ಸಾಧನದ ಧ್ವನಿಮಟ್ಟ ಮತ್ತು ನಿಶ್ಶಬ್ದ ಮೋಡ್ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get testSound => 'ಧ್ವನಿಯನ್ನು ಪರೀಕ್ಷಿಸಿ';

  @override
  String get soundSettingBusy => 'ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ...';

  @override
  String get soundSettingError => 'ಧ್ವನಿ ಸೆಟ್ಟಿಂಗ್ ಅನ್ನು ಲೋಡ್ ಮಾಡಲು ಅಥವಾ ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get soundPlaybackError => 'ಧ್ವನಿ ಪ್ಲೇ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಸಾಧನ ಅಥವಾ ಬ್ರೌಸರ್‌ನ ಆಡಿಯೋ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get saveData => 'ಉಳಿಸಿದ ಡೇಟಾ';

  @override
  String get learningTranslationUnavailable => 'ಈ ಕಾರ್ಡ್ ಅನ್ನು ಆಯ್ಕೆ ಮಾಡಿದ ಭಾಷೆಗೆ ಇನ್ನೂ ಅನುವಾದಿಸಿಲ್ಲ.';

  @override
  String get saveQuestion => 'ಪ್ರಶ್ನೆಯನ್ನು ಉಳಿಸಿ';

  @override
  String defaultPortQuestion(String service) {
    return '$service ನ ಡೀಫಾಲ್ಟ್ ಪೋರ್ಟ್ ಯಾವುದು?';
  }

  @override
  String get removeSavedItem => 'ಉಳಿಸಿದವುಗಳಿಂದ ತೆಗೆದುಹಾಕಿ';

  @override
  String get noSavedData => 'ಇನ್ನೂ ಏನನ್ನೂ ಉಳಿಸಿಲ್ಲ. ಕಲಿಕೆಯ ಕಾರ್ಡ್‌ಗಳನ್ನು ಅಥವಾ ರಸಪ್ರಶ್ನೆಯ ಪ್ರಶ್ನೆಗಳನ್ನು ಬುಕ್‌ಮಾರ್ಕ್ ಮಾಡಿ.';

  @override
  String get savedDataError => 'ಉಳಿಸಿದ ಡೇಟಾವನ್ನು ಲೋಡ್ ಮಾಡಲು ಅಥವಾ ನವೀಕರಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get savedItemUnavailable => 'ಈ ಉಳಿಸಿದ ಅಂಶವು ಇನ್ನು ಲಭ್ಯವಿಲ್ಲ.';

  @override
  String get correctAnswer => 'ಸರಿಯಾದ ಉತ್ತರ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get certificates => 'ಪ್ರಮಾಣಪತ್ರಗಳು';

  @override
  String get whatsNew => 'ಹೊಸದೇನಿದೆ';

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get darkMode => 'ಡಾರ್ಕ್ ಮೋಡ್';

  @override
  String get lightMode => 'ಲೈಟ್ ಮೋಡ್';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get selectLanguage => 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'ರಸಪ್ರಶ್ನೆ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'ವರ್ಗ ಬದಲಿಸಿ';

  @override
  String get dailyQuiz => 'ದೈನಂದಿನ ರಸಪ್ರಶ್ನೆ';

  @override
  String get dailyQuizCompleted => 'ದೈನಂದಿನ ರಸಪ್ರಶ್ನೆ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get dailyQuizCompletedMessage => 'ಇಂದಿನ ದೈನಂದಿನ ರಸಪ್ರಶ್ನೆಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ. ಹೊಸ ಸವಾಲಿಗಾಗಿ ನಾಳೆ ಬನ್ನಿ!';

  @override
  String get leaderboard => 'ಅಗ್ರಪಟ್ಟಿ';

  @override
  String get shareApp => 'ಆ್ಯಪ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get rateApp => 'ಆ್ಯಪ್‌ಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get about => 'ಕುರಿತು';

  @override
  String get ok => 'ಸರಿ';

  @override
  String get home => 'ಮುಖಪುಟ';

  @override
  String get games => 'ಆಟಗಳು';

  @override
  String get referAndEarn => 'ಶಿಫಾರಸು ಮಾಡಿ ಗಳಿಸಿ';

  @override
  String get themes => 'ಥೀಮ್‌ಗಳು';

  @override
  String get version => 'ಆವೃತ್ತಿ';

  @override
  String get developer => 'ಅಭಿವೃದ್ಧಿಕಾರ';

  @override
  String get contact => 'ಸಂಪರ್ಕ';

  @override
  String get learning => 'ಕಲಿಕೆ';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'ನನ್ನೊಂದಿಗೆ ಸಂಪರ್ಕಿಸಿ';

  @override
  String get aboutDescription => 'DevOps Quiz ಮೂಲಕ Linux, Docker, Kubernetes ಮತ್ತು ಇತರ DevOps ವಿಷಯಗಳನ್ನು ಕಲಿತು ಸಂದರ್ಶನಗಳು ಮತ್ತು ಪ್ರಮಾಣಪತ್ರಗಳಿಗೆ ಸಿದ್ಧರಾಗಿ.';

  @override
  String get quizResult => 'ರಸಪ್ರಶ್ನೆ ಫಲಿತಾಂಶ';

  @override
  String get outstanding => 'ಅತ್ಯುತ್ತಮ!';

  @override
  String get greatJob => 'ಚೆನ್ನಾಗಿ ಮಾಡಿದ್ದೀರಿ!';

  @override
  String get goodEffort => 'ಉತ್ತಮ ಪ್ರಯತ್ನ!';

  @override
  String get keepPracticing => 'ಅಭ್ಯಾಸ ಮುಂದುವರಿಸಿ!';

  @override
  String get dontGiveUp => 'ಪ್ರಯತ್ನ ಬಿಡಬೇಡಿ!';

  @override
  String get shareMessage1 => 'ನನ್ನ ಅಂಕ';

  @override
  String get shareMessage2 => 'DevOps ರಸಪ್ರಶ್ನೆಯಲ್ಲಿ!';

  @override
  String get downloadApp => 'ಆ್ಯಪ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ:';

  @override
  String get score => 'ಅಂಕ';

  @override
  String get points => 'ಪಾಯಿಂಟ್‌ಗಳು';

  @override
  String get percentage => 'ಶೇಕಡಾವಾರು';

  @override
  String get bonus => 'ಬೋನಸ್';

  @override
  String get perfectScoreBonus => 'ಪೂರ್ಣ ಅಂಕದ ಬೋನಸ್';

  @override
  String get shareScore => 'ಅಂಕ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get restartQuiz => 'ರಸಪ್ರಶ್ನೆ ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get backToCategories => 'ವರ್ಗಗಳಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get greatProgress => 'ಚೆನ್ನಾಗಿ ಮಾಡಿದ್ದೀರಿ! ನೀವು ಉತ್ತಮ ಪ್ರಗತಿ ಸಾಧಿಸುತ್ತಿದ್ದೀರಿ.';

  @override
  String get practiceMore => 'ಉತ್ತಮ ಪ್ರಯತ್ನ! ಹೆಚ್ಚಿನ ಅಭ್ಯಾಸದಿಂದ ನಿಮ್ಮ ಅಂಕ ಹೆಚ್ಚುತ್ತದೆ.';

  @override
  String get keepLearning => 'ಕಲಿಯುವುದನ್ನು ಮುಂದುವರಿಸಿ, ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get everyExpertStarted => 'ಪ್ರತಿಯೊಬ್ಬ ತಜ್ಞರೂ ಆರಂಭದಲ್ಲಿ ಕಲಿಯುವವರೇ ಆಗಿದ್ದರು. ಅಭ್ಯಾಸ ಮುಂದುವರಿಸಿ!';

  @override
  String get quizInstructions => 'ರಸಪ್ರಶ್ನೆ ಸೂಚನೆಗಳು';

  @override
  String get instruction1 => 'ಪ್ರತಿ ಸೆಟ್‌ನಲ್ಲಿ 25 ಪ್ರಶ್ನೆಗಳಿವೆ.';

  @override
  String get instruction2 => 'ಪ್ರತಿ ಪ್ರಶ್ನೆಗೆ 30 ಸೆಕೆಂಡುಗಳಿವೆ.';

  @override
  String get instruction3 => 'ಹಸಿರು = ಸರಿಯಾದ ಉತ್ತರ.';

  @override
  String get instruction4 => 'ಕೆಂಪು = ತಪ್ಪಾದ ಉತ್ತರ.';

  @override
  String get instruction5 => 'ಉತ್ತರ ಬದಲಾಯಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get instruction6 => 'ಹಿಂದೆ ಬಟನ್ ಪರಿಶೀಲನೆಗೆ ಮಾತ್ರ.';

  @override
  String get instruction7 => 'ಪೂರ್ಣಗೊಂಡ ನಂತರ ಅಂಕ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get instruction8 => 'ಪ್ರತಿ ಸರಿಯಾದ ಉತ್ತರಕ್ಕೆ 10 ಅಂಕಗಳು ಸಿಗುತ್ತವೆ.';

  @override
  String excellentPerformance(Object expert) {
    return 'ಅತ್ಯುತ್ತಮ ಪ್ರದರ್ಶನ! ನೀವು ಒಬ್ಬ $expert.';
  }

  @override
  String get selectCategory => 'ವರ್ಗ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'ಸೆಟ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get set => 'ಸೆಟ್';

  @override
  String get questions => 'ಪ್ರಶ್ನೆಗಳು';

  @override
  String get noScoresYet => 'ಇನ್ನೂ ಅಂಕಗಳಿಲ್ಲ';

  @override
  String get pointsShort => 'ಅಂಕ';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizಗೆ ಸ್ವಾಗತ';

  @override
  String hiUser(String name) {
    return 'ನಮಸ್ಕಾರ $name';
  }

  @override
  String get challengeMode => 'ಸವಾಲಿನ ಮೋಡ್';

  @override
  String get challenge => 'ಸವಾಲು';

  @override
  String get question => 'ಪ್ರಶ್ನೆ';

  @override
  String get reward => 'ಬಹುಮಾನ';

  @override
  String get survivalMode => 'ಸರ್ವೈವಲ್ ಮೋಡ್';

  @override
  String get speedChallenge => 'ವೇಗದ ಸವಾಲು';

  @override
  String get dailyChallenge => 'ದೈನಂದಿನ ಸವಾಲು';

  @override
  String get ultimateChallenge => 'ಅಂತಿಮ ಸವಾಲು';

  @override
  String get timeLeft => 'ಉಳಿದ ಸಮಯ';

  @override
  String get completed => 'ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get locked => 'ಲಾಕ್ ಆಗಿದೆ';

  @override
  String get back => 'ಹಿಂದೆ';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get submit => 'ಸಲ್ಲಿಸಿ';

  @override
  String get achievements => 'ಸಾಧನೆಗಳು';

  @override
  String get streak => 'ಸತತ ದಿನಗಳು';

  @override
  String get days => 'ದಿನಗಳು';

  @override
  String get tomorrowsReward => 'ನಾಳೆಯ ಬಹುಮಾನ';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 ನನ್ನ ಅಂಕ $score/$totalQuestions #DevOps Quiz!\n\n🏆 ಪಾಯಿಂಟ್‌ಗಳು: $earnedPoints\n🔥 ಬೋನಸ್: $bonusPoints\n📊 ಶೇಕಡಾವಾರು: $percentage%\n\nಆ್ಯಪ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ:';
  }

  @override
  String get gameUiSpinWheel => 'ಚಕ್ರ ತಿರುಗಿಸಿ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'ತಿರುಗಿಸಿ ಮತ್ತು ಬೋನಸ್ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗೆಲ್ಲಿರಿ';

  @override
  String get gameUiScratchCard => 'ಸ್ಕ್ರ್ಯಾಚ್ ಕಾರ್ಡ್';

  @override
  String get gameUiScratchToRevealAReward => 'ಬಹುಮಾನ ಬಹಿರಂಗಪಡಿಸಲು ಸ್ಕ್ರ್ಯಾಚ್ ಮಾಡಿ';

  @override
  String get gameUiLuckySlots => 'ಲಕ್ಕಿ ಸ್ಲಾಟ್ಸ್';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'ಸ್ಲಾಟ್‌ಗಳನ್ನು ತಿರುಗಿಸಿ ಮತ್ತು ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗೆಲ್ಲಿರಿ';

  @override
  String get gameUiMysteryDeal => 'ಮಿಸ್ಟರಿ ಡೀಲ್';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ಒಂದು ಮಿಸ್ಟರಿ ಬಾಕ್ಸ್ ಆರಿಸಿ ಮತ್ತು ಉತ್ತರಿಸಿ';

  @override
  String get gameUiMemoryMatch => 'ಮೆಮೊರಿ ಮ್ಯಾಚ್';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps ಜೋಡಿಗಳನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get gameUiWordGuess => 'ಪದ ಊಹೆ';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'ಹಂತಗಳ ಮೂಲಕ DevOps ಪದಗಳನ್ನು ಊಹಿಸಿ';

  @override
  String get gameUiFindWords => 'ಪದಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ಗ್ರಿಡ್‌ನಲ್ಲಿ ಅಡಗಿರುವ DevOps ಪದಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get gameUiSpotTheDifference => 'ವ್ಯತ್ಯಾಸ ಗುರುತಿಸಿ';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'ಎರಡು ಚಿತ್ರಿತ ದೃಶ್ಯಗಳ ನಡುವಿನ ಐದು ಬದಲಾವಣೆಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get gameUiJigsawPuzzle => 'ಜಿಗ್ಸಾ ಪಜಲ್';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'ಹಂಚಿಕೊಂಡ HD ಪ್ರಾಣಿ ಮತ್ತು ಪ್ರಕೃತಿ ಚಿತ್ರಗಳನ್ನು ಮತ್ತೆ ಜೋಡಿಸಿ';

  @override
  String get gameUiHighOrLow => 'ಹೆಚ್ಚು ಅಥವಾ ಕಡಿಮೆ';

  @override
  String get gameUiBuildAStreak => 'ಸತತ ಗೆಲುವಿನ ಸರಣಿ ನಿರ್ಮಿಸಿ';

  @override
  String get gameUiTrueOrFalseBlitz => 'ಸರಿ ಅಥವಾ ತಪ್ಪು ಬ್ಲಿಟ್ಜ್';

  @override
  String get gameUiQuickAnswerQuiz => 'ತ್ವರಿತ ಉತ್ತರ ರಸಪ್ರಶ್ನೆ';

  @override
  String get gameUiCommandMatch => 'ಕಮಾಂಡ್ ಮ್ಯಾಚ್';

  @override
  String get gameUiMatchCommandsToMeanings => 'ಕಮಾಂಡ್‌ಗಳನ್ನು ಅರ್ಥಗಳೊಂದಿಗೆ ಹೊಂದಿಸಿ';

  @override
  String get gameUiPortMaster => 'ಪೋರ್ಟ್ ಮಾಸ್ಟರ್';

  @override
  String get gameUiGuessDefaultPorts => 'ಡೀಫಾಲ್ಟ್ ಪೋರ್ಟ್‌ಗಳನ್ನು ಊಹಿಸಿ';

  @override
  String get gameUiTicTacToe => 'ಟಿಕ್-ಟ್ಯಾಕ್-ಟೋ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X ನಾಟ್ಸ್ ಅಂಡ್ ಕ್ರಾಸಸ್ ಕಂಪ್ಯೂಟರ್';

  @override
  String get gameUiConnectFour => 'ಕನೆಕ್ಟ್ ಫೋರ್';

  @override
  String get gameUiDropFourDiscs => 'ನಾಲ್ಕು ಡಿಸ್ಕ್‌ಗಳನ್ನು ಬಿಡಿ';

  @override
  String get gameUiLudo => 'ಲೂಡೋ';

  @override
  String get gameUiRaceAgainstBots => 'ಬಾಟ್‌ಗಳ ವಿರುದ್ಧ ಓಟ';

  @override
  String get gameUiChess => 'ಚೆಸ್';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'ಚೆಸ್ ಬೋರ್ಡ್, ಕಾನೂನುಬದ್ಧ ನಡೆಗಳು, ಇಬ್ಬರು ಆಟಗಾರರು';

  @override
  String get gameUiSnakeAndLadders => 'ಹಾವು ಮತ್ತು ಏಣಿ';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'ದಾಳ ಬೋರ್ಡ್, ಹಾವುಗಳು ಮತ್ತು ಏಣಿಗಳು, ಇಬ್ಬರು ಆಟಗಾರರು';

  @override
  String get gameUiGames => 'ಆಟಗಳು 🎮';

  @override
  String get gameUiPlayEarn => 'ಆಡಿ ಮತ್ತು ಗಳಿಸಿ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ಆಟಗಳನ್ನು ಆಡಿ ಮತ್ತು ಬೋನಸ್ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿ!';

  @override
  String get gameUiSearchGames => 'ಆಟಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get gameUiClearSearch => 'ಹುಡುಕಾಟ ತೆರವುಗೊಳಿಸಿ';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" ಗೆ ಹೊಂದುವ ಯಾವುದೇ ಆಟಗಳಿಲ್ಲ';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'ತಿರುಗಿಸಿ ಮತ್ತು ಬೋನಸ್ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗೆಲ್ಲಿರಿ.';

  @override
  String get gameUiScratchToRevealYourReward => 'ನಿಮ್ಮ ಬಹುಮಾನ ಬಹಿರಂಗಪಡಿಸಲು ಸ್ಕ್ರ್ಯಾಚ್ ಮಾಡಿ.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'ಸ್ಲಾಟ್‌ಗಳನ್ನು ತಿರುಗಿಸಿ ಮತ್ತು ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗೆಲ್ಲಿರಿ.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ಒಂದು ಮಿಸ್ಟರಿ ಬಾಕ್ಸ್ ಆರಿಸಿ ಮತ್ತು ಸರಿಯಾಗಿ ಉತ್ತರಿಸಿ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗೆಲ್ಲಿರಿ.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಲು DevOps ಜೋಡಿಗಳನ್ನು ಹೊಂದಿಸಿ.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ಪ್ರಯತ್ನಗಳಲ್ಲಿ DevOps ಪದವನ್ನು ಊಹಿಸಿ.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ಗ್ರಿಡ್‌ನಲ್ಲಿ ಅಡಗಿರುವ DevOps ಪದಗಳನ್ನು ಹುಡುಕಿ.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 ಹಂತಗಳಲ್ಲಿ DevOps ಪದಗಳನ್ನು ಹುಡುಕಲು ಸ್ವೈಪ್ ಮಾಡಿ.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'ಎರಡು ಚಿತ್ರಿತ ದೃಶ್ಯಗಳ ನಡುವಿನ ಐದು ಬದಲಾವಣೆಗಳನ್ನು ಹುಡುಕಿ.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'ಹಂಚಿಕೊಂಡ HD ಪ್ರಾಣಿ ಮತ್ತು ಪ್ರಕೃತಿ ಚಿತ್ರಗಳನ್ನು ಮತ್ತೆ ಜೋಡಿಸಿ.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ಸತತ ಗೆಲುವಿನ ಸರಣಿ ನಿರ್ಮಿಸಿ ಮತ್ತು ನಿಮ್ಮ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಸಂಗ್ರಹಿಸಿ.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'ತ್ವರಿತ ಉತ್ತರಗಳೊಂದಿಗೆ ಗಡಿಯಾರವನ್ನು ಸೋಲಿಸಿ.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'ಸರಿ ಅಥವಾ ತಪ್ಪು ಬ್ಲಿಟ್ಜ್ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'ಕಮಾಂಡ್‌ಗಳನ್ನು ಅವು ಮಾಡುವ ಕೆಲಸದೊಂದಿಗೆ ಹೊಂದಿಸಿ.';

  @override
  String get gameUiCommandMatch670a76e => 'ಕಮಾಂಡ್ ಮ್ಯಾಚ್ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 ಜೀವಗಳೊಂದಿಗೆ ಡೀಫಾಲ್ಟ್ ಪೋರ್ಟ್‌ಗಳನ್ನು ಊಹಿಸಿ.';

  @override
  String get gameUiPortMaster8f5fd42 => 'ಪೋರ್ಟ್ ಮಾಸ್ಟರ್ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'ಕಂಪ್ಯೂಟರ್ ವಿರುದ್ಧ O/X ಆಡಿ.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'ಗೆಲ್ಲಲು ನಾಲ್ಕು ಡಿಸ್ಕ್‌ಗಳನ್ನು ಸತತವಾಗಿ ಬಿಡಿ.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'ನಿಮ್ಮ ಕಾಯಿಗಳನ್ನು ಮೂರು ಬಾಟ್‌ಗಳ ವಿರುದ್ಧ ಓಡಿಸಿ.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'ಕಾನೂನುಬದ್ಧ ನಡೆಗಳೊಂದಿಗೆ ಸ್ಥಳೀಯ ಇಬ್ಬರು ಆಟಗಾರರ ಚೆಸ್.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'ಕಾನೂನುಬದ್ಧ ಇಬ್ಬರು ಆಟಗಾರರ ಚೆಸ್ ಪಂದ್ಯ ಆಡಿ.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'ಇಬ್ಬರು ಆಟಗಾರರ ದಾಳ ಬೋರ್ಡ್ ಆಟ.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 ತಲುಪುವ ಓಟ. ಏಣಿಗಳನ್ನು ಹತ್ತಿ ಮತ್ತು ಹಾವುಗಳಿಂದ ತಪ್ಪಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get gameUiPlay => 'ಆಡಿ';

  @override
  String get gameUiWheelStopped => 'ಚಕ್ರ ನಿಂತಿತು!';

  @override
  String get gameUiYourRewardIs => 'ನಿಮ್ಮ ಬಹುಮಾನ';

  @override
  String get gameUiPOINTS => 'ಪಾಯಿಂಟ್‌ಗಳು';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ಈ ಬಹುಮಾನವನ್ನು ಪಡೆಯಲು 1 ರಸಪ್ರಶ್ನೆ ಪ್ರಶ್ನೆಗೆ ಸರಿಯಾಗಿ ಉತ್ತರಿಸಿ.';

  @override
  String get gameUiWrongAnswerRewardLost => 'ತಪ್ಪು ಉತ್ತರ = ಬಹುಮಾನ ಕಳೆದುಕೊಂಡಿರಿ.';

  @override
  String get gameUiAnswerQuestion => 'ಪ್ರಶ್ನೆಗೆ ಉತ್ತರಿಸಿ';

  @override
  String get gameUiSpinWheele449982 => '🎡 ಚಕ್ರ ತಿರುಗಿಸಿ';

  @override
  String get gameUiDailySpin => 'ದೈನಂದಿನ ಸ್ಪಿನ್';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'ಚಕ್ರ ತಿರುಗಿಸಿ, ನಂತರ ನಿಮ್ಮ ಬಹುಮಾನ ಪಡೆಯಲು ಪ್ರಶ್ನೆಗೆ ಉತ್ತರಿಸಿ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'ನೀವು ಇಂದಿನ ಸ್ಪಿನ್ ಅನ್ನು ಈಗಾಗಲೇ ಬಳಸಿದ್ದೀರಿ.';

  @override
  String get gameUiSpinning => 'ತಿರುಗುತ್ತಿದೆ...';

  @override
  String get gameUiSPINNOW => 'ಈಗ ತಿರುಗಿಸಿ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'ಇಂದಿನ ಬಹುಮಾನ: ⭐ $value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String get gameUiBackToGames => 'ಆಟಗಳಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get gameUiSPIN => 'ತಿರುಗಿಸಿ';

  @override
  String get gameUiRewardRevealed => 'ಬಹುಮಾನ ಬಹಿರಂಗವಾಯಿತು!';

  @override
  String get gameUiYouFound => 'ನೀವು ಕಂಡುಕೊಂಡಿದ್ದು';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ ಸ್ಕ್ರ್ಯಾಚ್ ಕಾರ್ಡ್';

  @override
  String get gameUiDailyScratch => 'ದೈನಂದಿನ ಸ್ಕ್ರ್ಯಾಚ್';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'ಇಂದಿನ ಬಹುಮಾನ ಬಹಿರಂಗಪಡಿಸಲು ಕಾರ್ಡ್ ಸ್ಕ್ರ್ಯಾಚ್ ಮಾಡಿ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'ನೀವು ಇಂದಿನ ಸ್ಕ್ರ್ಯಾಚ್ ಕಾರ್ಡ್ ಅನ್ನು ಈಗಾಗಲೇ ಬಳಸಿದ್ದೀರಿ.';

  @override
  String get gameUiAlreadyScratched => 'ಈಗಾಗಲೇ ಸ್ಕ್ರ್ಯಾಚ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'ಇನ್ನೊಂದು ಬಹುಮಾನಕ್ಕಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ.';

  @override
  String get gameUiYouRevealed => 'ನೀವು ಬಹಿರಂಗಪಡಿಸಿದ್ದು';

  @override
  String get gameUiSCRATCHHERE => 'ಇಲ್ಲಿ ಸ್ಕ್ರ್ಯಾಚ್ ಮಾಡಿ  👆';

  @override
  String get gameUiJACKPOT777 => 'ಜಾಕ್‌ಪಾಟ್ 777!';

  @override
  String get gameUiLucky777 => 'ಲಕ್ಕಿ 777!';

  @override
  String get gameUiYourReward => 'ನಿಮ್ಮ ಬಹುಮಾನ';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ಲಕ್ಕಿ ಸ್ಲಾಟ್ಸ್';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'ಸ್ಲಾಟ್‌ಗಳನ್ನು ತಿರುಗಿಸಿ, ನಂತರ ಬಹುಮಾನ ಪಡೆಯಲು ಪ್ರಶ್ನೆಗೆ ಉತ್ತರಿಸಿ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'ನೀವು ಇಂದು ಈಗಾಗಲೇ ಆಡಿದ್ದೀರಿ.';

  @override
  String get gameUiSPINNING => 'ತಿರುಗುತ್ತಿದೆ...';

  @override
  String get gameUiROLLNOW => 'ಈಗ ಉರುಳಿಸಿ';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ಜಾಕ್‌ಪಾಟ್! 777 ಪಾಯಿಂಟ್‌ಗಳು ಲಭ್ಯವಿವೆ!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'ಮಿಸ್ಟರಿ ಡೀಲ್ ಸ್ಥಿತಿಯನ್ನು ಪರಿಶೀಲಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'ಬಾಕ್ಸ್ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String get gameUiStartQuestion => 'ಪ್ರಶ್ನೆ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ಮಿಸ್ಟರಿ ಡೀಲ್';

  @override
  String get gameUiMysteryDealCompleted => 'ಮಿಸ್ಟರಿ ಡೀಲ್ ಪೂರ್ಣಗೊಂಡಿದೆ!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'ನೀವು ಇಂದು ಈಗಾಗಲೇ ಮಿಸ್ಟರಿ ಡೀಲ್ ಆಡಿದ್ದೀರಿ.';

  @override
  String get gameUiTodayYouWon => 'ಇಂದು ನೀವು ಗೆದ್ದಿದ್ದೀರಿ';

  @override
  String get gameUiTodaySReward => 'ಇಂದಿನ ಬಹುಮಾನ';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 ಪಾಯಿಂಟ್‌ಗಳು ಕಳೆದುಹೋದವು';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'ಇನ್ನೊಂದು ಮಿಸ್ಟರಿ ಬಾಕ್ಸ್‌ಗಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';

  @override
  String get gameUiChooseYourMysteryBox => 'ನಿಮ್ಮ ಮಿಸ್ಟರಿ ಬಾಕ್ಸ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ಪ್ರತಿ ಬಾಕ್ಸ್‌ನಲ್ಲಿ 10 ರಿಂದ 1000 ಪಾಯಿಂಟ್‌ಗಳ ನಡುವಿನ ಗುಪ್ತ ಬಹುಮಾನವಿದೆ.';

  @override
  String get gameUiPickOnlyOneBox => 'ಕೇವಲ ಒಂದು ಬಾಕ್ಸ್ ಆರಿಸಿ!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'ಎಲ್ಲಾ $value1 ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'ಹಂತ $value1 ಪೂರ್ಣಗೊಂಡಿದೆ!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 ನಡೆಗಳಲ್ಲಿ ಪೂರ್ಣಗೊಂಡಿದೆ.\nನೀವು $value2 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 ನಡೆಗಳಲ್ಲಿ ಪೂರ್ಣಗೊಂಡಿದೆ.\nಈ ಹಂತವನ್ನು ಈಗಾಗಲೇ ಪೂರ್ಣಗೊಳಿಸಲಾಗಿತ್ತು.';
  }

  @override
  String get gameUiNextLevel => 'ಮುಂದಿನ ಹಂತ';

  @override
  String get gameUiDone => 'ಮುಗಿದಿದೆ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'ಮೆಮೊರಿ ಮ್ಯಾಚ್ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'ಎಲ್ಲಾ 100 ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'ನೀವು ಪ್ರತಿ ಮೆಮೊರಿ ಮ್ಯಾಚ್ ಹಂತವನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ. ಚೆನ್ನಾಗಿ ಆಡಿದ್ದೀರಿ!';

  @override
  String get gameUiChooseLevel => 'ಹಂತ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String gameUiMoves(String value1) {
    return 'ನಡೆಗಳು: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'ಹಂತ $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 ಜೋಡಿಗಳು';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'ಹಂತ $value1 ನೆನಪಿಟ್ಟುಕೊಳ್ಳಿ';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 ಹೊಂದಾಣಿಕೆಯ ಜೋಡಿಗಳನ್ನು ಹುಡುಕಿ';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz ಲೋಗೋ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'ಅಧ್ಯಾಯ 1 · ಬಿಲ್ಡ್ ಪೈಪ್‌ಲೈನ್ ಅನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'ಅಧ್ಯಾಯ 2 · ಕ್ಲೌಡ್ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್ ಅನ್ನು ಹಿಗ್ಗಿಸಿ';

  @override
  String get gameUiChapter3ProtectProduction => 'ಅಧ್ಯಾಯ 3 · ಪ್ರೊಡಕ್ಷನ್ ಅನ್ನು ರಕ್ಷಿಸಿ';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'ಸಲ್ಲಿಸಲು ಉಳಿದ ಎಲ್ಲಾ $value1 ಅಕ್ಷರಗಳನ್ನು ಬಳಸಿ.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'ಎಲ್ಲಾ ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'ಹಂತ $value1 ಪೂರ್ಣಗೊಂಡಿದೆ!';
  }

  @override
  String get gameUiTryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'ಪದ $value1 ಆಗಿತ್ತು. ನೀವು $value2 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'ಪದ $value1 ಆಗಿತ್ತು. $value3 ಸುಳಿವಿನ ನಂತರ ನೀವು $value2 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'ಪದ $value1 ಆಗಿತ್ತು. $value3 ಸುಳಿವುಗಳ ನಂತರ ನೀವು $value2 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'ಪದ $value1 ಆಗಿತ್ತು. ಹಂತ $value2 ಇನ್ನೂ ನಿಮಗಾಗಿ ಕಾಯುತ್ತಿದೆ.';
  }

  @override
  String get gameUiFinish => 'ಮುಕ್ತಾಯಗೊಳಿಸಿ';

  @override
  String get gameUiNextLevel254fd73 => 'ಮುಂದಿನ ಹಂತ';

  @override
  String get gameUiRetryLevel => 'ಹಂತವನ್ನು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get gameUiHowToPlay => 'ಆಡುವ ವಿಧಾನ';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ಪ್ರತಿ ಹಂತದಲ್ಲಿ ಒಂದು DevOps ಪದವಿರುತ್ತದೆ. ಐದು ಅಕ್ಷರಗಳಿಗಿಂತ ಚಿಕ್ಕ ಪದಗಳು ಯಾವುದೇ ಉಚಿತ ಅಕ್ಷರಗಳಿಲ್ಲದೆ ಪ್ರಾರಂಭವಾಗುತ್ತವೆ; ಉದ್ದದ ಪದಗಳು ಒಂದರೊಂದಿಗೆ ಪ್ರಾರಂಭವಾಗುತ್ತವೆ. ಉತ್ತರವನ್ನು ರಚಿಸಲು ಅಕ್ಷರ ರ್‍ಯಾಕ್ ಬಳಸಿ ಮತ್ತು Enter ಒತ್ತಿ. ಸುಳಿವುಗಳು ಇನ್ನೊಂದು ಅಕ್ಷರವನ್ನು ಬಹಿರಂಗಪಡಿಸುತ್ತವೆ ಮತ್ತು ನಿಮ್ಮ ಬ್ಯಾಲೆನ್ಸ್‌ನಿಂದ 20 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಕಡಿತಗೊಳಿಸುತ್ತವೆ. ಪೂರ್ಣಗೊಂಡ ಪ್ರತಿ ಹಂತಕ್ಕೆ 100 ಪಾಯಿಂಟ್‌ಗಳು ಸಿಗುತ್ತವೆ.';

  @override
  String get gameUiGotIt => 'ಅರ್ಥವಾಯಿತು';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'ಎಲ್ಲಾ $value1 ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';
  }

  @override
  String get gameUiEasy => 'ಸುಲಭ';

  @override
  String get gameUiMedium => 'ಮಧ್ಯಮ';

  @override
  String get gameUiHard => 'ಕಠಿಣ';

  @override
  String get gameUiHowToPlay13a6b22 => 'ಆಡುವ ವಿಧಾನ';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'ಹಂತ $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'ಬಹುಮಾನ $value1 ಪಾಯಿಂಟ್‌ಗಳು · ಬಳಸಿದ ಸುಳಿವುಗಳು $value2';
  }

  @override
  String get gameUiHint20Pts => 'ಸುಳಿವು · −20 ಪಾಯಿಂಟ್‌ಗಳು';

  @override
  String get gameUiEnter => 'ಎಂಟರ್';

  @override
  String get gameUiDelete => 'ಅಳಿಸಿ';

  @override
  String get gameUiDragThroughAWord => 'ಪದದ ಮೂಲಕ ಎಳೆಯಿರಿ';

  @override
  String get gameUiDragThroughEachWord => 'ಪ್ರತಿ ಪದದ ಮೂಲಕ ಎಳೆಯಿರಿ';

  @override
  String get gameUiReleaseToSelect => 'ಆಯ್ಕೆ ಮಾಡಲು ಬಿಡಿ';

  @override
  String gameUiFound(String value1) {
    return '$value1 ಸಿಕ್ಕಿತು';
  }

  @override
  String get gameUiNoWordThere => 'ಅಲ್ಲಿ ಯಾವುದೇ ಪದವಿಲ್ಲ';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ಈಗಾಗಲೇ ಸಿಕ್ಕಿದೆ';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 ಅನ್ನು ಹುಡುಕಿ';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'ಎಲ್ಲಾ ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'ನೀವು ಪ್ರತಿ ಪದವನ್ನು ಕಂಡುಹಿಡಿದು $value1 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'ನೀವು ಪ್ರತಿ ಪದವನ್ನು ಕಂಡುಹಿಡಿದಿದ್ದೀರಿ. ಈ ಹಂತವನ್ನು ಈಗಾಗಲೇ ಪೂರ್ಣಗೊಳಿಸಲಾಗಿತ್ತು.';

  @override
  String get gameUiAll500LevelsComplete => 'ಎಲ್ಲಾ 500 ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ!';

  @override
  String get gameUiReviewLevels => 'ಹಂತಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String gameUiLeft(String value1) {
    return '$value1 ಉಳಿದಿವೆ';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'ಪ್ರಗತಿಯನ್ನು ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'ನೀವು $value1 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'ನೀವು ಈ ಚಿತ್ರವನ್ನು ಈಗಾಗಲೇ ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ. ಮರು ಆಟದಲ್ಲಿ ಹೆಚ್ಚುವರಿ ಪಾಯಿಂಟ್‌ಗಳಿಲ್ಲ.';

  @override
  String get gameUiYouCompletedEveryPicture => 'ನೀವು ಪ್ರತಿ ಚಿತ್ರವನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ!';

  @override
  String get gameUiLevels => 'ಹಂತಗಳು';

  @override
  String get gameUiPictureB => 'ಚಿತ್ರ B';

  @override
  String get gameUiPictureA => 'ಚಿತ್ರ A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ಚಿತ್ರ ಲೋಡ್ ಆಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get gameUiResetZoom => 'ಜೂಮ್ ಮರುಹೊಂದಿಸಿ';

  @override
  String get gameUiZoomBothPictures => 'ಎರಡೂ ಚಿತ್ರಗಳನ್ನು ಜೂಮ್ ಮಾಡಿ';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ಸುಳಿವು · ಪ್ರತಿ ಸುಳಿವಿಗೆ $value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'ಪ್ರಗತಿಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'ಹಂತ $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'ಎಲ್ಲಾ ವ್ಯತ್ಯಾಸಗಳು ಸಿಕ್ಕಿವೆ!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count ವ್ಯತ್ಯಾಸಗಳನ್ನು ಹುಡುಕಿ. ಯಾವುದೇ ಚಿತ್ರದಲ್ಲಿ ಪ್ರತಿಯೊಂದನ್ನೂ ಟ್ಯಾಪ್ ಮಾಡಿ.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ತಪ್ಪುಗಳು: $value1  ·  ಸುಳಿವುಗಳು: $value2 (−$value3 ಪಾಯಿಂಟ್‌ಗಳು)  ·  $value4 ಹಂತಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'ಮುಂದಿನ ಹಂತ: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'ಪಜಲ್ $value1 ಪೂರ್ಣಗೊಂಡಿದೆ!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ಚಿತ್ರ $value1 ನಡೆಗಳಲ್ಲಿ ಪೂರ್ಣಗೊಂಡಿದೆ. ನೀವು $value2 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ಚಿತ್ರ $value1 ನಡೆಗಳಲ್ಲಿ ಪೂರ್ಣಗೊಂಡಿದೆ.';
  }

  @override
  String get gameUiNextPuzzle => 'ಮುಂದಿನ ಪಜಲ್';

  @override
  String get gameUiAllPuzzlesComplete => 'ಎಲ್ಲಾ ಪಜಲ್‌ಗಳು ಪೂರ್ಣಗೊಂಡಿವೆ';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return '$value2 ರಲ್ಲಿ ಪಜಲ್ ತುಂಡು $value1, ಸರಿಯಾಗಿ ಇರಿಸಲಾಗಿದೆ';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return '$value2 ರಲ್ಲಿ ಪಜಲ್ ತುಂಡು $value1';
  }

  @override
  String get gameUiChoosePuzzle => 'ಪಜಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get gameUiShufflePieces => 'ತುಂಡುಗಳನ್ನು ಕಲಕಿ';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'ಒಗಟಿನ ಚಿತ್ರವನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get gameUiPreviousPuzzle => 'ಹಿಂದಿನ ಒಗಟು';

  @override
  String gameUiPuzzle(String value1) {
    return 'ಒಗಟು $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 ನಡೆಗಳು';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ತುಣುಕುಗಳನ್ನು ಬದಲಾಯಿಸಲು ಎಳೆಯಿರಿ, ಅಥವಾ ಎರಡು ತುಣುಕುಗಳನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 ಒಗಟುಗಳನ್ನು ಬಿಡಿಸಲಾಗಿದೆ  ·  ಪ್ರತಿಯೊಂದಕ್ಕೆ $value3 ಅಂಕಗಳು';
  }

  @override
  String get gameUiGameOver => 'ಆಟ ಮುಗಿಯಿತು';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'ಸಂಖ್ಯೆ $value1 ಆಗಿತ್ತು.\nಸರಣಿ: $value2\nನೀವು $value3 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!\n\nಇನ್ನೊಂದು ಅವಕಾಶಕ್ಕಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';
  }

  @override
  String get gameUiHigherOrLower => 'ಹೆಚ್ಚು ಅಥವಾ ಕಡಿಮೆ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'ಇಂದು ಈಗಾಗಲೇ ಆಡಿದ್ದೀರಿ!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'ನೀವು $value1/$value2/$value3 ರಂದು ಆಡಿದ್ದೀರಿ.\n\nಹೊಸ ಸರಣಿಯನ್ನು ನಿರ್ಮಿಸಲು ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'ನೀವು ಇಂದು ಈಗಾಗಲೇ ಆಡಿದ್ದೀರಿ.\n\nಇನ್ನೊಂದು ಅವಕಾಶಕ್ಕಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 ಸರಣಿ: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ ಅಂಕಗಳು: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'ಮುಂದಿನ ಸಂಖ್ಯೆ ಹೆಚ್ಚು ಇರುತ್ತದೆಯೇ ಅಥವಾ ಕಡಿಮೆ ಇರುತ್ತದೆಯೇ?';

  @override
  String get gameUiLower => 'ಕಡಿಮೆ';

  @override
  String get gameUiHigher => 'ಹೆಚ್ಚು';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'ಸರಿ ಅಥವಾ ತಪ್ಪು ಬ್ಲಿಟ್ಜ್ ⚡';

  @override
  String get gameUiTimeSUp => 'ಸಮಯ ಮುಗಿಯಿತು!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'ಸರಿಯಾದ ಉತ್ತರಗಳು: $value1\nಅತ್ಯುತ್ತಮ ಸರಣಿ: $value2\n$value3ನೀವು $value4 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!\n\nಇನ್ನೊಂದು ಸುತ್ತಿಗಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';
  }

  @override
  String get gameUiStreakBonus20 => 'ಸರಣಿ ಬೋನಸ್: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'ತೋರಿಸಿರುವ ಉತ್ತರ ಸರಿಯೇ ಅಥವಾ ತಪ್ಪೇ?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 ವರ್ಗಗಳಾದ್ಯಂತ $value1 ಪ್ರಶ್ನೆಗಳು';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'ನಿಮಗೆ $value1 ಸೆಕೆಂಡುಗಳಿವೆ. ಪ್ರತಿ ಸರಿಯಾದ ಉತ್ತರಕ್ಕೆ $value2 ಅಂಕಗಳು ಸಿಗುತ್ತವೆ. ತಪ್ಪು ಉತ್ತರಕ್ಕೆ $value3 ಸೆಕೆಂಡುಗಳು ಕಡಿತವಾಗುತ್ತವೆ. 5 ಸರಣಿ ತಲುಪಿದರೆ +20 ಬೋನಸ್ ಸಿಗುತ್ತದೆ.';
  }

  @override
  String get gameUiRoundTimer => 'ಸುತ್ತಿನ ಟೈಮರ್';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 ಸೆಕೆಂಡುಗಳು';
  }

  @override
  String get gameUiStart => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get gameUiTrue => 'ಸರಿ';

  @override
  String get gameUiFalse => 'ತಪ್ಪು';

  @override
  String get gameUiCommandMatch26b0e70 => 'ಕಮಾಂಡ್ ಹೊಂದಾಣಿಕೆ 🔗';

  @override
  String get gameUiAllMatched => 'ಎಲ್ಲವೂ ಹೊಂದಾಣಿಕೆಯಾಯಿತು!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ತಪ್ಪುಗಳು: $value1\nನೀವು $value2 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!\n\nಹೊಸ ಕಮಾಂಡ್‌ಗಳಿಗಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'ಸುತ್ತು $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ಒಂದು ಕಮಾಂಡ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ, ನಂತರ ಅದರ ಅರ್ಥವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'ಈಗ ಹೊಂದುವ ಅರ್ಥವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get gameUiPortMaster9c730cf => 'ಪೋರ್ಟ್ ಮಾಸ್ಟರ್ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'ಪೋರ್ಟ್ ಮಾಸ್ಟರ್!';

  @override
  String get gameUiOutOfLives => 'ಜೀವಗಳು ಮುಗಿದವು';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'ಸರಿಯಾದ ಉತ್ತರಗಳು: $value1\nನೀವು $value2 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!\n\nಇನ್ನೊಂದು ಸುತ್ತಿಗಾಗಿ ನಾಳೆ ಮತ್ತೆ ಬನ್ನಿ!';
  }

  @override
  String get gameUiYouEarned10Points => 'ನೀವು 10 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ!';

  @override
  String get gameUiYouWin => 'ನೀವು ಗೆದ್ದಿದ್ದೀರಿ!';

  @override
  String gameUiWins(String value1) {
    return '$value1 ಗೆದ್ದರು!';
  }

  @override
  String get gameUiXWins => 'X ಗೆದ್ದರು!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) ಗೆದ್ದರು!';
  }

  @override
  String get gameUiComputerWins => 'ಕಂಪ್ಯೂಟರ್ ಗೆದ್ದಿತು';

  @override
  String get gameUiOWins => 'O ಗೆದ್ದರು!';

  @override
  String get gameUiPlayer2OWins => 'ಆಟಗಾರ 2 (O) ಗೆದ್ದರು!';

  @override
  String get gameUiItSADraw => 'ಡ್ರಾ ಆಯಿತು';

  @override
  String get gameUiYourTurn => 'ನಿಮ್ಮ ಸರದಿ';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ಅವರ ಸರದಿ';
  }

  @override
  String get gameUiComputerIsThinking => 'ಕಂಪ್ಯೂಟರ್ ಯೋಚಿಸುತ್ತಿದೆ';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'ಆಟಗಾರ $value1 ನಡೆಯಬೇಕು';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ನಡೆಯಬೇಕು';
  }

  @override
  String get gameUiPlayer2ToMove => 'ಆಟಗಾರ 2 ನಡೆಯಬೇಕು';

  @override
  String get gameUiNewRound => 'ಹೊಸ ಸುತ್ತು';

  @override
  String get gameUiVsComputer => 'ಕಂಪ್ಯೂಟರ್ ವಿರುದ್ಧ';

  @override
  String get gameUi2Players => '2 ಆಟಗಾರರು';

  @override
  String get gameUiYou => 'ನೀವು';

  @override
  String get gameUiDraws => 'ಡ್ರಾಗಳು';

  @override
  String get gameUiPlayer2 => 'ಆಟಗಾರ 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ಕೋಶ $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'ಮತ್ತೆ ಆಡಿ';

  @override
  String get gameUiConnectFourWin20Points => 'ಕನೆಕ್ಟ್ ಫೋರ್ ಗೆಲುವು: 20 ಅಂಕಗಳು!';

  @override
  String get gameUiBotWins => 'ಬೋಟ್ ಗೆದ್ದಿತು!';

  @override
  String get gameUiRed => 'ಕೆಂಪು';

  @override
  String get gameUiYellow => 'ಹಳದಿ';

  @override
  String get gameUiBoardFullDraw => 'ಬೋರ್ಡ್ ತುಂಬಿದೆ — ಡ್ರಾ';

  @override
  String get gameUiBotIsThinking => 'ಬೋಟ್ ಯೋಚಿಸುತ್ತಿದೆ';

  @override
  String get gameUiBotTurn => 'ಬೋಟ್ ಸರದಿ';

  @override
  String get gameUiNewGame => 'ಹೊಸ ಆಟ';

  @override
  String get gameUiVsBot => 'ಬೋಟ್ ವಿರುದ್ಧ';

  @override
  String get gameUi2Player => '2 ಆಟಗಾರರು';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'ಬೋಟ್ ವಿರುದ್ಧ ಆಡಿ · ಡಿಸ್ಕ್ ಹಾಕಲು ಒಂದು ಕಾಲಮ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'ಇಬ್ಬರು ಆಟಗಾರರು · ಡಿಸ್ಕ್ ಹಾಕಲು ಒಂದು ಕಾಲಮ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String gameUiColumn(String value1) {
    return 'ಕಾಲಮ್ $value1';
  }

  @override
  String get gameUiYouRed => 'ನೀವು · ಕೆಂಪು';

  @override
  String get gameUiRedPlayer1 => 'ಕೆಂಪು · ಆಟಗಾರ 1';

  @override
  String get gameUiBotYellow => 'ಬೋಟ್ · ಹಳದಿ';

  @override
  String get gameUiYellowPlayer2 => 'ಹಳದಿ · ಆಟಗಾರ 2';

  @override
  String get gameUiLudoMatchStats => 'ಲೂಡೋ ಪಂದ್ಯದ ಅಂಕಿಅಂಶಗಳು';

  @override
  String get gameUiNoCompletedMatchesYet => 'ಇನ್ನೂ ಯಾವುದೇ ಪೂರ್ಣಗೊಂಡ ಪಂದ್ಯಗಳಿಲ್ಲ.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'ಆಡಿದ್ದು $value1  ·  ಗೆದ್ದದ್ದು $value2  ·  ಸೋತದ್ದು $value3';
  }

  @override
  String get gameUiClose => 'ಮುಚ್ಚಿ';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'ಲೂಡೋ ಚಾಂಪಿಯನ್! ನೀವು 50 ಅಂಕಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';

  @override
  String get gameUiNewLudoGame => 'ಹೊಸ ಲೂಡೋ ಆಟ';

  @override
  String get gameUiBotOpponents => 'ಬೋಟ್ ಎದುರಾಳಿಗಳು';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'ಹೊಸ ಪಂದ್ಯವನ್ನು ಪ್ರಾರಂಭಿಸಿದರೆ ನಿಮ್ಮ ಉಳಿಸಿದ ಆಟವು ಬದಲಾಗುತ್ತದೆ.';

  @override
  String get gameUiCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get gameUiStartGame => 'ಆಟ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get gameUiPlayerColours => 'ಆಟಗಾರರ ಬಣ್ಣಗಳು';

  @override
  String get gameUiApply => 'ಅನ್ವಯಿಸಿ';

  @override
  String get gameUiMatchStats => 'ಪಂದ್ಯದ ಅಂಕಿಅಂಶಗಳು';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 ಚೆಕ್‌ಮೇಟ್ ಮೂಲಕ ಗೆದ್ದರು';
  }

  @override
  String get gameUiBlack => 'ಕಪ್ಪು';

  @override
  String get gameUiWhite => 'ಬಿಳಿ';

  @override
  String get gameUiComputerWinsByCheckmate => 'ಕಂಪ್ಯೂಟರ್ ಚೆಕ್‌ಮೇಟ್ ಮೂಲಕ ಗೆದ್ದಿತು';

  @override
  String get gameUiYouWinByCheckmate => 'ನೀವು ಚೆಕ್‌ಮೇಟ್ ಮೂಲಕ ಗೆದ್ದಿದ್ದೀರಿ';

  @override
  String get gameUiDrawByStalemate => 'ಸ್ಟೇಲ್‌ಮೇಟ್‌ನಿಂದ ಡ್ರಾ';

  @override
  String get gameUiDraw => 'ಡ್ರಾ';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · ಚೆಕ್';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'ಚೆಕ್‌ಮೇಟ್! ನೀವು 50 ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಗಳಿಸಿದ್ದೀರಿ.';

  @override
  String get gameUiStartANewGame => 'ಹೊಸ ಆಟವನ್ನು ಪ್ರಾರಂಭಿಸಬೇಕೇ?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'ಆಟಗಾರ ಮೋಡ್ ಬದಲಾಯಿಸಿದರೆ ಉಳಿಸಿದ ಪಂದ್ಯವು ಬದಲಾಗುತ್ತದೆ.';

  @override
  String get gameUiComputer => 'ಕಂಪ್ಯೂಟರ್';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · ಬಿಳಿ / ಆಟಗಾರ 2 · ಕಪ್ಪು';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'ನೀವು ಬಿಳಿ · ಕಂಪ್ಯೂಟರ್ ಕಪ್ಪು';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (ಬಿಳಿ) · ಕಂಪ್ಯೂಟರ್ (ಕಪ್ಪು)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'ನೀವು ಕಪ್ಪು · ಕಂಪ್ಯೂಟರ್ ಬಿಳಿ';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (ಕಪ್ಪು) · ಕಂಪ್ಯೂಟರ್ (ಬಿಳಿ)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ಮೊದಲು ಎಸೆಯುತ್ತಾರೆ';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ಮತ್ತೆ ಎಸೆಯುತ್ತಾರೆ';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 ಎಸೆಯಬೇಕು';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'ಹಾವು ಮತ್ತು ಏಣಿ ಗೆಲುವು: 100 ಪಾಯಿಂಟ್‌ಗಳು!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'ಆಟಗಾರರನ್ನು ಬದಲಾಯಿಸಿದರೆ ಉಳಿಸಿದ ಆಟವು ಬದಲಾಗುತ್ತದೆ.';

  @override
  String get gameUiStartANewLevel => 'ಹೊಸ ಹಂತವನ್ನು ಪ್ರಾರಂಭಿಸಬೇಕೇ?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'ಹಂತಗಳನ್ನು ಬದಲಾಯಿಸಿದರೆ ಉಳಿಸಿದ ಆಟವು ಬದಲಾಗುತ್ತದೆ.';

  @override
  String get gameUiChangeLevel => 'ಹಂತ ಬದಲಾಯಿಸಿ';

  @override
  String get gameUiPlayers => 'ಆಟಗಾರರು';

  @override
  String get gameUiPlayAgainstBot => 'ಬಾಟ್ ವಿರುದ್ಧ ಆಡಿ';

  @override
  String get gameUi3Players => '3 ಆಟಗಾರರು';

  @override
  String get gameUi4Players => '4 ಆಟಗಾರರು';

  @override
  String get gameUiLevel1709305 => 'ಹಂತ';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'ಹಂತ $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 ಆಟಗಾರರು · ಹಂತ $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · ಎಸೆಯಿರಿ';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 ಇಲ್ಲಿ $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'ಪ್ರಶ್ನೆಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'ಸರಿಯಾದ ಉತ್ತರ!';

  @override
  String get gameUiWrongAnswer => 'ತಪ್ಪು ಉತ್ತರ';

  @override
  String get gameUiYouClaimedYourReward => 'ನೀವು ನಿಮ್ಮ ಬಹುಮಾನವನ್ನು ಪಡೆದಿದ್ದೀರಿ!';

  @override
  String get gameUiAddedToYourTotalPoints => 'ನಿಮ್ಮ ಒಟ್ಟು ಪಾಯಿಂಟ್‌ಗಳಿಗೆ ಸೇರಿಸಲಾಗಿದೆ.';

  @override
  String get gameUiTheCorrectAnswerWas => 'ಸರಿಯಾದ ಉತ್ತರ:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 ಪಾಯಿಂಟ್ ಬಹುಮಾನ ಕಳೆದುಹೋಯಿತು.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'ನಿಮ್ಮ ಈಗಿರುವ ಪಾಯಿಂಟ್‌ಗಳನ್ನು ಕಡಿತಗೊಳಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'ನಾಳೆ ಮತ್ತೆ ಬಂದು ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'ಪ್ರಶ್ನೆಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.';

  @override
  String get gameUiYourReward677fa6e => 'ನಿಮ್ಮ ಬಹುಮಾನ';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 ಪಾಯಿಂಟ್‌ಗಳು';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'ಪಡೆಯಲು ಸರಿಯಾಗಿ ಉತ್ತರಿಸಿ!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'ಇನ್ನೊಂದು ಸುತ್ತಿಗೆ ನಾಳೆ ಬನ್ನಿ.';

  @override
  String get gameUiGreen => 'ಹಸಿರು';

  @override
  String get gameUiBlue => 'ನೀಲಿ';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ಯೋಚಿಸುತ್ತಿದ್ದಾರೆ';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ಒಂದು ಕಾಯಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ದಾಳ ಎಸೆಯಿರಿ';
  }

  @override
  String gameUiDice(String value1) {
    return 'ದಾಳ $value1';
  }

  @override
  String get gameUiRollDice => 'ದಾಳ ಎಸೆಯಿರಿ';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 ಕಾಯಿ $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'ಆಟಗಾರ $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'ಬಾಟ್ $value1';
  }

  @override
  String get gameUiBot => 'ಬಾಟ್';

  @override
  String get gameUiHintInsufficientPoints => 'ಸುಳಿವು ಬಳಸಲು ನಿಮಗೆ 20 ಅಂಕಗಳು ಬೇಕು.';

  @override
  String get gameUiHintPurchaseFailed => 'ಸುಳಿವನ್ನು ಖರೀದಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get gameUiChessKing => 'ರಾಜ';

  @override
  String get gameUiChessQueen => 'ರಾಣಿ';

  @override
  String get gameUiChessRook => 'ಆನೆ';

  @override
  String get gameUiChessBishop => 'ಮಂತ್ರಿ';

  @override
  String get gameUiChessKnight => 'ಕುದುರೆ';

  @override
  String get gameUiChessPawn => 'ಸೈನಿಕ';

  @override
  String get gameUiChessEmpty => 'ಖಾಲಿ';

  @override
  String get gameSceneLampAndFlowers => 'ದೀಪ ಮತ್ತು ಹೂವುಗಳು';

  @override
  String get gameSceneGardenFriends => 'ತೋಟದ ಗೆಳೆಯರು';

  @override
  String get gameSceneUnderwaterExplorers => 'ನೀರಿನೊಳಗಿನ ಅನ್ವೇಷಕರು';

  @override
  String get gameSceneOceanOrca => 'ಸಾಗರದ ಓರ್ಕಾ';

  @override
  String get gameSceneFoxInTheMeadow => 'ಹುಲ್ಲುಗಾವಲಿನಲ್ಲಿ ನರಿ';

  @override
  String get gameSceneYellowSubmarine => 'ಹಳದಿ ಜಲಾಂತರ್ಗಾಮಿ';

  @override
  String get gameSceneTurkeyInTheClearing => 'ಬಯಲು ಜಾಗದಲ್ಲಿ ಟರ್ಕಿ ಕೋಳಿ';

  @override
  String get gameSceneSafariWateringHole => 'ಸಫಾರಿ ನೀರಿನ ಹೊಂಡ';

  @override
  String get gameSceneJungleCompanions => 'ಕಾಡಿನ ಸಹಚರರು';

  @override
  String get gameSceneGoldenPuppyGarden => 'ಚಿನ್ನದ ಬಣ್ಣದ ನಾಯಿಮರಿ ತೋಟ';

  @override
  String get gameSceneSeaTurtleReef => 'ಸಮುದ್ರ ಆಮೆಯ ಹವಳದ ದಿಬ್ಬ';

  @override
  String get gameSceneCoralReefFriends => 'ಹವಳದ ದಿಬ್ಬದ ಗೆಳೆಯರು';

  @override
  String get gameSceneSharedClownfish => 'ಹಂಚಿಕೊಂಡ ಕ್ಲೌನ್‌ಫಿಶ್';

  @override
  String get gameSceneLittleDinosaur => 'ಪುಟ್ಟ ಡೈನೋಸಾರ್';

  @override
  String get gameSceneSafariCompanions => 'ಸಫಾರಿ ಸಹಚರರು';

  @override
  String get gameSceneSwirlingFlowers => 'ಸುತ್ತುತ್ತಿರುವ ಹೂವುಗಳು';

  @override
  String get gameSceneGardenKitten => 'ತೋಟದ ಬೆಕ್ಕಿನ ಮರಿ';

  @override
  String get gameSceneBlueOcean => 'ನೀಲಿ ಸಾಗರ';

  @override
  String get gameSceneCastlePrincess => 'ಕೋಟೆಯ ರಾಜಕುಮಾರಿ';

  @override
  String get gameSceneRedCar => 'ಕೆಂಪು ಕಾರು';

  @override
  String get gameSceneGardenPuppy => 'ತೋಟದ ನಾಯಿಮರಿ';

  @override
  String get gameSceneSpaceExplorer => 'ಬಾಹ್ಯಾಕಾಶ ಅನ್ವೇಷಕ';

  @override
  String get gameSceneEnchantedReadingForest => 'ಮಾಯಾವಿ ಓದುವ ಕಾಡು';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps ಅನಂತ ಚಕ್ರ';

  @override
  String get gameSceneAnsible => 'ಆನ್ಸಿಬಲ್ (Ansible)';

  @override
  String get gameSceneAws => 'ಎಡಬ್ಲ್ಯೂಎಸ್ (AWS)';

  @override
  String get gameSceneAzure => 'ಅಜೂರ್ (Azure)';

  @override
  String get gameSceneBashScripting => 'Bash ಸ್ಕ್ರಿಪ್ಟಿಂಗ್';

  @override
  String get gameSceneDocker => 'ಡಾಕರ್ (Docker)';

  @override
  String get gameSceneGcp => 'ಜಿಸಿಪಿ (GCP)';

  @override
  String get gameSceneGit => 'ಗಿಟ್ (Git)';

  @override
  String get gameSceneHybridCloud => 'ಹೈಬ್ರಿಡ್ ಕ್ಲೌಡ್';

  @override
  String get gameSceneIbmCloud => 'ಐಬಿಎಂ ಕ್ಲೌಡ್ (IBM Cloud)';

  @override
  String get gameSceneJavascript => 'ಜಾವಾಸ್ಕ್ರಿಪ್ಟ್ (JavaScript)';

  @override
  String get gameSceneJenkins => 'ಜೆಂಕಿನ್ಸ್ (Jenkins)';

  @override
  String get gameSceneKubernetes => 'ಕುಬರ್ನೆಟೀಸ್ (Kubernetes)';

  @override
  String get gameSceneLinux => 'ಲಿನಕ್ಸ್ (Linux)';

  @override
  String get gameSceneMultiCloud => 'ಮಲ್ಟಿ ಕ್ಲೌಡ್';

  @override
  String get gameSceneNetworking => 'ನೆಟ್‌ವರ್ಕಿಂಗ್';

  @override
  String get gameSceneOracleCloud => 'ಒರಾಕಲ್ ಕ್ಲೌಡ್ (Oracle Cloud)';

  @override
  String get gameScenePerl => 'ಪರ್ಲ್ (Perl)';

  @override
  String get gameScenePowershell => 'ಪವರ್‌ಶೆಲ್ (PowerShell)';

  @override
  String get gameScenePython => 'ಪೈಥಾನ್ (Python)';

  @override
  String get gameSceneRuby => 'ರೂಬಿ (Ruby)';

  @override
  String get gameSceneTerraform => 'ಟೆರಾಫಾರ್ಮ್ (Terraform)';

  @override
  String get gameSceneWinterFestivalFair => 'ಚಳಿಗಾಲದ ಉತ್ಸವದ ಜಾತ್ರೆ';

  @override
  String get gameSceneArmoredHeroCloseUp => 'ರಕ್ಷಾಕವಚ ಧರಿಸಿದ ನಾಯಕನ ಕ್ಲೋಸ್‌ಅಪ್';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ಕಡುಗೆಂಪು ಬಣ್ಣದಲ್ಲಿ ರಕ್ಷಾಕವಚ ಧರಿಸಿದ ನಾಯಕ';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ಗಾಢ ಬಣ್ಣದ ಪ್ಲುಮೇರಿಯಾ ಹೂವುಗಳು';

  @override
  String get gameSceneMangroveBoardwalk => 'ಮ್ಯಾಂಗ್ರೋವ್ ಹಲಗೆ ಮಾರ್ಗ';

  @override
  String get gameSceneTropicalPalmReflections => 'ಉಷ್ಣವಲಯದ ತಾಳೆಮರಗಳ ಪ್ರತಿಬಿಂಬಗಳು';

  @override
  String get gameSceneMaskedFigureInShadow => 'ನೆರಳಿನಲ್ಲಿ ಮುಖವಾಡ ಧರಿಸಿದ ಆಕೃತಿ';

  @override
  String get gameSceneElectricCompanionAtSunset => 'ಸೂರ್ಯಾಸ್ತದಲ್ಲಿ ವಿದ್ಯುತ್ ಸಹಚರ';

  @override
  String get gameSceneTrainerAndFireDragon => 'ತರಬೇತುದಾರ ಮತ್ತು ಅಗ್ನಿ ಡ್ರ್ಯಾಗನ್';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'ರತ್ನಖಚಿತ ಕುಸ್ತಿ ಮುಖವಾಡ';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ಕೆಂಪು ಕುಂಚ ಸ್ಪರ್ಶಗಳಲ್ಲಿ ಕುಸ್ತಿಪಟು';

  @override
  String get gameSceneWrestlingChampionSalute => 'ಕುಸ್ತಿ ಚಾಂಪಿಯನ್‌ನ ವಂದನೆ';

  @override
  String get gameSceneMorningAtTheBakery => 'ಬೇಕರಿಯಲ್ಲಿ ಬೆಳಗಿನ ಸಮಯ';

  @override
  String get gameSceneGreenhousePottingBench => 'ಹಸಿರುಮನೆಯ ಕುಂಡ ಜೋಡಣೆ ಮೇಜು';

  @override
  String get gameSceneHarborFishingBoat => 'ಬಂದರಿನ ಮೀನುಗಾರಿಕಾ ದೋಣಿ';

  @override
  String get gameSceneAtticObservatory => 'ಅಟ್ಟದ ವೀಕ್ಷಣಾಲಯ';

  @override
  String get gameSceneToyMakerSWorkshop => 'ಆಟಿಕೆ ತಯಾರಕನ ಕಾರ್ಯಾಗಾರ';

  @override
  String get gameSceneWoodlandCampsite => 'ಅರಣ್ಯ ಶಿಬಿರ ಸ್ಥಳ';

  @override
  String get gameSceneAfternoonMusicRoom => 'ಮಧ್ಯಾಹ್ನದ ಸಂಗೀತ ಕೊಠಡಿ';

  @override
  String get gameSceneSeasideIceCreamStand => 'ಕಡಲತೀರದ ಐಸ್ ಕ್ರೀಮ್ ಅಂಗಡಿ';

  @override
  String get gameSceneLibraryReadingNook => 'ಗ್ರಂಥಾಲಯದ ಓದುವ ಮೂಲೆ';

  @override
  String get gameSceneSewingStudio => 'ಹೊಲಿಗೆ ಸ್ಟುಡಿಯೋ';

  @override
  String get gameSceneFruitMarket => 'ಹಣ್ಣಿನ ಮಾರುಕಟ್ಟೆ';

  @override
  String get gameSceneKoiCourtyard => 'ಕೋಯಿ ಮೀನಿನ ಅಂಗಳ';

  @override
  String get gameSceneArtistSAtelier => 'ಕಲಾವಿದನ ಸ್ಟುಡಿಯೋ';

  @override
  String get gameSceneMountainRailway => 'ಪರ್ವತ ರೈಲುಮಾರ್ಗ';

  @override
  String get gameSceneCountryKitchen => 'ಹಳ್ಳಿಯ ಅಡುಗೆಮನೆ';

  @override
  String get gameScenePotteryWorkshop => 'ಕುಂಬಾರಿಕೆ ಕಾರ್ಯಾಗಾರ';

  @override
  String get gameSceneBeachPicnic => 'ಕಡಲತೀರದ ಪಿಕ್ನಿಕ್';

  @override
  String get gameSceneFlowerShop => 'ಹೂವಿನ ಅಂಗಡಿ';

  @override
  String get gameSceneClockmakerSWorkshop => 'ಗಡಿಯಾರ ತಯಾರಕನ ಕಾರ್ಯಾಗಾರ';

  @override
  String get gameSceneRainyCafeTerrace => 'ಮಳೆಯ ಕೆಫೆ ಟೆರೇಸ್';

  @override
  String get gameSceneCastleHerbGarden => 'ಕೋಟೆಯ ಗಿಡಮೂಲಿಕೆ ತೋಟ';

  @override
  String get gameSceneClassroomArtCorner => 'ತರಗತಿಯ ಕಲಾ ಮೂಲೆ';

  @override
  String get gameSceneAquariumShop => 'ಅಕ್ವೇರಿಯಂ ಅಂಗಡಿ';

  @override
  String get gameSceneAutumnLeafCollection => 'ಶರತ್ಕಾಲದ ಎಲೆಗಳ ಸಂಗ್ರಹ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'ಚಂದ್ರನ ಕೆಳಗೆ ಒಂಟಿ ಮರ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ಕೊಂಬೆಯ ಮೇಲೆ ಶರತ್ಕಾಲದ ಹೂವು';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'ಹಸಿರು ಎಲೆಗಳ ನಡುವೆ ನರಿ';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'ಲಿಲ್ಲಿ ಹೂವುಗಳಿಂದ ಆವೃತವಾದ ಸರೋವರದಲ್ಲಿ ಕ್ಯಾನೋ';

  @override
  String get gameSceneDewDropsOnALeaf => 'ಎಲೆಯ ಮೇಲೆ ಇಬ್ಬನಿ ಹನಿಗಳು';

  @override
  String get gameSceneStagInATurquoiseLake => 'ಪಿರೋಜಿ ಬಣ್ಣದ ಸರೋವರದಲ್ಲಿ ಗಂಡು ಜಿಂಕೆ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'ಕಿತ್ತಳೆ ಚಂದ್ರನ ಕೆಳಗೆ ಬೈಸಿಕಲ್';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'ಕಣಿವೆಯ ಮೇಲಿರುವ ಬಿಳಿ ಹುಲಿ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'ನೀಲಿ ನೀರಿನಲ್ಲಿ ಎರಡು ಮರಗಳು';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'ನಿಷ್ಠಾವಂತ ನಾಯಿಯ ಪಕ್ಕದಲ್ಲಿ ಮೀನು ಹಿಡಿಯುವುದು';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'ಪರ್ವತ ಸರೋವರದ ಪಕ್ಕದಲ್ಲಿ ಲಿಲ್ಲಿ ಹೂವುಗಳು';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'ಗುಲಾಬಿ ಬಣ್ಣದ ನದಿತೀರದಲ್ಲಿ ಜಿಂಕೆ';

  @override
  String get gameSceneTropicalHutAtSunset => 'ಸೂರ್ಯಾಸ್ತದ ಸಮಯದಲ್ಲಿ ಉಷ್ಣವಲಯದ ಗುಡಿಸಲು';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ಆಲ್ಪೈನ್ ಕಣಿವೆಯನ್ನು ವೀಕ್ಷಿಸುತ್ತಿರುವ ನರಿ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'ಮಂತ್ರಮುಗ್ಧ ತೋಪಿನ ಮೂಲಕ ಸೂರ್ಯಾಸ್ತ';

  @override
  String get learningControlTitle => 'DevOps ಕಲಿಯಿರಿ';

  @override
  String get learningControlAllCategories => 'ಎಲ್ಲಾ ವರ್ಗಗಳು';

  @override
  String get learningControlSearchCards => 'ಕಾರ್ಡ್‌ಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get learningControlClearSearch => 'ಹುಡುಕಾಟ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get learningControlCategory => 'ವರ್ಗ';

  @override
  String get learningControlShowAll => 'ಎಲ್ಲಾ ಕಾರ್ಡ್‌ಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String learningControlShowSaved(int count) {
    return 'ಉಳಿಸಿದ ಕಾರ್ಡ್‌ಗಳನ್ನು ತೋರಿಸಿ ($count)';
  }

  @override
  String get learningControlShuffleOff => 'ಷಫಲ್ ಆಫ್ ಮಾಡಿ';

  @override
  String get learningControlShuffleOn => 'ಕಾರ್ಡ್‌ಗಳನ್ನು ಷಫಲ್ ಮಾಡಿ';

  @override
  String get learningControlAutoOff => 'ಸ್ವಯಂ ಬದಲಾವಣೆ ನಿಲ್ಲಿಸಿ';

  @override
  String get learningControlAutoOn => 'ಪ್ರತಿ 10 ಸೆಕೆಂಡಿಗೆ ಸ್ವಯಂ ಬದಲಾವಣೆ';

  @override
  String get learningControlNoSaved => 'ಇನ್ನೂ ಯಾವುದೇ ಕಾರ್ಡ್ ಉಳಿಸಿಲ್ಲ';

  @override
  String get learningControlNoMatches => 'ಹೊಂದುವ ಕಾರ್ಡ್‌ಗಳಿಲ್ಲ';

  @override
  String get learningControlResetFilters => 'ಫಿಲ್ಟರ್‌ಗಳನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get learningControlPrevious => 'ಹಿಂದಿನದು';

  @override
  String get learningControlNext => 'ಮುಂದಿನದು';

  @override
  String get learningControlProgress => 'ಪ್ರಗತಿ';

  @override
  String get learningControlRemoveSaved => 'ಉಳಿಸಿದವುಗಳಿಂದ ತೆಗೆಯಿರಿ';

  @override
  String get learningControlSaveCard => 'ಕಾರ್ಡ್ ಉಳಿಸಿ';

  @override
  String get learningControlExample => 'ಉದಾಹರಣೆ';

  @override
  String get learningControlCopyExample => 'ಉದಾಹರಣೆ ನಕಲಿಸಿ';

  @override
  String get learningControlExampleCopied => 'ಉದಾಹರಣೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'ಹಂತ $value1 ಪೂರ್ಣಗೊಂಡಿದೆ';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'ಹಂತ $value1 ಆಡಿ';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'ಅನ್‌ಲಾಕ್ ಮಾಡಲು ಹಂತ $value1 ಪೂರ್ಣಗೊಳಿಸಿ';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'ದೈನಂದಿನ ಲಾಗಿನ್ ಬೋನಸ್';

  @override
  String get sharedDialogThanksForComingBack => 'ಮತ್ತೆ ಬಂದಿದ್ದಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು!';

  @override
  String get sharedDialogDailyRewardAdded => 'ನಿಮ್ಮ ದೈನಂದಿನ ಬಹುಮಾನವನ್ನು ನಿಮ್ಮ ಒಟ್ಟು ಅಂಕಗಳಿಗೆ ಸೇರಿಸಲಾಗಿದೆ.';

  @override
  String get sharedDialogAwesome => 'ಅದ್ಭುತ!';

  @override
  String get accountWelcomeGuest => 'ಅತಿಥಿ';

  @override
  String get accountWelcomeGuestUser => 'ಅತಿಥಿ ಬಳಕೆದಾರ';

  @override
  String get accountWelcomeUser => 'ಬಳಕೆದಾರ';

  @override
  String get accountWelcomePlayingAsGuest => 'ಅತಿಥಿಯಾಗಿ ಆಡುತ್ತಿದ್ದೀರಿ';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google ಖಾತೆಯನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get accountWelcomeGoogleConnected => 'Google ಖಾತೆಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸಂಪರ್ಕಿಸಲಾಗಿದೆ! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'ಸೈನ್-ಇನ್ ರದ್ದುಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'ಸಂಪರ್ಕಿಸಲು ವಿಫಲವಾಗಿದೆ: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'ಸೈನ್ ಔಟ್ ಮಾಡಿ';

  @override
  String get accountWelcomeSignOutTitle => 'ಸೈನ್ ಔಟ್ ಮಾಡಬೇಕೇ?';

  @override
  String get accountWelcomeSignOutMessage => 'ನೀವು ಖಚಿತವಾಗಿ ಸೈನ್ ಔಟ್ ಮಾಡಲು ಬಯಸುವಿರಾ? ನಿಮ್ಮ ಉಳಿಸಿದ ಪ್ರಗತಿಯನ್ನು ಪ್ರವೇಶಿಸಲು ನೀವು ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಬೇಕಾಗುತ್ತದೆ.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'ಸೈನ್ ಔಟ್ ವಿಫಲವಾಗಿದೆ: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ಆ್ಯಪ್ ಡೇಟಾವನ್ನು ಮರುಹೊಂದಿಸಬೇಕೇ?';

  @override
  String get accountWelcomeResetAppMessage => 'ಇದು ನಿಮ್ಮ ಎಲ್ಲಾ ಅಂಕಗಳು, ಸ್ಟ್ರೀಕ್‌ಗಳು, ಗೇಮ್ ಇತಿಹಾಸ ಮತ್ತು ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸುತ್ತದೆ. ನಿಮ್ಮನ್ನು ಸೈನ್ ಔಟ್ ಮಾಡಲಾಗುತ್ತದೆ ಮತ್ತು ಪ್ರಾರಂಭದ ಪರದೆಗೆ ಹಿಂತಿರುಗಿಸಲಾಗುತ್ತದೆ. ಇದನ್ನು ರದ್ದುಗೊಳಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get accountWelcomeResetEverything => 'ಎಲ್ಲವನ್ನೂ ಮರುಹೊಂದಿಸಿ';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ಮರುಹೊಂದಿಸುವಿಕೆ ವಿಫಲವಾಗಿದೆ: $value1';
  }

  @override
  String get accountWelcomeCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get accountWelcomeResetAppData => 'ಆ್ಯಪ್ ಡೇಟಾವನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'ಎಲ್ಲಾ ಅಂಕಗಳು, ಸ್ಟ್ರೀಕ್‌ಗಳು ಮತ್ತು ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ಆ್ಯಪ್';

  @override
  String get accountWelcomeTranslationNotAvailable => 'ಅನುವಾದ ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google ನೊಂದಿಗೆ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get accountWelcomeSigningIn => 'ಸೈನ್ ಇನ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get accountWelcomeOr => 'ಅಥವಾ';

  @override
  String get accountWelcomeContinueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'ನೀವು ನಂತರ ನಿಮ್ಮ ಪ್ರೊಫೈಲ್‌ನಿಂದ ಸೈನ್ ಇನ್ ಮಾಡಬಹುದು.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'ನೀವು ಅತಿಥಿಯಾಗಿ ಪ್ರಾರಂಭಿಸಬಹುದು ಮತ್ತು ನಂತರ ಸೈನ್ ಇನ್ ಮಾಡಬಹುದು.';

  @override
  String get accountWelcomeGreetingGuest => 'ಸ್ವಾಗತ';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'ಸ್ವಾಗತ, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ಸೈನ್-ಇನ್ ಪೂರ್ಣಗೊಂಡಿದೆ, ಆದರೆ ಯಾವುದೇ ಬಳಕೆದಾರ ಖಾತೆ ಹಿಂತಿರುಗಿಲ್ಲ.';

  @override
  String get accountWelcomeErrorEmailExists => 'ಈ ಇಮೇಲ್ ಈಗಾಗಲೇ ಮತ್ತೊಂದು ಸೈನ್-ಇನ್ ವಿಧಾನವನ್ನು ಬಳಸುವ ಖಾತೆಯನ್ನು ಹೊಂದಿದೆ.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ಈ Google ಖಾತೆಯನ್ನು ಈಗಾಗಲೇ ಮತ್ತೊಂದು ಖಾತೆಗೆ ಲಿಂಕ್ ಮಾಡಲಾಗಿದೆ.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google ದೃಢೀಕರಣ ರುಜುವಾತು ಅಮಾನ್ಯವಾಗಿದೆ ಅಥವಾ ಅವಧಿ ಮೀರಿದೆ.';

  @override
  String get accountWelcomeErrorUserDisabled => 'ಈ ಖಾತೆಯನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ಸೈನ್-ಇನ್ ಪ್ರಸ್ತುತ ಸಕ್ರಿಯಗೊಳಿಸಲಾಗಿಲ್ಲ.';

  @override
  String get accountWelcomeErrorNetwork => 'ನೆಟ್‌ವರ್ಕ್ ದೋಷ. ದಯವಿಟ್ಟು ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'ಹಲವಾರು ಸೈನ್-ಇನ್ ಪ್ರಯತ್ನಗಳು. ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'ಯಾವುದೇ ಹೆಚ್ಚುವರಿ ದೋಷ ಮಾಹಿತಿ ಇಲ್ಲ.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ಸೈನ್-ಇನ್ ವಿಫಲವಾಗಿದೆ.\n\nಕೋಡ್: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ಸೈನ್-ಇನ್ ದೋಷ:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಯಲು ಸಾಧ್ಯವಾಗುತ್ತಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ಸೈನ್-ಇನ್ ಶೀಘ್ರದಲ್ಲೇ ಲಭ್ಯವಾಗಲಿದೆ.';

  @override
  String get accountWelcomeLoginTagline => 'ಕಲಿಯಿರಿ • ಅಭ್ಯಾಸ ಮಾಡಿ • ಸ್ಪರ್ಧಿಸಿ • ಗಳಿಸಿ';

  @override
  String get accountWelcomeCountryRegion => 'ದೇಶ / ಪ್ರದೇಶ';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'ದೇಶ / ಪ್ರದೇಶ: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ದೇಶವನ್ನು ಹುಡುಕಿ';

  @override
  String get accountWelcomeCountryNotSelected => 'ಆಯ್ಕೆ ಮಾಡಿಲ್ಲ';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz ಏಕೆ?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ ಅಭ್ಯಾಸ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get accountWelcomeFeatureLanguages => 'ಬಹು-ಭಾಷಾ ಬೆಂಬಲ';

  @override
  String get accountWelcomeFeatureStreaks => 'ಸ್ಟ್ರೀಕ್‌ಗಳು ಮತ್ತು ಲೀಡರ್‌ಬೋರ್ಡ್‌ಗಳು';

  @override
  String get accountWelcomeFeatureGames => 'ಗೇಮ್‌ಗಳು ಮತ್ತು ಸವಾಲುಗಳು';

  @override
  String get accountWelcomeFeatureCloud => 'ಕ್ಲೌಡ್ ಮತ್ತು DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'ಬೋನಸ್ ಮತ್ತು ಬಹುಮಾನಗಳು';

  @override
  String get accountWelcomePracticeOnTheGo => 'ಎಲ್ಲಿಯಾದರೂ ಅಭ್ಯಾಸ ಮಾಡಿ';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ಆ್ಯಪ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ ಮತ್ತು ಎಲ್ಲಿಯಾದರೂ ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿ ಕಲಿಯಿರಿ.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play ನಲ್ಲಿ ಪಡೆಯಿರಿ';

  @override
  String achLocStreakTitle(String days) {
    return '$days ದಿನಗಳ ಸರಣಿ';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days ದಿನಗಳ ಸರಣಿಯನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳಿ.';
  }

  @override
  String get achLocYearStreakTitle => '1 ವರ್ಷದ ಸರಣಿ';

  @override
  String get achLocFirstQuizTitle => 'ಮೊದಲ ಕ್ವಿಜ್';

  @override
  String get achLocFirstQuizDescription => 'ನಿಮ್ಮ ಮೊದಲ ಕ್ವಿಜ್ ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocQuiz10Title => 'ಕ್ವಿಜ್ ಅನ್ವೇಷಕ';

  @override
  String get achLocQuiz10Description => '10 ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocPoints1000Title => '1000 ಅಂಕಗಳು';

  @override
  String get achLocPoints1000Description => 'ಕ್ವಿಜ್‌ನಲ್ಲಿ ಒಟ್ಟು 1000 ಅಂಕಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocPerfectScoreTitle => 'ಪರಿಪೂರ್ಣ ಅಂಕ';

  @override
  String get achLocPerfectScoreDescription => 'ಯಾವುದೇ ಕ್ವಿಜ್‌ನಲ್ಲಿ 100% ಅಂಕ ಗಳಿಸಿ.';

  @override
  String get achLocQuiz25Title => 'ಕ್ವಿಜ್ ಉತ್ಸಾಹಿ';

  @override
  String get achLocQuiz25Description => '25 ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocQuiz50Title => 'ಕ್ವಿಜ್ ಮಾಸ್ಟರ್';

  @override
  String get achLocQuiz50Description => '50 ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocQuiz100Title => 'ಶತಕ ಕ್ಲಬ್';

  @override
  String get achLocQuiz100Description => '100 ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocQuiz250Title => 'ಕ್ವಿಜ್ ದಂತಕಥೆ';

  @override
  String get achLocQuiz250Description => '250 ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocPoints5000Title => '5,000 ಅಂಕಗಳು';

  @override
  String get achLocPoints5000Description => 'ಒಟ್ಟು 5,000 ಅಂಕಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocPoints10000Title => '10,000 ಅಂಕಗಳು';

  @override
  String get achLocPoints10000Description => 'ಒಟ್ಟು 10,000 ಅಂಕಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocPoints50000Title => '50,000 ಅಂಕಗಳು';

  @override
  String get achLocPoints50000Description => 'ಒಟ್ಟು 50,000 ಅಂಕಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocPoints100000Title => '100,000 ಅಂಕಗಳು';

  @override
  String get achLocPoints100000Description => 'ಒಟ್ಟು 100,000 ಅಂಕಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocDaily1Title => 'ದೈನಂದಿನ ಆರಂಭಿಕ';

  @override
  String get achLocDaily1Description => 'ನಿಮ್ಮ ಮೊದಲ ದೈನಂದಿನ ಕ್ವಿಜ್ ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocDaily7Title => 'ದೈನಂದಿನ ಅಭ್ಯಾಸ';

  @override
  String get achLocDaily7Description => '7 ದೈನಂದಿನ ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocDaily30Title => 'ದೈನಂದಿನ ಚಾಂಪಿಯನ್';

  @override
  String get achLocDaily30Description => '30 ದೈನಂದಿನ ಕ್ವಿಜ್‌ಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ.';

  @override
  String get achLocSets5Title => 'ಸೆಟ್ ಆರಂಭಿಕ';

  @override
  String get achLocSets5Description => '5 ಕ್ವಿಜ್ ಸೆಟ್‌ಗಳನ್ನು ಮುಗಿಸಿ.';

  @override
  String get achLocSets25Title => 'ಸೆಟ್ ಸಂಗ್ರಾಹಕ';

  @override
  String get achLocSets25Description => '25 ಕ್ವಿಜ್ ಸೆಟ್‌ಗಳನ್ನು ಮುಗಿಸಿ.';

  @override
  String get achLocSets50Title => 'ಸೆಟ್ ಮಾಸ್ಟರ್';

  @override
  String get achLocSets50Description => '50 ಕ್ವಿಜ್ ಸೆಟ್‌ಗಳನ್ನು ಮುಗಿಸಿ.';

  @override
  String get achLocSets100Title => 'ಸೆಟ್ ದಂತಕಥೆ';

  @override
  String get achLocSets100Description => '100 ಕ್ವಿಜ್ ಸೆಟ್‌ಗಳನ್ನು ಮುಗಿಸಿ.';

  @override
  String get achLocCert1Title => 'ಮೊದಲ ಪ್ರಮಾಣಪತ್ರ';

  @override
  String get achLocCert1Description => 'ನಿಮ್ಮ ಮೊದಲ ವರ್ಗದ ಪ್ರಮಾಣಪತ್ರವನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocCert5Title => 'ಪ್ರಮಾಣೀಕೃತ ಪ್ರೊ';

  @override
  String get achLocCert5Description => '5 ವರ್ಗದ ಪ್ರಮಾಣಪತ್ರಗಳನ್ನು ಗಳಿಸಿ.';

  @override
  String get achLocCert21Title => 'ಸಂಪೂರ್ಣ ಪ್ರಮಾಣೀಕೃತ';

  @override
  String get achLocCert21Description => 'ಎಲ್ಲಾ 21 ವರ್ಗಗಳಲ್ಲಿ ಪ್ರಮಾಣಪತ್ರ ಗಳಿಸಿ.';

  @override
  String get achLocThemeFreeValentinesWeek => 'ಪ್ರತಿ ವರ್ಷ ಫೆಬ್ರವರಿ 7-14 ಉಚಿತ';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ಪ್ರತಿ ವರ್ಷ ಮಾರ್ಚ್ 8-15 ಉಚಿತ';

  @override
  String get achLocThemeLight => 'ಲೈಟ್';

  @override
  String get achLocThemeDark => 'ಡಾರ್ಕ್';

  @override
  String get achLocThemeSakura => 'ಸಕುರಾ';

  @override
  String get achLocThemeSunset => 'ಸೂರ್ಯಾಸ್ತ';

  @override
  String get achLocThemeCoffee => 'ಕಾಫಿ';

  @override
  String get achLocThemeTea => 'ಚಹಾ';

  @override
  String get achLocThemeOcean => 'ಸಾಗರ';

  @override
  String get achLocThemeSolarFlare => 'ಸೋಲಾರ್ ಫ್ಲೇರ್';

  @override
  String get achLocThemeForest => 'ಅರಣ್ಯ';

  @override
  String get achLocThemeAurora => 'ಅರೋರಾ';

  @override
  String get achLocThemeMatrix => 'ಮ್ಯಾಟ್ರಿಕ್ಸ್';

  @override
  String get achLocThemeCyberPurple => 'ಸೈಬರ್ ಪರ್ಪಲ್';

  @override
  String get achLocThemeInferno => 'ಇನ್ಫರ್ನೊ';

  @override
  String get achLocThemeMidnight => 'ಮಿಡ್‌ನೈಟ್';

  @override
  String get achLocThemeDarkGrey => 'ಡಾರ್ಕ್ ಗ್ರೇ';

  @override
  String get achLocThemeBarbee => 'ಬಾರ್ಬಿ';

  @override
  String get achLocThemeValentineDay => 'ವ್ಯಾಲೆಂಟೈನ್ ಡೇ';

  @override
  String get achLocThemeDqSpecial => 'ಡಿಕ್ಯೂ ಸ್ಪೆಷಲ್';

  @override
  String get achLocThemeArmy => 'ಆರ್ಮಿ';

  @override
  String get achLocThemeSpiderMan => 'ಸ್ಪೈಡರ್-ಮ್ಯಾನ್';

  @override
  String get achLocThemeKrrish => 'ಕ್ರಿಶ್';

  @override
  String get achLocThemeIronMan => 'ಐರನ್ ಮ್ಯಾನ್';

  @override
  String get achLocThemeCaptainAmerica => 'ಕ್ಯಾಪ್ಟನ್ ಅಮೆರಿಕ';

  @override
  String get achLocThemeThor => 'ಥಾರ್';

  @override
  String get achLocThemeHulk => 'ಹಲ್ಕ್';

  @override
  String get achLocThemeBlackWidow => 'ಬ್ಲ್ಯಾಕ್ ವಿಡೋ';

  @override
  String get achLocThemeHawkeye => 'ಹಾಕ್‌ಐ';

  @override
  String get achLocThemeBlackPanther => 'ಬ್ಲ್ಯಾಕ್ ಪ್ಯಾಂಥರ್';

  @override
  String get achLocThemeScarletWitch => 'ಸ್ಕಾರ್ಲೆಟ್ ವಿಚ್';

  @override
  String get achLocThemeVision => 'ವಿಷನ್';

  @override
  String get achLocThemeAntMan => 'ಆ್ಯಂಟ್-ಮ್ಯಾನ್';

  @override
  String get achLocThemeCaptainMarvel => 'ಕ್ಯಾಪ್ಟನ್ ಮಾರ್ವೆಲ್';

  @override
  String get achLocThemeDoctorStrange => 'ಡಾಕ್ಟರ್ ಸ್ಟ್ರೇಂಜ್';

  @override
  String get achLocThemeAvengers => 'ಅವೆಂಜರ್ಸ್';

  @override
  String get achLocThemeBatman => 'ಬ್ಯಾಟ್‌ಮ್ಯಾನ್';

  @override
  String get achLocThemeSuperman => 'ಸೂಪರ್‌ಮ್ಯಾನ್';

  @override
  String get achLocThemeWonderWoman => 'ವಂಡರ್ ವುಮನ್';

  @override
  String get achLocThemeFlash => 'ಫ್ಲ್ಯಾಶ್';

  @override
  String get achLocThemeAquaman => 'ಅಕ್ವಾಮ್ಯಾನ್';

  @override
  String get achLocThemeGreenLantern => 'ಗ್ರೀನ್ ಲ್ಯಾಂಟರ್ನ್';

  @override
  String get achLocThemeCyborg => 'ಸೈಬಾರ್ಗ್';

  @override
  String get achLocThemeSupergirl => 'ಸೂಪರ್‌ಗರ್ಲ್';

  @override
  String get achLocThemeDc => 'ಡಿಸಿ ಹೀರೋಸ್';

  @override
  String get achLocThemeRainbow => 'ಕಾಮನಬಿಲ್ಲು';

  @override
  String get achLocThemeDiamond => 'ವಜ್ರ';

  @override
  String get achLocThemeLegendary => 'ದಂತಕಥೆಯ';

  @override
  String get gameHintCmd001LsLa => 'ಎಲ್ಲಾ ಫೈಲ್‌ಗಳನ್ನು ವಿವರಗಳೊಂದಿಗೆ ಪಟ್ಟಿ ಮಾಡಿ';

  @override
  String get gameHintCmd002Grep => 'ಮಾದರಿ ಬಳಸಿ ಪಠ್ಯ ಹುಡುಕಿ';

  @override
  String get gameHintCmd003Chmod => 'ಫೈಲ್ ಅನುಮತಿಗಳನ್ನು ಬದಲಿಸಿ';

  @override
  String get gameHintCmd004DfH => 'ಖಾಲಿ ಡಿಸ್ಕ್ ಸ್ಥಳವನ್ನು ತೋರಿಸಿ';

  @override
  String get gameHintCmd005TailF => 'ಬೆಳೆಯುತ್ತಿರುವ ಲಾಗ್ ಫೈಲ್ ಅನ್ನು ಅನುಸರಿಸಿ';

  @override
  String get gameHintCmd006PsAux => 'ಚಾಲನೆಯಲ್ಲಿರುವ ಪ್ರಕ್ರಿಯೆಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಿ';

  @override
  String get gameHintCmd007GitClone => 'ರಿಮೋಟ್ ರೆಪೊಸಿಟರಿಯನ್ನು ನಕಲಿಸಿ';

  @override
  String get gameHintCmd008GitStash => 'ಕಮಿಟ್ ಮಾಡದ ಬದಲಾವಣೆಗಳನ್ನು ಪಕ್ಕಕ್ಕಿಡಿ';

  @override
  String get gameHintCmd009GitRebase => 'ಹೊಸ ಆಧಾರದ ಮೇಲೆ ಕಮಿಟ್‌ಗಳನ್ನು ಮರು ಅನ್ವಯಿಸಿ';

  @override
  String get gameHintCmd010GitBlame => 'ಪ್ರತಿ ಸಾಲನ್ನು ಯಾರು ಬದಲಿಸಿದರು ಎಂದು ತೋರಿಸಿ';

  @override
  String get gameHintCmd011DockerPs => 'ಚಾಲನೆಯಲ್ಲಿರುವ ಕಂಟೇನರ್‌ಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಿ';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile ನಿಂದ ಇಮೇಜ್ ರಚಿಸಿ';

  @override
  String get gameHintCmd013DockerLogs => 'ಕಂಟೇನರ್ ಔಟ್‌ಪುಟ್ ತೋರಿಸಿ';

  @override
  String get gameHintCmd014DockerExec => 'ಕಂಟೇನರ್ ಒಳಗೆ ಆಜ್ಞೆಯನ್ನು ಚಲಾಯಿಸಿ';

  @override
  String get gameHintCmd015KubectlGetPods => 'ನೇಮ್‌ಸ್ಪೇಸ್‌ನ ಪಾಡ್‌ಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಿ';

  @override
  String get gameHintCmd016KubectlApply => 'ಫೈಲ್‌ನಿಂದ ಸಂಪನ್ಮೂಲಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get gameHintCmd017KubectlDescribe => 'ಸಂಪನ್ಮೂಲದ ವಿವರವಾದ ಮಾಹಿತಿ ತೋರಿಸಿ';

  @override
  String get gameHintCmd018KubectlScale => 'ರೆಪ್ಲಿಕಾಗಳ ಸಂಖ್ಯೆಯನ್ನು ಬದಲಿಸಿ';

  @override
  String get gameHintCmd019TerraformInit => 'ಪ್ರೊವೈಡರ್‌ಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಸಿದ್ಧಪಡಿಸಿ';

  @override
  String get gameHintCmd020TerraformPlan => 'ಮೂಲಸೌಕರ್ಯ ಬದಲಾವಣೆಗಳ ಮುನ್ನೋಟ ನೋಡಿ';

  @override
  String get gameHintCmd021TerraformApply => 'ಮೂಲಸೌಕರ್ಯವನ್ನು ರಚಿಸಿ ಅಥವಾ ನವೀಕರಿಸಿ';

  @override
  String get gameHintCmd022TerraformDestroy => 'ನಿರ್ವಹಿಸಲಾದ ಮೂಲಸೌಕರ್ಯವನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ಸ್ವಯಂಚಾಲನೆಯ ಪ್ಲೇಬುಕ್ ಚಲಾಯಿಸಿ';

  @override
  String get gameHintCmd024Ping => 'ICMP ಮೂಲಕ ತಲುಪುವಿಕೆಯನ್ನು ಪರೀಕ್ಷಿಸಿ';

  @override
  String get gameHintCmd025Traceroute => 'ಹೋಸ್ಟ್‌ಗೆ ಹೋಗುವ ಮಾರ್ಗವನ್ನು ತೋರಿಸಿ';

  @override
  String get gameHintCmd026Curl => 'URL ನಿಂದ ಡೇಟಾ ವರ್ಗಾಯಿಸಿ';

  @override
  String get gameHintCmd027Ssh => 'ರಿಮೋಟ್ ಯಂತ್ರಕ್ಕೆ ಸುರಕ್ಷಿತವಾಗಿ ಲಾಗಿನ್ ಆಗಿ';

  @override
  String get gameHintCmd028CrontabE => 'ನಿಗದಿತ ಕೆಲಸಗಳನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get gameHintCmd029SystemctlStatus => 'ಸೇವೆಯ ಸ್ಥಿತಿಯನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes ಗೆ ಚಾರ್ಟ್ ನಿಯೋಜಿಸಿ';

  @override
  String get gameHintWord001Git => 'ಸೋರ್ಸ್ ಕೋಡ್‌ನ ಬದಲಾವಣೆಗಳನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord002Aws => 'Amazon ನ ಕ್ಲೌಡ್ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord003Api => 'ಸಾಫ್ಟ್‌ವೇರ್ ವ್ಯವಸ್ಥೆಗಳು ಪರಸ್ಪರ ಸಂವಹನ ನಡೆಸಲು ಅನುವುಮಾಡುವ ಒಪ್ಪಂದ.';

  @override
  String get gameHintWord004Dns => 'ಡೊಮೇನ್ ಹೆಸರುಗಳನ್ನು IP ವಿಳಾಸಗಳಾಗಿ ಅನುವಾದಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord005Cli => 'ಆಜ್ಞೆಗಳನ್ನು ಚಲಾಯಿಸಲು ಪಠ್ಯಾಧಾರಿತ ಇಂಟರ್‌ಫೇಸ್.';

  @override
  String get gameHintWord006Cpu => 'ಸೂಚನೆಗಳನ್ನು ಕಾರ್ಯಗತಗೊಳಿಸುವ ಪ್ರೊಸೆಸರ್.';

  @override
  String get gameHintWord007Ram => 'ಚಾಲನೆಯಲ್ಲಿರುವ ಪ್ರೋಗ್ರಾಂಗಳು ಬಳಸುವ ತಾತ್ಕಾಲಿಕ ಮೆಮೊರಿ.';

  @override
  String get gameHintWord008Ssh => 'ರಿಮೋಟ್ ಶೆಲ್ ಪ್ರವೇಶಕ್ಕಾಗಿ ಸುರಕ್ಷಿತ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord009Yaml => 'ಮಾನವರಿಗೆ ಓದಲು ಸುಲಭವಾದ ಡೇಟಾ ಸೀರಿಯಲೈಸೇಶನ್ ಸ್ವರೂಪ.';

  @override
  String get gameHintWord010Linux => 'ಮುಕ್ತ-ಮೂಲ ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಕರ್ನಲ್ ಮತ್ತು ಅದರ ಕುಟುಂಬ.';

  @override
  String get gameHintWord011Bash => 'ಜನಪ್ರಿಯ Unix ಆಜ್ಞಾ ಶೆಲ್.';

  @override
  String get gameHintWord012Cloud => 'ನೆಟ್‌ವರ್ಕ್ ಮೂಲಕ ಬೇಡಿಕೆಯ ಮೇರೆಗೆ ಒದಗಿಸುವ ಕಂಪ್ಯೂಟಿಂಗ್.';

  @override
  String get gameHintWord013Docker => 'ಕಂಟೇನರ್‌ಗಳನ್ನು ನಿರ್ಮಿಸಲು ಮತ್ತು ಚಲಾಯಿಸಲು ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord014Azure => 'Microsoft ನ ಕ್ಲೌಡ್ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord015Python => 'ವ್ಯಾಪಕವಾಗಿ ಬಳಸುವ ಸ್ಕ್ರಿಪ್ಟಿಂಗ್ ಮತ್ತು ಪ್ರೋಗ್ರಾಮಿಂಗ್ ಭಾಷೆ.';

  @override
  String get gameHintWord016Github => 'ಜನಪ್ರಿಯ ಹೋಸ್ಟ್ ಮಾಡಿದ Git ಸಹಯೋಗ ಸೇವೆ.';

  @override
  String get gameHintWord017Bgp => 'ಸ್ವಾಯತ್ತ ವ್ಯವಸ್ಥೆಗಳ ನಡುವೆ ಮಾರ್ಗಗಳನ್ನು ವಿನಿಮಯ ಮಾಡುವ ರೂಟಿಂಗ್ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord018Jenkins => 'CI ಗಾಗಿ ಹೆಚ್ಚಾಗಿ ಬಳಸುವ ಸ್ವಯಂಚಾಲನ ಸರ್ವರ್.';

  @override
  String get gameHintWord019Port => 'ನೆಟ್‌ವರ್ಕ್ ಸೇವೆಗಳು ಬಳಸುವ ಸಂಖ್ಯೆಯ ಅಂತಿಮ ಬಿಂದು.';

  @override
  String get gameHintWord020Proxy => 'ಕ್ಲೈಂಟ್‌ಗಳ ಪರವಾಗಿ ವಿನಂತಿಗಳನ್ನು ಫಾರ್ವರ್ಡ್ ಮಾಡುವ ಸರ್ವರ್.';

  @override
  String get gameHintWord021Cache => 'ಪದೇ ಪದೇ ಬಳಸುವ ಡೇಟಾಗಾಗಿ ವೇಗದ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord022Cron => 'ಪುನರಾವರ್ತಿತ ಆಜ್ಞೆಗಳಿಗಾಗಿ Unix ವೇಳಾಪಟ್ಟಿಕಾರ.';

  @override
  String get gameHintWord023Bicep => 'ಕೋಡ್ ರೂಪದ ಮೂಲಸೌಕರ್ಯಕ್ಕಾಗಿ Azure ನ ಘೋಷಣಾತ್ಮಕ ಭಾಷೆ.';

  @override
  String get gameHintWord024Apigee => 'ಕೇಂದ್ರೀಕೃತ API ನಿರ್ವಹಣೆಗಾಗಿ Google Cloud ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord025Root => 'Unix ತರಹದ ವ್ಯವಸ್ಥೆಗಳಲ್ಲಿನ ವಿಶೇಷಾಧಿಕಾರ ಹೊಂದಿದ ನಿರ್ವಾಹಕ ಖಾತೆ.';

  @override
  String get gameHintWord026Nginx => 'ವೆಬ್ ಸರ್ವರ್ ಮತ್ತು ರಿವರ್ಸ್ ಪ್ರಾಕ್ಸಿ.';

  @override
  String get gameHintWord027Redis => 'ಹೆಚ್ಚಾಗಿ ಕ್ಯಾಶ್ ಆಗಿ ಬಳಸುವ ಇನ್-ಮೆಮೊರಿ ಡೇಟಾ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord028Mysql => 'ಜನಪ್ರಿಯ ರಿಲೇಶನಲ್ ಡೇಟಾಬೇಸ್ ವ್ಯವಸ್ಥೆ.';

  @override
  String get gameHintWord029Ruby => 'Chef ನಂತಹ ಸಾಧನಗಳು ಬಳಸುವ ಪ್ರೋಗ್ರಾಮಿಂಗ್ ಭಾಷೆ.';

  @override
  String get gameHintWord030Helm => 'Kubernetes ಜೊತೆ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವ ಪ್ಯಾಕೇಜ್ ಮ್ಯಾನೇಜರ್.';

  @override
  String get gameHintWord031Pod => 'Kubernetes ನಲ್ಲಿ ನಿಯೋಜಿಸಬಹುದಾದ ಚಿಕ್ಕ ಘಟಕ.';

  @override
  String get gameHintWord032Image => 'ಕಂಟೇನರ್ ರಚಿಸಲು ಬಳಸುವ ಓದಲು-ಮಾತ್ರ ಟೆಂಪ್ಲೇಟ್.';

  @override
  String get gameHintWord033Build => 'ಸೋರ್ಸ್ ಮತ್ತು ಅವಲಂಬನೆಗಳಿಂದ ಆರ್ಟಿಫ್ಯಾಕ್ಟ್ ರಚಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord034Deploy => 'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಪರಿಸರಕ್ಕೆ ಬಿಡುಗಡೆ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord035Terraform => 'ಕೋಡ್ ರೂಪದ ಮೂಲಸೌಕರ್ಯಕ್ಕಾಗಿ HashiCorp ಸಾಧನ.';

  @override
  String get gameHintWord036Ansible => 'ಏಜೆಂಟ್ ಇಲ್ಲದ ಸ್ವಯಂಚಾಲನೆ ಮತ್ತು ಕಾನ್ಫಿಗರೇಶನ್ ಸಾಧನ.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes ಗಾಗಿ ಕಮಾಂಡ್-ಲೈನ್ ಕ್ಲೈಂಟ್.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform ನ ಸಂಕ್ಷಿಪ್ತ ರೂಪ.';

  @override
  String get gameHintWord039Gitops => 'Git ಅನ್ನು ಸತ್ಯದ ಮೂಲವಾಗಿ ಬಳಸುವ ಕಾರ್ಯಾಚರಣೆ ಮಾದರಿ.';

  @override
  String get gameHintWord040Pipeline => 'ಬಿಲ್ಡ್, ಪರೀಕ್ಷೆ ಮತ್ತು ಬಿಡುಗಡೆ ಹಂತಗಳ ಸ್ವಯಂಚಾಲಿತ ಅನುಕ್ರಮ.';

  @override
  String get gameHintWord041Container => 'ತನ್ನ ಅವಲಂಬನೆಗಳೊಂದಿಗೆ ಪ್ಯಾಕೇಜ್ ಮಾಡಿದ ಪ್ರತ್ಯೇಕ ಪ್ರಕ್ರಿಯೆ.';

  @override
  String get gameHintWord042Cluster => 'ಹಂಚಿಕೆಯ ವ್ಯವಸ್ಥೆಯಾಗಿ ನಿರ್ವಹಿಸಲಾಗುವ ಯಂತ್ರಗಳ ಗುಂಪು.';

  @override
  String get gameHintWord043Ingress => 'ಬಾಹ್ಯ HTTP ರೂಟಿಂಗ್‌ಗಾಗಿ Kubernetes API ವಸ್ತು.';

  @override
  String get gameHintWord044Firewall => 'ಭದ್ರತಾ ನಿಯಮಗಳ ಪ್ರಕಾರ ನೆಟ್‌ವರ್ಕ್ ಸಂಚಾರವನ್ನು ಸೋಸುತ್ತದೆ.';

  @override
  String get gameHintWord045Subnet => 'IP ನೆಟ್‌ವರ್ಕ್‌ನ ತಾರ್ಕಿಕ ಉಪವಿಭಾಗ.';

  @override
  String get gameHintWord046Gateway => 'ವಿಭಿನ್ನ ನೆಟ್‌ವರ್ಕ್‌ಗಳನ್ನು ಜೋಡಿಸುವ ನೆಟ್‌ವರ್ಕ್ ನೋಡ್.';

  @override
  String get gameHintWord047Router => 'ನೆಟ್‌ವರ್ಕ್‌ಗಳ ನಡುವೆ ಪ್ಯಾಕೆಟ್‌ಗಳನ್ನು ಫಾರ್ವರ್ಡ್ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord048Switch => 'ಸ್ಥಳೀಯ ನೆಟ್‌ವರ್ಕ್‌ನೊಳಗೆ ಸಾಧನಗಳನ್ನು ಜೋಡಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord049Repository => 'ಸೋರ್ಸ್ ಕೋಡ್ ಅಥವಾ ಪ್ಯಾಕೇಜ್‌ಗಳಿಗಾಗಿ ನಿರ್ವಹಿಸಲಾದ ಸಂಗ್ರಹಣೆ.';

  @override
  String get gameHintWord050Systemd => 'Linux init ವ್ಯವಸ್ಥೆ ಮತ್ತು ಸೇವಾ ನಿರ್ವಾಹಕ.';

  @override
  String get gameHintWord051Journalctl => 'systemd ಜರ್ನಲ್ ಲಾಗ್‌ಗಳನ್ನು ಓದಲು ಬಳಸುವ ಆಜ್ಞೆ.';

  @override
  String get gameHintWord052Permission => 'ಯಾರು ಓದಬಹುದು, ಬರೆಯಬಹುದು ಅಥವಾ ಚಲಾಯಿಸಬಹುದು ಎಂದು ನಿಯಂತ್ರಿಸುವ ನಿಯಮ.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud ನ ನಿರ್ವಹಿತ PostgreSQL-ಹೊಂದಾಣಿಕೆಯ ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord054Configmap => 'ರಹಸ್ಯವಲ್ಲದ ಕಾನ್ಫಿಗರೇಶನ್‌ಗಾಗಿ Kubernetes ವಸ್ತು.';

  @override
  String get gameHintWord055Secret => 'ಸೂಕ್ಷ್ಮ ಡೇಟಾಗಾಗಿ ಉದ್ದೇಶಿಸಿದ Kubernetes ವಸ್ತು.';

  @override
  String get gameHintWord056Persistent => 'ವರ್ಕ್‌ಲೋಡ್ ಮರುಪ್ರಾರಂಭದ ನಂತರವೂ ಉಳಿಯುವ ಸಂಗ್ರಹಣೆಯನ್ನು ವಿವರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord057Volume => 'ಕಂಟೇನರ್‌ಗೆ ಮೌಂಟ್ ಮಾಡಿದ ಫೈಲ್‌ಸಿಸ್ಟಮ್ ಸಂಗ್ರಹಣೆ.';

  @override
  String get gameHintWord058Storage => 'ಫೈಲ್‌ಗಳು, ಆಬ್ಜೆಕ್ಟ್‌ಗಳು ಅಥವಾ ಬ್ಲಾಕ್‌ಗಳಿಗೆ ಶಾಶ್ವತ ಸ್ಥಳ.';

  @override
  String get gameHintWord059Replica => 'ಸ್ಕೇಲ್ ಅಥವಾ ವಿಶ್ವಾಸಾರ್ಹತೆಗಾಗಿ ಉಳಿಸಿಕೊಂಡ ವರ್ಕ್‌ಲೋಡ್ ಉದಾಹರಣೆಯ ನಕಲು.';

  @override
  String get gameHintWord060Deployment => 'ಸ್ಟೇಟ್‌ಲೆಸ್ ಅಪ್ಲಿಕೇಶನ್ ಪಾಡ್‌ಗಳಿಗಾಗಿ Kubernetes ನಿಯಂತ್ರಕ.';

  @override
  String get gameHintWord061Dockerfile => 'Docker ಇಮೇಜ್ ನಿರ್ಮಿಸಲು ಬಳಸುವ ಸೂಚನೆಗಳು.';

  @override
  String get gameHintWord062Database => 'ಅಪ್ಲಿಕೇಶನ್‌ಗಳು ಪ್ರಶ್ನಿಸುವ ಸಂಘಟಿತ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord063Automation => 'ಕೈಯಾರೆ ಹಂತಗಳಿಲ್ಲದೆ ಪುನರಾವರ್ತಿತ ಕೆಲಸಗಳನ್ನು ಸಾಫ್ಟ್‌ವೇರ್ ಮೂಲಕ ನಿರ್ವಹಿಸುವುದು.';

  @override
  String get gameHintWord064Anthos => 'ವಿವಿಧ ಪರಿಸರಗಳಲ್ಲಿ ಕ್ಲಸ್ಟರ್‌ಗಳನ್ನು ನಿರ್ವಹಿಸಲು Google Cloud ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord065Bigquery => 'ದೊಡ್ಡ ಪ್ರಮಾಣದ ಡೇಟಾ ವಿಶ್ಲೇಷಣೆಗಾಗಿ Google Cloud ಸೇವೆ.';

  @override
  String get gameHintWord066Bigtable => 'ವಿಶ್ಲೇಷಣೆಗಾಗಿ Google Cloud ನ ವೈಡ್-ಕಾಲಮ್ NoSQL ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord067Loadbalancer => 'ಒಳಬರುವ ಸಂಚಾರವನ್ನು ಹಲವು ಬ್ಯಾಕೆಂಡ್‌ಗಳ ನಡುವೆ ಹಂಚುತ್ತದೆ.';

  @override
  String get gameHintWord068Prometheus => 'ಟೈಮ್-ಸೀರೀಸ್ ಮೆಟ್ರಿಕ್‌ಗಳನ್ನು ಸಂಗ್ರಹಿಸುವ ಮಾನಿಟರಿಂಗ್ ವ್ಯವಸ್ಥೆ.';

  @override
  String get gameHintWord069Grafana => 'ಅವಲೋಕನ ಡೇಟಾವನ್ನು ಪ್ರಶ್ನಿಸಲು ಮತ್ತು ದೃಶ್ಯೀಕರಿಸಲು ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud ನ ನಿರ್ವಹಿತ NoSQL JSON ಡಾಕ್ಯುಮೆಂಟ್ ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord071Cloudtrail => 'ಆಡಿಟ್‌ಗಾಗಿ API ಚಟುವಟಿಕೆಯನ್ನು ದಾಖಲಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord072Statefulset => 'ಸ್ಥಿರ ಗುರುತು ಬೇಕಾದ ವರ್ಕ್‌ಲೋಡ್‌ಗಳಿಗಾಗಿ Kubernetes ನಿಯಂತ್ರಕ.';

  @override
  String get gameHintWord073Daemonset => 'ಆಯ್ದ ನೋಡ್‌ಗಳಲ್ಲಿ ಪಾಡ್ ಚಲಾಯಿಸುವ Kubernetes ನಿಯಂತ್ರಕ.';

  @override
  String get gameHintWord074Serviceaccount => 'ವರ್ಕ್‌ಲೋಡ್ ಅಥವಾ ಪ್ರಕ್ರಿಯೆ ಬಳಸುವ Kubernetes ಗುರುತು.';

  @override
  String get gameHintWord075Networkpolicy => 'ಪಾಡ್ ನೆಟ್‌ವರ್ಕ್ ಸಂಚಾರವನ್ನು ನಿಯಂತ್ರಿಸುವ Kubernetes ಸಂಪನ್ಮೂಲ.';

  @override
  String get gameHintWord076Certificate => 'TLS ನಲ್ಲಿ ಗುರುತನ್ನು ಸ್ಥಾಪಿಸಲು ಬಳಸುವ ಡಿಜಿಟಲ್ ದಾಖಲೆ.';

  @override
  String get gameHintWord077Encryption => 'ಅಧಿಕೃತ ಪಕ್ಷಗಳು ಮಾತ್ರ ಓದುವಂತೆ ಡೇಟಾವನ್ನು ಪರಿವರ್ತಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord078Observability => 'ವ್ಯವಸ್ಥೆಯ ಔಟ್‌ಪುಟ್‌ಗಳಿಂದ ಅದರ ವರ್ತನೆಯನ್ನು ಊಹಿಸುವ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes ಕ್ಲಸ್ಟರ್‌ಗಳೊಳಗೆ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವ DNS ಸರ್ವರ್.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API ಗಳ ಮೂಲಕ ಕ್ಲೌಡ್ ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸುವ ಯೋಜನೆ.';

  @override
  String get gameHintWord081Failover => 'ವೈಫಲ್ಯದ ನಂತರ ಸ್ಟ್ಯಾಂಡ್‌ಬೈ ಘಟಕಕ್ಕೆ ಬದಲಾಗುವುದು.';

  @override
  String get gameHintWord082Idempotency => 'ಕಾರ್ಯಾಚರಣೆಯನ್ನು ಪುನರಾವರ್ತಿಸಿದರೂ ಒಮ್ಮೆ ಮಾಡಿದಷ್ಟೇ ಪರಿಣಾಮ ಬೀರುವ ಗುಣ.';

  @override
  String get gameHintWord083Dataflow => 'ಸ್ಟ್ರೀಮ್ ಮತ್ತು ಬ್ಯಾಚ್ ಡೇಟಾ ಸಂಸ್ಕರಣೆಗಾಗಿ Google Cloud ಸೇವೆ.';

  @override
  String get gameHintWord084Orchestration => 'ಹಲವು ಸ್ವಯಂಚಾಲಿತ ವರ್ಕ್‌ಲೋಡ್‌ಗಳ ಸಂಯೋಜಿತ ನಿರ್ವಹಣೆ.';

  @override
  String get gameHintWord085Dataplex => 'ಉದ್ಯಮ ಡೇಟಾವನ್ನು ಅನ್ವೇಷಿಸಲು ಮತ್ತು ಆಡಳಿತಕ್ಕಾಗಿ Google Cloud ಸೇವೆ.';

  @override
  String get gameHintWord086Serverless => 'ಮೂಲಸೌಕರ್ಯ ನಿರ್ವಹಣೆಯನ್ನು ಮರೆಮಾಡುವ ಕಾರ್ಯಗತಗೊಳಿಸುವ ಮಾದರಿ.';

  @override
  String get gameHintWord087Distributed => 'ಘಟಕಗಳು ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿರುವ ಹಲವು ಯಂತ್ರಗಳಲ್ಲಿ ಚಲಿಸುವ ವ್ಯವಸ್ಥೆ.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud ನ ನಿರ್ವಹಿತ Apache Spark ಮತ್ತು Hadoop ಪರಿಸರ.';

  @override
  String get gameHintWord089Dynamodb => 'ಹೆಚ್ಚಾಗಿ Terraform ಸ್ಟೇಟ್ ಲಾಕಿಂಗ್‌ಗೆ ಬಳಸುವ AWS NoSQL ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord090Provisioning => 'ಮೂಲಸೌಕರ್ಯ ಅಥವಾ ಸಂಪನ್ಮೂಲಗಳನ್ನು ಬಳಕೆಗೆ ಸಿದ್ಧಪಡಿಸುವುದು.';

  @override
  String get gameHintWord091Elasticsearch => 'ಕೇಂದ್ರೀಕೃತ ಲಾಗಿಂಗ್‌ಗೆ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವ ಹುಡುಕಾಟ ಎಂಜಿನ್.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes ಕ್ಲಸ್ಟರ್ ಸ್ಥಿತಿಯನ್ನು ಹಿಡಿದಿಡುವ ಕೀ-ವ್ಯಾಲ್ಯೂ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord093Authentication => 'ಬಳಕೆದಾರ ಅಥವಾ ಸೇವೆ ಯಾರೆಂದು ಪರಿಶೀಲಿಸುವ ಪ್ರಕ್ರಿಯೆ.';

  @override
  String get gameHintWord094Authorization => 'ಗುರುತಿಗೆ ಏನು ಮಾಡಲು ಅನುಮತಿಯಿದೆ ಎಂದು ನಿರ್ಧರಿಸುವ ಪ್ರಕ್ರಿಯೆ.';

  @override
  String get gameHintWord095Expressroute => 'ಡೇಟಾ ಕೇಂದ್ರಗಳಿಗೆ ಮೀಸಲಾದ ಖಾಸಗಿ ಸಂಪರ್ಕಕ್ಕಾಗಿ Azure ಸೇವೆ.';

  @override
  String get gameHintWord096Configuration => 'ಸಾಫ್ಟ್‌ವೇರ್ ಹೇಗೆ ವರ್ತಿಸುತ್ತದೆ ಎಂದು ನಿರ್ಧರಿಸುವ ಸೆಟ್ಟಿಂಗ್‌ಗಳು.';

  @override
  String get gameHintWord097Infrastructure => 'ಅಪ್ಲಿಕೇಶನ್‌ಗಳಿಗೆ ಬೆಂಬಲ ನೀಡುವ ಕಂಪ್ಯೂಟ್, ನೆಟ್‌ವರ್ಕ್ ಮತ್ತು ಸಂಗ್ರಹಣೆ ಸಂಪನ್ಮೂಲಗಳು.';

  @override
  String get gameHintWord098Fastconnect => 'ಮೀಸಲಾದ ಖಾಸಗಿ ನೆಟ್‌ವರ್ಕ್ ಸಂಪರ್ಕಗಳಿಗಾಗಿ Oracle Cloud ಸೇವೆ.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ಬಳಸುವ ಉದ್ಯಮ-ಪ್ರಮಾಣಿತ ಕಂಟೇನರ್ ರನ್‌ಟೈಮ್.';

  @override
  String get gameHintWord100Kubernetes => 'ಕಂಟೇನರ್ ಆರ್ಕೆಸ್ಟ್ರೇಶನ್ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord101Http => 'ವೆಬ್ ಸಂಪನ್ಮೂಲಗಳನ್ನು ವಿನಂತಿಸಲು ಬಳಸುವ ಅಪ್ಲಿಕೇಶನ್ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord102Https => 'ವೆಬ್ ವಿನಂತಿ ಪ್ರೋಟೋಕಾಲ್‌ನ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿದ ಆವೃತ್ತಿ.';

  @override
  String get gameHintWord103Tcp => 'ವಿಶ್ವಾಸಾರ್ಹ ಕ್ರಮಬದ್ಧ ವಿತರಣೆ ನೀಡುವ ಸಾರಿಗೆ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord104Udp => 'ಡೇಟಾಗ್ರಾಂಗಳಿಗೆ ಬಳಸುವ ಸಂಪರ್ಕರಹಿತ ಸಾರಿಗೆ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord105Tls => 'ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿ ವಿನಿಮಯವಾಗುವ ಡೇಟಾವನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸುವ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord106Ssl => 'ಆಧುನಿಕ ಸಾರಿಗೆ ಭದ್ರತಾ ಪ್ರೋಟೋಕಾಲ್‌ನ ಹಳೆಯ ಪೂರ್ವವರ್ತಿ.';

  @override
  String get gameHintWord107Ftp => 'ಫೈಲ್‌ಗಳನ್ನು ವರ್ಗಾಯಿಸಲು ಸಾಂಪ್ರದಾಯಿಕ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord108Sftp => 'ಸುರಕ್ಷಿತ ಶೆಲ್ ಸಂಪರ್ಕದ ಮೂಲಕ ನಡೆಯುವ ಫೈಲ್ ವರ್ಗಾವಣೆ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord109Smtp => 'ಸರ್ವರ್‌ಗಳ ನಡುವೆ ಇಮೇಲ್ ಕಳುಹಿಸಲು ಬಳಸುವ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord110Snmp => 'ನೆಟ್‌ವರ್ಕ್ ಸಾಧನಗಳನ್ನು ನಿರ್ವಹಿಸಲು ಮತ್ತು ಮೇಲ್ವಿಚಾರಣೆಗೆ ಬಳಸುವ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord111Icmp => 'ನೆಟ್‌ವರ್ಕ್ ದೋಷಗಳು ಮತ್ತು ping ಸಂದೇಶಗಳನ್ನು ಸಾಗಿಸುವ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord112Arp => 'ಸ್ಥಳೀಯ IPv4 ವಿಳಾಸಗಳನ್ನು ಹಾರ್ಡ್‌ವೇರ್ ವಿಳಾಸಗಳಿಗೆ ಪರಿಹರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord113Dhcp => 'ನೆಟ್‌ವರ್ಕ್ ಕ್ಲೈಂಟ್‌ಗಳಿಗೆ IP ಕಾನ್ಫಿಗರೇಶನ್ ಅನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ನೀಡುತ್ತದೆ.';

  @override
  String get gameHintWord114Nat => 'ಪ್ಯಾಕೆಟ್‌ಗಳು ಗೇಟ್‌ವೇ ದಾಟುವಾಗ ನೆಟ್‌ವರ್ಕ್ ವಿಳಾಸಗಳನ್ನು ಬದಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord115Vpn => 'ರಿಮೋಟ್ ನೆಟ್‌ವರ್ಕ್‌ಗಳು ಅಥವಾ ಬಳಕೆದಾರರನ್ನು ಜೋಡಿಸುವ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿದ ಸುರಂಗ.';

  @override
  String get gameHintWord116Vpc => 'ಸಾರ್ವಜನಿಕ ಕ್ಲೌಡ್‌ನಲ್ಲಿನ ಪ್ರತ್ಯೇಕ ವರ್ಚುವಲ್ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord117Vlan => 'ಸ್ವಿಚ್ ಮಾಡಿದ ನೆಟ್‌ವರ್ಕ್‌ನ ತಾರ್ಕಿಕ ಪ್ರತ್ಯೇಕತೆ.';

  @override
  String get gameHintWord118Wan => 'ವಿಶಾಲ ಭೌಗೋಳಿಕ ಪ್ರದೇಶವನ್ನು ವ್ಯಾಪಿಸುವ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord119Lan => 'ಸ್ಥಳೀಯ ಪ್ರದೇಶದೊಳಗೆ ಸಾಧನಗಳನ್ನು ಜೋಡಿಸುವ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord120Cdn => 'ವಿತರಿಸಿದ ವಿಷಯವನ್ನು ಕ್ಯಾಶ್ ಮಾಡುವ ವಿತರಿತ ಎಡ್ಜ್ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord121Cidr => 'ನೆಟ್‌ವರ್ಕ್ ಪೂರ್ವಪ್ರತ್ಯಯವನ್ನು ಸ್ಲ್ಯಾಶ್ ಉದ್ದದೊಂದಿಗೆ ವ್ಯಕ್ತಪಡಿಸುವ ಸಂಕೇತ.';

  @override
  String get gameHintWord122Host => 'ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಗೊಂಡ ಕಂಪ್ಯೂಟರ್ ಅಥವಾ ಅಂತಿಮ ಬಿಂದು.';

  @override
  String get gameHintWord123Hostname => 'ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿರುವ ಯಂತ್ರಕ್ಕೆ ನೀಡಿದ ಮಾನವರಿಗೆ ಓದಲು ಸುಲಭವಾದ ಹೆಸರು.';

  @override
  String get gameHintWord124Domain => 'ಇಂಟರ್ನೆಟ್ ಹೆಸರಿಸುವ ವ್ಯವಸ್ಥೆಯಲ್ಲಿನ ಹೆಸರಿನ ಆಡಳಿತ ಪ್ರದೇಶ.';

  @override
  String get gameHintWord125Zone => 'DNS ನೇಮ್‌ಸ್ಪೇಸ್‌ನ ಆಡಳಿತಾತ್ಮಕ ಭಾಗ.';

  @override
  String get gameHintWord126Record => 'DNS ಡೇಟಾಬೇಸ್‌ನಲ್ಲಿನ ಒಂದು ಪ್ರತ್ಯೇಕ ನಮೂದು.';

  @override
  String get gameHintWord127Aaaa => 'ಹೆಸರನ್ನು IPv6 ವಿಳಾಸಕ್ಕೆ ಪರಿಹರಿಸುವ DNS ರೆಕಾರ್ಡ್ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord128Ptr => 'ಹಿಮ್ಮುಖ ವಿಳಾಸ ಹುಡುಕಾಟಗಳಿಗೆ ಬಳಸುವ DNS ರೆಕಾರ್ಡ್ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord129Txt => 'ಪಠ್ಯ ಮೌಲ್ಯಗಳನ್ನು ಸಂಗ್ರಹಿಸುವ DNS ರೆಕಾರ್ಡ್ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord130Cname => 'ಒಂದು ಹೆಸರನ್ನು ಇನ್ನೊಂದರ ಅಲಿಯಾಸ್ ಮಾಡುವ DNS ರೆಕಾರ್ಡ್.';

  @override
  String get gameHintWord131Route => 'ಪ್ಯಾಕೆಟ್‌ಗಳನ್ನು ಗಮ್ಯಸ್ಥಾನದತ್ತ ನಿರ್ದೇಶಿಸುವ ಮಾರ್ಗ ನಮೂದು.';

  @override
  String get gameHintWord132Routing => 'ನೆಟ್‌ವರ್ಕ್‌ಗಳ ನಡುವಿನ ಸಂಚಾರಕ್ಕೆ ಮಾರ್ಗಗಳನ್ನು ಆಯ್ಕೆ ಮಾಡುವುದು.';

  @override
  String get gameHintWord133Packet => 'ನೆಟ್‌ವರ್ಕ್‌ನಾದ್ಯಂತ ಪ್ರಸಾರವಾಗುವ ಡೇಟಾದ ಒಂದು ಘಟಕ.';

  @override
  String get gameHintWord134Protocol => 'ವ್ಯವಸ್ಥೆಗಳ ನಡುವಿನ ಸಂವಹನಕ್ಕೆ ಒಪ್ಪಿದ ನಿಯಮಗಳು.';

  @override
  String get gameHintWord135Ack => 'ಡೇಟಾ ಸ್ವೀಕೃತಿಯನ್ನು ಒಪ್ಪಿಕೊಳ್ಳುವ TCP ಫ್ಲ್ಯಾಗ್.';

  @override
  String get gameHintWord136Bandwidth => 'ಸಂವಹನ ಲಿಂಕ್‌ನ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord137Latency => 'ವಿನಂತಿ ಅಥವಾ ಪ್ಯಾಕೆಟ್‌ಗೆ ಪ್ರತಿಕ್ರಿಯೆ ಸಿಗುವ ಮೊದಲಿನ ವಿಳಂಬ.';

  @override
  String get gameHintWord138Throughput => 'ಪ್ರತಿ ಯೂನಿಟ್ ಸಮಯಕ್ಕೆ ಸಂಸ್ಕರಿಸಿದ ಉಪಯುಕ್ತ ಕೆಲಸ ಅಥವಾ ಡೇಟಾದ ಪ್ರಮಾಣ.';

  @override
  String get gameHintWord139Mtu => 'ವಿಭಜನೆ ಇಲ್ಲದೆ ಲಿಂಕ್ ರವಾನಿಸಬಹುದಾದ ಅತಿ ದೊಡ್ಡ ಪ್ಯಾಕೆಟ್ ಗಾತ್ರ.';

  @override
  String get gameHintWord140Alpn => 'ಅಪ್ಲಿಕೇಶನ್-ಲೇಯರ್ ಪ್ರೋಟೋಕಾಲ್ ಅನ್ನು ಸಮಾಲೋಚಿಸುವ TLS ವಿಸ್ತರಣೆ.';

  @override
  String get gameHintWord141Grep => 'ಹೊಂದುವ ಮಾದರಿಗಾಗಿ ಪಠ್ಯ ಸಾಲುಗಳನ್ನು ಹುಡುಕುತ್ತದೆ.';

  @override
  String get gameHintWord142Sed => 'ಪಠ್ಯ ಬದಲಿಗೆ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವ ಸ್ಟ್ರೀಮ್ ಎಡಿಟರ್.';

  @override
  String get gameHintWord143Lscpu => 'ಪ್ರೊಸೆಸರ್ ವಾಸ್ತುಶಿಲ್ಪ ಮತ್ತು ಕೋರ್ ವಿವರಗಳನ್ನು ತೋರಿಸುವ Linux ಆಜ್ಞೆ.';

  @override
  String get gameHintWord144Find => 'ಫೈಲ್ ಷರತ್ತುಗಳನ್ನು ಬಳಸಿ ಡೈರೆಕ್ಟರಿ ಮರವನ್ನು ಹುಡುಕುತ್ತದೆ.';

  @override
  String get gameHintWord145Lsblk => 'ಬ್ಲಾಕ್ ಸಾಧನಗಳು ಮತ್ತು ಅವುಗಳ ಸಂಬಂಧಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡುವ Linux ಆಜ್ಞೆ.';

  @override
  String get gameHintWord146Sort => 'ಪಠ್ಯದ ಸಾಲುಗಳನ್ನು ಕ್ರಮಗೊಳಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord147Uniq => 'ಪಕ್ಕಪಕ್ಕದ ನಕಲು ಸಾಲುಗಳನ್ನು ಸೋಸುತ್ತದೆ.';

  @override
  String get gameHintWord148Head => 'ಫೈಲ್‌ನ ಆರಂಭವನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord149Tail => 'ಫೈಲ್‌ನ ಅಂತ್ಯವನ್ನು ಮುದ್ರಿಸುತ್ತದೆ ಮತ್ತು ಸೇರಿಸಲಾಗುವ ಲಾಗ್‌ಗಳನ್ನು ಅನುಸರಿಸಬಲ್ಲದು.';

  @override
  String get gameHintWord150Cat => 'ಫೈಲ್‌ಗಳನ್ನು ಜೋಡಿಸಿ ಅವುಗಳ ವಿಷಯವನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord151Cut => 'ಸಾಲುಗಳಿಂದ ಆಯ್ದ ಕ್ಷೇತ್ರಗಳು ಅಥವಾ ಅಕ್ಷರ ಕಾಲಮ್‌ಗಳನ್ನು ಹೊರತೆಗೆಯುತ್ತದೆ.';

  @override
  String get gameHintWord152Tee => 'ಸ್ಟ್ಯಾಂಡರ್ಡ್ ಇನ್‌ಪುಟ್ ಅನ್ನು ಫೈಲ್‌ಗಳಿಗೆ ಮತ್ತು ಸ್ಟ್ಯಾಂಡರ್ಡ್ ಔಟ್‌ಪುಟ್‌ಗೆ ನಕಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord153Echo => 'ತನ್ನ ಆರ್ಗ್ಯುಮೆಂಟ್‌ಗಳನ್ನು ಸ್ಟ್ಯಾಂಡರ್ಡ್ ಔಟ್‌ಪುಟ್‌ಗೆ ಬರೆಯುತ್ತದೆ.';

  @override
  String get gameHintWord154Printf => 'ಶೆಲ್ ಅಥವಾ ಪ್ರೋಗ್ರಾಂನಿಂದ ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಿದ ಪಠ್ಯವನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord155Touch => 'ಫೈಲ್ ಟೈಮ್‌ಸ್ಟ್ಯಾಂಪ್‌ಗಳನ್ನು ನವೀಕರಿಸುತ್ತದೆ ಅಥವಾ ಖಾಲಿ ಫೈಲ್ ರಚಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord156Mkdir => 'ಡೈರೆಕ್ಟರಿಗಳನ್ನು ರಚಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord157Rmdir => 'ಖಾಲಿ ಡೈರೆಕ್ಟರಿಗಳನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get gameHintWord158Chmod => 'Unix ಫೈಲ್ ಅನುಮತಿ ಬಿಟ್‌ಗಳನ್ನು ಬದಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord159Chown => 'ಫೈಲ್ ಮಾಲೀಕತ್ವವನ್ನು ಬದಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord160Chgrp => 'ಫೈಲ್‌ನ ಗುಂಪು ಮಾಲೀಕತ್ವವನ್ನು ಬದಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord161Pwd => 'ಪ್ರಸ್ತುತ ಕಾರ್ಯನಿರತ ಡೈರೆಕ್ಟರಿಯನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord162Apt => 'Debian-ಆಧಾರಿತ ವ್ಯವಸ್ಥೆಗಳು ಬಳಸುವ ಪ್ಯಾಕೇಜ್ ನಿರ್ವಹಣಾ ಸಾಧನ.';

  @override
  String get gameHintWord163Top => 'ಪ್ರಕ್ರಿಯೆಗಳು ಮತ್ತು ಸಿಸ್ಟಮ್ ಸಂಪನ್ಮೂಲ ಬಳಕೆಯ ಸಂವಾದಾತ್ಮಕ ಪ್ರದರ್ಶನ.';

  @override
  String get gameHintWord164Agent => 'ಹೋಸ್ಟ್‌ನಲ್ಲಿ ಕೆಲಸ ನಿರ್ವಹಿಸುವ ಅಥವಾ ವರದಿ ಮಾಡುವ ಸಾಫ್ಟ್‌ವೇರ್ ಘಟಕ.';

  @override
  String get gameHintWord165Kill => 'ಪ್ರಕ್ರಿಯೆಗೆ ಅದರ ಗುರುತಿಸುವಿಕೆಯ ಮೂಲಕ ಸಿಗ್ನಲ್ ಕಳುಹಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord166Signal => 'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಪ್ರಕ್ರಿಯೆಗೆ ತಲುಪಿಸುವ ಅಧಿಸೂಚನೆ.';

  @override
  String get gameHintWord167Sigkill => 'ಪ್ರಕ್ರಿಯೆಯನ್ನು ತಕ್ಷಣ ಕೊನೆಗೊಳಿಸುವ Unix ಸಿಗ್ನಲ್.';

  @override
  String get gameHintWord168Nice => 'ಹೊಂದಿಸಿದ ವೇಳಾಪಟ್ಟಿ ಆದ್ಯತೆಯೊಂದಿಗೆ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಪ್ರಾರಂಭಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord169Renice => 'ಚಾಲನೆಯಲ್ಲಿರುವ ಪ್ರಕ್ರಿಯೆಯ ವೇಳಾಪಟ್ಟಿ ಆದ್ಯತೆಯನ್ನು ಬದಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord170Jobs => 'ಪ್ರಸ್ತುತ ಶೆಲ್ ನಿರ್ವಹಿಸುವ ಜಾಬ್‌ಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord171Nohup => 'ಹ್ಯಾಂಗಪ್ ಸಿಗ್ನಲ್‌ಗಳನ್ನು ನಿರ್ಲಕ್ಷಿಸಿ ಆಜ್ಞೆಯನ್ನು ಚಲಾಯಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord172Screen => 'ಬೇರ್ಪಡಿಸಬಹುದಾದ ಸೆಷನ್‌ಗಳನ್ನು ಬೆಂಬಲಿಸುವ ಟರ್ಮಿನಲ್ ಮಲ್ಟಿಪ್ಲೆಕ್ಸರ್.';

  @override
  String get gameHintWord173Uptime => 'ವ್ಯವಸ್ಥೆ ಎಷ್ಟು ಕಾಲ ಚಾಲನೆಯಲ್ಲಿದೆ ಎಂದು ವರದಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord174Uname => 'ಸಿಸ್ಟಮ್ ಮತ್ತು ಕರ್ನಲ್ ಮಾಹಿತಿಯನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord175Whoami => 'ಪ್ರಸ್ತುತ ಪರಿಣಾಮಕಾರಿ ಬಳಕೆದಾರ ಹೆಸರನ್ನು ಮುದ್ರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord176Umask => 'ಫೈಲ್‌ಗಳನ್ನು ರಚಿಸುವಾಗ ಬಳಸುವ ಅನುಮತಿ ಮಾಸ್ಕ್ ಹೊಂದಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord177Usermod => 'ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಬಳಕೆದಾರ ಖಾತೆಯನ್ನು ಮಾರ್ಪಡಿಸುವ Linux ಆಜ್ಞೆ.';

  @override
  String get gameHintWord178Crontab => 'ನಿಗದಿತ ಪುನರಾವರ್ತಿತ ಶೆಲ್ ಜಾಬ್‌ಗಳನ್ನು ಸಂಪಾದಿಸುತ್ತದೆ ಅಥವಾ ಪಟ್ಟಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord179Findmnt => 'ಮೌಂಟ್ ಆದ ಫೈಲ್‌ಸಿಸ್ಟಮ್ ಮಾಹಿತಿಯನ್ನು ತೋರಿಸುವ Linux ಆಜ್ಞೆ.';

  @override
  String get gameHintWord180Mount => 'ಫೈಲ್‌ಸಿಸ್ಟಮ್ ಅನ್ನು ಡೈರೆಕ್ಟರಿ ಮರಕ್ಕೆ ಜೋಡಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord181Sigterm => 'ಪ್ರಕ್ರಿಯೆಯನ್ನು ಸುಲಲಿತವಾಗಿ ಕೊನೆಗೊಳಿಸಲು ಕೋರುವ Unix ಸಿಗ್ನಲ್.';

  @override
  String get gameHintWord182Fstab => 'ಮೌಂಟ್ ಮಾಡಬೇಕಾದ ಫೈಲ್‌ಸಿಸ್ಟಮ್‌ಗಳನ್ನು ವಿವರಿಸುವ ಸಿಸ್ಟಮ್ ಕೋಷ್ಟಕ.';

  @override
  String get gameHintWord183Swap => 'ಭೌತಿಕ ಮೆಮೊರಿಗೆ ಪೂರಕವಾಗಿ ಬಳಸುವ ಡಿಸ್ಕ್-ಆಧಾರಿತ ಸ್ಥಳ.';

  @override
  String get gameHintWord184Tmpfs => 'ವರ್ಚುವಲ್ ಮೆಮೊರಿ ಆಧಾರಿತ ತಾತ್ಕಾಲಿಕ ಫೈಲ್‌ಸಿಸ್ಟಮ್.';

  @override
  String get gameHintWord185Proc => 'ಪ್ರಕ್ರಿಯೆ ಮತ್ತು ಕರ್ನಲ್ ಮಾಹಿತಿಯನ್ನು ತೆರೆದಿಡುವ Linux ವರ್ಚುವಲ್ ಫೈಲ್‌ಸಿಸ್ಟಮ್.';

  @override
  String get gameHintWord186Syslog => 'ಪ್ರಮಾಣಿತ ಲಾಗಿಂಗ್ ಪ್ರೋಟೋಕಾಲ್ ಮತ್ತು ಸಂದೇಶ ಸ್ವರೂಪ.';

  @override
  String get gameHintWord187Dmesg => 'ಕರ್ನಲ್ ರಿಂಗ್ ಬಫರ್‌ನ ಸಂದೇಶಗಳನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord188Free => 'ಬಳಸಿದ ಮತ್ತು ಲಭ್ಯವಿರುವ ಸಿಸ್ಟಮ್ ಮೆಮೊರಿಯನ್ನು ವರದಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord189Stat => 'ವಿವರವಾದ ಫೈಲ್ ಮೆಟಾಡೇಟಾವನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord190Lsof => 'ತೆರೆದ ಫೈಲ್‌ಗಳನ್ನು ಮತ್ತು ಅವನ್ನು ಹಿಡಿದಿರುವ ಪ್ರಕ್ರಿಯೆಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord191Netstat => 'ನೆಟ್‌ವರ್ಕ್ ಸಂಪರ್ಕಗಳು ಮತ್ತು ರೂಟಿಂಗ್ ಮಾಹಿತಿಯನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord192Checksum => 'ಡೇಟಾದ ಬದಲಾವಣೆ ಅಥವಾ ಹಾನಿ ಪತ್ತೆಹಚ್ಚಲು ಲೆಕ್ಕಹಾಕಿದ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord193Ping => 'ಎಕೋ ವಿನಂತಿಗಳ ಮೂಲಕ ನೆಟ್‌ವರ್ಕ್ ತಲುಪುವಿಕೆಯನ್ನು ಪರೀಕ್ಷಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord194Traceroute => 'ನೆಟ್‌ವರ್ಕ್ ಗಮ್ಯಸ್ಥಾನದತ್ತ ಮಧ್ಯಂತರ ಹಾಪ್‌ಗಳನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord195Resolver => 'ಹೆಸರಿನ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರ ಹುಡುಕುವ DNS ಘಟಕ.';

  @override
  String get gameHintWord196Nslookup => 'DNS ಹೆಸರುಗಳು ಮತ್ತು ವಿಳಾಸಗಳನ್ನು ಹುಡುಕುತ್ತದೆ.';

  @override
  String get gameHintWord197Telnet => 'ಹಳೆಯ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡದ ರಿಮೋಟ್ ಟರ್ಮಿನಲ್ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord198Tftp => 'ಸರಳ UDP-ಆಧಾರಿತ ಫೈಲ್ ವರ್ಗಾವಣೆ ಪ್ರೋಟೋಕಾಲ್.';

  @override
  String get gameHintWord199Daemon => 'Unix ತರಹದ ವ್ಯವಸ್ಥೆಗಳಲ್ಲಿನ ಹಿನ್ನೆಲೆ ಸೇವಾ ಪ್ರಕ್ರಿಯೆ.';

  @override
  String get gameHintWord200Kernel => 'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸುವ ಪ್ರಮುಖ ಘಟಕ.';

  @override
  String get gameHintWord201Commit => 'ಆವೃತ್ತಿ ನಿಯಂತ್ರಣದಲ್ಲಿ ದಾಖಲಿಸಿದ ಬದಲಾವಣೆಗಳ ಸ್ನ್ಯಾಪ್‌ಶಾಟ್.';

  @override
  String get gameHintWord202Branch => 'ಅಭಿವೃದ್ಧಿಯ ಒಂದು ಸಾಲನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಚಲಿಸಬಲ್ಲ ಉಲ್ಲೇಖ.';

  @override
  String get gameHintWord203Merge => 'ವಿಭಿನ್ನ ಅಭಿವೃದ್ಧಿ ಸಾಲುಗಳ ಇತಿಹಾಸಗಳನ್ನು ಸಂಯೋಜಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord204Rebase => 'ಬೇರೆ ಆಧಾರ ಕಮಿಟ್‌ನ ಮೇಲೆ ಕಮಿಟ್‌ಗಳನ್ನು ಮರುಪ್ಲೇ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord205Clone => 'ರಿಮೋಟ್ ರೆಪೊಸಿಟರಿಯ ಸ್ಥಳೀಯ ನಕಲನ್ನು ರಚಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord206Fetch => 'ವಿಲೀನಿಸದೆ ರಿಮೋಟ್ ಆಬ್ಜೆಕ್ಟ್‌ಗಳು ಮತ್ತು ಉಲ್ಲೇಖಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord207Pull => 'ಬದಲಾವಣೆಗಳನ್ನು ತಂದು ಪ್ರಸ್ತುತ ಬ್ರಾಂಚ್‌ಗೆ ಸೇರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord208Push => 'ಸ್ಥಳೀಯ ಕಮಿಟ್‌ಗಳನ್ನು ರಿಮೋಟ್ ರೆಪೊಸಿಟರಿಗೆ ಕಳುಹಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord209Stash => 'ಕಮಿಟ್ ಮಾಡದ ವರ್ಕಿಂಗ್-ಟ್ರೀ ಬದಲಾವಣೆಗಳನ್ನು ತಾತ್ಕಾಲಿಕವಾಗಿ ಉಳಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord210Revert => 'ಇನ್ನೊಂದು ಕಮಿಟ್ ಅನ್ನು ರದ್ದುಗೊಳಿಸುವ ಕಮಿಟ್ ರಚಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord211Reset => 'Git ಉಲ್ಲೇಖವನ್ನು ಸರಿಸುತ್ತದೆ ಮತ್ತು ಇಂಡೆಕ್ಸ್ ಅಥವಾ ಕಾರ್ಯ ಫೈಲ್‌ಗಳನ್ನು ಮರುಹೊಂದಿಸಬಲ್ಲದು.';

  @override
  String get gameHintWord212Reflog => 'Git ಉಲ್ಲೇಖಗಳ ನವೀಕರಣಗಳ ಸ್ಥಳೀಯ ಇತಿಹಾಸ.';

  @override
  String get gameHintWord213Diff => 'ಆವೃತ್ತಿಗಳು ಅಥವಾ ಫೈಲ್‌ಗಳ ನಡುವಿನ ವ್ಯತ್ಯಾಸಗಳನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord214Status => 'ಸ್ಟೇಜ್ ಮಾಡಿದ, ಮಾರ್ಪಡಿಸಿದ ಮತ್ತು ಟ್ರ್ಯಾಕ್ ಆಗದ ಫೈಲ್‌ಗಳನ್ನು ವರದಿ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord215Checkout => 'ರಿವಿಷನ್‌ಗಳನ್ನು ಬದಲಿಸಲು ಅಥವಾ ಫೈಲ್‌ಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಲು Git ಆಜ್ಞೆ.';

  @override
  String get gameHintWord216Tag => 'ಸಾಮಾನ್ಯವಾಗಿ ಬಿಡುಗಡೆಯನ್ನು ಗುರುತಿಸುವ ಹೆಸರಿನ ಉಲ್ಲೇಖ.';

  @override
  String get gameHintWord217Remote => 'ಇನ್ನೊಂದು ರೆಪೊಸಿಟರಿಗೆ ಹೆಸರಿನ ಸಂಪರ್ಕ.';

  @override
  String get gameHintWord218Origin => 'ಕ್ಲೋನ್ ಮಾಡಿದ ರೆಪೊಸಿಟರಿ ರಿಮೋಟ್‌ಗೆ ನೀಡುವ ಡೀಫಾಲ್ಟ್ ಹೆಸರು.';

  @override
  String get gameHintWord219Upstream => 'ಸ್ಥಳೀಯ ಬ್ರಾಂಚ್‌ಗೆ ಸಂಬಂಧಿಸಿದ ರಿಮೋಟ್ ಟ್ರ್ಯಾಕಿಂಗ್ ಬ್ರಾಂಚ್.';

  @override
  String get gameHintWord220Worktree => 'ರೆಪೊಸಿಟರಿಗೆ ಜೋಡಿಸಿದ, ಚೆಕ್ ಔಟ್ ಮಾಡಿದ ಕಾರ್ಯ ಡೈರೆಕ್ಟರಿ.';

  @override
  String get gameHintWord221Registry => 'ಕಂಟೇನರ್ ಇಮೇಜ್‌ಗಳನ್ನು ಸಂಗ್ರಹಿಸಿ ವಿತರಿಸುವ ಸೇವೆ.';

  @override
  String get gameHintWord222Digest => 'ಕಂಟೇನರ್ ಇಮೇಜ್‌ಗೆ ವಿಷಯ-ಆಧಾರಿತ ಗುರುತಿಸುವಿಕೆ.';

  @override
  String get gameHintWord223Layer => 'ಕಂಟೇನರ್ ಇಮೇಜ್‌ನ ಭಾಗವಾಗುವ ಫೈಲ್‌ಸಿಸ್ಟಮ್ ಬದಲಾವಣೆಗಳು.';

  @override
  String get gameHintWord224Entrypoint => 'ಮುಖ್ಯ ಕಂಟೇನರ್ ಎಕ್ಸಿಕ್ಯೂಟೆಬಲ್ ಅನ್ನು ನಿರ್ಧರಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord225Cmd => 'ಡೀಫಾಲ್ಟ್ ಆಜ್ಞೆ ಅಥವಾ ಆರ್ಗ್ಯುಮೆಂಟ್‌ಗಳನ್ನು ಸೂಚಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord226Workdir => 'ಕಾರ್ಯ ಡೈರೆಕ್ಟರಿಯನ್ನು ಹೊಂದಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord227Copy => 'ಬಿಲ್ಡ್-ಸಂದರ್ಭದ ಫೈಲ್‌ಗಳನ್ನು ಇಮೇಜ್‌ಗೆ ನಕಲಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord228Add => 'ಸ್ಥಳೀಯ ಆರ್ಕೈವ್‌ಗಳನ್ನೂ ಬಿಚ್ಚಬಲ್ಲ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord229Run => 'ಬಿಲ್ಡ್-ಸಮಯದ ಆಜ್ಞೆಯನ್ನು ಚಲಾಯಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord230Env => 'ಪರಿಸರ ವೇರಿಯಬಲ್‌ಗಳನ್ನು ವ್ಯಾಖ್ಯಾನಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord231Arg => 'ಬಿಲ್ಡ್-ಸಮಯದ ವೇರಿಯಬಲ್ ಘೋಷಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord232Expose => 'ಕಂಟೇನರ್ ಪೋರ್ಟ್ ಅನ್ನು ದಾಖಲಿಸುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord233User => 'ನಂತರದ ಆಜ್ಞೆಗಳಿಗೆ ಖಾತೆಯನ್ನು ಆಯ್ಕೆ ಮಾಡುವ Dockerfile ಸೂಚನೆ.';

  @override
  String get gameHintWord234Healthcheck => 'ಕಂಟೇನರ್ ಆರೋಗ್ಯವನ್ನು ಹೇಗೆ ಪರೀಕ್ಷಿಸಬೇಕು ಎಂದು ವಿವರಿಸುವ ಸೂಚನೆ.';

  @override
  String get gameHintWord235Shebang => 'ಚಲಾಯಿಸಬೇಕಾದ ಇಂಟರ್ಪ್ರಿಟರ್ ಅನ್ನು ಗುರುತಿಸುವ ಸ್ಕ್ರಿಪ್ಟ್‌ನ ಆರಂಭಿಕ ಸಾಲು.';

  @override
  String get gameHintWord236Compose => 'ಬಹು-ಕಂಟೇನರ್ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು ವ್ಯಾಖ್ಯಾನಿಸಿ ಚಲಾಯಿಸಲು Docker ಸಾಧನ.';

  @override
  String get gameHintWord237Bridge => 'ಸ್ಥಳೀಯ ಕಂಟೇನರ್ ನೆಟ್‌ವರ್ಕಿಂಗ್‌ಗೆ ಸಾಮಾನ್ಯ Docker ನೆಟ್‌ವರ್ಕ್ ಡ್ರೈವರ್.';

  @override
  String get gameHintWord238Overlay => 'ಹಲವು ಹೋಸ್ಟ್‌ಗಳ ಕಂಟೇನರ್‌ಗಳನ್ನು ವ್ಯಾಪಿಸುವ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord239None => 'ಕಂಟೇನರ್ ನೆಟ್‌ವರ್ಕಿಂಗ್ ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸುವ Docker ನೆಟ್‌ವರ್ಕ್ ಡ್ರೈವರ್.';

  @override
  String get gameHintWord240Prune => 'ಬಳಕೆಯಾಗದ ಕಂಟೇನರ್ ಸಂಪನ್ಮೂಲಗಳನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get gameHintWord241Replicaset => 'ಅಪೇಕ್ಷಿತ ಪಾಡ್ ಸಂಖ್ಯೆಯನ್ನು ಉಳಿಸುವ Kubernetes ನಿಯಂತ್ರಕ.';

  @override
  String get gameHintWord242Service => 'ಪಾಡ್‌ಗಳಿಗೆ ಸ್ಥಿರ ಪ್ರವೇಶ ಒದಗಿಸುವ Kubernetes ಅಮೂರ್ತತೆ.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes ಸೇವೆಯ ಹಿಂದಿರುವ ವಿಳಾಸಗಳು.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes ಸಂಪನ್ಮೂಲಗಳನ್ನು ಗುಂಪು ಮಾಡುವ ತಾರ್ಕಿಕ ವ್ಯಾಪ್ತಿ.';

  @override
  String get gameHintWord245Node => 'Kubernetes ಪಾಡ್‌ಗಳನ್ನು ಹೋಸ್ಟ್ ಮಾಡುವ ವರ್ಕರ್ ಯಂತ್ರ.';

  @override
  String get gameHintWord246Kubelet => 'ಪಾಡ್ ಕಾರ್ಯಗತಗೊಳಿಸುವಿಕೆಯನ್ನು ನಿರ್ವಹಿಸುವ ಪ್ರತಿ ನೋಡ್‌ನ ಏಜೆಂಟ್.';

  @override
  String get gameHintWord247Pvc => 'ಶಾಶ್ವತ ಸಂಗ್ರಹಣೆಗಾಗಿ Kubernetes ವಿನಂತಿ.';

  @override
  String get gameHintWord248Apiserver => 'ಕ್ಲಸ್ಟರ್ API ಅನ್ನು ತೆರೆದಿಡುವ Kubernetes ನಿಯಂತ್ರಣ-ಸಮತಲ ಘಟಕ.';

  @override
  String get gameHintWord249Role => 'ಪಾತ್ರ-ಆಧಾರಿತ ಪ್ರವೇಶ ನಿಯಂತ್ರಣದಲ್ಲಿನ ಅನುಮತಿಗಳ ಹೆಸರಿನ ಗುಂಪು.';

  @override
  String get gameHintWord250Resourcequota => 'ನೇಮ್‌ಸ್ಪೇಸ್‌ನಲ್ಲಿ ಸಂಪನ್ಮೂಲ ಬಳಕೆಯನ್ನು ಮಿತಿಗೊಳಿಸುವ Kubernetes ವಸ್ತು.';

  @override
  String get gameHintWord251Selector => 'ಸಂಪನ್ಮೂಲಗಳನ್ನು ಅವುಗಳ ಲೇಬಲ್‌ಗಳ ಮೂಲಕ ಹೊಂದಿಸುವ ಅಭಿವ್ಯಕ್ತಿ.';

  @override
  String get gameHintWord252Taint => 'ಹೊಂದುವ ಟಾಲರೇಶನ್ ಇಲ್ಲದ ಪಾಡ್‌ಗಳನ್ನು ದೂರವಿಡುವ ನೋಡ್ ಗುಣ.';

  @override
  String get gameHintWord253Toleration => 'ಟೇಂಟ್ ಆದ ನೋಡ್‌ಗೆ ವೇಳಾಪಟ್ಟಿ ಮಾಡಲು ಅನುಮತಿಸುವ ಪಾಡ್ ಸೆಟ್ಟಿಂಗ್.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes ನೋಡ್ ಅನ್ನು ವೇಳಾಪಟ್ಟಿ ಮಾಡಲಾಗದಂತೆ ಗುರುತಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord255Uncordon => 'ಕಾರ್ಡನ್ ಮಾಡಿದ ನೋಡ್ ಅನ್ನು ಮತ್ತೆ ವೇಳಾಪಟ್ಟಿ ಮಾಡಬಹುದಾದಂತೆ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord256Drain => 'ನೋಡ್ ನಿರ್ವಹಣೆಗೆ ಮೊದಲು ವರ್ಕ್‌ಲೋಡ್‌ಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿ ಹೊರಹಾಕುತ್ತದೆ.';

  @override
  String get gameHintWord257Job => 'ಕೆಲಸವನ್ನು ಪೂರ್ಣಗೊಳ್ಳುವವರೆಗೆ ಚಲಾಯಿಸುವ Kubernetes ವರ್ಕ್‌ಲೋಡ್.';

  @override
  String get gameHintWord258Cronjob => 'ವೇಳಾಪಟ್ಟಿಯ ಪ್ರಕಾರ ಜಾಬ್‌ಗಳನ್ನು ರಚಿಸುವ Kubernetes ವರ್ಕ್‌ಲೋಡ್.';

  @override
  String get gameHintWord259Readiness => 'ಕಂಟೇನರ್ ಸಂಚಾರವನ್ನು ಸ್ವೀಕರಿಸಬಹುದೇ ಎಂದು ಸೂಚಿಸುವ ಪ್ರೋಬ್.';

  @override
  String get gameHintWord260Liveness => 'ಕಂಟೇನರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಬೇಕೇ ಎಂದು ಸೂಚಿಸುವ ಪ್ರೋಬ್.';

  @override
  String get gameHintWord261Canary => 'ಹೊಸ ಆವೃತ್ತಿಯನ್ನು ಸಣ್ಣ ಸಂಚಾರ ಪಾಲಿಗೆ ತೆರೆದಿಡುವ ಬಿಡುಗಡೆ ವಿಧಾನ.';

  @override
  String get gameHintWord262Rolling => 'ಚಾಲನೆಯಲ್ಲಿರುವ ಇನ್ಸ್ಟೆನ್ಸ್‌ಗಳನ್ನು ಕ್ರಮೇಣ ಬದಲಿಸುವ ನವೀಕರಣ ತಂತ್ರ.';

  @override
  String get gameHintWord263Rollback => 'ಈ ಹಿಂದೆ ಕೆಲಸ ಮಾಡುತ್ತಿದ್ದ ಅಪ್ಲಿಕೇಶನ್ ಆವೃತ್ತಿಯನ್ನು ಮರುಸ್ಥಾಪಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord264Rollout => 'ಹೊಸ ಅಪ್ಲಿಕೇಶನ್ ಆವೃತ್ತಿಯ ಹಂತಹಂತದ ನಿಯೋಜನೆ.';

  @override
  String get gameHintWord265Recreate => 'ಬದಲಿ ಪಾಡ್‌ಗಳನ್ನು ಪ್ರಾರಂಭಿಸುವ ಮೊದಲು ಹಳೆಯವನ್ನು ನಿಲ್ಲಿಸುವ ನಿಯೋಜನೆ ತಂತ್ರ.';

  @override
  String get gameHintWord266Blue => 'ಬ್ಲೂ-ಗ್ರೀನ್ ಬಿಡುಗಡೆಯಲ್ಲಿನ ಎರಡು ಪರಿಸರಗಳಲ್ಲಿ ಒಂದು.';

  @override
  String get gameHintWord267Green => 'ಬ್ಲೂ-ಗ್ರೀನ್ ಬಿಡುಗಡೆಯಲ್ಲಿನ ಇನ್ನೊಂದು ಪರಿಸರ.';

  @override
  String get gameHintWord268Artifact => 'ಬಿಲ್ಡ್ ಪೈಪ್‌ಲೈನ್ ಉತ್ಪಾದಿಸುವ ಆವೃತ್ತಿ ಹೊಂದಿದ ಫಲಿತಾಂಶ.';

  @override
  String get gameHintWord269Staging => 'ಬಿಡುಗಡೆ ಪರಿಶೀಲನೆಗೆ ಬಳಸುವ ಉತ್ಪಾದನೆ-ಪೂರ್ವ ಪರಿಸರ.';

  @override
  String get gameHintWord270Production => 'ನಿಜವಾದ ಅಂತಿಮ ಬಳಕೆದಾರರಿಗೆ ಸೇವೆ ನೀಡುವ ಪರಿಸರ.';

  @override
  String get gameHintWord271Release => 'ಬಳಕೆಗಾಗಿ ತಲುಪಿಸಿದ ಸಾಫ್ಟ್‌ವೇರ್ ಆವೃತ್ತಿ.';

  @override
  String get gameHintWord272Version => 'ಸಾಫ್ಟ್‌ವೇರ್ ಪರಿಷ್ಕರಣೆಯನ್ನು ಪ್ರತ್ಯೇಕಿಸುವ ಗುರುತಿಸುವಿಕೆ.';

  @override
  String get gameHintWord273Revision => 'ದಾಖಲೆ ಅಥವಾ ಕೋಡ್‌ಬೇಸ್‌ನ ಗುರುತಿಸಬಹುದಾದ ಆವೃತ್ತಿ.';

  @override
  String get gameHintWord274Webhook => 'ಘಟನೆ ಸಂಭವಿಸಿದಾಗ ಕಳುಹಿಸುವ HTTP ಅಧಿಸೂಚನೆ.';

  @override
  String get gameHintWord275Runbook => 'ವ್ಯವಸ್ಥೆಯನ್ನು ನಿರ್ವಹಿಸಲು ಅಥವಾ ಚೇತರಿಸಲು ದಾಖಲಿಸಿದ ವಿಧಾನ.';

  @override
  String get gameHintWord276Workspace => 'ಕಾರ್ಯ ಯೋಜನಾ ಸಂಪನ್ಮೂಲಗಳನ್ನು ಹೊಂದಿರುವ ಡೈರೆಕ್ಟರಿ ಅಥವಾ ವ್ಯಾಪ್ತಿ.';

  @override
  String get gameHintWord277Credentials => 'ವ್ಯವಸ್ಥೆಯನ್ನು ಪ್ರವೇಶಿಸಲು ಬಳಸುವ ದೃಢೀಕರಣ ಸಾಮಗ್ರಿ.';

  @override
  String get gameHintWord278Trigger => 'ಪೈಪ್‌ಲೈನ್ ಅನ್ನು ಪ್ರಾರಂಭಿಸುವ ಘಟನೆ ಅಥವಾ ಷರತ್ತು.';

  @override
  String get gameHintWord279Parameter => 'ಜಾಬ್ ಅಥವಾ ಫಂಕ್ಷನ್‌ಗೆ ನೀಡುವ ಹೆಸರಿನ ಇನ್‌ಪುಟ್.';

  @override
  String get gameHintWord280Access => 'ಅಧಿಕಾರಕ್ಕೆ ಒಳಪಟ್ಟು ಸಂಪನ್ಮೂಲವನ್ನು ಬಳಸುವ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord281Module => 'ಮರುಬಳಕೆ ಮಾಡಬಹುದಾದ ಮೂಲಸೌಕರ್ಯ ವ್ಯಾಖ್ಯಾನಗಳ ಗುಂಪು.';

  @override
  String get gameHintWord282Provider => 'ಕಾನ್ಫಿಗರೇಶನ್ ಅನ್ನು ಬಾಹ್ಯ API ಗೆ ಜೋಡಿಸುವ Terraform ಪ್ಲಗಿನ್.';

  @override
  String get gameHintWord283Resource => 'ಕಾನ್ಫಿಗರೇಶನ್‌ನಲ್ಲಿ ಘೋಷಿಸಿದ ನಿರ್ವಹಿತ ಮೂಲಸೌಕರ್ಯ ವಸ್ತು.';

  @override
  String get gameHintWord284Variable => 'ಕಾನ್ಫಿಗರೇಶನ್ ಅಥವಾ ಕೋಡ್ ಬಳಸುವ ಹೆಸರಿನ ಇನ್‌ಪುಟ್ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord285Output => 'ಮೂಲಸೌಕರ್ಯ ಕಾನ್ಫಿಗರೇಶನ್ ಹಿಂದಿರುಗಿಸುವ ತೆರೆದ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord286Tfstate => 'Terraform ಸ್ಟೇಟ್ ಸ್ನ್ಯಾಪ್‌ಶಾಟ್‌ಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ಫೈಲ್ ಪ್ರತ್ಯಯ.';

  @override
  String get gameHintWord287Tfvars => 'Terraform ಇನ್‌ಪುಟ್ ವೇರಿಯಬಲ್ ಮೌಲ್ಯಗಳಿಗೆ ಬಳಸುವ ಫೈಲ್ ಪ್ರತ್ಯಯ.';

  @override
  String get gameHintWord288Backend => 'ಸ್ಟೇಟ್ ಸಂಗ್ರಹಣೆಯನ್ನು ನಿಯಂತ್ರಿಸುವ Terraform ಕಾನ್ಫಿಗರೇಶನ್.';

  @override
  String get gameHintWord289Plan => 'ಪ್ರಸ್ತಾವಿತ ಮೂಲಸೌಕರ್ಯ ಬದಲಾವಣೆಗಳ Terraform ಮುನ್ನೋಟ.';

  @override
  String get gameHintWord290Apply => 'ಪ್ರಸ್ತಾವಿತ ಬದಲಾವಣೆಗಳನ್ನು ಕಾರ್ಯಗತಗೊಳಿಸುವ Terraform ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord291Destroy => 'ನಿರ್ವಹಿತ ಮೂಲಸೌಕರ್ಯವನ್ನು ತೆಗೆದುಹಾಕುವ Terraform ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord292Import => 'ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಸಂಪನ್ಮೂಲವನ್ನು ಮೂಲಸೌಕರ್ಯ ನಿರ್ವಹಣೆಯ ಅಡಿಗೆ ತರುತ್ತದೆ.';

  @override
  String get gameHintWord293Refresh => 'ದಾಖಲಾದ ಸ್ಥಿತಿಯನ್ನು ನಿಜವಾದ ಮೂಲಸೌಕರ್ಯದೊಂದಿಗೆ ಸಿಂಕ್ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord294Validate => 'ಕಾನ್ಫಿಗರೇಶನ್ ಸಿಂಟ್ಯಾಕ್ಸ್ ಮತ್ತು ಆಂತರಿಕ ಸಾಮರಸ್ಯವನ್ನು ಪರಿಶೀಲಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord295Fmt => 'ಪ್ರಮಾಣಿತ ಕಾನ್ಫಿಗರೇಶನ್ ಫಾರ್ಮ್ಯಾಟಿಂಗ್ ಅನ್ವಯಿಸುವ Terraform ಆಜ್ಞೆ.';

  @override
  String get gameHintWord296Init => 'Terraform ಪ್ರೊವೈಡರ್‌ಗಳು ಮತ್ತು ಕಾರ್ಯ ಡೈರೆಕ್ಟರಿಯನ್ನು ಆರಂಭಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord297Executor => 'ಬಿಲ್ಡ್ ಚಲಾಯಿಸಬಲ್ಲ Jenkins ವರ್ಕರ್ ಸ್ಲಾಟ್.';

  @override
  String get gameHintWord298Dependencies => 'ಒಂದು ಘಟಕಕ್ಕೆ ಮೊದಲು ಇನ್ನೊಂದು ಬೇಕಾಗುವ ಸಂಬಂಧಗಳು.';

  @override
  String get gameHintWord299Drift => 'ಘೋಷಿತ ಮತ್ತು ನಿಜವಾದ ಮೂಲಸೌಕರ್ಯ ಸ್ಥಿತಿಯ ನಡುವಿನ ವ್ಯತ್ಯಾಸ.';

  @override
  String get gameHintWord300Locking => 'ಹಂಚಿಕೆಯ ಸ್ಥಿತಿಯನ್ನು ಏಕಕಾಲಕ್ಕೆ ಹಲವರು ಬದಲಿಸುವುದನ್ನು ತಡೆಯುತ್ತದೆ.';

  @override
  String get gameHintWord301Playbook => 'ಸ್ವಯಂಚಾಲನೆಯ ಪ್ಲೇಗಳು ಮತ್ತು ಕಾರ್ಯಗಳನ್ನು ವಿವರಿಸುವ Ansible ದಾಖಲೆ.';

  @override
  String get gameHintWord302Inventory => 'ನಿರ್ವಹಿತ ಹೋಸ್ಟ್‌ಗಳು ಮತ್ತು ಗುಂಪುಗಳ Ansible ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord303Facts => 'ನಿರ್ವಹಿತ ಹೋಸ್ಟ್‌ಗಳ ಬಗ್ಗೆ ಸಂಗ್ರಹಿಸಿದ ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ.';

  @override
  String get gameHintWord304Task => 'ಸ್ವಯಂಚಾಲನೆಯಲ್ಲಿನ ಒಂದು ಪ್ರತ್ಯೇಕ ಕೆಲಸದ ಘಟಕ.';

  @override
  String get gameHintWord305Handler => 'ಬದಲಾವಣೆಯ ಅಧಿಸೂಚನೆ ಬಂದಾಗ ಚಲಿಸುವ Ansible ಕಾರ್ಯ.';

  @override
  String get gameHintWord306Notify => 'ಬದಲಾದ ಕಾರ್ಯದ ನಂತರ ಹ್ಯಾಂಡ್ಲರ್ ಅನ್ನು ಸರದಿಗೆ ಹಾಕುವ Ansible ನಿರ್ದೇಶನ.';

  @override
  String get gameHintWord307Become => 'ಸವಲತ್ತು ಹೆಚ್ಚಳವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸುವ Ansible ಸೆಟ್ಟಿಂಗ್.';

  @override
  String get gameHintWord308Vault => 'ಸೂಕ್ಷ್ಮ ಸ್ವಯಂಚಾಲನೆ ಡೇಟಾವನ್ನು ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡುವ Ansible ವೈಶಿಷ್ಟ್ಯ.';

  @override
  String get gameHintWord309Register => 'ಕಾರ್ಯದ ಫಲಿತಾಂಶವನ್ನು ವೇರಿಯಬಲ್‌ನಲ್ಲಿ ಉಳಿಸುವ Ansible ನಿರ್ದೇಶನ.';

  @override
  String get gameHintWord310When => 'ಷರತ್ತಿನ ಕಾರ್ಯ ಕಾರ್ಯಗತಗೊಳಿಕೆಯನ್ನು ನಿಯಂತ್ರಿಸುವ Ansible ಕೀವರ್ಡ್.';

  @override
  String get gameHintWord311Loop => 'ಸಂಗ್ರಹದ ಮೇಲೆ ಸ್ವಯಂಚಾಲನೆ ಕಾರ್ಯವನ್ನು ಪುನರಾವರ್ತಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord312Include => 'ಮರುಬಳಕೆ ಮಾಡಬಹುದಾದ ಸ್ವಯಂಚಾಲನೆ ವಿಷಯವನ್ನು ಕ್ರಿಯಾತ್ಮಕವಾಗಿ ಲೋಡ್ ಮಾಡುತ್ತದೆ.';

  @override
  String get gameHintWord313Tags => 'ಸ್ವಯಂಚಾಲನೆ ಕಾರ್ಯಗಳ ಉಪಗುಂಪುಗಳನ್ನು ಆಯ್ಕೆ ಮಾಡಲು ಬಳಸುವ ಲೇಬಲ್‌ಗಳು.';

  @override
  String get gameHintWord314Template => 'ನಿಯೋಜನೆಗೆ ಮೊದಲು ವೇರಿಯಬಲ್‌ಗಳೊಂದಿಗೆ ರೆಂಡರ್ ಮಾಡುವ ಫೈಲ್.';

  @override
  String get gameHintWord315Jinja => 'Ansible ಬಳಸುವ ಟೆಂಪ್ಲೇಟ್ ಭಾಷೆ.';

  @override
  String get gameHintWord316Abstraction => 'ಅನುಷ್ಠಾನ ವಿವರಗಳನ್ನು ಸರಳ ಇಂಟರ್‌ಫೇಸ್‌ನ ಹಿಂದೆ ಮರೆಮಾಡುವುದು.';

  @override
  String get gameHintWord317Agile => 'ಪ್ರತಿಕ್ರಿಯೆಗೆ ಒತ್ತು ನೀಡುವ ಪುನರಾವರ್ತಿತ ಸಾಫ್ಟ್‌ವೇರ್ ವಿತರಣಾ ವಿಧಾನ.';

  @override
  String get gameHintWord318Puppet => 'ಘೋಷಣಾತ್ಮಕ ಮ್ಯಾನಿಫೆಸ್ಟ್‌ಗಳನ್ನು ಬಳಸುವ ಕಾನ್ಫಿಗರೇಶನ್ ನಿರ್ವಹಣಾ ಸಾಧನ.';

  @override
  String get gameHintWord319Airflow => 'ವರ್ಕ್‌ಫ್ಲೋ DAG ಗಳನ್ನು ನಿಗದಿಪಡಿಸಿ ಆರ್ಕೆಸ್ಟ್ರೇಟ್ ಮಾಡುವ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord320Argo => 'GitOps ವಿತರಣಾ ನಿಯಂತ್ರಕವನ್ನು ಒಳಗೊಂಡ ಕ್ಲೌಡ್-ನೇಟಿವ್ ಯೋಜನಾ ಕುಟುಂಬ.';

  @override
  String get gameHintWord321Rds => 'AWS ನಿರ್ವಹಿತ ರಿಲೇಶನಲ್ ಡೇಟಾಬೇಸ್ ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord322Sqs => 'AWS ನಿರ್ವಹಿತ ಸಂದೇಶ ಸರದಿಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord323Sns => 'AWS ಪಬ್ಲಿಷ್-ಸಬ್‌ಸ್ಕ್ರೈಬ್ ಅಧಿಸೂಚನೆ ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord324Ses => 'AWS ಇಮೇಲ್ ಕಳುಹಿಸುವ ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord325Iam => 'ಕ್ಲೌಡ್ ಗುರುತು ಮತ್ತು ಪ್ರವೇಶ ನಿರ್ವಹಣೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord326Kms => 'AWS ಎನ್‌ಕ್ರಿಪ್ಷನ್ ಕೀ ನಿರ್ವಹಣಾ ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord327Waf => 'ಅಪ್ಲಿಕೇಶನ್-ಲೇಯರ್ ವೆಬ್ ವಿನಂತಿಗಳನ್ನು ಸೋಸುವ ಫೈರ್‌ವಾಲ್.';

  @override
  String get gameHintWord328Eks => 'AWS ನಿರ್ವಹಿತ Kubernetes ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord329Ecs => 'AWS ನಿರ್ವಹಿತ ಕಂಟೇನರ್ ಆರ್ಕೆಸ್ಟ್ರೇಶನ್ ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord330Ecr => 'AWS ಕಂಟೇನರ್ ಇಮೇಜ್ ರಿಜಿಸ್ಟ್ರಿಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord331Aurora => 'MySQL ಮತ್ತು PostgreSQL ಗೆ ಹೊಂದಿಕೊಳ್ಳುವ AWS ರಿಲೇಶನಲ್ ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord332Redshift => 'AWS ವಿಶ್ಲೇಷಣಾ ಡೇಟಾ ವೇರ್‌ಹೌಸ್.';

  @override
  String get gameHintWord333Neptune => 'AWS ನಿರ್ವಹಿತ ಗ್ರಾಫ್ ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord334Elasticache => 'AWS ನಿರ್ವಹಿತ ಇನ್-ಮೆಮೊರಿ ಕ್ಯಾಶಿಂಗ್ ಸೇವೆ.';

  @override
  String get gameHintWord335Athena => 'SQL ಬಳಸಿ ಆಬ್ಜೆಕ್ಟ್-ಸಂಗ್ರಹಣೆ ಡೇಟಾವನ್ನು ಪ್ರಶ್ನಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord336Glue => 'AWS ಸರ್ವರ್‌ಲೆಸ್ ಡೇಟಾ ಇಂಟಿಗ್ರೇಶನ್ ಮತ್ತು ETL ಸೇವೆ.';

  @override
  String get gameHintWord337Emr => 'ನಿರ್ವಹಿತ ಬಿಗ್-ಡೇಟಾ ಸಂಸ್ಕರಣಾ ಕ್ಲಸ್ಟರ್‌ಗಳಿಗಾಗಿ AWS ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord338Lambda => 'ಸರ್ವರ್‌ಗಳನ್ನು ನಿರ್ವಹಿಸದೆ ಫಂಕ್ಷನ್‌ಗಳನ್ನು ಚಲಾಯಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord339Cloudfront => 'AWS ಜಾಗತಿಕ ವಿಷಯ ವಿತರಣಾ ನೆಟ್‌ವರ್ಕ್.';

  @override
  String get gameHintWord340Cloudwatch => 'ಮೆಟ್ರಿಕ್‌ಗಳು, ಲಾಗ್‌ಗಳು ಮತ್ತು ಅಲಾರಂಗಳನ್ನು ಸಂಗ್ರಹಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord341Cloudshell => 'AWS ಬ್ರೌಸರ್-ಆಧಾರಿತ ಶೆಲ್ ಪರಿಸರ.';

  @override
  String get gameHintWord342Codecommit => 'AWS ನಿರ್ವಹಿತ Git ರೆಪೊಸಿಟರಿ ಸೇವೆ.';

  @override
  String get gameHintWord343Codebuild => 'ಸೋರ್ಸ್ ಕಂಪೈಲ್ ಮಾಡಿ ಬಿಲ್ಡ್ ಪರೀಕ್ಷೆಗಳನ್ನು ಚಲಾಯಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord344Codedeploy => 'AWS ಸ್ವಯಂಚಾಲಿತ ಅಪ್ಲಿಕೇಶನ್ ನಿಯೋಜನೆ ಸೇವೆ.';

  @override
  String get gameHintWord345Codepipeline => 'AWS ನಿರಂತರ ವಿತರಣಾ ಪೈಪ್‌ಲೈನ್ ಸೇವೆ.';

  @override
  String get gameHintWord346Guardduty => 'AWS ಬುದ್ಧಿವಂತ ಬೆದರಿಕೆ ಪತ್ತೆ ಸೇವೆ.';

  @override
  String get gameHintWord347Inspector => 'ದುರ್ಬಲತೆಗಳಿಗಾಗಿ ವರ್ಕ್‌ಲೋಡ್‌ಗಳನ್ನು ಮೌಲ್ಯಮಾಪನ ಮಾಡುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord348Macie => 'ಆಬ್ಜೆಕ್ಟ್ ಸಂಗ್ರಹಣೆಯಲ್ಲಿ ಸೂಕ್ಷ್ಮ ಡೇಟಾವನ್ನು ಪತ್ತೆಹಚ್ಚುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord349Shield => 'AWS ನಿರ್ವಹಿತ DDoS ರಕ್ಷಣಾ ಸೇವೆ.';

  @override
  String get gameHintWord350Snowball => 'ದೊಡ್ಡ ಡೇಟಾ ವರ್ಗಾವಣೆಗಾಗಿ AWS ಭೌತಿಕ ಸಾಧನ.';

  @override
  String get gameHintWord351Snowcone => 'AWS ಆಫ್‌ಲೈನ್ ವರ್ಗಾವಣೆ ಕುಟುಂಬದ ಸಣ್ಣ ಒರಟು ಸಾಧನ.';

  @override
  String get gameHintWord352Datasync => 'AWS ಸ್ವಯಂಚಾಲಿತ ಆನ್‌ಲೈನ್ ಡೇಟಾ ವರ್ಗಾವಣೆ ಸೇವೆ.';

  @override
  String get gameHintWord353Msk => 'AWS ನಿರ್ವಹಿತ Apache Kafka ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord354Backup => 'ಚೇತರಿಕೆಗಾಗಿ ಉಳಿಸಿಟ್ಟ ಡೇಟಾದ ನಕಲು.';

  @override
  String get gameHintWord355Transcribe => 'ಮಾತನ್ನು ಪಠ್ಯವಾಗಿ ಪರಿವರ್ತಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord356Translate => 'ಭಾಷೆಗಳ ನಡುವೆ ಪಠ್ಯವನ್ನು ಅನುವಾದಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord357Rekognition => 'ಚಿತ್ರಗಳು ಮತ್ತು ವೀಡಿಯೊವನ್ನು ವಿಶ್ಲೇಷಿಸುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord358Comprehend => 'AWS ನೈಸರ್ಗಿಕ-ಭಾಷಾ ವಿಶ್ಲೇಷಣಾ ಸೇವೆ.';

  @override
  String get gameHintWord359Textract => 'ದಾಖಲೆಗಳಿಂದ ಪಠ್ಯ ಮತ್ತು ಕೋಷ್ಟಕಗಳನ್ನು ಹೊರತೆಗೆಯುವ AWS ಸೇವೆ.';

  @override
  String get gameHintWord360Sagemaker => 'ಮೆಷಿನ್ ಲರ್ನಿಂಗ್ ಮಾದರಿಗಳನ್ನು ನಿರ್ಮಿಸಿ ನಿಯೋಜಿಸಲು AWS ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud ನ ಜಾಗತಿಕವಾಗಿ ವಿತರಿತ ರಿಲೇಶನಲ್ ಡೇಟಾಬೇಸ್.';

  @override
  String get gameHintWord362Pub => 'ಪಬ್ಲಿಷ್-ಸಬ್‌ಸ್ಕ್ರೈಬ್ ಸಂದೇಶ ಮಾದರಿಯ ಪ್ರಕಟಿಸುವ ಅರ್ಧ.';

  @override
  String get gameHintWord363Sub => 'ಪಬ್ಲಿಷ್-ಸಬ್‌ಸ್ಕ್ರೈಬ್ ಸಂದೇಶ ಮಾದರಿಯ ಚಂದಾದಾರರ ಅರ್ಧ.';

  @override
  String get gameHintWord364Functions => 'ಸರ್ವರ್‌ಲೆಸ್ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್‌ಗಳು ನೀಡುವ ಘಟನೆ-ಚಾಲಿತ ಕೋಡ್ ಘಟಕಗಳು.';

  @override
  String get gameHintWord365App => 'ಸಾಫ್ಟ್‌ವೇರ್ ಅಪ್ಲಿಕೇಶನ್‌ನ ಸಂಕ್ಷಿಪ್ತ ರೂಪ.';

  @override
  String get gameHintWord366Engine => 'Compute Engine ನಂತಹ ಹೆಸರುಗಳಲ್ಲಿನ ಕಾರ್ಯಗತಗೊಳಿಸುವ ಘಟಕ.';

  @override
  String get gameHintWord367Compute => 'ವರ್ಚುವಲ್ ಯಂತ್ರಗಳು ಅಥವಾ ಕಂಟೇನರ್‌ಗಳು ಒದಗಿಸುವ ಸಂಸ್ಕರಣಾ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord368Network => 'ಡೇಟಾ ವಿನಿಮಯ ಮಾಡುವ ಸಂಪರ್ಕಿತ ವ್ಯವಸ್ಥೆಗಳು.';

  @override
  String get gameHintWord369Security => 'ಬೆದರಿಕೆಗಳಿಂದ ವ್ಯವಸ್ಥೆಗಳು ಮತ್ತು ಮಾಹಿತಿಯ ರಕ್ಷಣೆ.';

  @override
  String get gameHintWord370Identity => 'ಪ್ರವೇಶ ನಿರ್ಧಾರಗಳಿಗೆ ಬಳಸುವ ಬಳಕೆದಾರ ಅಥವಾ ಸೇವೆಯ ಪ್ರತಿನಿಧಿತ್ವ.';

  @override
  String get gameHintWord371Monitoring => 'ವ್ಯವಸ್ಥೆಯ ಆರೋಗ್ಯ ಮತ್ತು ವರ್ತನೆಯ ನಿರಂತರ ವೀಕ್ಷಣೆ.';

  @override
  String get gameHintWord372Logging => 'ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಸಿಸ್ಟಮ್ ಘಟನೆಗಳನ್ನು ಪ್ರತ್ಯೇಕವಾಗಿ ದಾಖಲಿಸುವುದು.';

  @override
  String get gameHintWord373Trace => 'ಸೇವಾ ಕರೆಗಳಾದ್ಯಂತ ವಿನಂತಿಯ ಮಾರ್ಗದ ದಾಖಲೆ.';

  @override
  String get gameHintWord374Metrics => 'ಕಾಲಾನಂತರ ವ್ಯವಸ್ಥೆಯ ವರ್ತನೆಯ ಸಂಖ್ಯಾತ್ಮಕ ಅಳತೆಗಳು.';

  @override
  String get gameHintWord375Alert => 'ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡುವ ಸ್ಥಿತಿಗೆ ಗಮನ ಬೇಕೆಂದು ತಿಳಿಸುವ ಅಧಿಸೂಚನೆ.';

  @override
  String get gameHintWord376Billing => 'ಬಳಸಿದ ಕ್ಲೌಡ್ ಸೇವೆಗಳ ಟ್ರ್ಯಾಕಿಂಗ್ ಮತ್ತು ಶುಲ್ಕ ವಿಧಿಸುವುದು.';

  @override
  String get gameHintWord377Quota => 'ಬಳಸಬಹುದಾದ ಸಂಪನ್ಮೂಲದ ಪ್ರಮಾಣದ ಮಿತಿ.';

  @override
  String get gameHintWord378Region => 'ಲಭ್ಯತಾ ವಲಯಗಳನ್ನು ಒಳಗೊಂಡ ಭೌಗೋಳಿಕ ಕ್ಲೌಡ್ ನಿಯೋಜನಾ ಪ್ರದೇಶ.';

  @override
  String get gameHintWord379Tenancy => 'ಗ್ರಾಹಕರು ಮೂಲಸೌಕರ್ಯವನ್ನು ಹೇಗೆ ಹಂಚಿಕೊಳ್ಳುತ್ತಾರೆ ಎಂದು ವಿವರಿಸುವ ವ್ಯವಸ್ಥೆ.';

  @override
  String get gameHintWord380Regional => 'ಕ್ಲೌಡ್ ಪ್ರದೇಶಕ್ಕೆ ಸೀಮಿತವಾದ ಸಂಪನ್ಮೂಲವನ್ನು ವಿವರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord381Cosmos => 'Azure ನ ಜಾಗತಿಕವಾಗಿ ವಿತರಿತ ಬಹು-ಮಾದರಿ ಡೇಟಾಬೇಸ್‌ನ ಹೆಸರು.';

  @override
  String get gameHintWord382Synapse => 'ವೇರ್‌ಹೌಸಿಂಗ್ ಮತ್ತು ಡೇಟಾ ಸಂಸ್ಕರಣೆಯನ್ನು ಸಂಯೋಜಿಸುವ Azure ವಿಶ್ಲೇಷಣಾ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft ಕ್ಲೌಡ್-ನೇಟಿವ್ ಭದ್ರತಾ ಮಾಹಿತಿ ಮತ್ತು ಘಟನೆ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್.';

  @override
  String get gameHintWord384Defender => 'ಕ್ಲೌಡ್ ವರ್ಕ್‌ಲೋಡ್‌ಗಳನ್ನು ರಕ್ಷಿಸುವ Microsoft ಭದ್ರತಾ ಉತ್ಪನ್ನ ಕುಟುಂಬ.';

  @override
  String get gameHintWord385Entra => 'Azure AD ಬ್ರ್ಯಾಂಡಿಂಗ್ ಅನ್ನು ಬದಲಿಸುವ Microsoft ಗುರುತು ಉತ್ಪನ್ನ ಕುಟುಂಬ.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager ನ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord387Arc => 'Azure ಹೊರಗಿನ ಸಂಪನ್ಮೂಲಗಳಿಗೆ ನಿರ್ವಹಣೆಯನ್ನು ವಿಸ್ತರಿಸುವ Azure ಸೇವೆ.';

  @override
  String get gameHintWord388Aks => 'Azure ನಿರ್ವಹಿತ Kubernetes ಸೇವೆಯ ಸಂಕ್ಷೇಪಣ.';

  @override
  String get gameHintWord389Armor => 'Google Cloud ವೆಬ್ ರಕ್ಷಣಾ ಸೇವೆಯ ಹೆಸರಿನ ಪ್ರತ್ಯಯ.';

  @override
  String get gameHintWord390Blob => 'Azure ಆಬ್ಜೆಕ್ಟ್-ಸಂಗ್ರಹಣೆ ಡೇಟಾ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord391Files => 'ನಿರ್ವಹಿತ ನೆಟ್‌ವರ್ಕ್ ಫೈಲ್ ಶೇರ್‌ಗಳನ್ನು ನೀಡುವ Azure ಸೇವೆ.';

  @override
  String get gameHintWord392Disk => 'ವರ್ಚುವಲ್ ಯಂತ್ರಕ್ಕೆ ಜೋಡಿಸಿದ ಬ್ಲಾಕ್-ಸಂಗ್ರಹಣೆ ಸಾಧನ.';

  @override
  String get gameHintWord393Function => 'ಫಲಿತಾಂಶವನ್ನು ಹಿಂದಿರುಗಿಸಬಲ್ಲ, ಕರೆಯಬಹುದಾದ ಕೋಡ್ ಬ್ಲಾಕ್.';

  @override
  String get gameHintWord394Logic => 'ವರ್ಕ್‌ಫ್ಲೋ ಇಂಟಿಗ್ರೇಶನ್‌ಗಾಗಿ Azure ಆ್ಯಪ್ ಸೇವಾ ವರ್ಗ.';

  @override
  String get gameHintWord395Insights => 'Azure ಅಪ್ಲಿಕೇಶನ್ ಟೆಲಿಮೆಟ್ರಿ ಉತ್ಪನ್ನದ ಹೆಸರಿನ ಪ್ರತ್ಯಯ.';

  @override
  String get gameHintWord396Traffic => 'ನೆಟ್‌ವರ್ಕ್ ಅಂತಿಮ ಬಿಂದುಗಳ ನಡುವೆ ಹರಿಯುವ ಡೇಟಾ.';

  @override
  String get gameHintWord397Manager => 'Azure Resource ನ ನಿಯಂತ್ರಣ ಸಮತಲಕ್ಕೆ ಉತ್ಪನ್ನ ಹೆಸರಿನ ಪ್ರತ್ಯಯ.';

  @override
  String get gameHintWord398Bastion => 'ಖಾಸಗಿ ಹೋಸ್ಟ್ ಪ್ರವೇಶಕ್ಕಾಗಿ ನಿರ್ವಹಿತ ಅಥವಾ ಗಟ್ಟಿಗೊಳಿಸಿದ ಪ್ರವೇಶ ಬಿಂದು.';

  @override
  String get gameHintWord399Front => 'Azure ಜಾಗತಿಕ ಪ್ರವೇಶ-ಬಿಂದು ಸೇವೆ Front Door ನ ಮೊದಲ ಪದ.';

  @override
  String get gameHintWord400Door => 'Azure ಜಾಗತಿಕ ಪ್ರವೇಶ-ಬಿಂದು ಸೇವೆ Front Door ನ ಎರಡನೇ ಪದ.';

  @override
  String get gameHintWord401Javascript => 'ಬ್ರೌಸರ್‌ಗಳು ಮತ್ತು Node ರನ್‌ಟೈಮ್‌ಗಳಲ್ಲಿ ವ್ಯಾಪಕವಾಗಿ ಬಳಸುವ ಪ್ರೋಗ್ರಾಮಿಂಗ್ ಭಾಷೆ.';

  @override
  String get gameHintWord402Perl => 'ಪಠ್ಯ ಸಂಸ್ಕರಣೆ ಮತ್ತು ರೆಗ್ಯುಲರ್ ಎಕ್ಸ್‌ಪ್ರೆಶನ್‌ಗಳಿಗೆ ಹೆಸರಾದ ಸ್ಕ್ರಿಪ್ಟಿಂಗ್ ಭಾಷೆ.';

  @override
  String get gameHintWord403Powershell => 'Microsoft ನ ವಸ್ತು-ಆಧಾರಿತ ಶೆಲ್ ಮತ್ತು ಸ್ವಯಂಚಾಲನೆ ಭಾಷೆ.';

  @override
  String get gameHintWord404Java => 'Jenkins ಅನ್ನು ಅನುಷ್ಠಾನಗೊಳಿಸಲು ಬಳಸಿದ JVM ಭಾಷೆ.';

  @override
  String get gameHintWord405Json => 'ಆಬ್ಜೆಕ್ಟ್‌ಗಳು ಮತ್ತು ಅರೇಗಳನ್ನು ಹೊಂದಿರುವ ಹಗುರ ಡೇಟಾ ಸ್ವರೂಪ.';

  @override
  String get gameHintWord406Xml => 'ಒಳಗೊಂಡ ಹೆಸರಿನ ಟ್ಯಾಗ್‌ಗಳನ್ನು ಬಳಸುವ ಮಾರ್ಕಪ್ ಸ್ವರೂಪ.';

  @override
  String get gameHintWord407Html => 'ವೆಬ್ ಪುಟಗಳನ್ನು ರಚಿಸಲು ಬಳಸುವ ಮಾರ್ಕಪ್ ಭಾಷೆ.';

  @override
  String get gameHintWord408Css => 'ವೆಬ್ ಪ್ರಸ್ತುತಿಯನ್ನು ನಿಯಂತ್ರಿಸುವ ಸ್ಟೈಲ್‌ಶೀಟ್ ಭಾಷೆ.';

  @override
  String get gameHintWord409String => 'ಪಠ್ಯ ಅಕ್ಷರಗಳ ಅನುಕ್ರಮ.';

  @override
  String get gameHintWord410Array => 'ಇಂಡೆಕ್ಸ್ ಮಾಡಿದ ಅಂಶಗಳ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord411Hash => 'Ruby ಮತ್ತು Perl ನಲ್ಲಿನ ಸಹಯೋಜಿತ ಕೀ-ವ್ಯಾಲ್ಯೂ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord412Object => 'ಗುಣಗಳು ಮತ್ತು ವರ್ತನೆ ಹೊಂದಿರುವ ರನ್‌ಟೈಮ್ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord413Class => 'ಕ್ಲಾಸ್-ಆಧಾರಿತ ಭಾಷೆಗಳಲ್ಲಿ ಆಬ್ಜೆಕ್ಟ್‌ಗಳನ್ನು ರಚಿಸಲು ಬಳಸುವ ವ್ಯಾಖ್ಯಾನ.';

  @override
  String get gameHintWord414Method => 'ಆಬ್ಜೆಕ್ಟ್ ಅಥವಾ ಕ್ಲಾಸ್‌ಗೆ ಸಂಬಂಧಿಸಿದ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord415Interface => 'ಘಟಕವು ತೆರೆದಿಡುವ ಕಾರ್ಯಾಚರಣೆಗಳನ್ನು ವಿವರಿಸುವ ಒಪ್ಪಂದ.';

  @override
  String get gameHintWord416Subclass => 'ಇನ್ನೊಂದು ಕ್ಲಾಸ್‌ನಿಂದ ಪಡೆದ ಕ್ಲಾಸ್.';

  @override
  String get gameHintWord417Super => 'ಪೇರೆಂಟ್-ಕ್ಲಾಸ್ ವರ್ತನೆಯನ್ನು ಆಹ್ವಾನಿಸಲು ಬಳಸುವ ಕೀವರ್ಡ್.';

  @override
  String get gameHintWord418Protected => 'ಪ್ರವೇಶವನ್ನು ಕ್ಲಾಸ್-ಸಂಬಂಧಿತ ಸಂದರ್ಭಗಳಿಗೆ ಮಿತಿಗೊಳಿಸುವ ಗೋಚರತೆ ಮಟ್ಟ.';

  @override
  String get gameHintWord419Exception => 'ಸಾಮಾನ್ಯ ನಿಯಂತ್ರಣ ಹರಿವನ್ನು ಅಡ್ಡಿಪಡಿಸುವ ರನ್‌ಟೈಮ್ ಸ್ಥಿತಿ.';

  @override
  String get gameHintWord420Regex => 'ಪಠ್ಯವನ್ನು ಹೊಂದಿಸಲು ಬಳಸುವ ಮಾದರಿ ಸಂಕೇತ.';

  @override
  String get gameHintWord421Lexical => 'ಸೋರ್ಸ್-ಕೋಡ್ ರಚನೆಯಿಂದ ನಿರ್ಧರಿತವಾದ ವ್ಯಾಪ್ತಿಯನ್ನು ವಿವರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord422Scalar => 'Perl ನಲ್ಲಿನ ಏಕ-ಮೌಲ್ಯದ ವೇರಿಯಬಲ್ ವರ್ಗ.';

  @override
  String get gameHintWord423Tuple => 'Python ನಲ್ಲಿನ ಬದಲಾಯಿಸಲಾಗದ ಕ್ರಮಬದ್ಧ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord424List => 'Python ನಲ್ಲಿನ ಬದಲಾಯಿಸಬಹುದಾದ ಕ್ರಮಬದ್ಧ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord425Dict => 'Python ನ ಅಂತರ್ನಿರ್ಮಿತ ಮ್ಯಾಪಿಂಗ್ ಪ್ರಕಾರದ ಹೆಸರು.';

  @override
  String get gameHintWord426Dictionary => 'ಕೀಗಳನ್ನು ಸಂಬಂಧಿತ ಮೌಲ್ಯಗಳಿಗೆ ಮ್ಯಾಪ್ ಮಾಡುವ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord427Set => 'ವಿಭಿನ್ನ ಮೌಲ್ಯಗಳ ಸಂಗ್ರಹ.';

  @override
  String get gameHintWord428Boolean => 'ಸರಿ ಅಥವಾ ತಪ್ಪನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಡೇಟಾ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord429Integer => 'ಪೂರ್ಣ ಸಂಖ್ಯೆಗಳನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಸಂಖ್ಯಾ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord430Float => 'ಫ್ಲೋಟಿಂಗ್-ಪಾಯಿಂಟ್ ಮೌಲ್ಯಗಳನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಸಂಖ್ಯಾ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord431Double => 'ದ್ವಿಗುಣ-ನಿಖರತೆಯ ಫ್ಲೋಟಿಂಗ್-ಪಾಯಿಂಟ್ ಪ್ರಕಾರ.';

  @override
  String get gameHintWord432Null => 'ಆಬ್ಜೆಕ್ಟ್ ಅಥವಾ ಫಲಿತಾಂಶದ ಅನುಪಸ್ಥಿತಿಯನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord433Undefined => 'ನಿಗದಿಪಡಿಸದ ಮೌಲ್ಯಕ್ಕಾಗಿ JavaScript ಮೌಲ್ಯ.';

  @override
  String get gameHintWord434Promise => 'ಅಂತಿಮವಾಗಿ ಬರುವ ಅಸಿಂಕ್ರೋನಸ್ ಫಲಿತಾಂಶವನ್ನು ಪ್ರತಿನಿಧಿಸುವ JavaScript ಆಬ್ಜೆಕ್ಟ್.';

  @override
  String get gameHintWord435Async => 'ಅಸಿಂಕ್ರೋನಸ್ ಫಂಕ್ಷನ್ ಅನ್ನು ಗುರುತಿಸುವ ಕೀವರ್ಡ್.';

  @override
  String get gameHintWord436Await => 'ಅಸಿಂಕ್ರೋನಸ್ ಫಲಿತಾಂಶಕ್ಕಾಗಿ ಕಾಯುವ ಕೀವರ್ಡ್.';

  @override
  String get gameHintWord437Callback => 'ಇನ್ನೊಂದು ಕಾರ್ಯಾಚರಣೆಯಿಂದ ಆಹ್ವಾನಿಸಲು ನೀಡುವ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord438Closure => 'ತನ್ನ ಸುತ್ತಲಿನ ಲೆಕ್ಸಿಕಲ್ ವ್ಯಾಪ್ತಿಗೆ ಪ್ರವೇಶ ಉಳಿಸಿಕೊಳ್ಳುವ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord439Generator => 'ಯೀಲ್ಡ್ ಮಾಡಿದ ಮೌಲ್ಯಗಳ ಮೂಲಕ ಅನುಕ್ರಮವನ್ನು ಸೋಮಾರಿಯಾಗಿ ಉತ್ಪಾದಿಸುವ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord440Iterator => 'ಸಂಗ್ರಹದ ಮೌಲ್ಯಗಳ ಮೂಲಕ ಮುಂದುವರಿಯುವ ಆಬ್ಜೆಕ್ಟ್.';

  @override
  String get gameHintWord441Print => 'ಮೌಲ್ಯವನ್ನು ಔಟ್‌ಪುಟ್‌ಗೆ ಬರೆಯುವ ಸಾಮಾನ್ಯ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord442Input => 'ಸ್ಟ್ಯಾಂಡರ್ಡ್ ಇನ್‌ಪುಟ್‌ನಿಂದ ಒಂದು ಸಾಲನ್ನು ಓದುವ Python ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord443Open => 'ಫೈಲ್ ಹ್ಯಾಂಡಲ್ ಪಡೆಯಲು ಬಳಸುವ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord444Close => 'ತೆರೆದ ಫೈಲ್ ಅಥವಾ ಸಂಪರ್ಕವನ್ನು ಬಿಡುಗಡೆ ಮಾಡುವ ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord445Read => 'ಸ್ಟ್ರೀಮ್ ಅಥವಾ ಫೈಲ್‌ನಿಂದ ಡೇಟಾ ಪಡೆಯುವ ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord446Write => 'ಸ್ಟ್ರೀಮ್ ಅಥವಾ ಫೈಲ್‌ಗೆ ಡೇಟಾ ಕಳುಹಿಸುವ ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord447Append => 'ಸಂಗ್ರಹದ ಕೊನೆಗೆ ಐಟಂ ಸೇರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord448Split => 'ಡಿಲಿಮಿಟರ್ ಬಳಸಿ ಪಠ್ಯವನ್ನು ಉಪಸ್ಟ್ರಿಂಗ್‌ಗಳಾಗಿ ವಿಭಜಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord449Join => 'ವಿಭಾಜಕ ಬಳಸಿ ಸ್ಟ್ರಿಂಗ್‌ಗಳ ಅನುಕ್ರಮವನ್ನು ಸೇರಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord450Strip => 'Python ಸ್ಟ್ರಿಂಗ್‌ನ ಸುತ್ತಲಿನ ಖಾಲಿ ಜಾಗವನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get gameHintWord451Chomp => 'Perl ಅಥವಾ Ruby ನಲ್ಲಿ ಕೊನೆಯ ರೆಕಾರ್ಡ್ ವಿಭಾಜಕವನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ.';

  @override
  String get gameHintWord452Map => 'ಸಂಗ್ರಹದ ಪ್ರತಿ ಐಟಂಗೆ ರೂಪಾಂತರವನ್ನು ಅನ್ವಯಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord453Filter => 'ಷರತ್ತನ್ನು ಪೂರೈಸುವ ಸಂಗ್ರಹ ಐಟಂಗಳನ್ನು ಉಳಿಸಿಕೊಳ್ಳುತ್ತದೆ.';

  @override
  String get gameHintWord454Reduce => 'ಸಂಗ್ರಹವನ್ನು ಒಟ್ಟುಗೂಡಿದ ಫಲಿತಾಂಶವಾಗಿ ಸಂಯೋಜಿಸುತ್ತದೆ.';

  @override
  String get gameHintWord455Range => 'ಪೂರ್ಣಾಂಕಗಳ ಅಂಕಗಣಿತ ಅನುಕ್ರಮವನ್ನು ಪ್ರತಿನಿಧಿಸುವ Python ಪ್ರಕಾರ.';

  @override
  String get gameHintWord456Length => 'ಸಂಗ್ರಹದ ಗಾತ್ರವನ್ನು ಹಿಂದಿರುಗಿಸುವ ಗುಣ ಅಥವಾ ವಿಧಾನ.';

  @override
  String get gameHintWord457Len => 'ಸಂಗ್ರಹದ ಗಾತ್ರವನ್ನು ಹಿಂದಿರುಗಿಸುವ Python ಅಂತರ್ನಿರ್ಮಿತ ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord458Type => 'ಆಬ್ಜೆಕ್ಟ್ ಪ್ರಕಾರವನ್ನು ಹಿಂದಿರುಗಿಸುವ Python ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord459Isinstance => 'ಪ್ರಕಾರ ಕ್ರಮಾನುಗತದಲ್ಲಿನ ಸದಸ್ಯತ್ವವನ್ನು ಪರಿಶೀಲಿಸುವ Python ಫಂಕ್ಷನ್.';

  @override
  String get gameHintWord460Yield => 'ಜನರೇಟರ್‌ನಿಂದ ಮೌಲ್ಯವನ್ನು ಉತ್ಪಾದಿಸುವ ಕೀವರ್ಡ್.';

  @override
  String get gameHintWord461Saas => 'ಸಂಪೂರ್ಣ ಸಾಫ್ಟ್‌ವೇರ್ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು ತಲುಪಿಸುವ ಕ್ಲೌಡ್ ಮಾದರಿ.';

  @override
  String get gameHintWord462Paas => 'ನಿರ್ವಹಿತ ಅಪ್ಲಿಕೇಶನ್ ಅಭಿವೃದ್ಧಿ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್ ಒದಗಿಸುವ ಕ್ಲೌಡ್ ಮಾದರಿ.';

  @override
  String get gameHintWord463Iaas => 'ವರ್ಚುವಲ್ ಕಂಪ್ಯೂಟ್, ಸಂಗ್ರಹಣೆ ಮತ್ತು ನೆಟ್‌ವರ್ಕಿಂಗ್ ಒದಗಿಸುವ ಕ್ಲೌಡ್ ಮಾದರಿ.';

  @override
  String get gameHintWord464Hybrid => 'ಖಾಸಗಿ ಮತ್ತು ಸಾರ್ವಜನಿಕ ಮೂಲಸೌಕರ್ಯವನ್ನು ಸಂಯೋಜಿಸುವ ಕ್ಲೌಡ್ ವಿಧಾನ.';

  @override
  String get gameHintWord465Archive => 'ವಿರಳವಾಗಿ ಬಳಸುವ ಡೇಟಾದ ದೀರ್ಘಕಾಲೀನ ಸಂಗ್ರಹಣೆ.';

  @override
  String get gameHintWord466Public => 'ಹಲವು ಗ್ರಾಹಕರಿಗೆ ಸೇವೆಗಳನ್ನು ನೀಡುವ ಕ್ಲೌಡ್ ಮಾಲೀಕತ್ವ ಮಾದರಿ.';

  @override
  String get gameHintWord467Private => 'ಒಂದೇ ಸಂಸ್ಥೆಗೆ ಮೀಸಲಾದ ಕ್ಲೌಡ್ ಮಾದರಿ.';

  @override
  String get gameHintWord468Scalability => 'ಸಂಪನ್ಮೂಲಗಳನ್ನು ಸೇರಿಸುವ ಮೂಲಕ ಹೆಚ್ಚುತ್ತಿರುವ ಹೊರೆಯನ್ನು ನಿಭಾಯಿಸುವ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord469Availability => 'ಅಗತ್ಯವಿದ್ದಾಗ ಸೇವೆ ಎಷ್ಟರ ಮಟ್ಟಿಗೆ ಪ್ರವೇಶಿಸಬಹುದಾಗಿರುತ್ತದೆ ಎಂಬ ಪ್ರಮಾಣ.';

  @override
  String get gameHintWord470Resilience => 'ವೈಫಲ್ಯಗಳನ್ನು ತಾಳಿಕೊಂಡು ಚೇತರಿಸುವ ಸಾಮರ್ಥ್ಯ.';

  @override
  String get gameHintWord471Redundancy => 'ಒಂದೇ ವೈಫಲ್ಯ ಬಿಂದುಗಳನ್ನು ಕಡಿಮೆ ಮಾಡುವ ಪುನರಾವರ್ತಿತ ಘಟಕಗಳು.';

  @override
  String get gameHintWord472Disaster => 'ಚೇತರಿಕೆ ತಂತ್ರದ ಮೂಲಕ ನಿಭಾಯಿಸುವ ದೊಡ್ಡ ಸ್ಥಗಿತ.';

  @override
  String get gameHintWord473Recovery => 'ವೈಫಲ್ಯದ ನಂತರ ಸೇವೆ ಅಥವಾ ಡೇಟಾವನ್ನು ಮರುಸ್ಥಾಪಿಸುವುದು.';

  @override
  String get gameHintWord474Replicate => 'ಡೇಟಾ ಅಥವಾ ವರ್ಕ್‌ಲೋಡ್‌ಗಳನ್ನು ಬೇರೆ ಸ್ಥಳಕ್ಕೆ ನಕಲಿಸಿ.';

  @override
  String get gameHintWord475Snapshotting => 'ಡೇಟಾ ಅಥವಾ ಸಿಸ್ಟಮ್ ಸ್ಥಿತಿಯ ನಿರ್ದಿಷ್ಟ ಕ್ಷಣದ ನಕಲುಗಳನ್ನು ತೆಗೆಯುವುದು.';

  @override
  String get gameHintWord476Restore => 'ಉಳಿಸಿದ ನಕಲಿನಿಂದ ಡೇಟಾ ಮರುಪಡೆಯುವ ಕಾರ್ಯಾಚರಣೆ.';

  @override
  String get gameHintWord477Residency => 'ಸಂಗ್ರಹಿತ ಡೇಟಾದ ಭೌಗೋಳಿಕ ಸ್ಥಳವನ್ನು ನಿರ್ಧರಿಸುವ ಅವಶ್ಯಕತೆ.';

  @override
  String get gameHintWord478Compliance => 'ಅಗತ್ಯ ನಿಯಮಾವಳಿಗಳು ಮತ್ತು ಸಾಂಸ್ಥಿಕ ನಿಯಂತ್ರಣಗಳನ್ನು ಪೂರೈಸುವುದು.';

  @override
  String get gameHintWord479Governance => 'ತಂತ್ರಜ್ಞಾನ ಬಳಕೆಯನ್ನು ನಿಯಂತ್ರಿಸುವ ನೀತಿಗಳು ಮತ್ತು ಪ್ರಕ್ರಿಯೆಗಳು.';

  @override
  String get gameHintWord480Audit => 'ದಾಖಲಾದ ಚಟುವಟಿಕೆಗಳು ಮತ್ತು ಅನುಸರಣೆ ಪುರಾವೆಗಳ ಪರಿಶೀಲನೆ.';

  @override
  String get gameHintWord481Token => 'ಅಧಿಕಾರ ಅಥವಾ ಗುರುತನ್ನು ಪ್ರತಿನಿಧಿಸುವ ಪ್ರಮಾಣಪತ್ರ ಅಥವಾ ಸಂಕೇತ.';

  @override
  String get gameHintWord482Oauth => 'ನಿಯೋಜಿತ ಪ್ರವೇಶಕ್ಕೆ ಅನುವುಮಾಡುವ ಅಧಿಕಾರ ಚೌಕಟ್ಟು.';

  @override
  String get gameHintWord483Saml => 'ಉದ್ಯಮ ಸಿಂಗಲ್ ಸೈನ್-ಆನ್‌ಗೆ ಸಾಮಾನ್ಯವಾಗಿ ಬಳಸುವ XML-ಆಧಾರಿತ ಮಾನದಂಡ.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell ಪೈಪ್‌ಲೈನ್‌ಗಳಲ್ಲಿ ಬಳಸುವ ವಿಶೇಷ ಆಜ್ಞೆ.';

  @override
  String get gameHintWord485Algorithm => 'ಗಣನಾ ಸಮಸ್ಯೆಯನ್ನು ಬಗೆಹರಿಸಲು ವ್ಯಾಖ್ಯಾನಿತ ಹಂತಗಳ ಅನುಕ್ರಮ.';

  @override
  String get gameHintWord486Key => 'ಎನ್‌ಕ್ರಿಪ್ಷನ್ ನಿಯಂತ್ರಿಸಲು ಅಥವಾ ಸಂಗ್ರಹಿತ ಡೇಟಾ ಗುರುತಿಸಲು ಬಳಸುವ ಮೌಲ್ಯ.';

  @override
  String get gameHintWord487Alias => 'ಶೆಲ್ ಆಜ್ಞೆ ಅಥವಾ ಸಂಪನ್ಮೂಲಕ್ಕೆ ಪರ್ಯಾಯ ಹೆಸರು.';

  @override
  String get gameHintWord488Amend => 'ಇತ್ತೀಚಿನ ಕಮಿಟ್ ಅನ್ನು ಬದಲಿಸುವ Git ಕಮಿಟ್ ಆಯ್ಕೆ.';

  @override
  String get gameHintWord489Allsigned => 'ಸಹಿ ಮಾಡಿದ ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳನ್ನು ಅಗತ್ಯವಾಗಿಸುವ PowerShell ಕಾರ್ಯಗತಗೊಳಿಸುವ ನೀತಿ.';

  @override
  String get gameHintWord490Remotesigned => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳಿಗೆ ಸಹಿ ಅಗತ್ಯವಾಗಿಸುವ PowerShell ನೀತಿ.';

  @override
  String get gameHintWord491Acl => 'ಬಳಕೆದಾರರು ಅಥವಾ ವ್ಯವಸ್ಥೆಗಳ ಅನುಮತಿಗಳನ್ನು ವ್ಯಾಖ್ಯಾನಿಸುವ ಪಟ್ಟಿ.';

  @override
  String get gameHintWord492Uid => 'Unix ಬಳಕೆದಾರರಿಗೆ ನಿಯೋಜಿಸಿದ ಸಂಖ್ಯಾತ್ಮಕ ಗುರುತಿಸುವಿಕೆ.';

  @override
  String get gameHintWord493Setgid => 'ಕಾರ್ಯಗತಗೊಳಿಸುವಾಗ ಅಥವಾ ಉತ್ತರಾಧಿಕಾರದಲ್ಲಿ ಗುಂಪಿನ ಗುರುತಿನ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರುವ ಅನುಮತಿ ಬಿಟ್.';

  @override
  String get gameHintWord494Setfacl => 'ಫೈಲ್ ಪ್ರವೇಶ ನಿಯಂತ್ರಣ ಪಟ್ಟಿಗಳನ್ನು ಹೊಂದಿಸುವ Linux ಆಜ್ಞೆ.';

  @override
  String get gameHintWord495Isolation => 'ವರ್ಕ್‌ಲೋಡ್‌ಗಳು ಪರಸ್ಪರ ಹಸ್ತಕ್ಷೇಪ ಮಾಡದಂತೆ ತಡೆಯುವ ಪ್ರತ್ಯೇಕತೆ.';

  @override
  String get gameHintWord496Sighup => 'ಕಾನ್ಫಿಗರೇಶನ್ ಮರುಲೋಡ್ ಕೋರಲು ಹೆಚ್ಚಾಗಿ ಬಳಸುವ Unix ಹ್ಯಾಂಗಪ್ ಸಿಗ್ನಲ್.';

  @override
  String get gameHintWord497Sigint => 'ಸಾಮಾನ್ಯವಾಗಿ Control-C ಮೂಲಕ ಉತ್ಪತ್ತಿಯಾಗುವ Unix ಅಡಚಣೆ ಸಿಗ್ನಲ್.';

  @override
  String get gameHintWord498Sigstop => 'ಪ್ರಕ್ರಿಯೆಯನ್ನು ಕೊನೆಗೊಳಿಸದೆ ವಿರಾಮಗೊಳಿಸುವ Unix ಸಿಗ್ನಲ್.';

  @override
  String get gameHintWord499Secrets => 'ಗುಪ್ತಪದಗಳು ಮತ್ತು ಪ್ರವೇಶ ಕೀಗಳಂತಹ ಸೂಕ್ಷ್ಮ ಮೌಲ್ಯಗಳು.';

  @override
  String get gameHintWord500Secure => 'ಅನಧಿಕೃತ ಪ್ರವೇಶದಿಂದ ರಕ್ಷಿತವಾದ ಸಂಪರ್ಕವನ್ನು ವಿವರಿಸುತ್ತದೆ.';

  @override
  String get fontSettingsTitle => 'ಫಾಂಟ್';

  @override
  String get fontChangeFont => 'ಫಾಂಟ್ ಬದಲಾಯಿಸಿ';

  @override
  String get fontSystemDefault => 'ಸಿಸ್ಟಮ್ ಡೀಫಾಲ್ಟ್';

  @override
  String get fontPreview => 'ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get fontPreviewSample => 'ಒಂದೊಂದೇ ಪ್ರಶ್ನೆಯ ಮೂಲಕ DevOps ಕಲಿಯಿರಿ';

  @override
  String get fontSelected => 'ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get fontLatinOnlyNote => 'ಕಸ್ಟಮ್ ಫಾಂಟ್‌ಗಳು ಲ್ಯಾಟಿನ್ ಅಕ್ಷರಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತವೆ. ಇತರ ಲಿಪಿಗಳು ನಿಮ್ಮ ಸಾಧನದ ಫಾಂಟ್‌ನಲ್ಲೇ ಇರುತ್ತವೆ.';

  @override
  String get fontDescSystem => 'ನಿಮ್ಮ ಸಾಧನದ ಅಂತರ್ನಿರ್ಮಿತ ಫಾಂಟ್';

  @override
  String get fontDescGeometric => 'ಜ್ಯಾಮಿತೀಯ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್';

  @override
  String get fontDescGeometricRounded => 'ಜ್ಯಾಮಿತೀಯ ದುಂಡಾದ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್';

  @override
  String get fontDescFriendly => 'ಸ್ನೇಹಪರ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್';

  @override
  String get fontDescCondensed => 'ಸಂಕುಚಿತ';

  @override
  String get fontDescRounded => 'ದುಂಡಾದ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್';

  @override
  String get fontDescRoundedDisplay => 'ದುಂಡಾದ ಡಿಸ್‌ಪ್ಲೇ';

  @override
  String gameScene3dScene(String value1) {
    return '3D ದೃಶ್ಯ $value1';
  }
}
