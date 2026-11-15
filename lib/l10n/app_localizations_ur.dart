// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTour => 'ایپ کی سیر';

  @override
  String get skipTour => 'سیر چھوڑیں';

  @override
  String get finishTour => 'سیر مکمل کریں';

  @override
  String tourStep(int current, int total) {
    return 'مرحلہ $current / $total';
  }

  @override
  String get tourMenuTitle => 'نیویگیشن مینو';

  @override
  String get tourSearch => 'متعلقہ کوئز کی اقسام تلاش کرنے کے لیے یہاں موضوع لکھیں۔';

  @override
  String get tourCategory => 'مخلوط کوئز کے لیے DevOps پر ٹیپ کریں۔ دوسری اقسام میں سوالات کے سیٹ ہیں۔ بعد میں پڑھنے کے لیے سوالات بک مارک کریں۔';

  @override
  String get tourMenu => 'نیویگیشن مینو کھولنے کے لیے اس بٹن پر ٹیپ کریں۔';

  @override
  String get tourLearning => 'کارڈز کے لیے سیکھنا کھولیں۔ کسی بھی سمت سوائپ کریں، شفل کریں، خودکار تبدیلی چلائیں یا کارڈ بک مارک کریں۔';

  @override
  String get tourGames => 'کھیل کھیل کر پوائنٹس کمائیں۔ لیول والے کھیلوں میں ہر مکمل لیول کے 100 پوائنٹس ملتے ہیں؛ اشارے کی قیمت 20 پوائنٹس ہے۔';

  @override
  String get tourAchievements => 'اپنی کامیابیاں یہاں دیکھیں۔ نئی کامیابیاں اور دستیاب تھیمز پاپ اپ میں بتائی جاتی ہیں۔';

  @override
  String get tourSettings => 'زبان، تھیم اور آواز منتخب کریں۔ بک مارکس کے لیے محفوظ کردہ ڈیٹا یا یہ گائیڈ دوبارہ دیکھنے کے لیے ایپ کی سیر کھولیں۔';

  @override
  String get achievementUnlocked => 'کامیابی ان لاک ہو گئی!';

  @override
  String get themeUnlocked => 'نئی تھیم دستیاب ہے!';

  @override
  String get themeUnlockedMessage => 'اب آپ ترتیبات > تھیمز میں یہ تھیم منتخب کر سکتے ہیں۔';

  @override
  String get gameSounds => 'کھیل کی آوازیں';

  @override
  String get gameSoundsDescription => 'کھیلوں اور کوئز کے صوتی اثرات۔ ڈیوائس کی آواز اور سائلنٹ موڈ چیک کریں۔';

  @override
  String get testSound => 'آواز آزمائیں';

  @override
  String get soundSettingBusy => 'براہ کرم انتظار کریں...';

  @override
  String get soundSettingError => 'آواز کی ترتیب لوڈ یا محفوظ نہیں ہو سکی۔ دوبارہ کوشش کریں۔';

  @override
  String get soundPlaybackError => 'آواز نہیں چل سکی۔ ڈیوائس یا براؤزر کی آڈیو ترتیبات چیک کریں۔';

  @override
  String get saveData => 'محفوظ کردہ ڈیٹا';

  @override
  String get learningTranslationUnavailable => 'اس کارڈ کا ابھی منتخب کردہ زبان میں ترجمہ نہیں ہوا ہے۔';

  @override
  String get saveQuestion => 'سوال محفوظ کریں';

  @override
  String defaultPortQuestion(String service) {
    return '$service کا ڈیفالٹ پورٹ کیا ہے؟';
  }

  @override
  String get removeSavedItem => 'محفوظ کردہ سے ہٹائیں';

  @override
  String get noSavedData => 'ابھی کچھ محفوظ نہیں کیا گیا۔ سیکھنے کے کارڈز یا کوئز کے سوالات بک مارک کریں۔';

  @override
  String get savedDataError => 'محفوظ کردہ ڈیٹا لوڈ یا اپ ڈیٹ نہیں ہو سکا۔ دوبارہ کوشش کریں۔';

  @override
  String get savedItemUnavailable => 'یہ محفوظ کردہ آئٹم اب دستیاب نہیں ہے۔';

  @override
  String get correctAnswer => 'درست جواب';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get certificates => 'سرٹیفکیٹس';

  @override
  String get whatsNew => 'نیا کیا ہے';

  @override
  String get settings => 'ترتیبات';

  @override
  String get darkMode => 'ڈارک موڈ';

  @override
  String get lightMode => 'لائٹ موڈ';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'کوئز شروع کریں';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'زمرہ بدلیں';

  @override
  String get dailyQuiz => 'روزانہ کوئز';

  @override
  String get dailyQuizCompleted => 'روزانہ کوئز مکمل';

  @override
  String get dailyQuizCompletedMessage => 'آپ آج کا روزانہ کوئز مکمل کر چکے ہیں۔ نئے چیلنج کے لیے کل آئیں!';

  @override
  String get leaderboard => 'لیڈر بورڈ';

  @override
  String get shareApp => 'ایپ شیئر کریں';

  @override
  String get rateApp => 'ایپ کی درجہ بندی کریں';

  @override
  String get about => 'تعارف';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get home => 'ہوم';

  @override
  String get games => 'کھیل';

  @override
  String get referAndEarn => 'دعوت دیں اور کمائیں';

  @override
  String get themes => 'تھیمز';

  @override
  String get version => 'ورژن';

  @override
  String get developer => 'ڈویلپر';

  @override
  String get contact => 'رابطہ';

  @override
  String get learning => 'سیکھنا';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'مجھ سے رابطہ کریں';

  @override
  String get aboutDescription => 'DevOps Quiz کے ساتھ Linux، Docker، Kubernetes اور دیگر DevOps موضوعات سیکھ کر انٹرویوز اور سرٹیفکیٹس کی تیاری کریں۔';

  @override
  String get quizResult => 'کوئز کا نتیجہ';

  @override
  String get outstanding => 'شاندار!';

  @override
  String get greatJob => 'بہت خوب!';

  @override
  String get goodEffort => 'اچھی کوشش!';

  @override
  String get keepPracticing => 'مشق جاری رکھیں!';

  @override
  String get dontGiveUp => 'ہمت نہ ہاریں!';

  @override
  String get shareMessage1 => 'میرا اسکور';

  @override
  String get shareMessage2 => 'DevOps کوئز میں!';

  @override
  String get downloadApp => 'ایپ ڈاؤن لوڈ کریں:';

  @override
  String get score => 'اسکور';

  @override
  String get points => 'پوائنٹس';

  @override
  String get percentage => 'فیصد';

  @override
  String get bonus => 'بونس';

  @override
  String get perfectScoreBonus => 'مکمل اسکور بونس';

  @override
  String get shareScore => 'اسکور شیئر کریں';

  @override
  String get restartQuiz => 'کوئز دوبارہ شروع کریں';

  @override
  String get backToCategories => 'زمروں میں واپس جائیں';

  @override
  String get greatProgress => 'بہت خوب! آپ اچھی ترقی کر رہے ہیں۔';

  @override
  String get practiceMore => 'اچھی کوشش! مزید مشق سے اسکور بہتر ہوگا۔';

  @override
  String get keepLearning => 'سیکھتے رہیں اور دوبارہ کوشش کریں۔';

  @override
  String get everyExpertStarted => 'ہر ماہر ابتدا میں سیکھنے والا تھا۔ مشق جاری رکھیں!';

  @override
  String get quizInstructions => 'کوئز کی ہدایات';

  @override
  String get instruction1 => 'ہر سیٹ میں 25 سوالات ہیں۔';

  @override
  String get instruction2 => 'ہر سوال کے لیے 30 سیکنڈ ہیں۔';

  @override
  String get instruction3 => 'سبز = درست جواب۔';

  @override
  String get instruction4 => 'سرخ = غلط جواب۔';

  @override
  String get instruction5 => 'جواب تبدیل نہیں کیا جا سکتا۔';

  @override
  String get instruction6 => 'پیچھے بٹن صرف جائزے کے لیے ہے۔';

  @override
  String get instruction7 => 'مکمل ہونے پر اسکور دکھایا جائے گا۔';

  @override
  String get instruction8 => 'ہر صحیح جواب پر 10 پوائنٹس ملتے ہیں۔';

  @override
  String excellentPerformance(Object expert) {
    return 'بہترین کارکردگی! آپ ایک $expert ہیں۔';
  }

  @override
  String get selectCategory => 'زمرہ منتخب کریں';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'سیٹ منتخب کریں';

  @override
  String get set => 'سیٹ';

  @override
  String get questions => 'سوالات';

  @override
  String get noScoresYet => 'ابھی کوئی اسکور نہیں';

  @override
  String get pointsShort => 'پوائنٹس';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz میں خوش آمدید';

  @override
  String hiUser(String name) {
    return 'ہیلو $name';
  }

  @override
  String get challengeMode => 'چیلنج موڈ';

  @override
  String get challenge => 'چیلنج';

  @override
  String get question => 'سوال';

  @override
  String get reward => 'انعام';

  @override
  String get survivalMode => 'سروائیول موڈ';

  @override
  String get speedChallenge => 'رفتار کا چیلنج';

  @override
  String get dailyChallenge => 'روزانہ چیلنج';

  @override
  String get ultimateChallenge => 'آخری چیلنج';

  @override
  String get timeLeft => 'باقی وقت';

  @override
  String get completed => 'مکمل';

  @override
  String get locked => 'مقفل';

  @override
  String get back => 'پیچھے';

  @override
  String get next => 'اگلا';

  @override
  String get submit => 'جمع کریں';

  @override
  String get achievements => 'کامیابیاں';

  @override
  String get streak => 'تسلسل';

  @override
  String get days => 'دن';

  @override
  String get tomorrowsReward => 'کل کا انعام';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 میرا اسکور $score/$totalQuestions #DevOps Quiz!\n\n🏆 پوائنٹس: $earnedPoints\n🔥 بونس: $bonusPoints\n📊 فیصد: $percentage%\n\nایپ ڈاؤن لوڈ کریں:';
  }

  @override
  String get gameUiSpinWheel => 'پہیہ گھمائیں';

  @override
  String get gameUiSpinAndWinBonusPoints => 'پہیہ گھمائیں اور بونس پوائنٹس جیتیں';

  @override
  String get gameUiScratchCard => 'سکریچ کارڈ';

  @override
  String get gameUiScratchToRevealAReward => 'انعام ظاہر کرنے کے لیے کھرچیں';

  @override
  String get gameUiLuckySlots => 'لکی سلاٹس';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'سلاٹس گھمائیں اور پوائنٹس جیتیں';

  @override
  String get gameUiMysteryDeal => 'پراسرار ڈیل';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ایک پراسرار باکس چنیں اور جواب دیں';

  @override
  String get gameUiMemoryMatch => 'میموری میچ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps کے جوڑے ملائیں';

  @override
  String get gameUiWordGuess => 'لفظ کا اندازہ';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'مختلف لیولز میں DevOps کے الفاظ کا اندازہ لگائیں';

  @override
  String get gameUiFindWords => 'الفاظ تلاش کریں';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'گرڈ میں چھپی ہوئی DevOps اصطلاحات تلاش کریں';

  @override
  String get gameUiSpotTheDifference => 'فرق تلاش کریں';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'دو تصویری مناظر کے درمیان پانچ تبدیلیاں تلاش کریں';

  @override
  String get gameUiJigsawPuzzle => 'جِگسا پزل';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'مشترکہ HD جانوروں اور قدرتی مناظر کی تصاویر دوبارہ جوڑیں';

  @override
  String get gameUiHighOrLow => 'زیادہ یا کم';

  @override
  String get gameUiBuildAStreak => 'مسلسل کامیابیوں کا سلسلہ بنائیں';

  @override
  String get gameUiTrueOrFalseBlitz => 'صحیح یا غلط بلٹز';

  @override
  String get gameUiQuickAnswerQuiz => 'فوری جواب کوئز';

  @override
  String get gameUiCommandMatch => 'کمانڈ میچ';

  @override
  String get gameUiMatchCommandsToMeanings => 'کمانڈز کو ان کے معنی سے ملائیں';

  @override
  String get gameUiPortMaster => 'پورٹ ماسٹر';

  @override
  String get gameUiGuessDefaultPorts => 'ڈیفالٹ پورٹس کا اندازہ لگائیں';

  @override
  String get gameUiTicTacToe => 'ٹک ٹیک ٹو';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X صفر اور کراس کمپیوٹر کے ساتھ';

  @override
  String get gameUiConnectFour => 'کنیکٹ فور';

  @override
  String get gameUiDropFourDiscs => 'چار ڈسکس گرائیں';

  @override
  String get gameUiLudo => 'لوڈو';

  @override
  String get gameUiRaceAgainstBots => 'بوٹس کے خلاف دوڑ لگائیں';

  @override
  String get gameUiChess => 'شطرنج';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'شطرنج کی بساط، جائز چالیں، دو کھلاڑی';

  @override
  String get gameUiSnakeAndLadders => 'سانپ اور سیڑھی';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'پانسے کا بورڈ، سانپ اور سیڑھیاں، دو کھلاڑی';

  @override
  String get gameUiGames => 'گیمز 🎮';

  @override
  String get gameUiPlayEarn => 'کھیلیں اور کمائیں';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'گیمز کھیلیں اور بونس پوائنٹس کمائیں!';

  @override
  String get gameUiSearchGames => 'گیمز تلاش کریں';

  @override
  String get gameUiClearSearch => 'تلاش صاف کریں';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" سے کوئی گیم مطابقت نہیں رکھتی';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'پہیہ گھمائیں اور بونس پوائنٹس جیتیں۔';

  @override
  String get gameUiScratchToRevealYourReward => 'اپنا انعام ظاہر کرنے کے لیے کھرچیں۔';

  @override
  String get gameUiRollTheSlotsWinPoints => 'سلاٹس گھمائیں اور پوائنٹس جیتیں۔';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ایک پراسرار باکس چنیں اور پوائنٹس جیتنے کے لیے درست جواب دیں۔';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'پوائنٹس کمانے کے لیے DevOps کے جوڑے ملائیں۔';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 کوششوں میں DevOps اصطلاح کا اندازہ لگائیں۔';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'گرڈ میں چھپی ہوئی DevOps اصطلاحات تلاش کریں۔';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 لیولز میں DevOps کے الفاظ تلاش کرنے کے لیے سوائپ کریں۔';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'دو تصویری مناظر کے درمیان پانچ تبدیلیاں تلاش کریں۔';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'مشترکہ HD جانوروں اور قدرتی مناظر کی تصاویر دوبارہ جوڑیں۔';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'مسلسل کامیابیوں کا سلسلہ بنائیں اور اپنے پوائنٹس محفوظ کریں۔';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'فوری جوابات کے ساتھ گھڑی کو ہرائیں۔';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'صحیح یا غلط بلٹز 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'کمانڈز کو ان کے کام سے ملائیں۔';

  @override
  String get gameUiCommandMatch670a76e => 'کمانڈ میچ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 زندگیوں کے ساتھ ڈیفالٹ پورٹس کا اندازہ لگائیں۔';

  @override
  String get gameUiPortMaster8f5fd42 => 'پورٹ ماسٹر 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'کمپیوٹر کے خلاف O/X کھیلیں۔';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'جیتنے کے لیے ایک قطار میں چار ڈسکس گرائیں۔';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'اپنی گوٹیوں کو تین بوٹس کے خلاف دوڑائیں۔';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'جائز چالوں کے ساتھ مقامی دو کھلاڑیوں کی شطرنج۔';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'دو کھلاڑیوں کا جائز شطرنج میچ کھیلیں۔';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'دو کھلاڑیوں کا پانسے کا بورڈ گیم۔';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 تک دوڑ لگائیں۔ سیڑھیاں چڑھیں اور سانپوں سے بچیں۔';

  @override
  String get gameUiPlay => 'کھیلیں';

  @override
  String get gameUiWheelStopped => 'پہیہ رک گیا!';

  @override
  String get gameUiYourRewardIs => 'آپ کا انعام ہے';

  @override
  String get gameUiPOINTS => 'پوائنٹس';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'یہ انعام حاصل کرنے کے لیے کوئز کے 1 سوال کا درست جواب دیں۔';

  @override
  String get gameUiWrongAnswerRewardLost => 'غلط جواب = انعام ضائع۔';

  @override
  String get gameUiAnswerQuestion => 'سوال کا جواب دیں';

  @override
  String get gameUiSpinWheele449982 => '🎡 پہیہ گھمائیں';

  @override
  String get gameUiDailySpin => 'روزانہ اسپن';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'پہیہ گھمائیں، پھر اپنا انعام حاصل کرنے کے لیے ایک سوال کا جواب دیں!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'آپ آج کا اسپن پہلے ہی استعمال کر چکے ہیں۔';

  @override
  String get gameUiSpinning => 'گھوم رہا ہے...';

  @override
  String get gameUiSPINNOW => 'ابھی گھمائیں';

  @override
  String get gameUiCOMEBACKTOMORROW => 'کل دوبارہ آئیں';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'آج کا انعام: ⭐ $value1 پوائنٹس';
  }

  @override
  String get gameUiBackToGames => 'گیمز پر واپس جائیں';

  @override
  String get gameUiSPIN => 'گھمائیں';

  @override
  String get gameUiRewardRevealed => 'انعام ظاہر ہو گیا!';

  @override
  String get gameUiYouFound => 'آپ کو ملا';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ سکریچ کارڈ';

  @override
  String get gameUiDailyScratch => 'روزانہ سکریچ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'آج کا انعام ظاہر کرنے کے لیے کارڈ کھرچیں!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'آپ آج کا سکریچ کارڈ پہلے ہی استعمال کر چکے ہیں۔';

  @override
  String get gameUiAlreadyScratched => 'پہلے ہی کھرچا جا چکا ہے';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'ایک اور انعام کے لیے کل دوبارہ آئیں۔';

  @override
  String get gameUiYouRevealed => 'آپ نے ظاہر کیا';

  @override
  String get gameUiSCRATCHHERE => 'یہاں کھرچیں  👆';

  @override
  String get gameUiJACKPOT777 => 'جیک پاٹ 777!';

  @override
  String get gameUiLucky777 => 'خوش نصیب 777!';

  @override
  String get gameUiYourReward => 'آپ کا انعام';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 لکی سلاٹس';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'سلاٹس گھمائیں، پھر انعام حاصل کرنے کے لیے ایک سوال کا جواب دیں!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'آپ آج پہلے ہی کھیل چکے ہیں۔';

  @override
  String get gameUiSPINNING => 'گھوم رہا ہے...';

  @override
  String get gameUiROLLNOW => 'ابھی رول کریں';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 جیک پاٹ! 777 پوائنٹس دستیاب ہیں!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'میسٹری ڈیل کی حیثیت چیک نہیں کی جا سکی: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'باکس $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 پوائنٹس';
  }

  @override
  String get gameUiStartQuestion => 'سوال شروع کریں';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 میسٹری ڈیل';

  @override
  String get gameUiMysteryDealCompleted => 'میسٹری ڈیل مکمل ہو گئی!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'آپ آج میسٹری ڈیل پہلے ہی کھیل چکے ہیں۔';

  @override
  String get gameUiTodayYouWon => 'آج آپ نے جیتا';

  @override
  String get gameUiTodaySReward => 'آج کا انعام';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 پوائنٹس';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 پوائنٹس ضائع';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'ایک اور میسٹری باکس کے لیے کل دوبارہ آئیں!';

  @override
  String get gameUiChooseYourMysteryBox => 'اپنا میسٹری باکس منتخب کریں';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ہر باکس میں 10 سے 1000 پوائنٹس کے درمیان ایک چھپا ہوا انعام ہے۔';

  @override
  String get gameUiPickOnlyOneBox => 'صرف ایک باکس چنیں!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'تمام $value1 لیولز مکمل!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'لیول $value1 مکمل!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 چالوں میں مکمل ہوا۔\nآپ نے $value2 پوائنٹس کمائے!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 چالوں میں مکمل ہوا۔\nیہ لیول پہلے ہی مکمل ہو چکا تھا۔';
  }

  @override
  String get gameUiNextLevel => 'اگلا لیول';

  @override
  String get gameUiDone => 'ہو گیا';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'میموری میچ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'تمام 100 لیولز مکمل!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'آپ نے میموری میچ کے تمام لیولز مکمل کر لیے۔ بہت خوب کھیلے!';

  @override
  String get gameUiChooseLevel => 'لیول منتخب کریں';

  @override
  String gameUiMoves(String value1) {
    return 'چالیں: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'لیول $value1 از $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 جوڑے';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'لیول $value1 یاد کریں';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 میل کھاتے جوڑے تلاش کریں';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz کا لوگو';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'باب 1 · بلڈ پائپ لائن بحال کریں';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'باب 2 · کلاؤڈ پلیٹ فارم کو وسعت دیں';

  @override
  String get gameUiChapter3ProtectProduction => 'باب 3 · پروڈکشن کی حفاظت کریں';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'جمع کرانے کے لیے باقی تمام $value1 حروف استعمال کریں۔';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'تمام لیولز مکمل!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'لیول $value1 مکمل!';
  }

  @override
  String get gameUiTryAgain => 'دوبارہ کوشش کریں';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'لفظ $value1 تھا۔ آپ نے $value2 پوائنٹس کمائے۔';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'لفظ $value1 تھا۔ آپ نے $value3 اشارے کے بعد $value2 پوائنٹس کمائے۔';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'لفظ $value1 تھا۔ آپ نے $value3 اشاروں کے بعد $value2 پوائنٹس کمائے۔';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'لفظ $value1 تھا۔ لیول $value2 ابھی آپ کا منتظر ہے۔';
  }

  @override
  String get gameUiFinish => 'ختم کریں';

  @override
  String get gameUiNextLevel254fd73 => 'اگلا لیول';

  @override
  String get gameUiRetryLevel => 'لیول دوبارہ کھیلیں';

  @override
  String get gameUiHowToPlay => 'کھیلنے کا طریقہ';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ہر لیول میں ایک DevOps لفظ ہوتا ہے۔ پانچ حروف سے چھوٹے الفاظ بغیر کسی مفت حرف کے شروع ہوتے ہیں؛ لمبے الفاظ ایک حرف کے ساتھ شروع ہوتے ہیں۔ جواب بنانے کے لیے حروف کا ریک استعمال کریں اور Enter دبائیں۔ اشارے ایک اور حرف ظاہر کرتے ہیں اور آپ کے بیلنس سے 20 پوائنٹس کاٹتے ہیں۔ ہر مکمل لیول پر 100 پوائنٹس ملتے ہیں۔';

  @override
  String get gameUiGotIt => 'سمجھ گیا';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'تمام $value1 لیولز مکمل!';
  }

  @override
  String get gameUiEasy => 'آسان';

  @override
  String get gameUiMedium => 'درمیانہ';

  @override
  String get gameUiHard => 'مشکل';

  @override
  String get gameUiHowToPlay13a6b22 => 'کھیلنے کا طریقہ';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'لیول $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'انعام $value1 پوائنٹس · استعمال شدہ اشارے $value2';
  }

  @override
  String get gameUiHint20Pts => 'اشارہ · −20 پوائنٹس';

  @override
  String get gameUiEnter => 'داخل کریں';

  @override
  String get gameUiDelete => 'حذف کریں';

  @override
  String get gameUiDragThroughAWord => 'لفظ پر سے ڈریگ کریں';

  @override
  String get gameUiDragThroughEachWord => 'ہر لفظ پر سے ڈریگ کریں';

  @override
  String get gameUiReleaseToSelect => 'منتخب کرنے کے لیے چھوڑ دیں';

  @override
  String gameUiFound(String value1) {
    return '$value1 مل گیا';
  }

  @override
  String get gameUiNoWordThere => 'وہاں کوئی لفظ نہیں';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 پہلے ہی مل چکا ہے';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 تلاش کریں';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'تمام لیولز مکمل!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'آپ کو ہر لفظ مل گیا اور آپ نے $value1 پوائنٹس کمائے۔';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'آپ کو ہر لفظ مل گیا۔ یہ لیول پہلے ہی مکمل ہو چکا تھا۔';

  @override
  String get gameUiAll500LevelsComplete => 'تمام 500 لیولز مکمل!';

  @override
  String get gameUiReviewLevels => 'لیولز کا جائزہ لیں';

  @override
  String gameUiLeft(String value1) {
    return '$value1 باقی';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 پوائنٹس';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'پیش رفت محفوظ نہیں ہو سکی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'آپ نے $value1 پوائنٹس کمائے!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'آپ یہ تصویر پہلے ہی مکمل کر چکے ہیں۔ دوبارہ کھیلنے پر کوئی اضافی پوائنٹس نہیں ملیں گے۔';

  @override
  String get gameUiYouCompletedEveryPicture => 'آپ نے ہر تصویر مکمل کر لی!';

  @override
  String get gameUiLevels => 'لیولز';

  @override
  String get gameUiPictureB => 'تصویر B';

  @override
  String get gameUiPictureA => 'تصویر A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'تصویر لوڈ نہیں ہو سکی۔ دوبارہ کوشش کریں';

  @override
  String get gameUiResetZoom => 'زوم ری سیٹ کریں';

  @override
  String get gameUiZoomBothPictures => 'دونوں تصاویر زوم کریں';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'اشارہ · فی اشارہ $value1 پوائنٹس';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'پیش رفت لوڈ نہیں ہو سکی۔ دوبارہ کوشش کریں';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'لیول $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'تمام فرق مل گئے!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count فرق تلاش کریں۔ کسی بھی تصویر میں ہر ایک پر ٹیپ کریں۔';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'غلطیاں: $value1  ·  اشارے: $value2 (−$value3 پوائنٹس)  ·  $value4 لیولز مکمل';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'اگلا لیول: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'پزل $value1 مکمل!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'تصویر $value1 چالوں میں مکمل ہوئی۔ آپ نے $value2 پوائنٹس کمائے۔';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'تصویر $value1 چالوں میں مکمل ہوئی۔';
  }

  @override
  String get gameUiNextPuzzle => 'اگلا پزل';

  @override
  String get gameUiAllPuzzlesComplete => 'تمام پزل مکمل';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'پزل کا ٹکڑا $value1 از $value2، درست جگہ پر';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'پزل کا ٹکڑا $value1 از $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'پزل منتخب کریں';

  @override
  String get gameUiShufflePieces => 'ٹکڑوں کو پھینٹیں';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'پزل کی تصویر لوڈ نہیں ہو سکی۔';

  @override
  String get gameUiPreviousPuzzle => 'پچھلا پزل';

  @override
  String gameUiPuzzle(String value1) {
    return 'پزل $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 چالیں';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ٹکڑوں کو آپس میں بدلنے کے لیے گھسیٹیں، یا دو ٹکڑوں پر ٹیپ کریں۔';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 پزل حل ہو گئے  ·  ہر ایک کے $value3 پوائنٹس';
  }

  @override
  String get gameUiGameOver => 'گیم ختم';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'نمبر $value1 تھا۔\nسلسلہ: $value2\nآپ نے $value3 پوائنٹس کمائے!\n\nایک اور موقع کے لیے کل دوبارہ آئیں!';
  }

  @override
  String get gameUiHigherOrLower => 'زیادہ یا کم 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'آج پہلے ہی کھیل چکے ہیں!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'آپ $value1/$value2/$value3 کو کھیلے تھے۔\n\nنیا سلسلہ بنانے کے لیے کل دوبارہ آئیں!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'آپ آج پہلے ہی کھیل چکے ہیں۔\n\nایک اور موقع کے لیے کل دوبارہ آئیں!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 سلسلہ: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ پوائنٹس: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'کیا اگلا نمبر زیادہ ہوگا یا کم؟';

  @override
  String get gameUiLower => 'کم';

  @override
  String get gameUiHigher => 'زیادہ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'صحیح یا غلط بلٹز ⚡';

  @override
  String get gameUiTimeSUp => 'وقت ختم!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'درست جوابات: $value1\nبہترین سلسلہ: $value2\n$value3آپ نے $value4 پوائنٹس کمائے!\n\nایک اور راؤنڈ کے لیے کل دوبارہ آئیں!';
  }

  @override
  String get gameUiStreakBonus20 => 'سلسلے کا بونس: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'کیا دکھایا گیا جواب صحیح ہے یا غلط؟';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 زمروں میں $value1 سوالات';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'آپ کے پاس $value1 سیکنڈ ہیں۔ ہر درست جواب پر $value2 پوائنٹس ملتے ہیں۔ غلط جواب پر $value3 سیکنڈ کم ہو جاتے ہیں۔ 5 کا سلسلہ بنانے پر +20 بونس ملتا ہے۔';
  }

  @override
  String get gameUiRoundTimer => 'راؤنڈ ٹائمر';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 سیکنڈ';
  }

  @override
  String get gameUiStart => 'شروع کریں';

  @override
  String get gameUiTrue => 'صحیح';

  @override
  String get gameUiFalse => 'غلط';

  @override
  String get gameUiCommandMatch26b0e70 => 'کمانڈ میچ 🔗';

  @override
  String get gameUiAllMatched => 'سب مل گئے!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'غلطیاں: $value1\nآپ نے $value2 پوائنٹس کمائے!\n\nنئی کمانڈز کے لیے کل دوبارہ آئیں!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'راؤنڈ $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'کسی کمانڈ پر ٹیپ کریں، پھر اس کے مطلب پر ٹیپ کریں۔';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'اب متعلقہ مطلب پر ٹیپ کریں۔';

  @override
  String get gameUiPortMaster9c730cf => 'پورٹ ماسٹر 🔌';

  @override
  String get gameUiPortMastera796b69 => 'پورٹ ماسٹر!';

  @override
  String get gameUiOutOfLives => 'زندگیاں ختم';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'درست جوابات: $value1\nآپ نے $value2 پوائنٹس کمائے!\n\nایک اور راؤنڈ کے لیے کل دوبارہ آئیں!';
  }

  @override
  String get gameUiYouEarned10Points => 'آپ نے 10 پوائنٹس کمائے!';

  @override
  String get gameUiYouWin => 'آپ جیت گئے!';

  @override
  String gameUiWins(String value1) {
    return '$value1 جیت گیا!';
  }

  @override
  String get gameUiXWins => 'X جیت گیا!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) جیت گیا!';
  }

  @override
  String get gameUiComputerWins => 'کمپیوٹر جیت گیا';

  @override
  String get gameUiOWins => 'O جیت گیا!';

  @override
  String get gameUiPlayer2OWins => 'پلیئر 2 (O) جیت گیا!';

  @override
  String get gameUiItSADraw => 'میچ برابر رہا';

  @override
  String get gameUiYourTurn => 'آپ کی باری';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 کی باری';
  }

  @override
  String get gameUiComputerIsThinking => 'کمپیوٹر سوچ رہا ہے';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'پلیئر $value1 کی چال';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 کی چال';
  }

  @override
  String get gameUiPlayer2ToMove => 'پلیئر 2 کی چال';

  @override
  String get gameUiNewRound => 'نیا راؤنڈ';

  @override
  String get gameUiVsComputer => 'کمپیوٹر کے خلاف';

  @override
  String get gameUi2Players => '2 کھلاڑی';

  @override
  String get gameUiYou => 'آپ';

  @override
  String get gameUiDraws => 'برابر';

  @override
  String get gameUiPlayer2 => 'پلیئر 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'خانہ $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'دوبارہ کھیلیں';

  @override
  String get gameUiConnectFourWin20Points => 'کنیکٹ فور میں جیت: 20 پوائنٹس!';

  @override
  String get gameUiBotWins => 'بوٹ جیت گیا!';

  @override
  String get gameUiRed => 'سرخ';

  @override
  String get gameUiYellow => 'پیلا';

  @override
  String get gameUiBoardFullDraw => 'بورڈ بھر گیا — میچ برابر';

  @override
  String get gameUiBotIsThinking => 'بوٹ سوچ رہا ہے';

  @override
  String get gameUiBotTurn => 'بوٹ کی باری';

  @override
  String get gameUiNewGame => 'نئی گیم';

  @override
  String get gameUiVsBot => 'بوٹ کے خلاف';

  @override
  String get gameUi2Player => '2 کھلاڑی';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'بوٹ کے خلاف کھیلیں · ڈسک گرانے کے لیے کسی کالم پر ٹیپ کریں';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'دو کھلاڑی · ڈسک گرانے کے لیے کسی کالم پر ٹیپ کریں';

  @override
  String gameUiColumn(String value1) {
    return 'کالم $value1';
  }

  @override
  String get gameUiYouRed => 'آپ · سرخ';

  @override
  String get gameUiRedPlayer1 => 'سرخ · پلیئر 1';

  @override
  String get gameUiBotYellow => 'بوٹ · پیلا';

  @override
  String get gameUiYellowPlayer2 => 'پیلا · پلیئر 2';

  @override
  String get gameUiLudoMatchStats => 'لوڈو میچ کے اعداد و شمار';

  @override
  String get gameUiNoCompletedMatchesYet => 'ابھی تک کوئی میچ مکمل نہیں ہوا۔';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'کھیلے $value1  ·  جیتے $value2  ·  ہارے $value3';
  }

  @override
  String get gameUiClose => 'بند کریں';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'لوڈو چیمپئن! آپ نے 50 پوائنٹس کمائے۔';

  @override
  String get gameUiNewLudoGame => 'نئی لوڈو گیم';

  @override
  String get gameUiBotOpponents => 'بوٹ حریف';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'نیا میچ شروع کرنے سے آپ کی محفوظ شدہ گیم تبدیل ہو جائے گی۔';

  @override
  String get gameUiCancel => 'منسوخ کریں';

  @override
  String get gameUiStartGame => 'گیم شروع کریں';

  @override
  String get gameUiPlayerColours => 'کھلاڑیوں کے رنگ';

  @override
  String get gameUiApply => 'لاگو کریں';

  @override
  String get gameUiMatchStats => 'میچ کے اعداد و شمار';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 چیک میٹ سے جیت گیا';
  }

  @override
  String get gameUiBlack => 'کالا';

  @override
  String get gameUiWhite => 'سفید';

  @override
  String get gameUiComputerWinsByCheckmate => 'کمپیوٹر چیک میٹ سے جیت گیا';

  @override
  String get gameUiYouWinByCheckmate => 'آپ چیک میٹ سے جیت گئے';

  @override
  String get gameUiDrawByStalemate => 'اسٹیل میٹ کے باعث میچ برابر';

  @override
  String get gameUiDraw => 'برابر';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · چیک';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'کش مات! آپ نے 50 پوائنٹس حاصل کیے۔';

  @override
  String get gameUiStartANewGame => 'نیا کھیل شروع کریں؟';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'کھلاڑی کا موڈ تبدیل کرنے سے محفوظ شدہ میچ بدل جائے گا۔';

  @override
  String get gameUiComputer => 'کمپیوٹر';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · سفید / کھلاڑی 2 · سیاہ';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'آپ سفید ہیں · کمپیوٹر سیاہ ہے';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (سفید) · کمپیوٹر (سیاہ)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'آپ سیاہ ہیں · کمپیوٹر سفید ہے';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (سیاہ) · کمپیوٹر (سفید)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 پہلے پانسا پھینکے گا';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 دوبارہ پانسا پھینکے گا';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 کی باری ہے پانسا پھینکنے کی';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'سانپ اور سیڑھی میں جیت: 100 پوائنٹس!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'کھلاڑی تبدیل کرنے سے محفوظ شدہ کھیل بدل جائے گا۔';

  @override
  String get gameUiStartANewLevel => 'نیا لیول شروع کریں؟';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'لیول تبدیل کرنے سے محفوظ شدہ کھیل بدل جائے گا۔';

  @override
  String get gameUiChangeLevel => 'لیول تبدیل کریں';

  @override
  String get gameUiPlayers => 'کھلاڑی';

  @override
  String get gameUiPlayAgainstBot => 'بوٹ کے خلاف کھیلیں';

  @override
  String get gameUi3Players => '3 کھلاڑی';

  @override
  String get gameUi4Players => '4 کھلاڑی';

  @override
  String get gameUiLevel1709305 => 'لیول';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'لیول $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 کھلاڑی · لیول $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · پانسا پھینکیں';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 پر $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'سوال لوڈ نہیں ہو سکا: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'درست جواب!';

  @override
  String get gameUiWrongAnswer => 'غلط جواب';

  @override
  String get gameUiYouClaimedYourReward => 'آپ نے اپنا انعام حاصل کر لیا!';

  @override
  String get gameUiAddedToYourTotalPoints => 'آپ کے کل پوائنٹس میں شامل کر دیا گیا۔';

  @override
  String get gameUiTheCorrectAnswerWas => 'درست جواب یہ تھا:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 پوائنٹ کا انعام ضائع ہو گیا۔';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'آپ کے موجودہ پوائنٹس نہیں کاٹے گئے۔';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'کل دوبارہ آئیں اور پھر کوشش کریں۔';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'سوال لوڈ نہیں ہو سکا۔';

  @override
  String get gameUiYourReward677fa6e => 'آپ کا انعام';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 پوائنٹس';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'اسے حاصل کرنے کے لیے درست جواب دیں!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'ایک اور راؤنڈ کے لیے کل دوبارہ آئیں۔';

  @override
  String get gameUiGreen => 'سبز';

  @override
  String get gameUiBlue => 'نیلا';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 سوچ رہا ہے';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ایک مہرہ منتخب کریں';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: پانسا پھینکیں';
  }

  @override
  String gameUiDice(String value1) {
    return 'پانسا $value1';
  }

  @override
  String get gameUiRollDice => 'پانسا پھینکیں';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 مہرہ $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'کھلاڑی $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'بوٹ $value1';
  }

  @override
  String get gameUiBot => 'بوٹ';

  @override
  String get gameUiHintInsufficientPoints => 'اشارہ استعمال کرنے کے لیے آپ کو 20 پوائنٹس درکار ہیں۔';

  @override
  String get gameUiHintPurchaseFailed => 'اشارہ خریدا نہیں جا سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get gameUiChessKing => 'بادشاہ';

  @override
  String get gameUiChessQueen => 'ملکہ';

  @override
  String get gameUiChessRook => 'رخ';

  @override
  String get gameUiChessBishop => 'فیل';

  @override
  String get gameUiChessKnight => 'گھوڑا';

  @override
  String get gameUiChessPawn => 'پیادہ';

  @override
  String get gameUiChessEmpty => 'خالی';

  @override
  String get gameSceneLampAndFlowers => 'چراغ اور پھول';

  @override
  String get gameSceneGardenFriends => 'باغ کے دوست';

  @override
  String get gameSceneUnderwaterExplorers => 'زیرِ آب مہم جو';

  @override
  String get gameSceneOceanOrca => 'سمندری اورکا';

  @override
  String get gameSceneFoxInTheMeadow => 'چراگاہ میں لومڑی';

  @override
  String get gameSceneYellowSubmarine => 'پیلی آبدوز';

  @override
  String get gameSceneTurkeyInTheClearing => 'کھلی جگہ میں ٹرکی';

  @override
  String get gameSceneSafariWateringHole => 'سفاری کا پانی پینے کا مقام';

  @override
  String get gameSceneJungleCompanions => 'جنگل کے ساتھی';

  @override
  String get gameSceneGoldenPuppyGarden => 'سنہری کتے کے بچے کا باغ';

  @override
  String get gameSceneSeaTurtleReef => 'سمندری کچھوے کی چٹان';

  @override
  String get gameSceneCoralReefFriends => 'مرجانی چٹان کے دوست';

  @override
  String get gameSceneSharedClownfish => 'مشترکہ کلاؤن فش';

  @override
  String get gameSceneLittleDinosaur => 'چھوٹا ڈائنوسار';

  @override
  String get gameSceneSafariCompanions => 'سفاری کے ساتھی';

  @override
  String get gameSceneSwirlingFlowers => 'گھومتے ہوئے پھول';

  @override
  String get gameSceneGardenKitten => 'باغ کی بلی کا بچہ';

  @override
  String get gameSceneBlueOcean => 'نیلا سمندر';

  @override
  String get gameSceneCastlePrincess => 'قلعے کی شہزادی';

  @override
  String get gameSceneRedCar => 'سرخ کار';

  @override
  String get gameSceneGardenPuppy => 'باغ کا کتے کا بچہ';

  @override
  String get gameSceneSpaceExplorer => 'خلائی مہم جو';

  @override
  String get gameSceneEnchantedReadingForest => 'جادوئی مطالعے کا جنگل';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps لامتناہی چکر';

  @override
  String get gameSceneAnsible => 'Ansible (اینسیبل)';

  @override
  String get gameSceneAws => 'AWS (اے ڈبلیو ایس)';

  @override
  String get gameSceneAzure => 'Azure (ایزور)';

  @override
  String get gameSceneBashScripting => 'Bash Scripting (باش اسکرپٹنگ)';

  @override
  String get gameSceneDocker => 'Docker (ڈاکر)';

  @override
  String get gameSceneGcp => 'GCP (جی سی پی)';

  @override
  String get gameSceneGit => 'Git (گٹ)';

  @override
  String get gameSceneHybridCloud => 'Hybrid Cloud (ہائبرڈ کلاؤڈ)';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud (آئی بی ایم کلاؤڈ)';

  @override
  String get gameSceneJavascript => 'JavaScript (جاوا اسکرپٹ)';

  @override
  String get gameSceneJenkins => 'Jenkins (جینکنز)';

  @override
  String get gameSceneKubernetes => 'Kubernetes (کبرنیٹس)';

  @override
  String get gameSceneLinux => 'Linux (لینکس)';

  @override
  String get gameSceneMultiCloud => 'Multi Cloud (ملٹی کلاؤڈ)';

  @override
  String get gameSceneNetworking => 'نیٹ ورکنگ';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud (اوریکل کلاؤڈ)';

  @override
  String get gameScenePerl => 'Perl (پرل)';

  @override
  String get gameScenePowershell => 'PowerShell (پاور شیل)';

  @override
  String get gameScenePython => 'Python (پائتھن)';

  @override
  String get gameSceneRuby => 'Ruby (روبی)';

  @override
  String get gameSceneTerraform => 'Terraform (ٹیرافارم)';

  @override
  String get gameSceneWinterFestivalFair => 'سرمائی تہوار کا میلہ';

  @override
  String get gameSceneArmoredHeroCloseUp => 'زرہ پوش ہیرو کا قریبی منظر';

  @override
  String get gameSceneArmoredHeroInCrimson => 'قرمزی رنگ میں زرہ پوش ہیرو';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'گہرے پلومیریا کے پھول';

  @override
  String get gameSceneMangroveBoardwalk => 'مینگروو کا تختہ نما راستہ';

  @override
  String get gameSceneTropicalPalmReflections => 'استوائی کھجور کے عکس';

  @override
  String get gameSceneMaskedFigureInShadow => 'سائے میں نقاب پوش شخصیت';

  @override
  String get gameSceneElectricCompanionAtSunset => 'غروبِ آفتاب پر برقی ساتھی';

  @override
  String get gameSceneTrainerAndFireDragon => 'تربیت کار اور آتشی ڈریگن';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'جواہرات جڑا کشتی کا نقاب';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'سرخ برش اسٹروکس میں پہلوان';

  @override
  String get gameSceneWrestlingChampionSalute => 'کشتی کے چیمپیئن کی سلامی';

  @override
  String get gameSceneMorningAtTheBakery => 'بیکری میں صبح';

  @override
  String get gameSceneGreenhousePottingBench => 'گرین ہاؤس میں گملے لگانے کی میز';

  @override
  String get gameSceneHarborFishingBoat => 'بندرگاہ پر ماہی گیری کی کشتی';

  @override
  String get gameSceneAtticObservatory => 'چھت کے کمرے کی رصد گاہ';

  @override
  String get gameSceneToyMakerSWorkshop => 'کھلونے بنانے والے کی ورکشاپ';

  @override
  String get gameSceneWoodlandCampsite => 'جنگل کا کیمپ';

  @override
  String get gameSceneAfternoonMusicRoom => 'دوپہر کا موسیقی کمرہ';

  @override
  String get gameSceneSeasideIceCreamStand => 'ساحل پر آئس کریم کا اسٹال';

  @override
  String get gameSceneLibraryReadingNook => 'لائبریری کا مطالعے کا گوشہ';

  @override
  String get gameSceneSewingStudio => 'سلائی کا اسٹوڈیو';

  @override
  String get gameSceneFruitMarket => 'پھلوں کی منڈی';

  @override
  String get gameSceneKoiCourtyard => 'کوئی مچھلی کا صحن';

  @override
  String get gameSceneArtistSAtelier => 'فنکار کا اسٹوڈیو';

  @override
  String get gameSceneMountainRailway => 'پہاڑی ریلوے';

  @override
  String get gameSceneCountryKitchen => 'دیہی باورچی خانہ';

  @override
  String get gameScenePotteryWorkshop => 'مٹی کے برتنوں کی ورکشاپ';

  @override
  String get gameSceneBeachPicnic => 'ساحل پر پکنک';

  @override
  String get gameSceneFlowerShop => 'پھولوں کی دکان';

  @override
  String get gameSceneClockmakerSWorkshop => 'گھڑی ساز کی ورکشاپ';

  @override
  String get gameSceneRainyCafeTerrace => 'بارش میں کیفے کی چھت';

  @override
  String get gameSceneCastleHerbGarden => 'قلعے کا جڑی بوٹیوں کا باغ';

  @override
  String get gameSceneClassroomArtCorner => 'کلاس روم کا آرٹ کارنر';

  @override
  String get gameSceneAquariumShop => 'ایکویریم کی دکان';

  @override
  String get gameSceneAutumnLeafCollection => 'خزاں کے پتوں کا ذخیرہ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'چاند تلے تنہا درخت';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'شاخ پر خزاں کا پھول';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'سبز پتوں میں لومڑی';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'للی سے ڈھکی جھیل پر ڈونگا';

  @override
  String get gameSceneDewDropsOnALeaf => 'پتے پر شبنم کے قطرے';

  @override
  String get gameSceneStagInATurquoiseLake => 'فیروزی جھیل میں ہرن';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'نارنجی چاند تلے سائیکل';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'وادی کے اوپر سفید شیر';

  @override
  String get gameSceneTwoTreesInBlueWater => 'نیلے پانی میں دو درخت';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'وفادار کتے کے پاس مچھلی کا شکار';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'پہاڑی جھیل کے کنارے للی کے پھول';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'گلابی دریا کنارے ہرن';

  @override
  String get gameSceneTropicalHutAtSunset => 'غروبِ آفتاب کے وقت اشنکٹبندی جھونپڑی';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'الپائن وادی کو دیکھتی ہوئی لومڑی';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'پراسرار باغ کے بیچ سے غروبِ آفتاب';

  @override
  String get learningControlTitle => 'DevOps سیکھیں';

  @override
  String get learningControlAllCategories => 'تمام زمرے';

  @override
  String get learningControlSearchCards => 'کارڈ تلاش کریں';

  @override
  String get learningControlClearSearch => 'تلاش صاف کریں';

  @override
  String get learningControlCategory => 'زمرہ';

  @override
  String get learningControlShowAll => 'تمام کارڈ دکھائیں';

  @override
  String learningControlShowSaved(int count) {
    return 'محفوظ کردہ کارڈ دکھائیں ($count)';
  }

  @override
  String get learningControlShuffleOff => 'شفل بند کریں';

  @override
  String get learningControlShuffleOn => 'کارڈ شفل کریں';

  @override
  String get learningControlAutoOff => 'آٹو سوائپ بند کریں';

  @override
  String get learningControlAutoOn => 'ہر 10 سیکنڈ بعد آٹو سوائپ';

  @override
  String get learningControlNoSaved => 'ابھی کوئی کارڈ محفوظ نہیں کیا گیا';

  @override
  String get learningControlNoMatches => 'کوئی مماثل کارڈ نہیں ملا';

  @override
  String get learningControlResetFilters => 'فلٹر ری سیٹ کریں';

  @override
  String get learningControlPrevious => 'پچھلا';

  @override
  String get learningControlNext => 'اگلا';

  @override
  String get learningControlProgress => 'پیش رفت';

  @override
  String get learningControlRemoveSaved => 'محفوظ شدہ سے ہٹائیں';

  @override
  String get learningControlSaveCard => 'کارڈ محفوظ کریں';

  @override
  String get learningControlExample => 'مثال';

  @override
  String get learningControlCopyExample => 'مثال کاپی کریں';

  @override
  String get learningControlExampleCopied => 'مثال کاپی ہو گئی';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'لیول $value1 مکمل ہو گیا';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'لیول $value1 کھیلیں';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'انلاک کرنے کے لیے لیول $value1 مکمل کریں';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'روزانہ لاگ اِن بونس';

  @override
  String get sharedDialogThanksForComingBack => 'واپس آنے کا شکریہ!';

  @override
  String get sharedDialogDailyRewardAdded => 'آپ کا روزانہ انعام آپ کے کل پوائنٹس میں شامل کر دیا گیا ہے۔';

  @override
  String get sharedDialogAwesome => 'شاندار!';

  @override
  String get accountWelcomeGuest => 'مہمان';

  @override
  String get accountWelcomeGuestUser => 'مہمان صارف';

  @override
  String get accountWelcomeUser => 'صارف';

  @override
  String get accountWelcomePlayingAsGuest => 'بطور مہمان کھیل رہے ہیں';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google اکاؤنٹ مربوط کریں';

  @override
  String get accountWelcomeGoogleConnected => 'Google اکاؤنٹ کامیابی سے مربوط ہو گیا! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'سائن ان منسوخ کر دیا گیا۔';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'مربوط کرنے میں ناکامی: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'سائن آؤٹ کریں';

  @override
  String get accountWelcomeSignOutTitle => 'سائن آؤٹ کریں؟';

  @override
  String get accountWelcomeSignOutMessage => 'کیا آپ واقعی سائن آؤٹ کرنا چاہتے ہیں؟ اپنی محفوظ کردہ پیش رفت تک رسائی کے لیے آپ کو دوبارہ سائن ان کرنا ہوگا۔';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'سائن آؤٹ ناکام رہا: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ایپ ڈیٹا ری سیٹ کریں؟';

  @override
  String get accountWelcomeResetAppMessage => 'اس سے آپ کے تمام پوائنٹس، اسٹریکس، گیم ہسٹری اور ترتیبات مستقل طور پر حذف ہو جائیں گی۔ آپ کو سائن آؤٹ کر کے ابتدائی اسکرین پر واپس بھیج دیا جائے گا۔ اسے واپس نہیں کیا جا سکتا۔';

  @override
  String get accountWelcomeResetEverything => 'سب کچھ ری سیٹ کریں';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ری سیٹ ناکام رہا: $value1';
  }

  @override
  String get accountWelcomeCancel => 'منسوخ کریں';

  @override
  String get accountWelcomeResetAppData => 'ایپ ڈیٹا ری سیٹ کریں';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'تمام پوائنٹس، اسٹریکس اور ترتیبات صاف کریں';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ایپ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'ترجمہ ابھی دستیاب نہیں ہے';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google کے ساتھ جاری رکھیں';

  @override
  String get accountWelcomeSigningIn => 'سائن ان ہو رہا ہے...';

  @override
  String get accountWelcomeOr => 'یا';

  @override
  String get accountWelcomeContinueAsGuest => 'بطور مہمان جاری رکھیں';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'آپ بعد میں اپنے پروفائل سے سائن ان کر سکتے ہیں۔';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'آپ بطور مہمان شروع کر سکتے ہیں اور بعد میں سائن ان کر سکتے ہیں۔';

  @override
  String get accountWelcomeGreetingGuest => 'خوش آمدید';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'خوش آمدید، $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google سائن ان مکمل ہو گیا، لیکن کوئی صارف اکاؤنٹ واپس نہیں ملا۔';

  @override
  String get accountWelcomeErrorEmailExists => 'اس ای میل پر پہلے سے کسی دوسرے سائن ان طریقے کے ساتھ اکاؤنٹ موجود ہے۔';

  @override
  String get accountWelcomeErrorCredentialInUse => 'یہ Google اکاؤنٹ پہلے سے کسی دوسرے اکاؤنٹ سے منسلک ہے۔';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google توثیقی اسناد غلط ہیں یا ان کی مدت ختم ہو چکی ہے۔';

  @override
  String get accountWelcomeErrorUserDisabled => 'یہ اکاؤنٹ غیر فعال کر دیا گیا ہے۔';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google سائن ان فی الحال فعال نہیں ہے۔';

  @override
  String get accountWelcomeErrorNetwork => 'نیٹ ورک کی خرابی۔ براہ کرم اپنا انٹرنیٹ کنکشن چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get accountWelcomeErrorTooManyRequests => 'سائن ان کی بہت زیادہ کوششیں کی گئیں۔ براہ کرم انتظار کریں اور دوبارہ کوشش کریں۔';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'خرابی کی کوئی اضافی معلومات نہیں ہیں۔';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google سائن ان ناکام رہا۔\n\nکوڈ: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google سائن ان کی خرابی:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'بطور مہمان جاری رکھنے سے قاصر۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google سائن ان جلد دستیاب ہوگا۔';

  @override
  String get accountWelcomeLoginTagline => 'سیکھیں • مشق کریں • مقابلہ کریں • کمائیں';

  @override
  String get accountWelcomeCountryRegion => 'ملک / علاقہ';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'ملک / علاقہ: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ملک تلاش کریں';

  @override
  String get accountWelcomeCountryNotSelected => 'منتخب نہیں کیا گیا';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz کیوں؟';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ مشقی سوالات';

  @override
  String get accountWelcomeFeatureLanguages => 'کثیر لسانی معاونت';

  @override
  String get accountWelcomeFeatureStreaks => 'اسٹریکس اور لیڈر بورڈز';

  @override
  String get accountWelcomeFeatureGames => 'گیمز اور چیلنجز';

  @override
  String get accountWelcomeFeatureCloud => 'کلاؤڈ اور DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'بونس اور انعامات';

  @override
  String get accountWelcomePracticeOnTheGo => 'چلتے پھرتے مشق کریں';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ایپ انسٹال کریں اور کہیں بھی آف لائن سیکھیں۔';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play پر حاصل کریں';

  @override
  String achLocStreakTitle(String days) {
    return '$days دن کا سلسلہ';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days دن کا سلسلہ برقرار رکھیں۔';
  }

  @override
  String get achLocYearStreakTitle => '1 سال کا سلسلہ';

  @override
  String get achLocFirstQuizTitle => 'پہلا کوئز';

  @override
  String get achLocFirstQuizDescription => 'اپنا پہلا کوئز مکمل کریں۔';

  @override
  String get achLocQuiz10Title => 'کوئز ایکسپلورر';

  @override
  String get achLocQuiz10Description => '10 کوئز مکمل کریں۔';

  @override
  String get achLocPoints1000Title => '1000 پوائنٹس';

  @override
  String get achLocPoints1000Description => 'Quiz میں کل 1000 پوائنٹس حاصل کریں۔';

  @override
  String get achLocPerfectScoreTitle => 'بہترین اسکور';

  @override
  String get achLocPerfectScoreDescription => 'کسی بھی کوئز میں 100% اسکور کریں۔';

  @override
  String get achLocQuiz25Title => 'کوئز کا شوقین';

  @override
  String get achLocQuiz25Description => '25 کوئز مکمل کریں۔';

  @override
  String get achLocQuiz50Title => 'کوئز ماسٹر';

  @override
  String get achLocQuiz50Description => '50 کوئز مکمل کریں۔';

  @override
  String get achLocQuiz100Title => 'سنچری کلب';

  @override
  String get achLocQuiz100Description => '100 کوئز مکمل کریں۔';

  @override
  String get achLocQuiz250Title => 'کوئز لیجنڈ';

  @override
  String get achLocQuiz250Description => '250 کوئز مکمل کریں۔';

  @override
  String get achLocPoints5000Title => '5,000 پوائنٹس';

  @override
  String get achLocPoints5000Description => 'کل 5,000 پوائنٹس حاصل کریں۔';

  @override
  String get achLocPoints10000Title => '10,000 پوائنٹس';

  @override
  String get achLocPoints10000Description => 'کل 10,000 پوائنٹس حاصل کریں۔';

  @override
  String get achLocPoints50000Title => '50,000 پوائنٹس';

  @override
  String get achLocPoints50000Description => 'کل 50,000 پوائنٹس حاصل کریں۔';

  @override
  String get achLocPoints100000Title => '100,000 پوائنٹس';

  @override
  String get achLocPoints100000Description => 'کل 100,000 پوائنٹس حاصل کریں۔';

  @override
  String get achLocDaily1Title => 'روزانہ کا آغاز';

  @override
  String get achLocDaily1Description => 'اپنا پہلا روزانہ کوئز مکمل کریں۔';

  @override
  String get achLocDaily7Title => 'روزانہ کی عادت';

  @override
  String get achLocDaily7Description => '7 روزانہ کوئز مکمل کریں۔';

  @override
  String get achLocDaily30Title => 'روزانہ کا چیمپئن';

  @override
  String get achLocDaily30Description => '30 روزانہ کوئز مکمل کریں۔';

  @override
  String get achLocSets5Title => 'سیٹ کا آغاز';

  @override
  String get achLocSets5Description => '5 کوئز سیٹ مکمل کریں۔';

  @override
  String get achLocSets25Title => 'سیٹ کلیکٹر';

  @override
  String get achLocSets25Description => '25 کوئز سیٹ مکمل کریں۔';

  @override
  String get achLocSets50Title => 'سیٹ ماسٹر';

  @override
  String get achLocSets50Description => '50 کوئز سیٹ مکمل کریں۔';

  @override
  String get achLocSets100Title => 'سیٹ لیجنڈ';

  @override
  String get achLocSets100Description => '100 کوئز سیٹ مکمل کریں۔';

  @override
  String get achLocCert1Title => 'پہلا سرٹیفکیٹ';

  @override
  String get achLocCert1Description => 'اپنا پہلا کیٹیگری سرٹیفکیٹ حاصل کریں۔';

  @override
  String get achLocCert5Title => 'سند یافتہ ماہر';

  @override
  String get achLocCert5Description => '5 کیٹیگری سرٹیفکیٹ حاصل کریں۔';

  @override
  String get achLocCert21Title => 'مکمل سند یافتہ';

  @override
  String get achLocCert21Description => 'تمام 21 کیٹیگریز میں سرٹیفکیٹ حاصل کریں۔';

  @override
  String get achLocThemeFreeValentinesWeek => 'ہر سال 7 تا 14 فروری مفت';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ہر سال 8 تا 15 مارچ مفت';

  @override
  String get achLocThemeLight => 'روشن';

  @override
  String get achLocThemeDark => 'تاریک';

  @override
  String get achLocThemeSakura => 'ساکورا';

  @override
  String get achLocThemeSunset => 'غروبِ آفتاب';

  @override
  String get achLocThemeCoffee => 'کافی';

  @override
  String get achLocThemeTea => 'چائے';

  @override
  String get achLocThemeOcean => 'سمندر';

  @override
  String get achLocThemeSolarFlare => 'سولر فلیئر';

  @override
  String get achLocThemeForest => 'جنگل';

  @override
  String get achLocThemeAurora => 'اورورا';

  @override
  String get achLocThemeMatrix => 'میٹرکس';

  @override
  String get achLocThemeCyberPurple => 'سائبر پرپل';

  @override
  String get achLocThemeInferno => 'انفرنو';

  @override
  String get achLocThemeMidnight => 'آدھی رات';

  @override
  String get achLocThemeDarkGrey => 'گہرا سرمئی';

  @override
  String get achLocThemeBarbee => 'باربی';

  @override
  String get achLocThemeValentineDay => 'ویلنٹائن ڈے';

  @override
  String get achLocThemeDqSpecial => 'DQ اسپیشل';

  @override
  String get achLocThemeArmy => 'آرمی';

  @override
  String get achLocThemeSpiderMan => 'اسپائیڈر مین';

  @override
  String get achLocThemeKrrish => 'کرش';

  @override
  String get achLocThemeIronMan => 'آئرن مین';

  @override
  String get achLocThemeCaptainAmerica => 'کیپٹن امریکہ';

  @override
  String get achLocThemeThor => 'تھور';

  @override
  String get achLocThemeHulk => 'ہلک';

  @override
  String get achLocThemeBlackWidow => 'بلیک وڈو';

  @override
  String get achLocThemeHawkeye => 'ہاک آئی';

  @override
  String get achLocThemeBlackPanther => 'بلیک پینتھر';

  @override
  String get achLocThemeScarletWitch => 'اسکارلیٹ وچ';

  @override
  String get achLocThemeVision => 'ویژن';

  @override
  String get achLocThemeAntMan => 'اینٹ مین';

  @override
  String get achLocThemeCaptainMarvel => 'کیپٹن مارول';

  @override
  String get achLocThemeDoctorStrange => 'ڈاکٹر اسٹرینج';

  @override
  String get achLocThemeAvengers => 'ایوینجرز';

  @override
  String get achLocThemeBatman => 'بیٹ مین';

  @override
  String get achLocThemeSuperman => 'سپرمین';

  @override
  String get achLocThemeWonderWoman => 'ونڈر وومن';

  @override
  String get achLocThemeFlash => 'فلیش';

  @override
  String get achLocThemeAquaman => 'ایکوامین';

  @override
  String get achLocThemeGreenLantern => 'گرین لینٹرن';

  @override
  String get achLocThemeCyborg => 'سائبورگ';

  @override
  String get achLocThemeSupergirl => 'سپرگرل';

  @override
  String get achLocThemeDc => 'DC ہیروز';

  @override
  String get achLocThemeRainbow => 'قوس قزح';

  @override
  String get achLocThemeDiamond => 'ہیرا';

  @override
  String get achLocThemeLegendary => 'افسانوی';

  @override
  String get gameHintCmd001LsLa => 'تمام فائلیں تفصیلات کے ساتھ دکھائیں';

  @override
  String get gameHintCmd002Grep => 'پیٹرن کے ذریعے متن تلاش کریں';

  @override
  String get gameHintCmd003Chmod => 'فائل کی اجازتیں تبدیل کریں';

  @override
  String get gameHintCmd004DfH => 'ڈسک کی خالی جگہ دکھائیں';

  @override
  String get gameHintCmd005TailF => 'بڑھتی ہوئی لاگ فائل کو فالو کریں';

  @override
  String get gameHintCmd006PsAux => 'چلتے ہوئے پروسیس کی فہرست دکھائیں';

  @override
  String get gameHintCmd007GitClone => 'ریموٹ ریپوزیٹری کی کاپی بنائیں';

  @override
  String get gameHintCmd008GitStash => 'غیر کمٹ شدہ تبدیلیاں الگ رکھیں';

  @override
  String get gameHintCmd009GitRebase => 'کمٹس کو نئی بنیاد پر دوبارہ لاگو کریں';

  @override
  String get gameHintCmd010GitBlame => 'دکھائیں ہر لائن کس نے بدلی';

  @override
  String get gameHintCmd011DockerPs => 'چلتے ہوئے کنٹینرز کی فہرست دکھائیں';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile سے امیج بنائیں';

  @override
  String get gameHintCmd013DockerLogs => 'کنٹینر کا آؤٹ پٹ دکھائیں';

  @override
  String get gameHintCmd014DockerExec => 'کنٹینر کے اندر کمانڈ چلائیں';

  @override
  String get gameHintCmd015KubectlGetPods => 'نیم اسپیس میں پوڈز کی فہرست دکھائیں';

  @override
  String get gameHintCmd016KubectlApply => 'فائل سے وسائل بنائیں';

  @override
  String get gameHintCmd017KubectlDescribe => 'وسائل کی تفصیلی معلومات دکھائیں';

  @override
  String get gameHintCmd018KubectlScale => 'ریپلیکاز کی تعداد تبدیل کریں';

  @override
  String get gameHintCmd019TerraformInit => 'پرووائیڈرز ڈاؤن لوڈ کریں اور سیٹ اپ کریں';

  @override
  String get gameHintCmd020TerraformPlan => 'انفراسٹرکچر کی تبدیلیوں کا پیش منظر دیکھیں';

  @override
  String get gameHintCmd021TerraformApply => 'انفراسٹرکچر بنائیں یا اپ ڈیٹ کریں';

  @override
  String get gameHintCmd022TerraformDestroy => 'زیرِ انتظام انفراسٹرکچر ہٹائیں';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'آٹومیشن پلے بک چلائیں';

  @override
  String get gameHintCmd024Ping => 'ICMP کے ذریعے رسائی جانچیں';

  @override
  String get gameHintCmd025Traceroute => 'ہوسٹ تک کا راستہ دکھائیں';

  @override
  String get gameHintCmd026Curl => 'URL سے ڈیٹا منتقل کریں';

  @override
  String get gameHintCmd027Ssh => 'ریموٹ مشین میں محفوظ طریقے سے لاگ اِن کریں';

  @override
  String get gameHintCmd028CrontabE => 'شیڈول شدہ کام ایڈٹ کریں';

  @override
  String get gameHintCmd029SystemctlStatus => 'سروس کی حالت جانچیں';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes پر چارٹ تعینات کریں';

  @override
  String get gameHintWord001Git => 'سورس کوڈ میں تبدیلیوں کو ٹریک کرتا ہے۔';

  @override
  String get gameHintWord002Aws => 'Amazon کا کلاؤڈ پلیٹ فارم۔';

  @override
  String get gameHintWord003Api => 'ایک معاہدہ جو سافٹ ویئر سسٹمز کو باہم رابطہ کرنے دیتا ہے۔';

  @override
  String get gameHintWord004Dns => 'ڈومین ناموں کو IP ایڈریسز میں تبدیل کرتا ہے۔';

  @override
  String get gameHintWord005Cli => 'کمانڈز چلانے کے لیے متن پر مبنی انٹرفیس۔';

  @override
  String get gameHintWord006Cpu => 'ہدایات پر عمل کرنے والا پروسیسر۔';

  @override
  String get gameHintWord007Ram => 'چلتے پروگراموں کی استعمال کردہ عارضی میموری۔';

  @override
  String get gameHintWord008Ssh => 'ریموٹ شیل رسائی کے لیے محفوظ پروٹوکول۔';

  @override
  String get gameHintWord009Yaml => 'انسان کے پڑھنے کے قابل ڈیٹا سیریلائزیشن فارمیٹ۔';

  @override
  String get gameHintWord010Linux => 'اوپن سورس آپریٹنگ سسٹم کرنل اور اس کا خاندان۔';

  @override
  String get gameHintWord011Bash => 'ایک مقبول Unix کمانڈ شیل۔';

  @override
  String get gameHintWord012Cloud => 'نیٹ ورک پر طلب کے مطابق فراہم کی جانے والی کمپیوٹنگ۔';

  @override
  String get gameHintWord013Docker => 'کنٹینرز بنانے اور چلانے کا پلیٹ فارم۔';

  @override
  String get gameHintWord014Azure => 'Microsoft کا کلاؤڈ پلیٹ فارم۔';

  @override
  String get gameHintWord015Python => 'اسکرپٹنگ اور پروگرامنگ کی وسیع پیمانے پر استعمال ہونے والی زبان۔';

  @override
  String get gameHintWord016Github => 'Git پر تعاون کی ایک مقبول ہوسٹڈ سروس۔';

  @override
  String get gameHintWord017Bgp => 'روٹنگ پروٹوکول جو خودمختار نظاموں کے درمیان روٹس کا تبادلہ کرتا ہے۔';

  @override
  String get gameHintWord018Jenkins => 'آٹومیشن سرور جو اکثر CI کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord019Port => 'نیٹ ورک سروسز کے استعمال کا نمبر والا اینڈ پوائنٹ۔';

  @override
  String get gameHintWord020Proxy => 'سرور جو کلائنٹس کی جانب سے درخواستیں آگے بھیجتا ہے۔';

  @override
  String get gameHintWord021Cache => 'بار بار استعمال ہونے والے ڈیٹا کا تیز ذخیرہ۔';

  @override
  String get gameHintWord022Cron => 'بار بار چلنے والی کمانڈز کا Unix شیڈیولر۔';

  @override
  String get gameHintWord023Bicep => 'Azure کی انفراسٹرکچر بطور کوڈ کے لیے اعلانیہ زبان۔';

  @override
  String get gameHintWord024Apigee => 'مرکزی API مینجمنٹ کے لیے Google کلاؤڈ پلیٹ فارم۔';

  @override
  String get gameHintWord025Root => 'Unix جیسے سسٹمز پر مراعات یافتہ ایڈمنسٹریٹر اکاؤنٹ۔';

  @override
  String get gameHintWord026Nginx => 'ویب سرور اور ریورس پراکسی۔';

  @override
  String get gameHintWord027Redis => 'ان-میموری ڈیٹا اسٹور جو اکثر کیش کے طور پر استعمال ہوتا ہے۔';

  @override
  String get gameHintWord028Mysql => 'مقبول ریلیشنل ڈیٹابیس سسٹم۔';

  @override
  String get gameHintWord029Ruby => 'پروگرامنگ زبان جو Chef جیسے ٹولز میں استعمال ہوتی ہے۔';

  @override
  String get gameHintWord030Helm => 'پیکیج مینیجر جو عموماً Kubernetes کے ساتھ استعمال ہوتا ہے۔';

  @override
  String get gameHintWord031Pod => 'Kubernetes میں تعینات کی جانے والی سب سے چھوٹی اکائی۔';

  @override
  String get gameHintWord032Image => 'کنٹینر بنانے کے لیے استعمال ہونے والا صرف پڑھنے کا ٹیمپلیٹ۔';

  @override
  String get gameHintWord033Build => 'سورس اور انحصارات سے آرٹیفیکٹ تیار کرتا ہے۔';

  @override
  String get gameHintWord034Deploy => 'ایپلیکیشن کو ماحول میں جاری کرتا ہے۔';

  @override
  String get gameHintWord035Terraform => 'انفراسٹرکچر بطور کوڈ کے لیے HashiCorp کا ٹول۔';

  @override
  String get gameHintWord036Ansible => 'ایجنٹ کے بغیر آٹومیشن اور کنفیگریشن ٹول۔';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes کا کمانڈ لائن کلائنٹ۔';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform کا مخفف۔';

  @override
  String get gameHintWord039Gitops => 'آپریشنل ماڈل جو Git کو حقیقت کا ماخذ بناتا ہے۔';

  @override
  String get gameHintWord040Pipeline => 'بلڈ، ٹیسٹ اور ریلیز مراحل کا خودکار سلسلہ۔';

  @override
  String get gameHintWord041Container => 'اپنے انحصارات کے ساتھ پیک کیا گیا الگ تھلگ پروسیس۔';

  @override
  String get gameHintWord042Cluster => 'مشینوں کا گروپ جو مشترکہ نظام کے طور پر منظم ہو۔';

  @override
  String get gameHintWord043Ingress => 'بیرونی HTTP روٹنگ کے لیے Kubernetes API آبجیکٹ۔';

  @override
  String get gameHintWord044Firewall => 'حفاظتی قواعد کے مطابق نیٹ ورک ٹریفک کو فلٹر کرتا ہے۔';

  @override
  String get gameHintWord045Subnet => 'IP نیٹ ورک کی منطقی ذیلی تقسیم۔';

  @override
  String get gameHintWord046Gateway => 'نیٹ ورک نوڈ جو مختلف نیٹ ورکس کو جوڑتا ہے۔';

  @override
  String get gameHintWord047Router => 'نیٹ ورکس کے درمیان پیکٹس آگے بھیجتا ہے۔';

  @override
  String get gameHintWord048Switch => 'مقامی نیٹ ورک میں آلات کو جوڑتا ہے۔';

  @override
  String get gameHintWord049Repository => 'سورس کوڈ یا پیکیجز کا منظم ذخیرہ۔';

  @override
  String get gameHintWord050Systemd => 'Linux کا init سسٹم اور سروس مینیجر۔';

  @override
  String get gameHintWord051Journalctl => 'systemd جرنل لاگز پڑھنے کی کمانڈ۔';

  @override
  String get gameHintWord052Permission => 'قاعدہ جو طے کرتا ہے کون پڑھ، لکھ یا چلا سکتا ہے۔';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud کا منظم PostgreSQL سے ہم آہنگ ڈیٹابیس۔';

  @override
  String get gameHintWord054Configmap => 'غیر خفیہ کنفیگریشن کے لیے Kubernetes آبجیکٹ۔';

  @override
  String get gameHintWord055Secret => 'حساس ڈیٹا کے لیے مخصوص Kubernetes آبجیکٹ۔';

  @override
  String get gameHintWord056Persistent => 'ایسی اسٹوریج جو ورک لوڈ کے ری اسٹارٹ کے بعد بھی برقرار رہے۔';

  @override
  String get gameHintWord057Volume => 'کنٹینر میں ماؤنٹ کی گئی فائل سسٹم اسٹوریج۔';

  @override
  String get gameHintWord058Storage => 'فائلوں، آبجیکٹس یا بلاکس کے لیے مستقل جگہ۔';

  @override
  String get gameHintWord059Replica => 'پیمانے یا اعتبار کے لیے رکھی گئی ورک لوڈ انسٹینس کی کاپی۔';

  @override
  String get gameHintWord060Deployment => 'بے حالت ایپلیکیشن پوڈز کے لیے Kubernetes کنٹرولر۔';

  @override
  String get gameHintWord061Dockerfile => 'Docker امیج بنانے کے لیے استعمال ہونے والی ہدایات۔';

  @override
  String get gameHintWord062Database => 'منظم ذخیرہ جس سے ایپلیکیشنز کوئری کرتی ہیں۔';

  @override
  String get gameHintWord063Automation => 'دستی مراحل کے بغیر دہرائے جانے والے کام سافٹ ویئر سے کروانا۔';

  @override
  String get gameHintWord064Anthos => 'مختلف ماحول میں کلسٹرز کے انتظام کے لیے Google Cloud پلیٹ فارم۔';

  @override
  String get gameHintWord065Bigquery => 'بڑے پیمانے کے ڈیٹا تجزیے کے لیے Google Cloud سروس۔';

  @override
  String get gameHintWord066Bigtable => 'تجزیات کے لیے Google Cloud کا وائیڈ-کالم NoSQL ڈیٹابیس۔';

  @override
  String get gameHintWord067Loadbalancer => 'آنے والی ٹریفک کو متعدد بیک اینڈز میں تقسیم کرتا ہے۔';

  @override
  String get gameHintWord068Prometheus => 'مانیٹرنگ سسٹم جو ٹائم سیریز میٹرکس محفوظ کرتا ہے۔';

  @override
  String get gameHintWord069Grafana => 'آبزرویبلٹی ڈیٹا کی کوئری اور بصری پیشکش کا پلیٹ فارم۔';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud کا منظم NoSQL JSON دستاویزی ڈیٹابیس۔';

  @override
  String get gameHintWord071Cloudtrail => 'AWS سروس جو آڈٹ کے لیے API سرگرمی ریکارڈ کرتی ہے۔';

  @override
  String get gameHintWord072Statefulset => 'مستحکم شناخت چاہنے والے ورک لوڈز کے لیے Kubernetes کنٹرولر۔';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes کنٹرولر جو منتخب نوڈز پر پوڈ چلاتا ہے۔';

  @override
  String get gameHintWord074Serviceaccount => 'ورک لوڈ یا پروسیس کی استعمال کردہ Kubernetes شناخت۔';

  @override
  String get gameHintWord075Networkpolicy => 'پوڈ نیٹ ورک ٹریفک کو کنٹرول کرنے والا Kubernetes وسیلہ۔';

  @override
  String get gameHintWord076Certificate => 'TLS میں شناخت قائم کرنے کے لیے ڈیجیٹل دستاویز۔';

  @override
  String get gameHintWord077Encryption => 'ڈیٹا کو یوں بدلتا ہے کہ صرف مجاز فریق پڑھ سکیں۔';

  @override
  String get gameHintWord078Observability => 'سسٹم کے آؤٹ پٹس سے اس کے رویے کو سمجھنے کی صلاحیت۔';

  @override
  String get gameHintWord079Coredns => 'DNS سرور جو عموماً Kubernetes کلسٹرز کے اندر استعمال ہوتا ہے۔';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes APIs کے ذریعے کلاؤڈ وسائل کے انتظام کا پروجیکٹ۔';

  @override
  String get gameHintWord081Failover => 'ناکامی کے بعد اسٹینڈ بائی جزو پر منتقل ہونا۔';

  @override
  String get gameHintWord082Idempotency => 'وہ خصوصیت جس میں عمل دہرانے کا وہی اثر ہو جو ایک بار کرنے کا ہو۔';

  @override
  String get gameHintWord083Dataflow => 'اسٹریم اور بیچ ڈیٹا پروسیسنگ کے لیے Google Cloud سروس۔';

  @override
  String get gameHintWord084Orchestration => 'متعدد خودکار ورک لوڈز کا مربوط انتظام۔';

  @override
  String get gameHintWord085Dataplex => 'ادارہ جاتی ڈیٹا دریافت اور گورننس کے لیے Google Cloud سروس۔';

  @override
  String get gameHintWord086Serverless => 'عملدرآمد کا ماڈل جس میں انفراسٹرکچر کا انتظام پس پردہ ہوتا ہے۔';

  @override
  String get gameHintWord087Distributed => 'ایسا نظام جس کے اجزا متعدد نیٹ ورکڈ مشینوں پر چلتے ہیں۔';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud کا منظم Apache Spark اور Hadoop ماحول۔';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL ڈیٹابیس جو اکثر Terraform اسٹیٹ لاکنگ کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord090Provisioning => 'انفراسٹرکچر یا وسائل کو استعمال کے لیے تیار کرنا۔';

  @override
  String get gameHintWord091Elasticsearch => 'سرچ انجن جو عموماً مرکزی لاگنگ کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord092Etcd => 'کی-ویلیو اسٹور جو Kubernetes کلسٹر کی حالت رکھتا ہے۔';

  @override
  String get gameHintWord093Authentication => 'صارف یا سروس کی شناخت کی تصدیق کا عمل۔';

  @override
  String get gameHintWord094Authorization => 'یہ طے کرنے کا عمل کہ شناخت کو کیا کرنے کی اجازت ہے۔';

  @override
  String get gameHintWord095Expressroute => 'ڈیٹا سینٹرز سے مخصوص نجی کنیکٹیویٹی کے لیے Azure سروس۔';

  @override
  String get gameHintWord096Configuration => 'وہ سیٹنگز جو سافٹ ویئر کے رویے کا تعین کرتی ہیں۔';

  @override
  String get gameHintWord097Infrastructure => 'ایپلیکیشنز کو سہارا دینے والے کمپیوٹ، نیٹ ورک اور اسٹوریج وسائل۔';

  @override
  String get gameHintWord098Fastconnect => 'مخصوص نجی نیٹ ورک کنکشنز کے لیے Oracle Cloud سروس۔';

  @override
  String get gameHintWord099Containerd => 'Kubernetes کا استعمال کردہ صنعتی معیار کا کنٹینر رن ٹائم۔';

  @override
  String get gameHintWord100Kubernetes => 'کنٹینر آرکیسٹریشن پلیٹ فارم۔';

  @override
  String get gameHintWord101Http => 'ویب وسائل کی درخواست کے لیے ایپلیکیشن پروٹوکول۔';

  @override
  String get gameHintWord102Https => 'ویب درخواست پروٹوکول کا مرموز ورژن۔';

  @override
  String get gameHintWord103Tcp => 'ٹرانسپورٹ پروٹوکول جو قابل اعتماد ترتیب وار ترسیل فراہم کرتا ہے۔';

  @override
  String get gameHintWord104Udp => 'ڈیٹاگرام کے لیے استعمال ہونے والا بلا کنکشن ٹرانسپورٹ پروٹوکول۔';

  @override
  String get gameHintWord105Tls => 'نیٹ ورک پر منتقل ہونے والے ڈیٹا کو محفوظ بنانے والا پروٹوکول۔';

  @override
  String get gameHintWord106Ssl => 'جدید ٹرانسپورٹ سکیورٹی پروٹوکول کا پرانا پیش رو۔';

  @override
  String get gameHintWord107Ftp => 'فائلیں منتقل کرنے کا روایتی پروٹوکول۔';

  @override
  String get gameHintWord108Sftp => 'محفوظ شیل کنکشن پر چلنے والا فائل ٹرانسفر پروٹوکول۔';

  @override
  String get gameHintWord109Smtp => 'سرورز کے درمیان ای میل بھیجنے کا پروٹوکول۔';

  @override
  String get gameHintWord110Snmp => 'نیٹ ورک آلات کے انتظام اور نگرانی کا پروٹوکول۔';

  @override
  String get gameHintWord111Icmp => 'نیٹ ورک غلطیوں اور ping پیغامات کو لے جانے والا پروٹوکول۔';

  @override
  String get gameHintWord112Arp => 'مقامی IPv4 ایڈریسز کو ہارڈ ویئر ایڈریسز میں حل کرتا ہے۔';

  @override
  String get gameHintWord113Dhcp => 'نیٹ ورک کلائنٹس کو خودکار طور پر IP کنفیگریشن دیتا ہے۔';

  @override
  String get gameHintWord114Nat => 'گیٹ وے عبور کرتے وقت نیٹ ورک ایڈریسز کو دوبارہ لکھتا ہے۔';

  @override
  String get gameHintWord115Vpn => 'دور دراز نیٹ ورکس یا صارفین کو جوڑنے والی مرموز سرنگ۔';

  @override
  String get gameHintWord116Vpc => 'پبلک کلاؤڈ میں الگ تھلگ ورچوئل نیٹ ورک۔';

  @override
  String get gameHintWord117Vlan => 'سوئچڈ نیٹ ورک کی منطقی علیحدگی۔';

  @override
  String get gameHintWord118Wan => 'وسیع جغرافیائی علاقے پر پھیلا نیٹ ورک۔';

  @override
  String get gameHintWord119Lan => 'مقامی علاقے میں آلات کو جوڑنے والا نیٹ ورک۔';

  @override
  String get gameHintWord120Cdn => 'تقسیم شدہ ایج نیٹ ورک جو فراہم کردہ مواد کیش کرتا ہے۔';

  @override
  String get gameHintWord121Cidr => 'سلیش لمبائی کے ساتھ نیٹ ورک پریفکس ظاہر کرنے کی علامت۔';

  @override
  String get gameHintWord122Host => 'نیٹ ورک سے جڑا کمپیوٹر یا اینڈ پوائنٹ۔';

  @override
  String get gameHintWord123Hostname => 'نیٹ ورک سے جڑی مشین کو دیا گیا انسانی پڑھنے کے قابل نام۔';

  @override
  String get gameHintWord124Domain => 'انٹرنیٹ کے نام کے نظام میں نامزد انتظامی علاقہ۔';

  @override
  String get gameHintWord125Zone => 'DNS نیم اسپیس کا انتظامی حصہ۔';

  @override
  String get gameHintWord126Record => 'DNS ڈیٹابیس میں ایک انفرادی اندراج۔';

  @override
  String get gameHintWord127Aaaa => 'DNS ریکارڈ کی قسم جو نام کو IPv6 ایڈریس سے ملاتی ہے۔';

  @override
  String get gameHintWord128Ptr => 'الٹی ایڈریس تلاش کے لیے DNS ریکارڈ کی قسم۔';

  @override
  String get gameHintWord129Txt => 'متنی قدریں محفوظ کرنے والی DNS ریکارڈ کی قسم۔';

  @override
  String get gameHintWord130Cname => 'DNS ریکارڈ جو ایک نام کو دوسرے کا عرف بناتا ہے۔';

  @override
  String get gameHintWord131Route => 'پیکٹس کو منزل کی طرف بھیجنے والا راستے کا اندراج۔';

  @override
  String get gameHintWord132Routing => 'نیٹ ورکس کے درمیان ٹریفک کے لیے راستوں کا انتخاب۔';

  @override
  String get gameHintWord133Packet => 'نیٹ ورک پر منتقل ہونے والے ڈیٹا کی اکائی۔';

  @override
  String get gameHintWord134Protocol => 'سسٹمز کے درمیان رابطے کے طے شدہ قواعد۔';

  @override
  String get gameHintWord135Ack => 'TCP فلیگ جو ڈیٹا موصول ہونے کی تصدیق کرتا ہے۔';

  @override
  String get gameHintWord136Bandwidth => 'مواصلاتی لنک کی گنجائش۔';

  @override
  String get gameHintWord137Latency => 'درخواست یا پیکٹ کو جواب ملنے سے پہلے کی تاخیر۔';

  @override
  String get gameHintWord138Throughput => 'فی اکائی وقت میں پروسیس ہونے والا مفید کام یا ڈیٹا۔';

  @override
  String get gameHintWord139Mtu => 'سب سے بڑا پیکٹ سائز جو لنک بغیر فریگمنٹیشن کے بھیج سکے۔';

  @override
  String get gameHintWord140Alpn => 'TLS ایکسٹینشن جو ایپلیکیشن لیئر پروٹوکول طے کرتی ہے۔';

  @override
  String get gameHintWord141Grep => 'متن کی لائنوں میں مماثل پیٹرن تلاش کرتا ہے۔';

  @override
  String get gameHintWord142Sed => 'اسٹریم ایڈیٹر جو عموماً متن کی تبدیلی کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord143Lscpu => 'Linux کمانڈ جو پروسیسر کا ڈھانچہ اور کور کی تفصیل دکھاتی ہے۔';

  @override
  String get gameHintWord144Find => 'فائل کی شرائط سے ڈائریکٹری ٹری میں تلاش کرتا ہے۔';

  @override
  String get gameHintWord145Lsblk => 'Linux کمانڈ جو بلاک ڈیوائسز اور ان کے تعلقات کی فہرست دکھاتی ہے۔';

  @override
  String get gameHintWord146Sort => 'متن کی لائنوں کو ترتیب دیتا ہے۔';

  @override
  String get gameHintWord147Uniq => 'ملحقہ دہرائی گئی لائنوں کو فلٹر کرتا ہے۔';

  @override
  String get gameHintWord148Head => 'فائل کا آغاز پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord149Tail => 'فائل کا اختتام پرنٹ کرتا ہے اور بڑھتی لاگز کو فالو کر سکتا ہے۔';

  @override
  String get gameHintWord150Cat => 'فائلوں کو جوڑ کر ان کا مواد پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord151Cut => 'لائنوں سے منتخب فیلڈز یا کریکٹر کالم نکالتا ہے۔';

  @override
  String get gameHintWord152Tee => 'اسٹینڈرڈ ان پٹ کو فائلوں اور اسٹینڈرڈ آؤٹ پٹ میں کاپی کرتا ہے۔';

  @override
  String get gameHintWord153Echo => 'اپنے آرگیومنٹس کو اسٹینڈرڈ آؤٹ پٹ پر لکھتا ہے۔';

  @override
  String get gameHintWord154Printf => 'شیل یا پروگرام سے فارمیٹ شدہ متن پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord155Touch => 'فائل کے ٹائم اسٹیمپ اپ ڈیٹ کرتا ہے یا خالی فائل بناتا ہے۔';

  @override
  String get gameHintWord156Mkdir => 'ڈائریکٹریز بناتا ہے۔';

  @override
  String get gameHintWord157Rmdir => 'خالی ڈائریکٹریز ہٹاتا ہے۔';

  @override
  String get gameHintWord158Chmod => 'Unix فائل پرمیشن بٹس تبدیل کرتا ہے۔';

  @override
  String get gameHintWord159Chown => 'فائل کی ملکیت تبدیل کرتا ہے۔';

  @override
  String get gameHintWord160Chgrp => 'فائل کی گروپ ملکیت تبدیل کرتا ہے۔';

  @override
  String get gameHintWord161Pwd => 'موجودہ ورکنگ ڈائریکٹری پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord162Apt => 'Debian پر مبنی سسٹمز کا پیکیج مینجمنٹ ٹول۔';

  @override
  String get gameHintWord163Top => 'پروسیسز اور سسٹم وسائل کے استعمال کا انٹرایکٹو ڈسپلے۔';

  @override
  String get gameHintWord164Agent => 'سافٹ ویئر جزو جو ہوسٹ پر کام انجام دیتا یا رپورٹ کرتا ہے۔';

  @override
  String get gameHintWord165Kill => 'شناخت کار کے ذریعے پروسیس کو سگنل بھیجتا ہے۔';

  @override
  String get gameHintWord166Signal => 'آپریٹنگ سسٹم کی طرف سے پروسیس کو بھیجی گئی اطلاع۔';

  @override
  String get gameHintWord167Sigkill => 'Unix سگنل جو پروسیس کو فوراً ختم کر دیتا ہے۔';

  @override
  String get gameHintWord168Nice => 'ایڈجسٹ شدہ شیڈیولنگ ترجیح کے ساتھ پروسیس شروع کرتا ہے۔';

  @override
  String get gameHintWord169Renice => 'چلتے پروسیس کی شیڈیولنگ ترجیح تبدیل کرتا ہے۔';

  @override
  String get gameHintWord170Jobs => 'موجودہ شیل کے زیرِ انتظام جابز کی فہرست دکھاتا ہے۔';

  @override
  String get gameHintWord171Nohup => 'ہینگ اپ سگنلز کو نظرانداز کرتے ہوئے کمانڈ چلاتا ہے۔';

  @override
  String get gameHintWord172Screen => 'ٹرمینل ملٹی پلیکسر جو الگ ہونے والے سیشنز کی سہولت دیتا ہے۔';

  @override
  String get gameHintWord173Uptime => 'بتاتا ہے کہ سسٹم کتنی دیر سے چل رہا ہے۔';

  @override
  String get gameHintWord174Uname => 'سسٹم اور کرنل کی معلومات پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord175Whoami => 'موجودہ مؤثر صارف کا نام پرنٹ کرتا ہے۔';

  @override
  String get gameHintWord176Umask => 'فائلیں بناتے وقت استعمال ہونے والا پرمیشن ماسک سیٹ کرتا ہے۔';

  @override
  String get gameHintWord177Usermod => 'Linux کمانڈ جو موجودہ صارف اکاؤنٹ میں ترمیم کرتی ہے۔';

  @override
  String get gameHintWord178Crontab => 'شیڈول شدہ دہرائی جانے والی شیل جابز ایڈٹ یا فہرست کرتا ہے۔';

  @override
  String get gameHintWord179Findmnt => 'Linux کمانڈ جو ماؤنٹ شدہ فائل سسٹم کی معلومات دکھاتی ہے۔';

  @override
  String get gameHintWord180Mount => 'فائل سسٹم کو ڈائریکٹری ٹری سے جوڑتا ہے۔';

  @override
  String get gameHintWord181Sigterm => 'Unix سگنل جو پروسیس کو شائستگی سے ختم کرنے کی درخواست کرتا ہے۔';

  @override
  String get gameHintWord182Fstab => 'ماؤنٹ ہونے والے فائل سسٹمز کی وضاحت کرنے والا سسٹم ٹیبل۔';

  @override
  String get gameHintWord183Swap => 'ڈسک پر مبنی جگہ جو فزیکل میموری کی کمی پوری کرتی ہے۔';

  @override
  String get gameHintWord184Tmpfs => 'ورچوئل میموری پر مبنی عارضی فائل سسٹم۔';

  @override
  String get gameHintWord185Proc => 'Linux ورچوئل فائل سسٹم جو پروسیس اور کرنل کی معلومات ظاہر کرتا ہے۔';

  @override
  String get gameHintWord186Syslog => 'معیاری لاگنگ پروٹوکول اور پیغام کا فارمیٹ۔';

  @override
  String get gameHintWord187Dmesg => 'کرنل رنگ بفر کے پیغامات دکھاتا ہے۔';

  @override
  String get gameHintWord188Free => 'استعمال شدہ اور دستیاب سسٹم میموری کی رپورٹ دیتا ہے۔';

  @override
  String get gameHintWord189Stat => 'فائل کا تفصیلی میٹا ڈیٹا دکھاتا ہے۔';

  @override
  String get gameHintWord190Lsof => 'کھلی فائلیں اور انہیں تھامنے والے پروسیسز کی فہرست دکھاتا ہے۔';

  @override
  String get gameHintWord191Netstat => 'نیٹ ورک کنکشنز اور روٹنگ کی معلومات دکھاتا ہے۔';

  @override
  String get gameHintWord192Checksum => 'حساب شدہ قدر جو ڈیٹا میں تبدیلی یا خرابی کی نشاندہی کرتی ہے۔';

  @override
  String get gameHintWord193Ping => 'ایکو درخواستوں سے نیٹ ورک رسائی جانچتا ہے۔';

  @override
  String get gameHintWord194Traceroute => 'نیٹ ورک منزل تک کے درمیانی ہاپس دکھاتا ہے۔';

  @override
  String get gameHintWord195Resolver => 'DNS جزو جو نام کی کوئریز کے جوابات تلاش کرتا ہے۔';

  @override
  String get gameHintWord196Nslookup => 'DNS نام اور ایڈریسز تلاش کرتا ہے۔';

  @override
  String get gameHintWord197Telnet => 'پرانا غیر مرموز ریموٹ ٹرمینل پروٹوکول۔';

  @override
  String get gameHintWord198Tftp => 'UDP پر مبنی سادہ فائل ٹرانسفر پروٹوکول۔';

  @override
  String get gameHintWord199Daemon => 'Unix جیسے سسٹمز پر پس منظر میں چلنے والا سروس پروسیس۔';

  @override
  String get gameHintWord200Kernel => 'آپریٹنگ سسٹم کے وسائل منظم کرنے والا بنیادی جزو۔';

  @override
  String get gameHintWord201Commit => 'ورژن کنٹرول میں تبدیلیوں کا ریکارڈ شدہ اسنیپ شاٹ۔';

  @override
  String get gameHintWord202Branch => 'ترقی کی ایک لکیر کی نمائندگی کرنے والا حرکت پذیر حوالہ۔';

  @override
  String get gameHintWord203Merge => 'مختلف ترقیاتی لکیروں کی ہسٹریز کو یکجا کرتا ہے۔';

  @override
  String get gameHintWord204Rebase => 'کمٹس کو کسی مختلف بنیادی کمٹ پر دوبارہ چلاتا ہے۔';

  @override
  String get gameHintWord205Clone => 'ریموٹ ریپوزیٹری کی مقامی کاپی بناتا ہے۔';

  @override
  String get gameHintWord206Fetch => 'ضم کیے بغیر ریموٹ آبجیکٹس اور حوالہ جات ڈاؤن لوڈ کرتا ہے۔';

  @override
  String get gameHintWord207Pull => 'تبدیلیاں حاصل کر کے موجودہ برانچ میں ضم کرتا ہے۔';

  @override
  String get gameHintWord208Push => 'مقامی کمٹس کو ریموٹ ریپوزیٹری میں بھیجتا ہے۔';

  @override
  String get gameHintWord209Stash => 'غیر کمٹ شدہ ورکنگ ٹری تبدیلیاں عارضی طور پر محفوظ کرتا ہے۔';

  @override
  String get gameHintWord210Revert => 'ایسا کمٹ بناتا ہے جو دوسرے کمٹ کو کالعدم کرے۔';

  @override
  String get gameHintWord211Reset => 'Git حوالہ منتقل کرتا ہے اور انڈیکس یا ورکنگ فائلیں ری سیٹ کر سکتا ہے۔';

  @override
  String get gameHintWord212Reflog => 'Git حوالہ جات کی اپ ڈیٹس کی مقامی ہسٹری۔';

  @override
  String get gameHintWord213Diff => 'ورژنز یا فائلوں کے درمیان فرق دکھاتا ہے۔';

  @override
  String get gameHintWord214Status => 'اسٹیج شدہ، تبدیل شدہ اور غیر ٹریک شدہ فائلوں کی رپورٹ دیتا ہے۔';

  @override
  String get gameHintWord215Checkout => 'ریویژنز بدلنے یا فائلیں بحال کرنے کی Git کمانڈ۔';

  @override
  String get gameHintWord216Tag => 'نامزد حوالہ جو عموماً ریلیز کو نشان زد کرتا ہے۔';

  @override
  String get gameHintWord217Remote => 'دوسری ریپوزیٹری سے نامزد کنکشن۔';

  @override
  String get gameHintWord218Origin => 'کلون شدہ ریپوزیٹری ریموٹ کو دیا گیا ڈیفالٹ نام۔';

  @override
  String get gameHintWord219Upstream => 'مقامی برانچ سے منسلک ریموٹ ٹریکنگ برانچ۔';

  @override
  String get gameHintWord220Worktree => 'ریپوزیٹری سے منسلک چیک آؤٹ شدہ ورکنگ ڈائریکٹری۔';

  @override
  String get gameHintWord221Registry => 'کنٹینر امیجز محفوظ اور تقسیم کرنے والی سروس۔';

  @override
  String get gameHintWord222Digest => 'کنٹینر امیج کا مواد پر مبنی شناخت کار۔';

  @override
  String get gameHintWord223Layer => 'فائل سسٹم کی تبدیلیاں جو کنٹینر امیج کا حصہ بنتی ہیں۔';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile ہدایت جو کنٹینر کا مرکزی ایگزیکیوٹیبل طے کرتی ہے۔';

  @override
  String get gameHintWord225Cmd => 'Dockerfile ہدایت جو ڈیفالٹ کمانڈ یا آرگیومنٹس بتاتی ہے۔';

  @override
  String get gameHintWord226Workdir => 'Dockerfile ہدایت جو ورکنگ ڈائریکٹری سیٹ کرتی ہے۔';

  @override
  String get gameHintWord227Copy => 'Dockerfile ہدایت جو بلڈ کانٹیکسٹ فائلیں امیج میں کاپی کرتی ہے۔';

  @override
  String get gameHintWord228Add => 'Dockerfile ہدایت جو مقامی آرکائیوز بھی کھول سکتی ہے۔';

  @override
  String get gameHintWord229Run => 'Dockerfile ہدایت جو بلڈ کے وقت کمانڈ چلاتی ہے۔';

  @override
  String get gameHintWord230Env => 'Dockerfile ہدایت جو ماحولیاتی متغیرات متعین کرتی ہے۔';

  @override
  String get gameHintWord231Arg => 'Dockerfile ہدایت جو بلڈ کے وقت کا متغیر declare کرتی ہے۔';

  @override
  String get gameHintWord232Expose => 'Dockerfile ہدایت جو کنٹینر پورٹ کو دستاویز کرتی ہے۔';

  @override
  String get gameHintWord233User => 'Dockerfile ہدایت جو بعد کی کمانڈز کے لیے اکاؤنٹ منتخب کرتی ہے۔';

  @override
  String get gameHintWord234Healthcheck => 'ہدایت جو کنٹینر کی صحت جانچنے کا طریقہ بتاتی ہے۔';

  @override
  String get gameHintWord235Shebang => 'اسکرپٹ کی ابتدائی لائن جو چلانے والا انٹرپریٹر بتاتی ہے۔';

  @override
  String get gameHintWord236Compose => 'کثیر کنٹینر ایپلیکیشنز متعین کرنے اور چلانے کا Docker ٹول۔';

  @override
  String get gameHintWord237Bridge => 'مقامی کنٹینر نیٹ ورکنگ کے لیے عام Docker نیٹ ورک ڈرائیور۔';

  @override
  String get gameHintWord238Overlay => 'متعدد ہوسٹس پر کنٹینرز کو محیط نیٹ ورک۔';

  @override
  String get gameHintWord239None => 'Docker نیٹ ورک ڈرائیور جو کنٹینر نیٹ ورکنگ بند کر دیتا ہے۔';

  @override
  String get gameHintWord240Prune => 'غیر استعمال شدہ کنٹینر وسائل ہٹاتا ہے۔';

  @override
  String get gameHintWord241Replicaset => 'مطلوبہ پوڈ تعداد برقرار رکھنے والا Kubernetes کنٹرولر۔';

  @override
  String get gameHintWord242Service => 'پوڈز تک مستحکم رسائی دینے والا Kubernetes تجرید۔';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes سروس کے پیچھے موجود ایڈریسز۔';

  @override
  String get gameHintWord244Namespace => 'Kubernetes وسائل کو گروپ کرنے والا منطقی دائرہ۔';

  @override
  String get gameHintWord245Node => 'ورکر مشین جو Kubernetes پوڈز کی میزبانی کرتی ہے۔';

  @override
  String get gameHintWord246Kubelet => 'ہر نوڈ پر ایجنٹ جو پوڈ کے عمل کو منظم کرتا ہے۔';

  @override
  String get gameHintWord247Pvc => 'مستقل اسٹوریج کے لیے Kubernetes درخواست۔';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes کنٹرول پلین جزو جو کلسٹر API فراہم کرتا ہے۔';

  @override
  String get gameHintWord249Role => 'رول پر مبنی رسائی کنٹرول میں اجازتوں کا نامزد مجموعہ۔';

  @override
  String get gameHintWord250Resourcequota => 'نیم اسپیس میں وسائل کے استعمال کو محدود کرنے والا Kubernetes آبجیکٹ۔';

  @override
  String get gameHintWord251Selector => 'لیبلز کے ذریعے وسائل کو ملانے والا اظہار۔';

  @override
  String get gameHintWord252Taint => 'نوڈ کی خصوصیت جو مماثل ٹالرینس کے بغیر پوڈز کو دور رکھتی ہے۔';

  @override
  String get gameHintWord253Toleration => 'پوڈ کی سیٹنگ جو taint شدہ نوڈ پر شیڈیولنگ کی اجازت دیتی ہے۔';

  @override
  String get gameHintWord254Cordon => 'Kubernetes نوڈ کو شیڈیول کے ناقابل بناتا ہے۔';

  @override
  String get gameHintWord255Uncordon => 'cordon شدہ نوڈ کو دوبارہ شیڈیول کے قابل بناتا ہے۔';

  @override
  String get gameHintWord256Drain => 'نوڈ کی دیکھ بھال سے پہلے ورک لوڈز کو محفوظ طریقے سے ہٹاتا ہے۔';

  @override
  String get gameHintWord257Job => 'Kubernetes ورک لوڈ جو کام کو مکمل ہونے تک چلاتا ہے۔';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes ورک لوڈ جو شیڈول پر جابز بناتا ہے۔';

  @override
  String get gameHintWord259Readiness => 'پروب جو بتاتا ہے کہ کنٹینر ٹریفک وصول کر سکتا ہے یا نہیں۔';

  @override
  String get gameHintWord260Liveness => 'پروب جو بتاتا ہے کہ کنٹینر کو ری اسٹارٹ کی ضرورت ہے یا نہیں۔';

  @override
  String get gameHintWord261Canary => 'ریلیز کا طریقہ جو نیا ورژن ٹریفک کے چھوٹے حصے کو دکھاتا ہے۔';

  @override
  String get gameHintWord262Rolling => 'اپ ڈیٹ حکمت عملی جو چلتی انسٹینسز کو بتدریج بدلتی ہے۔';

  @override
  String get gameHintWord263Rollback => 'ایپلیکیشن کا پہلے کام کرنے والا ورژن بحال کرتا ہے۔';

  @override
  String get gameHintWord264Rollout => 'ایپلیکیشن کے نئے ورژن کی بتدریج تعیناتی۔';

  @override
  String get gameHintWord265Recreate => 'تعیناتی کی حکمت عملی جو متبادل شروع کرنے سے پہلے پرانے پوڈز روکتی ہے۔';

  @override
  String get gameHintWord266Blue => 'بلیو-گرین ریلیز کے دو ماحول میں سے ایک۔';

  @override
  String get gameHintWord267Green => 'بلیو-گرین ریلیز کا دوسرا ماحول۔';

  @override
  String get gameHintWord268Artifact => 'بلڈ پائپ لائن کا تیار کردہ ورژن شدہ آؤٹ پٹ۔';

  @override
  String get gameHintWord269Staging => 'ریلیز کی توثیق کے لیے پری پروڈکشن ماحول۔';

  @override
  String get gameHintWord270Production => 'حقیقی آخری صارفین کو خدمت دینے والا ماحول۔';

  @override
  String get gameHintWord271Release => 'استعمال کے لیے فراہم کیا گیا سافٹ ویئر ورژن۔';

  @override
  String get gameHintWord272Version => 'سافٹ ویئر ریویژن کو ممتاز کرنے والا شناخت کار۔';

  @override
  String get gameHintWord273Revision => 'دستاویز یا کوڈ بیس کا قابل شناخت ورژن۔';

  @override
  String get gameHintWord274Webhook => 'واقعہ پیش آنے پر بھیجی جانے والی HTTP اطلاع۔';

  @override
  String get gameHintWord275Runbook => 'سسٹم چلانے یا بحال کرنے کا دستاویزی طریقہ کار۔';

  @override
  String get gameHintWord276Workspace => 'پروجیکٹ کے کام کے وسائل رکھنے والی ڈائریکٹری یا دائرہ۔';

  @override
  String get gameHintWord277Credentials => 'سسٹم تک رسائی کے لیے استعمال ہونے والا تصدیقی مواد۔';

  @override
  String get gameHintWord278Trigger => 'واقعہ یا شرط جو پائپ لائن شروع کرتی ہے۔';

  @override
  String get gameHintWord279Parameter => 'جاب یا فنکشن کو دی جانے والی نامزد ان پٹ۔';

  @override
  String get gameHintWord280Access => 'اجازت کے تابع وسیلہ استعمال کرنے کی صلاحیت۔';

  @override
  String get gameHintWord281Module => 'انفراسٹرکچر تعریفوں کا قابل دوبارہ استعمال گروپ۔';

  @override
  String get gameHintWord282Provider => 'Terraform پلگ ان جو کنفیگریشن کو بیرونی API سے جوڑتا ہے۔';

  @override
  String get gameHintWord283Resource => 'کنفیگریشن میں declare کیا گیا زیرِ انتظام انفراسٹرکچر آبجیکٹ۔';

  @override
  String get gameHintWord284Variable => 'کنفیگریشن یا کوڈ میں استعمال ہونے والی نامزد ان پٹ قدر۔';

  @override
  String get gameHintWord285Output => 'انفراسٹرکچر کنفیگریشن کی واپس کردہ ظاہر قدر۔';

  @override
  String get gameHintWord286Tfstate => 'Terraform اسٹیٹ اسنیپ شاٹس سے وابستہ فائل لاحقہ۔';

  @override
  String get gameHintWord287Tfvars => 'Terraform ان پٹ متغیر قدروں کے لیے استعمال ہونے والا فائل لاحقہ۔';

  @override
  String get gameHintWord288Backend => 'اسٹیٹ اسٹوریج کو کنٹرول کرنے والی Terraform کنفیگریشن۔';

  @override
  String get gameHintWord289Plan => 'مجوزہ انفراسٹرکچر تبدیلیوں کا Terraform پیش منظر۔';

  @override
  String get gameHintWord290Apply => 'Terraform عمل جو مجوزہ تبدیلیاں نافذ کرتا ہے۔';

  @override
  String get gameHintWord291Destroy => 'Terraform عمل جو زیرِ انتظام انفراسٹرکچر ہٹاتا ہے۔';

  @override
  String get gameHintWord292Import => 'موجودہ وسیلے کو انفراسٹرکچر کے انتظام میں لاتا ہے۔';

  @override
  String get gameHintWord293Refresh => 'ریکارڈ شدہ اسٹیٹ کو حقیقی انفراسٹرکچر سے ہم آہنگ کرتا ہے۔';

  @override
  String get gameHintWord294Validate => 'کنفیگریشن کی نحو اور اندرونی ہم آہنگی جانچتا ہے۔';

  @override
  String get gameHintWord295Fmt => 'Terraform کمانڈ جو کنفیگریشن کی معیاری فارمیٹنگ لاگو کرتی ہے۔';

  @override
  String get gameHintWord296Init => 'Terraform پرووائیڈرز اور ورکنگ ڈائریکٹری کو انیشیلائز کرتا ہے۔';

  @override
  String get gameHintWord297Executor => 'Jenkins ورکر سلاٹ جو بلڈ چلا سکتا ہے۔';

  @override
  String get gameHintWord298Dependencies => 'ایسے تعلقات جن میں ایک جزو کی دوسرے سے پہلے ضرورت ہوتی ہے۔';

  @override
  String get gameHintWord299Drift => 'declare شدہ اور حقیقی انفراسٹرکچر اسٹیٹ کے درمیان فرق۔';

  @override
  String get gameHintWord300Locking => 'بیک وقت لکھنے والوں کو مشترکہ اسٹیٹ بدلنے سے روکتا ہے۔';

  @override
  String get gameHintWord301Playbook => 'Ansible دستاویز جو آٹومیشن پلیز اور ٹاسکس بیان کرتی ہے۔';

  @override
  String get gameHintWord302Inventory => 'Ansible کے زیرِ انتظام ہوسٹس اور گروپس کا مجموعہ۔';

  @override
  String get gameHintWord303Facts => 'زیرِ انتظام ہوسٹس کے بارے میں جمع کی گئی سسٹم معلومات۔';

  @override
  String get gameHintWord304Task => 'آٹومیشن میں کام کی ایک انفرادی اکائی۔';

  @override
  String get gameHintWord305Handler => 'Ansible ٹاسک جو تبدیلی کی اطلاع ملنے پر چلتا ہے۔';

  @override
  String get gameHintWord306Notify => 'Ansible ہدایت جو تبدیل شدہ ٹاسک کے بعد ہینڈلر کو قطار میں لگاتی ہے۔';

  @override
  String get gameHintWord307Become => 'Ansible سیٹنگ جو مراعات میں اضافہ فعال کرتی ہے۔';

  @override
  String get gameHintWord308Vault => 'حساس آٹومیشن ڈیٹا کو مرموز کرنے کی Ansible خصوصیت۔';

  @override
  String get gameHintWord309Register => 'Ansible ہدایت جو ٹاسک کا نتیجہ متغیر میں محفوظ کرتی ہے۔';

  @override
  String get gameHintWord310When => 'Ansible کلیدی لفظ جو مشروط ٹاسک عمل کو کنٹرول کرتا ہے۔';

  @override
  String get gameHintWord311Loop => 'آٹومیشن ٹاسک کو مجموعے پر دہراتا ہے۔';

  @override
  String get gameHintWord312Include => 'قابل دوبارہ استعمال آٹومیشن مواد کو متحرک طور پر لوڈ کرتا ہے۔';

  @override
  String get gameHintWord313Tags => 'آٹومیشن ٹاسکس کے ذیلی سیٹ منتخب کرنے کے لیے استعمال ہونے والے لیبلز۔';

  @override
  String get gameHintWord314Template => 'فائل جو تعیناتی سے پہلے متغیرات کے ساتھ تیار کی جاتی ہے۔';

  @override
  String get gameHintWord315Jinja => 'Ansible کی استعمال کردہ ٹیمپلیٹ زبان۔';

  @override
  String get gameHintWord316Abstraction => 'نفاذ کی تفصیلات کو سادہ انٹرفیس کے پیچھے چھپانا۔';

  @override
  String get gameHintWord317Agile => 'تکراری سافٹ ویئر ڈیلیوری طریقہ جو فیڈ بیک پر زور دیتا ہے۔';

  @override
  String get gameHintWord318Puppet => 'کنفیگریشن مینجمنٹ ٹول جو اعلانیہ مینی فیسٹس استعمال کرتا ہے۔';

  @override
  String get gameHintWord319Airflow => 'ورک فلو DAGs کی شیڈیولنگ اور آرکیسٹریشن کا پلیٹ فارم۔';

  @override
  String get gameHintWord320Argo => 'کلاؤڈ نیٹو پروجیکٹس کا خاندان جس میں GitOps ڈیلیوری کنٹرولر شامل ہے۔';

  @override
  String get gameHintWord321Rds => 'AWS کی منظم ریلیشنل ڈیٹابیس سروس کا مخفف۔';

  @override
  String get gameHintWord322Sqs => 'AWS کی منظم میسج قطار کا مخفف۔';

  @override
  String get gameHintWord323Sns => 'AWS کی پبلش-سبسکرائب اطلاعاتی سروس کا مخفف۔';

  @override
  String get gameHintWord324Ses => 'AWS کی ای میل بھیجنے والی سروس کا مخفف۔';

  @override
  String get gameHintWord325Iam => 'کلاؤڈ شناخت اور رسائی کے انتظام کا مخفف۔';

  @override
  String get gameHintWord326Kms => 'AWS کی انکرپشن کلید مینجمنٹ سروس کا مخفف۔';

  @override
  String get gameHintWord327Waf => 'فائر وال جو ایپلیکیشن لیئر کی ویب درخواستوں کو فلٹر کرتی ہے۔';

  @override
  String get gameHintWord328Eks => 'AWS کی منظم Kubernetes سروس کا مخفف۔';

  @override
  String get gameHintWord329Ecs => 'AWS کی منظم کنٹینر آرکیسٹریشن سروس کا مخفف۔';

  @override
  String get gameHintWord330Ecr => 'AWS کی کنٹینر امیج رجسٹری کا مخفف۔';

  @override
  String get gameHintWord331Aurora => 'MySQL اور PostgreSQL سے ہم آہنگ AWS ریلیشنل ڈیٹابیس۔';

  @override
  String get gameHintWord332Redshift => 'AWS کا تجزیاتی ڈیٹا ویئرہاؤس۔';

  @override
  String get gameHintWord333Neptune => 'AWS کا منظم گراف ڈیٹابیس۔';

  @override
  String get gameHintWord334Elasticache => 'AWS کی منظم ان-میموری کیشنگ سروس۔';

  @override
  String get gameHintWord335Athena => 'AWS سروس جو SQL سے آبجیکٹ اسٹوریج ڈیٹا کی کوئری کرتی ہے۔';

  @override
  String get gameHintWord336Glue => 'AWS کی سرور لیس ڈیٹا انٹیگریشن اور ETL سروس۔';

  @override
  String get gameHintWord337Emr => 'منظم بگ ڈیٹا پروسیسنگ کلسٹرز کے لیے AWS پلیٹ فارم۔';

  @override
  String get gameHintWord338Lambda => 'AWS سروس جو سرورز سنبھالے بغیر فنکشنز چلاتی ہے۔';

  @override
  String get gameHintWord339Cloudfront => 'AWS کا عالمی کانٹینٹ ڈیلیوری نیٹ ورک۔';

  @override
  String get gameHintWord340Cloudwatch => 'AWS سروس جو میٹرکس، لاگز اور الارمز جمع کرتی ہے۔';

  @override
  String get gameHintWord341Cloudshell => 'AWS کا براؤزر پر مبنی شیل ماحول۔';

  @override
  String get gameHintWord342Codecommit => 'AWS کی منظم Git ریپوزیٹری سروس۔';

  @override
  String get gameHintWord343Codebuild => 'AWS سروس جو سورس کمپائل کرتی اور بلڈ ٹیسٹ چلاتی ہے۔';

  @override
  String get gameHintWord344Codedeploy => 'AWS کی خودکار ایپلیکیشن تعیناتی سروس۔';

  @override
  String get gameHintWord345Codepipeline => 'AWS کی مسلسل ڈیلیوری پائپ لائن سروس۔';

  @override
  String get gameHintWord346Guardduty => 'AWS کی ذہین خطرہ شناخت سروس۔';

  @override
  String get gameHintWord347Inspector => 'AWS سروس جو ورک لوڈز میں کمزوریوں کا جائزہ لیتی ہے۔';

  @override
  String get gameHintWord348Macie => 'AWS سروس جو آبجیکٹ اسٹوریج میں حساس ڈیٹا دریافت کرتی ہے۔';

  @override
  String get gameHintWord349Shield => 'AWS کی منظم DDoS تحفظ سروس۔';

  @override
  String get gameHintWord350Snowball => 'بڑے ڈیٹا کی منتقلی کے لیے AWS کا فزیکل آلہ۔';

  @override
  String get gameHintWord351Snowcone => 'AWS آف لائن ٹرانسفر خاندان کا چھوٹا مضبوط آلہ۔';

  @override
  String get gameHintWord352Datasync => 'AWS کی خودکار آن لائن ڈیٹا ٹرانسفر سروس۔';

  @override
  String get gameHintWord353Msk => 'AWS کی منظم Apache Kafka سروس کا مخفف۔';

  @override
  String get gameHintWord354Backup => 'بحالی کے لیے رکھی گئی ڈیٹا کی کاپی۔';

  @override
  String get gameHintWord355Transcribe => 'AWS سروس جو تقریر کو متن میں بدلتی ہے۔';

  @override
  String get gameHintWord356Translate => 'AWS سروس جو زبانوں کے درمیان متن کا ترجمہ کرتی ہے۔';

  @override
  String get gameHintWord357Rekognition => 'AWS سروس جو تصاویر اور ویڈیو کا تجزیہ کرتی ہے۔';

  @override
  String get gameHintWord358Comprehend => 'AWS کی قدرتی زبان کے تجزیے کی سروس۔';

  @override
  String get gameHintWord359Textract => 'AWS سروس جو دستاویزات سے متن اور جدول نکالتی ہے۔';

  @override
  String get gameHintWord360Sagemaker => 'مشین لرننگ ماڈلز بنانے اور تعینات کرنے کا AWS پلیٹ فارم۔';

  @override
  String get gameHintWord361Spanner => 'Google Cloud کا عالمی سطح پر تقسیم شدہ ریلیشنل ڈیٹابیس۔';

  @override
  String get gameHintWord362Pub => 'پبلش-سبسکرائب میسجنگ پیٹرن کا پبلش کرنے والا حصہ۔';

  @override
  String get gameHintWord363Sub => 'پبلش-سبسکرائب میسجنگ پیٹرن کا سبسکرائبر حصہ۔';

  @override
  String get gameHintWord364Functions => 'سرور لیس پلیٹ فارمز کی پیش کردہ واقعہ پر مبنی کوڈ اکائیاں۔';

  @override
  String get gameHintWord365App => 'سافٹ ویئر ایپلیکیشن کا مختصر روپ۔';

  @override
  String get gameHintWord366Engine => 'Compute Engine جیسے ناموں میں عملدرآمد کا جزو۔';

  @override
  String get gameHintWord367Compute => 'ورچوئل مشینوں یا کنٹینرز کی فراہم کردہ پروسیسنگ صلاحیت۔';

  @override
  String get gameHintWord368Network => 'باہم جڑے سسٹمز جو ڈیٹا کا تبادلہ کرتے ہیں۔';

  @override
  String get gameHintWord369Security => 'سسٹمز اور معلومات کا خطرات سے تحفظ۔';

  @override
  String get gameHintWord370Identity => 'رسائی کے فیصلوں کے لیے صارف یا سروس کی نمائندگی۔';

  @override
  String get gameHintWord371Monitoring => 'سسٹم کی صحت اور رویے کی مسلسل نگرانی۔';

  @override
  String get gameHintWord372Logging => 'ایپلیکیشن اور سسٹم کے انفرادی واقعات ریکارڈ کرنا۔';

  @override
  String get gameHintWord373Trace => 'سروس کالز میں درخواست کے راستے کا ریکارڈ۔';

  @override
  String get gameHintWord374Metrics => 'وقت کے ساتھ سسٹم کے رویے کی عددی پیمائشیں۔';

  @override
  String get gameHintWord375Alert => 'اطلاع کہ نگرانی شدہ حالت پر توجہ درکار ہے۔';

  @override
  String get gameHintWord376Billing => 'استعمال شدہ کلاؤڈ سروسز کا حساب اور چارج۔';

  @override
  String get gameHintWord377Quota => 'وسیلے کی استعمال ہونے والی مقدار پر حد۔';

  @override
  String get gameHintWord378Region => 'جغرافیائی کلاؤڈ تعیناتی علاقہ جس میں availability zones ہوتے ہیں۔';

  @override
  String get gameHintWord379Tenancy => 'انتظام جو بتاتا ہے کہ صارفین انفراسٹرکچر کیسے بانٹتے ہیں۔';

  @override
  String get gameHintWord380Regional => 'ایسے وسیلے کو بیان کرتا ہے جو کلاؤڈ ریجن تک محدود ہو۔';

  @override
  String get gameHintWord381Cosmos => 'Azure کے عالمی سطح پر تقسیم شدہ ملٹی ماڈل ڈیٹابیس کا نام۔';

  @override
  String get gameHintWord382Synapse => 'Azure تجزیاتی پلیٹ فارم جو ویئرہاؤسنگ اور ڈیٹا پروسیسنگ کو یکجا کرتا ہے۔';

  @override
  String get gameHintWord383Sentinel => 'Microsoft کا کلاؤڈ نیٹو سکیورٹی معلومات اور واقعات کا پلیٹ فارم۔';

  @override
  String get gameHintWord384Defender => 'کلاؤڈ ورک لوڈز کی حفاظت کرنے والی Microsoft سکیورٹی مصنوعات کا خاندان۔';

  @override
  String get gameHintWord385Entra => 'Microsoft شناختی مصنوعات کا خاندان جو Azure AD برانڈنگ کی جگہ لیتا ہے۔';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager کا مخفف۔';

  @override
  String get gameHintWord387Arc => 'Azure سروس جو انتظام کو Azure سے باہر کے وسائل تک بڑھاتی ہے۔';

  @override
  String get gameHintWord388Aks => 'Azure کی منظم Kubernetes سروس کا مخفف۔';

  @override
  String get gameHintWord389Armor => 'Google Cloud ویب تحفظ سروس کے نام کا لاحقہ۔';

  @override
  String get gameHintWord390Blob => 'Azure کی آبجیکٹ اسٹوریج کا ڈیٹا قسم۔';

  @override
  String get gameHintWord391Files => 'Azure سروس جو منظم نیٹ ورک فائل شیئرز فراہم کرتی ہے۔';

  @override
  String get gameHintWord392Disk => 'ورچوئل مشین سے منسلک بلاک اسٹوریج ڈیوائس۔';

  @override
  String get gameHintWord393Function => 'کوڈ کا قابل طلب بلاک جو نتیجہ واپس کر سکتا ہے۔';

  @override
  String get gameHintWord394Logic => 'ورک فلو انضمام کے لیے Azure ایپ سروس کی قسم۔';

  @override
  String get gameHintWord395Insights => 'Azure ایپلیکیشن ٹیلی میٹری مصنوع کے نام کا لاحقہ۔';

  @override
  String get gameHintWord396Traffic => 'نیٹ ورک اینڈ پوائنٹس کے درمیان بہتا ڈیٹا۔';

  @override
  String get gameHintWord397Manager => 'Azure Resource کے کنٹرول پلین کی مصنوع کے نام کا لاحقہ۔';

  @override
  String get gameHintWord398Bastion => 'نجی ہوسٹ رسائی کے لیے منظم یا مضبوط کردہ داخلی نقطہ۔';

  @override
  String get gameHintWord399Front => 'Azure کی عالمی داخلی نقطہ سروس Front Door کا پہلا لفظ۔';

  @override
  String get gameHintWord400Door => 'Azure کی عالمی داخلی نقطہ سروس Front Door کا دوسرا لفظ۔';

  @override
  String get gameHintWord401Javascript => 'پروگرامنگ زبان جو براؤزرز اور Node رن ٹائمز میں وسیع پیمانے پر استعمال ہوتی ہے۔';

  @override
  String get gameHintWord402Perl => 'اسکرپٹنگ زبان جو متن پروسیسنگ اور ریگولر ایکسپریشنز کے لیے مشہور ہے۔';

  @override
  String get gameHintWord403Powershell => 'Microsoft کی آبجیکٹ پر مبنی شیل اور آٹومیشن زبان۔';

  @override
  String get gameHintWord404Java => 'JVM زبان جس میں Jenkins بنایا گیا ہے۔';

  @override
  String get gameHintWord405Json => 'ہلکا ڈیٹا فارمیٹ جس میں آبجیکٹس اور ارے ہوتے ہیں۔';

  @override
  String get gameHintWord406Xml => 'مارک اپ فارمیٹ جو تہہ در تہہ نامزد ٹیگز استعمال کرتا ہے۔';

  @override
  String get gameHintWord407Html => 'ویب صفحات کی ساخت بنانے والی مارک اپ زبان۔';

  @override
  String get gameHintWord408Css => 'ویب پیشکش کو کنٹرول کرنے والی اسٹائل شیٹ زبان۔';

  @override
  String get gameHintWord409String => 'متنی حروف کا سلسلہ۔';

  @override
  String get gameHintWord410Array => 'عناصر کا انڈیکس شدہ مجموعہ۔';

  @override
  String get gameHintWord411Hash => 'Ruby اور Perl میں کی-ویلیو کا ایسوسی ایٹو مجموعہ۔';

  @override
  String get gameHintWord412Object => 'خصوصیات اور رویے والی رن ٹائم قدر۔';

  @override
  String get gameHintWord413Class => 'کلاس پر مبنی زبانوں میں آبجیکٹس بنانے کی تعریف۔';

  @override
  String get gameHintWord414Method => 'آبجیکٹ یا کلاس سے وابستہ فنکشن۔';

  @override
  String get gameHintWord415Interface => 'معاہدہ جو جزو کی فراہم کردہ کارروائیاں بیان کرتا ہے۔';

  @override
  String get gameHintWord416Subclass => 'دوسری کلاس سے اخذ کردہ کلاس۔';

  @override
  String get gameHintWord417Super => 'کلیدی لفظ جو والد کلاس کا رویہ طلب کرتا ہے۔';

  @override
  String get gameHintWord418Protected => 'مرئیت کی سطح جو رسائی کو کلاس سے متعلق سیاق تک محدود کرتی ہے۔';

  @override
  String get gameHintWord419Exception => 'رن ٹائم حالت جو معمول کے کنٹرول فلو کو روک دیتی ہے۔';

  @override
  String get gameHintWord420Regex => 'متن سے مماثلت کے لیے پیٹرن کی علامت۔';

  @override
  String get gameHintWord421Lexical => 'ایسا اسکوپ جو سورس کوڈ کی ساخت سے طے ہو۔';

  @override
  String get gameHintWord422Scalar => 'Perl میں واحد قدر والے متغیر کی قسم۔';

  @override
  String get gameHintWord423Tuple => 'Python میں ناقابل تبدیل ترتیب وار مجموعہ۔';

  @override
  String get gameHintWord424List => 'Python میں قابل تبدیل ترتیب وار مجموعہ۔';

  @override
  String get gameHintWord425Dict => 'Python کی بلٹ ان میپنگ قسم کا نام۔';

  @override
  String get gameHintWord426Dictionary => 'کیز کو متعلقہ قدروں سے ملانے والا مجموعہ۔';

  @override
  String get gameHintWord427Set => 'منفرد قدروں کا مجموعہ۔';

  @override
  String get gameHintWord428Boolean => 'ڈیٹا قسم جو درست یا غلط ظاہر کرتی ہے۔';

  @override
  String get gameHintWord429Integer => 'عددی قسم جو مکمل اعداد ظاہر کرتی ہے۔';

  @override
  String get gameHintWord430Float => 'عددی قسم جو فلوٹنگ پوائنٹ قدریں ظاہر کرتی ہے۔';

  @override
  String get gameHintWord431Double => 'دوہری درستگی کی فلوٹنگ پوائنٹ قسم۔';

  @override
  String get gameHintWord432Null => 'آبجیکٹ یا نتیجے کی عدم موجودگی ظاہر کرنے والی قدر۔';

  @override
  String get gameHintWord433Undefined => 'JavaScript کی قدر جو تفویض شدہ قدر کی غیر موجودگی ظاہر کرتی ہے۔';

  @override
  String get gameHintWord434Promise => 'JavaScript آبجیکٹ جو آخر کار آنے والے غیر ہم وقت نتیجے کو ظاہر کرتا ہے۔';

  @override
  String get gameHintWord435Async => 'کلیدی لفظ جو غیر ہم وقت فنکشن کو نشان زد کرتا ہے۔';

  @override
  String get gameHintWord436Await => 'کلیدی لفظ جو غیر ہم وقت نتیجے کا انتظار کرتا ہے۔';

  @override
  String get gameHintWord437Callback => 'ایسا فنکشن جو کسی دوسرے عمل کے ذریعے طلب کیا جاتا ہے۔';

  @override
  String get gameHintWord438Closure => 'فنکشن جو اپنے اردگرد کے لیکسیکل اسکوپ تک رسائی برقرار رکھتا ہے۔';

  @override
  String get gameHintWord439Generator => 'فنکشن جو yield شدہ قدروں سے ترتیب کو سستی سے پیدا کرتا ہے۔';

  @override
  String get gameHintWord440Iterator => 'آبجیکٹ جو مجموعے کی قدروں پر آگے بڑھتا ہے۔';

  @override
  String get gameHintWord441Print => 'عام فنکشن جو قدر کو آؤٹ پٹ پر لکھتا ہے۔';

  @override
  String get gameHintWord442Input => 'Python فنکشن جو اسٹینڈرڈ ان پٹ سے ایک لائن پڑھتا ہے۔';

  @override
  String get gameHintWord443Open => 'فائل ہینڈل حاصل کرنے کے لیے استعمال ہونے والا فنکشن۔';

  @override
  String get gameHintWord444Close => 'کھلی فائل یا کنکشن کو چھوڑنے کا عمل۔';

  @override
  String get gameHintWord445Read => 'اسٹریم یا فائل سے ڈیٹا حاصل کرنے کا عمل۔';

  @override
  String get gameHintWord446Write => 'اسٹریم یا فائل میں ڈیٹا بھیجنے کا عمل۔';

  @override
  String get gameHintWord447Append => 'مجموعے کے آخر میں آئٹم شامل کرتا ہے۔';

  @override
  String get gameHintWord448Split => 'ڈیلیمیٹر کے ذریعے متن کو ذیلی سٹرنگز میں توڑتا ہے۔';

  @override
  String get gameHintWord449Join => 'علیحدگی کرنے والے کے ساتھ سٹرنگز کے سلسلے کو جوڑتا ہے۔';

  @override
  String get gameHintWord450Strip => 'Python سٹرنگ کے گرد خالی جگہ ہٹاتا ہے۔';

  @override
  String get gameHintWord451Chomp => 'Perl یا Ruby میں آخری ریکارڈ سیپریٹر ہٹاتا ہے۔';

  @override
  String get gameHintWord452Map => 'مجموعے کے ہر آئٹم پر تبدیلی لاگو کرتا ہے۔';

  @override
  String get gameHintWord453Filter => 'شرط پوری کرنے والے مجموعے کے آئٹمز رکھتا ہے۔';

  @override
  String get gameHintWord454Reduce => 'مجموعے کو جمع شدہ نتیجے میں یکجا کرتا ہے۔';

  @override
  String get gameHintWord455Range => 'Python قسم جو صحیح اعداد کی حسابی ترتیب ظاہر کرتی ہے۔';

  @override
  String get gameHintWord456Length => 'خصوصیت یا میتھڈ جو مجموعے کا سائز واپس کرتا ہے۔';

  @override
  String get gameHintWord457Len => 'Python کا بلٹ ان فنکشن جو مجموعے کا سائز واپس کرتا ہے۔';

  @override
  String get gameHintWord458Type => 'Python فنکشن جو آبجیکٹ کی قسم واپس کرتا ہے۔';

  @override
  String get gameHintWord459Isinstance => 'Python فنکشن جو قسم کے درجہ بندی میں رکنیت جانچتا ہے۔';

  @override
  String get gameHintWord460Yield => 'کلیدی لفظ جو جنریٹر سے قدر پیدا کرتا ہے۔';

  @override
  String get gameHintWord461Saas => 'کلاؤڈ ماڈل جو مکمل سافٹ ویئر ایپلیکیشنز فراہم کرتا ہے۔';

  @override
  String get gameHintWord462Paas => 'کلاؤڈ ماڈل جو منظم ایپلیکیشن ڈیولپمنٹ پلیٹ فارم فراہم کرتا ہے۔';

  @override
  String get gameHintWord463Iaas => 'کلاؤڈ ماڈل جو ورچوئل کمپیوٹ، اسٹوریج اور نیٹ ورکنگ فراہم کرتا ہے۔';

  @override
  String get gameHintWord464Hybrid => 'کلاؤڈ طریقہ جو نجی اور عوامی انفراسٹرکچر کو ملاتا ہے۔';

  @override
  String get gameHintWord465Archive => 'کم رسائی والے ڈیٹا کا طویل مدتی ذخیرہ۔';

  @override
  String get gameHintWord466Public => 'کلاؤڈ ملکیت کا ماڈل جو متعدد صارفین کو خدمات پیش کرتا ہے۔';

  @override
  String get gameHintWord467Private => 'کلاؤڈ ماڈل جو ایک ہی ادارے کے لیے مخصوص ہو۔';

  @override
  String get gameHintWord468Scalability => 'وسائل شامل کر کے بڑھتے بوجھ کو سنبھالنے کی صلاحیت۔';

  @override
  String get gameHintWord469Availability => 'وہ درجہ جس تک سروس ضرورت کے وقت قابل رسائی رہے۔';

  @override
  String get gameHintWord470Resilience => 'ناکامیوں کو برداشت کرنے اور ان سے بحال ہونے کی صلاحیت۔';

  @override
  String get gameHintWord471Redundancy => 'نقل شدہ اجزا جو واحد ناکامی کے نقاط کم کرتے ہیں۔';

  @override
  String get gameHintWord472Disaster => 'بڑی بندش جسے بحالی کی حکمت عملی سے حل کیا جاتا ہے۔';

  @override
  String get gameHintWord473Recovery => 'ناکامی کے بعد سروس یا ڈیٹا بحال کرنا۔';

  @override
  String get gameHintWord474Replicate => 'ڈیٹا یا ورک لوڈز کو دوسری جگہ کاپی کرنا۔';

  @override
  String get gameHintWord475Snapshotting => 'ڈیٹا یا سسٹم اسٹیٹ کی مخصوص وقت کی کاپیاں لینا۔';

  @override
  String get gameHintWord476Restore => 'محفوظ کاپی سے ڈیٹا بحال کرنے کا عمل۔';

  @override
  String get gameHintWord477Residency => 'تقاضا جو محفوظ ڈیٹا کا جغرافیائی مقام طے کرتا ہے۔';

  @override
  String get gameHintWord478Compliance => 'مطلوبہ ضوابط اور ادارہ جاتی کنٹرولز کی پابندی۔';

  @override
  String get gameHintWord479Governance => 'ٹیکنالوجی کے استعمال کو کنٹرول کرنے والی پالیسیاں اور عمل۔';

  @override
  String get gameHintWord480Audit => 'ریکارڈ شدہ سرگرمیوں اور تعمیل کے شواہد کا جائزہ۔';

  @override
  String get gameHintWord481Token => 'اجازت یا شناخت کی نمائندگی کرنے والی اسناد یا علامت۔';

  @override
  String get gameHintWord482Oauth => 'اجازت کا فریم ورک جو تفویض شدہ رسائی کی اجازت دیتا ہے۔';

  @override
  String get gameHintWord483Saml => 'XML پر مبنی معیار جو عموماً ادارہ جاتی سنگل سائن آن کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell پائپ لائنز میں استعمال ہونے والی مخصوص کمانڈ۔';

  @override
  String get gameHintWord485Algorithm => 'کمپیوٹیشنل مسئلہ حل کرنے کے مراحل کا متعین سلسلہ۔';

  @override
  String get gameHintWord486Key => 'انکرپشن کو کنٹرول کرنے یا محفوظ ڈیٹا کی شناخت کے لیے استعمال ہونے والی قدر۔';

  @override
  String get gameHintWord487Alias => 'شیل کمانڈ یا وسیلے کا متبادل نام۔';

  @override
  String get gameHintWord488Amend => 'Git کمٹ کا اختیار جو تازہ ترین کمٹ کو بدل دیتا ہے۔';

  @override
  String get gameHintWord489Allsigned => 'PowerShell ایگزیکیوشن پالیسی جو دستخط شدہ اسکرپٹس کا تقاضا کرتی ہے۔';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell پالیسی جو ڈاؤن لوڈ شدہ اسکرپٹس پر دستخط کا تقاضا کرتی ہے۔';

  @override
  String get gameHintWord491Acl => 'فہرست جو صارفین یا سسٹمز کی اجازتیں متعین کرتی ہے۔';

  @override
  String get gameHintWord492Uid => 'Unix صارف کو تفویض کردہ عددی شناخت کار۔';

  @override
  String get gameHintWord493Setgid => 'پرمیشن بٹ جو عمل یا وراثت کے دوران گروپ شناخت پر اثر ڈالتا ہے۔';

  @override
  String get gameHintWord494Setfacl => 'Linux کمانڈ جو فائل ایکسیس کنٹرول لسٹس سیٹ کرتی ہے۔';

  @override
  String get gameHintWord495Isolation => 'علیحدگی جو ورک لوڈز کو ایک دوسرے میں مداخلت سے روکتی ہے۔';

  @override
  String get gameHintWord496Sighup => 'Unix ہینگ اپ سگنل جو اکثر کنفیگریشن دوبارہ لوڈ کرنے کی درخواست کے لیے استعمال ہوتا ہے۔';

  @override
  String get gameHintWord497Sigint => 'Unix انٹرپٹ سگنل جو عموماً Control-C سے پیدا ہوتا ہے۔';

  @override
  String get gameHintWord498Sigstop => 'Unix سگنل جو پروسیس کو ختم کیے بغیر روک دیتا ہے۔';

  @override
  String get gameHintWord499Secrets => 'حساس قدریں جیسے پاس ورڈز اور ایکسیس کیز۔';

  @override
  String get gameHintWord500Secure => 'ایسے کنکشن کو بیان کرتا ہے جو غیر مجاز رسائی سے محفوظ ہو۔';

  @override
  String get fontSettingsTitle => 'فونٹ';

  @override
  String get fontChangeFont => 'فونٹ تبدیل کریں';

  @override
  String get fontSystemDefault => 'سسٹم ڈیفالٹ';

  @override
  String get fontPreview => 'پیش نظارہ';

  @override
  String get fontPreviewSample => 'ایک ایک سوال کے ساتھ DevOps سیکھیں';

  @override
  String get fontSelected => 'منتخب شدہ';

  @override
  String get fontLatinOnlyNote => 'حسبِ ضرورت فونٹ لاطینی حروف پر لاگو ہوتے ہیں۔ دیگر رسم الخط آپ کے آلے کے فونٹ میں ہی رہتے ہیں۔';

  @override
  String get fontDescSystem => 'آپ کے آلے کا بلٹ اِن فونٹ';

  @override
  String get fontDescGeometric => 'جیومیٹرک سانس سیرف';

  @override
  String get fontDescGeometricRounded => 'گول جیومیٹرک سانس سیرف';

  @override
  String get fontDescFriendly => 'دوستانہ سانس سیرف';

  @override
  String get fontDescCondensed => 'تنگ';

  @override
  String get fontDescRounded => 'گول سانس سیرف';

  @override
  String get fontDescRoundedDisplay => 'گول ڈسپلے';

  @override
  String gameScene3dScene(String value1) {
    return '3D منظر $value1';
  }
}
