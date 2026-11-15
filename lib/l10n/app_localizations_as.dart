// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appTour => 'এপৰ পৰিচয়';

  @override
  String get skipTour => 'পৰিচয় এৰি যাওক';

  @override
  String get finishTour => 'পৰিচয় শেষ কৰক';

  @override
  String tourStep(int current, int total) {
    return 'ধাপ $current / $total';
  }

  @override
  String get tourMenuTitle => 'নেভিগেচন মেনু';

  @override
  String get tourSearch => 'সম্পৰ্কিত কুইজৰ শ্ৰেণী বিচাৰিবলৈ ইয়াত বিষয় লিখক।';

  @override
  String get tourCategory => 'মিশ্ৰিত কুইজৰ বাবে DevOps-ত টিপক। অন্য শ্ৰেণীত প্ৰশ্নৰ ছেট আছে। পিছত চাবলৈ প্ৰশ্ন বুকমাৰ্ক কৰক।';

  @override
  String get tourMenu => 'নেভিগেচন মেনু খুলিবলৈ এই বুটামত টিপক।';

  @override
  String get tourLearning => 'কাৰ্ডৰ বাবে শিক্ষণ খোলক। যিকোনো দিশত ছোৱাইপ কৰক, মিহলাওক, স্বয়ংক্ৰিয় সলনি চালু কৰক বা কাৰ্ড বুকমাৰ্ক কৰক।';

  @override
  String get tourGames => 'খেল খেলি পইণ্ট অৰ্জন কৰক। স্তৰভিত্তিক খেলত প্ৰতিটো স্তৰ শেষ কৰিলে 100 পইণ্ট পায়; ইংগিতৰ খৰচ 20 পইণ্ট।';

  @override
  String get tourAchievements => 'আপোনাৰ কৃতিত্ব ইয়াত চাওক। নতুন কৃতিত্ব আৰু উপলব্ধ থীম পপআপত জনোৱা হয়।';

  @override
  String get tourSettings => 'ভাষা, থীম আৰু শব্দ বাছক। বুকমাৰ্কৰ বাবে সংৰক্ষিত ডেটা বা এই নিৰ্দেশিকা আকৌ চাবলৈ এপৰ পৰিচয় খোলক।';

  @override
  String get achievementUnlocked => 'কৃতিত্ব আনলক হ\'ল!';

  @override
  String get themeUnlocked => 'নতুন থীম উপলব্ধ!';

  @override
  String get themeUnlockedMessage => 'এতিয়া ছেটিংছ > থীমত এই থীমটো বাছনি কৰিব পাৰে।';

  @override
  String get gameSounds => 'খেলৰ শব্দ';

  @override
  String get gameSoundsDescription => 'খেল আৰু কুইজৰ শব্দ প্ৰভাৱ। ডিভাইচৰ ভলিউম আৰু চাইলেণ্ট মোড পৰীক্ষা কৰক।';

  @override
  String get testSound => 'শব্দ পৰীক্ষা কৰক';

  @override
  String get soundSettingBusy => 'অনুগ্ৰহ কৰি অপেক্ষা কৰক...';

  @override
  String get soundSettingError => 'শব্দৰ ছেটিং লোড বা সংৰক্ষণ কৰিব পৰা নগ\'ল। পুনৰ চেষ্টা কৰক।';

  @override
  String get soundPlaybackError => 'শব্দ বজাব পৰা নগ\'ল। ডিভাইচ বা ব্ৰাউজাৰৰ অডিঅ\' ছেটিং পৰীক্ষা কৰক।';

  @override
  String get saveData => 'সংৰক্ষিত ডেটা';

  @override
  String get learningTranslationUnavailable => 'এই কাৰ্ডখন এতিয়াও নিৰ্বাচিত ভাষালৈ অনুবাদ কৰা হোৱা নাই।';

  @override
  String get saveQuestion => 'প্ৰশ্ন সংৰক্ষণ কৰক';

  @override
  String defaultPortQuestion(String service) {
    return '$service-ৰ ডিফল্ট প\'ৰ্ট কি?';
  }

  @override
  String get removeSavedItem => 'সংৰক্ষিত তালিকাৰ পৰা আঁতৰাওক';

  @override
  String get noSavedData => 'এতিয়ালৈকে একো সংৰক্ষণ কৰা হোৱা নাই। শিকাৰ কাৰ্ড বা কুইজৰ প্ৰশ্ন বুকমাৰ্ক কৰক।';

  @override
  String get savedDataError => 'সংৰক্ষিত ডেটা লোড বা আপডেট কৰিব পৰা নগ\'ল। পুনৰ চেষ্টা কৰক।';

  @override
  String get savedItemUnavailable => 'এই সংৰক্ষিত বস্তুটো এতিয়া উপলব্ধ নহয়।';

  @override
  String get correctAnswer => 'শুদ্ধ উত্তৰ';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get certificates => 'প্ৰমাণপত্ৰ';

  @override
  String get whatsNew => 'নতুন কি আছে';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get darkMode => 'ডাৰ্ক মোড';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা বাছক';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'কুইজ আৰম্ভ কৰক';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'শ্ৰেণী সলনি কৰক';

  @override
  String get dailyQuiz => 'দৈনিক কুইজ';

  @override
  String get dailyQuizCompleted => 'দৈনিক কুইজ সম্পূৰ্ণ';

  @override
  String get dailyQuizCompletedMessage => 'আপুনি আজিৰ দৈনিক কুইজ সম্পূৰ্ণ কৰিছে। নতুন প্ৰত্যাহ্বানৰ বাবে কাইলৈ আহক!';

  @override
  String get leaderboard => 'লিডাৰব\'ৰ্ড';

  @override
  String get shareApp => 'এপ শ্বেয়াৰ কৰক';

  @override
  String get rateApp => 'এপৰ মূল্যায়ন কৰক';

  @override
  String get about => 'বিষয়ে';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get home => 'মূল পৃষ্ঠা';

  @override
  String get games => 'খেল';

  @override
  String get referAndEarn => 'বন্ধুক আমন্ত্ৰণ কৰি উপাৰ্জন কৰক';

  @override
  String get themes => 'থীম';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get developer => 'ডেভেলপাৰ';

  @override
  String get contact => 'যোগাযোগ';

  @override
  String get learning => 'শিক্ষণ';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'মোৰ সৈতে সংযোগ কৰক';

  @override
  String get aboutDescription => 'DevOps Quizত Linux, Docker, Kubernetes আৰু অন্য DevOps বিষয় শিকি সাক্ষাৎকাৰ আৰু প্ৰমাণপত্ৰৰ বাবে প্ৰস্তুত হওক।';

  @override
  String get quizResult => 'কুইজৰ ফলাফল';

  @override
  String get outstanding => 'অসাধাৰণ!';

  @override
  String get greatJob => 'বৰ ভাল কৰিছে!';

  @override
  String get goodEffort => 'ভাল চেষ্টা!';

  @override
  String get keepPracticing => 'অনুশীলন কৰি থাকক!';

  @override
  String get dontGiveUp => 'হাৰ নামানিব!';

  @override
  String get shareMessage1 => 'মোৰ স্ক\'ৰ';

  @override
  String get shareMessage2 => 'DevOps কুইজত!';

  @override
  String get downloadApp => 'এপ ডাউনল\'ড কৰক:';

  @override
  String get score => 'স্ক\'ৰ';

  @override
  String get points => 'পইণ্ট';

  @override
  String get percentage => 'শতাংশ';

  @override
  String get bonus => 'বোনাছ';

  @override
  String get perfectScoreBonus => 'সম্পূৰ্ণ স্ক\'ৰ বোনাছ';

  @override
  String get shareScore => 'স্ক\'ৰ শ্বেয়াৰ কৰক';

  @override
  String get restartQuiz => 'কুইজ পুনৰ আৰম্ভ কৰক';

  @override
  String get backToCategories => 'শ্ৰেণীসমূহলৈ উভতি যাওক';

  @override
  String get greatProgress => 'ভাল কৰিছে! আপোনাৰ ভাল অগ্ৰগতি হৈছে।';

  @override
  String get practiceMore => 'ভাল চেষ্টা! অধিক অনুশীলনে আপোনাৰ স্ক\'ৰ বঢ়াব।';

  @override
  String get keepLearning => 'শিকি থাকক আৰু পুনৰ চেষ্টা কৰক।';

  @override
  String get everyExpertStarted => 'প্ৰতিজন বিশেষজ্ঞ প্ৰথমে শিক্ষাৰ্থী আছিল। অনুশীলন কৰি থাকক!';

  @override
  String get quizInstructions => 'কুইজৰ নিৰ্দেশনা';

  @override
  String get instruction1 => 'প্ৰতিটো ছেটত 25টা প্ৰশ্ন থাকে।';

  @override
  String get instruction2 => 'প্ৰতিটো প্ৰশ্নৰ বাবে 30 ছেকেণ্ড থাকে।';

  @override
  String get instruction3 => 'সেউজীয়া = শুদ্ধ উত্তৰ।';

  @override
  String get instruction4 => 'ৰঙা = ভুল উত্তৰ।';

  @override
  String get instruction5 => 'উত্তৰ সলনি কৰিব নোৱাৰি।';

  @override
  String get instruction6 => 'পিছলৈ বুটাম কেৱল পৰ্যালোচনাৰ বাবে।';

  @override
  String get instruction7 => 'সম্পূৰ্ণ হোৱাৰ পিছত স্ক\'ৰ দেখুওৱা হয়।';

  @override
  String get instruction8 => '??????? ????? ?????? 10 ????? ??????';

  @override
  String excellentPerformance(Object expert) {
    return 'উৎকৃষ্ট প্ৰদৰ্শন! আপুনি এজন $expert।';
  }

  @override
  String get selectCategory => 'শ্ৰেণী বাছক';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'ছেট বাছক';

  @override
  String get set => 'ছেট';

  @override
  String get questions => 'প্ৰশ্নসমূহ';

  @override
  String get noScoresYet => 'এতিয়ালৈ কোনো স্ক\'ৰ নাই';

  @override
  String get pointsShort => 'পইণ্ট';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizলৈ স্বাগতম';

  @override
  String hiUser(String name) {
    return 'নমস্কাৰ $name';
  }

  @override
  String get challengeMode => 'প্ৰত্যাহ্বান মোড';

  @override
  String get challenge => 'প্ৰত্যাহ্বান';

  @override
  String get question => 'প্ৰশ্ন';

  @override
  String get reward => 'পুৰস্কাৰ';

  @override
  String get survivalMode => 'ছাৰভাইভেল মোড';

  @override
  String get speedChallenge => 'দ্ৰুততাৰ প্ৰত্যাহ্বান';

  @override
  String get dailyChallenge => 'দৈনিক প্ৰত্যাহ্বান';

  @override
  String get ultimateChallenge => 'চূড়ান্ত প্ৰত্যাহ্বান';

  @override
  String get timeLeft => 'বাকী সময়';

  @override
  String get completed => 'সম্পূৰ্ণ';

  @override
  String get locked => 'লক কৰা';

  @override
  String get back => 'পিছলৈ';

  @override
  String get next => 'পৰৱৰ্তী';

  @override
  String get submit => 'দাখিল কৰক';

  @override
  String get achievements => 'কৃতিত্ব';

  @override
  String get streak => 'একেৰাহে দিন';

  @override
  String get days => 'দিন';

  @override
  String get tomorrowsReward => 'কাইলৈৰ পুৰস্কাৰ';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 মোৰ স্ক\'ৰ $score/$totalQuestions #DevOps Quiz!\n\n🏆 পইণ্ট: $earnedPoints\n🔥 বোনাছ: $bonusPoints\n📊 শতাংশ: $percentage%\n\nএপ ডাউনল\'ড কৰক:';
  }

  @override
  String get gameUiSpinWheel => 'চকা ঘূৰুৱাওক';

  @override
  String get gameUiSpinAndWinBonusPoints => 'ঘূৰুৱাওক আৰু বোনাছ পইণ্ট জিকক';

  @override
  String get gameUiScratchCard => 'স্ক্ৰেচ কাৰ্ড';

  @override
  String get gameUiScratchToRevealAReward => 'পুৰস্কাৰ উন্মোচন কৰিবলৈ স্ক্ৰেচ কৰক';

  @override
  String get gameUiLuckySlots => 'লাকী স্লট';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'স্লটবোৰ ঘূৰুৱাওক আৰু পইণ্ট জিকক';

  @override
  String get gameUiMysteryDeal => 'ৰহস্যময় ডিল';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'এটা ৰহস্যময় বাকচ বাছনি কৰক আৰু উত্তৰ দিয়ক';

  @override
  String get gameUiMemoryMatch => 'মেমৰি মেচ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps যোৰবোৰ মিলাওক';

  @override
  String get gameUiWordGuess => 'শব্দ অনুমান';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'স্তৰ অতিক্ৰম কৰি DevOps শব্দ অনুমান কৰক';

  @override
  String get gameUiFindWords => 'শব্দ বিচাৰক';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'গ্ৰিডত লুকাই থকা DevOps শব্দ বিচাৰক';

  @override
  String get gameUiSpotTheDifference => 'পাৰ্থক্য বিচাৰক';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'দুখন চিত্ৰিত দৃশ্যৰ মাজত পাঁচটা পৰিৱৰ্তন বিচাৰক';

  @override
  String get gameUiJigsawPuzzle => 'জিগছ পাজল';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'শ্বেয়াৰ কৰা HD পশু আৰু প্ৰকৃতিৰ ছবিবোৰ পুনৰ গঠন কৰক';

  @override
  String get gameUiHighOrLow => 'হাই নে লো';

  @override
  String get gameUiBuildAStreak => 'ধাৰাবাহিক জয় গঢ়ক';

  @override
  String get gameUiTrueOrFalseBlitz => 'শুদ্ধ নে ভুল ব্লিটজ';

  @override
  String get gameUiQuickAnswerQuiz => 'দ্ৰুত উত্তৰ কুইজ';

  @override
  String get gameUiCommandMatch => 'কমাণ্ড মেচ';

  @override
  String get gameUiMatchCommandsToMeanings => 'কমাণ্ডবোৰ অৰ্থৰ সৈতে মিলাওক';

  @override
  String get gameUiPortMaster => 'পোৰ্ট মাষ্টাৰ';

  @override
  String get gameUiGuessDefaultPorts => 'ডিফল্ট পোৰ্ট অনুমান কৰক';

  @override
  String get gameUiTicTacToe => 'টিক-টেক-টো';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X নটছ এণ্ড ক্ৰছেছ কম্পিউটাৰ';

  @override
  String get gameUiConnectFour => 'কানেক্ট ফোৰ';

  @override
  String get gameUiDropFourDiscs => 'চাৰিটা ডিছ্ক পেলাওক';

  @override
  String get gameUiLudo => 'লুডো';

  @override
  String get gameUiRaceAgainstBots => 'বটৰ বিৰুদ্ধে দৌৰ প্ৰতিযোগিতা';

  @override
  String get gameUiChess => 'দাবা';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'দাবাৰ বৰ্ডত বৈধ চাল, দুজন খেলুৱৈ';

  @override
  String get gameUiSnakeAndLadders => 'সাপ আৰু জখলা';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'ডাইচ বৰ্ড, সাপ আৰু জখলা, দুজন খেলুৱৈ';

  @override
  String get gameUiGames => 'খেল 🎮';

  @override
  String get gameUiPlayEarn => 'খেলক আৰু উপাৰ্জন কৰক';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'খেল খেলক আৰু বোনাছ পইণ্ট উপাৰ্জন কৰক!';

  @override
  String get gameUiSearchGames => 'খেল বিচাৰক';

  @override
  String get gameUiClearSearch => 'সন্ধান মচক';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\"ৰ সৈতে কোনো খেল মিলা নাই';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'ঘূৰুৱাওক আৰু বোনাছ পইণ্ট জিকক।';

  @override
  String get gameUiScratchToRevealYourReward => 'আপোনাৰ পুৰস্কাৰ উন্মোচন কৰিবলৈ স্ক্ৰেচ কৰক।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'স্লটবোৰ ঘূৰুৱাওক আৰু পইণ্ট জিকক।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'এটা ৰহস্যময় বাকচ বাছনি কৰক আৰু পইণ্ট জিকিবলৈ শুদ্ধকৈ উত্তৰ দিয়ক।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'পইণ্ট উপাৰ্জন কৰিবলৈ DevOps যোৰবোৰ মিলাওক।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 বাৰৰ চেষ্টাত DevOps শব্দটো অনুমান কৰক।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'গ্ৰিডত লুকাই থকা DevOps শব্দ বিচাৰক।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 টা স্তৰত DevOps শব্দ বিচাৰিবলৈ স্বাইপ কৰক।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'দুখন চিত্ৰিত দৃশ্যৰ মাজত পাঁচটা পৰিৱৰ্তন বিচাৰক।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'শ্বেয়াৰ কৰা HD পশু আৰু প্ৰকৃতিৰ ছবিবোৰ পুনৰ গঠন কৰক।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ধাৰাবাহিক জয় গঢ়ক আৰু আপোনাৰ পইণ্ট সুৰক্ষিত কৰক।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'দ্ৰুত উত্তৰ দি সময়ক হৰুৱাওক।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'শুদ্ধ নে ভুল ব্লিটজ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'কমাণ্ডবোৰ সিহঁতে কি কৰে তাৰ সৈতে মিলাওক।';

  @override
  String get gameUiCommandMatch670a76e => 'কমাণ্ড মেচ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 টা জীৱনৰ সৈতে ডিফল্ট পোৰ্ট অনুমান কৰক।';

  @override
  String get gameUiPortMaster8f5fd42 => 'পোৰ্ট মাষ্টাৰ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'কম্পিউটাৰৰ বিৰুদ্ধে O/X খেলক।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'জিকিবলৈ এটা শাৰীত চাৰিটা ডিছ্ক পেলাওক।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'আপোনাৰ গুটিবোৰ তিনিটা বটৰ বিৰুদ্ধে দৌৰুৱাওক।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'বৈধ চালৰ সৈতে স্থানীয় দুজন খেলুৱৈৰ দাবা।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'এটা বৈধ দুজন খেলুৱৈৰ দাবা খেল খেলক।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'দুজন খেলুৱৈৰ ডাইচ বৰ্ড খেল।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 লৈ দৌৰক। জখলাত উঠক আৰু সাপক এৰাওক।';

  @override
  String get gameUiPlay => 'খেলক';

  @override
  String get gameUiWheelStopped => 'চকা ৰৈ গ\'ল!';

  @override
  String get gameUiYourRewardIs => 'আপোনাৰ পুৰস্কাৰ হ\'ল';

  @override
  String get gameUiPOINTS => 'পইণ্ট';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'এই পুৰস্কাৰ দাবী কৰিবলৈ 1 টা কুইজ প্ৰশ্নৰ শুদ্ধ উত্তৰ দিয়ক।';

  @override
  String get gameUiWrongAnswerRewardLost => 'ভুল উত্তৰ = পুৰস্কাৰ হেৰুৱালে।';

  @override
  String get gameUiAnswerQuestion => 'প্ৰশ্নৰ উত্তৰ দিয়ক';

  @override
  String get gameUiSpinWheele449982 => '🎡 চকা ঘূৰুৱাওক';

  @override
  String get gameUiDailySpin => 'দৈনিক স্পিন';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'চকা ঘূৰুৱাওক, তাৰ পিছত আপোনাৰ পুৰস্কাৰ দাবী কৰিবলৈ এটা প্ৰশ্নৰ উত্তৰ দিয়ক!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'আপুনি আজিৰ স্পিন ইতিমধ্যে ব্যৱহাৰ কৰিছে।';

  @override
  String get gameUiSpinning => 'ঘূৰি আছে...';

  @override
  String get gameUiSPINNOW => 'এতিয়া ঘূৰুৱাওক';

  @override
  String get gameUiCOMEBACKTOMORROW => 'কাইলৈ উভতি আহক';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'আজিৰ পুৰস্কাৰ: ⭐ $value1 পইণ্ট';
  }

  @override
  String get gameUiBackToGames => 'খেললৈ উভতি যাওক';

  @override
  String get gameUiSPIN => 'ঘূৰুৱাওক';

  @override
  String get gameUiRewardRevealed => 'পুৰস্কাৰ উন্মোচিত হ\'ল!';

  @override
  String get gameUiYouFound => 'আপুনি পালে';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ স্ক্ৰেচ কাৰ্ড';

  @override
  String get gameUiDailyScratch => 'দৈনিক স্ক্ৰেচ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'আজিৰ পুৰস্কাৰ উন্মোচন কৰিবলৈ কাৰ্ডখন স্ক্ৰেচ কৰক!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'আপুনি আজিৰ স্ক্ৰেচ কাৰ্ড ইতিমধ্যে ব্যৱহাৰ কৰিছে।';

  @override
  String get gameUiAlreadyScratched => 'ইতিমধ্যে স্ক্ৰেচ কৰা হৈছে';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'আন এটা পুৰস্কাৰৰ বাবে কাইলৈ উভতি আহক।';

  @override
  String get gameUiYouRevealed => 'আপুনি উন্মোচন কৰিলে';

  @override
  String get gameUiSCRATCHHERE => 'ইয়াত স্ক্ৰেচ কৰক  👆';

  @override
  String get gameUiJACKPOT777 => 'জেকপট 777!';

  @override
  String get gameUiLucky777 => 'লাকী 777!';

  @override
  String get gameUiYourReward => 'আপোনাৰ পুৰস্কাৰ';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 লাকী স্লট';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'স্লটবোৰ ঘূৰুৱাওক, তাৰ পিছত পুৰস্কাৰ দাবী কৰিবলৈ এটা প্ৰশ্নৰ উত্তৰ দিয়ক!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'আপুনি আজি ইতিমধ্যে খেলিছে।';

  @override
  String get gameUiSPINNING => 'ঘূৰি আছে...';

  @override
  String get gameUiROLLNOW => 'এতিয়াই ঘূৰাওক';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 জেকপট! 777 পইণ্ট উপলব্ধ!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Mystery Deal-ৰ স্থিতি পৰীক্ষা কৰিব পৰা নগ\'ল: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'বাকচ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 পইণ্ট';
  }

  @override
  String get gameUiStartQuestion => 'প্ৰশ্ন আৰম্ভ কৰক';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ৰহস্যময় চুক্তি';

  @override
  String get gameUiMysteryDealCompleted => 'ৰহস্যময় চুক্তি সম্পূৰ্ণ হ\'ল!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'আপুনি আজি ইতিমধ্যে ৰহস্যময় চুক্তি খেলিছে।';

  @override
  String get gameUiTodayYouWon => 'আজি আপুনি জিকিলে';

  @override
  String get gameUiTodaySReward => 'আজিৰ পুৰস্কাৰ';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 পইণ্ট';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 পইণ্ট হেৰুৱালে';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'আন এটা ৰহস্যময় বাকচৰ বাবে কাইলৈ উভটি আহক!';

  @override
  String get gameUiChooseYourMysteryBox => 'আপোনাৰ ৰহস্যময় বাকচ বাছনি কৰক';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'প্ৰতিটো বাকচত 10 ৰ পৰা 1000 পইণ্টৰ ভিতৰত এটা লুকাই থকা পুৰস্কাৰ আছে।';

  @override
  String get gameUiPickOnlyOneBox => 'মাত্ৰ এটা বাকচ বাছনি কৰক!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'সকলো $value1টা স্তৰ সম্পূৰ্ণ হ\'ল!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'স্তৰ $value1 সম্পূৰ্ণ হ\'ল!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1টা চালত সম্পূৰ্ণ হ\'ল।\nআপুনি $value2 পইণ্ট অৰ্জন কৰিলে!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1টা চালত সম্পূৰ্ণ হ\'ল।\nএই স্তৰ ইতিমধ্যে সম্পূৰ্ণ কৰা হৈছিল।';
  }

  @override
  String get gameUiNextLevel => 'পৰৱৰ্তী স্তৰ';

  @override
  String get gameUiDone => 'সম্পন্ন';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'স্মৃতি মিলন 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'সকলো 100টা স্তৰ সম্পূৰ্ণ হ\'ল!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'আপুনি স্মৃতি মিলনৰ প্ৰতিটো স্তৰ সম্পূৰ্ণ কৰিলে। বঢ়িয়া খেল!';

  @override
  String get gameUiChooseLevel => 'স্তৰ বাছনি কৰক';

  @override
  String gameUiMoves(String value1) {
    return 'চাল: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return '$value2টা স্তৰৰ ভিতৰত স্তৰ $value1';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1যোৰ';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'স্তৰ $value1 মনত ৰাখক';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1যোৰ মিল থকা যোৰ বিচাৰি উলিয়াওক';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz লোগো';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'অধ্যায় 1 · বিল্ড পাইপলাইন পুনৰুদ্ধাৰ কৰক';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'অধ্যায় 2 · ক্লাউড প্লেটফৰ্ম স্কেল কৰক';

  @override
  String get gameUiChapter3ProtectProduction => 'অধ্যায় 3 · প্ৰডাকচন সুৰক্ষিত কৰক';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'জমা দিবলৈ বাকী থকা সকলো $value1টা আখৰ ব্যৱহাৰ কৰক।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'সকলো স্তৰ সম্পূৰ্ণ হ\'ল!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'স্তৰ $value1 সম্পূৰ্ণ হ\'ল!';
  }

  @override
  String get gameUiTryAgain => 'পুনৰ চেষ্টা কৰক';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'শব্দটো আছিল $value1। আপুনি $value2 পইণ্ট অৰ্জন কৰিলে।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'শব্দটো আছিল $value1। $value3টা ইংগিতৰ পাছত আপুনি $value2 পইণ্ট অৰ্জন কৰিলে।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'শব্দটো আছিল $value1। $value3টা ইংগিতৰ পাছত আপুনি $value2 পইণ্ট অৰ্জন কৰিলে।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'শব্দটো আছিল $value1। স্তৰ $value2 এতিয়াও আপোনাৰ অপেক্ষাত আছে।';
  }

  @override
  String get gameUiFinish => 'সমাপ্ত কৰক';

  @override
  String get gameUiNextLevel254fd73 => 'পৰৱৰ্তী স্তৰ';

  @override
  String get gameUiRetryLevel => 'স্তৰ পুনৰ চেষ্টা কৰক';

  @override
  String get gameUiHowToPlay => 'কেনেকৈ খেলিব';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'প্ৰতিটো স্তৰত এটা DevOps শব্দ থাকে। পাঁচটা আখৰতকৈ চুটি শব্দবোৰ কোনো বিনামূল্যৰ আখৰ অবিহনে আৰম্ভ হয়; দীঘল শব্দবোৰ এটা আখৰৰ সৈতে আৰম্ভ হয়। উত্তৰ গঠন কৰিবলৈ আখৰৰ ৰেক ব্যৱহাৰ কৰক আৰু Enter টিপক। ইংগিতে আন এটা আখৰ উন্মোচন কৰে আৰু আপোনাৰ ব্যালেন্সৰ পৰা 20 পইণ্ট কাটে। প্ৰতিটো সম্পূৰ্ণ কৰা স্তৰে 100 পইণ্ট অৰ্জন কৰায়।';

  @override
  String get gameUiGotIt => 'বুজি পালোঁ';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'সকলো $value1টা স্তৰ সম্পূৰ্ণ হ\'ল!';
  }

  @override
  String get gameUiEasy => 'সহজ';

  @override
  String get gameUiMedium => 'মধ্যম';

  @override
  String get gameUiHard => 'কঠিন';

  @override
  String get gameUiHowToPlay13a6b22 => 'কেনেকৈ খেলিব';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'স্তৰ $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'পুৰস্কাৰ $value1 পইণ্ট · ব্যৱহৃত ইংগিত $value2';
  }

  @override
  String get gameUiHint20Pts => 'ইংগিত · −20 পইণ্ট';

  @override
  String get gameUiEnter => 'এণ্টাৰ';

  @override
  String get gameUiDelete => 'মচক';

  @override
  String get gameUiDragThroughAWord => 'শব্দ এটাৰ মাজেৰে টানি নিয়ক';

  @override
  String get gameUiDragThroughEachWord => 'প্ৰতিটো শব্দৰ মাজেৰে টানি নিয়ক';

  @override
  String get gameUiReleaseToSelect => 'বাছনি কৰিবলৈ এৰি দিয়ক';

  @override
  String gameUiFound(String value1) {
    return '$value1 পোৱা গ\'ল';
  }

  @override
  String get gameUiNoWordThere => 'তাত কোনো শব্দ নাই';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ইতিমধ্যে পোৱা হৈছে';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 বিচাৰক';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'সকলো স্তৰ সম্পূৰ্ণ হ\'ল!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'আপুনি প্ৰতিটো শব্দ বিচাৰি পালে আৰু $value1 পইণ্ট অৰ্জন কৰিলে।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'আপুনি প্ৰতিটো শব্দ বিচাৰি পালে। এই স্তৰ ইতিমধ্যে সম্পূৰ্ণ কৰা হৈছিল।';

  @override
  String get gameUiAll500LevelsComplete => 'সকলো 500টা স্তৰ সম্পূৰ্ণ হ\'ল!';

  @override
  String get gameUiReviewLevels => 'স্তৰ পুনৰীক্ষণ কৰক';

  @override
  String gameUiLeft(String value1) {
    return '$value1টা বাকী';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 পইণ্ট';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'অগ্ৰগতি সংৰক্ষণ কৰিব পৰা নগ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'আপুনি $value1 পইণ্ট অৰ্জন কৰিলে!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'আপুনি এই ছবিখন ইতিমধ্যে সম্পূৰ্ণ কৰিছে। পুনৰ খেলিলে অতিৰিক্ত পইণ্ট নাপাব।';

  @override
  String get gameUiYouCompletedEveryPicture => 'আপুনি প্ৰতিখন ছবি সম্পূৰ্ণ কৰিলে!';

  @override
  String get gameUiLevels => 'স্তৰসমূহ';

  @override
  String get gameUiPictureB => 'ছবি B';

  @override
  String get gameUiPictureA => 'ছবি A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ছবি লোড কৰিব পৰা নগ\'ল। পুনৰ চেষ্টা কৰক';

  @override
  String get gameUiResetZoom => 'জুম ৰিছেট কৰক';

  @override
  String get gameUiZoomBothPictures => 'দুয়োখন ছবি জুম কৰক';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ইংগিত · প্ৰতিটো ইংগিতত $value1 পইণ্ট';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'অগ্ৰগতি লোড কৰিব পৰা নগ\'ল। পুনৰ চেষ্টা কৰক';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'স্তৰ $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'সকলো পাৰ্থক্য পোৱা গ\'ল!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count পাৰ্থক্য বিচাৰক। যিকোনো ছবিত প্ৰতিটো টেপ কৰক।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ভুল: $value1  ·  ইংগিত: $value2 (−$value3 পইণ্ট)  ·  $value4টা স্তৰ সম্পূৰ্ণ';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'পৰৱৰ্তী স্তৰ: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'পাজল $value1 সম্পূৰ্ণ হ\'ল!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ছবি $value1টা চালত সম্পূৰ্ণ হ\'ল। আপুনি $value2 পইণ্ট অৰ্জন কৰিলে।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ছবি $value1টা চালত সম্পূৰ্ণ হ\'ল।';
  }

  @override
  String get gameUiNextPuzzle => 'পৰৱৰ্তী পাজল';

  @override
  String get gameUiAllPuzzlesComplete => 'সকলো পাজল সম্পূৰ্ণ হ\'ল';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return '$value2টাৰ ভিতৰত পাজলৰ টুকুৰা $value1, শুদ্ধভাৱে স্থাপন কৰা হৈছে';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return '$value2টাৰ ভিতৰত পাজলৰ টুকুৰা $value1';
  }

  @override
  String get gameUiChoosePuzzle => 'পাজল বাছনি কৰক';

  @override
  String get gameUiShufflePieces => 'টুকুৰাবোৰ মিহলাওক';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'পাজলৰ ছবি লোড কৰিব পৰা নগ\'ল।';

  @override
  String get gameUiPreviousPuzzle => 'আগৰ পাজল';

  @override
  String gameUiPuzzle(String value1) {
    return 'পাজল $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 চাল';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'টুকুৰাবোৰ সলনাসলনি কৰিবলৈ টানি আনক, নাইবা দুটা টুকুৰাত টিপক।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 পাজল সমাধান হ\'ল  ·  প্ৰতিটোত $value3 পইণ্ট';
  }

  @override
  String get gameUiGameOver => 'খেল শেষ';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'সংখ্যাটো আছিল $value1।\nধাৰা: $value2\nআপুনি $value3 পইণ্ট অৰ্জন কৰিছে!\n\nআন এটা সুযোগৰ বাবে কাইলৈ উভতি আহক!';
  }

  @override
  String get gameUiHigherOrLower => 'বেছি নে কম 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'আজি আগতেই খেলিছে!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'আপুনি $value1/$value2/$value3 তাৰিখে খেলিছিল।\n\nনতুন ধাৰা গঢ়িবলৈ কাইলৈ উভতি আহক!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'আপুনি আজি আগতেই খেলিছে।\n\nআন এটা সুযোগৰ বাবে কাইলৈ উভতি আহক!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 ধাৰা: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ পইণ্ট: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'পৰৱৰ্তী সংখ্যাটো বেছি হ\'ব নে কম?';

  @override
  String get gameUiLower => 'কম';

  @override
  String get gameUiHigher => 'বেছি';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'শুদ্ধ নে ভুল ব্লিটজ ⚡';

  @override
  String get gameUiTimeSUp => 'সময় শেষ!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'শুদ্ধ উত্তৰ: $value1\nসৰ্বশ্ৰেষ্ঠ ধাৰা: $value2\n$value3আপুনি $value4 পইণ্ট অৰ্জন কৰিছে!\n\nআন এটা ৰাউণ্ডৰ বাবে কাইলৈ উভতি আহক!';
  }

  @override
  String get gameUiStreakBonus20 => 'ধাৰা বোনাছ: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'দেখুওৱা উত্তৰটো শুদ্ধ নে ভুল?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2টা শ্ৰেণীত $value1টা প্ৰশ্ন';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'আপোনাৰ হাতত $value1 ছেকেণ্ড আছে। প্ৰতিটো শুদ্ধ উত্তৰে $value2 পইণ্ট দিয়ে। ভুল উত্তৰে $value3 ছেকেণ্ড কাটে। 5ৰ ধাৰা পালে +20 বোনাছ পাব।';
  }

  @override
  String get gameUiRoundTimer => 'ৰাউণ্ড টাইমাৰ';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 ছেকেণ্ড';
  }

  @override
  String get gameUiStart => 'আৰম্ভ কৰক';

  @override
  String get gameUiTrue => 'শুদ্ধ';

  @override
  String get gameUiFalse => 'ভুল';

  @override
  String get gameUiCommandMatch26b0e70 => 'কমাণ্ড মিলাওক 🔗';

  @override
  String get gameUiAllMatched => 'সকলো মিলিল!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ভুল: $value1\nআপুনি $value2 পইণ্ট অৰ্জন কৰিছে!\n\nনতুন কমাণ্ডৰ বাবে কাইলৈ উভতি আহক!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'ৰাউণ্ড $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'এটা কমাণ্ডত টিপক, তাৰ পিছত ইয়াৰ অৰ্থত টিপক।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'এতিয়া মিল থকা অৰ্থটোত টিপক।';

  @override
  String get gameUiPortMaster9c730cf => 'পৰ্ট মাষ্টাৰ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'পৰ্ট মাষ্টাৰ!';

  @override
  String get gameUiOutOfLives => 'জীৱন শেষ';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'শুদ্ধ উত্তৰ: $value1\nআপুনি $value2 পইণ্ট অৰ্জন কৰিছে!\n\nআন এটা ৰাউণ্ডৰ বাবে কাইলৈ উভতি আহক!';
  }

  @override
  String get gameUiYouEarned10Points => 'আপুনি 10 পইণ্ট অৰ্জন কৰিছে!';

  @override
  String get gameUiYouWin => 'আপুনি জিকিলে!';

  @override
  String gameUiWins(String value1) {
    return '$value1 জিকিলে!';
  }

  @override
  String get gameUiXWins => 'X জিকিলে!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) জিকিলে!';
  }

  @override
  String get gameUiComputerWins => 'কম্পিউটাৰ জিকিলে';

  @override
  String get gameUiOWins => 'O জিকিলে!';

  @override
  String get gameUiPlayer2OWins => 'খেলুৱৈ 2 (O) জিকিলে!';

  @override
  String get gameUiItSADraw => 'খেলখন ড্ৰ হ\'ল';

  @override
  String get gameUiYourTurn => 'আপোনাৰ পাল';

  @override
  String gameUiSTurn(String value1) {
    return '$value1ৰ পাল';
  }

  @override
  String get gameUiComputerIsThinking => 'কম্পিউটাৰে ভাবি আছে';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'খেলুৱৈ $value1ৰ চাল';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1ৰ চাল';
  }

  @override
  String get gameUiPlayer2ToMove => 'খেলুৱৈ 2ৰ চাল';

  @override
  String get gameUiNewRound => 'নতুন ৰাউণ্ড';

  @override
  String get gameUiVsComputer => 'কম্পিউটাৰৰ বিপক্ষে';

  @override
  String get gameUi2Players => '2 জন খেলুৱৈ';

  @override
  String get gameUiYou => 'আপুনি';

  @override
  String get gameUiDraws => 'ড্ৰ';

  @override
  String get gameUiPlayer2 => 'খেলুৱৈ 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ঘৰ $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'আকৌ খেলক';

  @override
  String get gameUiConnectFourWin20Points => 'কানেক্ট ফ\'ৰ জয়: 20 পইণ্ট!';

  @override
  String get gameUiBotWins => 'বটে জিকিলে!';

  @override
  String get gameUiRed => 'ৰঙা';

  @override
  String get gameUiYellow => 'হালধীয়া';

  @override
  String get gameUiBoardFullDraw => 'বৰ্ড পূৰ্ণ — ড্ৰ';

  @override
  String get gameUiBotIsThinking => 'বটে ভাবি আছে';

  @override
  String get gameUiBotTurn => 'বটৰ পাল';

  @override
  String get gameUiNewGame => 'নতুন খেল';

  @override
  String get gameUiVsBot => 'বটৰ বিপক্ষে';

  @override
  String get gameUi2Player => '2 খেলুৱৈ';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'বটৰ বিপক্ষে খেলক · ডিস্ক পেলাবলৈ এটা স্তম্ভত টিপক';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'দুজন খেলুৱৈ · ডিস্ক পেলাবলৈ এটা স্তম্ভত টিপক';

  @override
  String gameUiColumn(String value1) {
    return 'স্তম্ভ $value1';
  }

  @override
  String get gameUiYouRed => 'আপুনি · ৰঙা';

  @override
  String get gameUiRedPlayer1 => 'ৰঙা · খেলুৱৈ 1';

  @override
  String get gameUiBotYellow => 'বট · হালধীয়া';

  @override
  String get gameUiYellowPlayer2 => 'হালধীয়া · খেলুৱৈ 2';

  @override
  String get gameUiLudoMatchStats => 'লুডো মেচৰ পৰিসংখ্যা';

  @override
  String get gameUiNoCompletedMatchesYet => 'এতিয়ালৈকে কোনো সম্পূৰ্ণ মেচ নাই।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'খেলিছে $value1  ·  জিকিছে $value2  ·  হাৰিছে $value3';
  }

  @override
  String get gameUiClose => 'বন্ধ কৰক';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'লুডো চেম্পিয়ন! আপুনি 50 পইণ্ট অৰ্জন কৰিছে।';

  @override
  String get gameUiNewLudoGame => 'নতুন লুডো খেল';

  @override
  String get gameUiBotOpponents => 'বট প্ৰতিপক্ষ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'নতুন মেচ আৰম্ভ কৰিলে আপোনাৰ সংৰক্ষিত খেল সলনি হ\'ব।';

  @override
  String get gameUiCancel => 'বাতিল কৰক';

  @override
  String get gameUiStartGame => 'খেল আৰম্ভ কৰক';

  @override
  String get gameUiPlayerColours => 'খেলুৱৈৰ ৰং';

  @override
  String get gameUiApply => 'প্ৰয়োগ কৰক';

  @override
  String get gameUiMatchStats => 'মেচৰ পৰিসংখ্যা';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 চেকমেটেৰে জিকিলে';
  }

  @override
  String get gameUiBlack => 'কলা';

  @override
  String get gameUiWhite => 'বগা';

  @override
  String get gameUiComputerWinsByCheckmate => 'কম্পিউটাৰে চেকমেটেৰে জিকিলে';

  @override
  String get gameUiYouWinByCheckmate => 'আপুনি চেকমেটেৰে জিকিলে';

  @override
  String get gameUiDrawByStalemate => 'স্টেলমেটৰ বাবে ড্ৰ';

  @override
  String get gameUiDraw => 'ড্ৰ';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · চেক';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'চেকমেট! আপুনি 50 পইণ্ট পালে।';

  @override
  String get gameUiStartANewGame => 'নতুন খেল আৰম্ভ কৰিবনে?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'খেলুৱৈ মোড সলনি কৰিলে সংৰক্ষিত খেলাটো সলনি হ\'ব।';

  @override
  String get gameUiComputer => 'কম্পিউটাৰ';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · বগা / খেলুৱৈ 2 · ক\'লা';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'আপুনি বগা · কম্পিউটাৰ ক\'লা';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (বগা) · কম্পিউটাৰ (ক\'লা)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'আপুনি ক\'লা · কম্পিউটাৰ বগা';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (ক\'লা) · কম্পিউটাৰ (বগা)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1ে প্ৰথমে ৰ\'ল কৰে';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1ে আকৌ ৰ\'ল কৰে';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1ৰ ৰ\'ল কৰাৰ পালা';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'সাপ আৰু জখলা জয়: 100 পইণ্ট!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'খেলুৱৈ সলনি কৰিলে সংৰক্ষিত খেলটো সলনি হ\'ব।';

  @override
  String get gameUiStartANewLevel => 'নতুন লেভেল আৰম্ভ কৰিবনে?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'লেভেল সলনি কৰিলে সংৰক্ষিত খেলটো সলনি হ\'ব।';

  @override
  String get gameUiChangeLevel => 'লেভেল সলনি কৰক';

  @override
  String get gameUiPlayers => 'খেলুৱৈ';

  @override
  String get gameUiPlayAgainstBot => 'বটৰ বিপক্ষে খেলক';

  @override
  String get gameUi3Players => '3 জন খেলুৱৈ';

  @override
  String get gameUi4Players => '4 জন খেলুৱৈ';

  @override
  String get gameUiLevel1709305 => 'লেভেল';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'লেভেল $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 জন খেলুৱৈ · লেভেল $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · ৰ\'ল';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2ত $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'প্ৰশ্ন ল\'ড কৰিব পৰা নগ\'ল: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'শুদ্ধ উত্তৰ!';

  @override
  String get gameUiWrongAnswer => 'ভুল উত্তৰ';

  @override
  String get gameUiYouClaimedYourReward => 'আপুনি আপোনাৰ পুৰস্কাৰ দাবী কৰিলে!';

  @override
  String get gameUiAddedToYourTotalPoints => 'আপোনাৰ মুঠ পইণ্টত যোগ কৰা হ\'ল।';

  @override
  String get gameUiTheCorrectAnswerWas => 'শুদ্ধ উত্তৰটো আছিল:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 পইণ্টৰ পুৰস্কাৰ হেৰুৱালে।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'আপোনাৰ বৰ্তমানৰ পইণ্ট কটা নগ\'ল।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'কাইলৈ উভটি আহি আকৌ চেষ্টা কৰক।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'প্ৰশ্ন ল\'ড কৰিব পৰা নগ\'ল।';

  @override
  String get gameUiYourReward677fa6e => 'আপোনাৰ পুৰস্কাৰ';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 পইণ্ট';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'দাবী কৰিবলৈ শুদ্ধ উত্তৰ দিয়ক!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'আন এটা ৰাউণ্ডৰ বাবে কাইলৈ উভটি আহক।';

  @override
  String get gameUiGreen => 'সেউজীয়া';

  @override
  String get gameUiBlue => 'নীলা';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1ে চিন্তা কৰি আছে';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: এটা গুটি বাছনি কৰক';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: লুডুৰ গুটি ৰ\'ল কৰক';
  }

  @override
  String gameUiDice(String value1) {
    return 'লুডুৰ গুটি $value1';
  }

  @override
  String get gameUiRollDice => 'লুডুৰ গুটি ৰ\'ল কৰক';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 গুটি $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'খেলুৱৈ $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'বট $value1';
  }

  @override
  String get gameUiBot => 'বট';

  @override
  String get gameUiHintInsufficientPoints => 'ইংগিত ব্যৱহাৰ কৰিবলৈ আপোনাৰ 20 পইণ্ট লাগিব।';

  @override
  String get gameUiHintPurchaseFailed => 'ইংগিত ক্ৰয় কৰিব নোৱাৰিলোঁ। অনুগ্ৰহ কৰি আকৌ চেষ্টা কৰক।';

  @override
  String get gameUiChessKing => 'ৰজা';

  @override
  String get gameUiChessQueen => 'ৰাণী';

  @override
  String get gameUiChessRook => 'নাও';

  @override
  String get gameUiChessBishop => 'মন্ত্ৰী';

  @override
  String get gameUiChessKnight => 'ঘোঁৰা';

  @override
  String get gameUiChessPawn => 'সৈনিক';

  @override
  String get gameUiChessEmpty => 'খালী';

  @override
  String get gameSceneLampAndFlowers => 'চাকি আৰু ফুল';

  @override
  String get gameSceneGardenFriends => 'বাগিচাৰ বন্ধুবৰ্গ';

  @override
  String get gameSceneUnderwaterExplorers => 'পানীৰ তলৰ অনুসন্ধানকাৰীসকল';

  @override
  String get gameSceneOceanOrca => 'মহাসাগৰৰ অৰ্কা';

  @override
  String get gameSceneFoxInTheMeadow => 'তৃণভূমিত শিয়াল';

  @override
  String get gameSceneYellowSubmarine => 'হালধীয়া সাবমেৰিন';

  @override
  String get gameSceneTurkeyInTheClearing => 'পৰিষ্কাৰ ঠাইত টাৰ্কী';

  @override
  String get gameSceneSafariWateringHole => 'সাফাৰিৰ পানী খোৱা ঠাই';

  @override
  String get gameSceneJungleCompanions => 'জংলৰ সংগীসকল';

  @override
  String get gameSceneGoldenPuppyGarden => 'সোণালী কুকুৰ-পোৱালীৰ বাগিচা';

  @override
  String get gameSceneSeaTurtleReef => 'সাগৰীয় কচুৱাৰ প্ৰৱাল শৈল';

  @override
  String get gameSceneCoralReefFriends => 'প্ৰৱাল শৈলৰ বন্ধুবৰ্গ';

  @override
  String get gameSceneSharedClownfish => 'ভাগ কৰা ক্লাউনফিছ';

  @override
  String get gameSceneLittleDinosaur => 'সৰু ডাইনোছাৰ';

  @override
  String get gameSceneSafariCompanions => 'সাফাৰিৰ সংগীসকল';

  @override
  String get gameSceneSwirlingFlowers => 'ঘূৰণীয়া ফুল';

  @override
  String get gameSceneGardenKitten => 'বাগিচাৰ মেকুৰীৰ পোৱালী';

  @override
  String get gameSceneBlueOcean => 'নীলা মহাসাগৰ';

  @override
  String get gameSceneCastlePrincess => 'দুৰ্গৰ ৰাজকুমাৰী';

  @override
  String get gameSceneRedCar => 'ৰঙা গাড়ী';

  @override
  String get gameSceneGardenPuppy => 'বাগিচাৰ কুকুৰ-পোৱালী';

  @override
  String get gameSceneSpaceExplorer => 'মহাকাশ অনুসন্ধানকাৰী';

  @override
  String get gameSceneEnchantedReadingForest => 'মায়াবী পঢ়াৰ অৰণ্য';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps অনন্ত চক্ৰ';

  @override
  String get gameSceneAnsible => 'Ansible (এনছিবল)';

  @override
  String get gameSceneAws => 'AWS (এডব্লিউএছ)';

  @override
  String get gameSceneAzure => 'Azure (এজুৰ)';

  @override
  String get gameSceneBashScripting => 'Bash Scripting (বাশ স্ক্ৰিপ্টিং)';

  @override
  String get gameSceneDocker => 'Docker (ডকাৰ)';

  @override
  String get gameSceneGcp => 'GCP (জিচিপি)';

  @override
  String get gameSceneGit => 'Git (গিট)';

  @override
  String get gameSceneHybridCloud => 'Hybrid Cloud (হাইব্ৰিড ক্লাউড)';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud (আইবিএম ক্লাউড)';

  @override
  String get gameSceneJavascript => 'JavaScript (জাভাস্ক্ৰিপ্ট)';

  @override
  String get gameSceneJenkins => 'Jenkins (জেংকিন্স)';

  @override
  String get gameSceneKubernetes => 'Kubernetes (কুবাৰনেটিছ)';

  @override
  String get gameSceneLinux => 'Linux (লিনাক্স)';

  @override
  String get gameSceneMultiCloud => 'Multi Cloud (মাল্টি ক্লাউড)';

  @override
  String get gameSceneNetworking => 'Networking (নেটৱৰ্কিং)';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud (অ\'ৰাকল ক্লাউড)';

  @override
  String get gameScenePerl => 'Perl (পাৰ্ল)';

  @override
  String get gameScenePowershell => 'PowerShell (পাৱাৰশ্বেল)';

  @override
  String get gameScenePython => 'Python (পাইথন)';

  @override
  String get gameSceneRuby => 'Ruby (ৰুবি)';

  @override
  String get gameSceneTerraform => 'Terraform (টেৰাফৰ্ম)';

  @override
  String get gameSceneWinterFestivalFair => 'শীতকালীন উৎসৱৰ মেলা';

  @override
  String get gameSceneArmoredHeroCloseUp => 'কৱচধাৰী নায়কৰ ক্লোজ-আপ';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ৰক্তিম ৰঙত কৱচধাৰী নায়ক';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'গাঢ় প্লুমেৰিয়া ফুল';

  @override
  String get gameSceneMangroveBoardwalk => 'মেংগ্ৰোভৰ কাঠৰ বাট';

  @override
  String get gameSceneTropicalPalmReflections => 'ক্ৰান্তীয় তাল গছৰ প্ৰতিবিম্ব';

  @override
  String get gameSceneMaskedFigureInShadow => 'ছাঁত মুখাপিন্ধা মূৰ্তি';

  @override
  String get gameSceneElectricCompanionAtSunset => 'সূৰ্যাস্তৰ সময়ত বৈদ্যুতিক সংগী';

  @override
  String get gameSceneTrainerAndFireDragon => 'প্ৰশিক্ষক আৰু অগ্নি ড্ৰেগন';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'ৰত্নখচিত কুস্তিৰ মুখা';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ৰঙা তুলিৰ টানত কুস্তিগীৰ';

  @override
  String get gameSceneWrestlingChampionSalute => 'কুস্তি চেম্পিয়নৰ অভিবাদন';

  @override
  String get gameSceneMorningAtTheBakery => 'বেকাৰীত ৰাতিপুৱা';

  @override
  String get gameSceneGreenhousePottingBench => 'গ্ৰীণহাউচৰ পটিং বেঞ্চ';

  @override
  String get gameSceneHarborFishingBoat => 'বন্দৰৰ মাছ ধৰা নাও';

  @override
  String get gameSceneAtticObservatory => 'চিলেংঘৰৰ মানমন্দিৰ';

  @override
  String get gameSceneToyMakerSWorkshop => 'খেলনা নিৰ্মাতাৰ কাৰ্যশালা';

  @override
  String get gameSceneWoodlandCampsite => 'অৰণ্যৰ শিবিৰস্থল';

  @override
  String get gameSceneAfternoonMusicRoom => 'অপৰাহ্নৰ সংগীত কোঠা';

  @override
  String get gameSceneSeasideIceCreamStand => 'সাগৰপাৰৰ আইচক্ৰীমৰ দোকান';

  @override
  String get gameSceneLibraryReadingNook => 'পুথিভৰালৰ পঢ়াৰ চুক';

  @override
  String get gameSceneSewingStudio => 'চিলাইৰ ষ্টুডিঅ\'';

  @override
  String get gameSceneFruitMarket => 'ফলৰ বজাৰ';

  @override
  String get gameSceneKoiCourtyard => 'কই মাছৰ চোতাল';

  @override
  String get gameSceneArtistSAtelier => 'শিল্পীৰ আটেলিয়ে';

  @override
  String get gameSceneMountainRailway => 'পাহাৰীয়া ৰেলপথ';

  @override
  String get gameSceneCountryKitchen => 'গাঁৱলীয়া ৰান্ধনিঘৰ';

  @override
  String get gameScenePotteryWorkshop => 'মৃৎশিল্প কাৰ্যশালা';

  @override
  String get gameSceneBeachPicnic => 'সমুদ্ৰতটৰ পিকনিক';

  @override
  String get gameSceneFlowerShop => 'ফুলৰ দোকান';

  @override
  String get gameSceneClockmakerSWorkshop => 'ঘড়ী নিৰ্মাতাৰ কাৰ্যশালা';

  @override
  String get gameSceneRainyCafeTerrace => 'বৰষুণীয়া কেফেৰ টেৰেচ';

  @override
  String get gameSceneCastleHerbGarden => 'দুৰ্গৰ ঔষধি গছৰ বাগিচা';

  @override
  String get gameSceneClassroomArtCorner => 'শ্ৰেণীকোঠাৰ কলা চুক';

  @override
  String get gameSceneAquariumShop => 'একুৱেৰিয়ামৰ দোকান';

  @override
  String get gameSceneAutumnLeafCollection => 'শৰতৰ পাতৰ সংগ্ৰহ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'জোনৰ তলত এজোপা অকলশৰীয়া গছ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ডালত শৰতৰ ফুল';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'সেউজীয়া পাতৰ মাজত শিয়াল';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'লিলিৰে ঢকা হ্ৰদত কেনু';

  @override
  String get gameSceneDewDropsOnALeaf => 'পাতত নিয়ৰৰ ফোঁট';

  @override
  String get gameSceneStagInATurquoiseLake => 'ফিৰোজা হ্ৰদত পুৰুষ হৰিণ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'কমলা জোনৰ তলত বাইচাইকেল';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'উপত্যকাৰ ওপৰত বগা বাঘ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'নীলা পানীত দুজোপা গছ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'বিশ্বাসী কুকুৰৰ কাষত মাছ ধৰা';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'পৰ্বতীয়া হ্ৰদৰ কাষত লিলি ফুল';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'গোলাপী নদীৰ পাৰত হৰিণ';

  @override
  String get gameSceneTropicalHutAtSunset => 'সূৰ্যাস্তৰ সময়ত ক্ৰান্তীয় কুটীৰ';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'আল্পাইন উপত্যকালৈ চাই থকা শিয়াল';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'মোহিত বনানীৰ মাজেৰে সূৰ্যাস্ত';

  @override
  String get learningControlTitle => 'DevOps শিকক';

  @override
  String get learningControlAllCategories => 'সকলো শ্ৰেণী';

  @override
  String get learningControlSearchCards => 'কাৰ্ড সন্ধান কৰক';

  @override
  String get learningControlClearSearch => 'সন্ধান মচক';

  @override
  String get learningControlCategory => 'শ্ৰেণী';

  @override
  String get learningControlShowAll => 'সকলো কাৰ্ড দেখুৱাওক';

  @override
  String learningControlShowSaved(int count) {
    return 'সংৰক্ষিত কাৰ্ড দেখুৱাওক ($count)';
  }

  @override
  String get learningControlShuffleOff => 'শ্বাফল বন্ধ কৰক';

  @override
  String get learningControlShuffleOn => 'কাৰ্ড শ্বাফল কৰক';

  @override
  String get learningControlAutoOff => 'স্বয়ংক্ৰিয় সলনি বন্ধ কৰক';

  @override
  String get learningControlAutoOn => 'প্ৰতি ১০ ছেকেণ্ডত স্বয়ংক্ৰিয় সলনি';

  @override
  String get learningControlNoSaved => 'এতিয়াও কোনো কাৰ্ড সংৰক্ষণ কৰা হোৱা নাই';

  @override
  String get learningControlNoMatches => 'মিল থকা কোনো কাৰ্ড নাই';

  @override
  String get learningControlResetFilters => 'ফিল্টাৰ ৰিছেট কৰক';

  @override
  String get learningControlPrevious => 'আগৰটো';

  @override
  String get learningControlNext => 'পিছৰটো';

  @override
  String get learningControlProgress => 'অগ্ৰগতি';

  @override
  String get learningControlRemoveSaved => 'সংৰক্ষিতৰ পৰা আঁতৰাওক';

  @override
  String get learningControlSaveCard => 'কাৰ্ড সংৰক্ষণ কৰক';

  @override
  String get learningControlExample => 'উদাহৰণ';

  @override
  String get learningControlCopyExample => 'উদাহৰণ কপি কৰক';

  @override
  String get learningControlExampleCopied => 'উদাহৰণ কপি কৰা হ’ল';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'লেভেল $value1 সম্পূৰ্ণ হ\'ল';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'লেভেল $value1 খেলক';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'আনলক কৰিবলৈ লেভেল $value1 সম্পূৰ্ণ কৰক';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'দৈনিক লগইন বোনাছ';

  @override
  String get sharedDialogThanksForComingBack => 'ঘূৰি অহাৰ বাবে ধন্যবাদ!';

  @override
  String get sharedDialogDailyRewardAdded => 'আপোনাৰ দৈনিক পুৰস্কাৰ আপোনাৰ মুঠ পইণ্টত যোগ কৰা হৈছে।';

  @override
  String get sharedDialogAwesome => 'অতি উত্তম!';

  @override
  String get accountWelcomeGuest => 'অতিথি';

  @override
  String get accountWelcomeGuestUser => 'অতিথি ব্যৱহাৰকাৰী';

  @override
  String get accountWelcomeUser => 'ব্যৱহাৰকাৰী';

  @override
  String get accountWelcomePlayingAsGuest => 'অতিথি হিচাপে খেলি আছে';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google একাউণ্ট সংযোগ কৰক';

  @override
  String get accountWelcomeGoogleConnected => 'Google একাউণ্ট সফলতাৰে সংযোগ হ\'ল! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'ছাইন-ইন বাতিল কৰা হ\'ল।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'সংযোগ কৰিবলৈ ব্যৰ্থ হ\'ল: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'ছাইন আউট কৰক';

  @override
  String get accountWelcomeSignOutTitle => 'ছাইন আউট কৰিবনে?';

  @override
  String get accountWelcomeSignOutMessage => 'আপুনি সঁচাকৈয়ে ছাইন আউট কৰিব বিচাৰেনে? আপোনাৰ সংৰক্ষিত অগ্ৰগতি পাবলৈ আপুনি আকৌ ছাইন ইন কৰিব লাগিব।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'ছাইন আউট ব্যৰ্থ হ\'ল: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ এপ ডেটা ৰিছেট কৰিবনে?';

  @override
  String get accountWelcomeResetAppMessage => 'ইয়াৰ ফলত আপোনাৰ সকলো পইণ্ট, ষ্ট্ৰীক, গেমৰ ইতিহাস আৰু ছেটিংছ স্থায়ীভাৱে মচি পেলোৱা হ\'ব। আপোনাক ছাইন আউট কৰা হ\'ব আৰু আৰম্ভণি স্ক্ৰীণলৈ ঘূৰাই পঠিওৱা হ\'ব। ইয়াক পূৰ্বৰ অৱস্থালৈ ঘূৰাই নিব নোৱাৰি।';

  @override
  String get accountWelcomeResetEverything => 'সকলোবোৰ ৰিছেট কৰক';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ৰিছেট ব্যৰ্থ হ\'ল: $value1';
  }

  @override
  String get accountWelcomeCancel => 'বাতিল কৰক';

  @override
  String get accountWelcomeResetAppData => 'এপ ডেটা ৰিছেট কৰক';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'সকলো পইণ্ট, ষ্ট্ৰীক আৰু ছেটিংছ মচি পেলাওক';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz এপ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'অনুবাদ এতিয়াও উপলব্ধ নহয়';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google-ৰ সৈতে আগবাঢ়ক';

  @override
  String get accountWelcomeSigningIn => 'ছাইন ইন হৈ আছে...';

  @override
  String get accountWelcomeOr => 'অথবা';

  @override
  String get accountWelcomeContinueAsGuest => 'অতিথি হিচাপে আগবাঢ়ক';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'আপুনি পাছত আপোনাৰ প্ৰ\'ফাইলৰ পৰা ছাইন ইন কৰিব পাৰে।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'আপুনি অতিথি হিচাপে আৰম্ভ কৰি পাছত ছাইন ইন কৰিব পাৰে।';

  @override
  String get accountWelcomeGreetingGuest => 'স্বাগতম';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'স্বাগতম, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ছাইন-ইন সম্পূৰ্ণ হ\'ল, কিন্তু কোনো ব্যৱহাৰকাৰী একাউণ্ট পোৱা নগ\'ল।';

  @override
  String get accountWelcomeErrorEmailExists => 'এই ইমেইলটোত ইতিমধ্যে আন এটা ছাইন-ইন পদ্ধতি ব্যৱহাৰ কৰি একাউণ্ট আছে।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'এই Google একাউণ্টটো ইতিমধ্যে আন এটা একাউণ্টৰ সৈতে সংযুক্ত হৈ আছে।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google প্ৰমাণীকৰণ তথ্য অবৈধ বা ম্যাদ উকলি গৈছে।';

  @override
  String get accountWelcomeErrorUserDisabled => 'এই একাউণ্টটো নিষ্ক্ৰিয় কৰা হৈছে।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ছাইন-ইন বৰ্তমান সক্ৰিয় কৰা হোৱা নাই।';

  @override
  String get accountWelcomeErrorNetwork => 'নেটৱৰ্ক ত্ৰুটি। অনুগ্ৰহ কৰি আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক আৰু পুনৰ চেষ্টা কৰক।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'অত্যধিক ছাইন-ইন প্রচেষ্টা। অনুগ্ৰহ কৰি অপেক্ষা কৰক আৰু পুনৰ চেষ্টা কৰক।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'অতিৰিক্ত কোনো ত্ৰুটিৰ তথ্য নাই।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ছাইন-ইন ব্যৰ্থ হ\'ল।\n\nক\'ড: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ছাইন-ইন ত্ৰুটি:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'অতিথি হিচাপে আগবাঢ়িব পৰা নগ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ছাইন-ইন শীঘ্ৰেই উপলব্ধ হ\'ব।';

  @override
  String get accountWelcomeLoginTagline => 'শিকক • অনুশীলন কৰক • প্ৰতিযোগিতা কৰক • উপাৰ্জন কৰক';

  @override
  String get accountWelcomeCountryRegion => 'দেশ / অঞ্চল';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'দেশ / অঞ্চল: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'দেশ বিচাৰক';

  @override
  String get accountWelcomeCountryNotSelected => 'নিৰ্বাচিত নহয়';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz কিয়?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ অনুশীলন প্ৰশ্ন';

  @override
  String get accountWelcomeFeatureLanguages => 'বহু-ভাষিক সমৰ্থন';

  @override
  String get accountWelcomeFeatureStreaks => 'ষ্ট্ৰীক আৰু লিডাৰব\'ৰ্ড';

  @override
  String get accountWelcomeFeatureGames => 'গেম আৰু প্ৰত্যাহ্বান';

  @override
  String get accountWelcomeFeatureCloud => 'ক্লাউড আৰু DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'বোনাছ আৰু পুৰস্কাৰ';

  @override
  String get accountWelcomePracticeOnTheGo => 'যিকোনো ঠাইতে অনুশীলন কৰক';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android এপ ইনষ্টল কৰক আৰু যিকোনো ঠাইতে অফলাইনত শিকক।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play-ত পাওক';

  @override
  String achLocStreakTitle(String days) {
    return '$days দিনৰ ধাৰা';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days দিনৰ ধাৰা বজাই ৰাখক।';
  }

  @override
  String get achLocYearStreakTitle => '১ বছৰৰ ধাৰা';

  @override
  String get achLocFirstQuizTitle => 'প্ৰথম কুইজ';

  @override
  String get achLocFirstQuizDescription => 'আপোনাৰ প্ৰথম কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocQuiz10Title => 'কুইজ অন্বেষক';

  @override
  String get achLocQuiz10Description => '১০টা কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocPoints1000Title => '১০০০ পইণ্ট';

  @override
  String get achLocPoints1000Description => 'Quiz ত মুঠ ১০০০ পইণ্ট অৰ্জন কৰক।';

  @override
  String get achLocPerfectScoreTitle => 'নিখুঁত স্ক\'ৰ';

  @override
  String get achLocPerfectScoreDescription => 'যিকোনো কুইজত ১০০% স্ক\'ৰ কৰক।';

  @override
  String get achLocQuiz25Title => 'কুইজ উৎসাহী';

  @override
  String get achLocQuiz25Description => '২৫টা কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocQuiz50Title => 'কুইজ মাষ্টাৰ';

  @override
  String get achLocQuiz50Description => '৫০টা কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocQuiz100Title => 'শতক ক্লাব';

  @override
  String get achLocQuiz100Description => '১০০টা কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocQuiz250Title => 'কুইজ কিংবদন্তি';

  @override
  String get achLocQuiz250Description => '২৫০টা কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocPoints5000Title => '৫,০০০ পইণ্ট';

  @override
  String get achLocPoints5000Description => 'মুঠ ৫,০০০ পইণ্ট অৰ্জন কৰক।';

  @override
  String get achLocPoints10000Title => '১০,০০০ পইণ্ট';

  @override
  String get achLocPoints10000Description => 'মুঠ ১০,০০০ পইণ্ট অৰ্জন কৰক।';

  @override
  String get achLocPoints50000Title => '৫০,০০০ পইণ্ট';

  @override
  String get achLocPoints50000Description => 'মুঠ ৫০,০০০ পইণ্ট অৰ্জন কৰক।';

  @override
  String get achLocPoints100000Title => '১,০০,০০০ পইণ্ট';

  @override
  String get achLocPoints100000Description => 'মুঠ ১,০০,০০০ পইণ্ট অৰ্জন কৰক।';

  @override
  String get achLocDaily1Title => 'দৈনিক আৰম্ভণি';

  @override
  String get achLocDaily1Description => 'আপোনাৰ প্ৰথম দৈনিক কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocDaily7Title => 'দৈনিক অভ্যাস';

  @override
  String get achLocDaily7Description => '৭টা দৈনিক কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocDaily30Title => 'দৈনিক চেম্পিয়ন';

  @override
  String get achLocDaily30Description => '৩০টা দৈনিক কুইজ সম্পূৰ্ণ কৰক।';

  @override
  String get achLocSets5Title => 'ছেট আৰম্ভণি';

  @override
  String get achLocSets5Description => '৫টা কুইজ ছেট সম্পূৰ্ণ কৰক।';

  @override
  String get achLocSets25Title => 'ছেট সংগ্ৰাহক';

  @override
  String get achLocSets25Description => '২৫টা কুইজ ছেট সম্পূৰ্ণ কৰক।';

  @override
  String get achLocSets50Title => 'ছেট মাষ্টাৰ';

  @override
  String get achLocSets50Description => '৫০টা কুইজ ছেট সম্পূৰ্ণ কৰক।';

  @override
  String get achLocSets100Title => 'ছেট কিংবদন্তি';

  @override
  String get achLocSets100Description => '১০০টা কুইজ ছেট সম্পূৰ্ণ কৰক।';

  @override
  String get achLocCert1Title => 'প্ৰথম প্ৰমাণপত্ৰ';

  @override
  String get achLocCert1Description => 'আপোনাৰ প্ৰথম শ্ৰেণীৰ প্ৰমাণপত্ৰ অৰ্জন কৰক।';

  @override
  String get achLocCert5Title => 'প্ৰমাণিত প্ৰ\'';

  @override
  String get achLocCert5Description => '৫টা শ্ৰেণীৰ প্ৰমাণপত্ৰ অৰ্জন কৰক।';

  @override
  String get achLocCert21Title => 'সম্পূৰ্ণ প্ৰমাণিত';

  @override
  String get achLocCert21Description => 'সকলো ২১টা শ্ৰেণীত প্ৰমাণপত্ৰ অৰ্জন কৰক।';

  @override
  String get achLocThemeFreeValentinesWeek => 'প্ৰতি বছৰ ফেব্ৰুৱাৰী ৭-১৪ লৈ বিনামূলীয়া';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'প্ৰতি বছৰ মাৰ্চ ৮-১৫ লৈ বিনামূলীয়া';

  @override
  String get achLocThemeLight => 'পোহৰ';

  @override
  String get achLocThemeDark => 'আন্ধাৰ';

  @override
  String get achLocThemeSakura => 'ছাকুৰা';

  @override
  String get achLocThemeSunset => 'সূৰ্যাস্ত';

  @override
  String get achLocThemeCoffee => 'কফি';

  @override
  String get achLocThemeTea => 'চাহ';

  @override
  String get achLocThemeOcean => 'মহাসাগৰ';

  @override
  String get achLocThemeSolarFlare => 'ছ\'লাৰ ফ্লেয়াৰ';

  @override
  String get achLocThemeForest => 'অৰণ্য';

  @override
  String get achLocThemeAurora => 'অৰোৰা';

  @override
  String get achLocThemeMatrix => 'মেট্ৰিক্স';

  @override
  String get achLocThemeCyberPurple => 'চাইবাৰ পাৰ্পল';

  @override
  String get achLocThemeInferno => 'ইনফাৰ্নো';

  @override
  String get achLocThemeMidnight => 'মধ্যৰাত';

  @override
  String get achLocThemeDarkGrey => 'গাঢ় ধূসৰ';

  @override
  String get achLocThemeBarbee => 'বাৰ্বি';

  @override
  String get achLocThemeValentineDay => 'ভেলেণ্টাইন দিৱস';

  @override
  String get achLocThemeDqSpecial => 'DQ বিশেষ';

  @override
  String get achLocThemeArmy => 'সেনা';

  @override
  String get achLocThemeSpiderMan => 'স্পাইডাৰ-মেন';

  @override
  String get achLocThemeKrrish => 'কৃষ';

  @override
  String get achLocThemeIronMan => 'আয়ৰন মেন';

  @override
  String get achLocThemeCaptainAmerica => 'কেপ্টেইন আমেৰিকা';

  @override
  String get achLocThemeThor => 'থৰ';

  @override
  String get achLocThemeHulk => 'হাল্ক';

  @override
  String get achLocThemeBlackWidow => 'ব্লেক উইডো';

  @override
  String get achLocThemeHawkeye => 'হকআই';

  @override
  String get achLocThemeBlackPanther => 'ব্লেক পেন্থাৰ';

  @override
  String get achLocThemeScarletWitch => 'স্কাৰ্লেট উইচ';

  @override
  String get achLocThemeVision => 'ভিজন';

  @override
  String get achLocThemeAntMan => 'এণ্ট-মেন';

  @override
  String get achLocThemeCaptainMarvel => 'কেপ্টেইন মাৰ্ভেল';

  @override
  String get achLocThemeDoctorStrange => 'ডাক্তৰ স্ট্ৰেঞ্জ';

  @override
  String get achLocThemeAvengers => 'এভেঞ্জাৰ্ছ';

  @override
  String get achLocThemeBatman => 'বেটমেন';

  @override
  String get achLocThemeSuperman => 'সুপাৰমেন';

  @override
  String get achLocThemeWonderWoman => 'ৱন্দাৰ ৱুমেন';

  @override
  String get achLocThemeFlash => 'ফ্লাশ';

  @override
  String get achLocThemeAquaman => 'একুৱামেন';

  @override
  String get achLocThemeGreenLantern => 'গ্ৰীন লেণ্টাৰ্ন';

  @override
  String get achLocThemeCyborg => 'চাইবৰ্গ';

  @override
  String get achLocThemeSupergirl => 'সুপাৰগাৰ্ল';

  @override
  String get achLocThemeDc => 'DC হিৰোজ';

  @override
  String get achLocThemeRainbow => 'ৰামধেনু';

  @override
  String get achLocThemeDiamond => 'হীৰা';

  @override
  String get achLocThemeLegendary => 'কিংবদন্তি';

  @override
  String get gameHintCmd001LsLa => 'সবিশেষ তথ্যসহ সকলো ফাইল তালিকাভুক্ত কৰক';

  @override
  String get gameHintCmd002Grep => 'এটা আৰ্হি ব্যৱহাৰ কৰি লিখনী সন্ধান কৰক';

  @override
  String get gameHintCmd003Chmod => 'ফাইলৰ অনুমতি সলনি কৰক';

  @override
  String get gameHintCmd004DfH => 'ডিস্কৰ খালী ঠাই দেখুৱাওক';

  @override
  String get gameHintCmd005TailF => 'বাঢ়ি থকা লগ ফাইল অনুসৰণ কৰক';

  @override
  String get gameHintCmd006PsAux => 'চলি থকা প্ৰক্ৰিয়াসমূহ তালিকাভুক্ত কৰক';

  @override
  String get gameHintCmd007GitClone => 'এটা দূৰৱৰ্তী ৰিপজিটৰীৰ প্ৰতিলিপি কৰক';

  @override
  String get gameHintCmd008GitStash => 'কমিট নকৰা পৰিৱৰ্তনসমূহ সাময়িকভাৱে ৰাখক';

  @override
  String get gameHintCmd009GitRebase => 'নতুন ভিত্তিত কমিটসমূহ পুনৰ প্ৰয়োগ কৰক';

  @override
  String get gameHintCmd010GitBlame => 'প্ৰতিটো শাৰী কোনে সলনি কৰিছে দেখুৱাওক';

  @override
  String get gameHintCmd011DockerPs => 'চলি থকা কণ্টেইনাৰসমূহ তালিকাভুক্ত কৰক';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile ৰ পৰা এটা ইমেজ সৃষ্টি কৰক';

  @override
  String get gameHintCmd013DockerLogs => 'কণ্টেইনাৰৰ আউটপুট দেখুৱাওক';

  @override
  String get gameHintCmd014DockerExec => 'কণ্টেইনাৰৰ ভিতৰত এটা কমাণ্ড চলাওক';

  @override
  String get gameHintCmd015KubectlGetPods => 'নেমস্পেচ এটাৰ পডসমূহ তালিকাভুক্ত কৰক';

  @override
  String get gameHintCmd016KubectlApply => 'ফাইল এটাৰ পৰা ৰিছোৰ্চ সৃষ্টি কৰক';

  @override
  String get gameHintCmd017KubectlDescribe => 'ৰিছোৰ্চৰ বিশদ তথ্য দেখুৱাওক';

  @override
  String get gameHintCmd018KubectlScale => 'ৰেপ্লিকাৰ সংখ্যা সলনি কৰক';

  @override
  String get gameHintCmd019TerraformInit => 'প্ৰভাইডাৰ ডাউনলোড কৰি সঁজুলি প্ৰস্তুত কৰক';

  @override
  String get gameHintCmd020TerraformPlan => 'অৱকাঠামোৰ পৰিৱৰ্তনৰ পূৰ্বদৰ্শন কৰক';

  @override
  String get gameHintCmd021TerraformApply => 'অৱকাঠামো সৃষ্টি বা হালনাগাদ কৰক';

  @override
  String get gameHintCmd022TerraformDestroy => 'পৰিচালিত অৱকাঠামো আঁতৰাওক';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'এটা স্বয়ংক্ৰিয়কৰণ প্লেবুক চলাওক';

  @override
  String get gameHintCmd024Ping => 'ICMP ৰ জৰিয়তে সংযোগযোগ্যতা পৰীক্ষা কৰক';

  @override
  String get gameHintCmd025Traceroute => 'হ\'স্টলৈ যোৱা পথ দেখুৱাওক';

  @override
  String get gameHintCmd026Curl => 'URL ৰ পৰা ডাটা স্থানান্তৰ কৰক';

  @override
  String get gameHintCmd027Ssh => 'দূৰৱৰ্তী মেচিনত সুৰক্ষিতভাৱে লগইন কৰক';

  @override
  String get gameHintCmd028CrontabE => 'নিৰ্ধাৰিত কামসমূহ সম্পাদনা কৰক';

  @override
  String get gameHintCmd029SystemctlStatus => 'সেৱাৰ অৱস্থা পৰীক্ষা কৰক';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes ত এটা চাৰ্ট মোতায়েন কৰক';

  @override
  String get gameHintWord001Git => 'উৎস ক\'ডৰ পৰিৱৰ্তন অনুসৰণ কৰে।';

  @override
  String get gameHintWord002Aws => 'Amazon ৰ ক্লাউড প্লেটফৰ্ম।';

  @override
  String get gameHintWord003Api => 'চুক্তি এটা যিয়ে চফটৱেৰ ব্যৱস্থাসমূহক যোগাযোগ কৰিবলৈ দিয়ে।';

  @override
  String get gameHintWord004Dns => 'ডোমেইন নামক IP ঠিকনালৈ ৰূপান্তৰ কৰে।';

  @override
  String get gameHintWord005Cli => 'কমাণ্ড চলাবলৈ লিখনী-ভিত্তিক ইণ্টাৰফেচ।';

  @override
  String get gameHintWord006Cpu => 'নিৰ্দেশনা সম্পাদন কৰা প্ৰচেছৰ।';

  @override
  String get gameHintWord007Ram => 'চলি থকা প্ৰগ্ৰামে ব্যৱহাৰ কৰা অস্থায়ী মেমোৰী।';

  @override
  String get gameHintWord008Ssh => 'দূৰৱৰ্তী শ্বেল প্ৰৱেশৰ বাবে সুৰক্ষিত প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord009Yaml => 'মানুহে পঢ়িব পৰা ডাটা সিৰিয়েলাইজেচন ফৰ্মেট।';

  @override
  String get gameHintWord010Linux => 'মুকলি-উৎসৰ অপাৰেটিং ছিষ্টেম কাৰ্নেল আৰু পৰিয়াল।';

  @override
  String get gameHintWord011Bash => 'এটা জনপ্ৰিয় Unix কমাণ্ড শ্বেল।';

  @override
  String get gameHintWord012Cloud => 'নেটৱৰ্কৰ জৰিয়তে চাহিদা অনুযায়ী যোগান ধৰা কম্পিউটিং।';

  @override
  String get gameHintWord013Docker => 'কণ্টেইনাৰ নিৰ্মাণ আৰু চলাবলৈ এটা প্লেটফৰ্ম।';

  @override
  String get gameHintWord014Azure => 'Microsoft ৰ ক্লাউড প্লেটফৰ্ম।';

  @override
  String get gameHintWord015Python => 'বহুলভাৱে ব্যৱহৃত স্ক্ৰিপ্টিং আৰু প্ৰগ্ৰামিং ভাষা।';

  @override
  String get gameHintWord016Github => 'এটা জনপ্ৰিয় হোষ্টেড Git সহযোগিতা সেৱা।';

  @override
  String get gameHintWord017Bgp => 'স্বায়ত্তশাসিত ব্যৱস্থাৰ মাজত ৰুট আদান-প্ৰদান কৰা ৰাউটিং প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord018Jenkins => 'CI ৰ বাবে প্ৰায়ে ব্যৱহৃত স্বয়ংক্ৰিয়কৰণ ছাৰ্ভাৰ।';

  @override
  String get gameHintWord019Port => 'নেটৱৰ্ক সেৱাই ব্যৱহাৰ কৰা সংখ্যাযুক্ত অন্তিম বিন্দু।';

  @override
  String get gameHintWord020Proxy => 'ক্লায়েণ্টৰ হৈ অনুৰোধ প্ৰেৰণ কৰা ছাৰ্ভাৰ।';

  @override
  String get gameHintWord021Cache => 'বাৰে বাৰে ব্যৱহৃত ডাটাৰ বাবে দ্ৰুত ভাণ্ডাৰ।';

  @override
  String get gameHintWord022Cron => 'পুনৰাবৃত্ত কমাণ্ডৰ বাবে Unix সময়সূচী নিৰ্ধাৰক।';

  @override
  String get gameHintWord023Bicep => 'অৱকাঠামো ক\'ডৰ বাবে Azure ৰ ঘোষণাত্মক ভাষা।';

  @override
  String get gameHintWord024Apigee => 'কেন্দ্ৰীয় API পৰিচালনাৰ বাবে Google Cloud প্লেটফৰ্ম।';

  @override
  String get gameHintWord025Root => 'Unix-সদৃশ ব্যৱস্থাত বিশেষাধিকাৰপ্ৰাপ্ত প্ৰশাসক একাউণ্ট।';

  @override
  String get gameHintWord026Nginx => 'ৱেব ছাৰ্ভাৰ আৰু ৰিভাৰ্চ প্ৰক্সি।';

  @override
  String get gameHintWord027Redis => 'ইন-মেমোৰী ডাটা ভাণ্ডাৰ, প্ৰায়ে কেশ হিচাপে ব্যৱহৃত।';

  @override
  String get gameHintWord028Mysql => 'জনপ্ৰিয় সম্পৰ্কভিত্তিক ডাটাবেছ ব্যৱস্থা।';

  @override
  String get gameHintWord029Ruby => 'Chef ৰ দৰে সঁজুলিয়ে ব্যৱহাৰ কৰা প্ৰগ্ৰামিং ভাষা।';

  @override
  String get gameHintWord030Helm => 'Kubernetes ৰ সৈতে সাধাৰণতে ব্যৱহৃত পেকেজ মেনেজাৰ।';

  @override
  String get gameHintWord031Pod => 'Kubernetes ত মোতায়েন কৰিব পৰা আটাইতকৈ সৰু একক।';

  @override
  String get gameHintWord032Image => 'কণ্টেইনাৰ সৃষ্টিৰ বাবে ব্যৱহৃত কেৱল-পঢ়িব পৰা টেমপ্লেট।';

  @override
  String get gameHintWord033Build => 'উৎস আৰু নিৰ্ভৰশীলতাৰ পৰা আৰ্টিফেক্ট সৃষ্টি কৰে।';

  @override
  String get gameHintWord034Deploy => 'এটা পৰিৱেশত এপ্লিকেচন মুকলি কৰে।';

  @override
  String get gameHintWord035Terraform => 'অৱকাঠামো ক\'ডৰ বাবে HashiCorp ৰ সঁজুলি।';

  @override
  String get gameHintWord036Ansible => 'এজেণ্টবিহীন স্বয়ংক্ৰিয়কৰণ আৰু কনফিগাৰেচন সঁজুলি।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes ৰ বাবে কমাণ্ড-লাইন ক্লায়েণ্ট।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform ৰ চমুকথা।';

  @override
  String get gameHintWord039Gitops => 'Git ক সত্যৰ উৎস হিচাপে ব্যৱহাৰ কৰা পৰিচালনা আৰ্হি।';

  @override
  String get gameHintWord040Pipeline => 'বিল্ড, পৰীক্ষা আৰু ৰিলিজ পৰ্যায়ৰ স্বয়ংক্ৰিয় ক্ৰম।';

  @override
  String get gameHintWord041Container => 'নিজৰ নিৰ্ভৰশীলতাৰ সৈতে পেকেজ কৰা বিচ্ছিন্ন প্ৰক্ৰিয়া।';

  @override
  String get gameHintWord042Cluster => 'এটা ভাগ-বতৰা ব্যৱস্থা হিচাপে পৰিচালিত মেচিনৰ গোট।';

  @override
  String get gameHintWord043Ingress => 'বাহ্যিক HTTP ৰাউটিঙৰ বাবে Kubernetes API বস্তু।';

  @override
  String get gameHintWord044Firewall => 'সুৰক্ষা নিয়ম অনুসৰি নেটৱৰ্ক ট্ৰেফিক ছাঁটি লয়।';

  @override
  String get gameHintWord045Subnet => 'IP নেটৱৰ্কৰ যুক্তিসংগত উপবিভাজন।';

  @override
  String get gameHintWord046Gateway => 'বিভিন্ন নেটৱৰ্কক সংযোগ কৰা নেটৱৰ্ক নোড।';

  @override
  String get gameHintWord047Router => 'নেটৱৰ্কসমূহৰ মাজত পেকেট প্ৰেৰণ কৰে।';

  @override
  String get gameHintWord048Switch => 'স্থানীয় নেটৱৰ্কৰ ভিতৰত ডিভাইচসমূহ সংযোগ কৰে।';

  @override
  String get gameHintWord049Repository => 'উৎস ক\'ড বা পেকেজৰ বাবে পৰিচালিত ভাণ্ডাৰ।';

  @override
  String get gameHintWord050Systemd => 'Linux init ব্যৱস্থা আৰু সেৱা পৰিচালক।';

  @override
  String get gameHintWord051Journalctl => 'systemd জাৰ্নেল লগ পঢ়িবলৈ ব্যৱহৃত কমাণ্ড।';

  @override
  String get gameHintWord052Permission => 'কোনে পঢ়িব, লিখিব বা চলাব পাৰিব তাক নিয়ন্ত্ৰণ কৰা নিয়ম।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud ৰ পৰিচালিত PostgreSQL-সামঞ্জস্যপূৰ্ণ ডাটাবেছ।';

  @override
  String get gameHintWord054Configmap => 'গোপন নহোৱা কনফিগাৰেচনৰ বাবে Kubernetes বস্তু।';

  @override
  String get gameHintWord055Secret => 'সংবেদনশীল ডাটাৰ বাবে উদ্দিষ্ট Kubernetes বস্তু।';

  @override
  String get gameHintWord056Persistent => 'ৱৰ্কল\'ড ৰিষ্টাৰ্টৰ পিছতো টিকি থকা ষ্ট\'ৰেজ বুজায়।';

  @override
  String get gameHintWord057Volume => 'কণ্টেইনাৰত মাউণ্ট কৰা ফাইলছিষ্টেম ষ্ট\'ৰেজ।';

  @override
  String get gameHintWord058Storage => 'ফাইল, বস্তু বা ব্লকৰ বাবে স্থায়ী ঠাই।';

  @override
  String get gameHintWord059Replica => 'স্কেল বা নিৰ্ভৰযোগ্যতাৰ বাবে ৰখা ৱৰ্কল\'ড ইনষ্টেঞ্চৰ প্ৰতিলিপি।';

  @override
  String get gameHintWord060Deployment => 'অৱস্থাবিহীন এপ্লিকেচন পডৰ বাবে Kubernetes নিয়ন্ত্ৰক।';

  @override
  String get gameHintWord061Dockerfile => 'Docker ইমেজ নিৰ্মাণত ব্যৱহৃত নিৰ্দেশনা।';

  @override
  String get gameHintWord062Database => 'এপ্লিকেচনে প্ৰশ্ন কৰা সংগঠিত ভাণ্ডাৰ।';

  @override
  String get gameHintWord063Automation => 'হাতেৰে কৰা পদক্ষেপ অবিহনে পুনৰাবৃত্ত কাম কৰিবলৈ চফটৱেৰ ব্যৱহাৰ।';

  @override
  String get gameHintWord064Anthos => 'পৰিৱেশ জুৰি ক্লাষ্টাৰ পৰিচালনাৰ বাবে Google Cloud প্লেটফৰ্ম।';

  @override
  String get gameHintWord065Bigquery => 'বৃহৎ-মাপৰ ডাটা বিশ্লেষণৰ বাবে Google Cloud সেৱা।';

  @override
  String get gameHintWord066Bigtable => 'বিশ্লেষণৰ বাবে Google Cloud ৰ ৱাইড-কলাম NoSQL ডাটাবেছ।';

  @override
  String get gameHintWord067Loadbalancer => 'অহা ট্ৰেফিক একাধিক বেকএণ্ডত বিতৰণ কৰে।';

  @override
  String get gameHintWord068Prometheus => 'টাইম-সিৰিজ মেট্ৰিক সংৰক্ষণ কৰা নিৰীক্ষণ ব্যৱস্থা।';

  @override
  String get gameHintWord069Grafana => 'পৰ্যবেক্ষণযোগ্যতা ডাটা প্ৰশ্ন আৰু দৃশ্যমান কৰাৰ প্লেটফৰ্ম।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud ৰ পৰিচালিত NoSQL JSON নথি ডাটাবেছ।';

  @override
  String get gameHintWord071Cloudtrail => 'নিৰীক্ষণৰ বাবে API কাৰ্যকলাপ ৰেকৰ্ড কৰা AWS সেৱা।';

  @override
  String get gameHintWord072Statefulset => 'স্থিৰ পৰিচয় লাগিবলগীয়া ৱৰ্কল\'ডৰ বাবে Kubernetes নিয়ন্ত্ৰক।';

  @override
  String get gameHintWord073Daemonset => 'নিৰ্বাচিত নোডত পড চলোৱা Kubernetes নিয়ন্ত্ৰক।';

  @override
  String get gameHintWord074Serviceaccount => 'ৱৰ্কল\'ড বা প্ৰক্ৰিয়াই ব্যৱহাৰ কৰা Kubernetes পৰিচয়।';

  @override
  String get gameHintWord075Networkpolicy => 'পডৰ নেটৱৰ্ক ট্ৰেফিক নিয়ন্ত্ৰণ কৰা Kubernetes ৰিছোৰ্চ।';

  @override
  String get gameHintWord076Certificate => 'TLS ত পৰিচয় প্ৰতিষ্ঠা কৰিবলৈ ব্যৱহৃত ডিজিটেল নথি।';

  @override
  String get gameHintWord077Encryption => 'ডাটা ৰূপান্তৰ কৰে যাতে কেৱল অনুমোদিত পক্ষই পঢ়িব পাৰে।';

  @override
  String get gameHintWord078Observability => 'ব্যৱস্থাৰ আউটপুটৰ পৰা ইয়াৰ আচৰণ অনুমান কৰাৰ ক্ষমতা।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes ক্লাষ্টাৰৰ ভিতৰত সাধাৰণতে ব্যৱহৃত DNS ছাৰ্ভাৰ।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API ৰ জৰিয়তে ক্লাউড ৰিছোৰ্চ পৰিচালনাৰ প্ৰকল্প।';

  @override
  String get gameHintWord081Failover => 'বিফলতাৰ পিছত অপেক্ষাৰত উপাদানলৈ সলনি হোৱা।';

  @override
  String get gameHintWord082Idempotency => 'এটা কাৰ্য পুনৰাবৃত্তি কৰিলেও এবাৰ কৰাৰ দৰে একে ফল দিয়া বৈশিষ্ট্য।';

  @override
  String get gameHintWord083Dataflow => 'ষ্ট্ৰীম আৰু বেচ ডাটা প্ৰক্ৰিয়াকৰণৰ বাবে Google Cloud সেৱা।';

  @override
  String get gameHintWord084Orchestration => 'একাধিক স্বয়ংক্ৰিয় ৱৰ্কল\'ডৰ সমন্বিত পৰিচালনা।';

  @override
  String get gameHintWord085Dataplex => 'প্ৰতিষ্ঠানৰ ডাটা আৱিষ্কাৰ আৰু শাসনৰ বাবে Google Cloud সেৱা।';

  @override
  String get gameHintWord086Serverless => 'যি কাৰ্যনিৰ্বাহ আৰ্হিত অৱকাঠামো পৰিচালনা আঁৰত থাকে।';

  @override
  String get gameHintWord087Distributed => 'যি ব্যৱস্থাৰ উপাদানসমূহ একাধিক নেটৱৰ্কযুক্ত মেচিনত চলে।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud ৰ পৰিচালিত Apache Spark আৰু Hadoop পৰিৱেশ।';

  @override
  String get gameHintWord089Dynamodb => 'Terraform ষ্টেট লক কৰিবলৈ প্ৰায়ে ব্যৱহৃত AWS NoSQL ডাটাবেছ।';

  @override
  String get gameHintWord090Provisioning => 'অৱকাঠামো বা ৰিছোৰ্চ ব্যৱহাৰৰ বাবে প্ৰস্তুত কৰা।';

  @override
  String get gameHintWord091Elasticsearch => 'কেন্দ্ৰীয় লগিঙৰ বাবে সাধাৰণতে ব্যৱহৃত সন্ধান ইঞ্জিন।';

  @override
  String get gameHintWord092Etcd => 'Kubernetes ক্লাষ্টাৰৰ অৱস্থা ধৰি ৰখা key-value ভাণ্ডাৰ।';

  @override
  String get gameHintWord093Authentication => 'ব্যৱহাৰকাৰী বা সেৱা কোন তাক সত্যাপন কৰাৰ প্ৰক্ৰিয়া।';

  @override
  String get gameHintWord094Authorization => 'এটা পৰিচয়ে কি কৰিবলৈ অনুমতি পাব তাক সিদ্ধান্ত লোৱা প্ৰক্ৰিয়া।';

  @override
  String get gameHintWord095Expressroute => 'ডাটা চেণ্টাৰলৈ উৎসৰ্গিত ব্যক্তিগত সংযোগৰ বাবে Azure সেৱা।';

  @override
  String get gameHintWord096Configuration => 'চফটৱেৰে কেনেকৈ আচৰণ কৰিব তাক নিৰ্ধাৰণ কৰা ছেটিংছ।';

  @override
  String get gameHintWord097Infrastructure => 'এপ্লিকেচনক সমৰ্থন কৰা কম্পিউট, নেটৱৰ্ক আৰু ষ্ট\'ৰেজ ৰিছোৰ্চ।';

  @override
  String get gameHintWord098Fastconnect => 'উৎসৰ্গিত ব্যক্তিগত নেটৱৰ্ক সংযোগৰ বাবে Oracle Cloud সেৱা।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes এ ব্যৱহাৰ কৰা উদ্যোগ-মান কণ্টেইনাৰ ৰানটাইম।';

  @override
  String get gameHintWord100Kubernetes => 'কণ্টেইনাৰ অৰ্কেষ্ট্ৰেচন প্লেটফৰ্ম।';

  @override
  String get gameHintWord101Http => 'ৱেব ৰিছোৰ্চৰ অনুৰোধ কৰিবলৈ ব্যৱহৃত এপ্লিকেচন প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord102Https => 'ৱেব অনুৰোধ প্ৰ\'ট\'কলৰ এনক্ৰিপ্টেড সংস্কৰণ।';

  @override
  String get gameHintWord103Tcp => 'নিৰ্ভৰযোগ্য ক্ৰমানুসাৰী বিতৰণ দিয়া ট্ৰান্সপৰ্ট প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord104Udp => 'ডাটাগ্ৰামৰ বাবে ব্যৱহৃত সংযোগবিহীন ট্ৰান্সপৰ্ট প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord105Tls => 'নেটৱৰ্কত আদান-প্ৰদান হোৱা ডাটা সুৰক্ষিত কৰা প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord106Ssl => 'আধুনিক ট্ৰান্সপৰ্ট সুৰক্ষা প্ৰ\'ট\'কলৰ পুৰণি পূৰ্বসূৰী।';

  @override
  String get gameHintWord107Ftp => 'ফাইল স্থানান্তৰৰ পৰম্পৰাগত প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord108Sftp => 'সুৰক্ষিত শ্বেল সংযোগৰ জৰিয়তে চলা ফাইল স্থানান্তৰ প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord109Smtp => 'ছাৰ্ভাৰৰ মাজত ইমেইল পঠিয়াবলৈ ব্যৱহৃত প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord110Snmp => 'নেটৱৰ্ক ডিভাইচ পৰিচালনা আৰু নিৰীক্ষণৰ বাবে ব্যৱহৃত প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord111Icmp => 'নেটৱৰ্ক ত্ৰুটি আৰু ping বাৰ্তা বহন কৰা প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord112Arp => 'স্থানীয় IPv4 ঠিকনাক হাৰ্ডৱেৰ ঠিকনালৈ ৰূপান্তৰ কৰে।';

  @override
  String get gameHintWord113Dhcp => 'নেটৱৰ্ক ক্লায়েণ্টক স্বয়ংক্ৰিয়ভাৱে IP কনফিগাৰেচন ধাৰ দিয়ে।';

  @override
  String get gameHintWord114Nat => 'গেটৱে পাৰ হওঁতে পেকেটৰ নেটৱৰ্ক ঠিকনা সলনি কৰে।';

  @override
  String get gameHintWord115Vpn => 'দূৰৱৰ্তী নেটৱৰ্ক বা ব্যৱহাৰকাৰী সংযোগ কৰা এনক্ৰিপ্টেড টানেল।';

  @override
  String get gameHintWord116Vpc => 'পাব্লিক ক্লাউডত বিচ্ছিন্ন ভাৰ্চুৱেল নেটৱৰ্ক।';

  @override
  String get gameHintWord117Vlan => 'সুইচ কৰা নেটৱৰ্কৰ যুক্তিসংগত বিভাজন।';

  @override
  String get gameHintWord118Wan => 'বিস্তৃত ভৌগোলিক অঞ্চল জুৰি থকা নেটৱৰ্ক।';

  @override
  String get gameHintWord119Lan => 'স্থানীয় অঞ্চলৰ ভিতৰত ডিভাইচ সংযোগ কৰা নেটৱৰ্ক।';

  @override
  String get gameHintWord120Cdn => 'বিতৰণ কৰা সমল কেশ কৰা বিতৰিত এজ নেটৱৰ্ক।';

  @override
  String get gameHintWord121Cidr => 'ছ্লেচ দৈৰ্ঘ্যৰ সৈতে নেটৱৰ্ক প্ৰিফিক্স প্ৰকাশ কৰা চিহ্নায়ন।';

  @override
  String get gameHintWord122Host => 'নেটৱৰ্কত সংযুক্ত কম্পিউটাৰ বা অন্তিম বিন্দু।';

  @override
  String get gameHintWord123Hostname => 'নেটৱৰ্কযুক্ত মেচিনক দিয়া মানুহে পঢ়িব পৰা নাম।';

  @override
  String get gameHintWord124Domain => 'ইণ্টাৰনেটৰ নামকৰণ ব্যৱস্থাত নামযুক্ত প্ৰশাসনিক অঞ্চল।';

  @override
  String get gameHintWord125Zone => 'DNS নেমস্পেচৰ প্ৰশাসনিক অংশ।';

  @override
  String get gameHintWord126Record => 'DNS ডাটাবেছৰ এটা পৃথক প্ৰবিষ্টি।';

  @override
  String get gameHintWord127Aaaa => 'নাম এটাক IPv6 ঠিকনালৈ ৰূপান্তৰ কৰা DNS ৰেকৰ্ডৰ প্ৰকাৰ।';

  @override
  String get gameHintWord128Ptr => 'বিপৰীত ঠিকনা সন্ধানৰ বাবে ব্যৱহৃত DNS ৰেকৰ্ডৰ প্ৰকাৰ।';

  @override
  String get gameHintWord129Txt => 'লিখনী মান সংৰক্ষণ কৰা DNS ৰেকৰ্ডৰ প্ৰকাৰ।';

  @override
  String get gameHintWord130Cname => 'এটা নামক আন এটাৰ উপনাম বনোৱা DNS ৰেকৰ্ড।';

  @override
  String get gameHintWord131Route => 'পেকেটক গন্তব্যৰ দিশে নিয়া পথৰ প্ৰবিষ্টি।';

  @override
  String get gameHintWord132Routing => 'নেটৱৰ্কসমূহৰ মাজত ট্ৰেফিকৰ বাবে পথ নিৰ্বাচন।';

  @override
  String get gameHintWord133Packet => 'নেটৱৰ্কৰ মাজেদি প্ৰেৰিত ডাটাৰ এটা একক।';

  @override
  String get gameHintWord134Protocol => 'ব্যৱস্থাসমূহৰ মাজত যোগাযোগৰ সন্মত নিয়ম।';

  @override
  String get gameHintWord135Ack => 'ডাটা প্ৰাপ্তি স্বীকাৰ কৰা TCP ফ্লেগ।';

  @override
  String get gameHintWord136Bandwidth => 'যোগাযোগ সংযোগৰ ক্ষমতা।';

  @override
  String get gameHintWord137Latency => 'অনুৰোধ বা পেকেটে সঁহাৰি পোৱাৰ আগৰ পলম।';

  @override
  String get gameHintWord138Throughput => 'প্ৰতি একক সময়ত প্ৰক্ৰিয়া কৰা উপযোগী কাম বা ডাটাৰ পৰিমাণ।';

  @override
  String get gameHintWord139Mtu => 'খণ্ডিত নকৰাকৈ এটা সংযোগে প্ৰেৰণ কৰিব পৰা আটাইতকৈ ডাঙৰ পেকেট আকাৰ।';

  @override
  String get gameHintWord140Alpn => 'এপ্লিকেচন-স্তৰৰ প্ৰ\'ট\'কল সম্মত কৰা TLS সম্প্ৰসাৰণ।';

  @override
  String get gameHintWord141Grep => 'মিল থকা আৰ্হিৰ বাবে লিখনীৰ শাৰী সন্ধান কৰে।';

  @override
  String get gameHintWord142Sed => 'লিখনী প্ৰতিস্থাপনৰ বাবে সাধাৰণতে ব্যৱহৃত ষ্ট্ৰীম সম্পাদক।';

  @override
  String get gameHintWord143Lscpu => 'প্ৰচেছৰ স্থাপত্য আৰু কোৰৰ বিৱৰণ দেখুৱা Linux কমাণ্ড।';

  @override
  String get gameHintWord144Find => 'ফাইলৰ চৰ্ত ব্যৱহাৰ কৰি ডাইৰেক্টৰী গছ সন্ধান কৰে।';

  @override
  String get gameHintWord145Lsblk => 'ব্লক ডিভাইচ আৰু সিহঁতৰ সম্পৰ্ক তালিকাভুক্ত কৰা Linux কমাণ্ড।';

  @override
  String get gameHintWord146Sort => 'লিখনীৰ শাৰীসমূহ সজায়।';

  @override
  String get gameHintWord147Uniq => 'ওচৰা-ওচৰিকৈ থকা দুগুণ শাৰী ছাঁটি লয়।';

  @override
  String get gameHintWord148Head => 'ফাইলৰ আৰম্ভণি প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord149Tail => 'ফাইলৰ শেষ অংশ প্ৰিণ্ট কৰে আৰু যোগ হোৱা লগ অনুসৰণ কৰিব পাৰে।';

  @override
  String get gameHintWord150Cat => 'ফাইলসমূহ সংযুক্ত কৰি সিহঁতৰ বিষয়বস্তু প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord151Cut => 'শাৰীৰ পৰা নিৰ্বাচিত ক্ষেত্ৰ বা আখৰৰ স্তম্ভ উলিয়ায়।';

  @override
  String get gameHintWord152Tee => 'মানক ইনপুট ফাইল আৰু মানক আউটপুটলৈ প্ৰতিলিপি কৰে।';

  @override
  String get gameHintWord153Echo => 'নিজৰ আৰ্গুমেণ্ট মানক আউটপুটলৈ লিখে।';

  @override
  String get gameHintWord154Printf => 'শ্বেল বা প্ৰগ্ৰামৰ পৰা ফৰ্মেট কৰা লিখনী প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord155Touch => 'ফাইলৰ সময়চিহ্ন হালনাগাদ কৰে বা খালী ফাইল সৃষ্টি কৰে।';

  @override
  String get gameHintWord156Mkdir => 'ডাইৰেক্টৰী সৃষ্টি কৰে।';

  @override
  String get gameHintWord157Rmdir => 'খালী ডাইৰেক্টৰী আঁতৰায়।';

  @override
  String get gameHintWord158Chmod => 'Unix ফাইলৰ অনুমতি বিট সলনি কৰে।';

  @override
  String get gameHintWord159Chown => 'ফাইলৰ মালিকানা সলনি কৰে।';

  @override
  String get gameHintWord160Chgrp => 'ফাইলৰ গোটগত মালিকানা সলনি কৰে।';

  @override
  String get gameHintWord161Pwd => 'বৰ্তমান কাম কৰি থকা ডাইৰেক্টৰী প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord162Apt => 'Debian-ভিত্তিক ব্যৱস্থাই ব্যৱহাৰ কৰা পেকেজ পৰিচালনা সঁজুলি।';

  @override
  String get gameHintWord163Top => 'প্ৰক্ৰিয়া আৰু ব্যৱস্থাৰ ৰিছোৰ্চ ব্যৱহাৰৰ ইণ্টাৰেক্টিভ প্ৰদৰ্শন।';

  @override
  String get gameHintWord164Agent => 'হ\'স্টত কাম সম্পাদন বা প্ৰতিবেদন কৰা চফটৱেৰ উপাদান।';

  @override
  String get gameHintWord165Kill => 'প্ৰক্ৰিয়াৰ পৰিচয়কৰ্তাৰ জৰিয়তে ইয়াক এটা চিগনেল পঠায়।';

  @override
  String get gameHintWord166Signal => 'অপাৰেটিং ছিষ্টেমে প্ৰক্ৰিয়ালৈ পঠোৱা জাননী।';

  @override
  String get gameHintWord167Sigkill => 'প্ৰক্ৰিয়া তৎক্ষণাত সমাপ্ত কৰা Unix চিগনেল।';

  @override
  String get gameHintWord168Nice => 'সামঞ্জস্য কৰা সময়সূচী অগ্ৰাধিকাৰেৰে প্ৰক্ৰিয়া আৰম্ভ কৰে।';

  @override
  String get gameHintWord169Renice => 'চলি থকা প্ৰক্ৰিয়াৰ সময়সূচী অগ্ৰাধিকাৰ সলনি কৰে।';

  @override
  String get gameHintWord170Jobs => 'বৰ্তমানৰ শ্বেলে পৰিচালনা কৰা জবসমূহ তালিকাভুক্ত কৰে।';

  @override
  String get gameHintWord171Nohup => 'হেংআপ চিগনেল অগ্ৰাহ্য কৰি কমাণ্ড চলায়।';

  @override
  String get gameHintWord172Screen => 'বিচ্ছিন্ন কৰিব পৰা ছেচন সমৰ্থন কৰা টাৰ্মিনেল মাল্টিপ্লেক্সাৰ।';

  @override
  String get gameHintWord173Uptime => 'ব্যৱস্থা কিমান সময় ধৰি চলি আছে তাক জনায়।';

  @override
  String get gameHintWord174Uname => 'ব্যৱস্থা আৰু কাৰ্নেলৰ তথ্য প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord175Whoami => 'বৰ্তমানৰ কাৰ্যকৰী ব্যৱহাৰকাৰীৰ নাম প্ৰিণ্ট কৰে।';

  @override
  String get gameHintWord176Umask => 'ফাইল সৃষ্টিৰ সময়ত ব্যৱহৃত অনুমতি মাস্ক ছেট কৰে।';

  @override
  String get gameHintWord177Usermod => 'বিদ্যমান ব্যৱহাৰকাৰী একাউণ্ট সলনি কৰা Linux কমাণ্ড।';

  @override
  String get gameHintWord178Crontab => 'নিৰ্ধাৰিত পুনৰাবৃত্ত শ্বেল জব সম্পাদনা বা তালিকাভুক্ত কৰে।';

  @override
  String get gameHintWord179Findmnt => 'মাউণ্ট কৰা ফাইলছিষ্টেমৰ তথ্য দেখুৱা Linux কমাণ্ড।';

  @override
  String get gameHintWord180Mount => 'ডাইৰেক্টৰী গছত ফাইলছিষ্টেম সংযুক্ত কৰে।';

  @override
  String get gameHintWord181Sigterm => 'প্ৰক্ৰিয়াক সুন্দৰভাৱে সমাপ্ত কৰিবলৈ অনুৰোধ কৰা Unix চিগনেল।';

  @override
  String get gameHintWord182Fstab => 'মাউণ্ট কৰিবলগীয়া ফাইলছিষ্টেমৰ বিৱৰণ দিয়া ব্যৱস্থা তালিকা।';

  @override
  String get gameHintWord183Swap => 'ভৌতিক মেমোৰীৰ সম্পূৰক হিচাপে ব্যৱহৃত ডিস্ক-ভিত্তিক ঠাই।';

  @override
  String get gameHintWord184Tmpfs => 'ভাৰ্চুৱেল মেমোৰীৰ দ্বাৰা সমৰ্থিত অস্থায়ী ফাইলছিষ্টেম।';

  @override
  String get gameHintWord185Proc => 'প্ৰক্ৰিয়া আৰু কাৰ্নেলৰ তথ্য প্ৰকাশ কৰা Linux ভাৰ্চুৱেল ফাইলছিষ্টেম।';

  @override
  String get gameHintWord186Syslog => 'মানক লগিং প্ৰ\'ট\'কল আৰু বাৰ্তা ফৰ্মেট।';

  @override
  String get gameHintWord187Dmesg => 'কাৰ্নেল ৰিং বাফাৰৰ বাৰ্তা দেখুৱায়।';

  @override
  String get gameHintWord188Free => 'ব্যৱহৃত আৰু উপলব্ধ ব্যৱস্থাৰ মেমোৰী জনায়।';

  @override
  String get gameHintWord189Stat => 'ফাইলৰ বিশদ মেটাডাটা দেখুৱায়।';

  @override
  String get gameHintWord190Lsof => 'মুকলি ফাইল আৰু সেইবোৰ ধৰি ৰখা প্ৰক্ৰিয়া তালিকাভুক্ত কৰে।';

  @override
  String get gameHintWord191Netstat => 'নেটৱৰ্ক সংযোগ আৰু ৰাউটিঙৰ তথ্য দেখুৱায়।';

  @override
  String get gameHintWord192Checksum => 'ডাটাৰ পৰিৱৰ্তন বা ক্ষতি ধৰিবলৈ গণনা কৰা মান।';

  @override
  String get gameHintWord193Ping => 'ইকো অনুৰোধৰ জৰিয়তে নেটৱৰ্কৰ সংযোগযোগ্যতা পৰীক্ষা কৰে।';

  @override
  String get gameHintWord194Traceroute => 'নেটৱৰ্ক গন্তব্যৰ দিশে মধ্যৱৰ্তী হপসমূহ দেখুৱায়।';

  @override
  String get gameHintWord195Resolver => 'নামৰ প্ৰশ্নৰ উত্তৰ বিচাৰি উলিওৱা DNS উপাদান।';

  @override
  String get gameHintWord196Nslookup => 'DNS নাম আৰু ঠিকনা সন্ধান কৰে।';

  @override
  String get gameHintWord197Telnet => 'পুৰণি অনেনক্ৰিপ্টেড দূৰৱৰ্তী টাৰ্মিনেল প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord198Tftp => 'UDP-ভিত্তিক সৰল ফাইল স্থানান্তৰ প্ৰ\'ট\'কল।';

  @override
  String get gameHintWord199Daemon => 'Unix-সদৃশ ব্যৱস্থাত নেপথ্যত চলা সেৱা প্ৰক্ৰিয়া।';

  @override
  String get gameHintWord200Kernel => 'অপাৰেটিং ছিষ্টেমৰ ৰিছোৰ্চ পৰিচালনা কৰা মূল উপাদান।';

  @override
  String get gameHintWord201Commit => 'সংস্কৰণ নিয়ন্ত্ৰণত পৰিৱৰ্তনৰ এটা লিপিবদ্ধ স্নেপশ্বট।';

  @override
  String get gameHintWord202Branch => 'বিকাশৰ এটা ধাৰা প্ৰতিনিধিত্ব কৰা স্থানান্তৰযোগ্য উল্লেখ।';

  @override
  String get gameHintWord203Merge => 'বিভিন্ন বিকাশ ধাৰাৰ ইতিহাস একত্ৰিত কৰে।';

  @override
  String get gameHintWord204Rebase => 'বেলেগ ভিত্তি কমিটৰ ওপৰত কমিটসমূহ পুনৰ চলায়।';

  @override
  String get gameHintWord205Clone => 'দূৰৱৰ্তী ৰিপজিটৰীৰ স্থানীয় প্ৰতিলিপি সৃষ্টি কৰে।';

  @override
  String get gameHintWord206Fetch => 'একত্ৰিত নকৰাকৈ দূৰৱৰ্তী বস্তু আৰু উল্লেখ ডাউনলোড কৰে।';

  @override
  String get gameHintWord207Pull => 'পৰিৱৰ্তন আনি বৰ্তমানৰ ব্ৰাঞ্চত একত্ৰিত কৰে।';

  @override
  String get gameHintWord208Push => 'স্থানীয় কমিটসমূহ দূৰৱৰ্তী ৰিপজিটৰীলৈ পঠায়।';

  @override
  String get gameHintWord209Stash => 'কমিট নকৰা ৱৰ্কিং-ট্ৰীৰ পৰিৱৰ্তন সাময়িকভাৱে সংৰক্ষণ কৰে।';

  @override
  String get gameHintWord210Revert => 'আন এটা কমিট পূৰ্বাৱস্থালৈ ঘূৰাই নিয়া কমিট সৃষ্টি কৰে।';

  @override
  String get gameHintWord211Reset => 'Git উল্লেখ আঁতৰায় আৰু ইণ্ডেক্স বা ৱৰ্কিং ফাইল ৰিছেট কৰিব পাৰে।';

  @override
  String get gameHintWord212Reflog => 'Git উল্লেখৰ হালনাগাদৰ স্থানীয় ইতিহাস।';

  @override
  String get gameHintWord213Diff => 'সংস্কৰণ বা ফাইলৰ মাজৰ পাৰ্থক্য দেখুৱায়।';

  @override
  String get gameHintWord214Status => 'ষ্টেজ কৰা, সলনি কৰা আৰু অনুসৰণ নকৰা ফাইল জনায়।';

  @override
  String get gameHintWord215Checkout => 'সংস্কৰণ সলনি বা ফাইল পুনৰুদ্ধাৰৰ Git কমাণ্ড।';

  @override
  String get gameHintWord216Tag => 'সাধাৰণতে ৰিলিজ চিহ্নিত কৰা নামযুক্ত উল্লেখ।';

  @override
  String get gameHintWord217Remote => 'আন এটা ৰিপজিটৰীৰ সৈতে নামযুক্ত সংযোগ।';

  @override
  String get gameHintWord218Origin => 'ক্লোন কৰা ৰিপজিটৰীৰ ৰিম\'টক দিয়া ডিফল্ট নাম।';

  @override
  String get gameHintWord219Upstream => 'স্থানীয় ব্ৰাঞ্চৰ সৈতে জড়িত দূৰৱৰ্তী ট্ৰেকিং ব্ৰাঞ্চ।';

  @override
  String get gameHintWord220Worktree => 'ৰিপজিটৰীৰ সৈতে সংযুক্ত চেক-আউট কৰা কৰ্মডাইৰেক্টৰী।';

  @override
  String get gameHintWord221Registry => 'কণ্টেইনাৰ ইমেজ সংৰক্ষণ আৰু বিতৰণ কৰা সেৱা।';

  @override
  String get gameHintWord222Digest => 'কণ্টেইনাৰ ইমেজৰ বিষয়বস্তু-ভিত্তিক পৰিচয়কৰ্তা।';

  @override
  String get gameHintWord223Layer => 'কণ্টেইনাৰ ইমেজৰ অংশ গঠন কৰা ফাইলছিষ্টেমৰ পৰিৱৰ্তন।';

  @override
  String get gameHintWord224Entrypoint => 'কণ্টেইনাৰৰ মূল এক্সিকিউটেবল নিৰ্ধাৰণ কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord225Cmd => 'ডিফল্ট কমাণ্ড বা আৰ্গুমেণ্ট নিৰ্দিষ্ট কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord226Workdir => 'কৰ্মডাইৰেক্টৰী ছেট কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord227Copy => 'বিল্ড-প্ৰসংগৰ ফাইল ইমেজলৈ প্ৰতিলিপি কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord228Add => 'স্থানীয় আৰ্কাইভ খুলিব পৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord229Run => 'বিল্ড-সময়ৰ কমাণ্ড চলোৱা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord230Env => 'পৰিৱেশ চলক সংজ্ঞায়িত কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord231Arg => 'বিল্ড-সময়ৰ চলক ঘোষণা কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord232Expose => 'কণ্টেইনাৰ পোৰ্ট নথিভুক্ত কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord233User => 'পিছৰ কমাণ্ডৰ বাবে একাউণ্ট বাছনি কৰা Dockerfile নিৰ্দেশনা।';

  @override
  String get gameHintWord234Healthcheck => 'কণ্টেইনাৰৰ স্বাস্থ্য কেনেকৈ পৰীক্ষা কৰিব তাক বৰ্ণনা কৰা নিৰ্দেশনা।';

  @override
  String get gameHintWord235Shebang => 'কোনটো ইণ্টাৰপ্ৰেটাৰে চলাব তাক চিনাক্ত কৰা স্ক্ৰিপ্টৰ প্ৰথম শাৰী।';

  @override
  String get gameHintWord236Compose => 'একাধিক-কণ্টেইনাৰ এপ্লিকেচন সংজ্ঞায়িত আৰু চলাবলৈ Docker সঁজুলি।';

  @override
  String get gameHintWord237Bridge => 'স্থানীয় কণ্টেইনাৰ নেটৱৰ্কিঙৰ সাধাৰণ Docker নেটৱৰ্ক ড্ৰাইভাৰ।';

  @override
  String get gameHintWord238Overlay => 'একাধিক হ\'স্টৰ কণ্টেইনাৰ জুৰি থকা নেটৱৰ্ক।';

  @override
  String get gameHintWord239None => 'কণ্টেইনাৰ নেটৱৰ্কিং নিষ্ক্ৰিয় কৰা Docker নেটৱৰ্ক ড্ৰাইভাৰ।';

  @override
  String get gameHintWord240Prune => 'ব্যৱহাৰ নকৰা কণ্টেইনাৰ ৰিছোৰ্চ আঁতৰায়।';

  @override
  String get gameHintWord241Replicaset => 'বাঞ্ছিত পডৰ সংখ্যা বজাই ৰখা Kubernetes নিয়ন্ত্ৰক।';

  @override
  String get gameHintWord242Service => 'পডলৈ স্থিৰ প্ৰৱেশ দিয়া Kubernetes বিমূৰ্তকৰণ।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes সেৱাৰ পিছত থকা ঠিকনাসমূহ।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes ৰিছোৰ্চ গোট কৰা যুক্তিসংগত পৰিসৰ।';

  @override
  String get gameHintWord245Node => 'Kubernetes পড ধৰি ৰখা কৰ্মী মেচিন।';

  @override
  String get gameHintWord246Kubelet => 'প্ৰতিটো নোডত থকা পডৰ নিষ্পাদন পৰিচালনা কৰা এজেণ্ট।';

  @override
  String get gameHintWord247Pvc => 'স্থায়ী ষ্ট\'ৰেজৰ বাবে Kubernetes অনুৰোধ।';

  @override
  String get gameHintWord248Apiserver => 'ক্লাষ্টাৰ API প্ৰকাশ কৰা Kubernetes নিয়ন্ত্ৰণ-সমতলৰ উপাদান।';

  @override
  String get gameHintWord249Role => 'ভূমিকা-ভিত্তিক প্ৰৱেশ নিয়ন্ত্ৰণত অনুমতিৰ নামযুক্ত গোট।';

  @override
  String get gameHintWord250Resourcequota => 'নেমস্পেচত ৰিছোৰ্চ ব্যৱহাৰ সীমিত কৰা Kubernetes বস্তু।';

  @override
  String get gameHintWord251Selector => 'লেবেলৰ জৰিয়তে ৰিছোৰ্চ মিলোৱা অভিব্যক্তি।';

  @override
  String get gameHintWord252Taint => 'মিল থকা টলাৰেচন নথকা পডক বিকৰ্ষণ কৰা নোডৰ বৈশিষ্ট্য।';

  @override
  String get gameHintWord253Toleration => 'টেইণ্ট কৰা নোডত সময়সূচীবদ্ধ কৰাৰ অনুমতি দিয়া পড ছেটিং।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes নোডক সময়সূচীবদ্ধ কৰিব নোৱৰা বুলি চিহ্নিত কৰে।';

  @override
  String get gameHintWord255Uncordon => 'কৰ্ডন কৰা নোডক পুনৰ সময়সূচীবদ্ধযোগ্য কৰে।';

  @override
  String get gameHintWord256Drain => 'নোড ৰক্ষণাবেক্ষণৰ আগতে ৱৰ্কল\'ড সুৰক্ষিতভাৱে আঁতৰায়।';

  @override
  String get gameHintWord257Job => 'সম্পূৰ্ণ নোহোৱালৈকে কাম চলোৱা Kubernetes ৱৰ্কল\'ড।';

  @override
  String get gameHintWord258Cronjob => 'সময়সূচী অনুসৰি জব সৃষ্টি কৰা Kubernetes ৱৰ্কল\'ড।';

  @override
  String get gameHintWord259Readiness => 'কণ্টেইনাৰে ট্ৰেফিক গ্ৰহণ কৰিব পাৰিবনে নাই তাক দেখুৱা প্ৰব।';

  @override
  String get gameHintWord260Liveness => 'কণ্টেইনাৰ পুনৰাৰম্ভ কৰা প্ৰয়োজন নে নাই তাক দেখুৱা প্ৰব।';

  @override
  String get gameHintWord261Canary => 'নতুন সংস্কৰণ ট্ৰেফিকৰ সৰু অংশত দেখুওৱা ৰিলিজ পদ্ধতি।';

  @override
  String get gameHintWord262Rolling => 'চলি থকা ইনষ্টেঞ্চ ক্ৰমান্বয়ে সলনি কৰা হালনাগাদ কৌশল।';

  @override
  String get gameHintWord263Rollback => 'আগৰ কাম কৰা এপ্লিকেচন সংস্কৰণ পুনৰুদ্ধাৰ কৰে।';

  @override
  String get gameHintWord264Rollout => 'নতুন এপ্লিকেচন সংস্কৰণৰ ক্ৰমান্বয়ী মোতায়েন।';

  @override
  String get gameHintWord265Recreate => 'বিকল্প আৰম্ভ কৰাৰ আগতে পুৰণি পড বন্ধ কৰা মোতায়েন কৌশল।';

  @override
  String get gameHintWord266Blue => 'blue-green ৰিলিজৰ দুটা পৰিৱেশৰ এটা।';

  @override
  String get gameHintWord267Green => 'blue-green ৰিলিজৰ আন পৰিৱেশটো।';

  @override
  String get gameHintWord268Artifact => 'বিল্ড পাইপলাইনে উৎপাদন কৰা সংস্কৰণযুক্ত আউটপুট।';

  @override
  String get gameHintWord269Staging => 'ৰিলিজ বৈধকৰণৰ বাবে ব্যৱহৃত প্ৰি-প্ৰডাকচন পৰিৱেশ।';

  @override
  String get gameHintWord270Production => 'প্ৰকৃত অন্তিম ব্যৱহাৰকাৰীক সেৱা আগবঢ়োৱা পৰিৱেশ।';

  @override
  String get gameHintWord271Release => 'ব্যৱহাৰৰ বাবে বিতৰণ কৰা চফটৱেৰ সংস্কৰণ।';

  @override
  String get gameHintWord272Version => 'চফটৱেৰৰ সংশোধন পৃথক কৰা পৰিচয়কৰ্তা।';

  @override
  String get gameHintWord273Revision => 'নথি বা ক\'ডবেছৰ চিনাক্তযোগ্য সংস্কৰণ।';

  @override
  String get gameHintWord274Webhook => 'ঘটনা ঘটিলে পঠোৱা HTTP জাননী।';

  @override
  String get gameHintWord275Runbook => 'ব্যৱস্থা চলোৱা বা পুনৰুদ্ধাৰৰ নথিভুক্ত পদ্ধতি।';

  @override
  String get gameHintWord276Workspace => 'কামৰ প্ৰকল্প ৰিছোৰ্চ থকা ডাইৰেক্টৰী বা পৰিসৰ।';

  @override
  String get gameHintWord277Credentials => 'ব্যৱস্থাত প্ৰৱেশ কৰিবলৈ ব্যৱহৃত সত্যাপন সামগ্ৰী।';

  @override
  String get gameHintWord278Trigger => 'পাইপলাইন আৰম্ভ কৰা ঘটনা বা চৰ্ত।';

  @override
  String get gameHintWord279Parameter => 'জব বা ফাংচনলৈ দিয়া নামযুক্ত ইনপুট।';

  @override
  String get gameHintWord280Access => 'অনুমোদন সাপেক্ষে ৰিছোৰ্চ ব্যৱহাৰ কৰাৰ ক্ষমতা।';

  @override
  String get gameHintWord281Module => 'অৱকাঠামো সংজ্ঞাৰ পুনৰ ব্যৱহাৰযোগ্য গোট।';

  @override
  String get gameHintWord282Provider => 'কনফিগাৰেচনক বাহ্যিক API ৰ সৈতে সংযোগ কৰা Terraform প্লাগইন।';

  @override
  String get gameHintWord283Resource => 'কনফিগাৰেচনত ঘোষিত পৰিচালিত অৱকাঠামো বস্তু।';

  @override
  String get gameHintWord284Variable => 'কনফিগাৰেচন বা ক\'ডে ব্যৱহাৰ কৰা নামযুক্ত ইনপুট মান।';

  @override
  String get gameHintWord285Output => 'অৱকাঠামো কনফিগাৰেচনে ঘূৰাই দিয়া প্ৰকাশিত মান।';

  @override
  String get gameHintWord286Tfstate => 'Terraform ষ্টেট স্নেপশ্বটৰ সৈতে জড়িত ফাইল প্ৰত্যয়।';

  @override
  String get gameHintWord287Tfvars => 'Terraform ইনপুট চলকৰ মানৰ বাবে ব্যৱহৃত ফাইল প্ৰত্যয়।';

  @override
  String get gameHintWord288Backend => 'ষ্টেট ষ্ট\'ৰেজ নিয়ন্ত্ৰণ কৰা Terraform কনফিগাৰেচন।';

  @override
  String get gameHintWord289Plan => 'প্ৰস্তাৱিত অৱকাঠামো পৰিৱৰ্তনৰ Terraform পূৰ্বদৰ্শন।';

  @override
  String get gameHintWord290Apply => 'প্ৰস্তাৱিত পৰিৱৰ্তন সম্পাদন কৰা Terraform কাৰ্য।';

  @override
  String get gameHintWord291Destroy => 'পৰিচালিত অৱকাঠামো আঁতৰোৱা Terraform কাৰ্য।';

  @override
  String get gameHintWord292Import => 'বিদ্যমান ৰিছোৰ্চক অৱকাঠামো পৰিচালনাৰ অধীনলৈ আনে।';

  @override
  String get gameHintWord293Refresh => 'লিপিবদ্ধ অৱস্থাক প্ৰকৃত অৱকাঠামোৰ সৈতে সমন্বয় কৰে।';

  @override
  String get gameHintWord294Validate => 'কনফিগাৰেচনৰ বাক্যবিন্যাস আৰু অভ্যন্তৰীণ সংগতি পৰীক্ষা কৰে।';

  @override
  String get gameHintWord295Fmt => 'মানক কনফিগাৰেচন ফৰ্মেটিং প্ৰয়োগ কৰা Terraform কমাণ্ড।';

  @override
  String get gameHintWord296Init => 'Terraform প্ৰভাইডাৰ আৰু কৰ্মডাইৰেক্টৰী আৰম্ভ কৰে।';

  @override
  String get gameHintWord297Executor => 'বিল্ড চলাব পৰা Jenkins কৰ্মী স্লট।';

  @override
  String get gameHintWord298Dependencies => 'এটা উপাদানৰ আগতে আন এটা লাগিবলগীয়া সম্পৰ্ক।';

  @override
  String get gameHintWord299Drift => 'ঘোষিত আৰু প্ৰকৃত অৱকাঠামো অৱস্থাৰ মাজৰ পাৰ্থক্য।';

  @override
  String get gameHintWord300Locking => 'একে সময়ত একাধিক লেখকক ভাগ-বতৰা অৱস্থা সলনি কৰাত বাধা দিয়ে।';

  @override
  String get gameHintWord301Playbook => 'স্বয়ংক্ৰিয়কৰণ প্লে আৰু টাস্ক বৰ্ণনা কৰা Ansible নথি।';

  @override
  String get gameHintWord302Inventory => 'পৰিচালিত হ\'স্ট আৰু গোটৰ Ansible সংগ্ৰহ।';

  @override
  String get gameHintWord303Facts => 'পৰিচালিত হ\'স্টৰ বিষয়ে সংগ্ৰহ কৰা ব্যৱস্থাৰ তথ্য।';

  @override
  String get gameHintWord304Task => 'স্বয়ংক্ৰিয়কৰণত কামৰ এটা পৃথক একক।';

  @override
  String get gameHintWord305Handler => 'পৰিৱৰ্তনৰ জাননী পালে চলা Ansible টাস্ক।';

  @override
  String get gameHintWord306Notify => 'পৰিৱৰ্তিত টাস্কৰ পিছত হেণ্ডলাৰ শাৰীত ৰখা Ansible নিৰ্দেশ।';

  @override
  String get gameHintWord307Become => 'বিশেষাধিকাৰ বৃদ্ধি সক্ষম কৰা Ansible ছেটিং।';

  @override
  String get gameHintWord308Vault => 'সংবেদনশীল স্বয়ংক্ৰিয়কৰণ ডাটা এনক্ৰিপ্ট কৰা Ansible বৈশিষ্ট্য।';

  @override
  String get gameHintWord309Register => 'টাস্কৰ ফলাফল চলকত সংৰক্ষণ কৰা Ansible নিৰ্দেশ।';

  @override
  String get gameHintWord310When => 'চৰ্তসাপেক্ষ টাস্ক নিষ্পাদন নিয়ন্ত্ৰণ কৰা Ansible কীৱৰ্ড।';

  @override
  String get gameHintWord311Loop => 'সংগ্ৰহ এটাৰ ওপৰত স্বয়ংক্ৰিয়কৰণ টাস্ক পুনৰাবৃত্তি কৰে।';

  @override
  String get gameHintWord312Include => 'পুনৰ ব্যৱহাৰযোগ্য স্বয়ংক্ৰিয়কৰণ সমল গতিশীলভাৱে লোড কৰে।';

  @override
  String get gameHintWord313Tags => 'স্বয়ংক্ৰিয়কৰণ টাস্কৰ উপগোট বাছনি কৰিবলৈ ব্যৱহৃত লেবেল।';

  @override
  String get gameHintWord314Template => 'মোতায়েনৰ আগতে চলকৰ সৈতে ৰেণ্ডাৰ কৰা ফাইল।';

  @override
  String get gameHintWord315Jinja => 'Ansible এ ব্যৱহাৰ কৰা টেমপ্লেট ভাষা।';

  @override
  String get gameHintWord316Abstraction => 'সৰল ইণ্টাৰফেচৰ আঁৰত বাস্তবায়নৰ বিৱৰণ লুকুওৱা।';

  @override
  String get gameHintWord317Agile => 'প্ৰতিক্ৰিয়াত গুৰুত্ব দিয়া পুনৰাবৃত্তিমূলক চফটৱেৰ বিতৰণ পদ্ধতি।';

  @override
  String get gameHintWord318Puppet => 'ঘোষণাত্মক মেনিফেষ্ট ব্যৱহাৰ কৰা কনফিগাৰেচন পৰিচালনা সঁজুলি।';

  @override
  String get gameHintWord319Airflow => 'ৱৰ্কফ্ল\' DAG সময়সূচী আৰু অৰ্কেষ্ট্ৰেট কৰা প্লেটফৰ্ম।';

  @override
  String get gameHintWord320Argo => 'GitOps বিতৰণ নিয়ন্ত্ৰকসহ ক্লাউড-নেটিভ প্ৰকল্প পৰিয়াল।';

  @override
  String get gameHintWord321Rds => 'AWS ৰ পৰিচালিত সম্পৰ্কভিত্তিক ডাটাবেছ সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord322Sqs => 'AWS ৰ পৰিচালিত বাৰ্তা শাৰীৰ চমুকথা।';

  @override
  String get gameHintWord323Sns => 'AWS ৰ প্ৰকাশ-গ্ৰাহক জাননী সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord324Ses => 'AWS ৰ ইমেইল প্ৰেৰণ সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord325Iam => 'ক্লাউড পৰিচয় আৰু প্ৰৱেশ পৰিচালনাৰ চমুকথা।';

  @override
  String get gameHintWord326Kms => 'AWS ৰ এনক্ৰিপশন চাবি পৰিচালনা সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord327Waf => 'এপ্লিকেচন-স্তৰৰ ৱেব অনুৰোধ ছাঁটি লোৱা ফায়াৰৱাল।';

  @override
  String get gameHintWord328Eks => 'AWS ৰ পৰিচালিত Kubernetes সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord329Ecs => 'AWS ৰ পৰিচালিত কণ্টেইনাৰ অৰ্কেষ্ট্ৰেচন সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord330Ecr => 'AWS ৰ কণ্টেইনাৰ ইমেজ ৰেজিষ্ট্ৰীৰ চমুকথা।';

  @override
  String get gameHintWord331Aurora => 'MySQL আৰু PostgreSQL ৰ সৈতে সামঞ্জস্যপূৰ্ণ AWS সম্পৰ্কভিত্তিক ডাটাবেছ।';

  @override
  String get gameHintWord332Redshift => 'AWS বিশ্লেষণ ডাটা ৱেয়াৰহাউচ।';

  @override
  String get gameHintWord333Neptune => 'AWS ৰ পৰিচালিত গ্ৰাফ ডাটাবেছ।';

  @override
  String get gameHintWord334Elasticache => 'AWS ৰ পৰিচালিত ইন-মেমোৰী কেশিং সেৱা।';

  @override
  String get gameHintWord335Athena => 'SQL ৰ জৰিয়তে অবজেক্ট-ষ্ট\'ৰেজ ডাটা প্ৰশ্ন কৰা AWS সেৱা।';

  @override
  String get gameHintWord336Glue => 'AWS ৰ ছাৰ্ভাৰবিহীন ডাটা সংহতি আৰু ETL সেৱা।';

  @override
  String get gameHintWord337Emr => 'পৰিচালিত বিগ-ডাটা প্ৰক্ৰিয়াকৰণ ক্লাষ্টাৰৰ AWS প্লেটফৰ্ম।';

  @override
  String get gameHintWord338Lambda => 'ছাৰ্ভাৰ পৰিচালনা নকৰাকৈ ফাংচন চলোৱা AWS সেৱা।';

  @override
  String get gameHintWord339Cloudfront => 'AWS ৰ বিশ্বব্যাপী সমল বিতৰণ নেটৱৰ্ক।';

  @override
  String get gameHintWord340Cloudwatch => 'মেট্ৰিক, লগ আৰু এলাৰ্ম সংগ্ৰহ কৰা AWS সেৱা।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ৰ ব্ৰাউজাৰ-ভিত্তিক শ্বেল পৰিৱেশ।';

  @override
  String get gameHintWord342Codecommit => 'AWS ৰ পৰিচালিত Git ৰিপজিটৰী সেৱা।';

  @override
  String get gameHintWord343Codebuild => 'উৎস কম্পাইল কৰি বিল্ড পৰীক্ষা চলোৱা AWS সেৱা।';

  @override
  String get gameHintWord344Codedeploy => 'AWS ৰ স্বয়ংক্ৰিয় এপ্লিকেচন মোতায়েন সেৱা।';

  @override
  String get gameHintWord345Codepipeline => 'AWS ৰ নিৰন্তৰ বিতৰণ পাইপলাইন সেৱা।';

  @override
  String get gameHintWord346Guardduty => 'AWS ৰ বুদ্ধিমান ভাবুকি চিনাক্তকৰণ সেৱা।';

  @override
  String get gameHintWord347Inspector => 'দুৰ্বলতাৰ বাবে ৱৰ্কল\'ড মূল্যায়ন কৰা AWS সেৱা।';

  @override
  String get gameHintWord348Macie => 'অবজেক্ট ষ্ট\'ৰেজত সংবেদনশীল ডাটা আৱিষ্কাৰ কৰা AWS সেৱা।';

  @override
  String get gameHintWord349Shield => 'AWS ৰ পৰিচালিত DDoS সুৰক্ষা সেৱা।';

  @override
  String get gameHintWord350Snowball => 'বৃহৎ ডাটা স্থানান্তৰৰ বাবে AWS ৰ ভৌতিক যন্ত্ৰ।';

  @override
  String get gameHintWord351Snowcone => 'AWS অফলাইন স্থানান্তৰ পৰিয়ালৰ সৰু মজবুত ডিভাইচ।';

  @override
  String get gameHintWord352Datasync => 'AWS ৰ স্বয়ংক্ৰিয় অনলাইন ডাটা স্থানান্তৰ সেৱা।';

  @override
  String get gameHintWord353Msk => 'AWS ৰ পৰিচালিত Apache Kafka সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord354Backup => 'পুনৰুদ্ধাৰৰ বাবে ৰখা ডাটাৰ প্ৰতিলিপি।';

  @override
  String get gameHintWord355Transcribe => 'কথাক লিখনীলৈ ৰূপান্তৰ কৰা AWS সেৱা।';

  @override
  String get gameHintWord356Translate => 'ভাষাৰ মাজত লিখনী অনুবাদ কৰা AWS সেৱা।';

  @override
  String get gameHintWord357Rekognition => 'ছবি আৰু ভিডিঅ\' বিশ্লেষণ কৰা AWS সেৱা।';

  @override
  String get gameHintWord358Comprehend => 'AWS ৰ প্ৰাকৃতিক-ভাষা বিশ্লেষণ সেৱা।';

  @override
  String get gameHintWord359Textract => 'নথিৰ পৰা লিখনী আৰু তালিকা উলিওৱা AWS সেৱা।';

  @override
  String get gameHintWord360Sagemaker => 'মেচিন লাৰ্নিং মডেল নিৰ্মাণ আৰু মোতায়েনৰ AWS প্লেটফৰ্ম।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud ৰ বিশ্বব্যাপী বিতৰিত সম্পৰ্কভিত্তিক ডাটাবেছ।';

  @override
  String get gameHintWord362Pub => 'প্ৰকাশ-গ্ৰাহক বাৰ্তা আৰ্হিৰ প্ৰকাশ কৰা অংশ।';

  @override
  String get gameHintWord363Sub => 'প্ৰকাশ-গ্ৰাহক বাৰ্তা আৰ্হিৰ গ্ৰাহক অংশ।';

  @override
  String get gameHintWord364Functions => 'ছাৰ্ভাৰবিহীন প্লেটফৰ্মে আগবঢ়োৱা ঘটনা-চালিত ক\'ডৰ একক।';

  @override
  String get gameHintWord365App => 'চফটৱেৰ এপ্লিকেচনৰ চমু ৰূপ।';

  @override
  String get gameHintWord366Engine => 'Compute Engine ৰ দৰে নামত থকা নিষ্পাদন উপাদান।';

  @override
  String get gameHintWord367Compute => 'ভাৰ্চুৱেল মেচিন বা কণ্টেইনাৰে যোগোৱা প্ৰক্ৰিয়াকৰণ ক্ষমতা।';

  @override
  String get gameHintWord368Network => 'ডাটা আদান-প্ৰদান কৰা সংযুক্ত ব্যৱস্থাসমূহ।';

  @override
  String get gameHintWord369Security => 'ভাবুকিৰ পৰা ব্যৱস্থা আৰু তথ্যৰ সুৰক্ষা।';

  @override
  String get gameHintWord370Identity => 'প্ৰৱেশৰ সিদ্ধান্তত ব্যৱহৃত ব্যৱহাৰকাৰী বা সেৱাৰ প্ৰতিনিধিত্ব।';

  @override
  String get gameHintWord371Monitoring => 'ব্যৱস্থাৰ স্বাস্থ্য আৰু আচৰণৰ নিৰন্তৰ পৰ্যবেক্ষণ।';

  @override
  String get gameHintWord372Logging => 'পৃথক এপ্লিকেচন আৰু ব্যৱস্থাৰ ঘটনা লিপিবদ্ধ কৰা।';

  @override
  String get gameHintWord373Trace => 'সেৱা কলৰ মাজেৰে অনুৰোধৰ পথৰ ৰেকৰ্ড।';

  @override
  String get gameHintWord374Metrics => 'সময়ৰ লগে লগে ব্যৱস্থাৰ আচৰণৰ সংখ্যাত্মক পৰিমাপ।';

  @override
  String get gameHintWord375Alert => 'নিৰীক্ষণ কৰা চৰ্তৰ প্ৰতি মনোযোগ দিয়াৰ প্ৰয়োজন বুলি জনোৱা জাননী।';

  @override
  String get gameHintWord376Billing => 'ব্যৱহৃত ক্লাউড সেৱাৰ হিচাপ ৰখা আৰু মাচুল ধাৰ্য কৰা।';

  @override
  String get gameHintWord377Quota => 'ব্যৱহাৰ কৰিব পৰা ৰিছোৰ্চৰ পৰিমাণৰ সীমা।';

  @override
  String get gameHintWord378Region => 'উপলব্ধতা অঞ্চল থকা ভৌগোলিক ক্লাউড মোতায়েন এলাকা।';

  @override
  String get gameHintWord379Tenancy => 'গ্ৰাহকে কেনেকৈ অৱকাঠামো ভাগ কৰে তাক বৰ্ণনা কৰা ব্যৱস্থা।';

  @override
  String get gameHintWord380Regional => 'ক্লাউড অঞ্চলত সীমাবদ্ধ ৰিছোৰ্চ বুজায়।';

  @override
  String get gameHintWord381Cosmos => 'Azure ৰ বিশ্বব্যাপী বিতৰিত বহু-মডেল ডাটাবেছৰ নাম।';

  @override
  String get gameHintWord382Synapse => 'ৱেয়াৰহাউজিং আৰু ডাটা প্ৰক্ৰিয়াকৰণ একত্ৰিত কৰা Azure বিশ্লেষণ প্লেটফৰ্ম।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft ৰ ক্লাউড-নেটিভ সুৰক্ষা তথ্য আৰু ঘটনা প্লেটফৰ্ম।';

  @override
  String get gameHintWord384Defender => 'ক্লাউড ৱৰ্কল\'ড সুৰক্ষিত কৰা Microsoft সুৰক্ষা সামগ্ৰীৰ পৰিয়াল।';

  @override
  String get gameHintWord385Entra => 'Azure AD ব্ৰেণ্ডিঙৰ ঠাই লোৱা Microsoft পৰিচয় সামগ্ৰীৰ পৰিয়াল।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager ৰ চমুকথা।';

  @override
  String get gameHintWord387Arc => 'Azure ৰ বাহিৰৰ ৰিছোৰ্চলৈ পৰিচালনা সম্প্ৰসাৰিত কৰা Azure সেৱা।';

  @override
  String get gameHintWord388Aks => 'Azure ৰ পৰিচালিত Kubernetes সেৱাৰ চমুকথা।';

  @override
  String get gameHintWord389Armor => 'Google Cloud ৱেব সুৰক্ষা সেৱাৰ নামৰ প্ৰত্যয়।';

  @override
  String get gameHintWord390Blob => 'Azure ৰ অবজেক্ট-ষ্ট\'ৰেজ ডাটা প্ৰকাৰ।';

  @override
  String get gameHintWord391Files => 'পৰিচালিত নেটৱৰ্ক ফাইল শ্বেয়াৰ দিয়া Azure সেৱা।';

  @override
  String get gameHintWord392Disk => 'ভাৰ্চুৱেল মেচিনত সংযুক্ত ব্লক-ষ্ট\'ৰেজ ডিভাইচ।';

  @override
  String get gameHintWord393Function => 'ফলাফল ঘূৰাই দিব পৰা আহ্বানযোগ্য ক\'ডৰ খণ্ড।';

  @override
  String get gameHintWord394Logic => 'ৱৰ্কফ্ল\' সংহতিৰ বাবে Azure এপ সেৱাৰ শ্ৰেণী।';

  @override
  String get gameHintWord395Insights => 'Azure এপ্লিকেচন টেলিমেট্ৰি সামগ্ৰীৰ নামৰ প্ৰত্যয়।';

  @override
  String get gameHintWord396Traffic => 'নেটৱৰ্ক অন্তিম বিন্দুৰ মাজত প্ৰবাহিত ডাটা।';

  @override
  String get gameHintWord397Manager => 'ইয়াৰ নিয়ন্ত্ৰণ সমতলৰ বাবে Azure Resource সামগ্ৰীৰ নামৰ প্ৰত্যয়।';

  @override
  String get gameHintWord398Bastion => 'ব্যক্তিগত হ\'স্ট প্ৰৱেশৰ বাবে পৰিচালিত বা সুৰক্ষিত প্ৰৱেশ বিন্দু।';

  @override
  String get gameHintWord399Front => 'Azure ৰ বিশ্বব্যাপী প্ৰৱেশ-বিন্দু সেৱা Front Door ৰ প্ৰথম শব্দ।';

  @override
  String get gameHintWord400Door => 'Azure ৰ বিশ্বব্যাপী প্ৰৱেশ-বিন্দু সেৱা Front Door ৰ দ্বিতীয় শব্দ।';

  @override
  String get gameHintWord401Javascript => 'ব্ৰাউজাৰ আৰু Node ৰানটাইমত বহুলভাৱে ব্যৱহৃত প্ৰগ্ৰামিং ভাষা।';

  @override
  String get gameHintWord402Perl => 'লিখনী প্ৰক্ৰিয়াকৰণ আৰু ৰেগুলাৰ অভিব্যক্তিৰ বাবে জনা স্ক্ৰিপ্টিং ভাষা।';

  @override
  String get gameHintWord403Powershell => 'Microsoft ৰ বস্তু-ভিত্তিক শ্বেল আৰু স্বয়ংক্ৰিয়কৰণ ভাষা।';

  @override
  String get gameHintWord404Java => 'Jenkins বাস্তবায়নত ব্যৱহৃত JVM ভাষা।';

  @override
  String get gameHintWord405Json => 'বস্তু আৰু এৰেযুক্ত লঘু ডাটা ফৰ্মেট।';

  @override
  String get gameHintWord406Xml => 'নেষ্ট কৰা নামযুক্ত টেগ ব্যৱহাৰ কৰা মাৰ্কআপ ফৰ্মেট।';

  @override
  String get gameHintWord407Html => 'ৱেব পৃষ্ঠা গঠন কৰিবলৈ ব্যৱহৃত মাৰ্কআপ ভাষা।';

  @override
  String get gameHintWord408Css => 'ৱেবৰ উপস্থাপন নিয়ন্ত্ৰণ কৰা ষ্টাইলশ্বীট ভাষা।';

  @override
  String get gameHintWord409String => 'লিখনী আখৰৰ ক্ৰম।';

  @override
  String get gameHintWord410Array => 'উপাদানৰ সূচকযুক্ত সংগ্ৰহ।';

  @override
  String get gameHintWord411Hash => 'Ruby আৰু Perl ত সহযোগী key-value সংগ্ৰহ।';

  @override
  String get gameHintWord412Object => 'বৈশিষ্ট্য আৰু আচৰণ থকা ৰানটাইম মান।';

  @override
  String get gameHintWord413Class => 'শ্ৰেণী-ভিত্তিক ভাষাত বস্তু নিৰ্মাণ কৰিবলৈ ব্যৱহৃত সংজ্ঞা।';

  @override
  String get gameHintWord414Method => 'বস্তু বা শ্ৰেণীৰ সৈতে জড়িত ফাংচন।';

  @override
  String get gameHintWord415Interface => 'উপাদানে প্ৰকাশ কৰা কাৰ্য বৰ্ণনা কৰা চুক্তি।';

  @override
  String get gameHintWord416Subclass => 'আন এটা শ্ৰেণীৰ পৰা উদ্ভূত শ্ৰেণী।';

  @override
  String get gameHintWord417Super => 'মাতৃ-শ্ৰেণীৰ আচৰণ আহ্বান কৰিবলৈ ব্যৱহৃত কীৱৰ্ড।';

  @override
  String get gameHintWord418Protected => 'শ্ৰেণী-সম্পৰ্কীয় প্ৰসংগলৈ প্ৰৱেশ সীমিত কৰা দৃশ্যমানতাৰ স্তৰ।';

  @override
  String get gameHintWord419Exception => 'স্বাভাৱিক নিয়ন্ত্ৰণ প্ৰবাহ বাধা দিয়া ৰানটাইম অৱস্থা।';

  @override
  String get gameHintWord420Regex => 'লিখনী মিলাবলৈ ব্যৱহৃত আৰ্হি চিহ্নায়ন।';

  @override
  String get gameHintWord421Lexical => 'উৎস-ক\'ডৰ গঠনে নিৰ্ধাৰণ কৰা পৰিসৰ বুজায়।';

  @override
  String get gameHintWord422Scalar => 'Perl ত এক-মানযুক্ত চলকৰ শ্ৰেণী।';

  @override
  String get gameHintWord423Tuple => 'Python ত অপৰিৱৰ্তনীয় ক্ৰমানুসাৰী সংগ্ৰহ।';

  @override
  String get gameHintWord424List => 'Python ত পৰিৱৰ্তনযোগ্য ক্ৰমানুসাৰী সংগ্ৰহ।';

  @override
  String get gameHintWord425Dict => 'Python ৰ বিল্ট-ইন মেপিং প্ৰকাৰৰ নাম।';

  @override
  String get gameHintWord426Dictionary => 'কীক সংশ্লিষ্ট মানলৈ মেপ কৰা সংগ্ৰহ।';

  @override
  String get gameHintWord427Set => 'পৃথক মানৰ সংগ্ৰহ।';

  @override
  String get gameHintWord428Boolean => 'সত্য বা মিছা প্ৰতিনিধিত্ব কৰা ডাটা প্ৰকাৰ।';

  @override
  String get gameHintWord429Integer => 'পূৰ্ণ সংখ্যা প্ৰতিনিধিত্ব কৰা সংখ্যাগত প্ৰকাৰ।';

  @override
  String get gameHintWord430Float => 'ফ্লোটিং-পইণ্ট মান প্ৰতিনিধিত্ব কৰা সংখ্যাগত প্ৰকাৰ।';

  @override
  String get gameHintWord431Double => 'দ্বিগুণ-নিখুঁততাৰ ফ্লোটিং-পইণ্ট প্ৰকাৰ।';

  @override
  String get gameHintWord432Null => 'বস্তু বা ফলাফলৰ অনুপস্থিতি প্ৰতিনিধিত্ব কৰা মান।';

  @override
  String get gameHintWord433Undefined => 'নিযুক্ত নোহোৱা মানৰ বাবে JavaScript মান।';

  @override
  String get gameHintWord434Promise => 'অৱশেষত পোৱা অসমলয় ফলাফল প্ৰতিনিধিত্ব কৰা JavaScript বস্তু।';

  @override
  String get gameHintWord435Async => 'অসমলয় ফাংচন চিহ্নিত কৰা কীৱৰ্ড।';

  @override
  String get gameHintWord436Await => 'অসমলয় ফলাফলৰ বাবে অপেক্ষা কৰা কীৱৰ্ড।';

  @override
  String get gameHintWord437Callback => 'আন এটা কাৰ্যই আহ্বান কৰিবলৈ দিয়া ফাংচন।';

  @override
  String get gameHintWord438Closure => 'ইয়াৰ চাৰিওফালৰ লেক্সিকেল পৰিসৰলৈ প্ৰৱেশ ধৰি ৰখা ফাংচন।';

  @override
  String get gameHintWord439Generator => 'yield কৰা মানৰ জৰিয়তে ক্ৰম লেজীভাৱে উৎপন্ন কৰা ফাংচন।';

  @override
  String get gameHintWord440Iterator => 'সংগ্ৰহৰ মানৰ মাজেৰে আগবঢ়া বস্তু।';

  @override
  String get gameHintWord441Print => 'আউটপুটলৈ মান লিখা সাধাৰণ ফাংচন।';

  @override
  String get gameHintWord442Input => 'মানক ইনপুটৰ পৰা শাৰী পঢ়া Python ফাংচন।';

  @override
  String get gameHintWord443Open => 'ফাইল হেণ্ডেল পাবলৈ ব্যৱহৃত ফাংচন।';

  @override
  String get gameHintWord444Close => 'মুকলি ফাইল বা সংযোগ মুক্ত কৰা কাৰ্য।';

  @override
  String get gameHintWord445Read => 'ষ্ট্ৰীম বা ফাইলৰ পৰা ডাটা লাভ কৰা কাৰ্য।';

  @override
  String get gameHintWord446Write => 'ষ্ট্ৰীম বা ফাইললৈ ডাটা পঠোৱা কাৰ্য।';

  @override
  String get gameHintWord447Append => 'সংগ্ৰহৰ শেষত এটা বস্তু যোগ কৰে।';

  @override
  String get gameHintWord448Split => 'বিভাজক ব্যৱহাৰ কৰি লিখনীক উপস্ট্ৰিঙত ভাঙে।';

  @override
  String get gameHintWord449Join => 'বিভাজক ব্যৱহাৰ কৰি ষ্ট্ৰিঙৰ ক্ৰম একত্ৰিত কৰে।';

  @override
  String get gameHintWord450Strip => 'Python ষ্ট্ৰিঙৰ চাৰিওফালৰ খালী ঠাই আঁতৰায়।';

  @override
  String get gameHintWord451Chomp => 'Perl বা Ruby ত শেষৰ ৰেকৰ্ড বিভাজক আঁতৰায়।';

  @override
  String get gameHintWord452Map => 'সংগ্ৰহৰ প্ৰতিটো বস্তুত ৰূপান্তৰ প্ৰয়োগ কৰে।';

  @override
  String get gameHintWord453Filter => 'চৰ্ত পূৰণ কৰা সংগ্ৰহৰ বস্তু ৰাখে।';

  @override
  String get gameHintWord454Reduce => 'সংগ্ৰহক সঞ্চিত ফলাফললৈ একত্ৰিত কৰে।';

  @override
  String get gameHintWord455Range => 'পূৰ্ণ সংখ্যাৰ গণিতীয় ক্ৰম প্ৰতিনিধিত্ব কৰা Python প্ৰকাৰ।';

  @override
  String get gameHintWord456Length => 'সংগ্ৰহৰ আকাৰ ঘূৰাই দিয়া বৈশিষ্ট্য বা পদ্ধতি।';

  @override
  String get gameHintWord457Len => 'সংগ্ৰহৰ আকাৰ ঘূৰাই দিয়া Python বিল্ট-ইন ফাংচন।';

  @override
  String get gameHintWord458Type => 'বস্তুৰ প্ৰকাৰ ঘূৰাই দিয়া Python ফাংচন।';

  @override
  String get gameHintWord459Isinstance => 'প্ৰকাৰ শ্ৰেণীবিন্যাসত সদস্যপদ পৰীক্ষা কৰা Python ফাংচন।';

  @override
  String get gameHintWord460Yield => 'জেনেৰেটৰৰ পৰা মান উৎপাদন কৰা কীৱৰ্ড।';

  @override
  String get gameHintWord461Saas => 'সম্পূৰ্ণ চফটৱেৰ এপ্লিকেচন বিতৰণ কৰা ক্লাউড আৰ্হি।';

  @override
  String get gameHintWord462Paas => 'পৰিচালিত এপ্লিকেচন বিকাশ প্লেটফৰ্ম যোগোৱা ক্লাউড আৰ্হি।';

  @override
  String get gameHintWord463Iaas => 'ভাৰ্চুৱেল কম্পিউট, ষ্ট\'ৰেজ আৰু নেটৱৰ্কিং যোগোৱা ক্লাউড আৰ্হি।';

  @override
  String get gameHintWord464Hybrid => 'ব্যক্তিগত আৰু সৰ্বজনীন অৱকাঠামো একত্ৰিত কৰা ক্লাউড পদ্ধতি।';

  @override
  String get gameHintWord465Archive => 'কমকৈ প্ৰৱেশ কৰা ডাটাৰ দীঘলীয়া ষ্ট\'ৰেজ।';

  @override
  String get gameHintWord466Public => 'একাধিক গ্ৰাহকক সেৱা আগবঢ়োৱা ক্লাউড মালিকানা আৰ্হি।';

  @override
  String get gameHintWord467Private => 'একক সংগঠনৰ বাবে উৎসৰ্গিত ক্লাউড আৰ্হি।';

  @override
  String get gameHintWord468Scalability => 'ৰিছোৰ্চ যোগ কৰি বাঢ়ি অহা লোড সামৰিব পৰা ক্ষমতা।';

  @override
  String get gameHintWord469Availability => 'প্ৰয়োজনৰ সময়ত সেৱা কিমান পৰিমাণে প্ৰৱেশযোগ্য থাকে তাৰ মাত্ৰা।';

  @override
  String get gameHintWord470Resilience => 'বিফলতা সহ্য কৰি পুনৰুদ্ধাৰ হোৱাৰ ক্ষমতা।';

  @override
  String get gameHintWord471Redundancy => 'একক ব্যৰ্থতা বিন্দু কমোৱা অতিৰিক্ত উপাদান।';

  @override
  String get gameHintWord472Disaster => 'পুনৰুদ্ধাৰ কৌশলেৰে সমাধান কৰা ডাঙৰ বিভ্ৰাট।';

  @override
  String get gameHintWord473Recovery => 'বিফলতাৰ পিছত সেৱা বা ডাটা পুনৰুদ্ধাৰ কৰা।';

  @override
  String get gameHintWord474Replicate => 'ডাটা বা ৱৰ্কল\'ড আন স্থানলৈ প্ৰতিলিপি কৰে।';

  @override
  String get gameHintWord475Snapshotting => 'ডাটা বা ব্যৱস্থাৰ অৱস্থাৰ সময়-বিন্দুৰ প্ৰতিলিপি লোৱা।';

  @override
  String get gameHintWord476Restore => 'সংৰক্ষিত প্ৰতিলিপিৰ পৰা ডাটা পুনৰুদ্ধাৰ কৰা কাৰ্য।';

  @override
  String get gameHintWord477Residency => 'সংৰক্ষিত ডাটাৰ ভৌগোলিক অৱস্থান নিৰ্ধাৰণ কৰা প্ৰয়োজনীয়তা।';

  @override
  String get gameHintWord478Compliance => 'প্ৰয়োজনীয় নিয়ম আৰু সাংগঠনিক নিয়ন্ত্ৰণ পূৰণ কৰা।';

  @override
  String get gameHintWord479Governance => 'প্ৰযুক্তিৰ ব্যৱহাৰ নিয়ন্ত্ৰণ কৰা নীতি আৰু প্ৰক্ৰিয়া।';

  @override
  String get gameHintWord480Audit => 'লিপিবদ্ধ কাৰ্যকলাপ আৰু সঙ্গতিৰ প্ৰমাণৰ পৰ্যালোচনা।';

  @override
  String get gameHintWord481Token => 'অনুমোদন বা পৰিচয় প্ৰতিনিধিত্ব কৰা প্ৰমাণপত্ৰ বা চিহ্ন।';

  @override
  String get gameHintWord482Oauth => 'প্ৰতিনিধিত্বমূলক প্ৰৱেশৰ অনুমতি দিয়া অনুমোদন কাঠামো।';

  @override
  String get gameHintWord483Saml => 'প্ৰতিষ্ঠানৰ single sign-on ৰ বাবে সাধাৰণতে ব্যৱহৃত XML-ভিত্তিক মান।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell পাইপলাইনত ব্যৱহৃত বিশেষ কমাণ্ড।';

  @override
  String get gameHintWord485Algorithm => 'গণনাত্মক সমস্যা সমাধানৰ বাবে সংজ্ঞায়িত পদক্ষেপৰ ক্ৰম।';

  @override
  String get gameHintWord486Key => 'এনক্ৰিপশন নিয়ন্ত্ৰণ বা সংৰক্ষিত ডাটা চিনাক্ত কৰিবলৈ ব্যৱহৃত মান।';

  @override
  String get gameHintWord487Alias => 'শ্বেল কমাণ্ড বা ৰিছোৰ্চৰ বিকল্প নাম।';

  @override
  String get gameHintWord488Amend => 'আটাইতকৈ শেহতীয়া কমিট সলনি কৰা Git কমিট বিকল্প।';

  @override
  String get gameHintWord489Allsigned => 'স্বাক্ষৰিত স্ক্ৰিপ্ট লগা PowerShell নিষ্পাদন নীতি।';

  @override
  String get gameHintWord490Remotesigned => 'ডাউনলোড কৰা স্ক্ৰিপ্টত স্বাক্ষৰ লগা PowerShell নীতি।';

  @override
  String get gameHintWord491Acl => 'ব্যৱহাৰকাৰী বা ব্যৱস্থাৰ অনুমতি সংজ্ঞায়িত কৰা তালিকা।';

  @override
  String get gameHintWord492Uid => 'Unix ব্যৱহাৰকাৰীক দিয়া সংখ্যাগত পৰিচয়কৰ্তা।';

  @override
  String get gameHintWord493Setgid => 'নিষ্পাদন বা উত্তৰাধিকাৰৰ সময়ত গোটৰ পৰিচয়ক প্ৰভাৱিত কৰা অনুমতি বিট।';

  @override
  String get gameHintWord494Setfacl => 'ফাইল প্ৰৱেশ নিয়ন্ত্ৰণ তালিকা ছেট কৰা Linux কমাণ্ড।';

  @override
  String get gameHintWord495Isolation => 'ৱৰ্কল\'ডে ইটোৱে সিটোক বাধা নিদিয়াকৈ পৃথক কৰি ৰখা ব্যৱস্থা।';

  @override
  String get gameHintWord496Sighup => 'প্ৰায়ে কনফিগাৰেচন পুনৰ লোড কৰিবলৈ অনুৰোধ কৰা Unix হেংআপ চিগনেল।';

  @override
  String get gameHintWord497Sigint => 'সাধাৰণতে Control-C ৰ জৰিয়তে উৎপন্ন হোৱা Unix ইণ্টাৰাপ্ট চিগনেল।';

  @override
  String get gameHintWord498Sigstop => 'প্ৰক্ৰিয়া সমাপ্ত নকৰাকৈ বিৰতি দিয়া Unix চিগনেল।';

  @override
  String get gameHintWord499Secrets => 'পাছৱৰ্ড আৰু প্ৰৱেশ চাবিৰ দৰে সংবেদনশীল মান।';

  @override
  String get gameHintWord500Secure => 'অনধিকাৰ প্ৰৱেশৰ পৰা সুৰক্ষিত সংযোগ বুজায়।';

  @override
  String get fontSettingsTitle => 'ফণ্ট';

  @override
  String get fontChangeFont => 'ফণ্ট সলনি কৰক';

  @override
  String get fontSystemDefault => 'ছিষ্টেম ডিফল্ট';

  @override
  String get fontPreview => 'পূৰ্বদৰ্শন';

  @override
  String get fontPreviewSample => 'এটা এটা প্ৰশ্নৰে DevOps শিকক';

  @override
  String get fontSelected => 'বাছনি কৰা';

  @override
  String get fontLatinOnlyNote => 'কাষ্টম ফণ্ট লেটিন আখৰত প্ৰযোজ্য। অন্য লিপিসমূহ আপোনাৰ ডিভাইচৰ ফণ্টতে থাকিব।';

  @override
  String get fontDescSystem => 'আপোনাৰ ডিভাইচৰ নিজা ফণ্ট';

  @override
  String get fontDescGeometric => 'জ্যামিতিক ছান্স-ছেৰিফ';

  @override
  String get fontDescGeometricRounded => 'জ্যামিতিক ঘূৰণীয়া ছান্স-ছেৰিফ';

  @override
  String get fontDescFriendly => 'বন্ধুসুলভ ছান্স-ছেৰিফ';

  @override
  String get fontDescCondensed => 'সংকুচিত';

  @override
  String get fontDescRounded => 'ঘূৰণীয়া ছান্স-ছেৰিফ';

  @override
  String get fontDescRoundedDisplay => 'ঘূৰণীয়া ডিচপ্লে';

  @override
  String gameScene3dScene(String value1) {
    return '3D দৃশ্য $value1';
  }
}
