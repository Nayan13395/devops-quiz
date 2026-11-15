// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTour => 'অ্যাপ পরিচিতি';

  @override
  String get skipTour => 'পরিচিতি এড়িয়ে যান';

  @override
  String get finishTour => 'পরিচিতি শেষ করুন';

  @override
  String tourStep(int current, int total) {
    return 'ধাপ $current / $total';
  }

  @override
  String get tourMenuTitle => 'নেভিগেশন মেনু';

  @override
  String get tourSearch => 'সম্পর্কিত কুইজের বিভাগ খুঁজতে এখানে বিষয় লিখুন।';

  @override
  String get tourCategory => 'মিশ্র কুইজের জন্য DevOps-এ চাপুন। অন্য বিভাগে প্রশ্নের সেট রয়েছে। পরে দেখার জন্য প্রশ্ন বুকমার্ক করুন।';

  @override
  String get tourMenu => 'নেভিগেশন মেনু খুলতে এই বোতামে চাপুন।';

  @override
  String get tourLearning => 'কার্ডের জন্য শেখা খুলুন। যেকোনো দিকে সোয়াইপ করুন, এলোমেলো করুন, স্বয়ংক্রিয় পরিবর্তন চালু করুন বা কার্ড বুকমার্ক করুন।';

  @override
  String get tourGames => 'গেম খেলে পয়েন্ট অর্জন করুন। স্তরভিত্তিক গেমে প্রতি স্তর শেষ করলে 100 পয়েন্ট মেলে; ইঙ্গিতের খরচ 20 পয়েন্ট।';

  @override
  String get tourAchievements => 'আপনার অর্জন এখানে দেখুন। নতুন অর্জন ও উপলব্ধ থিমের খবর পপআপে দেখানো হয়।';

  @override
  String get tourSettings => 'ভাষা, থিম ও শব্দ বেছে নিন। বুকমার্কের জন্য সংরক্ষিত ডেটা বা এই গাইড আবার দেখতে অ্যাপ পরিচিতি খুলুন।';

  @override
  String get achievementUnlocked => 'অর্জন আনলক হয়েছে!';

  @override
  String get themeUnlocked => 'নতুন থিম উপলব্ধ!';

  @override
  String get themeUnlockedMessage => 'এখন সেটিংস > থিম থেকে এই থিমটি বেছে নিতে পারেন।';

  @override
  String get gameSounds => 'গেমের শব্দ';

  @override
  String get gameSoundsDescription => 'গেম ও কুইজের শব্দপ্রভাব। ডিভাইসের ভলিউম ও সাইলেন্ট মোড দেখুন।';

  @override
  String get testSound => 'শব্দ পরীক্ষা করুন';

  @override
  String get soundSettingBusy => 'অনুগ্রহ করে অপেক্ষা করুন...';

  @override
  String get soundSettingError => 'শব্দের সেটিং লোড বা সংরক্ষণ করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String get soundPlaybackError => 'শব্দ বাজানো যায়নি। ডিভাইস বা ব্রাউজারের অডিও সেটিং দেখুন।';

  @override
  String get saveData => 'সংরক্ষিত ডেটা';

  @override
  String get learningTranslationUnavailable => 'এই কার্ডটি এখনও নির্বাচিত ভাষায় অনুবাদ করা হয়নি।';

  @override
  String get saveQuestion => 'প্রশ্ন সংরক্ষণ করুন';

  @override
  String defaultPortQuestion(String service) {
    return '$service-এর ডিফল্ট পোর্ট কী?';
  }

  @override
  String get removeSavedItem => 'সংরক্ষিত তালিকা থেকে সরান';

  @override
  String get noSavedData => 'এখনও কিছু সংরক্ষণ করা হয়নি। শেখার কার্ড বা কুইজের প্রশ্ন বুকমার্ক করুন।';

  @override
  String get savedDataError => 'সংরক্ষিত ডেটা লোড বা আপডেট করা যায়নি। আবার চেষ্টা করুন।';

  @override
  String get savedItemUnavailable => 'এই সংরক্ষিত বিষয়টি আর পাওয়া যাচ্ছে না।';

  @override
  String get correctAnswer => 'সঠিক উত্তর';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get certificates => 'সার্টিফিকেট';

  @override
  String get whatsNew => 'নতুন কী আছে';

  @override
  String get settings => 'সেটিংস';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get english => 'ইংরেজি';

  @override
  String get hindi => 'হিন্দি';

  @override
  String get marathi => 'মারাঠি';

  @override
  String get startQuiz => 'কুইজ শুরু করুন';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'বিভাগ পরিবর্তন করুন';

  @override
  String get dailyQuiz => 'দৈনিক কুইজ';

  @override
  String get dailyQuizCompleted => 'দৈনিক কুইজ সম্পন্ন';

  @override
  String get dailyQuizCompletedMessage => 'আপনি আজকের দৈনিক কুইজ ইতিমধ্যে সম্পন্ন করেছেন।\n\nনতুন চ্যালেঞ্জের জন্য আগামীকাল আবার আসুন!';

  @override
  String get leaderboard => 'লিডারবোর্ড';

  @override
  String get shareApp => 'অ্যাপ শেয়ার করুন';

  @override
  String get rateApp => 'অ্যাপ রেট করুন';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get home => 'হোম';

  @override
  String get games => 'গেম';

  @override
  String get referAndEarn => 'রেফার করুন ও আয় করুন';

  @override
  String get themes => 'থিম';

  @override
  String get version => 'সংস্করণ';

  @override
  String get developer => 'ডেভেলপার';

  @override
  String get contact => 'যোগাযোগ';

  @override
  String get learning => 'শেখা';

  @override
  String get linkedIn => 'লিঙ্কডইন';

  @override
  String get connectWithMe => 'আমার সাথে যুক্ত হন';

  @override
  String get aboutDescription => 'DevOps Quiz Linux, Docker, Kubernetes, নেটওয়ার্কিং, Git, Jenkins, Terraform, Ansible এবং অন্যান্য DevOps প্রযুক্তির হাজারো বাছাই করা প্রশ্নের মাধ্যমে ইন্টারভিউ ও সার্টিফিকেশনের প্রস্তুতিতে সাহায্য করে।';

  @override
  String get quizResult => 'কুইজের ফলাফল';

  @override
  String get outstanding => 'অসাধারণ!';

  @override
  String get greatJob => 'দারুণ কাজ!';

  @override
  String get goodEffort => 'ভালো চেষ্টা!';

  @override
  String get keepPracticing => 'অনুশীলন চালিয়ে যান!';

  @override
  String get dontGiveUp => 'হাল ছাড়বেন না!';

  @override
  String get shareMessage1 => 'আমার স্কোর';

  @override
  String get shareMessage2 => 'DevOps কুইজে!';

  @override
  String get downloadApp => 'অ্যাপ ডাউনলোড করুন:';

  @override
  String get score => 'স্কোর';

  @override
  String get points => 'পয়েন্ট';

  @override
  String get percentage => 'শতকরা হার';

  @override
  String get bonus => 'বোনাস';

  @override
  String get perfectScoreBonus => 'পূর্ণ স্কোর বোনাস';

  @override
  String get shareScore => 'স্কোর শেয়ার করুন';

  @override
  String get restartQuiz => 'কুইজ আবার শুরু করুন';

  @override
  String get backToCategories => 'বিভাগে ফিরে যান';

  @override
  String get greatProgress => 'সাবাশ! আপনি দারুণ অগ্রগতি করছেন।';

  @override
  String get practiceMore => 'ভালো কাজ! আরেকটু অনুশীলনে আপনি আরও বেশি স্কোর করবেন।';

  @override
  String get keepLearning => 'শিখতে থাকুন এবং আবার চেষ্টা করুন। অনুশীলনে আপনি উন্নতি করবেন।';

  @override
  String get everyExpertStarted => 'প্রত্যেক বিশেষজ্ঞই একসময় নতুন ছিলেন। অনুশীলন করুন আর আরও শক্তিশালী হয়ে ফিরে আসুন!';

  @override
  String get quizInstructions => 'কুইজের নির্দেশনা';

  @override
  String get instruction1 => 'প্রতিটি সেটে ২৫টি প্রশ্ন আছে।';

  @override
  String get instruction2 => 'প্রতিটি প্রশ্নের জন্য ৩০ সেকেন্ড সময় পাবেন।';

  @override
  String get instruction3 => 'সবুজ = সঠিক উত্তর।';

  @override
  String get instruction4 => 'লাল = ভুল উত্তর।';

  @override
  String get instruction5 => 'উত্তর পরিবর্তন করা যাবে না।';

  @override
  String get instruction6 => 'ব্যাক বোতাম শুধু পর্যালোচনার জন্য।';

  @override
  String get instruction7 => 'শেষ হলে স্কোর দেখানো হবে।';

  @override
  String get instruction8 => 'প্রতিটি সঠিক উত্তরে ১০ পয়েন্ট পাবেন।';

  @override
  String excellentPerformance(Object expert) {
    return 'চমৎকার পারফরম্যান্স! আপনি একজন $expert।';
  }

  @override
  String get selectCategory => 'বিভাগ নির্বাচন করুন';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'সেট নির্বাচন করুন';

  @override
  String get set => 'সেট';

  @override
  String get questions => 'প্রশ্ন';

  @override
  String get noScoresYet => 'এখনও কোনো স্কোর নেই';

  @override
  String get pointsShort => 'পয়েন্ট';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz-এ স্বাগতম';

  @override
  String hiUser(String name) {
    return 'হাই $name';
  }

  @override
  String get challengeMode => 'চ্যালেঞ্জ মোড';

  @override
  String get challenge => 'চ্যালেঞ্জ';

  @override
  String get question => 'প্রশ্ন';

  @override
  String get reward => 'পুরস্কার';

  @override
  String get survivalMode => 'সারভাইভাল মোড';

  @override
  String get speedChallenge => 'স্পিড চ্যালেঞ্জ';

  @override
  String get dailyChallenge => 'দৈনিক চ্যালেঞ্জ';

  @override
  String get ultimateChallenge => 'আলটিমেট চ্যালেঞ্জ';

  @override
  String get timeLeft => 'বাকি সময়';

  @override
  String get completed => 'সম্পন্ন';

  @override
  String get locked => 'লক করা';

  @override
  String get back => 'পিছনে';

  @override
  String get next => 'পরবর্তী';

  @override
  String get submit => 'জমা দিন';

  @override
  String get achievements => 'অর্জন';

  @override
  String get streak => 'ধারাবাহিকতা';

  @override
  String get days => 'দিন';

  @override
  String get tomorrowsReward => 'আগামীকালের পুরস্কার';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 আজকের #DevOps কুইজে আমি $score/$totalQuestions পেয়েছি!\n\n🏆 পয়েন্ট: $earnedPoints\n🔥 বোনাস: $bonusPoints\n📊 শতকরা: $percentage%\n\nআপনি কি আমার স্কোর ছাড়িয়ে যেতে পারবেন?\n\nঅ্যাপ ডাউনলোড করুন:';
  }

  @override
  String get gameUiSpinWheel => 'চাকা ঘোরান';

  @override
  String get gameUiSpinAndWinBonusPoints => 'ঘোরান এবং বোনাস পয়েন্ট জিতুন';

  @override
  String get gameUiScratchCard => 'স্ক্র্যাচ কার্ড';

  @override
  String get gameUiScratchToRevealAReward => 'পুরস্কার দেখতে স্ক্র্যাচ করুন';

  @override
  String get gameUiLuckySlots => 'লাকি স্লটস';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'স্লট ঘোরান এবং পয়েন্ট জিতুন';

  @override
  String get gameUiMysteryDeal => 'মিস্ট্রি ডিল';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'একটি রহস্য বাক্স বেছে নিন এবং উত্তর দিন';

  @override
  String get gameUiMemoryMatch => 'মেমরি ম্যাচ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps জোড়া মেলান';

  @override
  String get gameUiWordGuess => 'শব্দ অনুমান';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'লেভেলের মাধ্যমে DevOps শব্দ অনুমান করুন';

  @override
  String get gameUiFindWords => 'শব্দ খুঁজুন';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'গ্রিডে লুকানো DevOps শব্দ খুঁজুন';

  @override
  String get gameUiSpotTheDifference => 'পার্থক্য খুঁজুন';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'দুটি চিত্রিত দৃশ্যের মধ্যে পাঁচটি পরিবর্তন খুঁজুন';

  @override
  String get gameUiJigsawPuzzle => 'জিগস পাজল';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'শেয়ার করা HD প্রাণী ও প্রকৃতির ছবি পুনরায় সাজান';

  @override
  String get gameUiHighOrLow => 'হাই অর লো';

  @override
  String get gameUiBuildAStreak => 'ধারাবাহিকতা গড়ে তুলুন';

  @override
  String get gameUiTrueOrFalseBlitz => 'সত্য অথবা মিথ্যা ব্লিৎস';

  @override
  String get gameUiQuickAnswerQuiz => 'দ্রুত উত্তরের কুইজ';

  @override
  String get gameUiCommandMatch => 'কমান্ড ম্যাচ';

  @override
  String get gameUiMatchCommandsToMeanings => 'কমান্ডের সঙ্গে অর্থ মেলান';

  @override
  String get gameUiPortMaster => 'পোর্ট মাস্টার';

  @override
  String get gameUiGuessDefaultPorts => 'ডিফল্ট পোর্ট অনুমান করুন';

  @override
  String get gameUiTicTacToe => 'টিক-ট্যাক-টো';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X নটস অ্যান্ড ক্রসেস কম্পিউটার';

  @override
  String get gameUiConnectFour => 'কানেক্ট ফোর';

  @override
  String get gameUiDropFourDiscs => 'চারটি ডিস্ক ফেলুন';

  @override
  String get gameUiLudo => 'লুডো';

  @override
  String get gameUiRaceAgainstBots => 'বটদের বিপক্ষে দৌড়';

  @override
  String get gameUiChess => 'দাবা';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'দাবার বোর্ড, বৈধ চাল, দুইজন খেলোয়াড়';

  @override
  String get gameUiSnakeAndLadders => 'সাপ-লুডু';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'ছক্কার বোর্ড, সাপ ও মই, দুইজন খেলোয়াড়';

  @override
  String get gameUiGames => 'গেমস 🎮';

  @override
  String get gameUiPlayEarn => 'খেলুন ও আয় করুন';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'গেম খেলুন এবং বোনাস পয়েন্ট অর্জন করুন!';

  @override
  String get gameUiSearchGames => 'গেম খুঁজুন';

  @override
  String get gameUiClearSearch => 'অনুসন্ধান মুছুন';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" এর সঙ্গে কোনো গেম মেলেনি';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'ঘোরান ও বোনাস পয়েন্ট জিতুন।';

  @override
  String get gameUiScratchToRevealYourReward => 'আপনার পুরস্কার দেখতে স্ক্র্যাচ করুন।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'স্লট ঘোরান ও পয়েন্ট জিতুন।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'একটি রহস্য বাক্স বেছে নিন এবং সঠিক উত্তর দিয়ে পয়েন্ট জিতুন।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'পয়েন্ট অর্জনের জন্য DevOps জোড়া মেলান।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 বারের চেষ্টায় DevOps শব্দটি অনুমান করুন।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'গ্রিডে লুকানো DevOps শব্দ খুঁজুন।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 লেভেলে সোয়াইপ করে DevOps শব্দ খুঁজুন।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'দুটি চিত্রিত দৃশ্যের মধ্যে পাঁচটি পরিবর্তন খুঁজুন।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'শেয়ার করা HD প্রাণী ও প্রকৃতির ছবি পুনরায় সাজান।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ধারাবাহিকতা গড়ে তুলুন এবং আপনার পয়েন্ট জমা করুন।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'দ্রুত উত্তর দিয়ে সময়ের সঙ্গে পাল্লা দিন।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'সত্য অথবা মিথ্যা ব্লিৎস 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'কমান্ডগুলোর সঙ্গে তাদের কাজ মেলান।';

  @override
  String get gameUiCommandMatch670a76e => 'কমান্ড ম্যাচ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3টি জীবন নিয়ে ডিফল্ট পোর্ট অনুমান করুন।';

  @override
  String get gameUiPortMaster8f5fd42 => 'পোর্ট মাস্টার 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'কম্পিউটারের বিপক্ষে O/X খেলুন।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'জিততে এক সারিতে চারটি ডিস্ক ফেলুন।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'আপনার গুটিগুলো তিনটি বটের বিপক্ষে দৌড় করান।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'বৈধ চালসহ স্থানীয় দুইজনের দাবা।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'নিয়মসম্মত দুইজনের দাবা ম্যাচ খেলুন।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'দুইজনের ছক্কার বোর্ড গেম।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100-তে পৌঁছানোর দৌড়। মই বেয়ে উঠুন এবং সাপ এড়িয়ে চলুন।';

  @override
  String get gameUiPlay => 'খেলুন';

  @override
  String get gameUiWheelStopped => 'চাকা থেমেছে!';

  @override
  String get gameUiYourRewardIs => 'আপনার পুরস্কার';

  @override
  String get gameUiPOINTS => 'পয়েন্ট';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'এই পুরস্কার পেতে 1টি কুইজ প্রশ্নের সঠিক উত্তর দিন।';

  @override
  String get gameUiWrongAnswerRewardLost => 'ভুল উত্তর = পুরস্কার হারানো।';

  @override
  String get gameUiAnswerQuestion => 'প্রশ্নের উত্তর দিন';

  @override
  String get gameUiSpinWheele449982 => '🎡 চাকা ঘোরান';

  @override
  String get gameUiDailySpin => 'দৈনিক স্পিন';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'চাকা ঘোরান, তারপর পুরস্কার পেতে একটি প্রশ্নের উত্তর দিন!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'আপনি আজকের স্পিন ইতিমধ্যে ব্যবহার করেছেন।';

  @override
  String get gameUiSpinning => 'ঘুরছে...';

  @override
  String get gameUiSPINNOW => 'এখনই ঘোরান';

  @override
  String get gameUiCOMEBACKTOMORROW => 'আগামীকাল আবার আসুন';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'আজকের পুরস্কার: ⭐ $value1 পয়েন্ট';
  }

  @override
  String get gameUiBackToGames => 'গেমসে ফিরে যান';

  @override
  String get gameUiSPIN => 'ঘোরান';

  @override
  String get gameUiRewardRevealed => 'পুরস্কার প্রকাশিত!';

  @override
  String get gameUiYouFound => 'আপনি পেয়েছেন';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ স্ক্র্যাচ কার্ড';

  @override
  String get gameUiDailyScratch => 'দৈনিক স্ক্র্যাচ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'আজকের পুরস্কার দেখতে কার্ডটি স্ক্র্যাচ করুন!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'আপনি আজকের স্ক্র্যাচ কার্ড ইতিমধ্যে ব্যবহার করেছেন।';

  @override
  String get gameUiAlreadyScratched => 'ইতিমধ্যে স্ক্র্যাচ করা হয়েছে';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'আরেকটি পুরস্কারের জন্য আগামীকাল আবার আসুন।';

  @override
  String get gameUiYouRevealed => 'আপনি প্রকাশ করেছেন';

  @override
  String get gameUiSCRATCHHERE => 'এখানে স্ক্র্যাচ করুন  👆';

  @override
  String get gameUiJACKPOT777 => 'জ্যাকপট 777!';

  @override
  String get gameUiLucky777 => 'ভাগ্যবান 777!';

  @override
  String get gameUiYourReward => 'আপনার পুরস্কার';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 লাকি স্লটস';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'স্লট ঘোরান, তারপর পুরস্কার পেতে একটি প্রশ্নের উত্তর দিন!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'আপনি আজ ইতিমধ্যে খেলেছেন।';

  @override
  String get gameUiSPINNING => 'ঘুরছে...';

  @override
  String get gameUiROLLNOW => 'এখনই রোল করুন';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 জ্যাকপট! 777 পয়েন্ট পাওয়া যাচ্ছে!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'মিস্ট্রি ডিলের অবস্থা যাচাই করা যায়নি: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'বাক্স $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 পয়েন্ট';
  }

  @override
  String get gameUiStartQuestion => 'প্রশ্ন শুরু করুন';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 মিস্ট্রি ডিল';

  @override
  String get gameUiMysteryDealCompleted => 'মিস্ট্রি ডিল সম্পন্ন হয়েছে!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'আপনি আজ ইতিমধ্যে মিস্ট্রি ডিল খেলেছেন।';

  @override
  String get gameUiTodayYouWon => 'আজ আপনি জিতেছেন';

  @override
  String get gameUiTodaySReward => 'আজকের পুরস্কার';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 পয়েন্ট';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 পয়েন্ট হারিয়েছে';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'আরেকটি মিস্ট্রি বাক্সের জন্য আগামীকাল ফিরে আসুন!';

  @override
  String get gameUiChooseYourMysteryBox => 'আপনার মিস্ট্রি বাক্স বেছে নিন';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'প্রতিটি বাক্সে 10 থেকে 1000 পয়েন্টের মধ্যে একটি লুকানো পুরস্কার রয়েছে।';

  @override
  String get gameUiPickOnlyOneBox => 'শুধু একটি বাক্স বেছে নিন!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'সব $value1টি লেভেল সম্পন্ন!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'লেভেল $value1 সম্পন্ন!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1টি চালে সম্পন্ন হয়েছে।\nআপনি $value2 পয়েন্ট অর্জন করেছেন!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1টি চালে সম্পন্ন হয়েছে।\nএই লেভেলটি আগেই সম্পন্ন করা হয়েছিল।';
  }

  @override
  String get gameUiNextLevel => 'পরবর্তী লেভেল';

  @override
  String get gameUiDone => 'সম্পন্ন';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'মেমরি ম্যাচ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'সব 100টি লেভেল সম্পন্ন!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'আপনি মেমরি ম্যাচের প্রতিটি লেভেল সম্পন্ন করেছেন। দারুণ খেলেছেন!';

  @override
  String get gameUiChooseLevel => 'লেভেল বেছে নিন';

  @override
  String gameUiMoves(String value1) {
    return 'চাল: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'লেভেল $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1টি জোড়া';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'লেভেল $value1 মনে রাখুন';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1টি মিলে যাওয়া জোড়া খুঁজুন';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz লোগো';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'অধ্যায় 1 · বিল্ড পাইপলাইন পুনরুদ্ধার করুন';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'অধ্যায় 2 · ক্লাউড প্ল্যাটফর্ম স্কেল করুন';

  @override
  String get gameUiChapter3ProtectProduction => 'অধ্যায় 3 · প্রোডাকশন সুরক্ষিত করুন';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'জমা দিতে বাকি সব $value1টি অক্ষর ব্যবহার করুন।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'সব লেভেল সম্পন্ন!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'লেভেল $value1 সম্পন্ন!';
  }

  @override
  String get gameUiTryAgain => 'আবার চেষ্টা করুন';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'শব্দটি ছিল $value1। আপনি $value2 পয়েন্ট অর্জন করেছেন।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'শব্দটি ছিল $value1। $value3টি ইঙ্গিতের পর আপনি $value2 পয়েন্ট অর্জন করেছেন।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'শব্দটি ছিল $value1। $value3টি ইঙ্গিতের পর আপনি $value2 পয়েন্ট অর্জন করেছেন।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'শব্দটি ছিল $value1। লেভেল $value2 এখনও আপনার অপেক্ষায় আছে।';
  }

  @override
  String get gameUiFinish => 'শেষ করুন';

  @override
  String get gameUiNextLevel254fd73 => 'পরবর্তী লেভেল';

  @override
  String get gameUiRetryLevel => 'লেভেল আবার খেলুন';

  @override
  String get gameUiHowToPlay => 'কীভাবে খেলবেন';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'প্রতিটি লেভেলে একটি করে DevOps শব্দ থাকে। পাঁচ অক্ষরের চেয়ে ছোট শব্দগুলো কোনো বিনামূল্যের অক্ষর ছাড়াই শুরু হয়; লম্বা শব্দগুলো একটি অক্ষর নিয়ে শুরু হয়। উত্তর তৈরি করতে অক্ষরের র‍্যাক ব্যবহার করুন এবং Enter চাপুন। ইঙ্গিত আরও একটি অক্ষর দেখায় এবং আপনার ব্যালেন্স থেকে 20 পয়েন্ট কেটে নেয়। প্রতিটি সম্পন্ন লেভেলের জন্য 100 পয়েন্ট পাওয়া যায়।';

  @override
  String get gameUiGotIt => 'বুঝেছি';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'সব $value1টি লেভেল সম্পন্ন!';
  }

  @override
  String get gameUiEasy => 'সহজ';

  @override
  String get gameUiMedium => 'মাঝারি';

  @override
  String get gameUiHard => 'কঠিন';

  @override
  String get gameUiHowToPlay13a6b22 => 'কীভাবে খেলবেন';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'লেভেল $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'পুরস্কার $value1 পয়েন্ট · ব্যবহৃত ইঙ্গিত $value2';
  }

  @override
  String get gameUiHint20Pts => 'ইঙ্গিত · −20 পয়েন্ট';

  @override
  String get gameUiEnter => 'এন্টার';

  @override
  String get gameUiDelete => 'মুছুন';

  @override
  String get gameUiDragThroughAWord => 'একটি শব্দের ওপর দিয়ে টানুন';

  @override
  String get gameUiDragThroughEachWord => 'প্রতিটি শব্দের ওপর দিয়ে টানুন';

  @override
  String get gameUiReleaseToSelect => 'নির্বাচন করতে ছেড়ে দিন';

  @override
  String gameUiFound(String value1) {
    return '$value1 পাওয়া গেছে';
  }

  @override
  String get gameUiNoWordThere => 'ওখানে কোনো শব্দ নেই';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ইতিমধ্যে পাওয়া গেছে';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 খুঁজুন';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'সব লেভেল সম্পন্ন!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'আপনি প্রতিটি শব্দ খুঁজে পেয়েছেন এবং $value1 পয়েন্ট অর্জন করেছেন।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'আপনি প্রতিটি শব্দ খুঁজে পেয়েছেন। এই লেভেলটি আগেই সম্পন্ন করা হয়েছিল।';

  @override
  String get gameUiAll500LevelsComplete => 'সব 500টি লেভেল সম্পন্ন!';

  @override
  String get gameUiReviewLevels => 'লেভেলগুলো পর্যালোচনা করুন';

  @override
  String gameUiLeft(String value1) {
    return '$value1টি বাকি';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 পয়েন্ট';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'অগ্রগতি সংরক্ষণ করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'আপনি $value1 পয়েন্ট অর্জন করেছেন!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'আপনি এই ছবিটি ইতিমধ্যে সম্পন্ন করেছেন। আবার খেললে অতিরিক্ত পয়েন্ট নেই।';

  @override
  String get gameUiYouCompletedEveryPicture => 'আপনি প্রতিটি ছবি সম্পন্ন করেছেন!';

  @override
  String get gameUiLevels => 'লেভেল';

  @override
  String get gameUiPictureB => 'ছবি B';

  @override
  String get gameUiPictureA => 'ছবি A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ছবি লোড করা যায়নি। আবার চেষ্টা করুন';

  @override
  String get gameUiResetZoom => 'জুম রিসেট করুন';

  @override
  String get gameUiZoomBothPictures => 'দুটি ছবিই জুম করুন';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ইঙ্গিত · প্রতি ইঙ্গিতে $value1 পয়েন্ট';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'অগ্রগতি লোড করা যায়নি। আবার চেষ্টা করুন';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'লেভেল $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'সব পার্থক্য পাওয়া গেছে!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count পার্থক্য খুঁজুন। যেকোনো একটি ছবিতে প্রতিটির ওপর ট্যাপ করুন।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ভুল: $value1  ·  ইঙ্গিত: $value2 (−$value3 পয়েন্ট)  ·  $value4টি লেভেল সম্পন্ন';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'পরবর্তী লেভেল: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'পাজল $value1 সম্পন্ন!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ছবি $value1টি চালে সম্পন্ন হয়েছে। আপনি $value2 পয়েন্ট অর্জন করেছেন।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ছবি $value1টি চালে সম্পন্ন হয়েছে।';
  }

  @override
  String get gameUiNextPuzzle => 'পরবর্তী পাজল';

  @override
  String get gameUiAllPuzzlesComplete => 'সব পাজল সম্পন্ন';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'পাজলের টুকরা $value1/$value2, সঠিকভাবে বসানো হয়েছে';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'পাজলের টুকরা $value1/$value2';
  }

  @override
  String get gameUiChoosePuzzle => 'পাজল বেছে নিন';

  @override
  String get gameUiShufflePieces => 'টুকরাগুলো এলোমেলো করুন';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'ধাঁধার ছবি লোড করা যায়নি।';

  @override
  String get gameUiPreviousPuzzle => 'আগের ধাঁধা';

  @override
  String gameUiPuzzle(String value1) {
    return 'ধাঁধা $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5টি চাল';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'টুকরোগুলো টেনে অদলবদল করুন, অথবা দুটি টুকরোতে ট্যাপ করুন।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2টি ধাঁধা সমাধান হয়েছে  ·  প্রতিটিতে $value3 পয়েন্ট';
  }

  @override
  String get gameUiGameOver => 'খেলা শেষ';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'সংখ্যাটি ছিল $value1।\nটানা সঠিক: $value2\nআপনি $value3 পয়েন্ট অর্জন করেছেন!\n\nআরেকটি সুযোগের জন্য আগামীকাল আবার আসুন!';
  }

  @override
  String get gameUiHigherOrLower => 'বেশি নাকি কম 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'আজ ইতিমধ্যে খেলা হয়েছে!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'আপনি $value1/$value2/$value3 তারিখে খেলেছেন।\n\nনতুন ধারা শুরু করতে আগামীকাল আবার আসুন!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'আপনি আজ ইতিমধ্যে খেলেছেন।\n\nআরেকটি সুযোগের জন্য আগামীকাল আবার আসুন!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 টানা সঠিক: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ পয়েন্ট: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'পরের সংখ্যাটি কি বেশি হবে নাকি কম?';

  @override
  String get gameUiLower => 'কম';

  @override
  String get gameUiHigher => 'বেশি';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'সত্য নাকি মিথ্যা ব্লিৎজ ⚡';

  @override
  String get gameUiTimeSUp => 'সময় শেষ!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'সঠিক উত্তর: $value1\nসেরা টানা সঠিক: $value2\n$value3আপনি $value4 পয়েন্ট অর্জন করেছেন!\n\nআরেক রাউন্ডের জন্য আগামীকাল আবার আসুন!';
  }

  @override
  String get gameUiStreakBonus20 => 'টানা সঠিক বোনাস: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'দেখানো উত্তরটি কি সত্য নাকি মিথ্যা?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2টি বিভাগজুড়ে $value1টি প্রশ্ন';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'আপনার কাছে $value1 সেকেন্ড আছে। প্রতিটি সঠিক উত্তরে $value2 পয়েন্ট পাওয়া যায়। ভুল উত্তরে $value3 সেকেন্ড কাটা যায়। টানা 5টি সঠিক উত্তর দিলে +20 বোনাস পাবেন।';
  }

  @override
  String get gameUiRoundTimer => 'রাউন্ডের টাইমার';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 সেকেন্ড';
  }

  @override
  String get gameUiStart => 'শুরু করুন';

  @override
  String get gameUiTrue => 'সত্য';

  @override
  String get gameUiFalse => 'মিথ্যা';

  @override
  String get gameUiCommandMatch26b0e70 => 'কমান্ড মেলান 🔗';

  @override
  String get gameUiAllMatched => 'সব মিলেছে!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ভুল: $value1\nআপনি $value2 পয়েন্ট অর্জন করেছেন!\n\nনতুন কমান্ডের জন্য আগামীকাল আবার আসুন!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'রাউন্ড $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'একটি কমান্ডে ট্যাপ করুন, তারপর তার অর্থে ট্যাপ করুন।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'এবার মিলে যাওয়া অর্থে ট্যাপ করুন।';

  @override
  String get gameUiPortMaster9c730cf => 'পোর্ট মাস্টার 🔌';

  @override
  String get gameUiPortMastera796b69 => 'পোর্ট মাস্টার!';

  @override
  String get gameUiOutOfLives => 'প্রাণ শেষ';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'সঠিক উত্তর: $value1\nআপনি $value2 পয়েন্ট অর্জন করেছেন!\n\nআরেক রাউন্ডের জন্য আগামীকাল আবার আসুন!';
  }

  @override
  String get gameUiYouEarned10Points => 'আপনি 10 পয়েন্ট অর্জন করেছেন!';

  @override
  String get gameUiYouWin => 'আপনি জিতেছেন!';

  @override
  String gameUiWins(String value1) {
    return '$value1 জিতেছে!';
  }

  @override
  String get gameUiXWins => 'X জিতেছে!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) জিতেছে!';
  }

  @override
  String get gameUiComputerWins => 'কম্পিউটার জিতেছে';

  @override
  String get gameUiOWins => 'O জিতেছে!';

  @override
  String get gameUiPlayer2OWins => 'খেলোয়াড় 2 (O) জিতেছে!';

  @override
  String get gameUiItSADraw => 'খেলা ড্র হয়েছে';

  @override
  String get gameUiYourTurn => 'আপনার পালা';

  @override
  String gameUiSTurn(String value1) {
    return '$value1-এর পালা';
  }

  @override
  String get gameUiComputerIsThinking => 'কম্পিউটার ভাবছে';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'খেলোয়াড় $value1-এর চাল';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1-এর চাল';
  }

  @override
  String get gameUiPlayer2ToMove => 'খেলোয়াড় 2-এর চাল';

  @override
  String get gameUiNewRound => 'নতুন রাউন্ড';

  @override
  String get gameUiVsComputer => 'কম্পিউটারের বিপক্ষে';

  @override
  String get gameUi2Players => '2 জন খেলোয়াড়';

  @override
  String get gameUiYou => 'আপনি';

  @override
  String get gameUiDraws => 'ড্র';

  @override
  String get gameUiPlayer2 => 'খেলোয়াড় 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ঘর $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'আবার খেলুন';

  @override
  String get gameUiConnectFourWin20Points => 'কানেক্ট ফোর জয়: 20 পয়েন্ট!';

  @override
  String get gameUiBotWins => 'বট জিতেছে!';

  @override
  String get gameUiRed => 'লাল';

  @override
  String get gameUiYellow => 'হলুদ';

  @override
  String get gameUiBoardFullDraw => 'বোর্ড পূর্ণ — ড্র';

  @override
  String get gameUiBotIsThinking => 'বট ভাবছে';

  @override
  String get gameUiBotTurn => 'বটের পালা';

  @override
  String get gameUiNewGame => 'নতুন খেলা';

  @override
  String get gameUiVsBot => 'বটের বিপক্ষে';

  @override
  String get gameUi2Player => '2 খেলোয়াড়';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'বটের বিপক্ষে খেলুন · চাকতি ফেলতে একটি কলামে ট্যাপ করুন';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'দুই খেলোয়াড় · চাকতি ফেলতে একটি কলামে ট্যাপ করুন';

  @override
  String gameUiColumn(String value1) {
    return 'কলাম $value1';
  }

  @override
  String get gameUiYouRed => 'আপনি · লাল';

  @override
  String get gameUiRedPlayer1 => 'লাল · খেলোয়াড় 1';

  @override
  String get gameUiBotYellow => 'বট · হলুদ';

  @override
  String get gameUiYellowPlayer2 => 'হলুদ · খেলোয়াড় 2';

  @override
  String get gameUiLudoMatchStats => 'লুডো ম্যাচের পরিসংখ্যান';

  @override
  String get gameUiNoCompletedMatchesYet => 'এখনও কোনো সম্পন্ন ম্যাচ নেই।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'খেলেছেন $value1  ·  জিতেছেন $value2  ·  হেরেছেন $value3';
  }

  @override
  String get gameUiClose => 'বন্ধ করুন';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'লুডো চ্যাম্পিয়ন! আপনি 50 পয়েন্ট অর্জন করেছেন।';

  @override
  String get gameUiNewLudoGame => 'নতুন লুডো খেলা';

  @override
  String get gameUiBotOpponents => 'বট প্রতিপক্ষ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'নতুন ম্যাচ শুরু করলে আপনার সংরক্ষিত খেলা প্রতিস্থাপিত হবে।';

  @override
  String get gameUiCancel => 'বাতিল করুন';

  @override
  String get gameUiStartGame => 'খেলা শুরু করুন';

  @override
  String get gameUiPlayerColours => 'খেলোয়াড়ের রং';

  @override
  String get gameUiApply => 'প্রয়োগ করুন';

  @override
  String get gameUiMatchStats => 'ম্যাচের পরিসংখ্যান';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 চেকমেটে জিতেছে';
  }

  @override
  String get gameUiBlack => 'কালো';

  @override
  String get gameUiWhite => 'সাদা';

  @override
  String get gameUiComputerWinsByCheckmate => 'কম্পিউটার চেকমেটে জিতেছে';

  @override
  String get gameUiYouWinByCheckmate => 'আপনি চেকমেটে জিতেছেন';

  @override
  String get gameUiDrawByStalemate => 'স্টেলমেটে ড্র';

  @override
  String get gameUiDraw => 'ড্র';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · চেক';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'চেকমেট! আপনি 50 পয়েন্ট অর্জন করেছেন।';

  @override
  String get gameUiStartANewGame => 'নতুন খেলা শুরু করবেন?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'প্লেয়ার মোড পরিবর্তন করলে সংরক্ষিত ম্যাচ প্রতিস্থাপিত হবে।';

  @override
  String get gameUiComputer => 'কম্পিউটার';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · সাদা / প্লেয়ার 2 · কালো';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'আপনি সাদা · কম্পিউটার কালো';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (সাদা) · কম্পিউটার (কালো)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'আপনি কালো · কম্পিউটার সাদা';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (কালো) · কম্পিউটার (সাদা)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 প্রথমে ছক্কা চালবে';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 আবার ছক্কা চালবে';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1-এর ছক্কা চালার পালা';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'সাপ ও মইয়ে জয়: 100 পয়েন্ট!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'প্লেয়ার পরিবর্তন করলে সংরক্ষিত খেলা প্রতিস্থাপিত হবে।';

  @override
  String get gameUiStartANewLevel => 'নতুন লেভেল শুরু করবেন?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'লেভেল পরিবর্তন করলে সংরক্ষিত খেলা প্রতিস্থাপিত হবে।';

  @override
  String get gameUiChangeLevel => 'লেভেল পরিবর্তন করুন';

  @override
  String get gameUiPlayers => 'প্লেয়ার';

  @override
  String get gameUiPlayAgainstBot => 'বটের বিরুদ্ধে খেলুন';

  @override
  String get gameUi3Players => '3 জন প্লেয়ার';

  @override
  String get gameUi4Players => '4 জন প্লেয়ার';

  @override
  String get gameUiLevel1709305 => 'লেভেল';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'লেভেল $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 জন প্লেয়ার · লেভেল $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · ছক্কা চালুন';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 $value2-এ';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'প্রশ্ন লোড করা যায়নি: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'সঠিক উত্তর!';

  @override
  String get gameUiWrongAnswer => 'ভুল উত্তর';

  @override
  String get gameUiYouClaimedYourReward => 'আপনি আপনার পুরস্কার দাবি করেছেন!';

  @override
  String get gameUiAddedToYourTotalPoints => 'আপনার মোট পয়েন্টে যোগ করা হয়েছে।';

  @override
  String get gameUiTheCorrectAnswerWas => 'সঠিক উত্তর ছিল:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 পয়েন্টের পুরস্কার হারিয়ে গেছে।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'আপনার বিদ্যমান পয়েন্ট কাটা হয়নি।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'আগামীকাল আবার এসে চেষ্টা করুন।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'প্রশ্ন লোড করা যায়নি।';

  @override
  String get gameUiYourReward677fa6e => 'আপনার পুরস্কার';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 পয়েন্ট';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'দাবি করতে সঠিক উত্তর দিন!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'আরেক রাউন্ডের জন্য আগামীকাল আবার আসুন।';

  @override
  String get gameUiGreen => 'সবুজ';

  @override
  String get gameUiBlue => 'নীল';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ভাবছে';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: একটি গুটি বেছে নিন';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ছক্কা চালুন';
  }

  @override
  String gameUiDice(String value1) {
    return 'ছক্কা $value1';
  }

  @override
  String get gameUiRollDice => 'ছক্কা চালুন';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 গুটি $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'খেলোয়াড় $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'বট $value1';
  }

  @override
  String get gameUiBot => 'বট';

  @override
  String get gameUiHintInsufficientPoints => 'ইঙ্গিত ব্যবহার করতে আপনার 20 পয়েন্ট দরকার।';

  @override
  String get gameUiHintPurchaseFailed => 'ইঙ্গিত কেনা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get gameUiChessKing => 'রাজা';

  @override
  String get gameUiChessQueen => 'রানি';

  @override
  String get gameUiChessRook => 'নৌকা';

  @override
  String get gameUiChessBishop => 'গজ';

  @override
  String get gameUiChessKnight => 'ঘোড়া';

  @override
  String get gameUiChessPawn => 'বোড়ে';

  @override
  String get gameUiChessEmpty => 'খালি';

  @override
  String get gameSceneLampAndFlowers => 'বাতি ও ফুল';

  @override
  String get gameSceneGardenFriends => 'বাগানের বন্ধুরা';

  @override
  String get gameSceneUnderwaterExplorers => 'জলের নিচের অভিযাত্রীরা';

  @override
  String get gameSceneOceanOrca => 'সাগরের অর্কা';

  @override
  String get gameSceneFoxInTheMeadow => 'তৃণভূমিতে শিয়াল';

  @override
  String get gameSceneYellowSubmarine => 'হলুদ সাবমেরিন';

  @override
  String get gameSceneTurkeyInTheClearing => 'বনের ফাঁকা জায়গায় টার্কি';

  @override
  String get gameSceneSafariWateringHole => 'সাফারির জলাশয়';

  @override
  String get gameSceneJungleCompanions => 'জঙ্গলের সঙ্গীরা';

  @override
  String get gameSceneGoldenPuppyGarden => 'সোনালি কুকুরছানার বাগান';

  @override
  String get gameSceneSeaTurtleReef => 'সামুদ্রিক কচ্ছপের প্রবাল প্রাচীর';

  @override
  String get gameSceneCoralReefFriends => 'প্রবাল প্রাচীরের বন্ধুরা';

  @override
  String get gameSceneSharedClownfish => 'ভাগ করা ক্লাউনফিশ';

  @override
  String get gameSceneLittleDinosaur => 'ছোট ডাইনোসর';

  @override
  String get gameSceneSafariCompanions => 'সাফারির সঙ্গীরা';

  @override
  String get gameSceneSwirlingFlowers => 'ঘূর্ণায়মান ফুল';

  @override
  String get gameSceneGardenKitten => 'বাগানের বিড়ালছানা';

  @override
  String get gameSceneBlueOcean => 'নীল সাগর';

  @override
  String get gameSceneCastlePrincess => 'দুর্গের রাজকন্যা';

  @override
  String get gameSceneRedCar => 'লাল গাড়ি';

  @override
  String get gameSceneGardenPuppy => 'বাগানের কুকুরছানা';

  @override
  String get gameSceneSpaceExplorer => 'মহাকাশ অভিযাত্রী';

  @override
  String get gameSceneEnchantedReadingForest => 'মায়াবী পাঠের বন';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps ইনফিনিটি চক্র';

  @override
  String get gameSceneAnsible => 'অ্যানসিবল';

  @override
  String get gameSceneAws => 'এডব্লিউএস (AWS)';

  @override
  String get gameSceneAzure => 'অ্যাজুর';

  @override
  String get gameSceneBashScripting => 'ব্যাশ স্ক্রিপ্টিং';

  @override
  String get gameSceneDocker => 'ডকার';

  @override
  String get gameSceneGcp => 'জিসিপি (GCP)';

  @override
  String get gameSceneGit => 'গিট';

  @override
  String get gameSceneHybridCloud => 'হাইব্রিড ক্লাউড';

  @override
  String get gameSceneIbmCloud => 'আইবিএম ক্লাউড';

  @override
  String get gameSceneJavascript => 'জাভাস্ক্রিপ্ট';

  @override
  String get gameSceneJenkins => 'জেনকিন্স';

  @override
  String get gameSceneKubernetes => 'কুবারনেটিস';

  @override
  String get gameSceneLinux => 'লিনাক্স';

  @override
  String get gameSceneMultiCloud => 'মাল্টি ক্লাউড';

  @override
  String get gameSceneNetworking => 'নেটওয়ার্কিং';

  @override
  String get gameSceneOracleCloud => 'অরাকল ক্লাউড';

  @override
  String get gameScenePerl => 'পার্ল';

  @override
  String get gameScenePowershell => 'পাওয়ারশেল';

  @override
  String get gameScenePython => 'পাইথন';

  @override
  String get gameSceneRuby => 'রুবি';

  @override
  String get gameSceneTerraform => 'টেরাফর্ম';

  @override
  String get gameSceneWinterFestivalFair => 'শীতকালীন উৎসবের মেলা';

  @override
  String get gameSceneArmoredHeroCloseUp => 'বর্মধারী বীরের ক্লোজ-আপ';

  @override
  String get gameSceneArmoredHeroInCrimson => 'লাল রঙের বর্মধারী বীর';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'গাঢ় চাঁপা ফুলের থোকা';

  @override
  String get gameSceneMangroveBoardwalk => 'ম্যানগ্রোভের কাঠের পথ';

  @override
  String get gameSceneTropicalPalmReflections => 'ক্রান্তীয় পাম গাছের প্রতিবিম্ব';

  @override
  String get gameSceneMaskedFigureInShadow => 'ছায়ায় মুখোশধারী অবয়ব';

  @override
  String get gameSceneElectricCompanionAtSunset => 'সূর্যাস্তে বৈদ্যুতিক সঙ্গী';

  @override
  String get gameSceneTrainerAndFireDragon => 'প্রশিক্ষক ও অগ্নি ড্রাগন';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'রত্নখচিত কুস্তির মুখোশ';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'লাল তুলির আঁচড়ে কুস্তিগির';

  @override
  String get gameSceneWrestlingChampionSalute => 'কুস্তি চ্যাম্পিয়নের অভিবাদন';

  @override
  String get gameSceneMorningAtTheBakery => 'বেকারিতে সকাল';

  @override
  String get gameSceneGreenhousePottingBench => 'গ্রিনহাউসের চারা লাগানোর বেঞ্চ';

  @override
  String get gameSceneHarborFishingBoat => 'বন্দরের মাছ ধরার নৌকা';

  @override
  String get gameSceneAtticObservatory => 'চিলেকোঠার মানমন্দির';

  @override
  String get gameSceneToyMakerSWorkshop => 'খেলনা নির্মাতার কর্মশালা';

  @override
  String get gameSceneWoodlandCampsite => 'বনের ক্যাম্পসাইট';

  @override
  String get gameSceneAfternoonMusicRoom => 'বিকেলের সংগীতকক্ষ';

  @override
  String get gameSceneSeasideIceCreamStand => 'সমুদ্রতীরের আইসক্রিমের স্টল';

  @override
  String get gameSceneLibraryReadingNook => 'গ্রন্থাগারের পড়ার কোণ';

  @override
  String get gameSceneSewingStudio => 'সেলাইয়ের স্টুডিও';

  @override
  String get gameSceneFruitMarket => 'ফলের বাজার';

  @override
  String get gameSceneKoiCourtyard => 'কই মাছের উঠান';

  @override
  String get gameSceneArtistSAtelier => 'শিল্পীর স্টুডিও';

  @override
  String get gameSceneMountainRailway => 'পাহাড়ি রেলপথ';

  @override
  String get gameSceneCountryKitchen => 'গ্রামীণ রান্নাঘর';

  @override
  String get gameScenePotteryWorkshop => 'মৃৎশিল্পের কর্মশালা';

  @override
  String get gameSceneBeachPicnic => 'সৈকতে পিকনিক';

  @override
  String get gameSceneFlowerShop => 'ফুলের দোকান';

  @override
  String get gameSceneClockmakerSWorkshop => 'ঘড়ি নির্মাতার কর্মশালা';

  @override
  String get gameSceneRainyCafeTerrace => 'বৃষ্টিভেজা ক্যাফের চত্বর';

  @override
  String get gameSceneCastleHerbGarden => 'দুর্গের ভেষজ বাগান';

  @override
  String get gameSceneClassroomArtCorner => 'শ্রেণিকক্ষের শিল্পকোণ';

  @override
  String get gameSceneAquariumShop => 'অ্যাকোয়ারিয়ামের দোকান';

  @override
  String get gameSceneAutumnLeafCollection => 'শরতের পাতার সংগ্রহ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'চাঁদের নিচে একাকী গাছ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ডালে শরতের ফুল';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'সবুজ পাতার মাঝে শিয়াল';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'শাপলায় ঢাকা হ্রদে ডিঙি নৌকা';

  @override
  String get gameSceneDewDropsOnALeaf => 'পাতার উপর শিশিরবিন্দু';

  @override
  String get gameSceneStagInATurquoiseLake => 'ফিরোজা হ্রদে পুরুষ হরিণ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'কমলা চাঁদের নিচে সাইকেল';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'উপত্যকার উপরে সাদা বাঘ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'নীল জলে দুটি গাছ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'বিশ্বস্ত কুকুরের পাশে মাছ ধরা';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'পাহাড়ি হ্রদের ধারে লিলি ফুল';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'গোলাপি নদীতীরে হরিণ';

  @override
  String get gameSceneTropicalHutAtSunset => 'সূর্যাস্তের সময় ক্রান্তীয় কুটির';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'আলপাইন উপত্যকার দিকে তাকিয়ে থাকা শিয়াল';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'মায়াবী বনের ভেতর দিয়ে সূর্যাস্ত';

  @override
  String get learningControlTitle => 'DevOps শিখুন';

  @override
  String get learningControlAllCategories => 'সব বিভাগ';

  @override
  String get learningControlSearchCards => 'কার্ড খুঁজুন';

  @override
  String get learningControlClearSearch => 'অনুসন্ধান মুছুন';

  @override
  String get learningControlCategory => 'বিভাগ';

  @override
  String get learningControlShowAll => 'সব কার্ড দেখান';

  @override
  String learningControlShowSaved(int count) {
    return 'সংরক্ষিত কার্ড দেখান ($count)';
  }

  @override
  String get learningControlShuffleOff => 'শাফল বন্ধ করুন';

  @override
  String get learningControlShuffleOn => 'কার্ড শাফল করুন';

  @override
  String get learningControlAutoOff => 'অটো সোয়াপ বন্ধ করুন';

  @override
  String get learningControlAutoOn => 'প্রতি ১০ সেকেন্ডে অটো সোয়াপ';

  @override
  String get learningControlNoSaved => 'এখনও কোনো কার্ড সংরক্ষিত হয়নি';

  @override
  String get learningControlNoMatches => 'মিলে যাওয়া কোনো কার্ড নেই';

  @override
  String get learningControlResetFilters => 'ফিল্টার রিসেট করুন';

  @override
  String get learningControlPrevious => 'আগেরটি';

  @override
  String get learningControlNext => 'পরেরটি';

  @override
  String get learningControlProgress => 'অগ্রগতি';

  @override
  String get learningControlRemoveSaved => 'সংরক্ষিত থেকে সরান';

  @override
  String get learningControlSaveCard => 'কার্ড সংরক্ষণ করুন';

  @override
  String get learningControlExample => 'উদাহরণ';

  @override
  String get learningControlCopyExample => 'উদাহরণ কপি করুন';

  @override
  String get learningControlExampleCopied => 'উদাহরণ কপি হয়েছে';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'লেভেল $value1 সম্পন্ন হয়েছে';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'লেভেল $value1 খেলুন';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'আনলক করতে লেভেল $value1 সম্পন্ন করুন';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'দৈনিক লগইন বোনাস';

  @override
  String get sharedDialogThanksForComingBack => 'ফিরে আসার জন্য ধন্যবাদ!';

  @override
  String get sharedDialogDailyRewardAdded => 'আপনার দৈনিক পুরস্কার আপনার মোট পয়েন্টে যোগ করা হয়েছে।';

  @override
  String get sharedDialogAwesome => 'দারুণ!';

  @override
  String get accountWelcomeGuest => 'অতিথি';

  @override
  String get accountWelcomeGuestUser => 'অতিথি ব্যবহারকারী';

  @override
  String get accountWelcomeUser => 'ব্যবহারকারী';

  @override
  String get accountWelcomePlayingAsGuest => 'অতিথি হিসেবে খেলছেন';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google অ্যাকাউন্ট সংযুক্ত করুন';

  @override
  String get accountWelcomeGoogleConnected => 'Google অ্যাকাউন্ট সফলভাবে সংযুক্ত হয়েছে! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'সাইন-ইন বাতিল করা হয়েছে।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'সংযুক্ত করতে ব্যর্থ হয়েছে: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'সাইন আউট';

  @override
  String get accountWelcomeSignOutTitle => 'সাইন আউট করবেন?';

  @override
  String get accountWelcomeSignOutMessage => 'আপনি কি নিশ্চিত যে আপনি সাইন আউট করতে চান? আপনার সংরক্ষিত অগ্রগতি অ্যাক্সেস করতে আপনাকে আবার সাইন ইন করতে হবে।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'সাইন আউট ব্যর্থ হয়েছে: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ অ্যাপ ডেটা রিসেট করবেন?';

  @override
  String get accountWelcomeResetAppMessage => 'এটি আপনার সমস্ত পয়েন্ট, স্ট্রিক, গেম ইতিহাস এবং সেটিংস স্থায়ীভাবে মুছে ফেলবে। আপনাকে সাইন আউট করা হবে এবং স্টার্ট স্ক্রিনে ফিরিয়ে নেওয়া হবে। এটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get accountWelcomeResetEverything => 'সবকিছু রিসেট করুন';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'রিসেট ব্যর্থ হয়েছে: $value1';
  }

  @override
  String get accountWelcomeCancel => 'বাতিল করুন';

  @override
  String get accountWelcomeResetAppData => 'অ্যাপ ডেটা রিসেট করুন';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'সমস্ত পয়েন্ট, স্ট্রিক এবং সেটিংস মুছে ফেলুন';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz অ্যাপ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'অনুবাদ এখনও উপলব্ধ নয়';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google দিয়ে চালিয়ে যান';

  @override
  String get accountWelcomeSigningIn => 'সাইন ইন করা হচ্ছে...';

  @override
  String get accountWelcomeOr => 'অথবা';

  @override
  String get accountWelcomeContinueAsGuest => 'অতিথি হিসেবে চালিয়ে যান';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'আপনি পরে আপনার প্রোফাইল থেকে সাইন ইন করতে পারেন।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'আপনি অতিথি হিসেবে শুরু করতে পারেন এবং পরে সাইন ইন করতে পারেন।';

  @override
  String get accountWelcomeGreetingGuest => 'স্বাগতম';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'স্বাগতম, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google সাইন-ইন সম্পন্ন হয়েছে, কিন্তু কোনো ব্যবহারকারী অ্যাকাউন্ট পাওয়া যায়নি।';

  @override
  String get accountWelcomeErrorEmailExists => 'এই ইমেলটিতে ইতিমধ্যে অন্য একটি সাইন-ইন পদ্ধতি ব্যবহার করে অ্যাকাউন্ট রয়েছে।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'এই Google অ্যাকাউন্টটি ইতিমধ্যে অন্য একটি অ্যাকাউন্টের সাথে লিঙ্ক করা আছে।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google প্রমাণীকরণ শংসাপত্রটি অবৈধ বা মেয়াদোত্তীর্ণ।';

  @override
  String get accountWelcomeErrorUserDisabled => 'এই অ্যাকাউন্টটি নিষ্ক্রিয় করা হয়েছে।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google সাইন-ইন বর্তমানে সক্রিয় নেই।';

  @override
  String get accountWelcomeErrorNetwork => 'নেটওয়ার্ক ত্রুটি। অনুগ্রহ করে আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'অনেকবার সাইন-ইন করার চেষ্টা করা হয়েছে। অনুগ্রহ করে অপেক্ষা করুন এবং আবার চেষ্টা করুন।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'অতিরিক্ত কোনো ত্রুটির তথ্য নেই।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google সাইন-ইন ব্যর্থ হয়েছে।\n\nকোড: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google সাইন-ইন ত্রুটি:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'অতিথি হিসেবে চালিয়ে যাওয়া যাচ্ছে না। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google সাইন-ইন শীঘ্রই উপলব্ধ হবে।';

  @override
  String get accountWelcomeLoginTagline => 'শিখুন • অনুশীলন করুন • প্রতিযোগিতা করুন • অর্জন করুন';

  @override
  String get accountWelcomeCountryRegion => 'দেশ / অঞ্চল';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'দেশ / অঞ্চল: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'দেশ খুঁজুন';

  @override
  String get accountWelcomeCountryNotSelected => 'নির্বাচিত নয়';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'কেন DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ অনুশীলন প্রশ্ন';

  @override
  String get accountWelcomeFeatureLanguages => 'বহু-ভাষা সমর্থন';

  @override
  String get accountWelcomeFeatureStreaks => 'স্ট্রিক এবং লিডারবোর্ড';

  @override
  String get accountWelcomeFeatureGames => 'গেম এবং চ্যালেঞ্জ';

  @override
  String get accountWelcomeFeatureCloud => 'ক্লাউড এবং DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'বোনাস এবং পুরস্কার';

  @override
  String get accountWelcomePracticeOnTheGo => 'চলার পথে অনুশীলন করুন';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android অ্যাপ ইনস্টল করুন এবং যেকোনো জায়গায় অফলাইনে শিখুন।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play থেকে পান';

  @override
  String achLocStreakTitle(String days) {
    return '$days দিনের ধারা';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days দিনের ধারা বজায় রাখুন।';
  }

  @override
  String get achLocYearStreakTitle => '১ বছরের ধারা';

  @override
  String get achLocFirstQuizTitle => 'প্রথম কুইজ';

  @override
  String get achLocFirstQuizDescription => 'আপনার প্রথম কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocQuiz10Title => 'কুইজ এক্সপ্লোরার';

  @override
  String get achLocQuiz10Description => '১০টি কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocPoints1000Title => '১০০০ পয়েন্ট';

  @override
  String get achLocPoints1000Description => 'কুইজে মোট ১০০০ পয়েন্ট অর্জন করুন।';

  @override
  String get achLocPerfectScoreTitle => 'নিখুঁত স্কোর';

  @override
  String get achLocPerfectScoreDescription => 'যেকোনো কুইজে ১০০% স্কোর করুন।';

  @override
  String get achLocQuiz25Title => 'কুইজ অনুরাগী';

  @override
  String get achLocQuiz25Description => '২৫টি কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocQuiz50Title => 'কুইজ মাস্টার';

  @override
  String get achLocQuiz50Description => '৫০টি কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocQuiz100Title => 'সেঞ্চুরি ক্লাব';

  @override
  String get achLocQuiz100Description => '১০০টি কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocQuiz250Title => 'কুইজ লেজেন্ড';

  @override
  String get achLocQuiz250Description => '২৫০টি কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocPoints5000Title => '৫,০০০ পয়েন্ট';

  @override
  String get achLocPoints5000Description => 'মোট ৫,০০০ পয়েন্ট অর্জন করুন।';

  @override
  String get achLocPoints10000Title => '১০,০০০ পয়েন্ট';

  @override
  String get achLocPoints10000Description => 'মোট ১০,০০০ পয়েন্ট অর্জন করুন।';

  @override
  String get achLocPoints50000Title => '৫০,০০০ পয়েন্ট';

  @override
  String get achLocPoints50000Description => 'মোট ৫০,০০০ পয়েন্ট অর্জন করুন।';

  @override
  String get achLocPoints100000Title => '১,০০,০০০ পয়েন্ট';

  @override
  String get achLocPoints100000Description => 'মোট ১,০০,০০০ পয়েন্ট অর্জন করুন।';

  @override
  String get achLocDaily1Title => 'দৈনিক সূচনা';

  @override
  String get achLocDaily1Description => 'আপনার প্রথম দৈনিক কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocDaily7Title => 'দৈনিক অভ্যাস';

  @override
  String get achLocDaily7Description => '৭টি দৈনিক কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocDaily30Title => 'দৈনিক চ্যাম্পিয়ন';

  @override
  String get achLocDaily30Description => '৩০টি দৈনিক কুইজ সম্পূর্ণ করুন।';

  @override
  String get achLocSets5Title => 'সেট সূচনাকারী';

  @override
  String get achLocSets5Description => '৫টি কুইজ সেট শেষ করুন।';

  @override
  String get achLocSets25Title => 'সেট সংগ্রাহক';

  @override
  String get achLocSets25Description => '২৫টি কুইজ সেট শেষ করুন।';

  @override
  String get achLocSets50Title => 'সেট মাস্টার';

  @override
  String get achLocSets50Description => '৫০টি কুইজ সেট শেষ করুন।';

  @override
  String get achLocSets100Title => 'সেট লেজেন্ড';

  @override
  String get achLocSets100Description => '১০০টি কুইজ সেট শেষ করুন।';

  @override
  String get achLocCert1Title => 'প্রথম সার্টিফিকেট';

  @override
  String get achLocCert1Description => 'আপনার প্রথম ক্যাটাগরি সার্টিফিকেট অর্জন করুন।';

  @override
  String get achLocCert5Title => 'সার্টিফাইড প্রো';

  @override
  String get achLocCert5Description => '৫টি ক্যাটাগরি সার্টিফিকেট অর্জন করুন।';

  @override
  String get achLocCert21Title => 'সম্পূর্ণ সার্টিফাইড';

  @override
  String get achLocCert21Description => 'সবগুলো ২১টি ক্যাটাগরিতে সার্টিফিকেট অর্জন করুন।';

  @override
  String get achLocThemeFreeValentinesWeek => 'প্রতি বছর ৭-১৪ ফেব্রুয়ারি বিনামূল্যে';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'প্রতি বছর ৮-১৫ মার্চ বিনামূল্যে';

  @override
  String get achLocThemeLight => 'লাইট';

  @override
  String get achLocThemeDark => 'ডার্ক';

  @override
  String get achLocThemeSakura => 'সাকুরা';

  @override
  String get achLocThemeSunset => 'সানসেট';

  @override
  String get achLocThemeCoffee => 'কফি';

  @override
  String get achLocThemeTea => 'চা';

  @override
  String get achLocThemeOcean => 'ওশান';

  @override
  String get achLocThemeSolarFlare => 'সোলার ফ্লেয়ার';

  @override
  String get achLocThemeForest => 'ফরেস্ট';

  @override
  String get achLocThemeAurora => 'অরোরা';

  @override
  String get achLocThemeMatrix => 'ম্যাট্রিক্স';

  @override
  String get achLocThemeCyberPurple => 'সাইবার পার্পল';

  @override
  String get achLocThemeInferno => 'ইনফার্নো';

  @override
  String get achLocThemeMidnight => 'মধ্যরাত';

  @override
  String get achLocThemeDarkGrey => 'গাঢ় ধূসর';

  @override
  String get achLocThemeBarbee => 'বার্বি';

  @override
  String get achLocThemeValentineDay => 'ভ্যালেন্টাইন ডে';

  @override
  String get achLocThemeDqSpecial => 'ডিকিউ স্পেশাল';

  @override
  String get achLocThemeArmy => 'আর্মি';

  @override
  String get achLocThemeSpiderMan => 'স্পাইডার-ম্যান';

  @override
  String get achLocThemeKrrish => 'কৃষ';

  @override
  String get achLocThemeIronMan => 'আয়রন ম্যান';

  @override
  String get achLocThemeCaptainAmerica => 'ক্যাপ্টেন আমেরিকা';

  @override
  String get achLocThemeThor => 'থর';

  @override
  String get achLocThemeHulk => 'হাল্ক';

  @override
  String get achLocThemeBlackWidow => 'ব্ল্যাক উইডো';

  @override
  String get achLocThemeHawkeye => 'হকআই';

  @override
  String get achLocThemeBlackPanther => 'ব্ল্যাক প্যান্থার';

  @override
  String get achLocThemeScarletWitch => 'স্কারলেট উইচ';

  @override
  String get achLocThemeVision => 'ভিশন';

  @override
  String get achLocThemeAntMan => 'অ্যান্ট-ম্যান';

  @override
  String get achLocThemeCaptainMarvel => 'ক্যাপ্টেন মার্ভেল';

  @override
  String get achLocThemeDoctorStrange => 'ডক্টর স্ট্রেঞ্জ';

  @override
  String get achLocThemeAvengers => 'অ্যাভেঞ্জার্স';

  @override
  String get achLocThemeBatman => 'ব্যাটম্যান';

  @override
  String get achLocThemeSuperman => 'সুপারম্যান';

  @override
  String get achLocThemeWonderWoman => 'ওয়ান্ডার ওম্যান';

  @override
  String get achLocThemeFlash => 'ফ্ল্যাশ';

  @override
  String get achLocThemeAquaman => 'অ্যাকোয়াম্যান';

  @override
  String get achLocThemeGreenLantern => 'গ্রিন ল্যান্টার্ন';

  @override
  String get achLocThemeCyborg => 'সাইবর্গ';

  @override
  String get achLocThemeSupergirl => 'সুপারগার্ল';

  @override
  String get achLocThemeDc => 'ডিসি হিরোজ';

  @override
  String get achLocThemeRainbow => 'রামধনু';

  @override
  String get achLocThemeDiamond => 'হীরা';

  @override
  String get achLocThemeLegendary => 'কিংবদন্তি';

  @override
  String get gameHintCmd001LsLa => 'বিস্তারিত তথ্যসহ সব ফাইলের তালিকা দেখান';

  @override
  String get gameHintCmd002Grep => 'প্যাটার্ন ব্যবহার করে টেক্সট খুঁজুন';

  @override
  String get gameHintCmd003Chmod => 'ফাইলের অনুমতি পরিবর্তন করুন';

  @override
  String get gameHintCmd004DfH => 'ডিস্কের ফাঁকা জায়গা দেখান';

  @override
  String get gameHintCmd005TailF => 'ক্রমবর্ধমান লগ ফাইল অনুসরণ করুন';

  @override
  String get gameHintCmd006PsAux => 'চলমান প্রসেসের তালিকা দেখান';

  @override
  String get gameHintCmd007GitClone => 'রিমোট রিপোজিটরির কপি নিন';

  @override
  String get gameHintCmd008GitStash => 'কমিট না করা পরিবর্তন সরিয়ে রাখুন';

  @override
  String get gameHintCmd009GitRebase => 'নতুন বেসের উপর কমিটগুলো পুনরায় প্রয়োগ করুন';

  @override
  String get gameHintCmd010GitBlame => 'প্রতিটি লাইন কে পরিবর্তন করেছে তা দেখান';

  @override
  String get gameHintCmd011DockerPs => 'চলমান কনটেইনারের তালিকা দেখান';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile থেকে ইমেজ তৈরি করুন';

  @override
  String get gameHintCmd013DockerLogs => 'কনটেইনারের আউটপুট দেখান';

  @override
  String get gameHintCmd014DockerExec => 'কনটেইনারের ভেতরে কমান্ড চালান';

  @override
  String get gameHintCmd015KubectlGetPods => 'নেমস্পেসের পডগুলোর তালিকা দেখান';

  @override
  String get gameHintCmd016KubectlApply => 'ফাইল থেকে রিসোর্স তৈরি করুন';

  @override
  String get gameHintCmd017KubectlDescribe => 'রিসোর্সের বিস্তারিত তথ্য দেখান';

  @override
  String get gameHintCmd018KubectlScale => 'রেপ্লিকার সংখ্যা পরিবর্তন করুন';

  @override
  String get gameHintCmd019TerraformInit => 'প্রোভাইডার ডাউনলোড করে সেটআপ করুন';

  @override
  String get gameHintCmd020TerraformPlan => 'অবকাঠামোর পরিবর্তনের পূর্বরূপ দেখুন';

  @override
  String get gameHintCmd021TerraformApply => 'অবকাঠামো তৈরি বা হালনাগাদ করুন';

  @override
  String get gameHintCmd022TerraformDestroy => 'পরিচালিত অবকাঠামো সরিয়ে ফেলুন';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'অটোমেশন প্লেবুক চালান';

  @override
  String get gameHintCmd024Ping => 'ICMP দিয়ে পৌঁছানো যায় কি না পরীক্ষা করুন';

  @override
  String get gameHintCmd025Traceroute => 'হোস্ট পর্যন্ত পথ দেখান';

  @override
  String get gameHintCmd026Curl => 'URL থেকে ডেটা স্থানান্তর করুন';

  @override
  String get gameHintCmd027Ssh => 'নিরাপদে রিমোট মেশিনে লগইন করুন';

  @override
  String get gameHintCmd028CrontabE => 'নির্ধারিত কাজ সম্পাদনা করুন';

  @override
  String get gameHintCmd029SystemctlStatus => 'সার্ভিসের অবস্থা পরীক্ষা করুন';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes-এ চার্ট ডিপ্লয় করুন';

  @override
  String get gameHintWord001Git => 'সোর্স কোডের পরিবর্তন ট্র্যাক করে।';

  @override
  String get gameHintWord002Aws => 'Amazon-এর ক্লাউড প্ল্যাটফর্ম।';

  @override
  String get gameHintWord003Api => 'একটি চুক্তি যা সফটওয়্যার সিস্টেমগুলোকে পরস্পরের সঙ্গে যোগাযোগ করতে দেয়।';

  @override
  String get gameHintWord004Dns => 'ডোমেইন নামকে IP ঠিকানায় রূপান্তর করে।';

  @override
  String get gameHintWord005Cli => 'কমান্ড চালানোর জন্য টেক্সটভিত্তিক ইন্টারফেস।';

  @override
  String get gameHintWord006Cpu => 'যে প্রসেসর নির্দেশনা কার্যকর করে।';

  @override
  String get gameHintWord007Ram => 'চলমান প্রোগ্রামের ব্যবহৃত অস্থায়ী মেমরি।';

  @override
  String get gameHintWord008Ssh => 'রিমোট শেল অ্যাক্সেসের নিরাপদ প্রটোকল।';

  @override
  String get gameHintWord009Yaml => 'মানুষের পাঠযোগ্য ডেটা সিরিয়ালাইজেশন ফরম্যাট।';

  @override
  String get gameHintWord010Linux => 'ওপেন-সোর্স অপারেটিং সিস্টেম কার্নেল ও তার পরিবার।';

  @override
  String get gameHintWord011Bash => 'জনপ্রিয় Unix কমান্ড শেল।';

  @override
  String get gameHintWord012Cloud => 'নেটওয়ার্কের মাধ্যমে চাহিদামতো সরবরাহ করা কম্পিউটিং।';

  @override
  String get gameHintWord013Docker => 'কনটেইনার তৈরি ও চালানোর প্ল্যাটফর্ম।';

  @override
  String get gameHintWord014Azure => 'Microsoft-এর ক্লাউড প্ল্যাটফর্ম।';

  @override
  String get gameHintWord015Python => 'বহুল ব্যবহৃত স্ক্রিপ্টিং ও প্রোগ্রামিং ভাষা।';

  @override
  String get gameHintWord016Github => 'জনপ্রিয় হোস্টেড Git সহযোগিতা সেবা।';

  @override
  String get gameHintWord017Bgp => 'রাউটিং প্রটোকল যা স্বায়ত্তশাসিত সিস্টেমগুলোর মধ্যে রুট বিনিময় করে।';

  @override
  String get gameHintWord018Jenkins => 'একটি অটোমেশন সার্ভার, যা প্রায়ই CI-তে ব্যবহৃত হয়।';

  @override
  String get gameHintWord019Port => 'নেটওয়ার্ক সেবার ব্যবহৃত নম্বরযুক্ত প্রান্তবিন্দু।';

  @override
  String get gameHintWord020Proxy => 'যে সার্ভার ক্লায়েন্টের হয়ে অনুরোধ ফরওয়ার্ড করে।';

  @override
  String get gameHintWord021Cache => 'বারবার ব্যবহৃত ডেটার জন্য দ্রুত সংরক্ষণ।';

  @override
  String get gameHintWord022Cron => 'পুনরাবৃত্ত কমান্ডের জন্য Unix শিডিউলার।';

  @override
  String get gameHintWord023Bicep => 'কোড হিসেবে অবকাঠামোর জন্য Azure-এর ঘোষণামূলক ভাষা।';

  @override
  String get gameHintWord024Apigee => 'কেন্দ্রীয় API ব্যবস্থাপনার জন্য Google Cloud প্ল্যাটফর্ম।';

  @override
  String get gameHintWord025Root => 'Unix-জাতীয় সিস্টেমে বিশেষ অধিকারযুক্ত প্রশাসক অ্যাকাউন্ট।';

  @override
  String get gameHintWord026Nginx => 'ওয়েব সার্ভার ও রিভার্স প্রক্সি।';

  @override
  String get gameHintWord027Redis => 'ইন-মেমরি ডেটা স্টোর, প্রায়ই ক্যাশ হিসেবে ব্যবহৃত।';

  @override
  String get gameHintWord028Mysql => 'জনপ্রিয় রিলেশনাল ডেটাবেস সিস্টেম।';

  @override
  String get gameHintWord029Ruby => 'Chef-এর মতো টুলে ব্যবহৃত প্রোগ্রামিং ভাষা।';

  @override
  String get gameHintWord030Helm => 'Kubernetes-এর সঙ্গে সাধারণত ব্যবহৃত প্যাকেজ ম্যানেজার।';

  @override
  String get gameHintWord031Pod => 'Kubernetes-এ ডিপ্লয়যোগ্য ক্ষুদ্রতম একক।';

  @override
  String get gameHintWord032Image => 'কনটেইনার তৈরির জন্য ব্যবহৃত শুধু-পঠনযোগ্য টেমপ্লেট।';

  @override
  String get gameHintWord033Build => 'সোর্স ও নির্ভরতা থেকে আর্টিফ্যাক্ট তৈরি করে।';

  @override
  String get gameHintWord034Deploy => 'অ্যাপ্লিকেশনকে একটি পরিবেশে প্রকাশ করে।';

  @override
  String get gameHintWord035Terraform => 'কোড হিসেবে অবকাঠামোর জন্য HashiCorp-এর টুল।';

  @override
  String get gameHintWord036Ansible => 'এজেন্টবিহীন অটোমেশন ও কনফিগারেশন টুল।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes-এর কমান্ড-লাইন ক্লায়েন্ট।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform-এর সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord039Gitops => 'পরিচালনা মডেল যেখানে Git-কে সত্যের উৎস হিসেবে ব্যবহার করা হয়।';

  @override
  String get gameHintWord040Pipeline => 'বিল্ড, টেস্ট ও রিলিজ ধাপের স্বয়ংক্রিয় ক্রম।';

  @override
  String get gameHintWord041Container => 'নির্ভরতাসহ প্যাকেজ করা বিচ্ছিন্ন প্রসেস।';

  @override
  String get gameHintWord042Cluster => 'একটি যৌথ সিস্টেম হিসেবে পরিচালিত মেশিনের দল।';

  @override
  String get gameHintWord043Ingress => 'বাইরের HTTP রাউটিংয়ের জন্য Kubernetes API অবজেক্ট।';

  @override
  String get gameHintWord044Firewall => 'নিরাপত্তা নিয়ম অনুযায়ী নেটওয়ার্ক ট্রাফিক ছাঁকে।';

  @override
  String get gameHintWord045Subnet => 'IP নেটওয়ার্কের যৌক্তিক উপবিভাগ।';

  @override
  String get gameHintWord046Gateway => 'যে নেটওয়ার্ক নোড বিভিন্ন নেটওয়ার্ককে যুক্ত করে।';

  @override
  String get gameHintWord047Router => 'নেটওয়ার্কের মধ্যে প্যাকেট ফরওয়ার্ড করে।';

  @override
  String get gameHintWord048Switch => 'লোকাল নেটওয়ার্কের ভেতরে ডিভাইস সংযুক্ত করে।';

  @override
  String get gameHintWord049Repository => 'সোর্স কোড বা প্যাকেজের পরিচালিত সংরক্ষণস্থান।';

  @override
  String get gameHintWord050Systemd => 'Linux init সিস্টেম ও সার্ভিস ম্যানেজার।';

  @override
  String get gameHintWord051Journalctl => 'systemd জার্নাল লগ পড়ার কমান্ড।';

  @override
  String get gameHintWord052Permission => 'কে পড়তে, লিখতে বা চালাতে পারবে তা নিয়ন্ত্রণকারী নিয়ম।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud-এর পরিচালিত PostgreSQL-সামঞ্জস্যপূর্ণ ডেটাবেস।';

  @override
  String get gameHintWord054Configmap => 'গোপনীয় নয় এমন কনফিগারেশনের জন্য Kubernetes অবজেক্ট।';

  @override
  String get gameHintWord055Secret => 'সংবেদনশীল ডেটার জন্য তৈরি Kubernetes অবজেক্ট।';

  @override
  String get gameHintWord056Persistent => 'ওয়ার্কলোড রিস্টার্টের পরও টিকে থাকা স্টোরেজকে বোঝায়।';

  @override
  String get gameHintWord057Volume => 'কনটেইনারে মাউন্ট করা ফাইলসিস্টেম স্টোরেজ।';

  @override
  String get gameHintWord058Storage => 'ফাইল, অবজেক্ট বা ব্লকের স্থায়ী সংরক্ষণস্থান।';

  @override
  String get gameHintWord059Replica => 'স্কেল বা নির্ভরযোগ্যতার জন্য রাখা ওয়ার্কলোড ইনস্ট্যান্সের কপি।';

  @override
  String get gameHintWord060Deployment => 'স্টেটলেস অ্যাপ্লিকেশন পডের জন্য Kubernetes কন্ট্রোলার।';

  @override
  String get gameHintWord061Dockerfile => 'Docker ইমেজ তৈরির নির্দেশনা।';

  @override
  String get gameHintWord062Database => 'অ্যাপ্লিকেশনের কোয়েরি করা সুসংগঠিত সংরক্ষণস্থান।';

  @override
  String get gameHintWord063Automation => 'ম্যানুয়াল ধাপ ছাড়া সফটওয়্যার দিয়ে পুনরাবৃত্ত কাজ সম্পাদন।';

  @override
  String get gameHintWord064Anthos => 'বিভিন্ন পরিবেশে ক্লাস্টার পরিচালনার জন্য Google Cloud প্ল্যাটফর্ম।';

  @override
  String get gameHintWord065Bigquery => 'বৃহৎ পরিসরের ডেটা বিশ্লেষণের জন্য Google Cloud সেবা।';

  @override
  String get gameHintWord066Bigtable => 'বিশ্লেষণের জন্য Google Cloud-এর ওয়াইড-কলাম NoSQL ডেটাবেস।';

  @override
  String get gameHintWord067Loadbalancer => 'আগত ট্রাফিক একাধিক ব্যাকএন্ডে বণ্টন করে।';

  @override
  String get gameHintWord068Prometheus => 'টাইম-সিরিজ মেট্রিক সংরক্ষণকারী মনিটরিং সিস্টেম।';

  @override
  String get gameHintWord069Grafana => 'অবজার্ভেবিলিটি ডেটা কোয়েরি ও ভিজ্যুয়ালাইজ করার প্ল্যাটফর্ম।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud-এর পরিচালিত NoSQL JSON ডকুমেন্ট ডেটাবেস।';

  @override
  String get gameHintWord071Cloudtrail => 'অডিটের জন্য API কার্যকলাপ রেকর্ড করা AWS সেবা।';

  @override
  String get gameHintWord072Statefulset => 'স্থিতিশীল পরিচয় প্রয়োজন এমন ওয়ার্কলোডের জন্য Kubernetes কন্ট্রোলার।';

  @override
  String get gameHintWord073Daemonset => 'নির্বাচিত নোডে পড চালানো Kubernetes কন্ট্রোলার।';

  @override
  String get gameHintWord074Serviceaccount => 'ওয়ার্কলোড বা প্রসেসের ব্যবহৃত Kubernetes পরিচয়।';

  @override
  String get gameHintWord075Networkpolicy => 'পডের নেটওয়ার্ক ট্রাফিক নিয়ন্ত্রণকারী Kubernetes রিসোর্স।';

  @override
  String get gameHintWord076Certificate => 'TLS-এ পরিচয় প্রতিষ্ঠার জন্য ব্যবহৃত ডিজিটাল নথি।';

  @override
  String get gameHintWord077Encryption => 'ডেটা এমনভাবে রূপান্তর করে যাতে শুধু অনুমোদিত পক্ষ পড়তে পারে।';

  @override
  String get gameHintWord078Observability => 'সিস্টেমের আউটপুট থেকে তার আচরণ অনুমান করার সক্ষমতা।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes ক্লাস্টারের ভেতরে সাধারণত ব্যবহৃত DNS সার্ভার।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API-এর মাধ্যমে ক্লাউড রিসোর্স পরিচালনার প্রকল্প।';

  @override
  String get gameHintWord081Failover => 'ব্যর্থতার পর স্ট্যান্ডবাই উপাদানে পরিবর্তন।';

  @override
  String get gameHintWord082Idempotency => 'এমন বৈশিষ্ট্য যেখানে কোনো অপারেশন বারবার করলেও একবার করার মতোই ফল হয়।';

  @override
  String get gameHintWord083Dataflow => 'স্ট্রিম ও ব্যাচ ডেটা প্রক্রিয়াকরণের জন্য Google Cloud সেবা।';

  @override
  String get gameHintWord084Orchestration => 'একাধিক স্বয়ংক্রিয় ওয়ার্কলোডের সমন্বিত ব্যবস্থাপনা।';

  @override
  String get gameHintWord085Dataplex => 'প্রাতিষ্ঠানিক ডেটা আবিষ্কার ও পরিচালনার জন্য Google Cloud সেবা।';

  @override
  String get gameHintWord086Serverless => 'এমন এক্সিকিউশন মডেল যেখানে অবকাঠামো ব্যবস্থাপনা আড়ালে থাকে।';

  @override
  String get gameHintWord087Distributed => 'যে সিস্টেমের উপাদানগুলো নেটওয়ার্কযুক্ত একাধিক মেশিনে চলে।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud-এর পরিচালিত Apache Spark ও Hadoop পরিবেশ।';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL ডেটাবেস, প্রায়ই Terraform স্টেট লকিংয়ে ব্যবহৃত।';

  @override
  String get gameHintWord090Provisioning => 'অবকাঠামো বা রিসোর্স ব্যবহারের জন্য প্রস্তুত করা।';

  @override
  String get gameHintWord091Elasticsearch => 'কেন্দ্রীয় লগিংয়ে সাধারণত ব্যবহৃত সার্চ ইঞ্জিন।';

  @override
  String get gameHintWord092Etcd => 'কী-ভ্যালু স্টোর যা Kubernetes ক্লাস্টারের অবস্থা ধারণ করে।';

  @override
  String get gameHintWord093Authentication => 'ব্যবহারকারী বা সেবা কে তা যাচাই করার প্রক্রিয়া।';

  @override
  String get gameHintWord094Authorization => 'কোনো পরিচয় কী করতে পারবে তা নির্ধারণের প্রক্রিয়া।';

  @override
  String get gameHintWord095Expressroute => 'ডেটা সেন্টারে ডেডিকেটেড ব্যক্তিগত সংযোগের জন্য Azure সেবা।';

  @override
  String get gameHintWord096Configuration => 'সফটওয়্যারের আচরণ নির্ধারণকারী সেটিংস।';

  @override
  String get gameHintWord097Infrastructure => 'অ্যাপ্লিকেশনকে সহায়তাকারী কম্পিউট, নেটওয়ার্ক ও স্টোরেজ রিসোর্স।';

  @override
  String get gameHintWord098Fastconnect => 'ডেডিকেটেড ব্যক্তিগত নেটওয়ার্ক সংযোগের জন্য Oracle Cloud সেবা।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes-এর ব্যবহৃত শিল্প-মানের কনটেইনার রানটাইম।';

  @override
  String get gameHintWord100Kubernetes => 'কনটেইনার অর্কেস্ট্রেশন প্ল্যাটফর্ম।';

  @override
  String get gameHintWord101Http => 'ওয়েব রিসোর্স অনুরোধ করার অ্যাপ্লিকেশন প্রটোকল।';

  @override
  String get gameHintWord102Https => 'ওয়েব অনুরোধ প্রটোকলের এনক্রিপ্টেড সংস্করণ।';

  @override
  String get gameHintWord103Tcp => 'নির্ভরযোগ্য ও ক্রমানুসারে ডেলিভারি দেওয়া ট্রান্সপোর্ট প্রটোকল।';

  @override
  String get gameHintWord104Udp => 'ডেটাগ্রামের জন্য ব্যবহৃত সংযোগহীন ট্রান্সপোর্ট প্রটোকল।';

  @override
  String get gameHintWord105Tls => 'নেটওয়ার্কে বিনিময় হওয়া ডেটা সুরক্ষিত করার প্রটোকল।';

  @override
  String get gameHintWord106Ssl => 'আধুনিক ট্রান্সপোর্ট নিরাপত্তা প্রটোকলের পুরোনো পূর্বসূরি।';

  @override
  String get gameHintWord107Ftp => 'ফাইল স্থানান্তরের প্রথাগত প্রটোকল।';

  @override
  String get gameHintWord108Sftp => 'নিরাপদ শেল সংযোগের মাধ্যমে চলা ফাইল স্থানান্তর প্রটোকল।';

  @override
  String get gameHintWord109Smtp => 'সার্ভারগুলোর মধ্যে ইমেইল পাঠানোর প্রটোকল।';

  @override
  String get gameHintWord110Snmp => 'নেটওয়ার্ক ডিভাইস পরিচালনা ও মনিটর করার প্রটোকল।';

  @override
  String get gameHintWord111Icmp => 'নেটওয়ার্ক ত্রুটি ও ping বার্তা বহনকারী প্রটোকল।';

  @override
  String get gameHintWord112Arp => 'লোকাল IPv4 ঠিকানাকে হার্ডওয়্যার ঠিকানায় রূপান্তর করে।';

  @override
  String get gameHintWord113Dhcp => 'নেটওয়ার্ক ক্লায়েন্টদের স্বয়ংক্রিয়ভাবে IP কনফিগারেশন দেয়।';

  @override
  String get gameHintWord114Nat => 'প্যাকেট গেটওয়ে পার হওয়ার সময় নেটওয়ার্ক ঠিকানা বদলে দেয়।';

  @override
  String get gameHintWord115Vpn => 'দূরবর্তী নেটওয়ার্ক বা ব্যবহারকারীদের যুক্তকারী এনক্রিপ্টেড টানেল।';

  @override
  String get gameHintWord116Vpc => 'পাবলিক ক্লাউডে বিচ্ছিন্ন ভার্চুয়াল নেটওয়ার্ক।';

  @override
  String get gameHintWord117Vlan => 'সুইচড নেটওয়ার্কের যৌক্তিক বিভাজন।';

  @override
  String get gameHintWord118Wan => 'বিস্তৃত ভৌগোলিক এলাকাজুড়ে থাকা নেটওয়ার্ক।';

  @override
  String get gameHintWord119Lan => 'স্থানীয় এলাকার ভেতরে ডিভাইস যুক্তকারী নেটওয়ার্ক।';

  @override
  String get gameHintWord120Cdn => 'বিতরণ করা কনটেন্ট ক্যাশ করা বিতরিত এজ নেটওয়ার্ক।';

  @override
  String get gameHintWord121Cidr => 'স্ল্যাশ দৈর্ঘ্য দিয়ে নেটওয়ার্ক প্রিফিক্স প্রকাশের নোটেশন।';

  @override
  String get gameHintWord122Host => 'নেটওয়ার্কে সংযুক্ত কম্পিউটার বা এন্ডপয়েন্ট।';

  @override
  String get gameHintWord123Hostname => 'নেটওয়ার্কযুক্ত মেশিনকে দেওয়া মানুষের পাঠযোগ্য নাম।';

  @override
  String get gameHintWord124Domain => 'ইন্টারনেট নামকরণ ব্যবস্থায় নামযুক্ত প্রশাসনিক এলাকা।';

  @override
  String get gameHintWord125Zone => 'DNS নেমস্পেসের প্রশাসনিক অংশ।';

  @override
  String get gameHintWord126Record => 'DNS ডেটাবেসের একটি স্বতন্ত্র এন্ট্রি।';

  @override
  String get gameHintWord127Aaaa => 'নামকে IPv6 ঠিকানায় রূপান্তরকারী DNS রেকর্ড ধরন।';

  @override
  String get gameHintWord128Ptr => 'বিপরীত ঠিকানা অনুসন্ধানে ব্যবহৃত DNS রেকর্ড ধরন।';

  @override
  String get gameHintWord129Txt => 'টেক্সট মান সংরক্ষণকারী DNS রেকর্ড ধরন।';

  @override
  String get gameHintWord130Cname => 'একটি নামকে অন্য নামের উপনাম করা DNS রেকর্ড।';

  @override
  String get gameHintWord131Route => 'প্যাকেটকে গন্তব্যের দিকে পরিচালিত করা পথের এন্ট্রি।';

  @override
  String get gameHintWord132Routing => 'নেটওয়ার্কগুলোর মধ্যে ট্রাফিকের পথ নির্বাচন।';

  @override
  String get gameHintWord133Packet => 'নেটওয়ার্কের মধ্য দিয়ে প্রেরিত ডেটার একক।';

  @override
  String get gameHintWord134Protocol => 'সিস্টেমগুলোর মধ্যে যোগাযোগের সম্মত নিয়ম।';

  @override
  String get gameHintWord135Ack => 'ডেটা গ্রহণের স্বীকৃতি জানানো TCP ফ্ল্যাগ।';

  @override
  String get gameHintWord136Bandwidth => 'যোগাযোগ লিংকের ধারণক্ষমতা।';

  @override
  String get gameHintWord137Latency => 'অনুরোধ বা প্যাকেটের সাড়া পেতে বিলম্ব।';

  @override
  String get gameHintWord138Throughput => 'প্রতি একক সময়ে প্রক্রিয়াকৃত কার্যকর কাজ বা ডেটার পরিমাণ।';

  @override
  String get gameHintWord139Mtu => 'ফ্র্যাগমেন্টেশন ছাড়া একটি লিংকে পাঠানো যায় এমন বৃহত্তম প্যাকেট আকার।';

  @override
  String get gameHintWord140Alpn => 'অ্যাপ্লিকেশন-স্তরের প্রটোকল নির্ধারণকারী TLS এক্সটেনশন।';

  @override
  String get gameHintWord141Grep => 'মিলে যাওয়া প্যাটার্নের জন্য টেক্সট লাইন খোঁজে।';

  @override
  String get gameHintWord142Sed => 'টেক্সট প্রতিস্থাপনে সাধারণত ব্যবহৃত স্ট্রিম এডিটর।';

  @override
  String get gameHintWord143Lscpu => 'প্রসেসরের আর্কিটেকচার ও কোরের তথ্য দেখানো Linux কমান্ড।';

  @override
  String get gameHintWord144Find => 'ফাইল শর্ত ব্যবহার করে ডিরেক্টরি ট্রি খোঁজে।';

  @override
  String get gameHintWord145Lsblk => 'ব্লক ডিভাইস ও তাদের সম্পর্ক তালিকাভুক্ত করা Linux কমান্ড।';

  @override
  String get gameHintWord146Sort => 'টেক্সটের লাইন সাজায়।';

  @override
  String get gameHintWord147Uniq => 'পাশাপাশি থাকা সদৃশ লাইন বাদ দেয়।';

  @override
  String get gameHintWord148Head => 'ফাইলের শুরুর অংশ প্রিন্ট করে।';

  @override
  String get gameHintWord149Tail => 'ফাইলের শেষ অংশ প্রিন্ট করে এবং যুক্ত হতে থাকা লগ অনুসরণ করতে পারে।';

  @override
  String get gameHintWord150Cat => 'ফাইল জোড়া দিয়ে তাদের বিষয়বস্তু প্রিন্ট করে।';

  @override
  String get gameHintWord151Cut => 'লাইন থেকে নির্বাচিত ফিল্ড বা অক্ষর কলাম বের করে।';

  @override
  String get gameHintWord152Tee => 'স্ট্যান্ডার্ড ইনপুট ফাইল ও স্ট্যান্ডার্ড আউটপুটে কপি করে।';

  @override
  String get gameHintWord153Echo => 'তার আর্গুমেন্ট স্ট্যান্ডার্ড আউটপুটে লেখে।';

  @override
  String get gameHintWord154Printf => 'শেল বা প্রোগ্রাম থেকে ফরম্যাট করা টেক্সট প্রিন্ট করে।';

  @override
  String get gameHintWord155Touch => 'ফাইলের টাইমস্ট্যাম্প হালনাগাদ করে বা খালি ফাইল তৈরি করে।';

  @override
  String get gameHintWord156Mkdir => 'ডিরেক্টরি তৈরি করে।';

  @override
  String get gameHintWord157Rmdir => 'খালি ডিরেক্টরি মুছে ফেলে।';

  @override
  String get gameHintWord158Chmod => 'Unix ফাইল অনুমতির বিট পরিবর্তন করে।';

  @override
  String get gameHintWord159Chown => 'ফাইলের মালিকানা পরিবর্তন করে।';

  @override
  String get gameHintWord160Chgrp => 'ফাইলের গ্রুপ মালিকানা পরিবর্তন করে।';

  @override
  String get gameHintWord161Pwd => 'বর্তমান কার্যকর ডিরেক্টরি প্রিন্ট করে।';

  @override
  String get gameHintWord162Apt => 'Debian-ভিত্তিক সিস্টেমে ব্যবহৃত প্যাকেজ ব্যবস্থাপনা টুল।';

  @override
  String get gameHintWord163Top => 'প্রসেস ও সিস্টেম রিসোর্স ব্যবহারের ইন্টারেক্টিভ প্রদর্শন।';

  @override
  String get gameHintWord164Agent => 'হোস্টে কাজ সম্পাদন বা রিপোর্ট করা সফটওয়্যার উপাদান।';

  @override
  String get gameHintWord165Kill => 'শনাক্তকারী দিয়ে প্রসেসে সিগন্যাল পাঠায়।';

  @override
  String get gameHintWord166Signal => 'অপারেটিং সিস্টেম কর্তৃক প্রসেসে পাঠানো বিজ্ঞপ্তি।';

  @override
  String get gameHintWord167Sigkill => 'প্রসেস তাৎক্ষণিকভাবে বন্ধ করা Unix সিগন্যাল।';

  @override
  String get gameHintWord168Nice => 'সমন্বিত শিডিউলিং অগ্রাধিকার নিয়ে প্রসেস শুরু করে।';

  @override
  String get gameHintWord169Renice => 'চলমান প্রসেসের শিডিউলিং অগ্রাধিকার পরিবর্তন করে।';

  @override
  String get gameHintWord170Jobs => 'বর্তমান শেলের পরিচালিত জবগুলোর তালিকা দেখায়।';

  @override
  String get gameHintWord171Nohup => 'হ্যাংআপ সিগন্যাল উপেক্ষা করে কমান্ড চালায়।';

  @override
  String get gameHintWord172Screen => 'বিচ্ছিন্নযোগ্য সেশন সমর্থনকারী টার্মিনাল মাল্টিপ্লেক্সার।';

  @override
  String get gameHintWord173Uptime => 'সিস্টেম কতক্ষণ ধরে চলছে তা জানায়।';

  @override
  String get gameHintWord174Uname => 'সিস্টেম ও কার্নেলের তথ্য প্রিন্ট করে।';

  @override
  String get gameHintWord175Whoami => 'কার্যকর বর্তমান ব্যবহারকারীর নাম প্রিন্ট করে।';

  @override
  String get gameHintWord176Umask => 'ফাইল তৈরির সময় ব্যবহৃত অনুমতি মাস্ক নির্ধারণ করে।';

  @override
  String get gameHintWord177Usermod => 'বিদ্যমান ব্যবহারকারী অ্যাকাউন্ট পরিবর্তন করা Linux কমান্ড।';

  @override
  String get gameHintWord178Crontab => 'নির্ধারিত পুনরাবৃত্ত শেল জব সম্পাদনা বা তালিকাভুক্ত করে।';

  @override
  String get gameHintWord179Findmnt => 'মাউন্ট করা ফাইলসিস্টেমের তথ্য দেখানো Linux কমান্ড।';

  @override
  String get gameHintWord180Mount => 'ডিরেক্টরি ট্রির সঙ্গে ফাইলসিস্টেম সংযুক্ত করে।';

  @override
  String get gameHintWord181Sigterm => 'প্রসেসকে সুশৃঙ্খলভাবে বন্ধ করার অনুরোধ জানানো Unix সিগন্যাল।';

  @override
  String get gameHintWord182Fstab => 'মাউন্ট করার ফাইলসিস্টেম বর্ণনাকারী সিস্টেম টেবিল।';

  @override
  String get gameHintWord183Swap => 'ফিজিক্যাল মেমরির পরিপূরক হিসেবে ব্যবহৃত ডিস্কভিত্তিক স্থান।';

  @override
  String get gameHintWord184Tmpfs => 'ভার্চুয়াল মেমরি-নির্ভর অস্থায়ী ফাইলসিস্টেম।';

  @override
  String get gameHintWord185Proc => 'প্রসেস ও কার্নেলের তথ্য প্রকাশকারী Linux ভার্চুয়াল ফাইলসিস্টেম।';

  @override
  String get gameHintWord186Syslog => 'স্ট্যান্ডার্ড লগিং প্রটোকল ও বার্তার ফরম্যাট।';

  @override
  String get gameHintWord187Dmesg => 'কার্নেল রিং বাফারের বার্তা দেখায়।';

  @override
  String get gameHintWord188Free => 'ব্যবহৃত ও উপলব্ধ সিস্টেম মেমরির রিপোর্ট দেয়।';

  @override
  String get gameHintWord189Stat => 'ফাইলের বিস্তারিত মেটাডেটা দেখায়।';

  @override
  String get gameHintWord190Lsof => 'খোলা ফাইল ও সেগুলো ধরে রাখা প্রসেসের তালিকা দেখায়।';

  @override
  String get gameHintWord191Netstat => 'নেটওয়ার্ক সংযোগ ও রাউটিং তথ্য দেখায়।';

  @override
  String get gameHintWord192Checksum => 'ডেটার পরিবর্তন বা দুর্নীতি শনাক্তে ব্যবহৃত গণনাকৃত মান।';

  @override
  String get gameHintWord193Ping => 'ইকো অনুরোধ দিয়ে নেটওয়ার্কে পৌঁছানো যায় কি না পরীক্ষা করে।';

  @override
  String get gameHintWord194Traceroute => 'নেটওয়ার্ক গন্তব্যের পথের মধ্যবর্তী হপ দেখায়।';

  @override
  String get gameHintWord195Resolver => 'নাম কোয়েরির উত্তর খুঁজে আনা DNS উপাদান।';

  @override
  String get gameHintWord196Nslookup => 'DNS নাম ও ঠিকানা অনুসন্ধান করে।';

  @override
  String get gameHintWord197Telnet => 'পুরোনো, অ-এনক্রিপ্টেড রিমোট টার্মিনাল প্রটোকল।';

  @override
  String get gameHintWord198Tftp => 'সহজ UDP-ভিত্তিক ফাইল স্থানান্তর প্রটোকল।';

  @override
  String get gameHintWord199Daemon => 'Unix-জাতীয় সিস্টেমে ব্যাকগ্রাউন্ড সার্ভিস প্রসেস।';

  @override
  String get gameHintWord200Kernel => 'অপারেটিং সিস্টেমের রিসোর্স পরিচালনাকারী মূল উপাদান।';

  @override
  String get gameHintWord201Commit => 'ভার্সন কন্ট্রোলে পরিবর্তনের একটি রেকর্ডকৃত স্ন্যাপশট।';

  @override
  String get gameHintWord202Branch => 'উন্নয়নের একটি ধারা বোঝানো সরানোযোগ্য রেফারেন্স।';

  @override
  String get gameHintWord203Merge => 'বিভিন্ন উন্নয়ন ধারার ইতিহাস একত্র করে।';

  @override
  String get gameHintWord204Rebase => 'ভিন্ন বেস কমিটের উপর কমিটগুলো পুনরায় প্রয়োগ করে।';

  @override
  String get gameHintWord205Clone => 'রিমোট রিপোজিটরির স্থানীয় কপি তৈরি করে।';

  @override
  String get gameHintWord206Fetch => 'মার্জ না করে রিমোট অবজেক্ট ও রেফারেন্স ডাউনলোড করে।';

  @override
  String get gameHintWord207Pull => 'পরিবর্তন আনে এবং বর্তমান ব্রাঞ্চে একীভূত করে।';

  @override
  String get gameHintWord208Push => 'স্থানীয় কমিট রিমোট রিপোজিটরিতে পাঠায়।';

  @override
  String get gameHintWord209Stash => 'কমিট না করা ওয়ার্কিং-ট্রির পরিবর্তন সাময়িকভাবে সংরক্ষণ করে।';

  @override
  String get gameHintWord210Revert => 'অন্য কমিট বাতিল করার একটি কমিট তৈরি করে।';

  @override
  String get gameHintWord211Reset => 'Git রেফারেন্স সরায় এবং ইনডেক্স বা ওয়ার্কিং ফাইল রিসেট করতে পারে।';

  @override
  String get gameHintWord212Reflog => 'Git রেফারেন্সের হালনাগাদের স্থানীয় ইতিহাস।';

  @override
  String get gameHintWord213Diff => 'সংস্করণ বা ফাইলের মধ্যে পার্থক্য দেখায়।';

  @override
  String get gameHintWord214Status => 'স্টেজড, পরিবর্তিত ও আনট্র্যাকড ফাইলের রিপোর্ট দেয়।';

  @override
  String get gameHintWord215Checkout => 'রিভিশন পরিবর্তন বা ফাইল পুনরুদ্ধারের Git কমান্ড।';

  @override
  String get gameHintWord216Tag => 'সাধারণত রিলিজ চিহ্নিত করা নামযুক্ত রেফারেন্স।';

  @override
  String get gameHintWord217Remote => 'অন্য রিপোজিটরির সঙ্গে নামযুক্ত সংযোগ।';

  @override
  String get gameHintWord218Origin => 'ক্লোন করা রিপোজিটরির রিমোটকে দেওয়া ডিফল্ট নাম।';

  @override
  String get gameHintWord219Upstream => 'স্থানীয় ব্রাঞ্চের সঙ্গে যুক্ত রিমোট ট্র্যাকিং ব্রাঞ্চ।';

  @override
  String get gameHintWord220Worktree => 'রিপোজিটরির সঙ্গে যুক্ত চেক-আউট করা ওয়ার্কিং ডিরেক্টরি।';

  @override
  String get gameHintWord221Registry => 'কনটেইনার ইমেজ সংরক্ষণ ও বিতরণের সেবা।';

  @override
  String get gameHintWord222Digest => 'কনটেইনার ইমেজের বিষয়বস্তুভিত্তিক শনাক্তকারী।';

  @override
  String get gameHintWord223Layer => 'কনটেইনার ইমেজের অংশ গঠনকারী ফাইলসিস্টেম পরিবর্তন।';

  @override
  String get gameHintWord224Entrypoint => 'কনটেইনারের মূল এক্সিকিউটেবল নির্ধারণকারী Dockerfile নির্দেশ।';

  @override
  String get gameHintWord225Cmd => 'ডিফল্ট কমান্ড বা আর্গুমেন্ট নির্দিষ্টকারী Dockerfile নির্দেশ।';

  @override
  String get gameHintWord226Workdir => 'কার্যকর ডিরেক্টরি নির্ধারণকারী Dockerfile নির্দেশ।';

  @override
  String get gameHintWord227Copy => 'বিল্ড-কনটেক্সটের ফাইল ইমেজে কপি করা Dockerfile নির্দেশ।';

  @override
  String get gameHintWord228Add => 'স্থানীয় আর্কাইভও খুলতে পারে এমন Dockerfile নির্দেশ।';

  @override
  String get gameHintWord229Run => 'বিল্ডের সময় কমান্ড চালানো Dockerfile নির্দেশ।';

  @override
  String get gameHintWord230Env => 'এনভায়রনমেন্ট ভেরিয়েবল নির্ধারণকারী Dockerfile নির্দেশ।';

  @override
  String get gameHintWord231Arg => 'বিল্ড-সময়ের ভেরিয়েবল ঘোষণাকারী Dockerfile নির্দেশ।';

  @override
  String get gameHintWord232Expose => 'কনটেইনারের পোর্ট নথিভুক্ত করা Dockerfile নির্দেশ।';

  @override
  String get gameHintWord233User => 'পরবর্তী কমান্ডের জন্য অ্যাকাউন্ট বেছে নেওয়া Dockerfile নির্দেশ।';

  @override
  String get gameHintWord234Healthcheck => 'কনটেইনারের স্বাস্থ্য কীভাবে পরীক্ষা করতে হবে তা বর্ণনাকারী নির্দেশ।';

  @override
  String get gameHintWord235Shebang => 'স্ক্রিপ্টের প্রথম লাইন যা চালানোর ইন্টারপ্রেটার শনাক্ত করে।';

  @override
  String get gameHintWord236Compose => 'বহু-কনটেইনার অ্যাপ্লিকেশন সংজ্ঞায়িত ও চালানোর Docker টুল।';

  @override
  String get gameHintWord237Bridge => 'স্থানীয় কনটেইনার নেটওয়ার্কিংয়ের জন্য প্রচলিত Docker নেটওয়ার্ক ড্রাইভার।';

  @override
  String get gameHintWord238Overlay => 'একাধিক হোস্টের কনটেইনারজুড়ে বিস্তৃত নেটওয়ার্ক।';

  @override
  String get gameHintWord239None => 'কনটেইনার নেটওয়ার্কিং নিষ্ক্রিয় করা Docker নেটওয়ার্ক ড্রাইভার।';

  @override
  String get gameHintWord240Prune => 'অব্যবহৃত কনটেইনার রিসোর্স সরিয়ে ফেলে।';

  @override
  String get gameHintWord241Replicaset => 'কাঙ্ক্ষিত পড সংখ্যা বজায় রাখা Kubernetes কন্ট্রোলার।';

  @override
  String get gameHintWord242Service => 'পডে স্থিতিশীল অ্যাক্সেস দেওয়া Kubernetes অ্যাবস্ট্রাকশন।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes সার্ভিসের পেছনের ঠিকানাসমূহ।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes রিসোর্স গোষ্ঠীবদ্ধ করা যৌক্তিক পরিধি।';

  @override
  String get gameHintWord245Node => 'Kubernetes পডের আশ্রয়দাতা ওয়ার্কার মেশিন।';

  @override
  String get gameHintWord246Kubelet => 'প্রতিটি নোডের এজেন্ট যা পড চালানো পরিচালনা করে।';

  @override
  String get gameHintWord247Pvc => 'স্থায়ী স্টোরেজের জন্য Kubernetes অনুরোধ।';

  @override
  String get gameHintWord248Apiserver => 'ক্লাস্টার API প্রকাশকারী Kubernetes কন্ট্রোল-প্লেন উপাদান।';

  @override
  String get gameHintWord249Role => 'রোল-ভিত্তিক অ্যাক্সেস নিয়ন্ত্রণে নামযুক্ত অনুমতির সেট।';

  @override
  String get gameHintWord250Resourcequota => 'নেমস্পেসে রিসোর্স ব্যবহার সীমিত করা Kubernetes অবজেক্ট।';

  @override
  String get gameHintWord251Selector => 'লেবেল দিয়ে রিসোর্স মেলানো এক্সপ্রেশন।';

  @override
  String get gameHintWord252Taint => 'নোডের বৈশিষ্ট্য যা মিলে যাওয়া টলারেশনবিহীন পডকে দূরে রাখে।';

  @override
  String get gameHintWord253Toleration => 'টেইন্টেড নোডে শিডিউলিংয়ের অনুমতি দেওয়া পড সেটিং।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes নোডকে শিডিউলের অযোগ্য হিসেবে চিহ্নিত করে।';

  @override
  String get gameHintWord255Uncordon => 'কর্ডন করা নোডকে আবার শিডিউলযোগ্য করে।';

  @override
  String get gameHintWord256Drain => 'নোড রক্ষণাবেক্ষণের আগে ওয়ার্কলোড নিরাপদে সরিয়ে দেয়।';

  @override
  String get gameHintWord257Job => 'কাজ সম্পূর্ণ হওয়া পর্যন্ত চালানো Kubernetes ওয়ার্কলোড।';

  @override
  String get gameHintWord258Cronjob => 'সময়সূচি অনুযায়ী জব তৈরি করা Kubernetes ওয়ার্কলোড।';

  @override
  String get gameHintWord259Readiness => 'কনটেইনার ট্রাফিক গ্রহণ করতে পারবে কি না তা নির্দেশকারী প্রোব।';

  @override
  String get gameHintWord260Liveness => 'কনটেইনার রিস্টার্ট প্রয়োজন কি না তা নির্দেশকারী প্রোব।';

  @override
  String get gameHintWord261Canary => 'নতুন সংস্করণ অল্প অংশ ট্রাফিকের কাছে উন্মুক্ত করার রিলিজ পদ্ধতি।';

  @override
  String get gameHintWord262Rolling => 'চলমান ইনস্ট্যান্স ধীরে ধীরে প্রতিস্থাপন করা আপডেট কৌশল।';

  @override
  String get gameHintWord263Rollback => 'আগের কার্যকর অ্যাপ্লিকেশন সংস্করণ ফিরিয়ে আনে।';

  @override
  String get gameHintWord264Rollout => 'অ্যাপ্লিকেশনের নতুন সংস্করণের ধাপে ধাপে ডিপ্লয়মেন্ট।';

  @override
  String get gameHintWord265Recreate => 'প্রতিস্থাপক শুরুর আগে পুরোনো পড বন্ধ করা ডিপ্লয়মেন্ট কৌশল।';

  @override
  String get gameHintWord266Blue => 'ব্লু-গ্রিন রিলিজের দুটি পরিবেশের একটি।';

  @override
  String get gameHintWord267Green => 'ব্লু-গ্রিন রিলিজের অন্য পরিবেশটি।';

  @override
  String get gameHintWord268Artifact => 'বিল্ড পাইপলাইনের তৈরি সংস্করণযুক্ত আউটপুট।';

  @override
  String get gameHintWord269Staging => 'রিলিজ যাচাইয়ের জন্য ব্যবহৃত প্রি-প্রোডাকশন পরিবেশ।';

  @override
  String get gameHintWord270Production => 'প্রকৃত শেষ ব্যবহারকারীদের সেবা দেওয়া পরিবেশ।';

  @override
  String get gameHintWord271Release => 'ব্যবহারের জন্য সরবরাহ করা সফটওয়্যার সংস্করণ।';

  @override
  String get gameHintWord272Version => 'সফটওয়্যারের রিভিশন আলাদা করা শনাক্তকারী।';

  @override
  String get gameHintWord273Revision => 'নথি বা কোডবেসের শনাক্তযোগ্য সংস্করণ।';

  @override
  String get gameHintWord274Webhook => 'কোনো ঘটনা ঘটলে পাঠানো HTTP বিজ্ঞপ্তি।';

  @override
  String get gameHintWord275Runbook => 'সিস্টেম পরিচালনা বা পুনরুদ্ধারের নথিভুক্ত পদ্ধতি।';

  @override
  String get gameHintWord276Workspace => 'কর্মরত প্রকল্প রিসোর্স ধারণকারী ডিরেক্টরি বা পরিধি।';

  @override
  String get gameHintWord277Credentials => 'সিস্টেমে প্রবেশের জন্য ব্যবহৃত প্রমাণীকরণ তথ্য।';

  @override
  String get gameHintWord278Trigger => 'পাইপলাইন শুরু করা ঘটনা বা শর্ত।';

  @override
  String get gameHintWord279Parameter => 'জব বা ফাংশনকে দেওয়া নামযুক্ত ইনপুট।';

  @override
  String get gameHintWord280Access => 'অনুমোদন সাপেক্ষে রিসোর্স ব্যবহারের সক্ষমতা।';

  @override
  String get gameHintWord281Module => 'অবকাঠামো সংজ্ঞার পুনর্ব্যবহারযোগ্য গোষ্ঠী।';

  @override
  String get gameHintWord282Provider => 'কনফিগারেশনকে বাহ্যিক API-র সঙ্গে যুক্ত করা Terraform প্লাগইন।';

  @override
  String get gameHintWord283Resource => 'কনফিগারেশনে ঘোষিত পরিচালিত অবকাঠামো অবজেক্ট।';

  @override
  String get gameHintWord284Variable => 'কনফিগারেশন বা কোডে ব্যবহৃত নামযুক্ত ইনপুট মান।';

  @override
  String get gameHintWord285Output => 'অবকাঠামো কনফিগারেশনের ফেরত দেওয়া প্রকাশিত মান।';

  @override
  String get gameHintWord286Tfstate => 'Terraform স্টেট স্ন্যাপশটের সঙ্গে যুক্ত ফাইল প্রত্যয়।';

  @override
  String get gameHintWord287Tfvars => 'Terraform ইনপুট ভেরিয়েবলের মানের জন্য ব্যবহৃত ফাইল প্রত্যয়।';

  @override
  String get gameHintWord288Backend => 'স্টেট সংরক্ষণ নিয়ন্ত্রণকারী Terraform কনফিগারেশন।';

  @override
  String get gameHintWord289Plan => 'প্রস্তাবিত অবকাঠামো পরিবর্তনের Terraform পূর্বরূপ।';

  @override
  String get gameHintWord290Apply => 'প্রস্তাবিত পরিবর্তন কার্যকর করা Terraform অপারেশন।';

  @override
  String get gameHintWord291Destroy => 'পরিচালিত অবকাঠামো সরানো Terraform অপারেশন।';

  @override
  String get gameHintWord292Import => 'বিদ্যমান রিসোর্সকে অবকাঠামো ব্যবস্থাপনার আওতায় আনে।';

  @override
  String get gameHintWord293Refresh => 'রেকর্ড করা স্টেটকে প্রকৃত অবকাঠামোর সঙ্গে সিঙ্ক করে।';

  @override
  String get gameHintWord294Validate => 'কনফিগারেশনের সিনট্যাক্স ও অভ্যন্তরীণ সামঞ্জস্য পরীক্ষা করে।';

  @override
  String get gameHintWord295Fmt => 'প্রমিত কনফিগারেশন ফরম্যাটিং প্রয়োগকারী Terraform কমান্ড।';

  @override
  String get gameHintWord296Init => 'Terraform প্রোভাইডার ও ওয়ার্কিং ডিরেক্টরি প্রস্তুত করে।';

  @override
  String get gameHintWord297Executor => 'বিল্ড চালাতে পারা Jenkins ওয়ার্কার স্লট।';

  @override
  String get gameHintWord298Dependencies => 'একটি উপাদানের আগে অন্যটি প্রয়োজন হওয়ার সম্পর্ক।';

  @override
  String get gameHintWord299Drift => 'ঘোষিত ও প্রকৃত অবকাঠামো অবস্থার মধ্যে পার্থক্য।';

  @override
  String get gameHintWord300Locking => 'একই সঙ্গে একাধিক লেখককে শেয়ার্ড স্টেট পরিবর্তন করতে বাধা দেয়।';

  @override
  String get gameHintWord301Playbook => 'অটোমেশন প্লে ও টাস্ক বর্ণনাকারী Ansible নথি।';

  @override
  String get gameHintWord302Inventory => 'পরিচালিত হোস্ট ও গ্রুপের Ansible সংগ্রহ।';

  @override
  String get gameHintWord303Facts => 'পরিচালিত হোস্ট সম্পর্কে সংগৃহীত সিস্টেম তথ্য।';

  @override
  String get gameHintWord304Task => 'অটোমেশনে কাজের একটি স্বতন্ত্র একক।';

  @override
  String get gameHintWord305Handler => 'পরিবর্তনের বিজ্ঞপ্তি পেলে চলা Ansible টাস্ক।';

  @override
  String get gameHintWord306Notify => 'পরিবর্তিত টাস্কের পর হ্যান্ডলার সারিতে রাখা Ansible নির্দেশ।';

  @override
  String get gameHintWord307Become => 'সুবিধা উন্নীতকরণ সক্রিয়কারী Ansible সেটিং।';

  @override
  String get gameHintWord308Vault => 'সংবেদনশীল অটোমেশন ডেটা এনক্রিপ্ট করার Ansible ফিচার।';

  @override
  String get gameHintWord309Register => 'টাস্কের ফলাফল ভেরিয়েবলে সংরক্ষণ করা Ansible নির্দেশ।';

  @override
  String get gameHintWord310When => 'শর্তসাপেক্ষে টাস্ক চালানো নিয়ন্ত্রণকারী Ansible কীওয়ার্ড।';

  @override
  String get gameHintWord311Loop => 'সংগ্রহের উপর অটোমেশন টাস্ক পুনরাবৃত্তি করে।';

  @override
  String get gameHintWord312Include => 'পুনর্ব্যবহারযোগ্য অটোমেশন কনটেন্ট গতিশীলভাবে লোড করে।';

  @override
  String get gameHintWord313Tags => 'অটোমেশন টাস্কের উপসেট বাছাইয়ে ব্যবহৃত লেবেল।';

  @override
  String get gameHintWord314Template => 'ডিপ্লয়মেন্টের আগে ভেরিয়েবল দিয়ে রেন্ডার করা ফাইল।';

  @override
  String get gameHintWord315Jinja => 'Ansible-এর ব্যবহৃত টেমপ্লেট ভাষা।';

  @override
  String get gameHintWord316Abstraction => 'সহজতর ইন্টারফেসের আড়ালে বাস্তবায়নের বিবরণ লুকানো।';

  @override
  String get gameHintWord317Agile => 'ফিডব্যাকের উপর জোর দেওয়া পুনরাবৃত্তিমূলক সফটওয়্যার সরবরাহ পদ্ধতি।';

  @override
  String get gameHintWord318Puppet => 'ঘোষণামূলক ম্যানিফেস্ট ব্যবহারকারী কনফিগারেশন ব্যবস্থাপনা টুল।';

  @override
  String get gameHintWord319Airflow => 'ওয়ার্কফ্লো DAG শিডিউল ও অর্কেস্ট্রেট করার প্ল্যাটফর্ম।';

  @override
  String get gameHintWord320Argo => 'GitOps ডেলিভারি কন্ট্রোলারসহ ক্লাউড-নেটিভ প্রকল্প পরিবার।';

  @override
  String get gameHintWord321Rds => 'AWS-এর পরিচালিত রিলেশনাল ডেটাবেস সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord322Sqs => 'AWS-এর পরিচালিত মেসেজ কিউয়ের সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord323Sns => 'AWS-এর পাবলিশ-সাবস্ক্রাইব বিজ্ঞপ্তি সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord324Ses => 'AWS-এর ইমেইল পাঠানোর সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord325Iam => 'ক্লাউড পরিচয় ও অ্যাক্সেস ব্যবস্থাপনার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord326Kms => 'AWS-এর এনক্রিপশন কী ব্যবস্থাপনা সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord327Waf => 'অ্যাপ্লিকেশন-স্তরের ওয়েব অনুরোধ ছাঁকা ফায়ারওয়াল।';

  @override
  String get gameHintWord328Eks => 'AWS-এর পরিচালিত Kubernetes সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord329Ecs => 'AWS-এর পরিচালিত কনটেইনার অর্কেস্ট্রেশন সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord330Ecr => 'AWS-এর কনটেইনার ইমেজ রেজিস্ট্রির সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord331Aurora => 'MySQL ও PostgreSQL-সামঞ্জস্যপূর্ণ AWS রিলেশনাল ডেটাবেস।';

  @override
  String get gameHintWord332Redshift => 'AWS-এর বিশ্লেষণমূলক ডেটা ওয়্যারহাউস।';

  @override
  String get gameHintWord333Neptune => 'AWS-এর পরিচালিত গ্রাফ ডেটাবেস।';

  @override
  String get gameHintWord334Elasticache => 'AWS-এর পরিচালিত ইন-মেমরি ক্যাশিং সেবা।';

  @override
  String get gameHintWord335Athena => 'SQL দিয়ে অবজেক্ট-স্টোরেজ ডেটা কোয়েরি করা AWS সেবা।';

  @override
  String get gameHintWord336Glue => 'AWS-এর সার্ভারলেস ডেটা ইন্টিগ্রেশন ও ETL সেবা।';

  @override
  String get gameHintWord337Emr => 'পরিচালিত বিগ-ডেটা প্রক্রিয়াকরণ ক্লাস্টারের AWS প্ল্যাটফর্ম।';

  @override
  String get gameHintWord338Lambda => 'সার্ভার পরিচালনা ছাড়া ফাংশন চালানো AWS সেবা।';

  @override
  String get gameHintWord339Cloudfront => 'AWS-এর বৈশ্বিক কনটেন্ট ডেলিভারি নেটওয়ার্ক।';

  @override
  String get gameHintWord340Cloudwatch => 'মেট্রিক, লগ ও অ্যালার্ম সংগ্রহকারী AWS সেবা।';

  @override
  String get gameHintWord341Cloudshell => 'AWS-এর ব্রাউজার-ভিত্তিক শেল পরিবেশ।';

  @override
  String get gameHintWord342Codecommit => 'AWS-এর পরিচালিত Git রিপোজিটরি সেবা।';

  @override
  String get gameHintWord343Codebuild => 'সোর্স কম্পাইল ও বিল্ড টেস্ট চালানো AWS সেবা।';

  @override
  String get gameHintWord344Codedeploy => 'AWS-এর স্বয়ংক্রিয় অ্যাপ্লিকেশন ডিপ্লয়মেন্ট সেবা।';

  @override
  String get gameHintWord345Codepipeline => 'AWS-এর ধারাবাহিক ডেলিভারি পাইপলাইন সেবা।';

  @override
  String get gameHintWord346Guardduty => 'AWS-এর বুদ্ধিমান হুমকি শনাক্তকরণ সেবা।';

  @override
  String get gameHintWord347Inspector => 'ওয়ার্কলোডের দুর্বলতা মূল্যায়ন করা AWS সেবা।';

  @override
  String get gameHintWord348Macie => 'অবজেক্ট স্টোরেজে সংবেদনশীল ডেটা খুঁজে বের করা AWS সেবা।';

  @override
  String get gameHintWord349Shield => 'AWS-এর পরিচালিত DDoS সুরক্ষা সেবা।';

  @override
  String get gameHintWord350Snowball => 'বড় ডেটা স্থানান্তরের জন্য AWS-এর ভৌত যন্ত্র।';

  @override
  String get gameHintWord351Snowcone => 'AWS অফলাইন স্থানান্তর পরিবারের ছোট, মজবুত ডিভাইস।';

  @override
  String get gameHintWord352Datasync => 'AWS-এর স্বয়ংক্রিয় অনলাইন ডেটা স্থানান্তর সেবা।';

  @override
  String get gameHintWord353Msk => 'AWS-এর পরিচালিত Apache Kafka সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord354Backup => 'পুনরুদ্ধারের জন্য সংরক্ষিত ডেটার কপি।';

  @override
  String get gameHintWord355Transcribe => 'কথাকে টেক্সটে রূপান্তরকারী AWS সেবা।';

  @override
  String get gameHintWord356Translate => 'ভাষার মধ্যে টেক্সট অনুবাদকারী AWS সেবা।';

  @override
  String get gameHintWord357Rekognition => 'ছবি ও ভিডিও বিশ্লেষণকারী AWS সেবা।';

  @override
  String get gameHintWord358Comprehend => 'AWS-এর প্রাকৃতিক ভাষা বিশ্লেষণ সেবা।';

  @override
  String get gameHintWord359Textract => 'নথি থেকে টেক্সট ও টেবিল বের করা AWS সেবা।';

  @override
  String get gameHintWord360Sagemaker => 'মেশিন লার্নিং মডেল তৈরি ও ডিপ্লয়ের AWS প্ল্যাটফর্ম।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud-এর বৈশ্বিকভাবে বিতরিত রিলেশনাল ডেটাবেস।';

  @override
  String get gameHintWord362Pub => 'পাবলিশ-সাবস্ক্রাইব মেসেজিং প্যাটার্নের প্রকাশক অংশ।';

  @override
  String get gameHintWord363Sub => 'পাবলিশ-সাবস্ক্রাইব মেসেজিং প্যাটার্নের গ্রাহক অংশ।';

  @override
  String get gameHintWord364Functions => 'সার্ভারলেস প্ল্যাটফর্মের দেওয়া ইভেন্ট-চালিত কোডের একক।';

  @override
  String get gameHintWord365App => 'সফটওয়্যার অ্যাপ্লিকেশনের সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord366Engine => 'Compute Engine-এর মতো নামে ব্যবহৃত এক্সিকিউশন উপাদান।';

  @override
  String get gameHintWord367Compute => 'ভার্চুয়াল মেশিন বা কনটেইনারের সরবরাহ করা প্রক্রিয়াকরণ ক্ষমতা।';

  @override
  String get gameHintWord368Network => 'ডেটা বিনিময়কারী সংযুক্ত সিস্টেম।';

  @override
  String get gameHintWord369Security => 'হুমকির বিরুদ্ধে সিস্টেম ও তথ্যের সুরক্ষা।';

  @override
  String get gameHintWord370Identity => 'অ্যাক্সেস সিদ্ধান্তে ব্যবহৃত ব্যবহারকারী বা সেবার উপস্থাপনা।';

  @override
  String get gameHintWord371Monitoring => 'সিস্টেমের স্বাস্থ্য ও আচরণের ক্রমাগত পর্যবেক্ষণ।';

  @override
  String get gameHintWord372Logging => 'অ্যাপ্লিকেশন ও সিস্টেমের আলাদা ঘটনা রেকর্ড করা।';

  @override
  String get gameHintWord373Trace => 'সার্ভিস কলের মধ্য দিয়ে অনুরোধের পথের রেকর্ড।';

  @override
  String get gameHintWord374Metrics => 'সময়ের সঙ্গে সিস্টেম আচরণের সাংখ্যিক পরিমাপ।';

  @override
  String get gameHintWord375Alert => 'পর্যবেক্ষিত অবস্থায় মনোযোগ প্রয়োজন জানানো বিজ্ঞপ্তি।';

  @override
  String get gameHintWord376Billing => 'ব্যবহৃত ক্লাউড সেবার হিসাব রাখা ও মূল্য আদায়।';

  @override
  String get gameHintWord377Quota => 'ব্যবহারযোগ্য রিসোর্সের পরিমাণের সীমা।';

  @override
  String get gameHintWord378Region => 'অ্যাভেইলেবিলিটি জোন ধারণকারী ভৌগোলিক ক্লাউড ডিপ্লয়মেন্ট এলাকা।';

  @override
  String get gameHintWord379Tenancy => 'গ্রাহকরা কীভাবে অবকাঠামো ভাগ করে তার ব্যবস্থা।';

  @override
  String get gameHintWord380Regional => 'ক্লাউড রিজিয়নের মধ্যে সীমাবদ্ধ রিসোর্স বোঝায়।';

  @override
  String get gameHintWord381Cosmos => 'Azure-এর বৈশ্বিকভাবে বিতরিত মাল্টি-মডেল ডেটাবেসের নাম।';

  @override
  String get gameHintWord382Synapse => 'ওয়্যারহাউসিং ও ডেটা প্রক্রিয়াকরণ একত্রকারী Azure বিশ্লেষণ প্ল্যাটফর্ম।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft-এর ক্লাউড-নেটিভ নিরাপত্তা তথ্য ও ইভেন্ট প্ল্যাটফর্ম।';

  @override
  String get gameHintWord384Defender => 'ক্লাউড ওয়ার্কলোড রক্ষাকারী Microsoft নিরাপত্তা পণ্য পরিবার।';

  @override
  String get gameHintWord385Entra => 'Azure AD ব্র্যান্ডিংয়ের স্থলাভিষিক্ত Microsoft পরিচয় পণ্য পরিবার।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager-এর সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord387Arc => 'Azure-এর বাইরের রিসোর্সে ব্যবস্থাপনা সম্প্রসারণ করা Azure সেবা।';

  @override
  String get gameHintWord388Aks => 'Azure-এর পরিচালিত Kubernetes সেবার সংক্ষিপ্ত রূপ।';

  @override
  String get gameHintWord389Armor => 'Google Cloud ওয়েব সুরক্ষা সেবার নামের প্রত্যয়।';

  @override
  String get gameHintWord390Blob => 'Azure অবজেক্ট-স্টোরেজ ডেটা ধরন।';

  @override
  String get gameHintWord391Files => 'পরিচালিত নেটওয়ার্ক ফাইল শেয়ার দেওয়া Azure সেবা।';

  @override
  String get gameHintWord392Disk => 'ভার্চুয়াল মেশিনে সংযুক্ত ব্লক-স্টোরেজ ডিভাইস।';

  @override
  String get gameHintWord393Function => 'ফলাফল ফেরত দিতে পারে এমন আহ্বানযোগ্য কোড ব্লক।';

  @override
  String get gameHintWord394Logic => 'ওয়ার্কফ্লো ইন্টিগ্রেশনের জন্য Azure অ্যাপ সার্ভিস বিভাগ।';

  @override
  String get gameHintWord395Insights => 'Azure অ্যাপ্লিকেশন টেলিমেট্রি পণ্যের নামের প্রত্যয়।';

  @override
  String get gameHintWord396Traffic => 'নেটওয়ার্ক এন্ডপয়েন্টের মধ্যে প্রবাহিত ডেটা।';

  @override
  String get gameHintWord397Manager => 'Azure Resource-এর কন্ট্রোল প্লেনের পণ্য নামের প্রত্যয়।';

  @override
  String get gameHintWord398Bastion => 'ব্যক্তিগত হোস্টে প্রবেশের পরিচালিত বা সুরক্ষিত প্রবেশপথ।';

  @override
  String get gameHintWord399Front => 'Azure-এর বৈশ্বিক প্রবেশপথ সেবা Front Door-এর প্রথম শব্দ।';

  @override
  String get gameHintWord400Door => 'Azure-এর বৈশ্বিক প্রবেশপথ সেবা Front Door-এর দ্বিতীয় শব্দ।';

  @override
  String get gameHintWord401Javascript => 'ব্রাউজার ও Node রানটাইমে বহুল ব্যবহৃত প্রোগ্রামিং ভাষা।';

  @override
  String get gameHintWord402Perl => 'টেক্সট প্রক্রিয়াকরণ ও রেগুলার এক্সপ্রেশনের জন্য পরিচিত স্ক্রিপ্টিং ভাষা।';

  @override
  String get gameHintWord403Powershell => 'Microsoft-এর অবজেক্ট-ভিত্তিক শেল ও অটোমেশন ভাষা।';

  @override
  String get gameHintWord404Java => 'Jenkins বাস্তবায়নে ব্যবহৃত JVM ভাষা।';

  @override
  String get gameHintWord405Json => 'অবজেক্ট ও অ্যারেযুক্ত হালকা ডেটা ফরম্যাট।';

  @override
  String get gameHintWord406Xml => 'নেস্টেড নামযুক্ত ট্যাগ ব্যবহারকারী মার্কআপ ফরম্যাট।';

  @override
  String get gameHintWord407Html => 'ওয়েব পেজের কাঠামো তৈরির মার্কআপ ভাষা।';

  @override
  String get gameHintWord408Css => 'ওয়েবের উপস্থাপনা নিয়ন্ত্রণকারী স্টাইলশিট ভাষা।';

  @override
  String get gameHintWord409String => 'টেক্সট অক্ষরের ক্রম।';

  @override
  String get gameHintWord410Array => 'উপাদানের সূচকযুক্ত সংগ্রহ।';

  @override
  String get gameHintWord411Hash => 'Ruby ও Perl-এ সহযোগী কী-ভ্যালু সংগ্রহ।';

  @override
  String get gameHintWord412Object => 'বৈশিষ্ট্য ও আচরণযুক্ত রানটাইম মান।';

  @override
  String get gameHintWord413Class => 'ক্লাস-ভিত্তিক ভাষায় অবজেক্ট তৈরির সংজ্ঞা।';

  @override
  String get gameHintWord414Method => 'অবজেক্ট বা ক্লাসের সঙ্গে যুক্ত ফাংশন।';

  @override
  String get gameHintWord415Interface => 'কোনো উপাদানের প্রকাশিত অপারেশন বর্ণনাকারী চুক্তি।';

  @override
  String get gameHintWord416Subclass => 'অন্য ক্লাস থেকে উদ্ভূত ক্লাস।';

  @override
  String get gameHintWord417Super => 'প্যারেন্ট-ক্লাসের আচরণ আহ্বান করার কীওয়ার্ড।';

  @override
  String get gameHintWord418Protected => 'ক্লাস-সংক্রান্ত প্রসঙ্গে অ্যাক্সেস সীমিত করা দৃশ্যমানতার স্তর।';

  @override
  String get gameHintWord419Exception => 'স্বাভাবিক নিয়ন্ত্রণ প্রবাহ ব্যাহত করা রানটাইম অবস্থা।';

  @override
  String get gameHintWord420Regex => 'টেক্সট মেলানোর প্যাটার্ন নোটেশন।';

  @override
  String get gameHintWord421Lexical => 'সোর্স-কোডের কাঠামো দিয়ে নির্ধারিত স্কোপ বোঝায়।';

  @override
  String get gameHintWord422Scalar => 'Perl-এ একক-মানের ভেরিয়েবল বিভাগ।';

  @override
  String get gameHintWord423Tuple => 'Python-এ অপরিবর্তনীয় ক্রমযুক্ত সংগ্রহ।';

  @override
  String get gameHintWord424List => 'Python-এ পরিবর্তনযোগ্য ক্রমযুক্ত সংগ্রহ।';

  @override
  String get gameHintWord425Dict => 'Python-এর বিল্ট-ইন ম্যাপিং টাইপের নাম।';

  @override
  String get gameHintWord426Dictionary => 'কী-কে সংশ্লিষ্ট মানের সঙ্গে যুক্ত করা সংগ্রহ।';

  @override
  String get gameHintWord427Set => 'স্বতন্ত্র মানের সংগ্রহ।';

  @override
  String get gameHintWord428Boolean => 'সত্য বা মিথ্যা প্রকাশকারী ডেটা টাইপ।';

  @override
  String get gameHintWord429Integer => 'পূর্ণ সংখ্যা প্রকাশকারী সাংখ্যিক টাইপ।';

  @override
  String get gameHintWord430Float => 'ভাসমান-বিন্দু মান প্রকাশকারী সাংখ্যিক টাইপ।';

  @override
  String get gameHintWord431Double => 'দ্বিগুণ-নির্ভুলতার ভাসমান-বিন্দু টাইপ।';

  @override
  String get gameHintWord432Null => 'অবজেক্ট বা ফলাফলের অনুপস্থিতি বোঝানো মান।';

  @override
  String get gameHintWord433Undefined => 'নির্ধারিত মান না থাকার জন্য JavaScript মান।';

  @override
  String get gameHintWord434Promise => 'ভবিষ্যতে পাওয়া অ্যাসিঙ্ক্রোনাস ফলাফল বোঝানো JavaScript অবজেক্ট।';

  @override
  String get gameHintWord435Async => 'অ্যাসিঙ্ক্রোনাস ফাংশন চিহ্নিতকারী কীওয়ার্ড।';

  @override
  String get gameHintWord436Await => 'অ্যাসিঙ্ক্রোনাস ফলাফলের জন্য অপেক্ষা করা কীওয়ার্ড।';

  @override
  String get gameHintWord437Callback => 'অন্য অপারেশন দ্বারা আহ্বানের জন্য পাঠানো ফাংশন।';

  @override
  String get gameHintWord438Closure => 'আশপাশের লেক্সিক্যাল স্কোপে অ্যাক্সেস ধরে রাখা ফাংশন।';

  @override
  String get gameHintWord439Generator => 'yield করা মানের মাধ্যমে ধীরে ধীরে ক্রম তৈরি করা ফাংশন।';

  @override
  String get gameHintWord440Iterator => 'সংগ্রহের মানগুলোর মধ্য দিয়ে এগিয়ে চলা অবজেক্ট।';

  @override
  String get gameHintWord441Print => 'আউটপুটে মান লেখার প্রচলিত ফাংশন।';

  @override
  String get gameHintWord442Input => 'স্ট্যান্ডার্ড ইনপুট থেকে এক লাইন পড়া Python ফাংশন।';

  @override
  String get gameHintWord443Open => 'ফাইল হ্যান্ডেল পেতে ব্যবহৃত ফাংশন।';

  @override
  String get gameHintWord444Close => 'খোলা ফাইল বা সংযোগ ছেড়ে দেওয়ার অপারেশন।';

  @override
  String get gameHintWord445Read => 'স্ট্রিম বা ফাইল থেকে ডেটা পাওয়ার অপারেশন।';

  @override
  String get gameHintWord446Write => 'স্ট্রিম বা ফাইলে ডেটা পাঠানোর অপারেশন।';

  @override
  String get gameHintWord447Append => 'সংগ্রহের শেষে একটি আইটেম যোগ করে।';

  @override
  String get gameHintWord448Split => 'ডিলিমিটার ব্যবহার করে টেক্সটকে সাবস্ট্রিংয়ে ভাঙে।';

  @override
  String get gameHintWord449Join => 'বিভাজক ব্যবহার করে স্ট্রিংয়ের ক্রম একত্র করে।';

  @override
  String get gameHintWord450Strip => 'Python স্ট্রিংয়ের চারপাশের হোয়াইটস্পেস সরায়।';

  @override
  String get gameHintWord451Chomp => 'Perl বা Ruby-তে শেষের রেকর্ড বিভাজক সরায়।';

  @override
  String get gameHintWord452Map => 'সংগ্রহের প্রতিটি আইটেমে রূপান্তর প্রয়োগ করে।';

  @override
  String get gameHintWord453Filter => 'শর্ত পূরণকারী সংগ্রহের আইটেম রাখে।';

  @override
  String get gameHintWord454Reduce => 'সংগ্রহকে একটি সঞ্চিত ফলাফলে একত্র করে।';

  @override
  String get gameHintWord455Range => 'পূর্ণসংখ্যার গাণিতিক ক্রম প্রকাশকারী Python টাইপ।';

  @override
  String get gameHintWord456Length => 'সংগ্রহের আকার ফেরত দেওয়া প্রোপার্টি বা মেথড।';

  @override
  String get gameHintWord457Len => 'সংগ্রহের আকার ফেরত দেওয়া Python বিল্ট-ইন ফাংশন।';

  @override
  String get gameHintWord458Type => 'অবজেক্টের টাইপ ফেরত দেওয়া Python ফাংশন।';

  @override
  String get gameHintWord459Isinstance => 'টাইপ হায়ারার্কিতে অন্তর্ভুক্তি পরীক্ষা করা Python ফাংশন।';

  @override
  String get gameHintWord460Yield => 'জেনারেটর থেকে মান উৎপন্ন করা কীওয়ার্ড।';

  @override
  String get gameHintWord461Saas => 'সম্পূর্ণ সফটওয়্যার অ্যাপ্লিকেশন সরবরাহ করা ক্লাউড মডেল।';

  @override
  String get gameHintWord462Paas => 'পরিচালিত অ্যাপ্লিকেশন উন্নয়ন প্ল্যাটফর্ম সরবরাহ করা ক্লাউড মডেল।';

  @override
  String get gameHintWord463Iaas => 'ভার্চুয়াল কম্পিউট, স্টোরেজ ও নেটওয়ার্কিং সরবরাহ করা ক্লাউড মডেল।';

  @override
  String get gameHintWord464Hybrid => 'ব্যক্তিগত ও পাবলিক অবকাঠামো একত্র করা ক্লাউড পদ্ধতি।';

  @override
  String get gameHintWord465Archive => 'কম ব্যবহৃত ডেটার দীর্ঘমেয়াদি সংরক্ষণ।';

  @override
  String get gameHintWord466Public => 'একাধিক গ্রাহককে সেবা দেওয়া ক্লাউড মালিকানা মডেল।';

  @override
  String get gameHintWord467Private => 'একক প্রতিষ্ঠানের জন্য নির্ধারিত ক্লাউড মডেল।';

  @override
  String get gameHintWord468Scalability => 'রিসোর্স যোগ করে ক্রমবর্ধমান লোড সামলানোর সক্ষমতা।';

  @override
  String get gameHintWord469Availability => 'প্রয়োজনের সময় সেবা কতটা সহজলভ্য থাকে তার মাত্রা।';

  @override
  String get gameHintWord470Resilience => 'ব্যর্থতা সহ্য করে তা থেকে ঘুরে দাঁড়ানোর সক্ষমতা।';

  @override
  String get gameHintWord471Redundancy => 'একক ব্যর্থতার বিন্দু কমানো অতিরিক্ত উপাদান।';

  @override
  String get gameHintWord472Disaster => 'পুনরুদ্ধার কৌশলের মাধ্যমে মোকাবিলা করা বড় বিভ্রাট।';

  @override
  String get gameHintWord473Recovery => 'ব্যর্থতার পর সেবা বা ডেটা ফিরিয়ে আনা।';

  @override
  String get gameHintWord474Replicate => 'ডেটা বা ওয়ার্কলোড অন্য স্থানে কপি করা।';

  @override
  String get gameHintWord475Snapshotting => 'ডেটা বা সিস্টেম অবস্থার নির্দিষ্ট সময়ের কপি নেওয়া।';

  @override
  String get gameHintWord476Restore => 'সংরক্ষিত কপি থেকে ডেটা ফিরিয়ে আনার অপারেশন।';

  @override
  String get gameHintWord477Residency => 'সংরক্ষিত ডেটার ভৌগোলিক অবস্থান নির্ধারণকারী প্রয়োজনীয়তা।';

  @override
  String get gameHintWord478Compliance => 'প্রয়োজনীয় বিধিমালা ও প্রাতিষ্ঠানিক নিয়ন্ত্রণ মেনে চলা।';

  @override
  String get gameHintWord479Governance => 'প্রযুক্তি ব্যবহার নিয়ন্ত্রণকারী নীতি ও প্রক্রিয়া।';

  @override
  String get gameHintWord480Audit => 'রেকর্ডকৃত কার্যকলাপ ও সম্মতির প্রমাণের পর্যালোচনা।';

  @override
  String get gameHintWord481Token => 'অনুমোদন বা পরিচয় প্রকাশকারী ক্রেডেনশিয়াল বা প্রতীক।';

  @override
  String get gameHintWord482Oauth => 'অর্পিত অ্যাক্সেসের সুযোগ দেওয়া অনুমোদন কাঠামো।';

  @override
  String get gameHintWord483Saml => 'প্রাতিষ্ঠানিক সিঙ্গেল সাইন-অনে প্রচলিত XML-ভিত্তিক স্ট্যান্ডার্ড।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell পাইপলাইনে ব্যবহৃত বিশেষায়িত কমান্ড।';

  @override
  String get gameHintWord485Algorithm => 'গাণিতিক সমস্যা সমাধানের নির্ধারিত ধাপের ক্রম।';

  @override
  String get gameHintWord486Key => 'এনক্রিপশন নিয়ন্ত্রণ বা সংরক্ষিত ডেটা শনাক্ত করতে ব্যবহৃত মান।';

  @override
  String get gameHintWord487Alias => 'শেল কমান্ড বা রিসোর্সের বিকল্প নাম।';

  @override
  String get gameHintWord488Amend => 'সাম্প্রতিকতম কমিট প্রতিস্থাপনকারী Git কমিট অপশন।';

  @override
  String get gameHintWord489Allsigned => 'স্বাক্ষরিত স্ক্রিপ্ট আবশ্যক করা PowerShell এক্সিকিউশন নীতি।';

  @override
  String get gameHintWord490Remotesigned => 'ডাউনলোড করা স্ক্রিপ্টে স্বাক্ষর আবশ্যক করা PowerShell নীতি।';

  @override
  String get gameHintWord491Acl => 'ব্যবহারকারী বা সিস্টেমের অনুমতি নির্ধারণকারী তালিকা।';

  @override
  String get gameHintWord492Uid => 'Unix ব্যবহারকারীকে দেওয়া সাংখ্যিক শনাক্তকারী।';

  @override
  String get gameHintWord493Setgid => 'চালানো বা উত্তরাধিকারের সময় গ্রুপ পরিচয়কে প্রভাবিত করা অনুমতি বিট।';

  @override
  String get gameHintWord494Setfacl => 'ফাইল অ্যাক্সেস কন্ট্রোল লিস্ট নির্ধারণ করা Linux কমান্ড।';

  @override
  String get gameHintWord495Isolation => 'ওয়ার্কলোডগুলোকে পরস্পরের ক্ষতি করতে না দেওয়া বিভাজন।';

  @override
  String get gameHintWord496Sighup => 'প্রায়ই কনফিগারেশন পুনরায় লোডের অনুরোধে ব্যবহৃত Unix হ্যাংআপ সিগন্যাল।';

  @override
  String get gameHintWord497Sigint => 'সাধারণত Control-C দিয়ে তৈরি হওয়া Unix ইন্টারাপ্ট সিগন্যাল।';

  @override
  String get gameHintWord498Sigstop => 'প্রসেস বন্ধ না করে থামিয়ে রাখা Unix সিগন্যাল।';

  @override
  String get gameHintWord499Secrets => 'পাসওয়ার্ড ও অ্যাক্সেস কীর মতো সংবেদনশীল মান।';

  @override
  String get gameHintWord500Secure => 'অননুমোদিত অ্যাক্সেস থেকে সুরক্ষিত সংযোগ বোঝায়।';

  @override
  String get fontSettingsTitle => 'ফন্ট';

  @override
  String get fontChangeFont => 'ফন্ট পরিবর্তন করুন';

  @override
  String get fontSystemDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get fontPreview => 'প্রিভিউ';

  @override
  String get fontPreviewSample => 'একটি একটি প্রশ্নে DevOps শিখুন';

  @override
  String get fontSelected => 'নির্বাচিত';

  @override
  String get fontLatinOnlyNote => 'কাস্টম ফন্ট ল্যাটিন অক্ষরে প্রযোজ্য। অন্যান্য লিপি আপনার ডিভাইসের ফন্টেই থাকবে।';

  @override
  String get fontDescSystem => 'আপনার ডিভাইসের অন্তর্নির্মিত ফন্ট';

  @override
  String get fontDescGeometric => 'জ্যামিতিক স্যান্স-সেরিফ';

  @override
  String get fontDescGeometricRounded => 'জ্যামিতিক গোলাকার স্যান্স-সেরিফ';

  @override
  String get fontDescFriendly => 'বন্ধুত্বপূর্ণ স্যান্স-সেরিফ';

  @override
  String get fontDescCondensed => 'সংকুচিত';

  @override
  String get fontDescRounded => 'গোলাকার স্যান্স-সেরিফ';

  @override
  String get fontDescRoundedDisplay => 'গোলাকার ডিসপ্লে';

  @override
  String gameScene3dScene(String value1) {
    return '3D দৃশ্য $value1';
  }
}
