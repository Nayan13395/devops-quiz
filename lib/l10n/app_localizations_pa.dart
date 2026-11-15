// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTour => 'ਐਪ ਦੀ ਸੈਰ';

  @override
  String get skipTour => 'ਸੈਰ ਛੱਡੋ';

  @override
  String get finishTour => 'ਸੈਰ ਪੂਰੀ ਕਰੋ';

  @override
  String tourStep(int current, int total) {
    return 'ਕਦਮ $current / $total';
  }

  @override
  String get tourMenuTitle => 'ਨੈਵੀਗੇਸ਼ਨ ਮੀਨੂ';

  @override
  String get tourSearch => 'ਸੰਬੰਧਿਤ ਕੁਇਜ਼ ਸ਼੍ਰੇਣੀਆਂ ਲੱਭਣ ਲਈ ਇੱਥੇ ਵਿਸ਼ਾ ਲਿਖੋ।';

  @override
  String get tourCategory => 'ਮਿਸ਼ਰਤ ਕੁਇਜ਼ ਲਈ DevOps ਦਬਾਓ। ਹੋਰ ਸ਼੍ਰੇਣੀਆਂ ਵਿੱਚ ਸਵਾਲਾਂ ਦੇ ਸੈੱਟ ਹਨ। ਬਾਅਦ ਵਿੱਚ ਪੜ੍ਹਨ ਲਈ ਸਵਾਲ ਬੁੱਕਮਾਰਕ ਕਰੋ।';

  @override
  String get tourMenu => 'ਨੈਵੀਗੇਸ਼ਨ ਮੀਨੂ ਖੋਲ੍ਹਣ ਲਈ ਇਸ ਬਟਨ ਨੂੰ ਦਬਾਓ।';

  @override
  String get tourLearning => 'ਕਾਰਡਾਂ ਲਈ ਸਿੱਖਣਾ ਖੋਲ੍ਹੋ। ਕਿਸੇ ਵੀ ਦਿਸ਼ਾ ਵਿੱਚ ਸਵਾਈਪ ਕਰੋ, ਸ਼ਫਲ ਕਰੋ, ਆਟੋ-ਸਵਾਈਪ ਚਲਾਓ ਜਾਂ ਕਾਰਡ ਬੁੱਕਮਾਰਕ ਕਰੋ।';

  @override
  String get tourGames => 'ਖੇਡਾਂ ਖੇਡ ਕੇ ਅੰਕ ਕਮਾਓ। ਪੱਧਰ ਵਾਲੀਆਂ ਖੇਡਾਂ ਵਿੱਚ ਹਰ ਪੂਰਾ ਪੱਧਰ 100 ਅੰਕ ਦਿੰਦਾ ਹੈ; ਸੰਕੇਤ ਦੀ ਕੀਮਤ 20 ਅੰਕ ਹੈ।';

  @override
  String get tourAchievements => 'ਆਪਣੀਆਂ ਪ੍ਰਾਪਤੀਆਂ ਇੱਥੇ ਵੇਖੋ। ਨਵੀਆਂ ਪ੍ਰਾਪਤੀਆਂ ਅਤੇ ਉਪਲਬਧ ਥੀਮਾਂ ਪੌਪਅੱਪ ਵਿੱਚ ਦੱਸੀਆਂ ਜਾਂਦੀਆਂ ਹਨ।';

  @override
  String get tourSettings => 'ਭਾਸ਼ਾ, ਥੀਮ ਅਤੇ ਆਵਾਜ਼ ਚੁਣੋ। ਬੁੱਕਮਾਰਕ ਲਈ ਸੰਭਾਲਿਆ ਡਾਟਾ ਜਾਂ ਇਹ ਗਾਈਡ ਦੁਬਾਰਾ ਵੇਖਣ ਲਈ ਐਪ ਦੀ ਸੈਰ ਖੋਲ੍ਹੋ।';

  @override
  String get achievementUnlocked => 'ਪ੍ਰਾਪਤੀ ਅਨਲੌਕ ਹੋਈ!';

  @override
  String get themeUnlocked => 'ਨਵੀਂ ਥੀਮ ਉਪਲਬਧ ਹੈ!';

  @override
  String get themeUnlockedMessage => 'ਹੁਣ ਤੁਸੀਂ ਸੈਟਿੰਗਾਂ > ਥੀਮਾਂ ਵਿੱਚ ਇਹ ਥੀਮ ਚੁਣ ਸਕਦੇ ਹੋ।';

  @override
  String get gameSounds => 'ਖੇਡ ਦੀਆਂ ਆਵਾਜ਼ਾਂ';

  @override
  String get gameSoundsDescription => 'ਖੇਡਾਂ ਅਤੇ ਕੁਇਜ਼ ਲਈ ਧੁਨੀ ਪ੍ਰਭਾਵ। ਡਿਵਾਈਸ ਦੀ ਆਵਾਜ਼ ਅਤੇ ਸਾਈਲੈਂਟ ਮੋਡ ਜਾਂਚੋ।';

  @override
  String get testSound => 'ਆਵਾਜ਼ ਜਾਂਚੋ';

  @override
  String get soundSettingBusy => 'ਕਿਰਪਾ ਕਰਕੇ ਉਡੀਕ ਕਰੋ...';

  @override
  String get soundSettingError => 'ਆਵਾਜ਼ ਦੀ ਸੈਟਿੰਗ ਲੋਡ ਜਾਂ ਸੰਭਾਲੀ ਨਹੀਂ ਜਾ ਸਕੀ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get soundPlaybackError => 'ਆਵਾਜ਼ ਨਹੀਂ ਚੱਲ ਸਕੀ। ਡਿਵਾਈਸ ਜਾਂ ਬ੍ਰਾਊਜ਼ਰ ਦੀਆਂ ਆਡੀਓ ਸੈਟਿੰਗਾਂ ਜਾਂਚੋ।';

  @override
  String get saveData => 'ਸੰਭਾਲਿਆ ਡਾਟਾ';

  @override
  String get learningTranslationUnavailable => 'ਇਸ ਕਾਰਡ ਦਾ ਅਜੇ ਚੁਣੀ ਗਈ ਭਾਸ਼ਾ ਵਿੱਚ ਅਨੁਵਾਦ ਨਹੀਂ ਹੋਇਆ ਹੈ।';

  @override
  String get saveQuestion => 'ਸਵਾਲ ਸੰਭਾਲੋ';

  @override
  String defaultPortQuestion(String service) {
    return '$service ਦਾ ਡਿਫੌਲਟ ਪੋਰਟ ਕਿਹੜਾ ਹੈ?';
  }

  @override
  String get removeSavedItem => 'ਸੰਭਾਲੇ ਹੋਇਆਂ ਵਿੱਚੋਂ ਹਟਾਓ';

  @override
  String get noSavedData => 'ਅਜੇ ਕੁਝ ਸੰਭਾਲਿਆ ਨਹੀਂ ਹੈ। ਸਿੱਖਣ ਵਾਲੇ ਕਾਰਡ ਜਾਂ ਕੁਇਜ਼ ਦੇ ਸਵਾਲ ਬੁੱਕਮਾਰਕ ਕਰੋ।';

  @override
  String get savedDataError => 'ਸੰਭਾਲਿਆ ਡਾਟਾ ਲੋਡ ਜਾਂ ਅੱਪਡੇਟ ਨਹੀਂ ਹੋ ਸਕਿਆ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get savedItemUnavailable => 'ਇਹ ਸੰਭਾਲੀ ਚੀਜ਼ ਹੁਣ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।';

  @override
  String get correctAnswer => 'ਸਹੀ ਜਵਾਬ';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get certificates => 'ਸਰਟੀਫਿਕੇਟ';

  @override
  String get whatsNew => 'ਨਵਾਂ ਕੀ ਹੈ';

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get darkMode => 'ਡਾਰਕ ਮੋਡ';

  @override
  String get lightMode => 'ਲਾਈਟ ਮੋਡ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get selectLanguage => 'ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'ਕੁਇਜ਼ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'ਸ਼੍ਰੇਣੀ ਬਦਲੋ';

  @override
  String get dailyQuiz => 'ਰੋਜ਼ਾਨਾ ਕੁਇਜ਼';

  @override
  String get dailyQuizCompleted => 'ਰੋਜ਼ਾਨਾ ਕੁਇਜ਼ ਪੂਰੀ ਹੋਈ';

  @override
  String get dailyQuizCompletedMessage => 'ਤੁਸੀਂ ਅੱਜ ਦੀ ਰੋਜ਼ਾਨਾ ਕੁਇਜ਼ ਪੂਰੀ ਕਰ ਲਈ ਹੈ। ਨਵੀਂ ਚੁਣੌਤੀ ਲਈ ਕੱਲ੍ਹ ਆਓ!';

  @override
  String get leaderboard => 'ਲੀਡਰਬੋਰਡ';

  @override
  String get shareApp => 'ਐਪ ਸਾਂਝੀ ਕਰੋ';

  @override
  String get rateApp => 'ਐਪ ਨੂੰ ਰੇਟ ਕਰੋ';

  @override
  String get about => 'ਬਾਰੇ';

  @override
  String get ok => 'ਠੀਕ ਹੈ';

  @override
  String get home => 'ਮੁੱਖ ਪੰਨਾ';

  @override
  String get games => 'ਖੇਡਾਂ';

  @override
  String get referAndEarn => 'ਦੋਸਤਾਂ ਨੂੰ ਸੱਦੋ ਤੇ ਕਮਾਓ';

  @override
  String get themes => 'ਥੀਮਾਂ';

  @override
  String get version => 'ਵਰਜਨ';

  @override
  String get developer => 'ਡਿਵੈਲਪਰ';

  @override
  String get contact => 'ਸੰਪਰਕ';

  @override
  String get learning => 'ਸਿੱਖਿਆ';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'ਮੇਰੇ ਨਾਲ ਜੁੜੋ';

  @override
  String get aboutDescription => 'DevOps Quiz ਨਾਲ Linux, Docker, Kubernetes ਅਤੇ ਹੋਰ DevOps ਵਿਸ਼ੇ ਸਿੱਖ ਕੇ ਇੰਟਰਵਿਊਆਂ ਤੇ ਸਰਟੀਫਿਕੇਟਾਂ ਲਈ ਤਿਆਰੀ ਕਰੋ।';

  @override
  String get quizResult => 'ਕੁਇਜ਼ ਦਾ ਨਤੀਜਾ';

  @override
  String get outstanding => 'ਸ਼ਾਨਦਾਰ!';

  @override
  String get greatJob => 'ਬਹੁਤ ਵਧੀਆ!';

  @override
  String get goodEffort => 'ਚੰਗੀ ਕੋਸ਼ਿਸ਼!';

  @override
  String get keepPracticing => 'ਅਭਿਆਸ ਜਾਰੀ ਰੱਖੋ!';

  @override
  String get dontGiveUp => 'ਹਾਰ ਨਾ ਮੰਨੋ!';

  @override
  String get shareMessage1 => 'ਮੇਰਾ ਸਕੋਰ';

  @override
  String get shareMessage2 => 'DevOps ਕੁਇਜ਼ ਵਿੱਚ!';

  @override
  String get downloadApp => 'ਐਪ ਡਾਊਨਲੋਡ ਕਰੋ:';

  @override
  String get score => 'ਸਕੋਰ';

  @override
  String get points => 'ਅੰਕ';

  @override
  String get percentage => 'ਪ੍ਰਤੀਸ਼ਤ';

  @override
  String get bonus => 'ਬੋਨਸ';

  @override
  String get perfectScoreBonus => 'ਪੂਰੇ ਸਕੋਰ ਦਾ ਬੋਨਸ';

  @override
  String get shareScore => 'ਸਕੋਰ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get restartQuiz => 'ਕੁਇਜ਼ ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get backToCategories => 'ਸ਼੍ਰੇਣੀਆਂ ਵੱਲ ਵਾਪਸ ਜਾਓ';

  @override
  String get greatProgress => 'ਬਹੁਤ ਵਧੀਆ! ਤੁਸੀਂ ਚੰਗੀ ਤਰੱਕੀ ਕਰ ਰਹੇ ਹੋ।';

  @override
  String get practiceMore => 'ਚੰਗੀ ਕੋਸ਼ਿਸ਼! ਹੋਰ ਅਭਿਆਸ ਨਾਲ ਤੁਹਾਡਾ ਸਕੋਰ ਵਧੇਗਾ।';

  @override
  String get keepLearning => 'ਸਿੱਖਦੇ ਰਹੋ ਅਤੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get everyExpertStarted => 'ਹਰ ਮਾਹਿਰ ਸ਼ੁਰੂ ਵਿੱਚ ਸਿੱਖਣ ਵਾਲਾ ਸੀ। ਅਭਿਆਸ ਜਾਰੀ ਰੱਖੋ!';

  @override
  String get quizInstructions => 'ਕੁਇਜ਼ ਦੀਆਂ ਹਦਾਇਤਾਂ';

  @override
  String get instruction1 => 'ਹਰ ਸੈੱਟ ਵਿੱਚ 25 ਸਵਾਲ ਹਨ।';

  @override
  String get instruction2 => 'ਹਰ ਸਵਾਲ ਲਈ 30 ਸਕਿੰਟ ਹਨ।';

  @override
  String get instruction3 => 'ਹਰਾ = ਸਹੀ ਜਵਾਬ।';

  @override
  String get instruction4 => 'ਲਾਲ = ਗਲਤ ਜਵਾਬ।';

  @override
  String get instruction5 => 'ਜਵਾਬ ਬਦਲਿਆ ਨਹੀਂ ਜਾ ਸਕਦਾ।';

  @override
  String get instruction6 => 'ਪਿੱਛੇ ਬਟਨ ਸਿਰਫ਼ ਸਮੀਖਿਆ ਲਈ ਹੈ।';

  @override
  String get instruction7 => 'ਪੂਰਾ ਹੋਣ ਮਗਰੋਂ ਸਕੋਰ ਦਿਖਾਇਆ ਜਾਵੇਗਾ।';

  @override
  String get instruction8 => 'ਹਰ ਸਹੀ ਜਵਾਬ ਲਈ 10 ਅੰਕ ਮਿਲਦੇ ਹਨ।';

  @override
  String excellentPerformance(Object expert) {
    return 'ਸ਼ਾਨਦਾਰ ਪ੍ਰਦਰਸ਼ਨ! ਤੁਸੀਂ ਇੱਕ $expert ਹੋ।';
  }

  @override
  String get selectCategory => 'ਸ਼੍ਰੇਣੀ ਚੁਣੋ';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'ਸੈੱਟ ਚੁਣੋ';

  @override
  String get set => 'ਸੈੱਟ';

  @override
  String get questions => 'ਸਵਾਲ';

  @override
  String get noScoresYet => 'ਹਾਲੇ ਕੋਈ ਸਕੋਰ ਨਹੀਂ';

  @override
  String get pointsShort => 'ਅੰਕ';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz ਵਿੱਚ ਸੁਆਗਤ ਹੈ';

  @override
  String hiUser(String name) {
    return 'ਹੈਲੋ $name';
  }

  @override
  String get challengeMode => 'ਚੁਣੌਤੀ ਮੋਡ';

  @override
  String get challenge => 'ਚੁਣੌਤੀ';

  @override
  String get question => 'ਸਵਾਲ';

  @override
  String get reward => 'ਇਨਾਮ';

  @override
  String get survivalMode => 'ਸਰਵਾਈਵਲ ਮੋਡ';

  @override
  String get speedChallenge => 'ਰਫ਼ਤਾਰ ਦੀ ਚੁਣੌਤੀ';

  @override
  String get dailyChallenge => 'ਰੋਜ਼ਾਨਾ ਚੁਣੌਤੀ';

  @override
  String get ultimateChallenge => 'ਆਖਰੀ ਚੁਣੌਤੀ';

  @override
  String get timeLeft => 'ਬਾਕੀ ਸਮਾਂ';

  @override
  String get completed => 'ਪੂਰਾ ਹੋਇਆ';

  @override
  String get locked => 'ਲਾਕ ਕੀਤਾ';

  @override
  String get back => 'ਪਿੱਛੇ';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get submit => 'ਜਮ੍ਹਾਂ ਕਰੋ';

  @override
  String get achievements => 'ਪ੍ਰਾਪਤੀਆਂ';

  @override
  String get streak => 'ਲਗਾਤਾਰ ਦਿਨ';

  @override
  String get days => 'ਦਿਨ';

  @override
  String get tomorrowsReward => 'ਕੱਲ੍ਹ ਦਾ ਇਨਾਮ';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 ਮੇਰਾ ਸਕੋਰ $score/$totalQuestions #DevOps Quiz!\n\n🏆 ਅੰਕ: $earnedPoints\n🔥 ਬੋਨਸ: $bonusPoints\n📊 ਪ੍ਰਤੀਸ਼ਤ: $percentage%\n\nਐਪ ਡਾਊਨਲੋਡ ਕਰੋ:';
  }

  @override
  String get gameUiSpinWheel => 'ਚੱਕਰ ਘੁਮਾਓ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'ਘੁਮਾਓ ਅਤੇ ਬੋਨਸ ਅੰਕ ਜਿੱਤੋ';

  @override
  String get gameUiScratchCard => 'ਸਕ੍ਰੈਚ ਕਾਰਡ';

  @override
  String get gameUiScratchToRevealAReward => 'ਇਨਾਮ ਦੇਖਣ ਲਈ ਖੁਰਚੋ';

  @override
  String get gameUiLuckySlots => 'ਲੱਕੀ ਸਲਾਟਸ';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'ਸਲਾਟ ਘੁਮਾਓ ਅਤੇ ਅੰਕ ਜਿੱਤੋ';

  @override
  String get gameUiMysteryDeal => 'ਰਹੱਸਮਈ ਸੌਦਾ';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ਇੱਕ ਰਹੱਸਮਈ ਡੱਬਾ ਚੁਣੋ ਅਤੇ ਜਵਾਬ ਦਿਓ';

  @override
  String get gameUiMemoryMatch => 'ਮੈਮੋਰੀ ਮੈਚ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps ਜੋੜੇ ਮਿਲਾਓ';

  @override
  String get gameUiWordGuess => 'ਸ਼ਬਦ ਅੰਦਾਜ਼ਾ';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'ਪੱਧਰਾਂ ਰਾਹੀਂ DevOps ਸ਼ਬਦਾਂ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਓ';

  @override
  String get gameUiFindWords => 'ਸ਼ਬਦ ਲੱਭੋ';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ਗਰਿੱਡ ਵਿੱਚ ਛੁਪੇ DevOps ਸ਼ਬਦ ਲੱਭੋ';

  @override
  String get gameUiSpotTheDifference => 'ਫ਼ਰਕ ਲੱਭੋ';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'ਦੋ ਚਿੱਤਰਿਤ ਦ੍ਰਿਸ਼ਾਂ ਵਿੱਚ ਪੰਜ ਤਬਦੀਲੀਆਂ ਲੱਭੋ';

  @override
  String get gameUiJigsawPuzzle => 'ਜਿਗਸਾ ਪਹੇਲੀ';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'ਸਾਂਝੀਆਂ HD ਜਾਨਵਰਾਂ ਅਤੇ ਕੁਦਰਤ ਦੀਆਂ ਤਸਵੀਰਾਂ ਮੁੜ ਜੋੜੋ';

  @override
  String get gameUiHighOrLow => 'ਵੱਧ ਜਾਂ ਘੱਟ';

  @override
  String get gameUiBuildAStreak => 'ਲਗਾਤਾਰ ਜਿੱਤਾਂ ਦੀ ਲੜੀ ਬਣਾਓ';

  @override
  String get gameUiTrueOrFalseBlitz => 'ਸਹੀ ਜਾਂ ਗਲਤ ਬਲਿਟਜ਼';

  @override
  String get gameUiQuickAnswerQuiz => 'ਤੁਰੰਤ ਜਵਾਬ ਕੁਇਜ਼';

  @override
  String get gameUiCommandMatch => 'ਕਮਾਂਡ ਮੈਚ';

  @override
  String get gameUiMatchCommandsToMeanings => 'ਕਮਾਂਡਾਂ ਨੂੰ ਉਨ੍ਹਾਂ ਦੇ ਅਰਥਾਂ ਨਾਲ ਮਿਲਾਓ';

  @override
  String get gameUiPortMaster => 'ਪੋਰਟ ਮਾਸਟਰ';

  @override
  String get gameUiGuessDefaultPorts => 'ਡਿਫ਼ਾਲਟ ਪੋਰਟਾਂ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਓ';

  @override
  String get gameUiTicTacToe => 'ਟਿਕ-ਟੈਕ-ਟੋ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X ਨੌਟਸ ਐਂਡ ਕਰਾਸਿਜ਼ ਕੰਪਿਊਟਰ ਨਾਲ';

  @override
  String get gameUiConnectFour => 'ਕਨੈਕਟ ਫ਼ੋਰ';

  @override
  String get gameUiDropFourDiscs => 'ਚਾਰ ਡਿਸਕਾਂ ਸੁੱਟੋ';

  @override
  String get gameUiLudo => 'ਲੂਡੋ';

  @override
  String get gameUiRaceAgainstBots => 'ਬੋਟਾਂ ਨਾਲ ਦੌੜ ਲਗਾਓ';

  @override
  String get gameUiChess => 'ਸ਼ਤਰੰਜ';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'ਸ਼ਤਰੰਜ ਬੋਰਡ, ਜਾਇਜ਼ ਚਾਲਾਂ, ਦੋ ਖਿਡਾਰੀ';

  @override
  String get gameUiSnakeAndLadders => 'ਸੱਪ ਅਤੇ ਪੌੜੀ';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'ਪਾਸਿਆਂ ਵਾਲੀ ਬੋਰਡ ਖੇਡ, ਸੱਪ ਅਤੇ ਪੌੜੀਆਂ, ਦੋ ਖਿਡਾਰੀ';

  @override
  String get gameUiGames => 'ਖੇਡਾਂ 🎮';

  @override
  String get gameUiPlayEarn => 'ਖੇਡੋ ਅਤੇ ਕਮਾਓ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ਖੇਡਾਂ ਖੇਡੋ ਅਤੇ ਬੋਨਸ ਅੰਕ ਕਮਾਓ!';

  @override
  String get gameUiSearchGames => 'ਖੇਡਾਂ ਖੋਜੋ';

  @override
  String get gameUiClearSearch => 'ਖੋਜ ਸਾਫ਼ ਕਰੋ';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" ਨਾਲ ਕੋਈ ਖੇਡ ਮੇਲ ਨਹੀਂ ਖਾਂਦੀ';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'ਘੁਮਾਓ ਅਤੇ ਬੋਨਸ ਅੰਕ ਜਿੱਤੋ।';

  @override
  String get gameUiScratchToRevealYourReward => 'ਆਪਣਾ ਇਨਾਮ ਦੇਖਣ ਲਈ ਖੁਰਚੋ।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'ਸਲਾਟ ਘੁਮਾਓ ਅਤੇ ਅੰਕ ਜਿੱਤੋ।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ਇੱਕ ਰਹੱਸਮਈ ਡੱਬਾ ਚੁਣੋ ਅਤੇ ਸਹੀ ਜਵਾਬ ਦੇ ਕੇ ਅੰਕ ਜਿੱਤੋ।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'ਅੰਕ ਕਮਾਉਣ ਲਈ DevOps ਜੋੜੇ ਮਿਲਾਓ।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ਕੋਸ਼ਿਸ਼ਾਂ ਵਿੱਚ DevOps ਸ਼ਬਦ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਓ।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ਗਰਿੱਡ ਵਿੱਚ ਛੁਪੇ DevOps ਸ਼ਬਦ ਲੱਭੋ।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 ਪੱਧਰਾਂ ਵਿੱਚ DevOps ਸ਼ਬਦ ਲੱਭਣ ਲਈ ਸਵਾਈਪ ਕਰੋ।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'ਦੋ ਚਿੱਤਰਿਤ ਦ੍ਰਿਸ਼ਾਂ ਵਿੱਚ ਪੰਜ ਤਬਦੀਲੀਆਂ ਲੱਭੋ।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'ਸਾਂਝੀਆਂ HD ਜਾਨਵਰਾਂ ਅਤੇ ਕੁਦਰਤ ਦੀਆਂ ਤਸਵੀਰਾਂ ਮੁੜ ਜੋੜੋ।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ਲਗਾਤਾਰ ਜਿੱਤਾਂ ਦੀ ਲੜੀ ਬਣਾਓ ਅਤੇ ਆਪਣੇ ਅੰਕ ਸੁਰੱਖਿਅਤ ਕਰੋ।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'ਤੁਰੰਤ ਜਵਾਬਾਂ ਨਾਲ ਘੜੀ ਨੂੰ ਹਰਾਓ।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'ਸਹੀ ਜਾਂ ਗਲਤ ਬਲਿਟਜ਼ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'ਕਮਾਂਡਾਂ ਨੂੰ ਉਨ੍ਹਾਂ ਦੇ ਕੰਮ ਨਾਲ ਮਿਲਾਓ।';

  @override
  String get gameUiCommandMatch670a76e => 'ਕਮਾਂਡ ਮੈਚ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 ਜਾਨਾਂ ਨਾਲ ਡਿਫ਼ਾਲਟ ਪੋਰਟਾਂ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਓ।';

  @override
  String get gameUiPortMaster8f5fd42 => 'ਪੋਰਟ ਮਾਸਟਰ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'ਕੰਪਿਊਟਰ ਵਿਰੁੱਧ O/X ਖੇਡੋ।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'ਜਿੱਤਣ ਲਈ ਲਗਾਤਾਰ ਚਾਰ ਡਿਸਕਾਂ ਸੁੱਟੋ।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'ਆਪਣੀਆਂ ਗੋਟੀਆਂ ਨੂੰ ਤਿੰਨ ਬੋਟਾਂ ਵਿਰੁੱਧ ਦੌੜਾਓ।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'ਜਾਇਜ਼ ਚਾਲਾਂ ਨਾਲ ਸਥਾਨਕ ਦੋ-ਖਿਡਾਰੀ ਸ਼ਤਰੰਜ।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'ਨਿਯਮਾਂ ਅਨੁਸਾਰ ਦੋ-ਖਿਡਾਰੀ ਸ਼ਤਰੰਜ ਮੈਚ ਖੇਡੋ।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'ਦੋ-ਖਿਡਾਰੀ ਪਾਸਿਆਂ ਵਾਲੀ ਬੋਰਡ ਖੇਡ।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 ਤੱਕ ਦੌੜ ਲਗਾਓ। ਪੌੜੀਆਂ ਚੜ੍ਹੋ ਅਤੇ ਸੱਪਾਂ ਤੋਂ ਬਚੋ।';

  @override
  String get gameUiPlay => 'ਖੇਡੋ';

  @override
  String get gameUiWheelStopped => 'ਚੱਕਰ ਰੁਕ ਗਿਆ!';

  @override
  String get gameUiYourRewardIs => 'ਤੁਹਾਡਾ ਇਨਾਮ ਹੈ';

  @override
  String get gameUiPOINTS => 'ਅੰਕ';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ਇਹ ਇਨਾਮ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ 1 ਕੁਇਜ਼ ਸਵਾਲ ਦਾ ਸਹੀ ਜਵਾਬ ਦਿਓ।';

  @override
  String get gameUiWrongAnswerRewardLost => 'ਗਲਤ ਜਵਾਬ = ਇਨਾਮ ਗੁਆਚਿਆ।';

  @override
  String get gameUiAnswerQuestion => 'ਸਵਾਲ ਦਾ ਜਵਾਬ ਦਿਓ';

  @override
  String get gameUiSpinWheele449982 => '🎡 ਚੱਕਰ ਘੁਮਾਓ';

  @override
  String get gameUiDailySpin => 'ਰੋਜ਼ਾਨਾ ਘੁਮਾਓ';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'ਚੱਕਰ ਘੁਮਾਓ, ਫਿਰ ਆਪਣਾ ਇਨਾਮ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਇੱਕ ਸਵਾਲ ਦਾ ਜਵਾਬ ਦਿਓ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'ਤੁਸੀਂ ਅੱਜ ਦਾ ਘੁਮਾਉਣਾ ਪਹਿਲਾਂ ਹੀ ਵਰਤ ਲਿਆ ਹੈ।';

  @override
  String get gameUiSpinning => 'ਘੁੰਮ ਰਿਹਾ ਹੈ...';

  @override
  String get gameUiSPINNOW => 'ਹੁਣੇ ਘੁਮਾਓ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'ਕੱਲ੍ਹ ਮੁੜ ਆਓ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'ਅੱਜ ਦਾ ਇਨਾਮ: ⭐ $value1 ਅੰਕ';
  }

  @override
  String get gameUiBackToGames => 'ਖੇਡਾਂ ਵੱਲ ਵਾਪਸ';

  @override
  String get gameUiSPIN => 'ਘੁਮਾਓ';

  @override
  String get gameUiRewardRevealed => 'ਇਨਾਮ ਪ੍ਰਗਟ ਹੋ ਗਿਆ!';

  @override
  String get gameUiYouFound => 'ਤੁਹਾਨੂੰ ਮਿਲਿਆ';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ ਸਕ੍ਰੈਚ ਕਾਰਡ';

  @override
  String get gameUiDailyScratch => 'ਰੋਜ਼ਾਨਾ ਸਕ੍ਰੈਚ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'ਅੱਜ ਦਾ ਇਨਾਮ ਦੇਖਣ ਲਈ ਕਾਰਡ ਖੁਰਚੋ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'ਤੁਸੀਂ ਅੱਜ ਦਾ ਸਕ੍ਰੈਚ ਕਾਰਡ ਪਹਿਲਾਂ ਹੀ ਵਰਤ ਲਿਆ ਹੈ।';

  @override
  String get gameUiAlreadyScratched => 'ਪਹਿਲਾਂ ਹੀ ਖੁਰਚਿਆ ਜਾ ਚੁੱਕਾ ਹੈ';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'ਇੱਕ ਹੋਰ ਇਨਾਮ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ।';

  @override
  String get gameUiYouRevealed => 'ਤੁਸੀਂ ਪ੍ਰਗਟ ਕੀਤਾ';

  @override
  String get gameUiSCRATCHHERE => 'ਇੱਥੇ ਖੁਰਚੋ  👆';

  @override
  String get gameUiJACKPOT777 => 'ਜੈਕਪਾਟ 777!';

  @override
  String get gameUiLucky777 => 'ਲੱਕੀ 777!';

  @override
  String get gameUiYourReward => 'ਤੁਹਾਡਾ ਇਨਾਮ';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ਲੱਕੀ ਸਲਾਟਸ';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'ਸਲਾਟ ਘੁਮਾਓ, ਫਿਰ ਇਨਾਮ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਇੱਕ ਸਵਾਲ ਦਾ ਜਵਾਬ ਦਿਓ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'ਤੁਸੀਂ ਅੱਜ ਪਹਿਲਾਂ ਹੀ ਖੇਡ ਚੁੱਕੇ ਹੋ।';

  @override
  String get gameUiSPINNING => 'ਘੁੰਮ ਰਿਹਾ ਹੈ...';

  @override
  String get gameUiROLLNOW => 'ਹੁਣੇ ਰੋਲ ਕਰੋ';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ਜੈਕਪਾਟ! 777 ਪੁਆਇੰਟ ਉਪਲਬਧ ਹਨ!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'ਮਿਸਟਰੀ ਡੀਲ ਦੀ ਸਥਿਤੀ ਦੀ ਜਾਂਚ ਨਹੀਂ ਹੋ ਸਕੀ: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'ਡੱਬਾ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 ਪੁਆਇੰਟ';
  }

  @override
  String get gameUiStartQuestion => 'ਸਵਾਲ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ਮਿਸਟਰੀ ਡੀਲ';

  @override
  String get gameUiMysteryDealCompleted => 'ਮਿਸਟਰੀ ਡੀਲ ਪੂਰੀ ਹੋਈ!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'ਤੁਸੀਂ ਅੱਜ ਪਹਿਲਾਂ ਹੀ ਮਿਸਟਰੀ ਡੀਲ ਖੇਡ ਚੁੱਕੇ ਹੋ।';

  @override
  String get gameUiTodayYouWon => 'ਅੱਜ ਤੁਸੀਂ ਜਿੱਤਿਆ';

  @override
  String get gameUiTodaySReward => 'ਅੱਜ ਦਾ ਇਨਾਮ';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 ਪੁਆਇੰਟ';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 ਪੁਆਇੰਟ ਗੁਆਏ';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'ਇੱਕ ਹੋਰ ਮਿਸਟਰੀ ਬਾਕਸ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';

  @override
  String get gameUiChooseYourMysteryBox => 'ਆਪਣਾ ਮਿਸਟਰੀ ਬਾਕਸ ਚੁਣੋ';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ਹਰੇਕ ਡੱਬੇ ਵਿੱਚ 10 ਤੋਂ 1000 ਪੁਆਇੰਟਾਂ ਦੇ ਵਿਚਕਾਰ ਇੱਕ ਲੁਕਿਆ ਹੋਇਆ ਇਨਾਮ ਹੈ।';

  @override
  String get gameUiPickOnlyOneBox => 'ਸਿਰਫ਼ ਇੱਕ ਡੱਬਾ ਚੁਣੋ!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'ਸਾਰੇ $value1 ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'ਪੱਧਰ $value1 ਪੂਰਾ ਹੋਇਆ!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 ਚਾਲਾਂ ਵਿੱਚ ਪੂਰਾ ਕੀਤਾ।\nਤੁਸੀਂ $value2 ਪੁਆਇੰਟ ਕਮਾਏ!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 ਚਾਲਾਂ ਵਿੱਚ ਪੂਰਾ ਕੀਤਾ।\nਇਹ ਪੱਧਰ ਪਹਿਲਾਂ ਹੀ ਪਾਰ ਕੀਤਾ ਜਾ ਚੁੱਕਾ ਸੀ।';
  }

  @override
  String get gameUiNextLevel => 'ਅਗਲਾ ਪੱਧਰ';

  @override
  String get gameUiDone => 'ਹੋ ਗਿਆ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'ਮੈਮੋਰੀ ਮੈਚ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'ਸਾਰੇ 100 ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'ਤੁਸੀਂ ਮੈਮੋਰੀ ਮੈਚ ਦਾ ਹਰ ਪੱਧਰ ਪੂਰਾ ਕਰ ਲਿਆ। ਬਹੁਤ ਵਧੀਆ ਖੇਡੇ!';

  @override
  String get gameUiChooseLevel => 'ਪੱਧਰ ਚੁਣੋ';

  @override
  String gameUiMoves(String value1) {
    return 'ਚਾਲਾਂ: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'ਪੱਧਰ $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 ਜੋੜੇ';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'ਪੱਧਰ $value1 ਯਾਦ ਕਰੋ';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 ਮੇਲ ਖਾਂਦੇ ਜੋੜੇ ਲੱਭੋ';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz ਲੋਗੋ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'ਅਧਿਆਇ 1 · ਬਿਲਡ ਪਾਈਪਲਾਈਨ ਬਹਾਲ ਕਰੋ';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'ਅਧਿਆਇ 2 · ਕਲਾਉਡ ਪਲੇਟਫਾਰਮ ਨੂੰ ਵਧਾਓ';

  @override
  String get gameUiChapter3ProtectProduction => 'ਅਧਿਆਇ 3 · ਪ੍ਰੋਡਕਸ਼ਨ ਦੀ ਰੱਖਿਆ ਕਰੋ';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'ਜਮ੍ਹਾਂ ਕਰਨ ਲਈ ਬਾਕੀ ਸਾਰੇ $value1 ਅੱਖਰ ਵਰਤੋ।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'ਸਾਰੇ ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'ਪੱਧਰ $value1 ਪੂਰਾ ਹੋਇਆ!';
  }

  @override
  String get gameUiTryAgain => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'ਸ਼ਬਦ $value1 ਸੀ। ਤੁਸੀਂ $value2 ਪੁਆਇੰਟ ਕਮਾਏ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'ਸ਼ਬਦ $value1 ਸੀ। ਤੁਸੀਂ $value3 ਸੰਕੇਤ ਤੋਂ ਬਾਅਦ $value2 ਪੁਆਇੰਟ ਕਮਾਏ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'ਸ਼ਬਦ $value1 ਸੀ। ਤੁਸੀਂ $value3 ਸੰਕੇਤਾਂ ਤੋਂ ਬਾਅਦ $value2 ਪੁਆਇੰਟ ਕਮਾਏ।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'ਸ਼ਬਦ $value1 ਸੀ। ਪੱਧਰ $value2 ਹਾਲੇ ਵੀ ਤੁਹਾਡੀ ਉਡੀਕ ਕਰ ਰਿਹਾ ਹੈ।';
  }

  @override
  String get gameUiFinish => 'ਸਮਾਪਤ ਕਰੋ';

  @override
  String get gameUiNextLevel254fd73 => 'ਅਗਲਾ ਪੱਧਰ';

  @override
  String get gameUiRetryLevel => 'ਪੱਧਰ ਦੁਬਾਰਾ ਖੇਡੋ';

  @override
  String get gameUiHowToPlay => 'ਕਿਵੇਂ ਖੇਡਣਾ ਹੈ';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ਹਰੇਕ ਪੱਧਰ ਵਿੱਚ ਇੱਕ DevOps ਸ਼ਬਦ ਹੁੰਦਾ ਹੈ। ਪੰਜ ਅੱਖਰਾਂ ਤੋਂ ਛੋਟੇ ਸ਼ਬਦ ਬਿਨਾਂ ਕਿਸੇ ਮੁਫ਼ਤ ਅੱਖਰ ਦੇ ਸ਼ੁਰੂ ਹੁੰਦੇ ਹਨ; ਲੰਬੇ ਸ਼ਬਦ ਇੱਕ ਨਾਲ ਸ਼ੁਰੂ ਹੁੰਦੇ ਹਨ। ਜਵਾਬ ਬਣਾਉਣ ਲਈ ਅੱਖਰ ਰੈਕ ਵਰਤੋ ਅਤੇ Enter ਦਬਾਓ। ਸੰਕੇਤ ਇੱਕ ਹੋਰ ਅੱਖਰ ਦਿਖਾਉਂਦੇ ਹਨ ਅਤੇ ਤੁਹਾਡੇ ਬਕਾਏ ਵਿੱਚੋਂ 20 ਪੁਆਇੰਟ ਕੱਟਦੇ ਹਨ। ਹਰੇਕ ਪੂਰਾ ਕੀਤਾ ਪੱਧਰ 100 ਪੁਆਇੰਟ ਕਮਾਉਂਦਾ ਹੈ।';

  @override
  String get gameUiGotIt => 'ਸਮਝ ਗਿਆ';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'ਸਾਰੇ $value1 ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';
  }

  @override
  String get gameUiEasy => 'ਆਸਾਨ';

  @override
  String get gameUiMedium => 'ਦਰਮਿਆਨਾ';

  @override
  String get gameUiHard => 'ਔਖਾ';

  @override
  String get gameUiHowToPlay13a6b22 => 'ਕਿਵੇਂ ਖੇਡਣਾ ਹੈ';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'ਪੱਧਰ $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'ਇਨਾਮ $value1 ਪੁਆਇੰਟ · ਵਰਤੇ ਸੰਕੇਤ $value2';
  }

  @override
  String get gameUiHint20Pts => 'ਸੰਕੇਤ · −20 ਪੁਆਇੰਟ';

  @override
  String get gameUiEnter => 'ਐਂਟਰ';

  @override
  String get gameUiDelete => 'ਮਿਟਾਓ';

  @override
  String get gameUiDragThroughAWord => 'ਸ਼ਬਦ ਉੱਤੇ ਡਰੈਗ ਕਰੋ';

  @override
  String get gameUiDragThroughEachWord => 'ਹਰੇਕ ਸ਼ਬਦ ਉੱਤੇ ਡਰੈਗ ਕਰੋ';

  @override
  String get gameUiReleaseToSelect => 'ਚੁਣਨ ਲਈ ਛੱਡੋ';

  @override
  String gameUiFound(String value1) {
    return '$value1 ਮਿਲ ਗਿਆ';
  }

  @override
  String get gameUiNoWordThere => 'ਉੱਥੇ ਕੋਈ ਸ਼ਬਦ ਨਹੀਂ';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ਪਹਿਲਾਂ ਹੀ ਮਿਲ ਚੁੱਕਾ ਹੈ';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 ਲੱਭੋ';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'ਸਾਰੇ ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'ਤੁਹਾਨੂੰ ਹਰ ਸ਼ਬਦ ਮਿਲ ਗਿਆ ਅਤੇ ਤੁਸੀਂ $value1 ਪੁਆਇੰਟ ਕਮਾਏ।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'ਤੁਹਾਨੂੰ ਹਰ ਸ਼ਬਦ ਮਿਲ ਗਿਆ। ਇਹ ਪੱਧਰ ਪਹਿਲਾਂ ਹੀ ਪਾਰ ਕੀਤਾ ਜਾ ਚੁੱਕਾ ਸੀ।';

  @override
  String get gameUiAll500LevelsComplete => 'ਸਾਰੇ 500 ਪੱਧਰ ਪੂਰੇ ਹੋਏ!';

  @override
  String get gameUiReviewLevels => 'ਪੱਧਰਾਂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ';

  @override
  String gameUiLeft(String value1) {
    return '$value1 ਬਾਕੀ';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 ਪੁਆਇੰਟ';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'ਤਰੱਕੀ ਸੁਰੱਖਿਅਤ ਨਹੀਂ ਹੋ ਸਕੀ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'ਤੁਸੀਂ $value1 ਪੁਆਇੰਟ ਕਮਾਏ!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'ਤੁਸੀਂ ਇਹ ਤਸਵੀਰ ਪਹਿਲਾਂ ਹੀ ਪੂਰੀ ਕਰ ਚੁੱਕੇ ਹੋ। ਦੁਬਾਰਾ ਖੇਡਣ ਉੱਤੇ ਕੋਈ ਵਾਧੂ ਪੁਆਇੰਟ ਨਹੀਂ ਮਿਲਣਗੇ।';

  @override
  String get gameUiYouCompletedEveryPicture => 'ਤੁਸੀਂ ਹਰ ਤਸਵੀਰ ਪੂਰੀ ਕਰ ਲਈ!';

  @override
  String get gameUiLevels => 'ਪੱਧਰ';

  @override
  String get gameUiPictureB => 'ਤਸਵੀਰ B';

  @override
  String get gameUiPictureA => 'ਤਸਵੀਰ A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ਤਸਵੀਰ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕੀ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get gameUiResetZoom => 'ਜ਼ੂਮ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get gameUiZoomBothPictures => 'ਦੋਵੇਂ ਤਸਵੀਰਾਂ ਜ਼ੂਮ ਕਰੋ';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ਸੰਕੇਤ · ਪ੍ਰਤੀ ਸੰਕੇਤ $value1 ਪੁਆਇੰਟ';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'ਤਰੱਕੀ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕੀ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'ਪੱਧਰ $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'ਸਾਰੇ ਅੰਤਰ ਮਿਲ ਗਏ!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count ਅੰਤਰ ਲੱਭੋ। ਕਿਸੇ ਵੀ ਤਸਵੀਰ ਵਿੱਚ ਹਰੇਕ ਉੱਤੇ ਟੈਪ ਕਰੋ।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ਖੁੰਝੇ: $value1  ·  ਸੰਕੇਤ: $value2 (−$value3 ਪੁਆਇੰਟ)  ·  $value4 ਪੱਧਰ ਪੂਰੇ';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'ਅਗਲਾ ਪੱਧਰ: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'ਪਹੇਲੀ $value1 ਪੂਰੀ ਹੋਈ!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ਤਸਵੀਰ $value1 ਚਾਲਾਂ ਵਿੱਚ ਪੂਰੀ ਹੋਈ। ਤੁਸੀਂ $value2 ਪੁਆਇੰਟ ਕਮਾਏ।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ਤਸਵੀਰ $value1 ਚਾਲਾਂ ਵਿੱਚ ਪੂਰੀ ਹੋਈ।';
  }

  @override
  String get gameUiNextPuzzle => 'ਅਗਲੀ ਪਹੇਲੀ';

  @override
  String get gameUiAllPuzzlesComplete => 'ਸਾਰੀਆਂ ਪਹੇਲੀਆਂ ਪੂਰੀਆਂ ਹੋਈਆਂ';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'ਪਹੇਲੀ ਦਾ ਟੁਕੜਾ $value1 / $value2, ਸਹੀ ਥਾਂ ਉੱਤੇ ਰੱਖਿਆ';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'ਪਹੇਲੀ ਦਾ ਟੁਕੜਾ $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'ਪਹੇਲੀ ਚੁਣੋ';

  @override
  String get gameUiShufflePieces => 'ਟੁਕੜੇ ਮਿਲਾਓ';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'ਪਹੇਲੀ ਦੀ ਤਸਵੀਰ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕੀ।';

  @override
  String get gameUiPreviousPuzzle => 'ਪਿਛਲੀ ਪਹੇਲੀ';

  @override
  String gameUiPuzzle(String value1) {
    return 'ਪਹੇਲੀ $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 ਚਾਲਾਂ';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ਟੁਕੜਿਆਂ ਨੂੰ ਅਦਲਾ-ਬਦਲੀ ਕਰਨ ਲਈ ਖਿੱਚੋ, ਜਾਂ ਦੋ ਟੁਕੜਿਆਂ ਨੂੰ ਟੈਪ ਕਰੋ।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 ਪਹੇਲੀਆਂ ਹੱਲ ਹੋਈਆਂ  ·  ਹਰੇਕ ਦੇ $value3 ਅੰਕ';
  }

  @override
  String get gameUiGameOver => 'ਖੇਡ ਖਤਮ';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'ਨੰਬਰ $value1 ਸੀ।\nਲਗਾਤਾਰ ਜਿੱਤ: $value2\nਤੁਸੀਂ $value3 ਅੰਕ ਕਮਾਏ!\n\nਇੱਕ ਹੋਰ ਮੌਕੇ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';
  }

  @override
  String get gameUiHigherOrLower => 'ਵੱਧ ਜਾਂ ਘੱਟ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'ਅੱਜ ਪਹਿਲਾਂ ਹੀ ਖੇਡ ਚੁੱਕੇ ਹੋ!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'ਤੁਸੀਂ $value1/$value2/$value3 ਨੂੰ ਖੇਡਿਆ ਸੀ।\n\nਨਵੀਂ ਲਗਾਤਾਰ ਜਿੱਤ ਬਣਾਉਣ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'ਤੁਸੀਂ ਅੱਜ ਪਹਿਲਾਂ ਹੀ ਖੇਡ ਚੁੱਕੇ ਹੋ।\n\nਇੱਕ ਹੋਰ ਮੌਕੇ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 ਲਗਾਤਾਰ ਜਿੱਤ: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ ਅੰਕ: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'ਕੀ ਅਗਲਾ ਨੰਬਰ ਵੱਧ ਹੋਵੇਗਾ ਜਾਂ ਘੱਟ?';

  @override
  String get gameUiLower => 'ਘੱਟ';

  @override
  String get gameUiHigher => 'ਵੱਧ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'ਸਹੀ ਜਾਂ ਗਲਤ ਬਲਿਟਜ਼ ⚡';

  @override
  String get gameUiTimeSUp => 'ਸਮਾਂ ਖਤਮ!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'ਸਹੀ ਜਵਾਬ: $value1\nਸਭ ਤੋਂ ਵਧੀਆ ਲਗਾਤਾਰ ਜਿੱਤ: $value2\n$value3ਤੁਸੀਂ $value4 ਅੰਕ ਕਮਾਏ!\n\nਇੱਕ ਹੋਰ ਦੌਰ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';
  }

  @override
  String get gameUiStreakBonus20 => 'ਲਗਾਤਾਰ ਜਿੱਤ ਬੋਨਸ: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'ਕੀ ਦਿਖਾਇਆ ਗਿਆ ਜਵਾਬ ਸਹੀ ਹੈ ਜਾਂ ਗਲਤ?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 ਸ਼੍ਰੇਣੀਆਂ ਵਿੱਚ $value1 ਸਵਾਲ';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'ਤੁਹਾਡੇ ਕੋਲ $value1 ਸਕਿੰਟ ਹਨ। ਹਰੇਕ ਸਹੀ ਜਵਾਬ ਨਾਲ $value2 ਅੰਕ ਮਿਲਦੇ ਹਨ। ਗਲਤ ਜਵਾਬ ਨਾਲ $value3 ਸਕਿੰਟ ਘੱਟ ਹੋ ਜਾਂਦੇ ਹਨ। ਲਗਾਤਾਰ 5 ਸਹੀ ਜਵਾਬਾਂ \'ਤੇ +20 ਬੋਨਸ ਮਿਲਦਾ ਹੈ।';
  }

  @override
  String get gameUiRoundTimer => 'ਦੌਰ ਦਾ ਟਾਈਮਰ';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 ਸਕਿੰਟ';
  }

  @override
  String get gameUiStart => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get gameUiTrue => 'ਸਹੀ';

  @override
  String get gameUiFalse => 'ਗਲਤ';

  @override
  String get gameUiCommandMatch26b0e70 => 'ਕਮਾਂਡ ਮੇਲ 🔗';

  @override
  String get gameUiAllMatched => 'ਸਭ ਮੇਲ ਖਾ ਗਏ!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ਗਲਤੀਆਂ: $value1\nਤੁਸੀਂ $value2 ਅੰਕ ਕਮਾਏ!\n\nਨਵੀਆਂ ਕਮਾਂਡਾਂ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'ਦੌਰ $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ਇੱਕ ਕਮਾਂਡ ਨੂੰ ਟੈਪ ਕਰੋ, ਫਿਰ ਉਸਦੇ ਮਤਲਬ ਨੂੰ ਟੈਪ ਕਰੋ।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'ਹੁਣ ਮੇਲ ਖਾਂਦੇ ਮਤਲਬ ਨੂੰ ਟੈਪ ਕਰੋ।';

  @override
  String get gameUiPortMaster9c730cf => 'ਪੋਰਟ ਮਾਸਟਰ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'ਪੋਰਟ ਮਾਸਟਰ!';

  @override
  String get gameUiOutOfLives => 'ਜਾਨਾਂ ਖਤਮ';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'ਸਹੀ ਜਵਾਬ: $value1\nਤੁਸੀਂ $value2 ਅੰਕ ਕਮਾਏ!\n\nਇੱਕ ਹੋਰ ਦੌਰ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ!';
  }

  @override
  String get gameUiYouEarned10Points => 'ਤੁਸੀਂ 10 ਅੰਕ ਕਮਾਏ!';

  @override
  String get gameUiYouWin => 'ਤੁਸੀਂ ਜਿੱਤ ਗਏ!';

  @override
  String gameUiWins(String value1) {
    return '$value1 ਜਿੱਤ ਗਿਆ!';
  }

  @override
  String get gameUiXWins => 'X ਜਿੱਤ ਗਿਆ!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) ਜਿੱਤ ਗਿਆ!';
  }

  @override
  String get gameUiComputerWins => 'ਕੰਪਿਊਟਰ ਜਿੱਤ ਗਿਆ';

  @override
  String get gameUiOWins => 'O ਜਿੱਤ ਗਿਆ!';

  @override
  String get gameUiPlayer2OWins => 'ਖਿਡਾਰੀ 2 (O) ਜਿੱਤ ਗਿਆ!';

  @override
  String get gameUiItSADraw => 'ਬਰਾਬਰੀ ਰਹੀ';

  @override
  String get gameUiYourTurn => 'ਤੁਹਾਡੀ ਵਾਰੀ';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ਦੀ ਵਾਰੀ';
  }

  @override
  String get gameUiComputerIsThinking => 'ਕੰਪਿਊਟਰ ਸੋਚ ਰਿਹਾ ਹੈ';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'ਖਿਡਾਰੀ $value1 ਦੀ ਚਾਲ';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ਦੀ ਚਾਲ';
  }

  @override
  String get gameUiPlayer2ToMove => 'ਖਿਡਾਰੀ 2 ਦੀ ਚਾਲ';

  @override
  String get gameUiNewRound => 'ਨਵਾਂ ਦੌਰ';

  @override
  String get gameUiVsComputer => 'ਕੰਪਿਊਟਰ ਵਿਰੁੱਧ';

  @override
  String get gameUi2Players => '2 ਖਿਡਾਰੀ';

  @override
  String get gameUiYou => 'ਤੁਸੀਂ';

  @override
  String get gameUiDraws => 'ਬਰਾਬਰੀਆਂ';

  @override
  String get gameUiPlayer2 => 'ਖਿਡਾਰੀ 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ਖਾਨਾ $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'ਦੁਬਾਰਾ ਖੇਡੋ';

  @override
  String get gameUiConnectFourWin20Points => 'ਕਨੈਕਟ ਫੋਰ ਜਿੱਤ: 20 ਅੰਕ!';

  @override
  String get gameUiBotWins => 'ਬੌਟ ਜਿੱਤ ਗਿਆ!';

  @override
  String get gameUiRed => 'ਲਾਲ';

  @override
  String get gameUiYellow => 'ਪੀਲਾ';

  @override
  String get gameUiBoardFullDraw => 'ਬੋਰਡ ਭਰ ਗਿਆ — ਬਰਾਬਰੀ';

  @override
  String get gameUiBotIsThinking => 'ਬੌਟ ਸੋਚ ਰਿਹਾ ਹੈ';

  @override
  String get gameUiBotTurn => 'ਬੌਟ ਦੀ ਵਾਰੀ';

  @override
  String get gameUiNewGame => 'ਨਵੀਂ ਖੇਡ';

  @override
  String get gameUiVsBot => 'ਬੌਟ ਵਿਰੁੱਧ';

  @override
  String get gameUi2Player => '2 ਖਿਡਾਰੀ';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'ਬੌਟ ਵਿਰੁੱਧ ਖੇਡੋ · ਡਿਸਕ ਸੁੱਟਣ ਲਈ ਕਾਲਮ ਨੂੰ ਟੈਪ ਕਰੋ';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'ਦੋ ਖਿਡਾਰੀ · ਡਿਸਕ ਸੁੱਟਣ ਲਈ ਕਾਲਮ ਨੂੰ ਟੈਪ ਕਰੋ';

  @override
  String gameUiColumn(String value1) {
    return 'ਕਾਲਮ $value1';
  }

  @override
  String get gameUiYouRed => 'ਤੁਸੀਂ · ਲਾਲ';

  @override
  String get gameUiRedPlayer1 => 'ਲਾਲ · ਖਿਡਾਰੀ 1';

  @override
  String get gameUiBotYellow => 'ਬੌਟ · ਪੀਲਾ';

  @override
  String get gameUiYellowPlayer2 => 'ਪੀਲਾ · ਖਿਡਾਰੀ 2';

  @override
  String get gameUiLudoMatchStats => 'ਲੂਡੋ ਮੈਚ ਅੰਕੜੇ';

  @override
  String get gameUiNoCompletedMatchesYet => 'ਹਾਲੇ ਤੱਕ ਕੋਈ ਮੈਚ ਪੂਰਾ ਨਹੀਂ ਹੋਇਆ।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'ਖੇਡੇ $value1  ·  ਜਿੱਤੇ $value2  ·  ਹਾਰੇ $value3';
  }

  @override
  String get gameUiClose => 'ਬੰਦ ਕਰੋ';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'ਲੂਡੋ ਚੈਂਪੀਅਨ! ਤੁਸੀਂ 50 ਅੰਕ ਕਮਾਏ।';

  @override
  String get gameUiNewLudoGame => 'ਨਵੀਂ ਲੂਡੋ ਖੇਡ';

  @override
  String get gameUiBotOpponents => 'ਬੌਟ ਵਿਰੋਧੀ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'ਨਵਾਂ ਮੈਚ ਸ਼ੁਰੂ ਕਰਨ ਨਾਲ ਤੁਹਾਡੀ ਸੰਭਾਲੀ ਹੋਈ ਖੇਡ ਬਦਲ ਜਾਵੇਗੀ।';

  @override
  String get gameUiCancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get gameUiStartGame => 'ਖੇਡ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get gameUiPlayerColours => 'ਖਿਡਾਰੀ ਦੇ ਰੰਗ';

  @override
  String get gameUiApply => 'ਲਾਗੂ ਕਰੋ';

  @override
  String get gameUiMatchStats => 'ਮੈਚ ਅੰਕੜੇ';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 ਸ਼ਹਿ-ਮਾਤ ਨਾਲ ਜਿੱਤ ਗਿਆ';
  }

  @override
  String get gameUiBlack => 'ਕਾਲਾ';

  @override
  String get gameUiWhite => 'ਚਿੱਟਾ';

  @override
  String get gameUiComputerWinsByCheckmate => 'ਕੰਪਿਊਟਰ ਸ਼ਹਿ-ਮਾਤ ਨਾਲ ਜਿੱਤ ਗਿਆ';

  @override
  String get gameUiYouWinByCheckmate => 'ਤੁਸੀਂ ਸ਼ਹਿ-ਮਾਤ ਨਾਲ ਜਿੱਤ ਗਏ';

  @override
  String get gameUiDrawByStalemate => 'ਬੰਦ-ਗਲੀ ਕਾਰਨ ਬਰਾਬਰੀ';

  @override
  String get gameUiDraw => 'ਬਰਾਬਰੀ';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · ਸ਼ਹਿ';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'ਸ਼ਹਿ-ਮਾਤ! ਤੁਸੀਂ 50 ਅੰਕ ਕਮਾਏ।';

  @override
  String get gameUiStartANewGame => 'ਨਵੀਂ ਖੇਡ ਸ਼ੁਰੂ ਕਰਨੀ ਹੈ?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'ਖਿਡਾਰੀ ਮੋਡ ਬਦਲਣ ਨਾਲ ਸੰਭਾਲਿਆ ਮੈਚ ਬਦਲ ਜਾਵੇਗਾ।';

  @override
  String get gameUiComputer => 'ਕੰਪਿਊਟਰ';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · ਚਿੱਟਾ / ਖਿਡਾਰੀ 2 · ਕਾਲਾ';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'ਤੁਸੀਂ ਚਿੱਟੇ ਹੋ · ਕੰਪਿਊਟਰ ਕਾਲਾ ਹੈ';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (ਚਿੱਟਾ) · ਕੰਪਿਊਟਰ (ਕਾਲਾ)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'ਤੁਸੀਂ ਕਾਲੇ ਹੋ · ਕੰਪਿਊਟਰ ਚਿੱਟਾ ਹੈ';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (ਕਾਲਾ) · ਕੰਪਿਊਟਰ (ਚਿੱਟਾ)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ਪਹਿਲਾਂ ਪਾਸਾ ਸੁੱਟੇਗਾ';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ਦੁਬਾਰਾ ਪਾਸਾ ਸੁੱਟੇਗਾ';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 ਦੀ ਪਾਸਾ ਸੁੱਟਣ ਦੀ ਵਾਰੀ';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'ਸੱਪ ਅਤੇ ਪੌੜੀ ਜਿੱਤ: 100 ਅੰਕ!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'ਖਿਡਾਰੀ ਬਦਲਣ ਨਾਲ ਸੰਭਾਲੀ ਖੇਡ ਬਦਲ ਜਾਵੇਗੀ।';

  @override
  String get gameUiStartANewLevel => 'ਨਵਾਂ ਪੱਧਰ ਸ਼ੁਰੂ ਕਰਨਾ ਹੈ?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'ਪੱਧਰ ਬਦਲਣ ਨਾਲ ਸੰਭਾਲੀ ਖੇਡ ਬਦਲ ਜਾਵੇਗੀ।';

  @override
  String get gameUiChangeLevel => 'ਪੱਧਰ ਬਦਲੋ';

  @override
  String get gameUiPlayers => 'ਖਿਡਾਰੀ';

  @override
  String get gameUiPlayAgainstBot => 'ਬੌਟ ਵਿਰੁੱਧ ਖੇਡੋ';

  @override
  String get gameUi3Players => '3 ਖਿਡਾਰੀ';

  @override
  String get gameUi4Players => '4 ਖਿਡਾਰੀ';

  @override
  String get gameUiLevel1709305 => 'ਪੱਧਰ';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'ਪੱਧਰ $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 ਖਿਡਾਰੀ · ਪੱਧਰ $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · ਪਾਸਾ ਸੁੱਟੋ';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1, $value2 ਉੱਤੇ';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'ਸਵਾਲ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕਿਆ: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'ਸਹੀ ਜਵਾਬ!';

  @override
  String get gameUiWrongAnswer => 'ਗਲਤ ਜਵਾਬ';

  @override
  String get gameUiYouClaimedYourReward => 'ਤੁਸੀਂ ਆਪਣਾ ਇਨਾਮ ਪ੍ਰਾਪਤ ਕਰ ਲਿਆ!';

  @override
  String get gameUiAddedToYourTotalPoints => 'ਤੁਹਾਡੇ ਕੁੱਲ ਅੰਕਾਂ ਵਿੱਚ ਜੋੜ ਦਿੱਤਾ ਗਿਆ।';

  @override
  String get gameUiTheCorrectAnswerWas => 'ਸਹੀ ਜਵਾਬ ਸੀ:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 ਅੰਕਾਂ ਦਾ ਇਨਾਮ ਗੁਆਚ ਗਿਆ।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'ਤੁਹਾਡੇ ਮੌਜੂਦਾ ਅੰਕ ਨਹੀਂ ਕੱਟੇ ਗਏ।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'ਕੱਲ੍ਹ ਮੁੜ ਆਓ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'ਸਵਾਲ ਲੋਡ ਨਹੀਂ ਹੋ ਸਕਿਆ।';

  @override
  String get gameUiYourReward677fa6e => 'ਤੁਹਾਡਾ ਇਨਾਮ';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 ਅੰਕ';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'ਇਸਨੂੰ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਸਹੀ ਜਵਾਬ ਦਿਓ!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'ਇੱਕ ਹੋਰ ਦੌਰ ਲਈ ਕੱਲ੍ਹ ਮੁੜ ਆਓ।';

  @override
  String get gameUiGreen => 'ਹਰਾ';

  @override
  String get gameUiBlue => 'ਨੀਲਾ';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ਸੋਚ ਰਿਹਾ ਹੈ';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ਇੱਕ ਗੋਟੀ ਚੁਣੋ';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ਪਾਸਾ ਸੁੱਟੋ';
  }

  @override
  String gameUiDice(String value1) {
    return 'ਪਾਸਾ $value1';
  }

  @override
  String get gameUiRollDice => 'ਪਾਸਾ ਸੁੱਟੋ';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 ਗੋਟੀ $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'ਖਿਡਾਰੀ $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'ਬੋਟ $value1';
  }

  @override
  String get gameUiBot => 'ਬੋਟ';

  @override
  String get gameUiHintInsufficientPoints => 'ਸੰਕੇਤ ਵਰਤਣ ਲਈ ਤੁਹਾਨੂੰ 20 ਅੰਕ ਚਾਹੀਦੇ ਹਨ।';

  @override
  String get gameUiHintPurchaseFailed => 'ਸੰਕੇਤ ਖਰੀਦਿਆ ਨਹੀਂ ਜਾ ਸਕਿਆ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get gameUiChessKing => 'ਰਾਜਾ';

  @override
  String get gameUiChessQueen => 'ਰਾਣੀ';

  @override
  String get gameUiChessRook => 'ਹਾਥੀ';

  @override
  String get gameUiChessBishop => 'ਊਠ';

  @override
  String get gameUiChessKnight => 'ਘੋੜਾ';

  @override
  String get gameUiChessPawn => 'ਪਿਆਦਾ';

  @override
  String get gameUiChessEmpty => 'ਖਾਲੀ';

  @override
  String get gameSceneLampAndFlowers => 'ਦੀਵਾ ਅਤੇ ਫੁੱਲ';

  @override
  String get gameSceneGardenFriends => 'ਬਾਗ਼ ਦੇ ਦੋਸਤ';

  @override
  String get gameSceneUnderwaterExplorers => 'ਪਾਣੀ ਹੇਠਲੇ ਖੋਜੀ';

  @override
  String get gameSceneOceanOrca => 'ਸਮੁੰਦਰੀ ਓਰਕਾ';

  @override
  String get gameSceneFoxInTheMeadow => 'ਮੈਦਾਨ ਵਿੱਚ ਲੂੰਬੜੀ';

  @override
  String get gameSceneYellowSubmarine => 'ਪੀਲੀ ਪਣਡੁੱਬੀ';

  @override
  String get gameSceneTurkeyInTheClearing => 'ਖੁੱਲ੍ਹੀ ਜਗ੍ਹਾ ਵਿੱਚ ਟਰਕੀ';

  @override
  String get gameSceneSafariWateringHole => 'ਸਫਾਰੀ ਦਾ ਪਾਣੀ ਪੀਣ ਵਾਲਾ ਤਲਾਅ';

  @override
  String get gameSceneJungleCompanions => 'ਜੰਗਲ ਦੇ ਸਾਥੀ';

  @override
  String get gameSceneGoldenPuppyGarden => 'ਸੁਨਹਿਰੀ ਕਤੂਰੇ ਦਾ ਬਾਗ਼';

  @override
  String get gameSceneSeaTurtleReef => 'ਸਮੁੰਦਰੀ ਕੱਛੂ ਦੀ ਚੱਟਾਨੀ ਪੱਟੀ';

  @override
  String get gameSceneCoralReefFriends => 'ਮੂੰਗੇ ਦੀ ਚੱਟਾਨ ਦੇ ਦੋਸਤ';

  @override
  String get gameSceneSharedClownfish => 'ਸਾਂਝੀ ਕਲਾਊਨਫਿਸ਼';

  @override
  String get gameSceneLittleDinosaur => 'ਨੰਨ੍ਹਾ ਡਾਇਨਾਸੌਰ';

  @override
  String get gameSceneSafariCompanions => 'ਸਫਾਰੀ ਦੇ ਸਾਥੀ';

  @override
  String get gameSceneSwirlingFlowers => 'ਘੁੰਮਦੇ ਫੁੱਲ';

  @override
  String get gameSceneGardenKitten => 'ਬਾਗ਼ ਦਾ ਬਿੱਲੀ ਦਾ ਬੱਚਾ';

  @override
  String get gameSceneBlueOcean => 'ਨੀਲਾ ਸਮੁੰਦਰ';

  @override
  String get gameSceneCastlePrincess => 'ਕਿਲ੍ਹੇ ਦੀ ਰਾਜਕੁਮਾਰੀ';

  @override
  String get gameSceneRedCar => 'ਲਾਲ ਕਾਰ';

  @override
  String get gameSceneGardenPuppy => 'ਬਾਗ਼ ਦਾ ਕਤੂਰਾ';

  @override
  String get gameSceneSpaceExplorer => 'ਪੁਲਾੜ ਖੋਜੀ';

  @override
  String get gameSceneEnchantedReadingForest => 'ਜਾਦੂਈ ਪੜ੍ਹਨ ਵਾਲਾ ਜੰਗਲ';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps ਅਨੰਤ ਚੱਕਰ';

  @override
  String get gameSceneAnsible => 'ਐਂਸੀਬਲ';

  @override
  String get gameSceneAws => 'ਏਡਬਲਯੂਐਸ';

  @override
  String get gameSceneAzure => 'ਅਜ਼ੂਰ';

  @override
  String get gameSceneBashScripting => 'Bash ਸਕ੍ਰਿਪਟਿੰਗ';

  @override
  String get gameSceneDocker => 'ਡੌਕਰ';

  @override
  String get gameSceneGcp => 'ਜੀਸੀਪੀ';

  @override
  String get gameSceneGit => 'ਗਿੱਟ';

  @override
  String get gameSceneHybridCloud => 'ਹਾਈਬ੍ਰਿਡ ਕਲਾਊਡ';

  @override
  String get gameSceneIbmCloud => 'ਆਈਬੀਐੱਮ ਕਲਾਊਡ';

  @override
  String get gameSceneJavascript => 'ਜਾਵਾਸਕ੍ਰਿਪਟ';

  @override
  String get gameSceneJenkins => 'ਜੈਂਕਿਨਜ਼';

  @override
  String get gameSceneKubernetes => 'ਕੁਬਰਨੇਟੀਜ਼';

  @override
  String get gameSceneLinux => 'ਲਿਨਕਸ';

  @override
  String get gameSceneMultiCloud => 'ਮਲਟੀ ਕਲਾਊਡ';

  @override
  String get gameSceneNetworking => 'ਨੈੱਟਵਰਕਿੰਗ';

  @override
  String get gameSceneOracleCloud => 'ਓਰੇਕਲ ਕਲਾਊਡ';

  @override
  String get gameScenePerl => 'ਪਰਲ';

  @override
  String get gameScenePowershell => 'ਪਾਵਰਸ਼ੈੱਲ';

  @override
  String get gameScenePython => 'ਪਾਈਥਨ';

  @override
  String get gameSceneRuby => 'ਰੂਬੀ';

  @override
  String get gameSceneTerraform => 'ਟੈਰਾਫਾਰਮ';

  @override
  String get gameSceneWinterFestivalFair => 'ਸਰਦੀਆਂ ਦੇ ਤਿਉਹਾਰ ਦਾ ਮੇਲਾ';

  @override
  String get gameSceneArmoredHeroCloseUp => 'ਕਵਚਧਾਰੀ ਨਾਇਕ ਦਾ ਨਜ਼ਦੀਕੀ ਦ੍ਰਿਸ਼';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ਕਿਰਮਚੀ ਰੰਗ ਵਿੱਚ ਕਵਚਧਾਰੀ ਨਾਇਕ';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ਗੂੜ੍ਹੇ ਰੰਗ ਦੇ ਪਲੂਮੇਰੀਆ ਫੁੱਲ';

  @override
  String get gameSceneMangroveBoardwalk => 'ਮੈਂਗਰੋਵ ਦਾ ਤਖ਼ਤੇ ਵਾਲਾ ਰਸਤਾ';

  @override
  String get gameSceneTropicalPalmReflections => 'ਖੰਡੀ ਖਜੂਰ ਦੇ ਦਰੱਖਤਾਂ ਦੇ ਪ੍ਰਤੀਬਿੰਬ';

  @override
  String get gameSceneMaskedFigureInShadow => 'ਪਰਛਾਵੇਂ ਵਿੱਚ ਨਕਾਬਪੋਸ਼ ਆਕ੍ਰਿਤੀ';

  @override
  String get gameSceneElectricCompanionAtSunset => 'ਸੂਰਜ ਡੁੱਬਣ ਵੇਲੇ ਬਿਜਲਈ ਸਾਥੀ';

  @override
  String get gameSceneTrainerAndFireDragon => 'ਟ੍ਰੇਨਰ ਅਤੇ ਅੱਗ ਵਾਲਾ ਅਜਗਰ';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'ਗਹਿਣਿਆਂ ਨਾਲ ਜੜਿਆ ਕੁਸ਼ਤੀ ਦਾ ਨਕਾਬ';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ਲਾਲ ਬੁਰਸ਼ ਦੇ ਝਟਕਿਆਂ ਵਿੱਚ ਪਹਿਲਵਾਨ';

  @override
  String get gameSceneWrestlingChampionSalute => 'ਕੁਸ਼ਤੀ ਚੈਂਪੀਅਨ ਦੀ ਸਲਾਮੀ';

  @override
  String get gameSceneMorningAtTheBakery => 'ਬੇਕਰੀ ਵਿੱਚ ਸਵੇਰ';

  @override
  String get gameSceneGreenhousePottingBench => 'ਗ੍ਰੀਨਹਾਊਸ ਵਿੱਚ ਗਮਲੇ ਲਾਉਣ ਵਾਲੀ ਮੇਜ਼';

  @override
  String get gameSceneHarborFishingBoat => 'ਬੰਦਰਗਾਹ ਦੀ ਮੱਛੀ ਫੜਨ ਵਾਲੀ ਕਿਸ਼ਤੀ';

  @override
  String get gameSceneAtticObservatory => 'ਚੁਬਾਰੇ ਦੀ ਵੇਧਸ਼ਾਲਾ';

  @override
  String get gameSceneToyMakerSWorkshop => 'ਖਿਡੌਣੇ ਬਣਾਉਣ ਵਾਲੇ ਦੀ ਵਰਕਸ਼ਾਪ';

  @override
  String get gameSceneWoodlandCampsite => 'ਜੰਗਲੀ ਕੈਂਪ ਦੀ ਥਾਂ';

  @override
  String get gameSceneAfternoonMusicRoom => 'ਦੁਪਹਿਰ ਦਾ ਸੰਗੀਤ ਕਮਰਾ';

  @override
  String get gameSceneSeasideIceCreamStand => 'ਸਮੁੰਦਰ ਕੰਢੇ ਆਈਸ ਕਰੀਮ ਦਾ ਸਟਾਲ';

  @override
  String get gameSceneLibraryReadingNook => 'ਲਾਇਬ੍ਰੇਰੀ ਦਾ ਪੜ੍ਹਨ ਵਾਲਾ ਕੋਨਾ';

  @override
  String get gameSceneSewingStudio => 'ਸਿਲਾਈ ਸਟੂਡੀਓ';

  @override
  String get gameSceneFruitMarket => 'ਫਲਾਂ ਦੀ ਮੰਡੀ';

  @override
  String get gameSceneKoiCourtyard => 'ਕੋਈ ਮੱਛੀਆਂ ਵਾਲਾ ਵਿਹੜਾ';

  @override
  String get gameSceneArtistSAtelier => 'ਕਲਾਕਾਰ ਦਾ ਸਟੂਡੀਓ';

  @override
  String get gameSceneMountainRailway => 'ਪਹਾੜੀ ਰੇਲਵੇ';

  @override
  String get gameSceneCountryKitchen => 'ਦੇਸੀ ਰਸੋਈ';

  @override
  String get gameScenePotteryWorkshop => 'ਮਿੱਟੀ ਦੇ ਭਾਂਡੇ ਬਣਾਉਣ ਦੀ ਵਰਕਸ਼ਾਪ';

  @override
  String get gameSceneBeachPicnic => 'ਸਮੁੰਦਰੀ ਤੱਟ ਦੀ ਪਿਕਨਿਕ';

  @override
  String get gameSceneFlowerShop => 'ਫੁੱਲਾਂ ਦੀ ਦੁਕਾਨ';

  @override
  String get gameSceneClockmakerSWorkshop => 'ਘੜੀਸਾਜ਼ ਦੀ ਵਰਕਸ਼ਾਪ';

  @override
  String get gameSceneRainyCafeTerrace => 'ਬਰਸਾਤੀ ਕੈਫੇ ਦੀ ਛੱਤ';

  @override
  String get gameSceneCastleHerbGarden => 'ਕਿਲ੍ਹੇ ਦਾ ਜੜ੍ਹੀ-ਬੂਟੀਆਂ ਦਾ ਬਾਗ਼';

  @override
  String get gameSceneClassroomArtCorner => 'ਜਮਾਤ ਦਾ ਕਲਾ ਕੋਨਾ';

  @override
  String get gameSceneAquariumShop => 'ਐਕੁਏਰੀਅਮ ਦੀ ਦੁਕਾਨ';

  @override
  String get gameSceneAutumnLeafCollection => 'ਪਤਝੜ ਦੇ ਪੱਤਿਆਂ ਦਾ ਸੰਗ੍ਰਹਿ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'ਚੰਨ ਹੇਠ ਇਕੱਲਾ ਦਰੱਖਤ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ਟਹਿਣੀ ਉੱਤੇ ਪਤਝੜ ਦਾ ਫੁੱਲ';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'ਹਰੇ ਪੱਤਿਆਂ ਵਿਚਕਾਰ ਲੂੰਬੜੀ';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'ਕੁਮੁਦਨੀਆਂ ਨਾਲ ਢਕੀ ਝੀਲ ਉੱਤੇ ਡੋਂਗੀ';

  @override
  String get gameSceneDewDropsOnALeaf => 'ਪੱਤੇ ਉੱਤੇ ਤ੍ਰੇਲ ਦੀਆਂ ਬੂੰਦਾਂ';

  @override
  String get gameSceneStagInATurquoiseLake => 'ਫ਼ਿਰੋਜ਼ੀ ਝੀਲ ਵਿੱਚ ਨਰ ਹਿਰਨ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'ਸੰਤਰੀ ਚੰਨ ਹੇਠ ਸਾਈਕਲ';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'ਵਾਦੀ ਦੇ ਉੱਪਰ ਚਿੱਟਾ ਬਾਘ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'ਨੀਲੇ ਪਾਣੀ ਵਿੱਚ ਦੋ ਰੁੱਖ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'ਵਫ਼ਾਦਾਰ ਕੁੱਤੇ ਦੇ ਕੋਲ ਮੱਛੀ ਫੜਨਾ';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'ਪਹਾੜੀ ਝੀਲ ਕੋਲ ਲਿਲੀ ਦੇ ਫੁੱਲ';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'ਗੁਲਾਬੀ ਦਰਿਆ ਕਿਨਾਰੇ ਹਿਰਨ';

  @override
  String get gameSceneTropicalHutAtSunset => 'ਸੂਰਜ ਡੁੱਬਣ ਵੇਲੇ ਗਰਮ ਖੰਡੀ ਝੌਂਪੜੀ';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ਐਲਪਾਈਨ ਵਾਦੀ ਨੂੰ ਵੇਖਦੀ ਲੂੰਬੜੀ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'ਜਾਦੂਈ ਬਾਗ਼ ਵਿੱਚੋਂ ਸੂਰਜ ਡੁੱਬਣ ਦਾ ਦ੍ਰਿਸ਼';

  @override
  String get learningControlTitle => 'DevOps ਸਿੱਖੋ';

  @override
  String get learningControlAllCategories => 'ਸਾਰੀਆਂ ਸ਼੍ਰੇਣੀਆਂ';

  @override
  String get learningControlSearchCards => 'ਕਾਰਡ ਖੋਜੋ';

  @override
  String get learningControlClearSearch => 'ਖੋਜ ਮਿਟਾਓ';

  @override
  String get learningControlCategory => 'ਸ਼੍ਰੇਣੀ';

  @override
  String get learningControlShowAll => 'ਸਾਰੇ ਕਾਰਡ ਦਿਖਾਓ';

  @override
  String learningControlShowSaved(int count) {
    return 'ਸੰਭਾਲੇ ਕਾਰਡ ਦਿਖਾਓ ($count)';
  }

  @override
  String get learningControlShuffleOff => 'ਸ਼ਫਲ ਬੰਦ ਕਰੋ';

  @override
  String get learningControlShuffleOn => 'ਕਾਰਡ ਸ਼ਫਲ ਕਰੋ';

  @override
  String get learningControlAutoOff => 'ਆਟੋ ਸਵਾਈਪ ਬੰਦ ਕਰੋ';

  @override
  String get learningControlAutoOn => 'ਹਰ 10 ਸਕਿੰਟ ਬਾਅਦ ਆਟੋ ਸਵਾਈਪ';

  @override
  String get learningControlNoSaved => 'ਹਾਲੇ ਕੋਈ ਕਾਰਡ ਸੰਭਾਲਿਆ ਨਹੀਂ ਗਿਆ';

  @override
  String get learningControlNoMatches => 'ਕੋਈ ਮੇਲ ਖਾਂਦਾ ਕਾਰਡ ਨਹੀਂ';

  @override
  String get learningControlResetFilters => 'ਫਿਲਟਰ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get learningControlPrevious => 'ਪਿਛਲਾ';

  @override
  String get learningControlNext => 'ਅਗਲਾ';

  @override
  String get learningControlProgress => 'ਤਰੱਕੀ';

  @override
  String get learningControlRemoveSaved => 'ਸੰਭਾਲੇ ਹੋਏ ਵਿੱਚੋਂ ਹਟਾਓ';

  @override
  String get learningControlSaveCard => 'ਕਾਰਡ ਸੰਭਾਲੋ';

  @override
  String get learningControlExample => 'ਉਦਾਹਰਨ';

  @override
  String get learningControlCopyExample => 'ਉਦਾਹਰਨ ਕਾਪੀ ਕਰੋ';

  @override
  String get learningControlExampleCopied => 'ਉਦਾਹਰਨ ਕਾਪੀ ਹੋ ਗਈ';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'ਲੈਵਲ $value1 ਪੂਰਾ ਹੋਇਆ';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'ਲੈਵਲ $value1 ਖੇਡੋ';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'ਅਨਲੌਕ ਕਰਨ ਲਈ ਲੈਵਲ $value1 ਪੂਰਾ ਕਰੋ';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'ਰੋਜ਼ਾਨਾ ਲੌਗਇਨ ਬੋਨਸ';

  @override
  String get sharedDialogThanksForComingBack => 'ਵਾਪਸ ਆਉਣ ਲਈ ਧੰਨਵਾਦ!';

  @override
  String get sharedDialogDailyRewardAdded => 'ਤੁਹਾਡਾ ਰੋਜ਼ਾਨਾ ਇਨਾਮ ਤੁਹਾਡੇ ਕੁੱਲ ਪੁਆਇੰਟਾਂ ਵਿੱਚ ਜੋੜ ਦਿੱਤਾ ਗਿਆ ਹੈ।';

  @override
  String get sharedDialogAwesome => 'ਸ਼ਾਨਦਾਰ!';

  @override
  String get accountWelcomeGuest => 'ਮਹਿਮਾਨ';

  @override
  String get accountWelcomeGuestUser => 'ਮਹਿਮਾਨ ਵਰਤੋਂਕਾਰ';

  @override
  String get accountWelcomeUser => 'ਵਰਤੋਂਕਾਰ';

  @override
  String get accountWelcomePlayingAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਖੇਡ ਰਹੇ ਹੋ';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google ਖਾਤਾ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get accountWelcomeGoogleConnected => 'Google ਖਾਤਾ ਸਫਲਤਾਪੂਰਵਕ ਕਨੈਕਟ ਹੋ ਗਿਆ! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'ਸਾਈਨ-ਇਨ ਰੱਦ ਕੀਤਾ ਗਿਆ।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'ਕਨੈਕਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'ਸਾਈਨ ਆਉਟ ਕਰੋ';

  @override
  String get accountWelcomeSignOutTitle => 'ਸਾਈਨ ਆਉਟ ਕਰਨਾ ਹੈ?';

  @override
  String get accountWelcomeSignOutMessage => 'ਕੀ ਤੁਸੀਂ ਵਾਕਈ ਸਾਈਨ ਆਉਟ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ? ਆਪਣੀ ਸੁਰੱਖਿਅਤ ਕੀਤੀ ਪ੍ਰਗਤੀ ਤੱਕ ਪਹੁੰਚ ਕਰਨ ਲਈ ਤੁਹਾਨੂੰ ਦੁਬਾਰਾ ਸਾਈਨ ਇਨ ਕਰਨਾ ਪਵੇਗਾ।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'ਸਾਈਨ ਆਉਟ ਅਸਫਲ ਰਿਹਾ: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ਐਪ ਡਾਟਾ ਰੀਸੈਟ ਕਰਨਾ ਹੈ?';

  @override
  String get accountWelcomeResetAppMessage => 'ਇਹ ਤੁਹਾਡੇ ਸਾਰੇ ਪੁਆਇੰਟ, ਸਟ੍ਰੀਕਸ, ਗੇਮ ਇਤਿਹਾਸ ਅਤੇ ਸੈਟਿੰਗਾਂ ਨੂੰ ਪੱਕੇ ਤੌਰ \'ਤੇ ਮਿਟਾ ਦੇਵੇਗਾ। ਤੁਹਾਨੂੰ ਸਾਈਨ ਆਉਟ ਕਰ ਦਿੱਤਾ ਜਾਵੇਗਾ ਅਤੇ ਸ਼ੁਰੂਆਤੀ ਸਕ੍ਰੀਨ \'ਤੇ ਵਾਪਸ ਭੇਜ ਦਿੱਤਾ ਜਾਵੇਗਾ। ਇਸਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get accountWelcomeResetEverything => 'ਸਭ ਕੁਝ ਰੀਸੈਟ ਕਰੋ';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ਰੀਸੈਟ ਅਸਫਲ ਰਿਹਾ: $value1';
  }

  @override
  String get accountWelcomeCancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get accountWelcomeResetAppData => 'ਐਪ ਡਾਟਾ ਰੀਸੈਟ ਕਰੋ';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'ਸਾਰੇ ਪੁਆਇੰਟ, ਸਟ੍ਰੀਕਸ ਅਤੇ ਸੈਟਿੰਗਾਂ ਸਾਫ਼ ਕਰੋ';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ਐਪ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'ਅਨੁਵਾਦ ਅਜੇ ਉਪਲਬਧ ਨਹੀਂ ਹੈ';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google ਨਾਲ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get accountWelcomeSigningIn => 'ਸਾਈਨ ਇਨ ਹੋ ਰਿਹਾ ਹੈ...';

  @override
  String get accountWelcomeOr => 'ਜਾਂ';

  @override
  String get accountWelcomeContinueAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'ਤੁਸੀਂ ਬਾਅਦ ਵਿੱਚ ਆਪਣੀ ਪ੍ਰੋਫਾਈਲ ਤੋਂ ਸਾਈਨ ਇਨ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'ਤੁਸੀਂ ਮਹਿਮਾਨ ਵਜੋਂ ਸ਼ੁਰੂਆਤ ਕਰ ਸਕਦੇ ਹੋ ਅਤੇ ਬਾਅਦ ਵਿੱਚ ਸਾਈਨ ਇਨ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get accountWelcomeGreetingGuest => 'ਜੀ ਆਇਆਂ ਨੂੰ';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'ਜੀ ਆਇਆਂ ਨੂੰ, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ਸਾਈਨ-ਇਨ ਪੂਰਾ ਹੋਇਆ, ਪਰ ਕੋਈ ਵਰਤੋਂਕਾਰ ਖਾਤਾ ਵਾਪਸ ਨਹੀਂ ਮਿਲਿਆ।';

  @override
  String get accountWelcomeErrorEmailExists => 'ਇਸ ਈਮੇਲ ਵਿੱਚ ਪਹਿਲਾਂ ਹੀ ਕਿਸੇ ਹੋਰ ਸਾਈਨ-ਇਨ ਤਰੀਕੇ ਦੀ ਵਰਤੋਂ ਕਰਕੇ ਖਾਤਾ ਹੈ।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ਇਹ Google ਖਾਤਾ ਪਹਿਲਾਂ ਹੀ ਕਿਸੇ ਹੋਰ ਖਾਤੇ ਨਾਲ ਲਿੰਕ ਹੈ।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google ਪ੍ਰਮਾਣੀਕਰਨ ਕ੍ਰੈਡੈਂਸ਼ੀਅਲ ਅਵੈਧ ਹੈ ਜਾਂ ਮਿਆਦ ਪੁੱਗ ਚੁੱਕੀ ਹੈ।';

  @override
  String get accountWelcomeErrorUserDisabled => 'ਇਹ ਖਾਤਾ ਬੰਦ ਕਰ ਦਿੱਤਾ ਗਿਆ ਹੈ।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ਸਾਈਨ-ਇਨ ਇਸ ਵੇਲੇ ਸਮਰੱਥ ਨਹੀਂ ਹੈ।';

  @override
  String get accountWelcomeErrorNetwork => 'ਨੈੱਟਵਰਕ ਗਲਤੀ। ਕਿਰਪਾ ਕਰਕੇ ਆਪਣਾ ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਚੈੱਕ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'ਬਹੁਤ ਸਾਰੀਆਂ ਸਾਈਨ-ਇਨ ਕੋਸ਼ਿਸ਼ਾਂ। ਕਿਰਪਾ ਕਰਕੇ ਉਡੀਕ ਕਰੋ ਅਤੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'ਕੋਈ ਵਾਧੂ ਗਲਤੀ ਜਾਣਕਾਰੀ ਨਹੀਂ।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ਸਾਈਨ-ਇਨ ਅਸਫਲ ਰਿਹਾ।\n\nਕੋਡ: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ਸਾਈਨ-ਇਨ ਗਲਤੀ:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਜਾਰੀ ਰੱਖਣ ਵਿੱਚ ਅਸਮਰੱਥ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ਸਾਈਨ-ਇਨ ਜਲਦੀ ਹੀ ਉਪਲਬਧ ਹੋਵੇਗਾ।';

  @override
  String get accountWelcomeLoginTagline => 'ਸਿੱਖੋ • ਅਭਿਆਸ ਕਰੋ • ਮੁਕਾਬਲਾ ਕਰੋ • ਕਮਾਓ';

  @override
  String get accountWelcomeCountryRegion => 'ਦੇਸ਼ / ਖੇਤਰ';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'ਦੇਸ਼ / ਖੇਤਰ: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ਦੇਸ਼ ਖੋਜੋ';

  @override
  String get accountWelcomeCountryNotSelected => 'ਚੁਣਿਆ ਨਹੀਂ ਗਿਆ';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz ਕਿਉਂ?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ ਅਭਿਆਸ ਸਵਾਲ';

  @override
  String get accountWelcomeFeatureLanguages => 'ਬਹੁ-ਭਾਸ਼ਾ ਸਹਾਇਤਾ';

  @override
  String get accountWelcomeFeatureStreaks => 'ਸਟ੍ਰੀਕਸ ਅਤੇ ਲੀਡਰਬੋਰਡਸ';

  @override
  String get accountWelcomeFeatureGames => 'ਗੇਮਾਂ ਅਤੇ ਚੁਣੌਤੀਆਂ';

  @override
  String get accountWelcomeFeatureCloud => 'ਕਲਾਉਡ ਅਤੇ DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'ਬੋਨਸ ਅਤੇ ਇਨਾਮ';

  @override
  String get accountWelcomePracticeOnTheGo => 'ਚੱਲਦੇ-ਫਿਰਦੇ ਅਭਿਆਸ ਕਰੋ';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ਐਪ ਇੰਸਟਾਲ ਕਰੋ ਅਤੇ ਕਿਤੇ ਵੀ, ਔਫਲਾਈਨ ਸਿੱਖੋ।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play \'ਤੇ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String achLocStreakTitle(String days) {
    return '$days ਦਿਨ ਦੀ ਲੜੀ';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days ਦਿਨਾਂ ਦੀ ਲੜੀ ਬਣਾਈ ਰੱਖੋ।';
  }

  @override
  String get achLocYearStreakTitle => '1 ਸਾਲ ਦੀ ਲੜੀ';

  @override
  String get achLocFirstQuizTitle => 'ਪਹਿਲਾ ਕਵਿਜ਼';

  @override
  String get achLocFirstQuizDescription => 'ਆਪਣਾ ਪਹਿਲਾ ਕਵਿਜ਼ ਪੂਰਾ ਕਰੋ।';

  @override
  String get achLocQuiz10Title => 'ਕਵਿਜ਼ ਖੋਜੀ';

  @override
  String get achLocQuiz10Description => '10 ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocPoints1000Title => '1000 ਅੰਕ';

  @override
  String get achLocPoints1000Description => 'Quiz ਵਿੱਚ ਕੁੱਲ 1000 ਅੰਕ ਕਮਾਓ।';

  @override
  String get achLocPerfectScoreTitle => 'ਪੂਰਾ ਸਕੋਰ';

  @override
  String get achLocPerfectScoreDescription => 'ਕਿਸੇ ਵੀ ਕਵਿਜ਼ ਵਿੱਚ 100% ਸਕੋਰ ਕਰੋ।';

  @override
  String get achLocQuiz25Title => 'ਕਵਿਜ਼ ਪ੍ਰੇਮੀ';

  @override
  String get achLocQuiz25Description => '25 ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocQuiz50Title => 'ਕਵਿਜ਼ ਮਾਸਟਰ';

  @override
  String get achLocQuiz50Description => '50 ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocQuiz100Title => 'ਸੈਂਕੜਾ ਕਲੱਬ';

  @override
  String get achLocQuiz100Description => '100 ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocQuiz250Title => 'ਕਵਿਜ਼ ਲੈਜੈਂਡ';

  @override
  String get achLocQuiz250Description => '250 ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocPoints5000Title => '5,000 ਅੰਕ';

  @override
  String get achLocPoints5000Description => 'ਕੁੱਲ 5,000 ਅੰਕ ਕਮਾਓ।';

  @override
  String get achLocPoints10000Title => '10,000 ਅੰਕ';

  @override
  String get achLocPoints10000Description => 'ਕੁੱਲ 10,000 ਅੰਕ ਕਮਾਓ।';

  @override
  String get achLocPoints50000Title => '50,000 ਅੰਕ';

  @override
  String get achLocPoints50000Description => 'ਕੁੱਲ 50,000 ਅੰਕ ਕਮਾਓ।';

  @override
  String get achLocPoints100000Title => '100,000 ਅੰਕ';

  @override
  String get achLocPoints100000Description => 'ਕੁੱਲ 100,000 ਅੰਕ ਕਮਾਓ।';

  @override
  String get achLocDaily1Title => 'ਰੋਜ਼ਾਨਾ ਸ਼ੁਰੂਆਤ';

  @override
  String get achLocDaily1Description => 'ਆਪਣਾ ਪਹਿਲਾ ਰੋਜ਼ਾਨਾ ਕਵਿਜ਼ ਪੂਰਾ ਕਰੋ।';

  @override
  String get achLocDaily7Title => 'ਰੋਜ਼ਾਨਾ ਆਦਤ';

  @override
  String get achLocDaily7Description => '7 ਰੋਜ਼ਾਨਾ ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocDaily30Title => 'ਰੋਜ਼ਾਨਾ ਚੈਂਪੀਅਨ';

  @override
  String get achLocDaily30Description => '30 ਰੋਜ਼ਾਨਾ ਕਵਿਜ਼ ਪੂਰੇ ਕਰੋ।';

  @override
  String get achLocSets5Title => 'ਸੈੱਟ ਸ਼ੁਰੂਆਤੀ';

  @override
  String get achLocSets5Description => '5 ਕਵਿਜ਼ ਸੈੱਟ ਮੁਕੰਮਲ ਕਰੋ।';

  @override
  String get achLocSets25Title => 'ਸੈੱਟ ਸੰਗ੍ਰਹਿਕਾਰ';

  @override
  String get achLocSets25Description => '25 ਕਵਿਜ਼ ਸੈੱਟ ਮੁਕੰਮਲ ਕਰੋ।';

  @override
  String get achLocSets50Title => 'ਸੈੱਟ ਮਾਸਟਰ';

  @override
  String get achLocSets50Description => '50 ਕਵਿਜ਼ ਸੈੱਟ ਮੁਕੰਮਲ ਕਰੋ।';

  @override
  String get achLocSets100Title => 'ਸੈੱਟ ਲੈਜੈਂਡ';

  @override
  String get achLocSets100Description => '100 ਕਵਿਜ਼ ਸੈੱਟ ਮੁਕੰਮਲ ਕਰੋ।';

  @override
  String get achLocCert1Title => 'ਪਹਿਲਾ ਸਰਟੀਫਿਕੇਟ';

  @override
  String get achLocCert1Description => 'ਆਪਣਾ ਪਹਿਲਾ ਸ਼੍ਰੇਣੀ ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਾਪਤ ਕਰੋ।';

  @override
  String get achLocCert5Title => 'ਪ੍ਰਮਾਣਿਤ ਮਾਹਰ';

  @override
  String get achLocCert5Description => '5 ਸ਼੍ਰੇਣੀ ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਾਪਤ ਕਰੋ।';

  @override
  String get achLocCert21Title => 'ਪੂਰਨ ਪ੍ਰਮਾਣਿਤ';

  @override
  String get achLocCert21Description => 'ਸਾਰੀਆਂ 21 ਸ਼੍ਰੇਣੀਆਂ ਵਿੱਚ ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਾਪਤ ਕਰੋ।';

  @override
  String get achLocThemeFreeValentinesWeek => 'ਹਰ ਸਾਲ 7-14 ਫ਼ਰਵਰੀ ਮੁਫ਼ਤ';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ਹਰ ਸਾਲ 8-15 ਮਾਰਚ ਮੁਫ਼ਤ';

  @override
  String get achLocThemeLight => 'ਹਲਕਾ';

  @override
  String get achLocThemeDark => 'ਗੂੜ੍ਹਾ';

  @override
  String get achLocThemeSakura => 'ਸਾਕੁਰਾ';

  @override
  String get achLocThemeSunset => 'ਸੂਰਜ ਡੁੱਬਣਾ';

  @override
  String get achLocThemeCoffee => 'ਕੌਫ਼ੀ';

  @override
  String get achLocThemeTea => 'ਚਾਹ';

  @override
  String get achLocThemeOcean => 'ਸਮੁੰਦਰ';

  @override
  String get achLocThemeSolarFlare => 'ਸੋਲਰ ਫਲੇਅਰ';

  @override
  String get achLocThemeForest => 'ਜੰਗਲ';

  @override
  String get achLocThemeAurora => 'ਅਰੋਰਾ';

  @override
  String get achLocThemeMatrix => 'ਮੈਟ੍ਰਿਕਸ';

  @override
  String get achLocThemeCyberPurple => 'ਸਾਈਬਰ ਪਰਪਲ';

  @override
  String get achLocThemeInferno => 'ਇਨਫਰਨੋ';

  @override
  String get achLocThemeMidnight => 'ਮਿਡਨਾਈਟ';

  @override
  String get achLocThemeDarkGrey => 'ਗੂੜ੍ਹਾ ਸਲੇਟੀ';

  @override
  String get achLocThemeBarbee => 'ਬਾਰਬੀ';

  @override
  String get achLocThemeValentineDay => 'ਵੈਲੇਨਟਾਈਨ ਡੇ';

  @override
  String get achLocThemeDqSpecial => 'DQ ਸਪੈਸ਼ਲ';

  @override
  String get achLocThemeArmy => 'ਆਰਮੀ';

  @override
  String get achLocThemeSpiderMan => 'ਸਪਾਈਡਰ-ਮੈਨ';

  @override
  String get achLocThemeKrrish => 'ਕ੍ਰਿਸ਼';

  @override
  String get achLocThemeIronMan => 'ਆਇਰਨ ਮੈਨ';

  @override
  String get achLocThemeCaptainAmerica => 'ਕੈਪਟਨ ਅਮਰੀਕਾ';

  @override
  String get achLocThemeThor => 'ਥੋਰ';

  @override
  String get achLocThemeHulk => 'ਹਲਕ';

  @override
  String get achLocThemeBlackWidow => 'ਬਲੈਕ ਵਿਡੋ';

  @override
  String get achLocThemeHawkeye => 'ਹਾਕਆਈ';

  @override
  String get achLocThemeBlackPanther => 'ਬਲੈਕ ਪੈਂਥਰ';

  @override
  String get achLocThemeScarletWitch => 'ਸਕਾਰਲੇਟ ਵਿਚ';

  @override
  String get achLocThemeVision => 'ਵਿਜ਼ਨ';

  @override
  String get achLocThemeAntMan => 'ਐਂਟ-ਮੈਨ';

  @override
  String get achLocThemeCaptainMarvel => 'ਕੈਪਟਨ ਮਾਰਵਲ';

  @override
  String get achLocThemeDoctorStrange => 'ਡਾਕਟਰ ਸਟ੍ਰੇਂਜ';

  @override
  String get achLocThemeAvengers => 'ਅਵੈਂਜਰਸ';

  @override
  String get achLocThemeBatman => 'ਬੈਟਮੈਨ';

  @override
  String get achLocThemeSuperman => 'ਸੁਪਰਮੈਨ';

  @override
  String get achLocThemeWonderWoman => 'ਵੰਡਰ ਵੂਮੈਨ';

  @override
  String get achLocThemeFlash => 'ਫਲੈਸ਼';

  @override
  String get achLocThemeAquaman => 'ਐਕਵਾਮੈਨ';

  @override
  String get achLocThemeGreenLantern => 'ਗ੍ਰੀਨ ਲੈਂਟਰਨ';

  @override
  String get achLocThemeCyborg => 'ਸਾਈਬੋਰਗ';

  @override
  String get achLocThemeSupergirl => 'ਸੁਪਰਗਰਲ';

  @override
  String get achLocThemeDc => 'DC ਹੀਰੋਜ਼';

  @override
  String get achLocThemeRainbow => 'ਸਤਰੰਗੀ ਪੀਂਘ';

  @override
  String get achLocThemeDiamond => 'ਹੀਰਾ';

  @override
  String get achLocThemeLegendary => 'ਲੈਜੈਂਡਰੀ';

  @override
  String get gameHintCmd001LsLa => 'ਸਾਰੀਆਂ ਫ਼ਾਈਲਾਂ ਵੇਰਵਿਆਂ ਸਮੇਤ ਸੂਚੀਬੱਧ ਕਰੋ';

  @override
  String get gameHintCmd002Grep => 'ਪੈਟਰਨ ਨਾਲ ਟੈਕਸਟ ਖੋਜੋ';

  @override
  String get gameHintCmd003Chmod => 'ਫ਼ਾਈਲ ਦੀਆਂ ਇਜਾਜ਼ਤਾਂ ਬਦਲੋ';

  @override
  String get gameHintCmd004DfH => 'ਖਾਲੀ ਡਿਸਕ ਸਪੇਸ ਦਿਖਾਓ';

  @override
  String get gameHintCmd005TailF => 'ਵਧ ਰਹੀ ਲੌਗ ਫ਼ਾਈਲ ਨੂੰ ਫਾਲੋ ਕਰੋ';

  @override
  String get gameHintCmd006PsAux => 'ਚੱਲ ਰਹੀਆਂ ਪ੍ਰਕਿਰਿਆਵਾਂ ਦੀ ਸੂਚੀ ਬਣਾਓ';

  @override
  String get gameHintCmd007GitClone => 'ਰਿਮੋਟ ਰਿਪੋਜ਼ਟਰੀ ਦੀ ਕਾਪੀ ਬਣਾਓ';

  @override
  String get gameHintCmd008GitStash => 'ਬਿਨਾਂ ਕਮਿਟ ਕੀਤੀਆਂ ਤਬਦੀਲੀਆਂ ਨੂੰ ਇੱਕ ਪਾਸੇ ਰੱਖੋ';

  @override
  String get gameHintCmd009GitRebase => 'ਕਮਿਟਾਂ ਨੂੰ ਨਵੇਂ ਆਧਾਰ ਉੱਤੇ ਦੁਬਾਰਾ ਲਾਗੂ ਕਰੋ';

  @override
  String get gameHintCmd010GitBlame => 'ਦਿਖਾਓ ਕਿ ਹਰ ਲਾਈਨ ਕਿਸਨੇ ਬਦਲੀ';

  @override
  String get gameHintCmd011DockerPs => 'ਚੱਲ ਰਹੇ ਕੰਟੇਨਰਾਂ ਦੀ ਸੂਚੀ ਬਣਾਓ';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile ਤੋਂ ਇਮੇਜ ਬਣਾਓ';

  @override
  String get gameHintCmd013DockerLogs => 'ਕੰਟੇਨਰ ਦਾ ਆਊਟਪੁੱਟ ਦਿਖਾਓ';

  @override
  String get gameHintCmd014DockerExec => 'ਕੰਟੇਨਰ ਅੰਦਰ ਕਮਾਂਡ ਚਲਾਓ';

  @override
  String get gameHintCmd015KubectlGetPods => 'ਨੇਮਸਪੇਸ ਵਿੱਚ ਪੌਡਾਂ ਦੀ ਸੂਚੀ ਬਣਾਓ';

  @override
  String get gameHintCmd016KubectlApply => 'ਫ਼ਾਈਲ ਤੋਂ ਸਰੋਤ ਬਣਾਓ';

  @override
  String get gameHintCmd017KubectlDescribe => 'ਸਰੋਤ ਦੀ ਵਿਸਤ੍ਰਿਤ ਜਾਣਕਾਰੀ ਦਿਖਾਓ';

  @override
  String get gameHintCmd018KubectlScale => 'ਰੈਪਲਿਕਾਂ ਦੀ ਗਿਣਤੀ ਬਦਲੋ';

  @override
  String get gameHintCmd019TerraformInit => 'ਪ੍ਰੋਵਾਈਡਰ ਡਾਊਨਲੋਡ ਕਰੋ ਅਤੇ ਸੈੱਟਅੱਪ ਕਰੋ';

  @override
  String get gameHintCmd020TerraformPlan => 'ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਦੀਆਂ ਤਬਦੀਲੀਆਂ ਦਾ ਪੂਰਵ-ਦਰਸ਼ਨ ਵੇਖੋ';

  @override
  String get gameHintCmd021TerraformApply => 'ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਬਣਾਓ ਜਾਂ ਅੱਪਡੇਟ ਕਰੋ';

  @override
  String get gameHintCmd022TerraformDestroy => 'ਪ੍ਰਬੰਧਿਤ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਹਟਾਓ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ਆਟੋਮੇਸ਼ਨ ਪਲੇਬੁੱਕ ਚਲਾਓ';

  @override
  String get gameHintCmd024Ping => 'ICMP ਨਾਲ ਪਹੁੰਚਯੋਗਤਾ ਜਾਂਚੋ';

  @override
  String get gameHintCmd025Traceroute => 'ਹੋਸਟ ਤੱਕ ਦਾ ਰਸਤਾ ਦਿਖਾਓ';

  @override
  String get gameHintCmd026Curl => 'URL ਤੋਂ ਡਾਟਾ ਟ੍ਰਾਂਸਫਰ ਕਰੋ';

  @override
  String get gameHintCmd027Ssh => 'ਰਿਮੋਟ ਮਸ਼ੀਨ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਲੌਗ ਇਨ ਕਰੋ';

  @override
  String get gameHintCmd028CrontabE => 'ਨਿਰਧਾਰਤ ਕੰਮਾਂ ਨੂੰ ਸੰਪਾਦਿਤ ਕਰੋ';

  @override
  String get gameHintCmd029SystemctlStatus => 'ਸੇਵਾ ਦੀ ਸਥਿਤੀ ਜਾਂਚੋ';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes ਵਿੱਚ ਚਾਰਟ ਡਿਪਲੋਇ ਕਰੋ';

  @override
  String get gameHintWord001Git => 'ਸੋਰਸ ਕੋਡ ਵਿੱਚ ਤਬਦੀਲੀਆਂ ਨੂੰ ਟ੍ਰੈਕ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord002Aws => 'Amazon ਦਾ ਕਲਾਊਡ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord003Api => 'ਇੱਕ ਸਮਝੌਤਾ ਜੋ ਸਾਫ਼ਟਵੇਅਰ ਸਿਸਟਮਾਂ ਨੂੰ ਆਪਸ ਵਿੱਚ ਸੰਚਾਰ ਕਰਨ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord004Dns => 'ਡੋਮੇਨ ਨਾਮਾਂ ਨੂੰ IP ਪਤਿਆਂ ਵਿੱਚ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord005Cli => 'ਕਮਾਂਡਾਂ ਚਲਾਉਣ ਲਈ ਟੈਕਸਟ-ਆਧਾਰਿਤ ਇੰਟਰਫੇਸ।';

  @override
  String get gameHintWord006Cpu => 'ਹਦਾਇਤਾਂ ਨੂੰ ਚਲਾਉਣ ਵਾਲਾ ਪ੍ਰੋਸੈਸਰ।';

  @override
  String get gameHintWord007Ram => 'ਚੱਲ ਰਹੇ ਪ੍ਰੋਗਰਾਮਾਂ ਦੁਆਰਾ ਵਰਤੀ ਜਾਂਦੀ ਅਸਥਾਈ ਮੈਮੋਰੀ।';

  @override
  String get gameHintWord008Ssh => 'ਰਿਮੋਟ ਸ਼ੈੱਲ ਪਹੁੰਚ ਲਈ ਸੁਰੱਖਿਅਤ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord009Yaml => 'ਮਨੁੱਖਾਂ ਦੁਆਰਾ ਪੜ੍ਹਨਯੋਗ ਡਾਟਾ ਸੀਰੀਅਲਾਈਜ਼ੇਸ਼ਨ ਫਾਰਮੈਟ।';

  @override
  String get gameHintWord010Linux => 'ਓਪਨ-ਸੋਰਸ ਓਪਰੇਟਿੰਗ ਸਿਸਟਮ ਕਰਨਲ ਅਤੇ ਪਰਿਵਾਰ।';

  @override
  String get gameHintWord011Bash => 'ਇੱਕ ਪ੍ਰਸਿੱਧ Unix ਕਮਾਂਡ ਸ਼ੈੱਲ।';

  @override
  String get gameHintWord012Cloud => 'ਨੈੱਟਵਰਕ ਰਾਹੀਂ ਮੰਗ ਅਨੁਸਾਰ ਮਿਲਣ ਵਾਲੀ ਕੰਪਿਊਟਿੰਗ।';

  @override
  String get gameHintWord013Docker => 'ਕੰਟੇਨਰ ਬਣਾਉਣ ਅਤੇ ਚਲਾਉਣ ਲਈ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord014Azure => 'Microsoft ਦਾ ਕਲਾਊਡ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord015Python => 'ਵਿਆਪਕ ਤੌਰ ਉੱਤੇ ਵਰਤੀ ਜਾਂਦੀ ਸਕ੍ਰਿਪਟਿੰਗ ਅਤੇ ਪ੍ਰੋਗਰਾਮਿੰਗ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord016Github => 'ਇੱਕ ਪ੍ਰਸਿੱਧ ਹੋਸਟ ਕੀਤੀ Git ਸਹਿਯੋਗ ਸੇਵਾ।';

  @override
  String get gameHintWord017Bgp => 'ਰੂਟਿੰਗ ਪ੍ਰੋਟੋਕੋਲ ਜੋ ਖੁਦਮੁਖਤਿਆਰ ਸਿਸਟਮਾਂ ਵਿਚਕਾਰ ਰੂਟਾਂ ਦਾ ਆਦਾਨ-ਪ੍ਰਦਾਨ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord018Jenkins => 'ਆਟੋਮੇਸ਼ਨ ਸਰਵਰ ਜੋ ਅਕਸਰ CI ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord019Port => 'ਨੈੱਟਵਰਕ ਸੇਵਾਵਾਂ ਦੁਆਰਾ ਵਰਤਿਆ ਜਾਂਦਾ ਨੰਬਰ ਵਾਲਾ ਸਿਰਾ।';

  @override
  String get gameHintWord020Proxy => 'ਸਰਵਰ ਜੋ ਕਲਾਇੰਟਾਂ ਦੀਆਂ ਬੇਨਤੀਆਂ ਅੱਗੇ ਭੇਜਦਾ ਹੈ।';

  @override
  String get gameHintWord021Cache => 'ਵਾਰ-ਵਾਰ ਵਰਤੇ ਜਾਂਦੇ ਡਾਟਾ ਲਈ ਤੇਜ਼ ਸਟੋਰ।';

  @override
  String get gameHintWord022Cron => 'ਵਾਰ-ਵਾਰ ਚੱਲਣ ਵਾਲੀਆਂ ਕਮਾਂਡਾਂ ਲਈ Unix ਸ਼ੈਡਿਊਲਰ।';

  @override
  String get gameHintWord023Bicep => 'ਕੋਡ ਵਜੋਂ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਲਈ Azure ਦੀ ਘੋਸ਼ਣਾਤਮਕ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord024Apigee => 'ਕੇਂਦਰੀਕ੍ਰਿਤ API ਪ੍ਰਬੰਧਨ ਲਈ Google Cloud ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord025Root => 'Unix-ਵਰਗੇ ਸਿਸਟਮਾਂ ਉੱਤੇ ਵਿਸ਼ੇਸ਼ ਅਧਿਕਾਰਾਂ ਵਾਲਾ ਪ੍ਰਸ਼ਾਸਕ ਖਾਤਾ।';

  @override
  String get gameHintWord026Nginx => 'ਵੈੱਬ ਸਰਵਰ ਅਤੇ ਰਿਵਰਸ ਪ੍ਰੌਕਸੀ।';

  @override
  String get gameHintWord027Redis => 'ਇਨ-ਮੈਮੋਰੀ ਡਾਟਾ ਸਟੋਰ ਜੋ ਅਕਸਰ ਕੈਸ਼ ਵਜੋਂ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord028Mysql => 'ਪ੍ਰਸਿੱਧ ਰਿਲੇਸ਼ਨਲ ਡਾਟਾਬੇਸ ਸਿਸਟਮ।';

  @override
  String get gameHintWord029Ruby => 'ਪ੍ਰੋਗਰਾਮਿੰਗ ਭਾਸ਼ਾ ਜੋ Chef ਵਰਗੇ ਟੂਲਾਂ ਵਿੱਚ ਵਰਤੀ ਜਾਂਦੀ ਹੈ।';

  @override
  String get gameHintWord030Helm => 'ਪੈਕੇਜ ਮੈਨੇਜਰ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ Kubernetes ਨਾਲ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord031Pod => 'Kubernetes ਵਿੱਚ ਡਿਪਲੋਇ ਕਰਨ ਯੋਗ ਸਭ ਤੋਂ ਛੋਟੀ ਇਕਾਈ।';

  @override
  String get gameHintWord032Image => 'ਕੰਟੇਨਰ ਬਣਾਉਣ ਲਈ ਵਰਤਿਆ ਜਾਣ ਵਾਲਾ ਸਿਰਫ਼-ਪੜ੍ਹਨ ਵਾਲਾ ਟੈਂਪਲੇਟ।';

  @override
  String get gameHintWord033Build => 'ਸੋਰਸ ਅਤੇ ਨਿਰਭਰਤਾਵਾਂ ਤੋਂ ਆਰਟੀਫੈਕਟ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord034Deploy => 'ਐਪਲੀਕੇਸ਼ਨ ਨੂੰ ਕਿਸੇ ਵਾਤਾਵਰਣ ਵਿੱਚ ਜਾਰੀ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord035Terraform => 'ਕੋਡ ਵਜੋਂ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਲਈ HashiCorp ਦਾ ਟੂਲ।';

  @override
  String get gameHintWord036Ansible => 'ਏਜੰਟ-ਰਹਿਤ ਆਟੋਮੇਸ਼ਨ ਅਤੇ ਸੰਰਚਨਾ ਟੂਲ।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes ਲਈ ਕਮਾਂਡ-ਲਾਈਨ ਕਲਾਇੰਟ।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord039Gitops => 'ਸੰਚਾਲਨ ਮਾਡਲ ਜੋ Git ਨੂੰ ਸੱਚ ਦੇ ਸਰੋਤ ਵਜੋਂ ਵਰਤਦਾ ਹੈ।';

  @override
  String get gameHintWord040Pipeline => 'ਬਿਲਡ, ਟੈਸਟ ਅਤੇ ਰਿਲੀਜ਼ ਪੜਾਵਾਂ ਦਾ ਸਵੈਚਾਲਿਤ ਕ੍ਰਮ।';

  @override
  String get gameHintWord041Container => 'ਆਪਣੀਆਂ ਨਿਰਭਰਤਾਵਾਂ ਸਮੇਤ ਪੈਕ ਕੀਤੀ ਅਲੱਗ ਪ੍ਰਕਿਰਿਆ।';

  @override
  String get gameHintWord042Cluster => 'ਸਾਂਝੇ ਸਿਸਟਮ ਵਜੋਂ ਪ੍ਰਬੰਧਿਤ ਮਸ਼ੀਨਾਂ ਦਾ ਸਮੂਹ।';

  @override
  String get gameHintWord043Ingress => 'ਬਾਹਰੀ HTTP ਰੂਟਿੰਗ ਲਈ Kubernetes API ਆਬਜੈਕਟ।';

  @override
  String get gameHintWord044Firewall => 'ਸੁਰੱਖਿਆ ਨਿਯਮਾਂ ਅਨੁਸਾਰ ਨੈੱਟਵਰਕ ਟ੍ਰੈਫਿਕ ਨੂੰ ਫਿਲਟਰ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord045Subnet => 'IP ਨੈੱਟਵਰਕ ਦੀ ਤਰਕਸੰਗਤ ਉਪ-ਵੰਡ।';

  @override
  String get gameHintWord046Gateway => 'ਨੈੱਟਵਰਕ ਨੋਡ ਜੋ ਵੱਖ-ਵੱਖ ਨੈੱਟਵਰਕਾਂ ਨੂੰ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord047Router => 'ਨੈੱਟਵਰਕਾਂ ਵਿਚਕਾਰ ਪੈਕੇਟ ਅੱਗੇ ਭੇਜਦਾ ਹੈ।';

  @override
  String get gameHintWord048Switch => 'ਸਥਾਨਕ ਨੈੱਟਵਰਕ ਅੰਦਰ ਡਿਵਾਈਸਾਂ ਨੂੰ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord049Repository => 'ਸੋਰਸ ਕੋਡ ਜਾਂ ਪੈਕੇਜਾਂ ਲਈ ਪ੍ਰਬੰਧਿਤ ਸਟੋਰੇਜ।';

  @override
  String get gameHintWord050Systemd => 'Linux ਇਨਿਟ ਸਿਸਟਮ ਅਤੇ ਸੇਵਾ ਮੈਨੇਜਰ।';

  @override
  String get gameHintWord051Journalctl => 'systemd ਜਰਨਲ ਲੌਗ ਪੜ੍ਹਨ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਕਮਾਂਡ।';

  @override
  String get gameHintWord052Permission => 'ਨਿਯਮ ਜੋ ਤੈਅ ਕਰਦਾ ਹੈ ਕਿ ਕੌਣ ਪੜ੍ਹ, ਲਿਖ ਜਾਂ ਚਲਾ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud ਦਾ ਪ੍ਰਬੰਧਿਤ PostgreSQL-ਅਨੁਕੂਲ ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord054Configmap => 'ਗੈਰ-ਗੁਪਤ ਸੰਰਚਨਾ ਲਈ Kubernetes ਆਬਜੈਕਟ।';

  @override
  String get gameHintWord055Secret => 'ਸੰਵੇਦਨਸ਼ੀਲ ਡਾਟਾ ਲਈ ਬਣਾਇਆ Kubernetes ਆਬਜੈਕਟ।';

  @override
  String get gameHintWord056Persistent => 'ਉਹ ਸਟੋਰੇਜ ਜੋ ਵਰਕਲੋਡ ਦੇ ਰੀਸਟਾਰਟ ਤੋਂ ਬਾਅਦ ਵੀ ਬਚੀ ਰਹਿੰਦੀ ਹੈ।';

  @override
  String get gameHintWord057Volume => 'ਕੰਟੇਨਰ ਵਿੱਚ ਮਾਊਂਟ ਕੀਤੀ ਫ਼ਾਈਲਸਿਸਟਮ ਸਟੋਰੇਜ।';

  @override
  String get gameHintWord058Storage => 'ਫ਼ਾਈਲਾਂ, ਆਬਜੈਕਟਾਂ ਜਾਂ ਬਲਾਕਾਂ ਲਈ ਸਥਾਈ ਥਾਂ।';

  @override
  String get gameHintWord059Replica => 'ਸਕੇਲ ਜਾਂ ਭਰੋਸੇਯੋਗਤਾ ਲਈ ਰੱਖੀ ਵਰਕਲੋਡ ਇੰਸਟੈਂਸ ਦੀ ਕਾਪੀ।';

  @override
  String get gameHintWord060Deployment => 'ਸਟੇਟਲੈੱਸ ਐਪਲੀਕੇਸ਼ਨ ਪੌਡਾਂ ਲਈ Kubernetes ਕੰਟਰੋਲਰ।';

  @override
  String get gameHintWord061Dockerfile => 'Docker ਇਮੇਜ ਬਣਾਉਣ ਲਈ ਵਰਤੀਆਂ ਜਾਂਦੀਆਂ ਹਦਾਇਤਾਂ।';

  @override
  String get gameHintWord062Database => 'ਐਪਲੀਕੇਸ਼ਨਾਂ ਦੁਆਰਾ ਕੁਏਰੀ ਕੀਤਾ ਜਾਣ ਵਾਲਾ ਸੰਗਠਿਤ ਸਟੋਰ।';

  @override
  String get gameHintWord063Automation => 'ਹੱਥੀਂ ਕਦਮਾਂ ਤੋਂ ਬਿਨਾਂ ਦੁਹਰਾਏ ਜਾਣ ਵਾਲੇ ਕੰਮ ਸਾਫ਼ਟਵੇਅਰ ਨਾਲ ਕਰਨਾ।';

  @override
  String get gameHintWord064Anthos => 'ਵੱਖ-ਵੱਖ ਵਾਤਾਵਰਣਾਂ ਵਿੱਚ ਕਲੱਸਟਰ ਪ੍ਰਬੰਧਿਤ ਕਰਨ ਲਈ Google Cloud ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord065Bigquery => 'ਵੱਡੇ ਪੱਧਰ ਦੇ ਡਾਟਾ ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ Google Cloud ਸੇਵਾ।';

  @override
  String get gameHintWord066Bigtable => 'ਵਿਸ਼ਲੇਸ਼ਣ ਲਈ Google Cloud ਦਾ ਵਾਈਡ-ਕਾਲਮ NoSQL ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord067Loadbalancer => 'ਆਉਣ ਵਾਲੇ ਟ੍ਰੈਫਿਕ ਨੂੰ ਕਈ ਬੈਕਐਂਡਾਂ ਵਿੱਚ ਵੰਡਦਾ ਹੈ।';

  @override
  String get gameHintWord068Prometheus => 'ਨਿਗਰਾਨੀ ਸਿਸਟਮ ਜੋ ਟਾਈਮ-ਸੀਰੀਜ਼ ਮੀਟ੍ਰਿਕਸ ਸਟੋਰ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord069Grafana => 'ਔਬਜ਼ਰਵੇਬਿਲਟੀ ਡਾਟਾ ਨੂੰ ਕੁਏਰੀ ਅਤੇ ਵਿਜ਼ੂਅਲਾਈਜ਼ ਕਰਨ ਲਈ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud ਦਾ ਪ੍ਰਬੰਧਿਤ NoSQL JSON ਦਸਤਾਵੇਜ਼ ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord071Cloudtrail => 'AWS ਸੇਵਾ ਜੋ ਆਡਿਟ ਲਈ API ਗਤੀਵਿਧੀ ਰਿਕਾਰਡ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord072Statefulset => 'ਸਥਿਰ ਪਛਾਣ ਦੀ ਲੋੜ ਵਾਲੇ ਵਰਕਲੋਡਾਂ ਲਈ Kubernetes ਕੰਟਰੋਲਰ।';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes ਕੰਟਰੋਲਰ ਜੋ ਚੁਣੇ ਨੋਡਾਂ ਉੱਤੇ ਪੌਡ ਚਲਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord074Serviceaccount => 'ਵਰਕਲੋਡ ਜਾਂ ਪ੍ਰਕਿਰਿਆ ਦੁਆਰਾ ਵਰਤੀ ਜਾਂਦੀ Kubernetes ਪਛਾਣ।';

  @override
  String get gameHintWord075Networkpolicy => 'Kubernetes ਸਰੋਤ ਜੋ ਪੌਡ ਨੈੱਟਵਰਕ ਟ੍ਰੈਫਿਕ ਨੂੰ ਕੰਟਰੋਲ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord076Certificate => 'TLS ਵਿੱਚ ਪਛਾਣ ਸਥਾਪਿਤ ਕਰਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਡਿਜੀਟਲ ਦਸਤਾਵੇਜ਼।';

  @override
  String get gameHintWord077Encryption => 'ਡਾਟਾ ਨੂੰ ਇਸ ਤਰ੍ਹਾਂ ਬਦਲਦਾ ਹੈ ਕਿ ਸਿਰਫ਼ ਅਧਿਕਾਰਤ ਧਿਰਾਂ ਹੀ ਪੜ੍ਹ ਸਕਣ।';

  @override
  String get gameHintWord078Observability => 'ਸਿਸਟਮ ਦੇ ਆਊਟਪੁੱਟ ਤੋਂ ਉਸਦੇ ਵਿਹਾਰ ਦਾ ਅੰਦਾਜ਼ਾ ਲਗਾਉਣ ਦੀ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord079Coredns => 'DNS ਸਰਵਰ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ Kubernetes ਕਲੱਸਟਰਾਂ ਅੰਦਰ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API ਰਾਹੀਂ ਕਲਾਊਡ ਸਰੋਤ ਪ੍ਰਬੰਧਿਤ ਕਰਨ ਵਾਲਾ ਪ੍ਰੋਜੈਕਟ।';

  @override
  String get gameHintWord081Failover => 'ਅਸਫਲਤਾ ਤੋਂ ਬਾਅਦ ਸਟੈਂਡਬਾਏ ਕੰਪੋਨੈਂਟ ਉੱਤੇ ਬਦਲਣਾ।';

  @override
  String get gameHintWord082Idempotency => 'ਗੁਣ ਜਿਸ ਵਿੱਚ ਕਿਸੇ ਕਾਰਵਾਈ ਨੂੰ ਦੁਹਰਾਉਣ ਦਾ ਪ੍ਰਭਾਵ ਇੱਕ ਵਾਰ ਕਰਨ ਦੇ ਬਰਾਬਰ ਹੁੰਦਾ ਹੈ।';

  @override
  String get gameHintWord083Dataflow => 'ਸਟ੍ਰੀਮ ਅਤੇ ਬੈਚ ਡਾਟਾ ਪ੍ਰੋਸੈਸਿੰਗ ਲਈ Google Cloud ਸੇਵਾ।';

  @override
  String get gameHintWord084Orchestration => 'ਕਈ ਸਵੈਚਾਲਿਤ ਵਰਕਲੋਡਾਂ ਦਾ ਤਾਲਮੇਲ ਵਾਲਾ ਪ੍ਰਬੰਧਨ।';

  @override
  String get gameHintWord085Dataplex => 'ਉੱਦਮ ਡਾਟਾ ਖੋਜਣ ਅਤੇ ਉਸ ਦਾ ਸ਼ਾਸਨ ਕਰਨ ਲਈ Google Cloud ਸੇਵਾ।';

  @override
  String get gameHintWord086Serverless => 'ਐਗਜ਼ੀਕਿਊਸ਼ਨ ਮਾਡਲ ਜਿਸ ਵਿੱਚ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਪ੍ਰਬੰਧਨ ਨੂੰ ਲੁਕਾ ਦਿੱਤਾ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord087Distributed => 'ਸਿਸਟਮ ਜਿਸਦੇ ਕੰਪੋਨੈਂਟ ਨੈੱਟਵਰਕ ਨਾਲ ਜੁੜੀਆਂ ਕਈ ਮਸ਼ੀਨਾਂ ਉੱਤੇ ਚੱਲਦੇ ਹਨ।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud ਦਾ ਪ੍ਰਬੰਧਿਤ Apache Spark ਅਤੇ Hadoop ਵਾਤਾਵਰਣ।';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL ਡਾਟਾਬੇਸ ਜੋ ਅਕਸਰ Terraform ਸਟੇਟ ਲਾਕਿੰਗ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord090Provisioning => 'ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਜਾਂ ਸਰੋਤਾਂ ਨੂੰ ਵਰਤੋਂ ਲਈ ਤਿਆਰ ਕਰਨਾ।';

  @override
  String get gameHintWord091Elasticsearch => 'ਖੋਜ ਇੰਜਣ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ ਕੇਂਦਰੀਕ੍ਰਿਤ ਲੌਗਿੰਗ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord092Etcd => 'ਕੀ-ਵੈਲਿਊ ਸਟੋਰ ਜੋ Kubernetes ਕਲੱਸਟਰ ਦੀ ਸਥਿਤੀ ਰੱਖਦਾ ਹੈ।';

  @override
  String get gameHintWord093Authentication => 'ਇਹ ਪੁਸ਼ਟੀ ਕਰਨ ਦੀ ਪ੍ਰਕਿਰਿਆ ਕਿ ਉਪਭੋਗਤਾ ਜਾਂ ਸੇਵਾ ਕੌਣ ਹੈ।';

  @override
  String get gameHintWord094Authorization => 'ਇਹ ਤੈਅ ਕਰਨ ਦੀ ਪ੍ਰਕਿਰਿਆ ਕਿ ਕਿਸੇ ਪਛਾਣ ਨੂੰ ਕੀ ਕਰਨ ਦੀ ਇਜਾਜ਼ਤ ਹੈ।';

  @override
  String get gameHintWord095Expressroute => 'ਡਾਟਾ ਸੈਂਟਰਾਂ ਨਾਲ ਸਮਰਪਿਤ ਨਿੱਜੀ ਕਨੈਕਟੀਵਿਟੀ ਲਈ Azure ਸੇਵਾ।';

  @override
  String get gameHintWord096Configuration => 'ਸੈਟਿੰਗਾਂ ਜੋ ਤੈਅ ਕਰਦੀਆਂ ਹਨ ਕਿ ਸਾਫ਼ਟਵੇਅਰ ਕਿਵੇਂ ਵਿਹਾਰ ਕਰੇਗਾ।';

  @override
  String get gameHintWord097Infrastructure => 'ਐਪਲੀਕੇਸ਼ਨਾਂ ਨੂੰ ਸਹਾਰਾ ਦੇਣ ਵਾਲੇ ਕੰਪਿਊਟ, ਨੈੱਟਵਰਕ ਅਤੇ ਸਟੋਰੇਜ ਸਰੋਤ।';

  @override
  String get gameHintWord098Fastconnect => 'ਸਮਰਪਿਤ ਨਿੱਜੀ ਨੈੱਟਵਰਕ ਕਨੈਕਸ਼ਨਾਂ ਲਈ Oracle Cloud ਸੇਵਾ।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ਦੁਆਰਾ ਵਰਤਿਆ ਜਾਂਦਾ ਉਦਯੋਗ-ਮਿਆਰੀ ਕੰਟੇਨਰ ਰਨਟਾਈਮ।';

  @override
  String get gameHintWord100Kubernetes => 'ਕੰਟੇਨਰ ਆਰਕੈਸਟ੍ਰੇਸ਼ਨ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord101Http => 'ਵੈੱਬ ਸਰੋਤਾਂ ਦੀ ਬੇਨਤੀ ਕਰਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਐਪਲੀਕੇਸ਼ਨ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord102Https => 'ਵੈੱਬ ਬੇਨਤੀ ਪ੍ਰੋਟੋਕੋਲ ਦਾ ਇਨਕ੍ਰਿਪਟ ਕੀਤਾ ਸੰਸਕਰਣ।';

  @override
  String get gameHintWord103Tcp => 'ਭਰੋਸੇਯੋਗ ਅਤੇ ਕ੍ਰਮਵਾਰ ਡਿਲੀਵਰੀ ਦੇਣ ਵਾਲਾ ਟ੍ਰਾਂਸਪੋਰਟ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord104Udp => 'ਡਾਟਾਗ੍ਰਾਮਾਂ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਕਨੈਕਸ਼ਨ-ਰਹਿਤ ਟ੍ਰਾਂਸਪੋਰਟ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord105Tls => 'ਨੈੱਟਵਰਕ ਉੱਤੇ ਆਦਾਨ-ਪ੍ਰਦਾਨ ਹੋਣ ਵਾਲੇ ਡਾਟਾ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰਨ ਵਾਲਾ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord106Ssl => 'ਆਧੁਨਿਕ ਟ੍ਰਾਂਸਪੋਰਟ ਸੁਰੱਖਿਆ ਪ੍ਰੋਟੋਕੋਲ ਦਾ ਪੁਰਾਣਾ ਪੂਰਵਗਾਮੀ।';

  @override
  String get gameHintWord107Ftp => 'ਫ਼ਾਈਲਾਂ ਟ੍ਰਾਂਸਫਰ ਕਰਨ ਦਾ ਰਵਾਇਤੀ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord108Sftp => 'ਸੁਰੱਖਿਅਤ ਸ਼ੈੱਲ ਕਨੈਕਸ਼ਨ ਉੱਤੇ ਚੱਲਣ ਵਾਲਾ ਫ਼ਾਈਲ ਟ੍ਰਾਂਸਫਰ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord109Smtp => 'ਸਰਵਰਾਂ ਵਿਚਕਾਰ ਈਮੇਲ ਭੇਜਣ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord110Snmp => 'ਨੈੱਟਵਰਕ ਡਿਵਾਈਸਾਂ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਅਤੇ ਮਾਨੀਟਰ ਕਰਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord111Icmp => 'ਨੈੱਟਵਰਕ ਗਲਤੀਆਂ ਅਤੇ ping ਸੁਨੇਹੇ ਲਿਜਾਣ ਵਾਲਾ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord112Arp => 'ਸਥਾਨਕ IPv4 ਪਤਿਆਂ ਨੂੰ ਹਾਰਡਵੇਅਰ ਪਤਿਆਂ ਵਿੱਚ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord113Dhcp => 'ਨੈੱਟਵਰਕ ਕਲਾਇੰਟਾਂ ਨੂੰ ਆਪਣੇ-ਆਪ IP ਸੰਰਚਨਾ ਪੱਟੇ ਉੱਤੇ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord114Nat => 'ਪੈਕੇਟਾਂ ਦੇ ਗੇਟਵੇ ਪਾਰ ਕਰਨ ਸਮੇਂ ਨੈੱਟਵਰਕ ਪਤੇ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord115Vpn => 'ਰਿਮੋਟ ਨੈੱਟਵਰਕਾਂ ਜਾਂ ਉਪਭੋਗਤਾਵਾਂ ਨੂੰ ਜੋੜਨ ਵਾਲੀ ਇਨਕ੍ਰਿਪਟ ਕੀਤੀ ਸੁਰੰਗ।';

  @override
  String get gameHintWord116Vpc => 'ਪਬਲਿਕ ਕਲਾਊਡ ਵਿੱਚ ਅਲੱਗ ਵਰਚੁਅਲ ਨੈੱਟਵਰਕ।';

  @override
  String get gameHintWord117Vlan => 'ਸਵਿੱਚ ਕੀਤੇ ਨੈੱਟਵਰਕ ਦਾ ਤਰਕਸੰਗਤ ਵਿਛੋੜਾ।';

  @override
  String get gameHintWord118Wan => 'ਵਿਸ਼ਾਲ ਭੂਗੋਲਿਕ ਖੇਤਰ ਵਿੱਚ ਫੈਲਿਆ ਨੈੱਟਵਰਕ।';

  @override
  String get gameHintWord119Lan => 'ਸਥਾਨਕ ਖੇਤਰ ਅੰਦਰ ਡਿਵਾਈਸਾਂ ਨੂੰ ਜੋੜਨ ਵਾਲਾ ਨੈੱਟਵਰਕ।';

  @override
  String get gameHintWord120Cdn => 'ਵੰਡਿਆ ਹੋਇਆ ਐਜ ਨੈੱਟਵਰਕ ਜੋ ਡਿਲੀਵਰ ਕੀਤੀ ਸਮੱਗਰੀ ਨੂੰ ਕੈਸ਼ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord121Cidr => 'ਸਲੈਸ਼ ਲੰਬਾਈ ਨਾਲ ਨੈੱਟਵਰਕ ਅਗੇਤਰ ਦੱਸਣ ਵਾਲਾ ਸੰਕੇਤ।';

  @override
  String get gameHintWord122Host => 'ਨੈੱਟਵਰਕ ਨਾਲ ਜੁੜਿਆ ਕੰਪਿਊਟਰ ਜਾਂ ਸਿਰਾ।';

  @override
  String get gameHintWord123Hostname => 'ਨੈੱਟਵਰਕ ਮਸ਼ੀਨ ਨੂੰ ਦਿੱਤਾ ਮਨੁੱਖ-ਪੜ੍ਹਨਯੋਗ ਨਾਮ।';

  @override
  String get gameHintWord124Domain => 'ਇੰਟਰਨੈੱਟ ਨਾਮਕਰਨ ਪ੍ਰਣਾਲੀ ਵਿੱਚ ਨਾਮ ਵਾਲਾ ਪ੍ਰਸ਼ਾਸਕੀ ਖੇਤਰ।';

  @override
  String get gameHintWord125Zone => 'DNS ਨੇਮਸਪੇਸ ਦਾ ਪ੍ਰਸ਼ਾਸਕੀ ਹਿੱਸਾ।';

  @override
  String get gameHintWord126Record => 'DNS ਡਾਟਾਬੇਸ ਵਿੱਚ ਇੱਕ ਵੱਖਰੀ ਪ੍ਰਵਿਸ਼ਟੀ।';

  @override
  String get gameHintWord127Aaaa => 'DNS ਰਿਕਾਰਡ ਕਿਸਮ ਜੋ ਨਾਮ ਨੂੰ IPv6 ਪਤੇ ਵਿੱਚ ਹੱਲ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord128Ptr => 'ਉਲਟੀ ਪਤਾ ਖੋਜ ਲਈ ਵਰਤੀ ਜਾਂਦੀ DNS ਰਿਕਾਰਡ ਕਿਸਮ।';

  @override
  String get gameHintWord129Txt => 'ਟੈਕਸਟ ਮੁੱਲ ਸਟੋਰ ਕਰਨ ਵਾਲੀ DNS ਰਿਕਾਰਡ ਕਿਸਮ।';

  @override
  String get gameHintWord130Cname => 'DNS ਰਿਕਾਰਡ ਜੋ ਇੱਕ ਨਾਮ ਨੂੰ ਦੂਜੇ ਦਾ ਉਪਨਾਮ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord131Route => 'ਪੈਕੇਟਾਂ ਨੂੰ ਮੰਜ਼ਿਲ ਵੱਲ ਭੇਜਣ ਵਾਲੀ ਰਸਤੇ ਦੀ ਪ੍ਰਵਿਸ਼ਟੀ।';

  @override
  String get gameHintWord132Routing => 'ਨੈੱਟਵਰਕਾਂ ਵਿਚਕਾਰ ਟ੍ਰੈਫਿਕ ਲਈ ਰਸਤੇ ਚੁਣਨਾ।';

  @override
  String get gameHintWord133Packet => 'ਨੈੱਟਵਰਕ ਉੱਤੇ ਭੇਜੀ ਜਾਣ ਵਾਲੀ ਡਾਟਾ ਦੀ ਇਕਾਈ।';

  @override
  String get gameHintWord134Protocol => 'ਸਿਸਟਮਾਂ ਵਿਚਕਾਰ ਸੰਚਾਰ ਲਈ ਸਹਿਮਤ ਨਿਯਮ।';

  @override
  String get gameHintWord135Ack => 'ਡਾਟਾ ਮਿਲਣ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਵਾਲਾ TCP ਫਲੈਗ।';

  @override
  String get gameHintWord136Bandwidth => 'ਸੰਚਾਰ ਲਿੰਕ ਦੀ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord137Latency => 'ਬੇਨਤੀ ਜਾਂ ਪੈਕੇਟ ਨੂੰ ਜਵਾਬ ਮਿਲਣ ਤੋਂ ਪਹਿਲਾਂ ਦੀ ਦੇਰੀ।';

  @override
  String get gameHintWord138Throughput => 'ਪ੍ਰਤੀ ਇਕਾਈ ਸਮੇਂ ਵਿੱਚ ਪ੍ਰੋਸੈਸ ਹੋਇਆ ਉਪਯੋਗੀ ਕੰਮ ਜਾਂ ਡਾਟਾ।';

  @override
  String get gameHintWord139Mtu => 'ਸਭ ਤੋਂ ਵੱਡਾ ਪੈਕੇਟ ਆਕਾਰ ਜੋ ਲਿੰਕ ਬਿਨਾਂ ਟੁਕੜੇ ਕੀਤੇ ਭੇਜ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord140Alpn => 'TLS ਐਕਸਟੈਨਸ਼ਨ ਜੋ ਐਪਲੀਕੇਸ਼ਨ-ਪਰਤ ਪ੍ਰੋਟੋਕੋਲ ਬਾਰੇ ਸਹਿਮਤੀ ਬਣਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord141Grep => 'ਮੇਲ ਖਾਂਦੇ ਪੈਟਰਨ ਲਈ ਟੈਕਸਟ ਲਾਈਨਾਂ ਖੋਜਦਾ ਹੈ।';

  @override
  String get gameHintWord142Sed => 'ਸਟ੍ਰੀਮ ਐਡੀਟਰ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ ਟੈਕਸਟ ਬਦਲਣ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord143Lscpu => 'Linux ਕਮਾਂਡ ਜੋ ਪ੍ਰੋਸੈਸਰ ਆਰਕੀਟੈਕਚਰ ਅਤੇ ਕੋਰ ਵੇਰਵੇ ਦਿਖਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord144Find => 'ਫ਼ਾਈਲ ਸ਼ਰਤਾਂ ਨਾਲ ਡਾਇਰੈਕਟਰੀ ਟ੍ਰੀ ਵਿੱਚ ਖੋਜ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord145Lsblk => 'Linux ਕਮਾਂਡ ਜੋ ਬਲਾਕ ਡਿਵਾਈਸਾਂ ਅਤੇ ਉਨ੍ਹਾਂ ਦੇ ਸਬੰਧ ਸੂਚੀਬੱਧ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord146Sort => 'ਟੈਕਸਟ ਦੀਆਂ ਲਾਈਨਾਂ ਨੂੰ ਕ੍ਰਮਬੱਧ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord147Uniq => 'ਨਾਲ-ਨਾਲ ਆਈਆਂ ਦੁਹਰਾਈਆਂ ਲਾਈਨਾਂ ਨੂੰ ਫਿਲਟਰ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord148Head => 'ਫ਼ਾਈਲ ਦੀ ਸ਼ੁਰੂਆਤ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord149Tail => 'ਫ਼ਾਈਲ ਦਾ ਅੰਤ ਛਾਪਦਾ ਹੈ ਅਤੇ ਜੁੜਦੇ ਲੌਗਾਂ ਨੂੰ ਫਾਲੋ ਕਰ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord150Cat => 'ਫ਼ਾਈਲਾਂ ਨੂੰ ਜੋੜਦਾ ਹੈ ਅਤੇ ਉਨ੍ਹਾਂ ਦੀ ਸਮੱਗਰੀ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord151Cut => 'ਲਾਈਨਾਂ ਵਿੱਚੋਂ ਚੁਣੇ ਖੇਤਰ ਜਾਂ ਅੱਖਰ ਕਾਲਮ ਕੱਢਦਾ ਹੈ।';

  @override
  String get gameHintWord152Tee => 'ਸਟੈਂਡਰਡ ਇਨਪੁੱਟ ਨੂੰ ਫ਼ਾਈਲਾਂ ਅਤੇ ਸਟੈਂਡਰਡ ਆਊਟਪੁੱਟ ਵਿੱਚ ਕਾਪੀ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord153Echo => 'ਆਪਣੇ ਆਰਗੂਮੈਂਟ ਸਟੈਂਡਰਡ ਆਊਟਪੁੱਟ ਵਿੱਚ ਲਿਖਦਾ ਹੈ।';

  @override
  String get gameHintWord154Printf => 'ਸ਼ੈੱਲ ਜਾਂ ਪ੍ਰੋਗਰਾਮ ਤੋਂ ਫਾਰਮੈਟ ਕੀਤਾ ਟੈਕਸਟ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord155Touch => 'ਫ਼ਾਈਲ ਦੇ ਟਾਈਮਸਟੈਂਪ ਅੱਪਡੇਟ ਕਰਦਾ ਹੈ ਜਾਂ ਖਾਲੀ ਫ਼ਾਈਲ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord156Mkdir => 'ਡਾਇਰੈਕਟਰੀਆਂ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord157Rmdir => 'ਖਾਲੀ ਡਾਇਰੈਕਟਰੀਆਂ ਹਟਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord158Chmod => 'Unix ਫ਼ਾਈਲ ਇਜਾਜ਼ਤ ਬਿੱਟ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord159Chown => 'ਫ਼ਾਈਲ ਦੀ ਮਾਲਕੀ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord160Chgrp => 'ਫ਼ਾਈਲ ਦੀ ਸਮੂਹ ਮਾਲਕੀ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord161Pwd => 'ਮੌਜੂਦਾ ਕਾਰਜਸ਼ੀਲ ਡਾਇਰੈਕਟਰੀ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord162Apt => 'Debian-ਆਧਾਰਿਤ ਸਿਸਟਮਾਂ ਦੁਆਰਾ ਵਰਤਿਆ ਜਾਂਦਾ ਪੈਕੇਜ ਪ੍ਰਬੰਧਨ ਟੂਲ।';

  @override
  String get gameHintWord163Top => 'ਪ੍ਰਕਿਰਿਆਵਾਂ ਅਤੇ ਸਿਸਟਮ ਸਰੋਤ ਵਰਤੋਂ ਦਾ ਇੰਟਰਐਕਟਿਵ ਡਿਸਪਲੇ।';

  @override
  String get gameHintWord164Agent => 'ਸਾਫ਼ਟਵੇਅਰ ਕੰਪੋਨੈਂਟ ਜੋ ਹੋਸਟ ਉੱਤੇ ਕੰਮ ਚਲਾਉਂਦਾ ਜਾਂ ਰਿਪੋਰਟ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord165Kill => 'ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਉਸਦੇ ਪਛਾਣਕਰਤਾ ਰਾਹੀਂ ਸਿਗਨਲ ਭੇਜਦਾ ਹੈ।';

  @override
  String get gameHintWord166Signal => 'ਓਪਰੇਟਿੰਗ ਸਿਸਟਮ ਦੁਆਰਾ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਭੇਜੀ ਸੂਚਨਾ।';

  @override
  String get gameHintWord167Sigkill => 'Unix ਸਿਗਨਲ ਜੋ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਤੁਰੰਤ ਖਤਮ ਕਰ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord168Nice => 'ਬਦਲੀ ਹੋਈ ਸ਼ੈਡਿਊਲਿੰਗ ਤਰਜੀਹ ਨਾਲ ਪ੍ਰਕਿਰਿਆ ਸ਼ੁਰੂ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord169Renice => 'ਚੱਲ ਰਹੀ ਪ੍ਰਕਿਰਿਆ ਦੀ ਸ਼ੈਡਿਊਲਿੰਗ ਤਰਜੀਹ ਬਦਲਦਾ ਹੈ।';

  @override
  String get gameHintWord170Jobs => 'ਮੌਜੂਦਾ ਸ਼ੈੱਲ ਦੁਆਰਾ ਪ੍ਰਬੰਧਿਤ ਜੌਬਾਂ ਦੀ ਸੂਚੀ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord171Nohup => 'ਹੈਂਗਅੱਪ ਸਿਗਨਲਾਂ ਨੂੰ ਅਣਡਿੱਠਾ ਕਰਕੇ ਕਮਾਂਡ ਚਲਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord172Screen => 'ਟਰਮੀਨਲ ਮਲਟੀਪਲੈਕਸਰ ਜੋ ਵੱਖ ਹੋਣ ਯੋਗ ਸੈਸ਼ਨਾਂ ਨੂੰ ਸਹਾਰਾ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord173Uptime => 'ਦੱਸਦਾ ਹੈ ਕਿ ਸਿਸਟਮ ਕਿੰਨੀ ਦੇਰ ਤੋਂ ਚੱਲ ਰਿਹਾ ਹੈ।';

  @override
  String get gameHintWord174Uname => 'ਸਿਸਟਮ ਅਤੇ ਕਰਨਲ ਦੀ ਜਾਣਕਾਰੀ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord175Whoami => 'ਮੌਜੂਦਾ ਪ੍ਰਭਾਵੀ ਉਪਭੋਗਤਾ ਦਾ ਨਾਮ ਛਾਪਦਾ ਹੈ।';

  @override
  String get gameHintWord176Umask => 'ਫ਼ਾਈਲਾਂ ਬਣਾਉਣ ਸਮੇਂ ਵਰਤਿਆ ਜਾਂਦਾ ਇਜਾਜ਼ਤ ਮਾਸਕ ਸੈੱਟ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord177Usermod => 'Linux ਕਮਾਂਡ ਜੋ ਮੌਜੂਦਾ ਉਪਭੋਗਤਾ ਖਾਤੇ ਨੂੰ ਸੋਧਦੀ ਹੈ।';

  @override
  String get gameHintWord178Crontab => 'ਨਿਰਧਾਰਤ ਵਾਰ-ਵਾਰ ਚੱਲਣ ਵਾਲੀਆਂ ਸ਼ੈੱਲ ਜੌਬਾਂ ਨੂੰ ਸੰਪਾਦਿਤ ਜਾਂ ਸੂਚੀਬੱਧ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord179Findmnt => 'Linux ਕਮਾਂਡ ਜੋ ਮਾਊਂਟ ਕੀਤੇ ਫ਼ਾਈਲਸਿਸਟਮ ਦੀ ਜਾਣਕਾਰੀ ਦਿਖਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord180Mount => 'ਫ਼ਾਈਲਸਿਸਟਮ ਨੂੰ ਡਾਇਰੈਕਟਰੀ ਟ੍ਰੀ ਨਾਲ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord181Sigterm => 'Unix ਸਿਗਨਲ ਜੋ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਸਹਿਜ ਢੰਗ ਨਾਲ ਖਤਮ ਕਰਨ ਦੀ ਬੇਨਤੀ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord182Fstab => 'ਮਾਊਂਟ ਕੀਤੇ ਜਾਣ ਵਾਲੇ ਫ਼ਾਈਲਸਿਸਟਮਾਂ ਦਾ ਵਰਣਨ ਕਰਨ ਵਾਲੀ ਸਿਸਟਮ ਸਾਰਣੀ।';

  @override
  String get gameHintWord183Swap => 'ਭੌਤਿਕ ਮੈਮੋਰੀ ਦੀ ਪੂਰਤੀ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਡਿਸਕ-ਆਧਾਰਿਤ ਥਾਂ।';

  @override
  String get gameHintWord184Tmpfs => 'ਵਰਚੁਅਲ ਮੈਮੋਰੀ ਦੁਆਰਾ ਸਮਰਥਿਤ ਅਸਥਾਈ ਫ਼ਾਈਲਸਿਸਟਮ।';

  @override
  String get gameHintWord185Proc => 'Linux ਵਰਚੁਅਲ ਫ਼ਾਈਲਸਿਸਟਮ ਜੋ ਪ੍ਰਕਿਰਿਆ ਅਤੇ ਕਰਨਲ ਜਾਣਕਾਰੀ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord186Syslog => 'ਮਿਆਰੀ ਲੌਗਿੰਗ ਪ੍ਰੋਟੋਕੋਲ ਅਤੇ ਸੁਨੇਹਾ ਫਾਰਮੈਟ।';

  @override
  String get gameHintWord187Dmesg => 'ਕਰਨਲ ਰਿੰਗ ਬਫਰ ਦੇ ਸੁਨੇਹੇ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord188Free => 'ਵਰਤੀ ਅਤੇ ਉਪਲਬਧ ਸਿਸਟਮ ਮੈਮੋਰੀ ਦੱਸਦਾ ਹੈ।';

  @override
  String get gameHintWord189Stat => 'ਫ਼ਾਈਲ ਦਾ ਵਿਸਤ੍ਰਿਤ ਮੈਟਾਡਾਟਾ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord190Lsof => 'ਖੁੱਲ੍ਹੀਆਂ ਫ਼ਾਈਲਾਂ ਅਤੇ ਉਨ੍ਹਾਂ ਨੂੰ ਫੜਨ ਵਾਲੀਆਂ ਪ੍ਰਕਿਰਿਆਵਾਂ ਸੂਚੀਬੱਧ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord191Netstat => 'ਨੈੱਟਵਰਕ ਕਨੈਕਸ਼ਨ ਅਤੇ ਰੂਟਿੰਗ ਜਾਣਕਾਰੀ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord192Checksum => 'ਡਾਟਾ ਵਿੱਚ ਤਬਦੀਲੀ ਜਾਂ ਖਰਾਬੀ ਪਛਾਣਨ ਲਈ ਗਣਨਾ ਕੀਤਾ ਮੁੱਲ।';

  @override
  String get gameHintWord193Ping => 'ਈਕੋ ਬੇਨਤੀਆਂ ਨਾਲ ਨੈੱਟਵਰਕ ਪਹੁੰਚਯੋਗਤਾ ਜਾਂਚਦਾ ਹੈ।';

  @override
  String get gameHintWord194Traceroute => 'ਨੈੱਟਵਰਕ ਮੰਜ਼ਿਲ ਤੱਕ ਵਿਚਕਾਰਲੇ ਹੌਪ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord195Resolver => 'DNS ਕੰਪੋਨੈਂਟ ਜੋ ਨਾਮ ਕੁਏਰੀਆਂ ਦੇ ਜਵਾਬ ਲੱਭਦਾ ਹੈ।';

  @override
  String get gameHintWord196Nslookup => 'DNS ਨਾਮ ਅਤੇ ਪਤੇ ਖੋਜਦਾ ਹੈ।';

  @override
  String get gameHintWord197Telnet => 'ਪੁਰਾਣਾ ਬਿਨਾਂ ਇਨਕ੍ਰਿਪਸ਼ਨ ਵਾਲਾ ਰਿਮੋਟ ਟਰਮੀਨਲ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord198Tftp => 'ਸਧਾਰਨ UDP-ਆਧਾਰਿਤ ਫ਼ਾਈਲ ਟ੍ਰਾਂਸਫਰ ਪ੍ਰੋਟੋਕੋਲ।';

  @override
  String get gameHintWord199Daemon => 'Unix-ਵਰਗੇ ਸਿਸਟਮਾਂ ਉੱਤੇ ਬੈਕਗ੍ਰਾਊਂਡ ਸੇਵਾ ਪ੍ਰਕਿਰਿਆ।';

  @override
  String get gameHintWord200Kernel => 'ਓਪਰੇਟਿੰਗ ਸਿਸਟਮ ਦੇ ਸਰੋਤ ਸੰਭਾਲਣ ਵਾਲਾ ਮੁੱਖ ਕੰਪੋਨੈਂਟ।';

  @override
  String get gameHintWord201Commit => 'ਵਰਜਨ ਕੰਟਰੋਲ ਵਿੱਚ ਤਬਦੀਲੀਆਂ ਦਾ ਦਰਜ ਕੀਤਾ ਸਨੈਪਸ਼ਾਟ।';

  @override
  String get gameHintWord202Branch => 'ਵਿਕਾਸ ਦੀ ਇੱਕ ਲਾਈਨ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹਿਲਾਇਆ ਜਾ ਸਕਣ ਵਾਲਾ ਹਵਾਲਾ।';

  @override
  String get gameHintWord203Merge => 'ਵੱਖ-ਵੱਖ ਵਿਕਾਸ ਲਾਈਨਾਂ ਦੇ ਇਤਿਹਾਸ ਨੂੰ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord204Rebase => 'ਕਮਿਟਾਂ ਨੂੰ ਕਿਸੇ ਹੋਰ ਆਧਾਰ ਕਮਿਟ ਉੱਤੇ ਦੁਬਾਰਾ ਚਲਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord205Clone => 'ਰਿਮੋਟ ਰਿਪੋਜ਼ਟਰੀ ਦੀ ਸਥਾਨਕ ਕਾਪੀ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord206Fetch => 'ਮਿਲਾਏ ਬਿਨਾਂ ਰਿਮੋਟ ਆਬਜੈਕਟ ਅਤੇ ਹਵਾਲੇ ਡਾਊਨਲੋਡ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord207Pull => 'ਤਬਦੀਲੀਆਂ ਲਿਆਉਂਦਾ ਹੈ ਅਤੇ ਮੌਜੂਦਾ ਬ੍ਰਾਂਚ ਵਿੱਚ ਮਿਲਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord208Push => 'ਸਥਾਨਕ ਕਮਿਟਾਂ ਨੂੰ ਰਿਮੋਟ ਰਿਪੋਜ਼ਟਰੀ ਵਿੱਚ ਭੇਜਦਾ ਹੈ।';

  @override
  String get gameHintWord209Stash => 'ਬਿਨਾਂ ਕਮਿਟ ਕੀਤੀਆਂ ਵਰਕਿੰਗ-ਟ੍ਰੀ ਤਬਦੀਲੀਆਂ ਨੂੰ ਅਸਥਾਈ ਤੌਰ ਉੱਤੇ ਸੰਭਾਲਦਾ ਹੈ।';

  @override
  String get gameHintWord210Revert => 'ਅਜਿਹੀ ਕਮਿਟ ਬਣਾਉਂਦਾ ਹੈ ਜੋ ਕਿਸੇ ਹੋਰ ਕਮਿਟ ਨੂੰ ਉਲਟਾ ਦਿੰਦੀ ਹੈ।';

  @override
  String get gameHintWord211Reset => 'Git ਹਵਾਲੇ ਨੂੰ ਹਿਲਾਉਂਦਾ ਹੈ ਅਤੇ ਇੰਡੈਕਸ ਜਾਂ ਵਰਕਿੰਗ ਫ਼ਾਈਲਾਂ ਰੀਸੈੱਟ ਕਰ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord212Reflog => 'Git ਹਵਾਲਿਆਂ ਦੇ ਅੱਪਡੇਟਾਂ ਦਾ ਸਥਾਨਕ ਇਤਿਹਾਸ।';

  @override
  String get gameHintWord213Diff => 'ਵਰਜਨਾਂ ਜਾਂ ਫ਼ਾਈਲਾਂ ਵਿਚਕਾਰ ਅੰਤਰ ਦਿਖਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord214Status => 'ਸਟੇਜ ਕੀਤੀਆਂ, ਸੋਧੀਆਂ ਅਤੇ ਅਣਟ੍ਰੈਕ ਫ਼ਾਈਲਾਂ ਦੱਸਦਾ ਹੈ।';

  @override
  String get gameHintWord215Checkout => 'ਰਿਵੀਜ਼ਨ ਬਦਲਣ ਜਾਂ ਫ਼ਾਈਲਾਂ ਬਹਾਲ ਕਰਨ ਲਈ Git ਕਮਾਂਡ।';

  @override
  String get gameHintWord216Tag => 'ਨਾਮ ਵਾਲਾ ਹਵਾਲਾ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ ਰਿਲੀਜ਼ ਨੂੰ ਚਿੰਨ੍ਹਿਤ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord217Remote => 'ਕਿਸੇ ਹੋਰ ਰਿਪੋਜ਼ਟਰੀ ਨਾਲ ਨਾਮ ਵਾਲਾ ਕਨੈਕਸ਼ਨ।';

  @override
  String get gameHintWord218Origin => 'ਕਲੋਨ ਕੀਤੀ ਰਿਪੋਜ਼ਟਰੀ ਦੇ ਰਿਮੋਟ ਨੂੰ ਦਿੱਤਾ ਡਿਫਾਲਟ ਨਾਮ।';

  @override
  String get gameHintWord219Upstream => 'ਸਥਾਨਕ ਬ੍ਰਾਂਚ ਨਾਲ ਜੁੜੀ ਰਿਮੋਟ ਟ੍ਰੈਕਿੰਗ ਬ੍ਰਾਂਚ।';

  @override
  String get gameHintWord220Worktree => 'ਰਿਪੋਜ਼ਟਰੀ ਨਾਲ ਜੁੜੀ ਚੈੱਕ-ਆਊਟ ਕੀਤੀ ਵਰਕਿੰਗ ਡਾਇਰੈਕਟਰੀ।';

  @override
  String get gameHintWord221Registry => 'ਕੰਟੇਨਰ ਇਮੇਜਾਂ ਨੂੰ ਸਟੋਰ ਅਤੇ ਵੰਡਣ ਵਾਲੀ ਸੇਵਾ।';

  @override
  String get gameHintWord222Digest => 'ਕੰਟੇਨਰ ਇਮੇਜ ਲਈ ਸਮੱਗਰੀ-ਆਧਾਰਿਤ ਪਛਾਣਕਰਤਾ।';

  @override
  String get gameHintWord223Layer => 'ਕੰਟੇਨਰ ਇਮੇਜ ਦਾ ਹਿੱਸਾ ਬਣਨ ਵਾਲੀਆਂ ਫ਼ਾਈਲਸਿਸਟਮ ਤਬਦੀਲੀਆਂ।';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile ਹਦਾਇਤ ਜੋ ਮੁੱਖ ਕੰਟੇਨਰ ਐਕਜ਼ੀਕਿਊਟੇਬਲ ਤੈਅ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord225Cmd => 'Dockerfile ਹਦਾਇਤ ਜੋ ਡਿਫਾਲਟ ਕਮਾਂਡ ਜਾਂ ਆਰਗੂਮੈਂਟ ਦੱਸਦੀ ਹੈ।';

  @override
  String get gameHintWord226Workdir => 'Dockerfile ਹਦਾਇਤ ਜੋ ਵਰਕਿੰਗ ਡਾਇਰੈਕਟਰੀ ਸੈੱਟ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord227Copy => 'Dockerfile ਹਦਾਇਤ ਜੋ ਬਿਲਡ-ਸੰਦਰਭ ਦੀਆਂ ਫ਼ਾਈਲਾਂ ਨੂੰ ਇਮੇਜ ਵਿੱਚ ਕਾਪੀ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord228Add => 'Dockerfile ਹਦਾਇਤ ਜੋ ਸਥਾਨਕ ਆਰਕਾਈਵ ਵੀ ਖੋਲ੍ਹ ਸਕਦੀ ਹੈ।';

  @override
  String get gameHintWord229Run => 'Dockerfile ਹਦਾਇਤ ਜੋ ਬਿਲਡ-ਸਮੇਂ ਦੀ ਕਮਾਂਡ ਚਲਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord230Env => 'Dockerfile ਹਦਾਇਤ ਜੋ ਵਾਤਾਵਰਣ ਵੇਰੀਏਬਲ ਪਰਿਭਾਸ਼ਿਤ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord231Arg => 'Dockerfile ਹਦਾਇਤ ਜੋ ਬਿਲਡ-ਸਮੇਂ ਦਾ ਵੇਰੀਏਬਲ ਘੋਸ਼ਿਤ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord232Expose => 'Dockerfile ਹਦਾਇਤ ਜੋ ਕੰਟੇਨਰ ਪੋਰਟ ਦਾ ਦਸਤਾਵੇਜ਼ ਬਣਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord233User => 'Dockerfile ਹਦਾਇਤ ਜੋ ਅਗਲੀਆਂ ਕਮਾਂਡਾਂ ਲਈ ਖਾਤਾ ਚੁਣਦੀ ਹੈ।';

  @override
  String get gameHintWord234Healthcheck => 'ਹਦਾਇਤ ਜੋ ਕੰਟੇਨਰ ਦੀ ਸਿਹਤ ਜਾਂਚਣ ਦਾ ਢੰਗ ਦੱਸਦੀ ਹੈ।';

  @override
  String get gameHintWord235Shebang => 'ਸਕ੍ਰਿਪਟ ਦੀ ਪਹਿਲੀ ਲਾਈਨ ਜੋ ਚਲਾਉਣ ਵਾਲਾ ਇੰਟਰਪ੍ਰੈਟਰ ਦੱਸਦੀ ਹੈ।';

  @override
  String get gameHintWord236Compose => 'ਕਈ-ਕੰਟੇਨਰ ਐਪਲੀਕੇਸ਼ਨਾਂ ਨੂੰ ਪਰਿਭਾਸ਼ਿਤ ਅਤੇ ਚਲਾਉਣ ਲਈ Docker ਟੂਲ।';

  @override
  String get gameHintWord237Bridge => 'ਸਥਾਨਕ ਕੰਟੇਨਰ ਨੈੱਟਵਰਕਿੰਗ ਲਈ ਆਮ Docker ਨੈੱਟਵਰਕ ਡਰਾਈਵਰ।';

  @override
  String get gameHintWord238Overlay => 'ਕਈ ਹੋਸਟਾਂ ਦੇ ਕੰਟੇਨਰਾਂ ਵਿੱਚ ਫੈਲਿਆ ਨੈੱਟਵਰਕ।';

  @override
  String get gameHintWord239None => 'Docker ਨੈੱਟਵਰਕ ਡਰਾਈਵਰ ਜੋ ਕੰਟੇਨਰ ਨੈੱਟਵਰਕਿੰਗ ਬੰਦ ਕਰ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord240Prune => 'ਨਾ-ਵਰਤੇ ਕੰਟੇਨਰ ਸਰੋਤ ਹਟਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord241Replicaset => 'Kubernetes ਕੰਟਰੋਲਰ ਜੋ ਲੋੜੀਂਦੀ ਪੌਡ ਗਿਣਤੀ ਬਣਾਈ ਰੱਖਦਾ ਹੈ।';

  @override
  String get gameHintWord242Service => 'Kubernetes ਐਬਸਟ੍ਰੈਕਸ਼ਨ ਜੋ ਪੌਡਾਂ ਤੱਕ ਸਥਿਰ ਪਹੁੰਚ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes ਸੇਵਾ ਦੇ ਪਿੱਛੇ ਵਾਲੇ ਪਤੇ।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes ਸਰੋਤਾਂ ਨੂੰ ਸਮੂਹਬੱਧ ਕਰਨ ਵਾਲਾ ਤਰਕਸੰਗਤ ਦਾਇਰਾ।';

  @override
  String get gameHintWord245Node => 'ਵਰਕਰ ਮਸ਼ੀਨ ਜੋ Kubernetes ਪੌਡਾਂ ਨੂੰ ਹੋਸਟ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord246Kubelet => 'ਹਰ ਨੋਡ ਉੱਤੇ ਏਜੰਟ ਜੋ ਪੌਡ ਐਗਜ਼ੀਕਿਊਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord247Pvc => 'ਸਥਾਈ ਸਟੋਰੇਜ ਲਈ Kubernetes ਬੇਨਤੀ।';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes ਕੰਟਰੋਲ-ਪਲੇਨ ਕੰਪੋਨੈਂਟ ਜੋ ਕਲੱਸਟਰ API ਪ੍ਰਦਾਨ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord249Role => 'ਭੂਮਿਕਾ-ਆਧਾਰਿਤ ਪਹੁੰਚ ਨਿਯੰਤਰਣ ਵਿੱਚ ਇਜਾਜ਼ਤਾਂ ਦਾ ਨਾਮ ਵਾਲਾ ਸੈੱਟ।';

  @override
  String get gameHintWord250Resourcequota => 'Kubernetes ਆਬਜੈਕਟ ਜੋ ਨੇਮਸਪੇਸ ਵਿੱਚ ਸਰੋਤ ਖਪਤ ਨੂੰ ਸੀਮਿਤ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord251Selector => 'ਲੇਬਲਾਂ ਰਾਹੀਂ ਸਰੋਤਾਂ ਨਾਲ ਮੇਲ ਖਾਂਦਾ ਸਮੀਕਰਨ।';

  @override
  String get gameHintWord252Taint => 'ਨੋਡ ਦੀ ਵਿਸ਼ੇਸ਼ਤਾ ਜੋ ਮੇਲ ਖਾਂਦੀ ਟੋਲਰੇਸ਼ਨ ਤੋਂ ਬਿਨਾਂ ਪੌਡਾਂ ਨੂੰ ਦੂਰ ਰੱਖਦੀ ਹੈ।';

  @override
  String get gameHintWord253Toleration => 'ਪੌਡ ਸੈਟਿੰਗ ਜੋ ਟੇਂਟ ਵਾਲੇ ਨੋਡ ਉੱਤੇ ਸ਼ੈਡਿਊਲ ਹੋਣ ਦਿੰਦੀ ਹੈ।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes ਨੋਡ ਨੂੰ ਸ਼ੈਡਿਊਲ ਕਰਨ ਦੇ ਅਯੋਗ ਚਿੰਨ੍ਹਿਤ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord255Uncordon => 'ਕੋਰਡਨ ਕੀਤੇ ਨੋਡ ਨੂੰ ਦੁਬਾਰਾ ਸ਼ੈਡਿਊਲ ਕਰਨ ਯੋਗ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord256Drain => 'ਨੋਡ ਦੀ ਮੁਰੰਮਤ ਤੋਂ ਪਹਿਲਾਂ ਵਰਕਲੋਡਾਂ ਨੂੰ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਹਟਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord257Job => 'Kubernetes ਵਰਕਲੋਡ ਜੋ ਕੰਮ ਨੂੰ ਪੂਰਾ ਹੋਣ ਤੱਕ ਚਲਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes ਵਰਕਲੋਡ ਜੋ ਸਮਾਂ-ਸਾਰਣੀ ਅਨੁਸਾਰ ਜੌਬਾਂ ਬਣਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord259Readiness => 'ਪ੍ਰੋਬ ਜੋ ਦੱਸਦਾ ਹੈ ਕਿ ਕੰਟੇਨਰ ਟ੍ਰੈਫਿਕ ਲੈ ਸਕਦਾ ਹੈ ਜਾਂ ਨਹੀਂ।';

  @override
  String get gameHintWord260Liveness => 'ਪ੍ਰੋਬ ਜੋ ਦੱਸਦਾ ਹੈ ਕਿ ਕੰਟੇਨਰ ਨੂੰ ਰੀਸਟਾਰਟ ਕਰਨ ਦੀ ਲੋੜ ਹੈ ਜਾਂ ਨਹੀਂ।';

  @override
  String get gameHintWord261Canary => 'ਰਿਲੀਜ਼ ਤਰੀਕਾ ਜਿਸ ਵਿੱਚ ਨਵਾਂ ਵਰਜਨ ਥੋੜ੍ਹੇ ਟ੍ਰੈਫਿਕ ਨੂੰ ਦਿਖਾਇਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord262Rolling => 'ਅੱਪਡੇਟ ਰਣਨੀਤੀ ਜੋ ਚੱਲ ਰਹੀਆਂ ਇੰਸਟੈਂਸਾਂ ਨੂੰ ਹੌਲੀ-ਹੌਲੀ ਬਦਲਦੀ ਹੈ।';

  @override
  String get gameHintWord263Rollback => 'ਪਹਿਲਾਂ ਕੰਮ ਕਰਦੇ ਐਪਲੀਕੇਸ਼ਨ ਵਰਜਨ ਨੂੰ ਬਹਾਲ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord264Rollout => 'ਨਵੇਂ ਐਪਲੀਕੇਸ਼ਨ ਵਰਜਨ ਦੀ ਪੜਾਅਵਾਰ ਡਿਪਲੌਇਮੈਂਟ।';

  @override
  String get gameHintWord265Recreate => 'ਡਿਪਲੌਇਮੈਂਟ ਰਣਨੀਤੀ ਜੋ ਬਦਲ ਸ਼ੁਰੂ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਪੁਰਾਣੀਆਂ ਪੌਡਾਂ ਰੋਕਦੀ ਹੈ।';

  @override
  String get gameHintWord266Blue => 'ਬਲੂ-ਗ੍ਰੀਨ ਰਿਲੀਜ਼ ਦੇ ਦੋ ਵਾਤਾਵਰਣਾਂ ਵਿੱਚੋਂ ਇੱਕ।';

  @override
  String get gameHintWord267Green => 'ਬਲੂ-ਗ੍ਰੀਨ ਰਿਲੀਜ਼ ਦਾ ਦੂਜਾ ਵਾਤਾਵਰਣ।';

  @override
  String get gameHintWord268Artifact => 'ਬਿਲਡ ਪਾਈਪਲਾਈਨ ਦੁਆਰਾ ਬਣਿਆ ਵਰਜਨ ਵਾਲਾ ਆਊਟਪੁੱਟ।';

  @override
  String get gameHintWord269Staging => 'ਰਿਲੀਜ਼ ਦੀ ਪੁਸ਼ਟੀ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਪ੍ਰੋਡਕਸ਼ਨ ਤੋਂ ਪਹਿਲਾਂ ਦਾ ਵਾਤਾਵਰਣ।';

  @override
  String get gameHintWord270Production => 'ਅਸਲ ਅੰਤਿਮ ਉਪਭੋਗਤਾਵਾਂ ਨੂੰ ਸੇਵਾ ਦੇਣ ਵਾਲਾ ਵਾਤਾਵਰਣ।';

  @override
  String get gameHintWord271Release => 'ਵਰਤੋਂ ਲਈ ਪਹੁੰਚਾਇਆ ਗਿਆ ਸਾਫ਼ਟਵੇਅਰ ਵਰਜਨ।';

  @override
  String get gameHintWord272Version => 'ਸਾਫ਼ਟਵੇਅਰ ਸੰਸਕਰਣ ਨੂੰ ਵੱਖ ਕਰਨ ਵਾਲਾ ਪਛਾਣਕਰਤਾ।';

  @override
  String get gameHintWord273Revision => 'ਦਸਤਾਵੇਜ਼ ਜਾਂ ਕੋਡਬੇਸ ਦਾ ਪਛਾਣਿਆ ਜਾ ਸਕਣ ਵਾਲਾ ਵਰਜਨ।';

  @override
  String get gameHintWord274Webhook => 'ਘਟਨਾ ਵਾਪਰਨ ਉੱਤੇ ਭੇਜੀ ਜਾਂਦੀ HTTP ਸੂਚਨਾ।';

  @override
  String get gameHintWord275Runbook => 'ਸਿਸਟਮ ਚਲਾਉਣ ਜਾਂ ਬਹਾਲ ਕਰਨ ਦੀ ਦਸਤਾਵੇਜ਼ੀ ਵਿਧੀ।';

  @override
  String get gameHintWord276Workspace => 'ਪ੍ਰੋਜੈਕਟ ਦੇ ਕੰਮ ਵਾਲੇ ਸਰੋਤਾਂ ਵਾਲੀ ਡਾਇਰੈਕਟਰੀ ਜਾਂ ਦਾਇਰਾ।';

  @override
  String get gameHintWord277Credentials => 'ਸਿਸਟਮ ਤੱਕ ਪਹੁੰਚ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਪ੍ਰਮਾਣਿਕਤਾ ਸਮੱਗਰੀ।';

  @override
  String get gameHintWord278Trigger => 'ਘਟਨਾ ਜਾਂ ਸ਼ਰਤ ਜੋ ਪਾਈਪਲਾਈਨ ਸ਼ੁਰੂ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord279Parameter => 'ਜੌਬ ਜਾਂ ਫੰਕਸ਼ਨ ਨੂੰ ਦਿੱਤਾ ਨਾਮ ਵਾਲਾ ਇਨਪੁੱਟ।';

  @override
  String get gameHintWord280Access => 'ਇਜਾਜ਼ਤ ਅਨੁਸਾਰ ਸਰੋਤ ਨੂੰ ਵਰਤਣ ਦੀ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord281Module => 'ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਪਰਿਭਾਸ਼ਾਵਾਂ ਦਾ ਮੁੜ-ਵਰਤੋਂ ਯੋਗ ਸਮੂਹ।';

  @override
  String get gameHintWord282Provider => 'Terraform ਪਲੱਗਇਨ ਜੋ ਸੰਰਚਨਾ ਨੂੰ ਬਾਹਰੀ API ਨਾਲ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord283Resource => 'ਸੰਰਚਨਾ ਵਿੱਚ ਘੋਸ਼ਿਤ ਪ੍ਰਬੰਧਿਤ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਆਬਜੈਕਟ।';

  @override
  String get gameHintWord284Variable => 'ਸੰਰਚਨਾ ਜਾਂ ਕੋਡ ਦੁਆਰਾ ਵਰਤਿਆ ਜਾਂਦਾ ਨਾਮ ਵਾਲਾ ਇਨਪੁੱਟ ਮੁੱਲ।';

  @override
  String get gameHintWord285Output => 'ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਸੰਰਚਨਾ ਦੁਆਰਾ ਵਾਪਸ ਦਿੱਤਾ ਪ੍ਰਗਟ ਮੁੱਲ।';

  @override
  String get gameHintWord286Tfstate => 'Terraform ਸਟੇਟ ਸਨੈਪਸ਼ਾਟਾਂ ਨਾਲ ਜੁੜਿਆ ਫ਼ਾਈਲ ਪਿਛੇਤਰ।';

  @override
  String get gameHintWord287Tfvars => 'Terraform ਇਨਪੁੱਟ ਵੇਰੀਏਬਲ ਮੁੱਲਾਂ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਫ਼ਾਈਲ ਪਿਛੇਤਰ।';

  @override
  String get gameHintWord288Backend => 'Terraform ਸੰਰਚਨਾ ਜੋ ਸਟੇਟ ਸਟੋਰੇਜ ਨੂੰ ਕੰਟਰੋਲ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord289Plan => 'ਪ੍ਰਸਤਾਵਿਤ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਤਬਦੀਲੀਆਂ ਦਾ Terraform ਪੂਰਵ-ਦਰਸ਼ਨ।';

  @override
  String get gameHintWord290Apply => 'Terraform ਕਾਰਵਾਈ ਜੋ ਪ੍ਰਸਤਾਵਿਤ ਤਬਦੀਲੀਆਂ ਨੂੰ ਲਾਗੂ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord291Destroy => 'Terraform ਕਾਰਵਾਈ ਜੋ ਪ੍ਰਬੰਧਿਤ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਹਟਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord292Import => 'ਮੌਜੂਦਾ ਸਰੋਤ ਨੂੰ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਪ੍ਰਬੰਧਨ ਅਧੀਨ ਲਿਆਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord293Refresh => 'ਦਰਜ ਸਟੇਟ ਨੂੰ ਅਸਲ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਨਾਲ ਸਮਕਾਲੀ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord294Validate => 'ਸੰਰਚਨਾ ਦੀ ਸਿੰਟੈਕਸ ਅਤੇ ਅੰਦਰੂਨੀ ਇਕਸਾਰਤਾ ਜਾਂਚਦਾ ਹੈ।';

  @override
  String get gameHintWord295Fmt => 'Terraform ਕਮਾਂਡ ਜੋ ਮਿਆਰੀ ਸੰਰਚਨਾ ਫਾਰਮੈਟਿੰਗ ਲਾਗੂ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord296Init => 'Terraform ਪ੍ਰੋਵਾਈਡਰ ਅਤੇ ਵਰਕਿੰਗ ਡਾਇਰੈਕਟਰੀ ਨੂੰ ਸ਼ੁਰੂ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord297Executor => 'Jenkins ਵਰਕਰ ਸਲਾਟ ਜੋ ਬਿਲਡ ਚਲਾ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord298Dependencies => 'ਸਬੰਧ ਜਿਨ੍ਹਾਂ ਵਿੱਚ ਇੱਕ ਕੰਪੋਨੈਂਟ ਦੂਜੇ ਤੋਂ ਪਹਿਲਾਂ ਚਾਹੀਦਾ ਹੁੰਦਾ ਹੈ।';

  @override
  String get gameHintWord299Drift => 'ਘੋਸ਼ਿਤ ਅਤੇ ਅਸਲ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਸਥਿਤੀ ਵਿਚਕਾਰ ਅੰਤਰ।';

  @override
  String get gameHintWord300Locking => 'ਇੱਕੋ ਸਮੇਂ ਕਈ ਲਿਖਾਰੀਆਂ ਨੂੰ ਸਾਂਝੀ ਸਟੇਟ ਬਦਲਣ ਤੋਂ ਰੋਕਦਾ ਹੈ।';

  @override
  String get gameHintWord301Playbook => 'Ansible ਦਸਤਾਵੇਜ਼ ਜੋ ਆਟੋਮੇਸ਼ਨ ਪਲੇਅ ਅਤੇ ਟਾਸਕ ਦੱਸਦਾ ਹੈ।';

  @override
  String get gameHintWord302Inventory => 'Ansible ਵਿੱਚ ਪ੍ਰਬੰਧਿਤ ਹੋਸਟਾਂ ਅਤੇ ਸਮੂਹਾਂ ਦਾ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord303Facts => 'ਪ੍ਰਬੰਧਿਤ ਹੋਸਟਾਂ ਬਾਰੇ ਇਕੱਠੀ ਕੀਤੀ ਸਿਸਟਮ ਜਾਣਕਾਰੀ।';

  @override
  String get gameHintWord304Task => 'ਆਟੋਮੇਸ਼ਨ ਵਿੱਚ ਕੰਮ ਦੀ ਇੱਕ ਵੱਖਰੀ ਇਕਾਈ।';

  @override
  String get gameHintWord305Handler => 'Ansible ਟਾਸਕ ਜੋ ਤਬਦੀਲੀ ਦੀ ਸੂਚਨਾ ਮਿਲਣ ਉੱਤੇ ਚੱਲਦਾ ਹੈ।';

  @override
  String get gameHintWord306Notify => 'Ansible ਨਿਰਦੇਸ਼ ਜੋ ਬਦਲੇ ਟਾਸਕ ਤੋਂ ਬਾਅਦ ਹੈਂਡਲਰ ਨੂੰ ਕਤਾਰ ਵਿੱਚ ਲਗਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord307Become => 'Ansible ਸੈਟਿੰਗ ਜੋ ਵਿਸ਼ੇਸ਼ ਅਧਿਕਾਰ ਵਧਾਉਣ ਨੂੰ ਸਮਰੱਥ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord308Vault => 'ਸੰਵੇਦਨਸ਼ੀਲ ਆਟੋਮੇਸ਼ਨ ਡਾਟਾ ਨੂੰ ਇਨਕ੍ਰਿਪਟ ਕਰਨ ਲਈ Ansible ਵਿਸ਼ੇਸ਼ਤਾ।';

  @override
  String get gameHintWord309Register => 'Ansible ਨਿਰਦੇਸ਼ ਜੋ ਟਾਸਕ ਦੇ ਨਤੀਜੇ ਨੂੰ ਵੇਰੀਏਬਲ ਵਿੱਚ ਸੰਭਾਲਦਾ ਹੈ।';

  @override
  String get gameHintWord310When => 'Ansible ਕੀਵਰਡ ਜੋ ਸ਼ਰਤ ਅਨੁਸਾਰ ਟਾਸਕ ਚਲਾਉਣ ਨੂੰ ਕੰਟਰੋਲ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord311Loop => 'ਆਟੋਮੇਸ਼ਨ ਟਾਸਕ ਨੂੰ ਸੰਗ੍ਰਹਿ ਉੱਤੇ ਦੁਹਰਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord312Include => 'ਮੁੜ-ਵਰਤੋਂ ਯੋਗ ਆਟੋਮੇਸ਼ਨ ਸਮੱਗਰੀ ਨੂੰ ਗਤੀਸ਼ੀਲ ਢੰਗ ਨਾਲ ਲੋਡ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord313Tags => 'ਆਟੋਮੇਸ਼ਨ ਟਾਸਕਾਂ ਦੇ ਉਪ-ਸਮੂਹ ਚੁਣਨ ਲਈ ਵਰਤੇ ਜਾਂਦੇ ਲੇਬਲ।';

  @override
  String get gameHintWord314Template => 'ਡਿਪਲੌਇਮੈਂਟ ਤੋਂ ਪਹਿਲਾਂ ਵੇਰੀਏਬਲਾਂ ਨਾਲ ਤਿਆਰ ਕੀਤੀ ਫ਼ਾਈਲ।';

  @override
  String get gameHintWord315Jinja => 'Ansible ਦੁਆਰਾ ਵਰਤੀ ਜਾਂਦੀ ਟੈਂਪਲੇਟ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord316Abstraction => 'ਲਾਗੂਕਰਨ ਦੇ ਵੇਰਵਿਆਂ ਨੂੰ ਸਰਲ ਇੰਟਰਫੇਸ ਪਿੱਛੇ ਲੁਕਾਉਣਾ।';

  @override
  String get gameHintWord317Agile => 'ਫੀਡਬੈਕ ਉੱਤੇ ਜ਼ੋਰ ਦੇਣ ਵਾਲਾ ਦੁਹਰਾਅ ਵਾਲਾ ਸਾਫ਼ਟਵੇਅਰ ਡਿਲੀਵਰੀ ਤਰੀਕਾ।';

  @override
  String get gameHintWord318Puppet => 'ਘੋਸ਼ਣਾਤਮਕ ਮੈਨੀਫੈਸਟਾਂ ਵਾਲਾ ਸੰਰਚਨਾ ਪ੍ਰਬੰਧਨ ਟੂਲ।';

  @override
  String get gameHintWord319Airflow => 'ਵਰਕਫਲੋ DAG ਨੂੰ ਸ਼ੈਡਿਊਲ ਅਤੇ ਆਰਕੈਸਟ੍ਰੇਟ ਕਰਨ ਵਾਲਾ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord320Argo => 'ਕਲਾਊਡ-ਨੇਟਿਵ ਪ੍ਰੋਜੈਕਟ ਪਰਿਵਾਰ ਜਿਸ ਵਿੱਚ GitOps ਡਿਲੀਵਰੀ ਕੰਟਰੋਲਰ ਸ਼ਾਮਲ ਹੈ।';

  @override
  String get gameHintWord321Rds => 'AWS ਪ੍ਰਬੰਧਿਤ ਰਿਲੇਸ਼ਨਲ ਡਾਟਾਬੇਸ ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord322Sqs => 'AWS ਪ੍ਰਬੰਧਿਤ ਸੁਨੇਹਾ ਕਤਾਰ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord323Sns => 'AWS ਪਬਲਿਸ਼-ਸਬਸਕ੍ਰਾਈਬ ਸੂਚਨਾ ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord324Ses => 'AWS ਈਮੇਲ ਭੇਜਣ ਵਾਲੀ ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord325Iam => 'ਕਲਾਊਡ ਪਛਾਣ ਅਤੇ ਪਹੁੰਚ ਪ੍ਰਬੰਧਨ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord326Kms => 'AWS ਇਨਕ੍ਰਿਪਸ਼ਨ ਕੁੰਜੀ ਪ੍ਰਬੰਧਨ ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord327Waf => 'ਫਾਇਰਵਾਲ ਜੋ ਐਪਲੀਕੇਸ਼ਨ-ਪਰਤ ਵੈੱਬ ਬੇਨਤੀਆਂ ਨੂੰ ਫਿਲਟਰ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord328Eks => 'AWS ਪ੍ਰਬੰਧਿਤ Kubernetes ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord329Ecs => 'AWS ਪ੍ਰਬੰਧਿਤ ਕੰਟੇਨਰ ਆਰਕੈਸਟ੍ਰੇਸ਼ਨ ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord330Ecr => 'AWS ਕੰਟੇਨਰ ਇਮੇਜ ਰਜਿਸਟਰੀ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord331Aurora => 'MySQL ਅਤੇ PostgreSQL ਨਾਲ ਅਨੁਕੂਲ AWS ਰਿਲੇਸ਼ਨਲ ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord332Redshift => 'AWS ਵਿਸ਼ਲੇਸ਼ਣ ਡਾਟਾ ਵੇਅਰਹਾਊਸ।';

  @override
  String get gameHintWord333Neptune => 'AWS ਪ੍ਰਬੰਧਿਤ ਗ੍ਰਾਫ ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord334Elasticache => 'AWS ਪ੍ਰਬੰਧਿਤ ਇਨ-ਮੈਮੋਰੀ ਕੈਸ਼ਿੰਗ ਸੇਵਾ।';

  @override
  String get gameHintWord335Athena => 'SQL ਨਾਲ ਆਬਜੈਕਟ-ਸਟੋਰੇਜ ਡਾਟਾ ਕੁਏਰੀ ਕਰਨ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord336Glue => 'AWS ਸਰਵਰ-ਰਹਿਤ ਡਾਟਾ ਇੰਟੀਗ੍ਰੇਸ਼ਨ ਅਤੇ ETL ਸੇਵਾ।';

  @override
  String get gameHintWord337Emr => 'ਪ੍ਰਬੰਧਿਤ ਵੱਡੇ-ਡਾਟਾ ਪ੍ਰੋਸੈਸਿੰਗ ਕਲੱਸਟਰਾਂ ਲਈ AWS ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord338Lambda => 'ਸਰਵਰ ਪ੍ਰਬੰਧਿਤ ਕੀਤੇ ਬਿਨਾਂ ਫੰਕਸ਼ਨ ਚਲਾਉਣ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord339Cloudfront => 'AWS ਗਲੋਬਲ ਸਮੱਗਰੀ ਡਿਲੀਵਰੀ ਨੈੱਟਵਰਕ।';

  @override
  String get gameHintWord340Cloudwatch => 'ਮੀਟ੍ਰਿਕਸ, ਲੌਗ ਅਤੇ ਅਲਾਰਮ ਇਕੱਠੇ ਕਰਨ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ਬ੍ਰਾਊਜ਼ਰ-ਆਧਾਰਿਤ ਸ਼ੈੱਲ ਵਾਤਾਵਰਣ।';

  @override
  String get gameHintWord342Codecommit => 'AWS ਪ੍ਰਬੰਧਿਤ Git ਰਿਪੋਜ਼ਟਰੀ ਸੇਵਾ।';

  @override
  String get gameHintWord343Codebuild => 'ਸੋਰਸ ਕੰਪਾਇਲ ਕਰਨ ਅਤੇ ਬਿਲਡ ਟੈਸਟ ਚਲਾਉਣ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord344Codedeploy => 'AWS ਸਵੈਚਾਲਿਤ ਐਪਲੀਕੇਸ਼ਨ ਡਿਪਲੌਇਮੈਂਟ ਸੇਵਾ।';

  @override
  String get gameHintWord345Codepipeline => 'AWS ਨਿਰੰਤਰ ਡਿਲੀਵਰੀ ਪਾਈਪਲਾਈਨ ਸੇਵਾ।';

  @override
  String get gameHintWord346Guardduty => 'AWS ਬੁੱਧੀਮਾਨ ਖਤਰਾ ਪਛਾਣ ਸੇਵਾ।';

  @override
  String get gameHintWord347Inspector => 'ਵਰਕਲੋਡਾਂ ਦੀਆਂ ਕਮਜ਼ੋਰੀਆਂ ਦਾ ਮੁਲਾਂਕਣ ਕਰਨ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord348Macie => 'ਆਬਜੈਕਟ ਸਟੋਰੇਜ ਵਿੱਚ ਸੰਵੇਦਨਸ਼ੀਲ ਡਾਟਾ ਲੱਭਣ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord349Shield => 'AWS ਪ੍ਰਬੰਧਿਤ DDoS ਸੁਰੱਖਿਆ ਸੇਵਾ।';

  @override
  String get gameHintWord350Snowball => 'ਵੱਡੇ ਡਾਟਾ ਟ੍ਰਾਂਸਫਰ ਲਈ AWS ਭੌਤਿਕ ਉਪਕਰਣ।';

  @override
  String get gameHintWord351Snowcone => 'AWS ਔਫਲਾਈਨ ਟ੍ਰਾਂਸਫਰ ਪਰਿਵਾਰ ਦਾ ਛੋਟਾ ਮਜ਼ਬੂਤ ਯੰਤਰ।';

  @override
  String get gameHintWord352Datasync => 'AWS ਸਵੈਚਾਲਿਤ ਔਨਲਾਈਨ ਡਾਟਾ ਟ੍ਰਾਂਸਫਰ ਸੇਵਾ।';

  @override
  String get gameHintWord353Msk => 'AWS ਪ੍ਰਬੰਧਿਤ Apache Kafka ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord354Backup => 'ਰਿਕਵਰੀ ਲਈ ਰੱਖੀ ਡਾਟਾ ਦੀ ਕਾਪੀ।';

  @override
  String get gameHintWord355Transcribe => 'ਬੋਲੀ ਨੂੰ ਟੈਕਸਟ ਵਿੱਚ ਬਦਲਣ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord356Translate => 'ਭਾਸ਼ਾਵਾਂ ਵਿਚਕਾਰ ਟੈਕਸਟ ਦਾ ਅਨੁਵਾਦ ਕਰਨ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord357Rekognition => 'ਚਿੱਤਰਾਂ ਅਤੇ ਵੀਡੀਓ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕਰਨ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord358Comprehend => 'AWS ਕੁਦਰਤੀ-ਭਾਸ਼ਾ ਵਿਸ਼ਲੇਸ਼ਣ ਸੇਵਾ।';

  @override
  String get gameHintWord359Textract => 'ਦਸਤਾਵੇਜ਼ਾਂ ਵਿੱਚੋਂ ਟੈਕਸਟ ਅਤੇ ਸਾਰਣੀਆਂ ਕੱਢਣ ਵਾਲੀ AWS ਸੇਵਾ।';

  @override
  String get gameHintWord360Sagemaker => 'ਮਸ਼ੀਨ ਲਰਨਿੰਗ ਮਾਡਲ ਬਣਾਉਣ ਅਤੇ ਡਿਪਲੋਇ ਕਰਨ ਲਈ AWS ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud ਦਾ ਵਿਸ਼ਵ-ਪੱਧਰੀ ਵੰਡਿਆ ਰਿਲੇਸ਼ਨਲ ਡਾਟਾਬੇਸ।';

  @override
  String get gameHintWord362Pub => 'ਪਬਲਿਸ਼-ਸਬਸਕ੍ਰਾਈਬ ਸੁਨੇਹਾ ਪੈਟਰਨ ਦਾ ਪ੍ਰਕਾਸ਼ਨ ਵਾਲਾ ਅੱਧ।';

  @override
  String get gameHintWord363Sub => 'ਪਬਲਿਸ਼-ਸਬਸਕ੍ਰਾਈਬ ਸੁਨੇਹਾ ਪੈਟਰਨ ਦਾ ਗਾਹਕ ਵਾਲਾ ਅੱਧ।';

  @override
  String get gameHintWord364Functions => 'ਸਰਵਰ-ਰਹਿਤ ਪਲੇਟਫਾਰਮਾਂ ਦੁਆਰਾ ਦਿੱਤੀਆਂ ਘਟਨਾ-ਸੰਚਾਲਿਤ ਕੋਡ ਇਕਾਈਆਂ।';

  @override
  String get gameHintWord365App => 'ਸਾਫ਼ਟਵੇਅਰ ਐਪਲੀਕੇਸ਼ਨ ਦਾ ਛੋਟਾ ਰੂਪ।';

  @override
  String get gameHintWord366Engine => 'Compute Engine ਵਰਗੇ ਨਾਮਾਂ ਵਿੱਚ ਐਗਜ਼ੀਕਿਊਸ਼ਨ ਕੰਪੋਨੈਂਟ।';

  @override
  String get gameHintWord367Compute => 'ਵਰਚੁਅਲ ਮਸ਼ੀਨਾਂ ਜਾਂ ਕੰਟੇਨਰਾਂ ਦੁਆਰਾ ਦਿੱਤੀ ਪ੍ਰੋਸੈਸਿੰਗ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord368Network => 'ਡਾਟਾ ਦਾ ਆਦਾਨ-ਪ੍ਰਦਾਨ ਕਰਨ ਵਾਲੇ ਜੁੜੇ ਹੋਏ ਸਿਸਟਮ।';

  @override
  String get gameHintWord369Security => 'ਖਤਰਿਆਂ ਤੋਂ ਸਿਸਟਮਾਂ ਅਤੇ ਜਾਣਕਾਰੀ ਦੀ ਸੁਰੱਖਿਆ।';

  @override
  String get gameHintWord370Identity => 'ਪਹੁੰਚ ਫੈਸਲਿਆਂ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਉਪਭੋਗਤਾ ਜਾਂ ਸੇਵਾ ਦੀ ਪ੍ਰਤੀਨਿਧਤਾ।';

  @override
  String get gameHintWord371Monitoring => 'ਸਿਸਟਮ ਦੀ ਸਿਹਤ ਅਤੇ ਵਿਹਾਰ ਦੀ ਲਗਾਤਾਰ ਨਿਗਰਾਨੀ।';

  @override
  String get gameHintWord372Logging => 'ਐਪਲੀਕੇਸ਼ਨ ਅਤੇ ਸਿਸਟਮ ਦੀਆਂ ਵੱਖਰੀਆਂ ਘਟਨਾਵਾਂ ਦਰਜ ਕਰਨਾ।';

  @override
  String get gameHintWord373Trace => 'ਸੇਵਾ ਕਾਲਾਂ ਵਿੱਚ ਬੇਨਤੀ ਦੇ ਰਸਤੇ ਦਾ ਰਿਕਾਰਡ।';

  @override
  String get gameHintWord374Metrics => 'ਸਮੇਂ ਦੇ ਨਾਲ ਸਿਸਟਮ ਵਿਹਾਰ ਦੇ ਅੰਕੀ ਮਾਪ।';

  @override
  String get gameHintWord375Alert => 'ਸੂਚਨਾ ਕਿ ਨਿਗਰਾਨੀ ਅਧੀਨ ਸਥਿਤੀ ਨੂੰ ਧਿਆਨ ਦੀ ਲੋੜ ਹੈ।';

  @override
  String get gameHintWord376Billing => 'ਵਰਤੀਆਂ ਕਲਾਊਡ ਸੇਵਾਵਾਂ ਦਾ ਹਿਸਾਬ ਰੱਖਣਾ ਅਤੇ ਖਰਚਾ ਲੈਣਾ।';

  @override
  String get gameHintWord377Quota => 'ਸਰੋਤ ਦੀ ਵਰਤੋਂ ਹੋ ਸਕਣ ਵਾਲੀ ਮਾਤਰਾ ਦੀ ਸੀਮਾ।';

  @override
  String get gameHintWord378Region => 'ਉਪਲਬਧਤਾ ਜ਼ੋਨਾਂ ਵਾਲਾ ਭੂਗੋਲਿਕ ਕਲਾਊਡ ਡਿਪਲੌਇਮੈਂਟ ਖੇਤਰ।';

  @override
  String get gameHintWord379Tenancy => 'ਪ੍ਰਬੰਧ ਜੋ ਦੱਸਦਾ ਹੈ ਕਿ ਗਾਹਕ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਕਿਵੇਂ ਸਾਂਝਾ ਕਰਦੇ ਹਨ।';

  @override
  String get gameHintWord380Regional => 'ਕਲਾਊਡ ਖੇਤਰ ਤੱਕ ਸੀਮਿਤ ਸਰੋਤ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord381Cosmos => 'Azure ਦੇ ਵਿਸ਼ਵ-ਪੱਧਰੀ ਵੰਡੇ ਬਹੁ-ਮਾਡਲ ਡਾਟਾਬੇਸ ਦਾ ਨਾਮ।';

  @override
  String get gameHintWord382Synapse => 'ਵੇਅਰਹਾਊਸਿੰਗ ਅਤੇ ਡਾਟਾ ਪ੍ਰੋਸੈਸਿੰਗ ਨੂੰ ਜੋੜਨ ਵਾਲਾ Azure ਵਿਸ਼ਲੇਸ਼ਣ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft ਦਾ ਕਲਾਊਡ-ਨੇਟਿਵ ਸੁਰੱਖਿਆ ਜਾਣਕਾਰੀ ਅਤੇ ਘਟਨਾ ਪਲੇਟਫਾਰਮ।';

  @override
  String get gameHintWord384Defender => 'ਕਲਾਊਡ ਵਰਕਲੋਡਾਂ ਦੀ ਰੱਖਿਆ ਕਰਨ ਵਾਲਾ Microsoft ਸੁਰੱਖਿਆ ਉਤਪਾਦ ਪਰਿਵਾਰ।';

  @override
  String get gameHintWord385Entra => 'Azure AD ਬ੍ਰਾਂਡਿੰਗ ਦੀ ਥਾਂ ਲੈਣ ਵਾਲਾ Microsoft ਪਛਾਣ ਉਤਪਾਦ ਪਰਿਵਾਰ।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord387Arc => 'Azure ਸੇਵਾ ਜੋ ਪ੍ਰਬੰਧਨ ਨੂੰ Azure ਤੋਂ ਬਾਹਰਲੇ ਸਰੋਤਾਂ ਤੱਕ ਵਧਾਉਂਦੀ ਹੈ।';

  @override
  String get gameHintWord388Aks => 'Azure ਪ੍ਰਬੰਧਿਤ Kubernetes ਸੇਵਾ ਦਾ ਸੰਖੇਪ ਰੂਪ।';

  @override
  String get gameHintWord389Armor => 'Google Cloud ਵੈੱਬ ਸੁਰੱਖਿਆ ਸੇਵਾ ਦੇ ਨਾਮ ਦਾ ਪਿਛੇਤਰ।';

  @override
  String get gameHintWord390Blob => 'Azure ਆਬਜੈਕਟ-ਸਟੋਰੇਜ ਡਾਟਾ ਕਿਸਮ।';

  @override
  String get gameHintWord391Files => 'ਪ੍ਰਬੰਧਿਤ ਨੈੱਟਵਰਕ ਫ਼ਾਈਲ ਸ਼ੇਅਰ ਦੇਣ ਵਾਲੀ Azure ਸੇਵਾ।';

  @override
  String get gameHintWord392Disk => 'ਵਰਚੁਅਲ ਮਸ਼ੀਨ ਨਾਲ ਜੁੜਿਆ ਬਲਾਕ-ਸਟੋਰੇਜ ਡਿਵਾਈਸ।';

  @override
  String get gameHintWord393Function => 'ਕੋਡ ਦਾ ਕਾਲ ਕੀਤਾ ਜਾ ਸਕਣ ਵਾਲਾ ਬਲਾਕ ਜੋ ਨਤੀਜਾ ਵਾਪਸ ਕਰ ਸਕਦਾ ਹੈ।';

  @override
  String get gameHintWord394Logic => 'ਵਰਕਫਲੋ ਏਕੀਕਰਨ ਲਈ Azure ਐਪ ਸੇਵਾ ਸ਼੍ਰੇਣੀ।';

  @override
  String get gameHintWord395Insights => 'Azure ਐਪਲੀਕੇਸ਼ਨ ਟੈਲੀਮੈਟਰੀ ਉਤਪਾਦ ਨਾਮ ਦਾ ਪਿਛੇਤਰ।';

  @override
  String get gameHintWord396Traffic => 'ਨੈੱਟਵਰਕ ਸਿਰਿਆਂ ਵਿਚਕਾਰ ਵਗਦਾ ਡਾਟਾ।';

  @override
  String get gameHintWord397Manager => 'Azure Resource ਉਤਪਾਦ ਨਾਮ ਦਾ ਪਿਛੇਤਰ ਜੋ ਉਸਦੇ ਕੰਟਰੋਲ ਪਲੇਨ ਲਈ ਹੈ।';

  @override
  String get gameHintWord398Bastion => 'ਨਿੱਜੀ ਹੋਸਟ ਪਹੁੰਚ ਲਈ ਪ੍ਰਬੰਧਿਤ ਜਾਂ ਮਜ਼ਬੂਤ ਕੀਤਾ ਪ੍ਰਵੇਸ਼ ਬਿੰਦੂ।';

  @override
  String get gameHintWord399Front => 'Azure ਦੀ ਗਲੋਬਲ ਪ੍ਰਵੇਸ਼-ਬਿੰਦੂ ਸੇਵਾ Front Door ਦਾ ਪਹਿਲਾ ਸ਼ਬਦ।';

  @override
  String get gameHintWord400Door => 'Azure ਦੀ ਗਲੋਬਲ ਪ੍ਰਵੇਸ਼-ਬਿੰਦੂ ਸੇਵਾ Front Door ਦਾ ਦੂਜਾ ਸ਼ਬਦ।';

  @override
  String get gameHintWord401Javascript => 'ਬ੍ਰਾਊਜ਼ਰਾਂ ਅਤੇ Node ਰਨਟਾਈਮਾਂ ਵਿੱਚ ਵਿਆਪਕ ਵਰਤੀ ਜਾਂਦੀ ਪ੍ਰੋਗਰਾਮਿੰਗ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord402Perl => 'ਟੈਕਸਟ ਪ੍ਰੋਸੈਸਿੰਗ ਅਤੇ ਰੈਗੂਲਰ ਸਮੀਕਰਨਾਂ ਲਈ ਜਾਣੀ ਜਾਂਦੀ ਸਕ੍ਰਿਪਟਿੰਗ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord403Powershell => 'Microsoft ਦੀ ਆਬਜੈਕਟ-ਮੁਖੀ ਸ਼ੈੱਲ ਅਤੇ ਆਟੋਮੇਸ਼ਨ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord404Java => 'Jenkins ਨੂੰ ਲਾਗੂ ਕਰਨ ਲਈ ਵਰਤੀ ਗਈ JVM ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord405Json => 'ਆਬਜੈਕਟਾਂ ਅਤੇ ਐਰਿਆਂ ਵਾਲਾ ਹਲਕਾ ਡਾਟਾ ਫਾਰਮੈਟ।';

  @override
  String get gameHintWord406Xml => 'ਅੰਦਰੋਂ-ਅੰਦਰ ਨਾਮ ਵਾਲੇ ਟੈਗਾਂ ਵਾਲਾ ਮਾਰਕਅੱਪ ਫਾਰਮੈਟ।';

  @override
  String get gameHintWord407Html => 'ਵੈੱਬ ਪੰਨਿਆਂ ਦੀ ਬਣਤਰ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਮਾਰਕਅੱਪ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord408Css => 'ਵੈੱਬ ਦੀ ਪੇਸ਼ਕਾਰੀ ਨੂੰ ਕੰਟਰੋਲ ਕਰਨ ਵਾਲੀ ਸਟਾਈਲਸ਼ੀਟ ਭਾਸ਼ਾ।';

  @override
  String get gameHintWord409String => 'ਟੈਕਸਟ ਅੱਖਰਾਂ ਦਾ ਕ੍ਰਮ।';

  @override
  String get gameHintWord410Array => 'ਤੱਤਾਂ ਦਾ ਇੰਡੈਕਸ ਵਾਲਾ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord411Hash => 'Ruby ਅਤੇ Perl ਵਿੱਚ ਸਹਿਯੋਗੀ ਕੀ-ਵੈਲਿਊ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord412Object => 'ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਅਤੇ ਵਿਹਾਰ ਵਾਲਾ ਰਨਟਾਈਮ ਮੁੱਲ।';

  @override
  String get gameHintWord413Class => 'ਕਲਾਸ-ਆਧਾਰਿਤ ਭਾਸ਼ਾਵਾਂ ਵਿੱਚ ਆਬਜੈਕਟ ਬਣਾਉਣ ਲਈ ਵਰਤੀ ਜਾਂਦੀ ਪਰਿਭਾਸ਼ਾ।';

  @override
  String get gameHintWord414Method => 'ਆਬਜੈਕਟ ਜਾਂ ਕਲਾਸ ਨਾਲ ਜੁੜਿਆ ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord415Interface => 'ਕੰਪੋਨੈਂਟ ਦੁਆਰਾ ਪ੍ਰਗਟ ਕੀਤੀਆਂ ਕਾਰਵਾਈਆਂ ਦਾ ਵਰਣਨ ਕਰਨ ਵਾਲਾ ਸਮਝੌਤਾ।';

  @override
  String get gameHintWord416Subclass => 'ਕਿਸੇ ਹੋਰ ਕਲਾਸ ਤੋਂ ਬਣੀ ਕਲਾਸ।';

  @override
  String get gameHintWord417Super => 'ਮੂਲ-ਕਲਾਸ ਦੇ ਵਿਹਾਰ ਨੂੰ ਕਾਲ ਕਰਨ ਲਈ ਵਰਤਿਆ ਕੀਵਰਡ।';

  @override
  String get gameHintWord418Protected => 'ਦਿੱਖ ਪੱਧਰ ਜੋ ਪਹੁੰਚ ਨੂੰ ਕਲਾਸ-ਸਬੰਧੀ ਸੰਦਰਭਾਂ ਤੱਕ ਸੀਮਿਤ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord419Exception => 'ਰਨਟਾਈਮ ਸਥਿਤੀ ਜੋ ਸਧਾਰਨ ਕੰਟਰੋਲ ਪ੍ਰਵਾਹ ਨੂੰ ਰੋਕ ਦਿੰਦੀ ਹੈ।';

  @override
  String get gameHintWord420Regex => 'ਟੈਕਸਟ ਮੇਲ ਕਰਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਪੈਟਰਨ ਸੰਕੇਤ।';

  @override
  String get gameHintWord421Lexical => 'ਸੋਰਸ-ਕੋਡ ਦੀ ਬਣਤਰ ਦੁਆਰਾ ਤੈਅ ਹੋਣ ਵਾਲੇ ਦਾਇਰੇ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord422Scalar => 'Perl ਵਿੱਚ ਇੱਕ-ਮੁੱਲ ਵਾਲੇ ਵੇਰੀਏਬਲ ਦੀ ਸ਼੍ਰੇਣੀ।';

  @override
  String get gameHintWord423Tuple => 'Python ਵਿੱਚ ਨਾ-ਬਦਲਣਯੋਗ ਕ੍ਰਮਬੱਧ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord424List => 'Python ਵਿੱਚ ਬਦਲਣਯੋਗ ਕ੍ਰਮਬੱਧ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord425Dict => 'Python ਦੀ ਅੰਦਰੂਨੀ ਮੈਪਿੰਗ ਕਿਸਮ ਦਾ ਨਾਮ।';

  @override
  String get gameHintWord426Dictionary => 'ਕੁੰਜੀਆਂ ਨੂੰ ਸਬੰਧਿਤ ਮੁੱਲਾਂ ਨਾਲ ਜੋੜਨ ਵਾਲਾ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord427Set => 'ਵੱਖਰੇ ਮੁੱਲਾਂ ਦਾ ਸੰਗ੍ਰਹਿ।';

  @override
  String get gameHintWord428Boolean => 'ਸਹੀ ਜਾਂ ਗਲਤ ਨੂੰ ਦਰਸਾਉਣ ਵਾਲੀ ਡਾਟਾ ਕਿਸਮ।';

  @override
  String get gameHintWord429Integer => 'ਪੂਰੀਆਂ ਸੰਖਿਆਵਾਂ ਨੂੰ ਦਰਸਾਉਂਦੀ ਸੰਖਿਆਤਮਕ ਕਿਸਮ।';

  @override
  String get gameHintWord430Float => 'ਫਲੋਟਿੰਗ-ਪੁਆਇੰਟ ਮੁੱਲਾਂ ਨੂੰ ਦਰਸਾਉਂਦੀ ਸੰਖਿਆਤਮਕ ਕਿਸਮ।';

  @override
  String get gameHintWord431Double => 'ਦੋਹਰੀ-ਸ਼ੁੱਧਤਾ ਵਾਲੀ ਫਲੋਟਿੰਗ-ਪੁਆਇੰਟ ਕਿਸਮ।';

  @override
  String get gameHintWord432Null => 'ਆਬਜੈਕਟ ਜਾਂ ਨਤੀਜੇ ਦੀ ਗੈਰ-ਮੌਜੂਦਗੀ ਨੂੰ ਦਰਸਾਉਂਦਾ ਮੁੱਲ।';

  @override
  String get gameHintWord433Undefined => 'ਗੁੰਮ ਦਿੱਤੇ ਮੁੱਲ ਲਈ JavaScript ਮੁੱਲ।';

  @override
  String get gameHintWord434Promise => 'ਆਖ਼ਰ ਮਿਲਣ ਵਾਲੇ ਅਸਿੰਕ੍ਰੋਨਸ ਨਤੀਜੇ ਨੂੰ ਦਰਸਾਉਂਦਾ JavaScript ਆਬਜੈਕਟ।';

  @override
  String get gameHintWord435Async => 'ਅਸਿੰਕ੍ਰੋਨਸ ਫੰਕਸ਼ਨ ਨੂੰ ਚਿੰਨ੍ਹਿਤ ਕਰਨ ਵਾਲਾ ਕੀਵਰਡ।';

  @override
  String get gameHintWord436Await => 'ਕੀਵਰਡ ਜੋ ਅਸਿੰਕ੍ਰੋਨਸ ਨਤੀਜੇ ਦੀ ਉਡੀਕ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord437Callback => 'ਫੰਕਸ਼ਨ ਜੋ ਕਿਸੇ ਹੋਰ ਕਾਰਵਾਈ ਦੁਆਰਾ ਕਾਲ ਕੀਤੇ ਜਾਣ ਲਈ ਦਿੱਤਾ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord438Closure => 'ਫੰਕਸ਼ਨ ਜੋ ਆਪਣੇ ਆਲੇ-ਦੁਆਲੇ ਦੇ ਲੈਕਸੀਕਲ ਦਾਇਰੇ ਤੱਕ ਪਹੁੰਚ ਰੱਖਦਾ ਹੈ।';

  @override
  String get gameHintWord439Generator => 'ਫੰਕਸ਼ਨ ਜੋ yield ਕੀਤੇ ਮੁੱਲਾਂ ਰਾਹੀਂ ਕ੍ਰਮ ਨੂੰ ਲੋੜ ਅਨੁਸਾਰ ਪੈਦਾ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord440Iterator => 'ਆਬਜੈਕਟ ਜੋ ਸੰਗ੍ਰਹਿ ਦੇ ਮੁੱਲਾਂ ਵਿੱਚੋਂ ਅੱਗੇ ਵਧਦਾ ਹੈ।';

  @override
  String get gameHintWord441Print => 'ਮੁੱਲ ਨੂੰ ਆਊਟਪੁੱਟ ਵਿੱਚ ਲਿਖਣ ਵਾਲਾ ਆਮ ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord442Input => 'ਸਟੈਂਡਰਡ ਇਨਪੁੱਟ ਤੋਂ ਲਾਈਨ ਪੜ੍ਹਨ ਵਾਲਾ Python ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord443Open => 'ਫ਼ਾਈਲ ਹੈਂਡਲ ਪ੍ਰਾਪਤ ਕਰਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord444Close => 'ਖੁੱਲ੍ਹੀ ਫ਼ਾਈਲ ਜਾਂ ਕਨੈਕਸ਼ਨ ਨੂੰ ਛੱਡਣ ਵਾਲੀ ਕਾਰਵਾਈ।';

  @override
  String get gameHintWord445Read => 'ਸਟ੍ਰੀਮ ਜਾਂ ਫ਼ਾਈਲ ਤੋਂ ਡਾਟਾ ਲੈਣ ਵਾਲੀ ਕਾਰਵਾਈ।';

  @override
  String get gameHintWord446Write => 'ਸਟ੍ਰੀਮ ਜਾਂ ਫ਼ਾਈਲ ਨੂੰ ਡਾਟਾ ਭੇਜਣ ਵਾਲੀ ਕਾਰਵਾਈ।';

  @override
  String get gameHintWord447Append => 'ਸੰਗ੍ਰਹਿ ਦੇ ਅੰਤ ਵਿੱਚ ਇੱਕ ਆਈਟਮ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord448Split => 'ਵੱਖਰੇਵੇਂ ਦੀ ਵਰਤੋਂ ਨਾਲ ਟੈਕਸਟ ਨੂੰ ਉਪ-ਸਤਰਾਂ ਵਿੱਚ ਤੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord449Join => 'ਵਿਭਾਜਕ ਨਾਲ ਸਤਰਾਂ ਦੇ ਕ੍ਰਮ ਨੂੰ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord450Strip => 'Python ਸਤਰ ਦੇ ਆਲੇ-ਦੁਆਲੇ ਦੀ ਖਾਲੀ ਥਾਂ ਹਟਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord451Chomp => 'Perl ਜਾਂ Ruby ਵਿੱਚ ਅੰਤ ਦਾ ਰਿਕਾਰਡ ਵਿਭਾਜਕ ਹਟਾਉਂਦਾ ਹੈ।';

  @override
  String get gameHintWord452Map => 'ਸੰਗ੍ਰਹਿ ਦੀ ਹਰ ਆਈਟਮ ਉੱਤੇ ਰੂਪਾਂਤਰਣ ਲਾਗੂ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord453Filter => 'ਸ਼ਰਤ ਪੂਰੀ ਕਰਨ ਵਾਲੀਆਂ ਸੰਗ੍ਰਹਿ ਆਈਟਮਾਂ ਨੂੰ ਰੱਖਦਾ ਹੈ।';

  @override
  String get gameHintWord454Reduce => 'ਸੰਗ੍ਰਹਿ ਨੂੰ ਇਕੱਠੇ ਹੋਏ ਨਤੀਜੇ ਵਿੱਚ ਜੋੜਦਾ ਹੈ।';

  @override
  String get gameHintWord455Range => 'ਪੂਰਨ ਅੰਕਾਂ ਦੀ ਗਣਿਤਕ ਲੜੀ ਨੂੰ ਦਰਸਾਉਂਦੀ Python ਕਿਸਮ।';

  @override
  String get gameHintWord456Length => 'ਸੰਗ੍ਰਹਿ ਦਾ ਆਕਾਰ ਵਾਪਸ ਕਰਨ ਵਾਲੀ ਵਿਸ਼ੇਸ਼ਤਾ ਜਾਂ ਵਿਧੀ।';

  @override
  String get gameHintWord457Len => 'ਸੰਗ੍ਰਹਿ ਦਾ ਆਕਾਰ ਵਾਪਸ ਕਰਨ ਵਾਲਾ Python ਅੰਦਰੂਨੀ ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord458Type => 'ਆਬਜੈਕਟ ਦੀ ਕਿਸਮ ਵਾਪਸ ਕਰਨ ਵਾਲਾ Python ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord459Isinstance => 'ਕਿਸਮ ਲੜੀ ਵਿੱਚ ਮੈਂਬਰਸ਼ਿਪ ਜਾਂਚਣ ਵਾਲਾ Python ਫੰਕਸ਼ਨ।';

  @override
  String get gameHintWord460Yield => 'ਜਨਰੇਟਰ ਤੋਂ ਮੁੱਲ ਪੈਦਾ ਕਰਨ ਵਾਲਾ ਕੀਵਰਡ।';

  @override
  String get gameHintWord461Saas => 'ਪੂਰੀਆਂ ਸਾਫ਼ਟਵੇਅਰ ਐਪਲੀਕੇਸ਼ਨਾਂ ਦੇਣ ਵਾਲਾ ਕਲਾਊਡ ਮਾਡਲ।';

  @override
  String get gameHintWord462Paas => 'ਪ੍ਰਬੰਧਿਤ ਐਪਲੀਕੇਸ਼ਨ ਵਿਕਾਸ ਪਲੇਟਫਾਰਮ ਦੇਣ ਵਾਲਾ ਕਲਾਊਡ ਮਾਡਲ।';

  @override
  String get gameHintWord463Iaas => 'ਵਰਚੁਅਲ ਕੰਪਿਊਟ, ਸਟੋਰੇਜ ਅਤੇ ਨੈੱਟਵਰਕਿੰਗ ਦੇਣ ਵਾਲਾ ਕਲਾਊਡ ਮਾਡਲ।';

  @override
  String get gameHintWord464Hybrid => 'ਨਿੱਜੀ ਅਤੇ ਜਨਤਕ ਇੰਫ੍ਰਾਸਟ੍ਰਕਚਰ ਨੂੰ ਜੋੜਨ ਵਾਲਾ ਕਲਾਊਡ ਤਰੀਕਾ।';

  @override
  String get gameHintWord465Archive => 'ਘੱਟ ਵਰਤੇ ਜਾਂਦੇ ਡਾਟਾ ਦੀ ਲੰਮੇ ਸਮੇਂ ਦੀ ਸਟੋਰੇਜ।';

  @override
  String get gameHintWord466Public => 'ਕਈ ਗਾਹਕਾਂ ਨੂੰ ਸੇਵਾਵਾਂ ਦੇਣ ਵਾਲਾ ਕਲਾਊਡ ਮਾਲਕੀ ਮਾਡਲ।';

  @override
  String get gameHintWord467Private => 'ਇੱਕ ਸੰਸਥਾ ਨੂੰ ਸਮਰਪਿਤ ਕਲਾਊਡ ਮਾਡਲ।';

  @override
  String get gameHintWord468Scalability => 'ਸਰੋਤ ਜੋੜ ਕੇ ਵਧਦੇ ਲੋਡ ਨੂੰ ਸੰਭਾਲਣ ਦੀ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord469Availability => 'ਲੋੜ ਪੈਣ ਉੱਤੇ ਸੇਵਾ ਕਿੰਨੀ ਪਹੁੰਚਯੋਗ ਰਹਿੰਦੀ ਹੈ।';

  @override
  String get gameHintWord470Resilience => 'ਅਸਫਲਤਾਵਾਂ ਨੂੰ ਸਹਿਣ ਅਤੇ ਉਨ੍ਹਾਂ ਤੋਂ ਉੱਭਰਨ ਦੀ ਸਮਰੱਥਾ।';

  @override
  String get gameHintWord471Redundancy => 'ਇਕੱਲੇ ਅਸਫਲਤਾ ਬਿੰਦੂਆਂ ਨੂੰ ਘਟਾਉਣ ਵਾਲੇ ਦੁਹਰਾਏ ਕੰਪੋਨੈਂਟ।';

  @override
  String get gameHintWord472Disaster => 'ਵੱਡੀ ਰੁਕਾਵਟ ਜਿਸਨੂੰ ਰਿਕਵਰੀ ਰਣਨੀਤੀ ਨਾਲ ਸੰਭਾਲਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord473Recovery => 'ਅਸਫਲਤਾ ਤੋਂ ਬਾਅਦ ਸੇਵਾ ਜਾਂ ਡਾਟਾ ਬਹਾਲ ਕਰਨਾ।';

  @override
  String get gameHintWord474Replicate => 'ਡਾਟਾ ਜਾਂ ਵਰਕਲੋਡਾਂ ਨੂੰ ਕਿਸੇ ਹੋਰ ਥਾਂ ਕਾਪੀ ਕਰਨਾ।';

  @override
  String get gameHintWord475Snapshotting => 'ਡਾਟਾ ਜਾਂ ਸਿਸਟਮ ਸਥਿਤੀ ਦੀਆਂ ਖਾਸ ਸਮੇਂ ਦੀਆਂ ਕਾਪੀਆਂ ਲੈਣਾ।';

  @override
  String get gameHintWord476Restore => 'ਸੰਭਾਲੀ ਕਾਪੀ ਤੋਂ ਡਾਟਾ ਮੁੜ ਪ੍ਰਾਪਤ ਕਰਨ ਵਾਲੀ ਕਾਰਵਾਈ।';

  @override
  String get gameHintWord477Residency => 'ਲੋੜ ਜੋ ਸਟੋਰ ਕੀਤੇ ਡਾਟਾ ਦੀ ਭੂਗੋਲਿਕ ਥਾਂ ਤੈਅ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord478Compliance => 'ਲੋੜੀਂਦੇ ਨਿਯਮਾਂ ਅਤੇ ਸੰਗਠਨਾਤਮਕ ਨਿਯੰਤਰਣਾਂ ਦੀ ਪਾਲਣਾ ਕਰਨਾ।';

  @override
  String get gameHintWord479Governance => 'ਤਕਨਾਲੋਜੀ ਦੀ ਵਰਤੋਂ ਨੂੰ ਕੰਟਰੋਲ ਕਰਨ ਵਾਲੀਆਂ ਨੀਤੀਆਂ ਅਤੇ ਪ੍ਰਕਿਰਿਆਵਾਂ।';

  @override
  String get gameHintWord480Audit => 'ਦਰਜ ਗਤੀਵਿਧੀਆਂ ਅਤੇ ਪਾਲਣਾ ਸਬੂਤਾਂ ਦੀ ਸਮੀਖਿਆ।';

  @override
  String get gameHintWord481Token => 'ਅਧਿਕਾਰ ਜਾਂ ਪਛਾਣ ਨੂੰ ਦਰਸਾਉਂਦੀ ਪ੍ਰਮਾਣ-ਸਮੱਗਰੀ ਜਾਂ ਚਿੰਨ੍ਹ।';

  @override
  String get gameHintWord482Oauth => 'ਸੌਂਪੀ ਗਈ ਪਹੁੰਚ ਦੀ ਆਗਿਆ ਦੇਣ ਵਾਲਾ ਅਧਿਕਾਰ ਫਰੇਮਵਰਕ।';

  @override
  String get gameHintWord483Saml => 'XML-ਆਧਾਰਿਤ ਮਿਆਰ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ ਉੱਦਮ ਸਿੰਗਲ ਸਾਈਨ-ਆਨ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell ਪਾਈਪਲਾਈਨਾਂ ਵਿੱਚ ਵਰਤੀ ਜਾਂਦੀ ਵਿਸ਼ੇਸ਼ ਕਮਾਂਡ।';

  @override
  String get gameHintWord485Algorithm => 'ਗਣਨਾਤਮਕ ਸਮੱਸਿਆ ਹੱਲ ਕਰਨ ਲਈ ਕਦਮਾਂ ਦਾ ਪਰਿਭਾਸ਼ਿਤ ਕ੍ਰਮ।';

  @override
  String get gameHintWord486Key => 'ਇਨਕ੍ਰਿਪਸ਼ਨ ਨੂੰ ਕੰਟਰੋਲ ਕਰਨ ਜਾਂ ਸਟੋਰ ਕੀਤੇ ਡਾਟਾ ਦੀ ਪਛਾਣ ਲਈ ਵਰਤਿਆ ਮੁੱਲ।';

  @override
  String get gameHintWord487Alias => 'ਸ਼ੈੱਲ ਕਮਾਂਡ ਜਾਂ ਸਰੋਤ ਦਾ ਬਦਲਵਾਂ ਨਾਮ।';

  @override
  String get gameHintWord488Amend => 'Git ਕਮਿਟ ਵਿਕਲਪ ਜੋ ਸਭ ਤੋਂ ਨਵੀਂ ਕਮਿਟ ਨੂੰ ਬਦਲ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord489Allsigned => 'PowerShell ਐਗਜ਼ੀਕਿਊਸ਼ਨ ਨੀਤੀ ਜੋ ਹਸਤਾਖਰ ਵਾਲੀਆਂ ਸਕ੍ਰਿਪਟਾਂ ਮੰਗਦੀ ਹੈ।';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell ਨੀਤੀ ਜੋ ਡਾਊਨਲੋਡ ਕੀਤੀਆਂ ਸਕ੍ਰਿਪਟਾਂ ਉੱਤੇ ਹਸਤਾਖਰ ਮੰਗਦੀ ਹੈ।';

  @override
  String get gameHintWord491Acl => 'ਉਪਭੋਗਤਾਵਾਂ ਜਾਂ ਸਿਸਟਮਾਂ ਲਈ ਇਜਾਜ਼ਤਾਂ ਪਰਿਭਾਸ਼ਿਤ ਕਰਨ ਵਾਲੀ ਸੂਚੀ।';

  @override
  String get gameHintWord492Uid => 'Unix ਉਪਭੋਗਤਾ ਨੂੰ ਦਿੱਤਾ ਸੰਖਿਆਤਮਕ ਪਛਾਣਕਰਤਾ।';

  @override
  String get gameHintWord493Setgid => 'ਇਜਾਜ਼ਤ ਬਿੱਟ ਜੋ ਚਲਾਉਣ ਜਾਂ ਵਿਰਾਸਤ ਸਮੇਂ ਸਮੂਹ ਪਛਾਣ ਨੂੰ ਪ੍ਰਭਾਵਿਤ ਕਰਦਾ ਹੈ।';

  @override
  String get gameHintWord494Setfacl => 'Linux ਕਮਾਂਡ ਜੋ ਫ਼ਾਈਲ ਪਹੁੰਚ ਨਿਯੰਤਰਣ ਸੂਚੀਆਂ ਸੈੱਟ ਕਰਦੀ ਹੈ।';

  @override
  String get gameHintWord495Isolation => 'ਵੱਖਰਾਪਣ ਜੋ ਵਰਕਲੋਡਾਂ ਨੂੰ ਇੱਕ ਦੂਜੇ ਵਿੱਚ ਦਖਲ ਦੇਣ ਤੋਂ ਰੋਕਦਾ ਹੈ।';

  @override
  String get gameHintWord496Sighup => 'Unix ਹੈਂਗਅੱਪ ਸਿਗਨਲ ਜੋ ਅਕਸਰ ਸੰਰਚਨਾ ਮੁੜ-ਲੋਡ ਦੀ ਬੇਨਤੀ ਲਈ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ।';

  @override
  String get gameHintWord497Sigint => 'Unix ਇੰਟਰੱਪਟ ਸਿਗਨਲ ਜੋ ਆਮ ਤੌਰ ਉੱਤੇ Control-C ਨਾਲ ਪੈਦਾ ਹੁੰਦਾ ਹੈ।';

  @override
  String get gameHintWord498Sigstop => 'Unix ਸਿਗਨਲ ਜੋ ਪ੍ਰਕਿਰਿਆ ਨੂੰ ਖਤਮ ਕੀਤੇ ਬਿਨਾਂ ਰੋਕ ਦਿੰਦਾ ਹੈ।';

  @override
  String get gameHintWord499Secrets => 'ਸੰਵੇਦਨਸ਼ੀਲ ਮੁੱਲ ਜਿਵੇਂ ਪਾਸਵਰਡ ਅਤੇ ਪਹੁੰਚ ਕੁੰਜੀਆਂ।';

  @override
  String get gameHintWord500Secure => 'ਅਣਅਧਿਕਾਰਤ ਪਹੁੰਚ ਤੋਂ ਸੁਰੱਖਿਅਤ ਕਨੈਕਸ਼ਨ ਨੂੰ ਦਰਸਾਉਂਦਾ ਹੈ।';

  @override
  String get fontSettingsTitle => 'ਫੌਂਟ';

  @override
  String get fontChangeFont => 'ਫੌਂਟ ਬਦਲੋ';

  @override
  String get fontSystemDefault => 'ਸਿਸਟਮ ਡਿਫੌਲਟ';

  @override
  String get fontPreview => 'ਝਲਕ';

  @override
  String get fontPreviewSample => 'ਇੱਕ-ਇੱਕ ਸਵਾਲ ਨਾਲ DevOps ਸਿੱਖੋ';

  @override
  String get fontSelected => 'ਚੁਣਿਆ ਗਿਆ';

  @override
  String get fontLatinOnlyNote => 'ਕਸਟਮ ਫੌਂਟ ਲਾਤੀਨੀ ਅੱਖਰਾਂ \'ਤੇ ਲਾਗੂ ਹੁੰਦੇ ਹਨ। ਹੋਰ ਲਿਪੀਆਂ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਫੌਂਟ ਵਿੱਚ ਹੀ ਰਹਿਣਗੀਆਂ।';

  @override
  String get fontDescSystem => 'ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦਾ ਬਿਲਟ-ਇਨ ਫੌਂਟ';

  @override
  String get fontDescGeometric => 'ਜਿਓਮੈਟ੍ਰਿਕ ਸੈਨਸ-ਸੈਰਿਫ';

  @override
  String get fontDescGeometricRounded => 'ਜਿਓਮੈਟ੍ਰਿਕ ਗੋਲ ਸੈਨਸ-ਸੈਰਿਫ';

  @override
  String get fontDescFriendly => 'ਦੋਸਤਾਨਾ ਸੈਨਸ-ਸੈਰਿਫ';

  @override
  String get fontDescCondensed => 'ਸੰਘਣਾ';

  @override
  String get fontDescRounded => 'ਗੋਲ ਸੈਨਸ-ਸੈਰਿਫ';

  @override
  String get fontDescRoundedDisplay => 'ਗੋਲ ਡਿਸਪਲੇ';

  @override
  String gameScene3dScene(String value1) {
    return '3D ਦ੍ਰਿਸ਼ $value1';
  }
}
