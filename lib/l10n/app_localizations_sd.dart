// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get appTour => 'ايپ جو تعارف';

  @override
  String get skipTour => 'تعارف ڇڏي ڏيو';

  @override
  String get finishTour => 'تعارف مڪمل ڪريو';

  @override
  String tourStep(int current, int total) {
    return 'قدم $current / $total';
  }

  @override
  String get tourMenuTitle => 'نيويگيشن مينيو';

  @override
  String get tourSearch => 'لاڳاپيل کوئز جا زمرا ڳولڻ لاءِ هتي موضوع لکو.';

  @override
  String get tourCategory => 'گڏيل کوئز لاءِ DevOps تي ٽيپ ڪريو. ٻين زمرن ۾ سوالن جا سيٽ آهن. پوءِ پڙهڻ لاءِ سوال بڪ مارڪ ڪريو.';

  @override
  String get tourMenu => 'نيويگيشن مينيو کولڻ لاءِ هن بٽڻ تي ٽيپ ڪريو.';

  @override
  String get tourLearning => 'ڪارڊن لاءِ سکيا کوليو. ڪنهن به پاسي سوائپ ڪريو، شفل ڪريو، پاڻمرادو مٽائڻ هلايو يا ڪارڊ بڪ مارڪ ڪريو.';

  @override
  String get tourGames => 'رانديون کيڏي پوائنٽ ڪمايو. ليول وار راندين ۾ هر مڪمل ليول جا 100 پوائنٽ ملن ٿا؛ اشاري جي قيمت 20 پوائنٽ آهي.';

  @override
  String get tourAchievements => 'پنهنجون ڪاميابيون هتي ڏسو. نيون ڪاميابيون ۽ موجود ٿيم پاپ اپ ۾ ٻڌايا وڃن ٿا.';

  @override
  String get tourSettings => 'ٻولي، ٿيم ۽ آواز چونڊيو. بڪ مارڪ لاءِ محفوظ ڪيل ڊيٽا يا هي گائيڊ ٻيهر ڏسڻ لاءِ ايپ جو تعارف کوليو.';

  @override
  String get achievementUnlocked => 'ڪاميابي انلاڪ ٿي وئي!';

  @override
  String get themeUnlocked => 'نئون ٿيم موجود آهي!';

  @override
  String get themeUnlockedMessage => 'هاڻي سيٽنگون > ٿيم ۾ هي ٿيم چونڊي سگهو ٿا.';

  @override
  String get gameSounds => 'راند جا آواز';

  @override
  String get gameSoundsDescription => 'راندين ۽ کوئز لاءِ صوتي اثر. ڊوائيس جو آواز ۽ خاموش موڊ چيڪ ڪريو.';

  @override
  String get testSound => 'آواز آزمائيو';

  @override
  String get soundSettingBusy => 'مهرباني ڪري انتظار ڪريو...';

  @override
  String get soundSettingError => 'آواز جي سيٽنگ لوڊ يا محفوظ نه ٿي سگهي. ٻيهر ڪوشش ڪريو.';

  @override
  String get soundPlaybackError => 'آواز هلائي نه سگهيو. ڊوائيس يا برائوزر جون آڊيو سيٽنگون چيڪ ڪريو.';

  @override
  String get saveData => 'محفوظ ڪيل ڊيٽا';

  @override
  String get learningTranslationUnavailable => 'هن ڪارڊ جو اڃا چونڊيل ٻوليءَ ۾ ترجمو نه ڪيو ويو آهي.';

  @override
  String get saveQuestion => 'سوال محفوظ ڪريو';

  @override
  String defaultPortQuestion(String service) {
    return '$service جو ڊفالٽ پورٽ ڪهڙو آهي؟';
  }

  @override
  String get removeSavedItem => 'محفوظ ڪيل مان هٽايو';

  @override
  String get noSavedData => 'اڃا ڪجهه محفوظ نه ڪيو ويو آهي. سکيا جا ڪارڊ يا کوئز جا سوال بڪ مارڪ ڪريو.';

  @override
  String get savedDataError => 'محفوظ ڪيل ڊيٽا لوڊ يا اپڊيٽ نه ٿي سگهي. ٻيهر ڪوشش ڪريو.';

  @override
  String get savedItemUnavailable => 'هي محفوظ ڪيل شيءِ هاڻي موجود ناهي.';

  @override
  String get correctAnswer => 'صحيح جواب';

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get certificates => 'سرٽيفڪيٽ';

  @override
  String get whatsNew => 'نئون ڇا آهي';

  @override
  String get settings => 'سيٽنگون';

  @override
  String get darkMode => 'اونداهو موڊ';

  @override
  String get lightMode => 'روشن موڊ';

  @override
  String get language => 'ٻولي';

  @override
  String get selectLanguage => 'ٻولي چونڊيو';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'ڪوئز شروع ڪريو';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'زمرو مٽايو';

  @override
  String get dailyQuiz => 'روزاني ڪوئز';

  @override
  String get dailyQuizCompleted => 'روزاني ڪوئز مڪمل';

  @override
  String get dailyQuizCompletedMessage => 'توهان اڄ جو روزاني ڪوئز مڪمل ڪيو آهي. نئين چئلينج لاءِ سڀاڻي اچو!';

  @override
  String get leaderboard => 'ليڊربورڊ';

  @override
  String get shareApp => 'ايپ ونڊيو';

  @override
  String get rateApp => 'ايپ جي درجابندي ڪريو';

  @override
  String get about => 'بابت';

  @override
  String get ok => 'ٺيڪ آهي';

  @override
  String get home => 'گهر';

  @override
  String get games => 'رانديون';

  @override
  String get referAndEarn => 'دعوت ڏيو ۽ ڪمايو';

  @override
  String get themes => 'ٿيمون';

  @override
  String get version => 'ورزن';

  @override
  String get developer => 'ڊولپر';

  @override
  String get contact => 'رابطو';

  @override
  String get learning => 'سکيا';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'مون سان ڳنڍجو';

  @override
  String get aboutDescription => 'DevOps Quiz سان Linux، Docker، Kubernetes ۽ ٻيا DevOps موضوع سکي انٽرويوز ۽ سرٽيفڪيٽن جي تياري ڪريو.';

  @override
  String get quizResult => 'ڪوئز جو نتيجو';

  @override
  String get outstanding => 'شاندار!';

  @override
  String get greatJob => 'تمام سٺو!';

  @override
  String get goodEffort => 'سٺي ڪوشش!';

  @override
  String get keepPracticing => 'مشق جاري رکو!';

  @override
  String get dontGiveUp => 'همت نه هاريو!';

  @override
  String get shareMessage1 => 'منهنجو اسڪور';

  @override
  String get shareMessage2 => 'DevOps ڪوئز ۾!';

  @override
  String get downloadApp => 'ايپ ڊائونلوڊ ڪريو:';

  @override
  String get score => 'اسڪور';

  @override
  String get points => 'پوائنٽون';

  @override
  String get percentage => 'سيڪڙو';

  @override
  String get bonus => 'بونس';

  @override
  String get perfectScoreBonus => 'مڪمل اسڪور بونس';

  @override
  String get shareScore => 'اسڪور ونڊيو';

  @override
  String get restartQuiz => 'ڪوئز ٻيهر شروع ڪريو';

  @override
  String get backToCategories => 'زمرن ڏانهن واپس وڃو';

  @override
  String get greatProgress => 'تمام سٺو! توهان سٺي اڳڀرائي ڪري رهيا آهيو.';

  @override
  String get practiceMore => 'سٺي ڪوشش! وڌيڪ مشق سان اسڪور وڌندو.';

  @override
  String get keepLearning => 'سکندا رهو ۽ ٻيهر ڪوشش ڪريو.';

  @override
  String get everyExpertStarted => 'هر ماهر شروعات ۾ سکندڙ هو. مشق جاري رکو!';

  @override
  String get quizInstructions => 'ڪوئز جون هدايتون';

  @override
  String get instruction1 => 'هر سيٽ ۾ 25 سوال آهن.';

  @override
  String get instruction2 => 'هر سوال لاءِ 30 سيڪنڊ آهن.';

  @override
  String get instruction3 => 'سائو = صحيح جواب.';

  @override
  String get instruction4 => 'ڳاڙهو = غلط جواب.';

  @override
  String get instruction5 => 'جواب تبديل نٿو ڪري سگهجي.';

  @override
  String get instruction6 => 'پوئتي بٽڻ رڳو جائزي لاءِ آهي.';

  @override
  String get instruction7 => 'مڪمل ٿيڻ کان پوءِ اسڪور ڏيکاربو.';

  @override
  String get instruction8 => 'هر صحيح جواب تي 10 پوائنٽ ملن ٿا.';

  @override
  String excellentPerformance(Object expert) {
    return 'بهترين ڪارڪردگي! توهان هڪ $expert آهيو.';
  }

  @override
  String get selectCategory => 'زمرو چونڊيو';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'سيٽ چونڊيو';

  @override
  String get set => 'سيٽ';

  @override
  String get questions => 'سوال';

  @override
  String get noScoresYet => 'اڃا ڪو اسڪور ناهي';

  @override
  String get pointsShort => 'پوائنٽون';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz ۾ ڀليڪار';

  @override
  String hiUser(String name) {
    return 'هيلو $name';
  }

  @override
  String get challengeMode => 'چئلينج موڊ';

  @override
  String get challenge => 'چئلينج';

  @override
  String get question => 'سوال';

  @override
  String get reward => 'انعام';

  @override
  String get survivalMode => 'بقا موڊ';

  @override
  String get speedChallenge => 'رفتار جو چئلينج';

  @override
  String get dailyChallenge => 'روزاني چئلينج';

  @override
  String get ultimateChallenge => 'آخري چئلينج';

  @override
  String get timeLeft => 'باقي وقت';

  @override
  String get completed => 'مڪمل';

  @override
  String get locked => 'بند ٿيل';

  @override
  String get back => 'پوئتي';

  @override
  String get next => 'اڳيون';

  @override
  String get submit => 'جمع ڪريو';

  @override
  String get achievements => 'ڪاميابيون';

  @override
  String get streak => 'تسلسل';

  @override
  String get days => 'ڏينهن';

  @override
  String get tomorrowsReward => 'سڀاڻي جو انعام';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 منهنجو اسڪور $score/$totalQuestions #DevOps Quiz!\n\n🏆 پوائنٽون: $earnedPoints\n🔥 بونس: $bonusPoints\n📊 سيڪڙو: $percentage%\n\nايپ ڊائونلوڊ ڪريو:';
  }

  @override
  String get gameUiSpinWheel => 'ويل گهمايو';

  @override
  String get gameUiSpinAndWinBonusPoints => 'گهمايو ۽ بونس پوائنٽس کٽيو';

  @override
  String get gameUiScratchCard => 'اسڪريچ ڪارڊ';

  @override
  String get gameUiScratchToRevealAReward => 'انعام ظاهر ڪرڻ لاءِ ڇنڊيو';

  @override
  String get gameUiLuckySlots => 'لڪي سلاٽس';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'سلاٽس گهمايو ۽ پوائنٽس کٽيو';

  @override
  String get gameUiMysteryDeal => 'ڳجهو سودو';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'هڪ ڳجهو دٻو چونڊيو ۽ جواب ڏيو';

  @override
  String get gameUiMemoryMatch => 'ميموري ميچ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps جوڙا ملايو';

  @override
  String get gameUiWordGuess => 'لفظ اندازو';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'ليولن ذريعي DevOps لفظن جو اندازو لڳايو';

  @override
  String get gameUiFindWords => 'لفظ ڳوليو';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'گرڊ ۾ لڪيل DevOps اصطلاح ڳوليو';

  @override
  String get gameUiSpotTheDifference => 'فرق ڳوليو';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'ٻن تصويري منظرن ۾ پنج تبديليون ڳوليو';

  @override
  String get gameUiJigsawPuzzle => 'جگسا پزل';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'شيئر ڪيل HD جانورن ۽ قدرت جون تصويرون ٻيهر جوڙيو';

  @override
  String get gameUiHighOrLow => 'وڌيڪ يا گهٽ';

  @override
  String get gameUiBuildAStreak => 'لڳاتار ڪاميابيون ٺاهيو';

  @override
  String get gameUiTrueOrFalseBlitz => 'صحيح يا غلط بلٽز';

  @override
  String get gameUiQuickAnswerQuiz => 'تڪڙي جواب وارو ڪوئز';

  @override
  String get gameUiCommandMatch => 'ڪمانڊ ميچ';

  @override
  String get gameUiMatchCommandsToMeanings => 'ڪمانڊن کي سندن معنائن سان ملايو';

  @override
  String get gameUiPortMaster => 'پورٽ ماسٽر';

  @override
  String get gameUiGuessDefaultPorts => 'ڊفالٽ پورٽس جو اندازو لڳايو';

  @override
  String get gameUiTicTacToe => 'ٽڪ-ٽيڪ-ٽو';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X نوٽس اينڊ ڪراسز ڪمپيوٽر';

  @override
  String get gameUiConnectFour => 'ڪنيڪٽ فور';

  @override
  String get gameUiDropFourDiscs => 'چار ڊسڪون ڇڏيو';

  @override
  String get gameUiLudo => 'لوڊو';

  @override
  String get gameUiRaceAgainstBots => 'بوٽس خلاف ڊوڙ';

  @override
  String get gameUiChess => 'شطرنج';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'شطرنج جو بورڊ، جائز چالون، ٻه رانديگر';

  @override
  String get gameUiSnakeAndLadders => 'سانپ ۽ ڏاڪا';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'پاسن وارو بورڊ، سانپ ۽ ڏاڪا، ٻه رانديگر';

  @override
  String get gameUiGames => 'رانديون 🎮';

  @override
  String get gameUiPlayEarn => 'کيڏو ۽ ڪمايو';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'رانديون کيڏو ۽ بونس پوائنٽس ڪمايو!';

  @override
  String get gameUiSearchGames => 'رانديون ڳوليو';

  @override
  String get gameUiClearSearch => 'ڳولا صاف ڪريو';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" سان ڪا راند نٿي ملي';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'گهمايو ۽ بونس پوائنٽس کٽيو.';

  @override
  String get gameUiScratchToRevealYourReward => 'پنهنجو انعام ظاهر ڪرڻ لاءِ ڇنڊيو.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'سلاٽس گهمايو ۽ پوائنٽس کٽيو.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'هڪ ڳجهو دٻو چونڊيو ۽ پوائنٽس کٽڻ لاءِ صحيح جواب ڏيو.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'پوائنٽس ڪمائڻ لاءِ DevOps جوڙا ملايو.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ڪوششن ۾ DevOps اصطلاح جو اندازو لڳايو.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'گرڊ ۾ لڪيل DevOps اصطلاح ڳوليو.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 ليولن ۾ DevOps لفظ ڳولڻ لاءِ سوائپ ڪريو.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'ٻن تصويري منظرن ۾ پنج تبديليون ڳوليو.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'شيئر ڪيل HD جانورن ۽ قدرت جون تصويرون ٻيهر جوڙيو.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'لڳاتار ڪاميابيون ٺاهيو ۽ پنهنجا پوائنٽس محفوظ ڪريو.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'تڪڙن جوابن سان گهڙيال کي مات ڏيو.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'صحيح يا غلط بلٽز 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'ڪمانڊن کي سندن ڪم سان ملايو.';

  @override
  String get gameUiCommandMatch670a76e => 'ڪمانڊ ميچ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 جانن سان ڊفالٽ پورٽس جو اندازو لڳايو.';

  @override
  String get gameUiPortMaster8f5fd42 => 'پورٽ ماسٽر 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'ڪمپيوٽر خلاف O/X کيڏو.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'کٽڻ لاءِ هڪ قطار ۾ چار ڊسڪون ڇڏيو.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'پنهنجا مهرا ٽن بوٽس خلاف ڊوڙايو.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'جائز چالن سان مقامي ٻن رانديگرن وارو شطرنج.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'ٻن رانديگرن وارو جائز شطرنج جو مقابلو کيڏو.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'ٻن رانديگرن وارو پاسن جو بورڊ گيم.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 تائين ڊوڙ. ڏاڪا چڙهو ۽ سانپن کان بچو.';

  @override
  String get gameUiPlay => 'کيڏو';

  @override
  String get gameUiWheelStopped => 'ويل بيهي ويو!';

  @override
  String get gameUiYourRewardIs => 'توهان جو انعام آهي';

  @override
  String get gameUiPOINTS => 'پوائنٽس';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'هي انعام وٺڻ لاءِ 1 ڪوئز سوال جو صحيح جواب ڏيو.';

  @override
  String get gameUiWrongAnswerRewardLost => 'غلط جواب = انعام وڃائجي ويو.';

  @override
  String get gameUiAnswerQuestion => 'سوال جو جواب ڏيو';

  @override
  String get gameUiSpinWheele449982 => '🎡 ويل گهمايو';

  @override
  String get gameUiDailySpin => 'روزاني اسپن';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'ويل گهمايو، پوءِ پنهنجو انعام وٺڻ لاءِ سوال جو جواب ڏيو!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'توهان اڄ جو اسپن اڳ ۾ ئي استعمال ڪري چڪا آهيو.';

  @override
  String get gameUiSpinning => 'گهمي رهيو آهي...';

  @override
  String get gameUiSPINNOW => 'هاڻي گهمايو';

  @override
  String get gameUiCOMEBACKTOMORROW => 'سڀاڻي موٽي اچو';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'اڄ جو انعام: ⭐ $value1 پوائنٽس';
  }

  @override
  String get gameUiBackToGames => 'راندين ڏانهن واپس';

  @override
  String get gameUiSPIN => 'گهمايو';

  @override
  String get gameUiRewardRevealed => 'انعام ظاهر ٿيو!';

  @override
  String get gameUiYouFound => 'توهان کي مليو';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ اسڪريچ ڪارڊ';

  @override
  String get gameUiDailyScratch => 'روزاني اسڪريچ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'اڄ جو انعام ظاهر ڪرڻ لاءِ ڪارڊ ڇنڊيو!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'توهان اڄ جو اسڪريچ ڪارڊ اڳ ۾ ئي استعمال ڪري چڪا آهيو.';

  @override
  String get gameUiAlreadyScratched => 'اڳ ۾ ئي ڇنڊيل آهي';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'ٻئي انعام لاءِ سڀاڻي موٽي اچو.';

  @override
  String get gameUiYouRevealed => 'توهان ظاهر ڪيو';

  @override
  String get gameUiSCRATCHHERE => 'هتي ڇنڊيو  👆';

  @override
  String get gameUiJACKPOT777 => 'جيڪ پاٽ 777!';

  @override
  String get gameUiLucky777 => 'لڪي 777!';

  @override
  String get gameUiYourReward => 'توهان جو انعام';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 لڪي سلاٽس';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'سلاٽس گهمايو، پوءِ انعام وٺڻ لاءِ سوال جو جواب ڏيو!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'توهان اڄ اڳ ۾ ئي کيڏي چڪا آهيو.';

  @override
  String get gameUiSPINNING => 'گهمي رهيو آهي...';

  @override
  String get gameUiROLLNOW => 'هاڻي رول ڪريو';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 جيڪ پاٽ! 777 پوائنٽ موجود آهن!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'ميسٽري ڊيل جي حالت چيڪ نٿي ٿي سگهي: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'دٻو $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 پوائنٽ';
  }

  @override
  String get gameUiStartQuestion => 'سوال شروع ڪريو';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ميسٽري ڊيل';

  @override
  String get gameUiMysteryDealCompleted => 'ميسٽري ڊيل مڪمل ٿي وئي!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'توهان اڄ اڳ ۾ ئي ميسٽري ڊيل کيڏي چڪا آهيو.';

  @override
  String get gameUiTodayYouWon => 'اڄ توهان کٽيو';

  @override
  String get gameUiTodaySReward => 'اڄ جو انعام';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 پوائنٽ';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 پوائنٽ وڃايا';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'هڪ ٻئي ميسٽري دٻي لاءِ سڀاڻي موٽي اچو!';

  @override
  String get gameUiChooseYourMysteryBox => 'پنهنجو ميسٽري دٻو چونڊيو';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'هر دٻي ۾ 10 کان 1000 پوائنٽن جي وچ ۾ لڪل انعام آهي.';

  @override
  String get gameUiPickOnlyOneBox => 'صرف هڪ دٻو چونڊيو!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'سڀ $value1 درجا مڪمل!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'درجو $value1 مڪمل!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 چالن ۾ مڪمل ٿيو.\nتوهان $value2 پوائنٽ ڪمايا!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 چالن ۾ مڪمل ٿيو.\nهي درجو اڳ ۾ ئي مڪمل ٿي چڪو هو.';
  }

  @override
  String get gameUiNextLevel => 'ايندڙ درجو';

  @override
  String get gameUiDone => 'ٿي ويو';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'ميموري ميچ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'سڀ 100 درجا مڪمل!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'توهان ميموري ميچ جا سڀ درجا مڪمل ڪيا. وڏو سٺو کيڏيو!';

  @override
  String get gameUiChooseLevel => 'درجو چونڊيو';

  @override
  String gameUiMoves(String value1) {
    return 'چالون: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'درجو $value1 مان $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 جوڙا';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'درجو $value1 ياد ڪريو';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 ملندڙ جوڙا ڳوليو';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz جو لوگو';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'باب 1 · بلڊ پائپ لائن بحال ڪريو';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'باب 2 · ڪلائوڊ پليٽ فارم کي وڌايو';

  @override
  String get gameUiChapter3ProtectProduction => 'باب 3 · پروڊڪشن کي بچايو';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'جمع ڪرائڻ لاءِ باقي سڀ $value1 اکر استعمال ڪريو.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'سڀ درجا مڪمل!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'درجو $value1 مڪمل!';
  }

  @override
  String get gameUiTryAgain => 'ٻيهر ڪوشش ڪريو';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'لفظ $value1 هو. توهان $value2 پوائنٽ ڪمايا.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'لفظ $value1 هو. توهان $value3 اشاري کان پوءِ $value2 پوائنٽ ڪمايا.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'لفظ $value1 هو. توهان $value3 اشارن کان پوءِ $value2 پوائنٽ ڪمايا.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'لفظ $value1 هو. درجو $value2 اڃا توهان جو انتظار ڪري رهيو آهي.';
  }

  @override
  String get gameUiFinish => 'ختم ڪريو';

  @override
  String get gameUiNextLevel254fd73 => 'ايندڙ درجو';

  @override
  String get gameUiRetryLevel => 'درجو ٻيهر ڪوشش ڪريو';

  @override
  String get gameUiHowToPlay => 'ڪيئن کيڏجي';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'هر درجي ۾ هڪ DevOps لفظ آهي. پنجن اکرن کان ننڍا لفظ مفت اکرن کان سواءِ شروع ٿين ٿا؛ ڊگها لفظ هڪ اکر سان شروع ٿين ٿا. جواب ٺاهڻ لاءِ اکرن جو ريڪ استعمال ڪريو ۽ Enter دٻايو. اشارا ٻيو اکر ظاهر ڪن ٿا ۽ توهان جي بيلنس مان 20 پوائنٽ گھٽائين ٿا. هر مڪمل ٿيل درجي تي 100 پوائنٽ ملن ٿا.';

  @override
  String get gameUiGotIt => 'سمجهي ويس';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'سڀ $value1 درجا مڪمل!';
  }

  @override
  String get gameUiEasy => 'آسان';

  @override
  String get gameUiMedium => 'وچولو';

  @override
  String get gameUiHard => 'ڏکيو';

  @override
  String get gameUiHowToPlay13a6b22 => 'ڪيئن کيڏجي';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'درجو $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'انعام $value1 پوائنٽ · استعمال ٿيل اشارا $value2';
  }

  @override
  String get gameUiHint20Pts => 'اشارو · −20 پوائنٽ';

  @override
  String get gameUiEnter => 'داخل';

  @override
  String get gameUiDelete => 'ڊاهيو';

  @override
  String get gameUiDragThroughAWord => 'لفظ مان گھليو';

  @override
  String get gameUiDragThroughEachWord => 'هر لفظ مان گھليو';

  @override
  String get gameUiReleaseToSelect => 'چونڊڻ لاءِ ڇڏيو';

  @override
  String gameUiFound(String value1) {
    return 'ملي ويو $value1';
  }

  @override
  String get gameUiNoWordThere => 'اتي ڪو لفظ ناهي';

  @override
  String gameUiAlreadyFound(String value1) {
    return 'اڳ ۾ ئي ملي چڪو $value1';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'ڳوليو $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'سڀ درجا مڪمل!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'توهان سڀ لفظ ڳولي ورتا ۽ $value1 پوائنٽ ڪمايا.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'توهان سڀ لفظ ڳولي ورتا. هي درجو اڳ ۾ ئي مڪمل ٿي چڪو هو.';

  @override
  String get gameUiAll500LevelsComplete => 'سڀ 500 درجا مڪمل!';

  @override
  String get gameUiReviewLevels => 'درجن جو جائزو وٺو';

  @override
  String gameUiLeft(String value1) {
    return '$value1 باقي';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 پوائنٽ';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'پيش رفت محفوظ نه ٿي سگهي. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'توهان $value1 پوائنٽ ڪمايا!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'توهان هي تصوير اڳ ۾ ئي مڪمل ڪري چڪا آهيو. ٻيهر کيڏڻ تي اضافي پوائنٽ نه ملندا.';

  @override
  String get gameUiYouCompletedEveryPicture => 'توهان سڀ تصويرون مڪمل ڪيون!';

  @override
  String get gameUiLevels => 'درجا';

  @override
  String get gameUiPictureB => 'تصوير B';

  @override
  String get gameUiPictureA => 'تصوير A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'تصوير لوڊ نه ٿي سگهي. ٻيهر ڪوشش ڪريو';

  @override
  String get gameUiResetZoom => 'زوم ري سيٽ ڪريو';

  @override
  String get gameUiZoomBothPictures => 'ٻئي تصويرون زوم ڪريو';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'اشارو · في اشارو $value1 پوائنٽ';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'پيش رفت لوڊ نه ٿي سگهي. ٻيهر ڪوشش ڪريو';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'درجو $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'سڀ فرق ملي ويا!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count فرق ڳوليو. ڪنهن به تصوير ۾ هر هڪ کي ٽيپ ڪريو.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'چُوڪون: $value1  ·  اشارا: $value2 (−$value3 پوائنٽ)  ·  $value4 درجا مڪمل';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'ايندڙ درجو: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'پزل $value1 مڪمل!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'تصوير $value1 چالن ۾ مڪمل ٿي. توهان $value2 پوائنٽ ڪمايا.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'تصوير $value1 چالن ۾ مڪمل ٿي.';
  }

  @override
  String get gameUiNextPuzzle => 'ايندڙ پزل';

  @override
  String get gameUiAllPuzzlesComplete => 'سڀ پزل مڪمل';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'پزل جو ٽڪرو $value1 مان $value2، صحيح جاءِ تي';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'پزل جو ٽڪرو $value1 مان $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'پزل چونڊيو';

  @override
  String get gameUiShufflePieces => 'ٽڪرا ڦيرايو';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'پزل جي تصوير لوڊ نه ٿي سگھي.';

  @override
  String get gameUiPreviousPuzzle => 'اڳيون پزل';

  @override
  String gameUiPuzzle(String value1) {
    return 'پزل $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 چالون';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ٽڪرن کي مٽائڻ لاءِ ڇڪيو، يا ٻه ٽڪرا ٽيپ ڪريو.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 پزل حل ٿيا  ·  هر هڪ جا $value3 پوائنٽس';
  }

  @override
  String get gameUiGameOver => 'راند ختم';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'انگ $value1 هو.\nسلسلو: $value2\nتوهان $value3 پوائنٽس حاصل ڪيا!\n\nٻئي موقعي لاءِ سڀاڻي موٽي اچو!';
  }

  @override
  String get gameUiHigherOrLower => 'وڌيڪ يا گھٽ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'اڄ اڳ ۾ ئي کيڏي چڪا آهيو!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'توهان $value1/$value2/$value3 تي کيڏيو هو.\n\nنئون سلسلو ٺاهڻ لاءِ سڀاڻي موٽي اچو!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'توهان اڄ اڳ ۾ ئي کيڏي چڪا آهيو.\n\nٻئي موقعي لاءِ سڀاڻي موٽي اچو!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 سلسلو: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ پوائنٽس: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'ايندڙ انگ وڌيڪ هوندو يا گھٽ؟';

  @override
  String get gameUiLower => 'گھٽ';

  @override
  String get gameUiHigher => 'وڌيڪ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'صحيح يا غلط بلٽز ⚡';

  @override
  String get gameUiTimeSUp => 'وقت ختم!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'صحيح جواب: $value1\nبهترين سلسلو: $value2\n$value3توهان $value4 پوائنٽس حاصل ڪيا!\n\nٻئي دور لاءِ سڀاڻي موٽي اچو!';
  }

  @override
  String get gameUiStreakBonus20 => 'سلسلي جو بونس: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'ڏيکاريل جواب صحيح آهي يا غلط؟';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 زمرن ۾ $value1 سوال';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'توهان وٽ $value1 سيڪنڊ آهن. هر صحيح جواب تي $value2 پوائنٽس ملن ٿا. غلط جواب تي $value3 سيڪنڊ گھٽجن ٿا. 5 جو سلسلو ٺاهڻ تي +20 بونس ملي ٿو.';
  }

  @override
  String get gameUiRoundTimer => 'دور جو ٽائمر';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 سيڪنڊ';
  }

  @override
  String get gameUiStart => 'شروع ڪريو';

  @override
  String get gameUiTrue => 'صحيح';

  @override
  String get gameUiFalse => 'غلط';

  @override
  String get gameUiCommandMatch26b0e70 => 'ڪمانڊ ميچ 🔗';

  @override
  String get gameUiAllMatched => 'سڀ ملائي ويا!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'غلطيون: $value1\nتوهان $value2 پوائنٽس حاصل ڪيا!\n\nنون ڪمانڊن لاءِ سڀاڻي موٽي اچو!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'دور $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ڪمانڊ کي ٽيپ ڪريو، پوءِ ان جي معنيٰ کي ٽيپ ڪريو.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'هاڻي ملندڙ معنيٰ کي ٽيپ ڪريو.';

  @override
  String get gameUiPortMaster9c730cf => 'پورٽ ماستر 🔌';

  @override
  String get gameUiPortMastera796b69 => 'پورٽ ماستر!';

  @override
  String get gameUiOutOfLives => 'زندگيون ختم';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'صحيح جواب: $value1\nتوهان $value2 پوائنٽس حاصل ڪيا!\n\nٻئي دور لاءِ سڀاڻي موٽي اچو!';
  }

  @override
  String get gameUiYouEarned10Points => 'توهان 10 پوائنٽس حاصل ڪيا!';

  @override
  String get gameUiYouWin => 'توهان کٽيو!';

  @override
  String gameUiWins(String value1) {
    return '$value1 کٽيو!';
  }

  @override
  String get gameUiXWins => 'X کٽيو!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) کٽيو!';
  }

  @override
  String get gameUiComputerWins => 'ڪمپيوٽر کٽيو';

  @override
  String get gameUiOWins => 'O کٽيو!';

  @override
  String get gameUiPlayer2OWins => 'پليئر 2 (O) کٽيو!';

  @override
  String get gameUiItSADraw => 'برابري ٿي وئي';

  @override
  String get gameUiYourTurn => 'توهان جي واري';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 جي واري';
  }

  @override
  String get gameUiComputerIsThinking => 'ڪمپيوٽر سوچي رهيو آهي';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'پليئر $value1 جي چال';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 جي چال';
  }

  @override
  String get gameUiPlayer2ToMove => 'پليئر 2 جي چال';

  @override
  String get gameUiNewRound => 'نئون دور';

  @override
  String get gameUiVsComputer => 'ڪمپيوٽر خلاف';

  @override
  String get gameUi2Players => '2 پليئرز';

  @override
  String get gameUiYou => 'توهان';

  @override
  String get gameUiDraws => 'برابريون';

  @override
  String get gameUiPlayer2 => 'پليئر 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'خانو $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'ٻيهر کيڏو';

  @override
  String get gameUiConnectFourWin20Points => 'ڪنيڪٽ فور ۾ کٽڻ: 20 پوائنٽس!';

  @override
  String get gameUiBotWins => 'بوٽ کٽيو!';

  @override
  String get gameUiRed => 'ڳاڙهو';

  @override
  String get gameUiYellow => 'پيلو';

  @override
  String get gameUiBoardFullDraw => 'بورڊ ڀرجي ويو — برابري';

  @override
  String get gameUiBotIsThinking => 'بوٽ سوچي رهيو آهي';

  @override
  String get gameUiBotTurn => 'بوٽ جي واري';

  @override
  String get gameUiNewGame => 'نئين راند';

  @override
  String get gameUiVsBot => 'بوٽ خلاف';

  @override
  String get gameUi2Player => '2 پليئر';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'بوٽ خلاف کيڏو · ڊسڪ اڇلائڻ لاءِ ڪالم کي ٽيپ ڪريو';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'ٻه پليئر · ڊسڪ اڇلائڻ لاءِ ڪالم کي ٽيپ ڪريو';

  @override
  String gameUiColumn(String value1) {
    return 'ڪالم $value1';
  }

  @override
  String get gameUiYouRed => 'توهان · ڳاڙهو';

  @override
  String get gameUiRedPlayer1 => 'ڳاڙهو · پليئر 1';

  @override
  String get gameUiBotYellow => 'بوٽ · پيلو';

  @override
  String get gameUiYellowPlayer2 => 'پيلو · پليئر 2';

  @override
  String get gameUiLudoMatchStats => 'لوڊو ميچ جا انگ اکر';

  @override
  String get gameUiNoCompletedMatchesYet => 'اڃا ڪي ميچون مڪمل نه ٿيون آهن.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'کيڏيل $value1  ·  کٽيل $value2  ·  هارايل $value3';
  }

  @override
  String get gameUiClose => 'بند ڪريو';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'لوڊو چيمپيئن! توهان 50 پوائنٽس حاصل ڪيا.';

  @override
  String get gameUiNewLudoGame => 'نئين لوڊو راند';

  @override
  String get gameUiBotOpponents => 'بوٽ مخالف';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'نئين ميچ شروع ڪرڻ سان توهان جي محفوظ ڪيل راند بدلجي ويندي.';

  @override
  String get gameUiCancel => 'رد ڪريو';

  @override
  String get gameUiStartGame => 'راند شروع ڪريو';

  @override
  String get gameUiPlayerColours => 'پليئر جا رنگ';

  @override
  String get gameUiApply => 'لاڳو ڪريو';

  @override
  String get gameUiMatchStats => 'ميچ جا انگ اکر';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 چيڪميٽ سان کٽيو';
  }

  @override
  String get gameUiBlack => 'ڪارو';

  @override
  String get gameUiWhite => 'اڇو';

  @override
  String get gameUiComputerWinsByCheckmate => 'ڪمپيوٽر چيڪميٽ سان کٽيو';

  @override
  String get gameUiYouWinByCheckmate => 'توهان چيڪميٽ سان کٽيو';

  @override
  String get gameUiDrawByStalemate => 'اسٽيلميٽ سبب برابري';

  @override
  String get gameUiDraw => 'برابري';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · چيڪ';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'چيڪميٽ! توهان 50 پوائنٽ حاصل ڪيا.';

  @override
  String get gameUiStartANewGame => 'نئين راند شروع ڪريون؟';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'رانديگر جو موڊ تبديل ڪرڻ سان محفوظ ٿيل ميچ مٽجي ويندو.';

  @override
  String get gameUiComputer => 'ڪمپيوٽر';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · اڇو / رانديگر 2 · ڪارو';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'توهان اڇا آهيو · ڪمپيوٽر ڪارو آهي';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (اڇو) · ڪمپيوٽر (ڪارو)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'توهان ڪارا آهيو · ڪمپيوٽر اڇو آهي';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (ڪارو) · ڪمپيوٽر (اڇو)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 پهرين رول ڪندو';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ٻيهر رول ڪندو';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 جي رول ڪرڻ جي واري';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'سانپ ۽ ڏاڪڻ ۾ فتح: 100 پوائنٽ!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'رانديگر تبديل ڪرڻ سان محفوظ ٿيل راند مٽجي ويندي.';

  @override
  String get gameUiStartANewLevel => 'نئون ليول شروع ڪريون؟';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'ليول تبديل ڪرڻ سان محفوظ ٿيل راند مٽجي ويندي.';

  @override
  String get gameUiChangeLevel => 'ليول تبديل ڪريو';

  @override
  String get gameUiPlayers => 'رانديگر';

  @override
  String get gameUiPlayAgainstBot => 'بوٽ خلاف کيڏو';

  @override
  String get gameUi3Players => '3 رانديگر';

  @override
  String get gameUi4Players => '4 رانديگر';

  @override
  String get gameUiLevel1709305 => 'ليول';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'ليول $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 رانديگر · ليول $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · رول';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 تي $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'سوال لوڊ ڪري نه سگهيو: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'صحيح جواب!';

  @override
  String get gameUiWrongAnswer => 'غلط جواب';

  @override
  String get gameUiYouClaimedYourReward => 'توهان پنهنجو انعام حاصل ڪيو!';

  @override
  String get gameUiAddedToYourTotalPoints => 'توهان جي ڪل پوائنٽن ۾ شامل ڪيو ويو.';

  @override
  String get gameUiTheCorrectAnswerWas => 'صحيح جواب هو:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 پوائنٽ جو انعام ختم ٿي ويو.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'توهان جا موجود پوائنٽ نه ڪپيا ويا.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'سڀاڻي موٽي اچو ۽ ٻيهر ڪوشش ڪريو.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'سوال لوڊ ڪري نه سگهيو.';

  @override
  String get gameUiYourReward677fa6e => 'توهان جو انعام';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 پوائنٽ';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'اهو حاصل ڪرڻ لاءِ صحيح جواب ڏيو!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'ٻئي دور لاءِ سڀاڻي موٽي اچو.';

  @override
  String get gameUiGreen => 'ساوو';

  @override
  String get gameUiBlue => 'نيرو';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 سوچي رهيو آهي';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: هڪ مهرو چونڊيو';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: پانسو اڇليو';
  }

  @override
  String gameUiDice(String value1) {
    return 'پانسو $value1';
  }

  @override
  String get gameUiRollDice => 'پانسو اڇليو';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 مهرو $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'رانديگر $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'بوٽ $value1';
  }

  @override
  String get gameUiBot => 'بوٽ';

  @override
  String get gameUiHintInsufficientPoints => 'اشارو استعمال ڪرڻ لاءِ توهان کي 20 پوائنٽس گهرجن.';

  @override
  String get gameUiHintPurchaseFailed => 'اشارو خريد نه ٿي سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get gameUiChessKing => 'بادشاهه';

  @override
  String get gameUiChessQueen => 'راڻي';

  @override
  String get gameUiChessRook => 'رخ';

  @override
  String get gameUiChessBishop => 'فيل';

  @override
  String get gameUiChessKnight => 'گھوڙو';

  @override
  String get gameUiChessPawn => 'پيادو';

  @override
  String get gameUiChessEmpty => 'خالي';

  @override
  String get gameSceneLampAndFlowers => 'ڏيئو ۽ گل';

  @override
  String get gameSceneGardenFriends => 'باغ جا دوست';

  @override
  String get gameSceneUnderwaterExplorers => 'پاڻي هيٺ جا کوجنائيندڙ';

  @override
  String get gameSceneOceanOrca => 'سمنڊ جو اورڪا';

  @override
  String get gameSceneFoxInTheMeadow => 'گاھ جي ميدان ۾ لومڙي';

  @override
  String get gameSceneYellowSubmarine => 'پيلي آبدوز';

  @override
  String get gameSceneTurkeyInTheClearing => 'کليل جاءِ ۾ ٽرڪي';

  @override
  String get gameSceneSafariWateringHole => 'سفاري جو پاڻي پيئڻ وارو هنڌ';

  @override
  String get gameSceneJungleCompanions => 'جنگل جا ساٿي';

  @override
  String get gameSceneGoldenPuppyGarden => 'سونهري ڪتي جي ٻچي وارو باغ';

  @override
  String get gameSceneSeaTurtleReef => 'سامونڊي ڪڇي جي مرجان چٽان';

  @override
  String get gameSceneCoralReefFriends => 'مرجان چٽان جا دوست';

  @override
  String get gameSceneSharedClownfish => 'گڏيل ڪلائونفش';

  @override
  String get gameSceneLittleDinosaur => 'ننڍو ڊائناسور';

  @override
  String get gameSceneSafariCompanions => 'سفاري جا ساٿي';

  @override
  String get gameSceneSwirlingFlowers => 'گول گول گھمندڙ گل';

  @override
  String get gameSceneGardenKitten => 'باغ جي ٻلي جو ٻچو';

  @override
  String get gameSceneBlueOcean => 'نيرو سمنڊ';

  @override
  String get gameSceneCastlePrincess => 'قلعي جي شهزادي';

  @override
  String get gameSceneRedCar => 'ڳاڙهي ڪار';

  @override
  String get gameSceneGardenPuppy => 'باغ جو ڪتي جو ٻچو';

  @override
  String get gameSceneSpaceExplorer => 'خلا جو کوجنائيندڙ';

  @override
  String get gameSceneEnchantedReadingForest => 'جادوئي پڙهڻ وارو ٻيلو';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps جو لامحدود چڪر';

  @override
  String get gameSceneAnsible => 'Ansible (اينسيبل)';

  @override
  String get gameSceneAws => 'اي ڊبليو ايس';

  @override
  String get gameSceneAzure => 'ايزر';

  @override
  String get gameSceneBashScripting => 'بيش اسڪرپٽنگ';

  @override
  String get gameSceneDocker => 'ڊاڪر';

  @override
  String get gameSceneGcp => 'جي سي پي';

  @override
  String get gameSceneGit => 'گٽ';

  @override
  String get gameSceneHybridCloud => 'هائبرڊ ڪلائوڊ';

  @override
  String get gameSceneIbmCloud => 'آءِ بي ايم ڪلائوڊ';

  @override
  String get gameSceneJavascript => 'جاوا اسڪرپٽ';

  @override
  String get gameSceneJenkins => 'جينڪنز';

  @override
  String get gameSceneKubernetes => 'ڪبرنيٽس';

  @override
  String get gameSceneLinux => 'لينڪس';

  @override
  String get gameSceneMultiCloud => 'ملٽي ڪلائوڊ';

  @override
  String get gameSceneNetworking => 'نيٽ ورڪنگ';

  @override
  String get gameSceneOracleCloud => 'اوريڪل ڪلائوڊ';

  @override
  String get gameScenePerl => 'پرل';

  @override
  String get gameScenePowershell => 'پاور شيل';

  @override
  String get gameScenePython => 'پائٿون';

  @override
  String get gameSceneRuby => 'روبي';

  @override
  String get gameSceneTerraform => 'ٽيرافارم';

  @override
  String get gameSceneWinterFestivalFair => 'سيارن جي ميلي جو ميلو';

  @override
  String get gameSceneArmoredHeroCloseUp => 'زرهه پوش هيرو جو ويجهو نظارو';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ڳاڙهي رنگ ۾ زرهه پوش هيرو';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ڳاڙهي رنگ جا پلموريا گل';

  @override
  String get gameSceneMangroveBoardwalk => 'ڪنڊن جي ٻيلي جي ڪاٺ واري پيچري';

  @override
  String get gameSceneTropicalPalmReflections => 'گرم علائقي جي کجين جا عڪس';

  @override
  String get gameSceneMaskedFigureInShadow => 'ڇانو ۾ نقاب پوش شخصيت';

  @override
  String get gameSceneElectricCompanionAtSunset => 'سج لهڻ مهل برقي ساٿي';

  @override
  String get gameSceneTrainerAndFireDragon => 'ٽرينر ۽ باهه جو ڊريگن';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'جواهرن سان جڙيل ڪشتي جو نقاب';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ڳاڙهن برش اسٽروڪن ۾ پهلوان';

  @override
  String get gameSceneWrestlingChampionSalute => 'ڪشتي جي چيمپيئن جي سلامي';

  @override
  String get gameSceneMorningAtTheBakery => 'بيڪري ۾ صبح';

  @override
  String get gameSceneGreenhousePottingBench => 'گرين هاؤس ۾ ٻوٽا پوکڻ جو ٽيبل';

  @override
  String get gameSceneHarborFishingBoat => 'بندرگاھ ۾ مڇي مارڻ جي ٻيڙي';

  @override
  String get gameSceneAtticObservatory => 'ڇت جي ڪوٺي ۾ رصدگاھ';

  @override
  String get gameSceneToyMakerSWorkshop => 'رانديڪا ٺاهيندڙ جو ورڪشاپ';

  @override
  String get gameSceneWoodlandCampsite => 'ٻيلي ۾ ڪيمپنگ جي جاءِ';

  @override
  String get gameSceneAfternoonMusicRoom => 'منجهند کانپوءِ ميوزڪ روم';

  @override
  String get gameSceneSeasideIceCreamStand => 'سمنڊ ڪناري آئس ڪريم اسٽينڊ';

  @override
  String get gameSceneLibraryReadingNook => 'لائبريريءَ ۾ پڙهڻ جو ڪنڊ';

  @override
  String get gameSceneSewingStudio => 'سلائي اسٽوڊيو';

  @override
  String get gameSceneFruitMarket => 'ميوي جو بازار';

  @override
  String get gameSceneKoiCourtyard => 'ڪوئي مڇين وارو صحن';

  @override
  String get gameSceneArtistSAtelier => 'فنڪار جو اسٽوڊيو';

  @override
  String get gameSceneMountainRailway => 'جبل تي ريلوي';

  @override
  String get gameSceneCountryKitchen => 'ڳوٺ جو باورچي خانو';

  @override
  String get gameScenePotteryWorkshop => 'ڪمهار جو ورڪشاپ';

  @override
  String get gameSceneBeachPicnic => 'سمنڊ ڪناري پڪنڪ';

  @override
  String get gameSceneFlowerShop => 'گلن جي دڪان';

  @override
  String get gameSceneClockmakerSWorkshop => 'گھڙيال ساز جو ورڪشاپ';

  @override
  String get gameSceneRainyCafeTerrace => 'برسات واري ڪيفي جو ڇت';

  @override
  String get gameSceneCastleHerbGarden => 'قلعي جو جڙي ٻوٽين وارو باغ';

  @override
  String get gameSceneClassroomArtCorner => 'ڪلاس روم ۾ آرٽ ڪنڊ';

  @override
  String get gameSceneAquariumShop => 'ايڪريم جو دڪان';

  @override
  String get gameSceneAutumnLeafCollection => 'سرءُ جي پنن جو مجموعو';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'چنڊ هيٺ اڪيلو وڻ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ٽاريءَ تي سرءُ جو گل';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'ساوا پنن ۾ لومڙي';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'ڪنول جي گلن سان ڍڪيل ڍنڍ تي ڪينو';

  @override
  String get gameSceneDewDropsOnALeaf => 'پن تي اوس جا ڦڙا';

  @override
  String get gameSceneStagInATurquoiseLake => 'فيروزي ڍنڍ ۾ هرڻ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'نارنجي چنڊ هيٺ سائيڪل';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'واديءَ مٿان اڇو شينهن';

  @override
  String get gameSceneTwoTreesInBlueWater => 'نيري پاڻيءَ ۾ ٻه وڻ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'وفادار ڪتي جي ڀرسان مڇي مارڻ';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'جبلي ڍنڍ جي ڀرسان للي گل';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'گلابي درياءَ جي ڪناري تي هرڻ';

  @override
  String get gameSceneTropicalHutAtSunset => 'سج لهڻ وقت اڀرندڙ ڏيهه جي جهوپڙي';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'الپائن واديءَ تي نظر وجهندڙ لومڙ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'جادوئي باغ مان سج لهڻ جو منظر';

  @override
  String get learningControlTitle => 'DevOps سکو';

  @override
  String get learningControlAllCategories => 'سڀ زمرا';

  @override
  String get learningControlSearchCards => 'ڪارڊ ڳوليو';

  @override
  String get learningControlClearSearch => 'ڳولا صاف ڪريو';

  @override
  String get learningControlCategory => 'زمرو';

  @override
  String get learningControlShowAll => 'سڀ ڪارڊ ڏيکاريو';

  @override
  String learningControlShowSaved(int count) {
    return 'محفوظ ڪيل ڪارڊ ڏيکاريو ($count)';
  }

  @override
  String get learningControlShuffleOff => 'شفل بند ڪريو';

  @override
  String get learningControlShuffleOn => 'ڪارڊ شفل ڪريو';

  @override
  String get learningControlAutoOff => 'آٽو سوائپ بند ڪريو';

  @override
  String get learningControlAutoOn => 'هر 10 سيڪنڊن کانپوءِ آٽو سوائپ';

  @override
  String get learningControlNoSaved => 'اڃا ڪو ڪارڊ محفوظ نه ڪيو ويو آهي';

  @override
  String get learningControlNoMatches => 'ڪو ملندڙ ڪارڊ ناهي';

  @override
  String get learningControlResetFilters => 'فلٽر ري سيٽ ڪريو';

  @override
  String get learningControlPrevious => 'پويون';

  @override
  String get learningControlNext => 'ايندڙ';

  @override
  String get learningControlProgress => 'پيش رفت';

  @override
  String get learningControlRemoveSaved => 'محفوظ ڪيل مان هٽايو';

  @override
  String get learningControlSaveCard => 'ڪارڊ محفوظ ڪريو';

  @override
  String get learningControlExample => 'مثال';

  @override
  String get learningControlCopyExample => 'مثال ڪاپي ڪريو';

  @override
  String get learningControlExampleCopied => 'مثال ڪاپي ٿي ويو';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'ليول $value1 مڪمل ٿي ويو';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'ليول $value1 کيڏو';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'ان لاڪ ڪرڻ لاءِ ليول $value1 مڪمل ڪريو';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'روزاني لاگ اِن بونس';

  @override
  String get sharedDialogThanksForComingBack => 'واپس اچڻ جي مهرباني!';

  @override
  String get sharedDialogDailyRewardAdded => 'توهان جو روزاني انعام توهان جي ڪل پوائنٽس ۾ شامل ڪيو ويو آهي.';

  @override
  String get sharedDialogAwesome => 'زبردست!';

  @override
  String get accountWelcomeGuest => 'مهمان';

  @override
  String get accountWelcomeGuestUser => 'مهمان واپرائيندڙ';

  @override
  String get accountWelcomeUser => 'واپرائيندڙ';

  @override
  String get accountWelcomePlayingAsGuest => 'مهمان طور کيڏي رهيو آهي';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google اڪائونٽ ڳنڍيو';

  @override
  String get accountWelcomeGoogleConnected => 'Google اڪائونٽ ڪاميابيءَ سان ڳنڍجي ويو! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'سائن ان رد ڪيو ويو.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'ڳنڍڻ ۾ ناڪام: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'سائن آئوٽ ڪريو';

  @override
  String get accountWelcomeSignOutTitle => 'سائن آئوٽ ڪجي؟';

  @override
  String get accountWelcomeSignOutMessage => 'ڇا توهان واقعي سائن آئوٽ ڪرڻ چاهيو ٿا؟ پنهنجي محفوظ ڪيل ترقي تائين پهچڻ لاءِ توهان کي ٻيهر سائن ان ڪرڻو پوندو.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'سائن آئوٽ ناڪام ٿيو: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ايپ ڊيٽا ري سيٽ ڪجي؟';

  @override
  String get accountWelcomeResetAppMessage => 'ان سان توهان جا سمورا پوائنٽس، اسٽريڪس، گيم جي تاريخ ۽ سيٽنگون هميشه لاءِ ختم ٿي وينديون. توهان سائن آئوٽ ٿي شروعاتي اسڪرين تي واپس هليا ويندؤ. اهو واپس نٿو ڪري سگهجي.';

  @override
  String get accountWelcomeResetEverything => 'سڀ ڪجهه ري سيٽ ڪريو';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ري سيٽ ناڪام ٿيو: $value1';
  }

  @override
  String get accountWelcomeCancel => 'رد ڪريو';

  @override
  String get accountWelcomeResetAppData => 'ايپ ڊيٽا ري سيٽ ڪريو';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'سڀ پوائنٽس، اسٽريڪس ۽ سيٽنگون صاف ڪريو';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ايپ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'ترجمو اڃا موجود ناهي';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google سان جاري رکو';

  @override
  String get accountWelcomeSigningIn => 'سائن ان ٿي رهيو آهي...';

  @override
  String get accountWelcomeOr => 'يا';

  @override
  String get accountWelcomeContinueAsGuest => 'مهمان طور جاري رکو';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'توهان پوءِ پنهنجي پروفائل مان سائن ان ڪري سگهو ٿا.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'توهان مهمان طور شروع ڪري پوءِ سائن ان ڪري سگهو ٿا.';

  @override
  String get accountWelcomeGreetingGuest => 'ڀليڪار';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'ڀليڪار، $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google سائن ان مڪمل ٿيو، پر ڪو به واپرائيندڙ اڪائونٽ واپس نه مليو.';

  @override
  String get accountWelcomeErrorEmailExists => 'هن اي ميل تي اڳ ۾ ئي ٻئي سائن ان طريقي سان اڪائونٽ موجود آهي.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'هي Google اڪائونٽ اڳ ۾ ئي ٻئي اڪائونٽ سان ڳنڍيل آهي.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google جي تصديقي سند غلط آهي يا مدو پورو ٿي ويو آهي.';

  @override
  String get accountWelcomeErrorUserDisabled => 'هي اڪائونٽ غير فعال ڪيو ويو آهي.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google سائن ان هن وقت فعال ناهي.';

  @override
  String get accountWelcomeErrorNetwork => 'نيٽ ورڪ جي غلطي. مهرباني ڪري پنهنجو انٽرنيٽ ڪنيڪشن چيڪ ڪريو ۽ ٻيهر ڪوشش ڪريو.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'تمام گهڻيون سائن ان ڪوششون. مهرباني ڪري ترسو ۽ ٻيهر ڪوشش ڪريو.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'اضافي غلطي جي ڪا به معلومات ناهي.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google سائن ان ناڪام ٿيو.\n\nڪوڊ: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google سائن ان غلطي:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'مهمان طور جاري رکڻ ۾ ناڪام. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google سائن ان جلد دستياب ٿيندو.';

  @override
  String get accountWelcomeLoginTagline => 'سکو • مشق ڪريو • مقابلو ڪريو • ڪمايو';

  @override
  String get accountWelcomeCountryRegion => 'ملڪ / علائقو';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'ملڪ / علائقو: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ملڪ ڳوليو';

  @override
  String get accountWelcomeCountryNotSelected => 'منتخب نه ٿيل';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'ڇو DevOps Quiz؟';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ مشقي سوال';

  @override
  String get accountWelcomeFeatureLanguages => 'گهڻ-لساني سهڪار';

  @override
  String get accountWelcomeFeatureStreaks => 'اسٽريڪس ۽ ليڊربورڊز';

  @override
  String get accountWelcomeFeatureGames => 'رانديون ۽ چئلينجز';

  @override
  String get accountWelcomeFeatureCloud => 'ڪلائوڊ ۽ DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'بونس ۽ انعام';

  @override
  String get accountWelcomePracticeOnTheGo => 'هلندي چلندي مشق ڪريو';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ايپ انسٽال ڪريو ۽ ڪٿي به آف لائن سکو.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play تان حاصل ڪريو';

  @override
  String achLocStreakTitle(String days) {
    return '$days ڏينهن جو سلسلو';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days ڏينهن جو سلسلو برقرار رکو.';
  }

  @override
  String get achLocYearStreakTitle => '1 سال جو سلسلو';

  @override
  String get achLocFirstQuizTitle => 'پهريون ڪوئز';

  @override
  String get achLocFirstQuizDescription => 'پنهنجو پهريون ڪوئز مڪمل ڪريو.';

  @override
  String get achLocQuiz10Title => 'ڪوئز ايڪسپلورر';

  @override
  String get achLocQuiz10Description => '10 ڪوئز مڪمل ڪريو.';

  @override
  String get achLocPoints1000Title => '1000 پوائنٽس';

  @override
  String get achLocPoints1000Description => 'ڪوئز ۾ ڪل 1000 پوائنٽس حاصل ڪريو.';

  @override
  String get achLocPerfectScoreTitle => 'مڪمل اسڪور';

  @override
  String get achLocPerfectScoreDescription => 'ڪنهن به ڪوئز ۾ 100% اسڪور ڪريو.';

  @override
  String get achLocQuiz25Title => 'ڪوئز جو شوقين';

  @override
  String get achLocQuiz25Description => '25 ڪوئز مڪمل ڪريو.';

  @override
  String get achLocQuiz50Title => 'ڪوئز ماسٽر';

  @override
  String get achLocQuiz50Description => '50 ڪوئز مڪمل ڪريو.';

  @override
  String get achLocQuiz100Title => 'سينچري ڪلب';

  @override
  String get achLocQuiz100Description => '100 ڪوئز مڪمل ڪريو.';

  @override
  String get achLocQuiz250Title => 'ڪوئز ليجنڊ';

  @override
  String get achLocQuiz250Description => '250 ڪوئز مڪمل ڪريو.';

  @override
  String get achLocPoints5000Title => '5,000 پوائنٽس';

  @override
  String get achLocPoints5000Description => 'ڪل 5,000 پوائنٽس حاصل ڪريو.';

  @override
  String get achLocPoints10000Title => '10,000 پوائنٽس';

  @override
  String get achLocPoints10000Description => 'ڪل 10,000 پوائنٽس حاصل ڪريو.';

  @override
  String get achLocPoints50000Title => '50,000 پوائنٽس';

  @override
  String get achLocPoints50000Description => 'ڪل 50,000 پوائنٽس حاصل ڪريو.';

  @override
  String get achLocPoints100000Title => '100,000 پوائنٽس';

  @override
  String get achLocPoints100000Description => 'ڪل 100,000 پوائنٽس حاصل ڪريو.';

  @override
  String get achLocDaily1Title => 'روزانو شروعات ڪندڙ';

  @override
  String get achLocDaily1Description => 'پنهنجو پهريون روزانو ڪوئز مڪمل ڪريو.';

  @override
  String get achLocDaily7Title => 'روزانو عادت';

  @override
  String get achLocDaily7Description => '7 روزانو ڪوئز مڪمل ڪريو.';

  @override
  String get achLocDaily30Title => 'روزانو چيمپيئن';

  @override
  String get achLocDaily30Description => '30 روزانو ڪوئز مڪمل ڪريو.';

  @override
  String get achLocSets5Title => 'سيٽ شروعات ڪندڙ';

  @override
  String get achLocSets5Description => '5 ڪوئز سيٽ پورا ڪريو.';

  @override
  String get achLocSets25Title => 'سيٽ گڏ ڪندڙ';

  @override
  String get achLocSets25Description => '25 ڪوئز سيٽ پورا ڪريو.';

  @override
  String get achLocSets50Title => 'سيٽ ماسٽر';

  @override
  String get achLocSets50Description => '50 ڪوئز سيٽ پورا ڪريو.';

  @override
  String get achLocSets100Title => 'سيٽ ليجنڊ';

  @override
  String get achLocSets100Description => '100 ڪوئز سيٽ پورا ڪريو.';

  @override
  String get achLocCert1Title => 'پهريون سرٽيفڪيٽ';

  @override
  String get achLocCert1Description => 'پنهنجو پهريون ڪيٽيگري سرٽيفڪيٽ حاصل ڪريو.';

  @override
  String get achLocCert5Title => 'سرٽيفائيڊ پرو';

  @override
  String get achLocCert5Description => '5 ڪيٽيگري سرٽيفڪيٽ حاصل ڪريو.';

  @override
  String get achLocCert21Title => 'مڪمل سرٽيفائيڊ';

  @override
  String get achLocCert21Description => 'سڀني 21 ڪيٽيگرين ۾ سرٽيفڪيٽ حاصل ڪريو.';

  @override
  String get achLocThemeFreeValentinesWeek => 'هر سال 7-14 فيبروري مفت';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'هر سال 8-15 مارچ مفت';

  @override
  String get achLocThemeLight => 'روشن';

  @override
  String get achLocThemeDark => 'اونداهو';

  @override
  String get achLocThemeSakura => 'ساڪورا';

  @override
  String get achLocThemeSunset => 'سج لهڻ';

  @override
  String get achLocThemeCoffee => 'ڪافي';

  @override
  String get achLocThemeTea => 'چانهه';

  @override
  String get achLocThemeOcean => 'سمنڊ';

  @override
  String get achLocThemeSolarFlare => 'سولر فليئر';

  @override
  String get achLocThemeForest => 'ٻيلو';

  @override
  String get achLocThemeAurora => 'ارورا';

  @override
  String get achLocThemeMatrix => 'ميٽرڪس';

  @override
  String get achLocThemeCyberPurple => 'سائبر پرپل';

  @override
  String get achLocThemeInferno => 'انفرنو';

  @override
  String get achLocThemeMidnight => 'اڌ رات';

  @override
  String get achLocThemeDarkGrey => 'ڳاڙهو سرمئي';

  @override
  String get achLocThemeBarbee => 'باربي';

  @override
  String get achLocThemeValentineDay => 'ويلنٽائن ڊي';

  @override
  String get achLocThemeDqSpecial => 'ڊي ڪيو اسپيشل';

  @override
  String get achLocThemeArmy => 'آرمي';

  @override
  String get achLocThemeSpiderMan => 'اسپائيڊر مين';

  @override
  String get achLocThemeKrrish => 'ڪرش';

  @override
  String get achLocThemeIronMan => 'آئرن مين';

  @override
  String get achLocThemeCaptainAmerica => 'ڪيپٽن آمريڪا';

  @override
  String get achLocThemeThor => 'ٿور';

  @override
  String get achLocThemeHulk => 'هلڪ';

  @override
  String get achLocThemeBlackWidow => 'بليڪ وڊو';

  @override
  String get achLocThemeHawkeye => 'هاڪ آئي';

  @override
  String get achLocThemeBlackPanther => 'بليڪ پينٿر';

  @override
  String get achLocThemeScarletWitch => 'اسڪارليٽ وچ';

  @override
  String get achLocThemeVision => 'ويزن';

  @override
  String get achLocThemeAntMan => 'انٽ مين';

  @override
  String get achLocThemeCaptainMarvel => 'ڪيپٽن مارول';

  @override
  String get achLocThemeDoctorStrange => 'ڊاڪٽر اسٽرينج';

  @override
  String get achLocThemeAvengers => 'ايونجرز';

  @override
  String get achLocThemeBatman => 'بيٽ مين';

  @override
  String get achLocThemeSuperman => 'سپر مين';

  @override
  String get achLocThemeWonderWoman => 'ونڊر وومن';

  @override
  String get achLocThemeFlash => 'فليش';

  @override
  String get achLocThemeAquaman => 'ايڪوامين';

  @override
  String get achLocThemeGreenLantern => 'گرين لينٽرن';

  @override
  String get achLocThemeCyborg => 'سائبورگ';

  @override
  String get achLocThemeSupergirl => 'سپر گرل';

  @override
  String get achLocThemeDc => 'ڊي سي هيروز';

  @override
  String get achLocThemeRainbow => 'قوس قزح';

  @override
  String get achLocThemeDiamond => 'هيرو';

  @override
  String get achLocThemeLegendary => 'افسانوي';

  @override
  String get gameHintCmd001LsLa => 'سڀ فائلون تفصيلن سان ڏيکاريو';

  @override
  String get gameHintCmd002Grep => 'نموني ذريعي متن ڳوليو';

  @override
  String get gameHintCmd003Chmod => 'فائل جون اجازتون تبديل ڪريو';

  @override
  String get gameHintCmd004DfH => 'خالي ڊسڪ اسپيس ڏيکاريو';

  @override
  String get gameHintCmd005TailF => 'وڌندڙ لاگ فائل کي فالو ڪريو';

  @override
  String get gameHintCmd006PsAux => 'هلندڙ پروسيس ڏيکاريو';

  @override
  String get gameHintCmd007GitClone => 'ريموٽ ريپوزٽري جي ڪاپي ٺاهيو';

  @override
  String get gameHintCmd008GitStash => 'اڻ ڪميٽ ٿيل تبديليون پاسي تي رکو';

  @override
  String get gameHintCmd009GitRebase => 'ڪميٽس کي نئين بنياد تي ورهائجي لاڳو ڪريو';

  @override
  String get gameHintCmd010GitBlame => 'ڏيکاريو ته هر لائن ڪنهن تبديل ڪئي';

  @override
  String get gameHintCmd011DockerPs => 'هلندڙ ڪنٽينرز ڏيکاريو';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile مان امیج ٺاهيو';

  @override
  String get gameHintCmd013DockerLogs => 'ڪنٽينر جو آئوٽ پٽ ڏيکاريو';

  @override
  String get gameHintCmd014DockerExec => 'ڪنٽينر اندر ڪمانڊ هلايو';

  @override
  String get gameHintCmd015KubectlGetPods => 'نيم اسپيس ۾ پوڊس ڏيکاريو';

  @override
  String get gameHintCmd016KubectlApply => 'فائل مان وسيلا ٺاهيو';

  @override
  String get gameHintCmd017KubectlDescribe => 'وسيلي جي تفصيلي معلومات ڏيکاريو';

  @override
  String get gameHintCmd018KubectlScale => 'ريپليڪاز جو تعداد تبديل ڪريو';

  @override
  String get gameHintCmd019TerraformInit => 'پروائيڊرز ڊائونلوڊ ڪريو ۽ سيٽ اپ ڪريو';

  @override
  String get gameHintCmd020TerraformPlan => 'انفراسٽرڪچر جي تبديلين جو اڳڀرو ڏيک ڏسو';

  @override
  String get gameHintCmd021TerraformApply => 'انفراسٽرڪچر ٺاهيو يا اپڊيٽ ڪريو';

  @override
  String get gameHintCmd022TerraformDestroy => 'منظم ٿيل انفراسٽرڪچر هٽايو';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'آٽوميشن پلےبڪ هلايو';

  @override
  String get gameHintCmd024Ping => 'ICMP ذريعي رسائي جي جاچ ڪريو';

  @override
  String get gameHintCmd025Traceroute => 'هوسٽ تائين رستو ڏيکاريو';

  @override
  String get gameHintCmd026Curl => 'URL مان ڊيٽا منتقل ڪريو';

  @override
  String get gameHintCmd027Ssh => 'ريموٽ مشين ۾ محفوظ طريقي سان لاگ ان ٿيو';

  @override
  String get gameHintCmd028CrontabE => 'مقرر ڪيل ڪم تبديل ڪريو';

  @override
  String get gameHintCmd029SystemctlStatus => 'سروس جي حالت چيڪ ڪريو';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes تي چارٽ ڊپلائي ڪريو';

  @override
  String get gameHintWord001Git => 'سورس ڪوڊ ۾ تبديليون ٽريڪ ڪري ٿو.';

  @override
  String get gameHintWord002Aws => 'Amazon جو ڪلائوڊ پليٽ فارم.';

  @override
  String get gameHintWord003Api => 'هڪ معاهدو جيڪو سافٽ ويئر سسٽم کي ڳالهائڻ ڏئي ٿو.';

  @override
  String get gameHintWord004Dns => 'ڊومين نالن کي IP ايڊريس ۾ بدلائي ٿو.';

  @override
  String get gameHintWord005Cli => 'ڪمانڊ هلائڻ لاءِ متن تي ٻڌل انٽرفيس.';

  @override
  String get gameHintWord006Cpu => 'پروسيسر جيڪو هدايتون هلائي ٿو.';

  @override
  String get gameHintWord007Ram => 'هلندڙ پروگرامن لاءِ عارضي ميموري.';

  @override
  String get gameHintWord008Ssh => 'ريموٽ شيل رسائي لاءِ محفوظ پروٽوڪول.';

  @override
  String get gameHintWord009Yaml => 'انسان لاءِ پڙهڻ جوڳو ڊيٽا سيريلائيزيشن فارميٽ.';

  @override
  String get gameHintWord010Linux => 'اوپن سورس آپريٽنگ سسٽم ڪرنل ۽ خاندان.';

  @override
  String get gameHintWord011Bash => 'هڪ مقبول Unix ڪمانڊ شيل.';

  @override
  String get gameHintWord012Cloud => 'نيٽ ورڪ تي گهربل وقت فراهم ٿيندڙ ڪمپيوٽنگ.';

  @override
  String get gameHintWord013Docker => 'ڪنٽينرز ٺاهڻ ۽ هلائڻ لاءِ پليٽ فارم.';

  @override
  String get gameHintWord014Azure => 'Microsoft جو ڪلائوڊ پليٽ فارم.';

  @override
  String get gameHintWord015Python => 'وڏي پيماني تي استعمال ٿيندڙ اسڪرپٽنگ ۽ پروگرامنگ ٻولي.';

  @override
  String get gameHintWord016Github => 'هڪ مقبول هوسٽيڊ Git تعاون سروس.';

  @override
  String get gameHintWord017Bgp => 'روٽنگ پروٽوڪول جيڪو خودمختيار سسٽمن وچ ۾ رستا ڏيوليندو آهي.';

  @override
  String get gameHintWord018Jenkins => 'آٽوميشن سرور جيڪو اڪثر CI لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord019Port => 'نمبر ٿيل اينڊ پوائنٽ جيڪو نيٽ ورڪ سروسز استعمال ڪن ٿيون.';

  @override
  String get gameHintWord020Proxy => 'سرور جيڪو ڪلائنٽس لاءِ درخواستون اڳتي موڪلي ٿو.';

  @override
  String get gameHintWord021Cache => 'گهڻو ورتل ڊيٽا لاءِ تيز اسٽور.';

  @override
  String get gameHintWord022Cron => 'بار بار ٿيندڙ ڪمانڊن لاءِ Unix شيڊيولر.';

  @override
  String get gameHintWord023Bicep => 'انفراسٽرڪچر ايز ڪوڊ لاءِ Azure جي اعلانيه ٻولي.';

  @override
  String get gameHintWord024Apigee => 'API جي مرڪزي انتظام لاءِ Google Cloud پليٽ فارم.';

  @override
  String get gameHintWord025Root => 'Unix جهڙن سسٽمن تي مراعات يافته ايڊمنسٽريٽر اڪائونٽ.';

  @override
  String get gameHintWord026Nginx => 'ويب سرور ۽ ريورس پراڪسي.';

  @override
  String get gameHintWord027Redis => 'ان-ميموري ڊيٽا اسٽور جيڪو اڪثر ڪيش طور استعمال ٿئي ٿو.';

  @override
  String get gameHintWord028Mysql => 'مقبول رشتيدار ڊيٽابيس سسٽم.';

  @override
  String get gameHintWord029Ruby => 'پروگرامنگ ٻولي جيڪا Chef جهڙن اوزارن ۾ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord030Helm => 'پيڪيج مئنيجر جيڪو عام طور Kubernetes سان استعمال ٿئي ٿو.';

  @override
  String get gameHintWord031Pod => 'Kubernetes ۾ سڀ کان ننڍي ڊپلائي ٿيندڙ يونٽ.';

  @override
  String get gameHintWord032Image => 'صرف پڙهڻ لاءِ ٽيمپليٽ جيڪو ڪنٽينر ٺاهڻ ۾ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord033Build => 'سورس ۽ انحصارن مان آرٽيفيڪٽ ٺاهي ٿو.';

  @override
  String get gameHintWord034Deploy => 'ايپليڪيشن کي ماحول ۾ جاري ڪري ٿو.';

  @override
  String get gameHintWord035Terraform => 'انفراسٽرڪچر ايز ڪوڊ لاءِ HashiCorp جو اوزار.';

  @override
  String get gameHintWord036Ansible => 'ايجنٽ کان سواءِ آٽوميشن ۽ ڪنفيگريشن اوزار.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes لاءِ ڪمانڊ-لائن ڪلائنٽ.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform جو مخفف.';

  @override
  String get gameHintWord039Gitops => 'آپريشنل ماڊل جيڪو Git کي سچائي جو ذريعو بڻائي ٿو.';

  @override
  String get gameHintWord040Pipeline => 'بلڊ، ٽيسٽ ۽ رليز مرحلن جو خودڪار سلسلو.';

  @override
  String get gameHintWord041Container => 'الڳ ٿيل پروسيس جيڪو پنهنجن انحصارن سميت پيڪيج ٿيل هجي.';

  @override
  String get gameHintWord042Cluster => 'مشينن جو گروپ جيڪو گڏيل سسٽم طور منظم ٿئي ٿو.';

  @override
  String get gameHintWord043Ingress => 'ٻاهرين HTTP روٽنگ لاءِ Kubernetes API اعتراض.';

  @override
  String get gameHintWord044Firewall => 'حفاظتي قاعدن مطابق نيٽ ورڪ ٽريفڪ کي فلٽر ڪري ٿو.';

  @override
  String get gameHintWord045Subnet => 'IP نيٽ ورڪ جي منطقي ورهاست.';

  @override
  String get gameHintWord046Gateway => 'نيٽ ورڪ نوڊ جيڪو مختلف نيٽ ورڪن کي ڳنڍي ٿو.';

  @override
  String get gameHintWord047Router => 'نيٽ ورڪن وچ ۾ پيڪٽس اڳتي موڪلي ٿو.';

  @override
  String get gameHintWord048Switch => 'مقامي نيٽ ورڪ اندر ڊوائيسز کي ڳنڍي ٿو.';

  @override
  String get gameHintWord049Repository => 'سورس ڪوڊ يا پيڪيجز لاءِ منظم اسٽوريج.';

  @override
  String get gameHintWord050Systemd => 'Linux init سسٽم ۽ سروس مئنيجر.';

  @override
  String get gameHintWord051Journalctl => 'systemd جرنل لاگ پڙهڻ لاءِ ڪمانڊ.';

  @override
  String get gameHintWord052Permission => 'قاعدو جيڪو طئي ڪري ٿو ته ڪير پڙهي، لکي يا هلائي سگهي.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud جو منظم PostgreSQL-سازگار ڊيٽابيس.';

  @override
  String get gameHintWord054Configmap => 'غير ڳجهي ڪنفيگريشن لاءِ Kubernetes اعتراض.';

  @override
  String get gameHintWord055Secret => 'حساس ڊيٽا لاءِ ٺهيل Kubernetes اعتراض.';

  @override
  String get gameHintWord056Persistent => 'اسٽوريج جي وضاحت جيڪا ورڪلوڊ ريسٽارٽ کان پوءِ به قائم رهي.';

  @override
  String get gameHintWord057Volume => 'فائل سسٽم اسٽوريج جيڪو ڪنٽينر ۾ مائونٽ ٿيل هجي.';

  @override
  String get gameHintWord058Storage => 'فائلن، اعتراضن يا بلاڪن لاءِ مستقل جڳهه.';

  @override
  String get gameHintWord059Replica => 'ورڪلوڊ انسٽينس جي ڪاپي جيڪا اسڪيل يا ڀروسي لاءِ رکي وڃي.';

  @override
  String get gameHintWord060Deployment => 'بغير حالت واري ايپليڪيشن پوڊس لاءِ Kubernetes ڪنٽرولر.';

  @override
  String get gameHintWord061Dockerfile => 'Docker امیج ٺاهڻ لاءِ استعمال ٿيندڙ هدايتون.';

  @override
  String get gameHintWord062Database => 'منظم اسٽور جنهن کي ايپليڪيشنون ڪوئري ڪن ٿيون.';

  @override
  String get gameHintWord063Automation => 'دستي قدمن کان سواءِ ورجائي ٿيندڙ ڪم ڪرڻ لاءِ سافٽ ويئر جو استعمال.';

  @override
  String get gameHintWord064Anthos => 'مختلف ماحولن ۾ ڪلسٽرز جي انتظام لاءِ Google Cloud پليٽ فارم.';

  @override
  String get gameHintWord065Bigquery => 'وڏي پيماني ڊيٽا اينالاٽڪس لاءِ Google Cloud سروس.';

  @override
  String get gameHintWord066Bigtable => 'اينالاٽڪس لاءِ Google Cloud جو وائيڊ-ڪالم NoSQL ڊيٽابيس.';

  @override
  String get gameHintWord067Loadbalancer => 'ايندڙ ٽريفڪ کي ڪيترن ئي بيڪينڊن ۾ ورهائي ٿو.';

  @override
  String get gameHintWord068Prometheus => 'مانيٽرنگ سسٽم جيڪو ٽائيم-سيريز ميٽرڪس اسٽور ڪري ٿو.';

  @override
  String get gameHintWord069Grafana => 'آبزرويبلٽي ڊيٽا کي ڪوئري ۽ بصري ڪرڻ لاءِ پليٽ فارم.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud جو منظم NoSQL JSON دستاويز ڊيٽابيس.';

  @override
  String get gameHintWord071Cloudtrail => 'AWS سروس جيڪا آڊٽ لاءِ API سرگرميون رڪارڊ ڪري ٿي.';

  @override
  String get gameHintWord072Statefulset => 'مستحڪم سڃاڻپ گهرندڙ ورڪلوڊس لاءِ Kubernetes ڪنٽرولر.';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes ڪنٽرولر جيڪو چونڊيل نوڊس تي پوڊ هلائي ٿو.';

  @override
  String get gameHintWord074Serviceaccount => 'Kubernetes سڃاڻپ جيڪا ورڪلوڊ يا پروسيس استعمال ڪري ٿي.';

  @override
  String get gameHintWord075Networkpolicy => 'Kubernetes وسيلو جيڪو پوڊ نيٽ ورڪ ٽريفڪ کي ڪنٽرول ڪري ٿو.';

  @override
  String get gameHintWord076Certificate => 'ڊجيٽل دستاويز جيڪو TLS ۾ سڃاڻپ قائم ڪرڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord077Encryption => 'ڊيٽا کي ائين بدلائي ٿو جو صرف بااختيار ڌريون پڙهي سگهن.';

  @override
  String get gameHintWord078Observability => 'سسٽم جي آئوٽ پٽس مان ان جي رويي جو اندازو لڳائڻ جي صلاحيت.';

  @override
  String get gameHintWord079Coredns => 'DNS سرور جيڪو عام طور Kubernetes ڪلسٽرز اندر استعمال ٿئي ٿو.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes APIs ذريعي ڪلائوڊ وسيلا منظم ڪرڻ وارو پروجيڪٽ.';

  @override
  String get gameHintWord081Failover => 'ناڪامي کانپوءِ اسٽينڊ بائي جزو ڏانهن منتقل ٿيڻ.';

  @override
  String get gameHintWord082Idempotency => 'اها خاصيت جنهن ۾ ڪنهن عمل کي ورجائڻ جو اثر هڪ ڀيرو ڪرڻ جيترو ئي هجي.';

  @override
  String get gameHintWord083Dataflow => 'اسٽريم ۽ بيچ ڊيٽا پروسيسنگ لاءِ Google Cloud سروس.';

  @override
  String get gameHintWord084Orchestration => 'ڪيترن ئي خودڪار ورڪلوڊس جو ترتيب وار انتظام.';

  @override
  String get gameHintWord085Dataplex => 'ادارتي ڊيٽا ڳولڻ ۽ ان جي نگراني لاءِ Google Cloud سروس.';

  @override
  String get gameHintWord086Serverless => 'عمل درآمد جو ماڊل جنهن ۾ انفراسٽرڪچر جو انتظام لڪيل هوندو آهي.';

  @override
  String get gameHintWord087Distributed => 'سسٽم جنهن جا جزا ڪيترين ئي نيٽ ورڪ ٿيل مشينن تي هلن ٿا.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud جو منظم Apache Spark ۽ Hadoop ماحول.';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL ڊيٽابيس جيڪو اڪثر Terraform اسٽيٽ لاڪنگ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord090Provisioning => 'انفراسٽرڪچر يا وسيلا استعمال لاءِ تيار ڪرڻ.';

  @override
  String get gameHintWord091Elasticsearch => 'سرچ انجڻ جيڪو عام طور مرڪزي لاگنگ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord092Etcd => 'ڪي-ويليو اسٽور جيڪو Kubernetes ڪلسٽر جي حالت رکي ٿو.';

  @override
  String get gameHintWord093Authentication => 'اهو جاچڻ جو عمل ته صارف يا سروس ڪير آهي.';

  @override
  String get gameHintWord094Authorization => 'اهو طئي ڪرڻ جو عمل ته سڃاڻپ کي ڇا ڪرڻ جي اجازت آهي.';

  @override
  String get gameHintWord095Expressroute => 'ڊيٽا سينٽرن سان مخصوص نجي ڪنيڪٽيوٽي لاءِ Azure سروس.';

  @override
  String get gameHintWord096Configuration => 'سيٽنگون جيڪي طئي ڪن ٿيون ته سافٽ ويئر ڪيئن ڪم ڪري.';

  @override
  String get gameHintWord097Infrastructure => 'ڪمپيوٽ، نيٽ ورڪ ۽ اسٽوريج وسيلا جيڪي ايپليڪيشنن کي سپورٽ ڪن ٿا.';

  @override
  String get gameHintWord098Fastconnect => 'مخصوص نجي نيٽ ورڪ ڪنيڪشنن لاءِ Oracle Cloud سروس.';

  @override
  String get gameHintWord099Containerd => 'صنعتي معيار جو ڪنٽينر رن ٽائيم جيڪو Kubernetes استعمال ڪري ٿو.';

  @override
  String get gameHintWord100Kubernetes => 'ڪنٽينر آرڪيسٽريشن پليٽ فارم.';

  @override
  String get gameHintWord101Http => 'ايپليڪيشن پروٽوڪول جيڪو ويب وسيلا گهرڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord102Https => 'ويب درخواست پروٽوڪول جو مرموز نسخو.';

  @override
  String get gameHintWord103Tcp => 'ٽرانسپورٽ پروٽوڪول جيڪو ڀروسي جوڳي ترتيب وار ترسيل ڏئي ٿو.';

  @override
  String get gameHintWord104Udp => 'ڪنيڪشن کان سواءِ ٽرانسپورٽ پروٽوڪول جيڪو ڊيٽاگرامز لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord105Tls => 'پروٽوڪول جيڪو نيٽ ورڪ تي ڏيتي ليتي ٿيندڙ ڊيٽا کي محفوظ ڪري ٿو.';

  @override
  String get gameHintWord106Ssl => 'جديد ٽرانسپورٽ سيڪيورٽي پروٽوڪول جو پراڻو اڳوڻو.';

  @override
  String get gameHintWord107Ftp => 'فائلون منتقل ڪرڻ لاءِ روايتي پروٽوڪول.';

  @override
  String get gameHintWord108Sftp => 'فائل ٽرانسفر پروٽوڪول جيڪو محفوظ شيل ڪنيڪشن تي هلي ٿو.';

  @override
  String get gameHintWord109Smtp => 'سرورن وچ ۾ اي ميل موڪلڻ لاءِ پروٽوڪول.';

  @override
  String get gameHintWord110Snmp => 'نيٽ ورڪ ڊوائيسز کي منظم ۽ مانيٽر ڪرڻ لاءِ پروٽوڪول.';

  @override
  String get gameHintWord111Icmp => 'پروٽوڪول جيڪو نيٽ ورڪ غلطيون ۽ ping پيغام کڻي ٿو.';

  @override
  String get gameHintWord112Arp => 'مقامي IPv4 ايڊريسن کي هارڊويئر ايڊريسن ۾ حل ڪري ٿو.';

  @override
  String get gameHintWord113Dhcp => 'نيٽ ورڪ ڪلائنٽس کي خودڪار IP ڪنفيگريشن ڏئي ٿو.';

  @override
  String get gameHintWord114Nat => 'پيڪٽس گيٽ وي لنگهڻ وقت نيٽ ورڪ ايڊريس ٻيهر لکي ٿو.';

  @override
  String get gameHintWord115Vpn => 'مرموز سرنگ جيڪا ريموٽ نيٽ ورڪن يا صارفن کي ڳنڍي ٿي.';

  @override
  String get gameHintWord116Vpc => 'عوامي ڪلائوڊ ۾ الڳ ٿيل ورچوئل نيٽ ورڪ.';

  @override
  String get gameHintWord117Vlan => 'سوئچ ٿيل نيٽ ورڪ جي منطقي ورهاست.';

  @override
  String get gameHintWord118Wan => 'وسيع جاگرافيائي علائقي تي پکڙيل نيٽ ورڪ.';

  @override
  String get gameHintWord119Lan => 'مقامي علائقي اندر ڊوائيسز کي ڳنڍيندڙ نيٽ ورڪ.';

  @override
  String get gameHintWord120Cdn => 'ورهايل ايج نيٽ ورڪ جيڪو پهچايل مواد کي ڪيش ڪري ٿو.';

  @override
  String get gameHintWord121Cidr => 'اشارو جيڪو سليش ڊيگهه سان نيٽ ورڪ پريفڪس ظاهر ڪري ٿو.';

  @override
  String get gameHintWord122Host => 'ڪمپيوٽر يا اينڊ پوائنٽ جيڪو نيٽ ورڪ سان ڳنڍيل هجي.';

  @override
  String get gameHintWord123Hostname => 'نيٽ ورڪ ٿيل مشين کي ڏنل انسان لاءِ پڙهڻ جوڳو نالو.';

  @override
  String get gameHintWord124Domain => 'انٽرنيٽ نالو سسٽم ۾ نالو ڏنل انتظامي علائقو.';

  @override
  String get gameHintWord125Zone => 'DNS نيم اسپيس جو انتظامي حصو.';

  @override
  String get gameHintWord126Record => 'DNS ڊيٽابيس ۾ هڪ الڳ اندراج.';

  @override
  String get gameHintWord127Aaaa => 'DNS رڪارڊ جو قسم جيڪو نالي کي IPv6 ايڊريس ۾ حل ڪري ٿو.';

  @override
  String get gameHintWord128Ptr => 'DNS رڪارڊ جو قسم جيڪو ريورس ايڊريس ڳولا لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord129Txt => 'DNS رڪارڊ جو قسم جيڪو متن جون قيمتون محفوظ ڪري ٿو.';

  @override
  String get gameHintWord130Cname => 'DNS رڪارڊ جيڪو هڪ نالي کي ٻئي جو عرف بڻائي ٿو.';

  @override
  String get gameHintWord131Route => 'رستي جو اندراج جيڪو پيڪٽس کي منزل ڏانهن هدايت ڪري ٿو.';

  @override
  String get gameHintWord132Routing => 'نيٽ ورڪن وچ ۾ ٽريفڪ لاءِ رستا چونڊڻ.';

  @override
  String get gameHintWord133Packet => 'ڊيٽا جو يونٽ جيڪو نيٽ ورڪ تي موڪليو وڃي ٿو.';

  @override
  String get gameHintWord134Protocol => 'سسٽمن وچ ۾ رابطي لاءِ متفقه قاعدا.';

  @override
  String get gameHintWord135Ack => 'TCP فليگ جيڪو ڊيٽا ملڻ جي تصديق ڪري ٿو.';

  @override
  String get gameHintWord136Bandwidth => 'رابطي واري لنڪ جي گنجائش.';

  @override
  String get gameHintWord137Latency => 'درخواست يا پيڪٽ کي جواب ملڻ کان اڳ جي دير.';

  @override
  String get gameHintWord138Throughput => 'في يونٽ وقت ۾ پروسيس ٿيندڙ ڪم يا ڊيٽا جي مقدار.';

  @override
  String get gameHintWord139Mtu => 'سڀ کان وڏو پيڪٽ سائيز جيڪو لنڪ ورهائڻ کان سواءِ منتقل ڪري سگهي.';

  @override
  String get gameHintWord140Alpn => 'TLS واڌارو جيڪو ايپليڪيشن-پرت پروٽوڪول تي ڳالهه ٻولهه ڪري ٿو.';

  @override
  String get gameHintWord141Grep => 'متن جي لائنن ۾ ملندڙ نمونو ڳوليندو آهي.';

  @override
  String get gameHintWord142Sed => 'اسٽريم ايڊيٽر جيڪو عام طور متن بدلائڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord143Lscpu => 'Linux ڪمانڊ جيڪو پروسيسر آرڪيٽيڪچر ۽ ڪور جا تفصيل ڏيکاري ٿو.';

  @override
  String get gameHintWord144Find => 'فائل شرطن سان ڊائريڪٽري وڻ ۾ ڳولا ڪري ٿو.';

  @override
  String get gameHintWord145Lsblk => 'Linux ڪمانڊ جيڪو بلاڪ ڊوائيسز ۽ انهن جا لاڳاپا ڏيکاري ٿو.';

  @override
  String get gameHintWord146Sort => 'متن جي لائنن کي ترتيب ڏئي ٿو.';

  @override
  String get gameHintWord147Uniq => 'ڀرپاسي ورجايل لائنن کي فلٽر ڪري ٿو.';

  @override
  String get gameHintWord148Head => 'فائل جي شروعات ڇپي ٿو.';

  @override
  String get gameHintWord149Tail => 'فائل جو آخر ڇپي ٿو ۽ شامل ٿيندڙ لاگ فالو ڪري سگهي ٿو.';

  @override
  String get gameHintWord150Cat => 'فائلن کي ڳنڍي انهن جو مواد ڇپي ٿو.';

  @override
  String get gameHintWord151Cut => 'لائنن مان چونڊيل فيلڊ يا ڪردار ڪالم ڪڍي ٿو.';

  @override
  String get gameHintWord152Tee => 'معياري ان پٽ کي فائلن ۽ معياري آئوٽ پٽ ڏانهن ڪاپي ڪري ٿو.';

  @override
  String get gameHintWord153Echo => 'پنهنجا دليل معياري آئوٽ پٽ ڏانهن لکي ٿو.';

  @override
  String get gameHintWord154Printf => 'شيل يا پروگرام مان فارميٽ ٿيل متن ڇپي ٿو.';

  @override
  String get gameHintWord155Touch => 'فائل ٽائيم اسٽيمپ اپڊيٽ ڪري ٿو يا خالي فائل ٺاهي ٿو.';

  @override
  String get gameHintWord156Mkdir => 'ڊائريڪٽريون ٺاهي ٿو.';

  @override
  String get gameHintWord157Rmdir => 'خالي ڊائريڪٽريون هٽائي ٿو.';

  @override
  String get gameHintWord158Chmod => 'Unix فائل اجازت بٽس تبديل ڪري ٿو.';

  @override
  String get gameHintWord159Chown => 'فائل جي ملڪيت تبديل ڪري ٿو.';

  @override
  String get gameHintWord160Chgrp => 'فائل جي گروپ ملڪيت تبديل ڪري ٿو.';

  @override
  String get gameHintWord161Pwd => 'موجوده ڪم ڪندڙ ڊائريڪٽري ڇپي ٿو.';

  @override
  String get gameHintWord162Apt => 'Debian تي ٻڌل سسٽمن ۾ استعمال ٿيندڙ پيڪيج مئنيجمينٽ اوزار.';

  @override
  String get gameHintWord163Top => 'پروسيسز ۽ سسٽم وسيلن جي استعمال جو انٽرايڪٽو ڏيک.';

  @override
  String get gameHintWord164Agent => 'سافٽ ويئر جزو جيڪو هوسٽ تي ڪم هلائي يا رپورٽ ڪري.';

  @override
  String get gameHintWord165Kill => 'پروسيس کي ان جي سڃاڻپ ڪندڙ ذريعي سگنل موڪلي ٿو.';

  @override
  String get gameHintWord166Signal => 'آپريٽنگ سسٽم طرفان پروسيس کي ڏنل اطلاع.';

  @override
  String get gameHintWord167Sigkill => 'Unix سگنل جيڪو پروسيس کي فوري ختم ڪري ٿو.';

  @override
  String get gameHintWord168Nice => 'ترتيب ڏنل شيڊيولنگ ترجيح سان پروسيس شروع ڪري ٿو.';

  @override
  String get gameHintWord169Renice => 'هلندڙ پروسيس جي شيڊيولنگ ترجيح تبديل ڪري ٿو.';

  @override
  String get gameHintWord170Jobs => 'موجوده شيل جي منظم ڪيل ڪمن جي فهرست ڏئي ٿو.';

  @override
  String get gameHintWord171Nohup => 'هينگ اپ سگنلن کي نظرانداز ڪندي ڪمانڊ هلائي ٿو.';

  @override
  String get gameHintWord172Screen => 'ٽرمينل ملٽيپلڪسر جيڪو الڳ ٿيڻ جوڳن سيشنن کي سپورٽ ڪري ٿو.';

  @override
  String get gameHintWord173Uptime => 'ٻڌائي ٿو ته سسٽم ڪيترو وقت کان هلي رهيو آهي.';

  @override
  String get gameHintWord174Uname => 'سسٽم ۽ ڪرنل جي معلومات ڇپي ٿو.';

  @override
  String get gameHintWord175Whoami => 'موثر موجوده صارف جو نالو ڇپي ٿو.';

  @override
  String get gameHintWord176Umask => 'فائلون ٺاهڻ وقت استعمال ٿيندڙ اجازت ماسڪ مقرر ڪري ٿو.';

  @override
  String get gameHintWord177Usermod => 'Linux ڪمانڊ جيڪو موجود صارف اڪائونٽ ۾ ترميم ڪري ٿو.';

  @override
  String get gameHintWord178Crontab => 'مقرر ٿيل ورجائجندڙ شيل ڪمن کي ايڊٽ يا لسٽ ڪري ٿو.';

  @override
  String get gameHintWord179Findmnt => 'Linux ڪمانڊ جيڪو مائونٽ ٿيل فائل سسٽم جي معلومات ڏيکاري ٿو.';

  @override
  String get gameHintWord180Mount => 'فائل سسٽم کي ڊائريڪٽري وڻ سان ڳنڍي ٿو.';

  @override
  String get gameHintWord181Sigterm => 'Unix سگنل جيڪو پروسيس کي نرمي سان ختم ڪرڻ جي گهر ڪري ٿو.';

  @override
  String get gameHintWord182Fstab => 'سسٽم ٽيبل جيڪو مائونٽ ٿيندڙ فائل سسٽم بيان ڪري ٿو.';

  @override
  String get gameHintWord183Swap => 'ڊسڪ تي ٻڌل جڳهه جيڪا فزيڪل ميموري کي مڪمل ڪرڻ لاءِ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord184Tmpfs => 'عارضي فائل سسٽم جيڪو ورچوئل ميموري تي ٻڌل آهي.';

  @override
  String get gameHintWord185Proc => 'Linux ورچوئل فائل سسٽم جيڪو پروسيس ۽ ڪرنل معلومات ظاهر ڪري ٿو.';

  @override
  String get gameHintWord186Syslog => 'معياري لاگنگ پروٽوڪول ۽ پيغام جو فارميٽ.';

  @override
  String get gameHintWord187Dmesg => 'ڪرنل رنگ بفر مان پيغام ڏيکاري ٿو.';

  @override
  String get gameHintWord188Free => 'استعمال ٿيل ۽ دستياب سسٽم ميموري ٻڌائي ٿو.';

  @override
  String get gameHintWord189Stat => 'فائل جو تفصيلي ميٽا ڊيٽا ڏيکاري ٿو.';

  @override
  String get gameHintWord190Lsof => 'کليل فائلن ۽ انهن کي کولي رکندڙ پروسيسز جي فهرست ڏئي ٿو.';

  @override
  String get gameHintWord191Netstat => 'نيٽ ورڪ ڪنيڪشن ۽ روٽنگ جي معلومات ڏيکاري ٿو.';

  @override
  String get gameHintWord192Checksum => 'حساب ڪيل قيمت جيڪا ڊيٽا ۾ تبديلي يا خرابي ڳولڻ لاءِ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord193Ping => 'echo درخواستن ذريعي نيٽ ورڪ رسائي جي جاچ ڪري ٿو.';

  @override
  String get gameHintWord194Traceroute => 'نيٽ ورڪ منزل تائين وچ وارا هاپس ڏيکاري ٿو.';

  @override
  String get gameHintWord195Resolver => 'DNS جزو جيڪو نالي جي ڪوئريز جا جواب ڳولي ٿو.';

  @override
  String get gameHintWord196Nslookup => 'DNS نالا ۽ ايڊريس ڳولي ٿو.';

  @override
  String get gameHintWord197Telnet => 'پراڻو غير مرموز ريموٽ ٽرمينل پروٽوڪول.';

  @override
  String get gameHintWord198Tftp => 'سادو UDP تي ٻڌل فائل ٽرانسفر پروٽوڪول.';

  @override
  String get gameHintWord199Daemon => 'Unix جهڙن سسٽمن تي پس منظر ۾ هلندڙ سروس پروسيس.';

  @override
  String get gameHintWord200Kernel => 'بنيادي جزو جيڪو آپريٽنگ سسٽم جا وسيلا منظم ڪري ٿو.';

  @override
  String get gameHintWord201Commit => 'ورزن ڪنٽرول ۾ تبديلين جو رڪارڊ ٿيل اسنيپ شاٽ.';

  @override
  String get gameHintWord202Branch => 'هلندڙ حوالو جيڪو ترقي جي هڪ لڪير ظاهر ڪري ٿو.';

  @override
  String get gameHintWord203Merge => 'مختلف ترقياتي لڪيرن جون تاريخون گڏ ڪري ٿو.';

  @override
  String get gameHintWord204Rebase => 'ڪميٽس کي مختلف بنيادي ڪميٽ مٿان ٻيهر هلائي ٿو.';

  @override
  String get gameHintWord205Clone => 'ريموٽ ريپوزٽري جي مقامي ڪاپي ٺاهي ٿو.';

  @override
  String get gameHintWord206Fetch => 'ملائڻ کان سواءِ ريموٽ اعتراض ۽ حوالا ڊائونلوڊ ڪري ٿو.';

  @override
  String get gameHintWord207Pull => 'تبديليون آڻي موجوده برانچ ۾ ضم ڪري ٿو.';

  @override
  String get gameHintWord208Push => 'مقامي ڪميٽس ريموٽ ريپوزٽري ڏانهن موڪلي ٿو.';

  @override
  String get gameHintWord209Stash => 'اڻ ڪميٽ ٿيل ورڪنگ-ٽري تبديليون عارضي طور محفوظ ڪري ٿو.';

  @override
  String get gameHintWord210Revert => 'اهڙو ڪميٽ ٺاهي ٿو جيڪو ٻئي ڪميٽ کي ختم ڪري.';

  @override
  String get gameHintWord211Reset => 'Git حوالو منتقل ڪري ٿو ۽ انڊيڪس يا ورڪنگ فائلون ري سيٽ ڪري سگهي ٿو.';

  @override
  String get gameHintWord212Reflog => 'Git حوالن جي اپڊيٽس جي مقامي تاريخ.';

  @override
  String get gameHintWord213Diff => 'ورزن يا فائلن وچ ۾ فرق ڏيکاري ٿو.';

  @override
  String get gameHintWord214Status => 'اسٽيج ٿيل، تبديل ٿيل ۽ اڻ ٽريڪ فائلن جي رپورٽ ڏئي ٿو.';

  @override
  String get gameHintWord215Checkout => 'ريويزن بدلائڻ يا فائلون بحال ڪرڻ لاءِ Git ڪمانڊ.';

  @override
  String get gameHintWord216Tag => 'نالو ڏنل حوالو جيڪو عام طور رليز کي نشان ڪري ٿو.';

  @override
  String get gameHintWord217Remote => 'ٻي ريپوزٽري سان نالو ڏنل ڪنيڪشن.';

  @override
  String get gameHintWord218Origin => 'ڪلون ٿيل ريپوزٽري ريموٽ کي ڏنل ڊفالٽ نالو.';

  @override
  String get gameHintWord219Upstream => 'ريموٽ ٽريڪنگ برانچ جيڪا مقامي برانچ سان ڳنڍيل هجي.';

  @override
  String get gameHintWord220Worktree => 'چيڪ آئوٽ ٿيل ورڪنگ ڊائريڪٽري جيڪا ريپوزٽري سان ڳنڍيل هجي.';

  @override
  String get gameHintWord221Registry => 'سروس جيڪا ڪنٽينر امیجز اسٽور ۽ ورهائي ٿي.';

  @override
  String get gameHintWord222Digest => 'ڪنٽينر امیج لاءِ مواد تي ٻڌل سڃاڻپ ڪندڙ.';

  @override
  String get gameHintWord223Layer => 'فائل سسٽم تبديليون جيڪي ڪنٽينر امیج جو حصو ٺاهين ٿيون.';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile هدايت جيڪا ڪنٽينر جو مکيه ايگزيڪيوٽيبل بيان ڪري ٿي.';

  @override
  String get gameHintWord225Cmd => 'Dockerfile هدايت جيڪا ڊفالٽ ڪمانڊ يا دليل مقرر ڪري ٿي.';

  @override
  String get gameHintWord226Workdir => 'Dockerfile هدايت جيڪا ڪم ڪندڙ ڊائريڪٽري مقرر ڪري ٿي.';

  @override
  String get gameHintWord227Copy => 'Dockerfile هدايت جيڪا بلڊ-ڪانٽيڪسٽ فائلون امیج ۾ ڪاپي ڪري ٿي.';

  @override
  String get gameHintWord228Add => 'Dockerfile هدايت جيڪا مقامي آرڪائيوز به کولي سگهي ٿي.';

  @override
  String get gameHintWord229Run => 'Dockerfile هدايت جيڪا بلڊ وقت ڪمانڊ هلائي ٿي.';

  @override
  String get gameHintWord230Env => 'Dockerfile هدايت جيڪا ماحولياتي متغير بيان ڪري ٿي.';

  @override
  String get gameHintWord231Arg => 'Dockerfile هدايت جيڪا بلڊ وقت جو متغير اعلان ڪري ٿي.';

  @override
  String get gameHintWord232Expose => 'Dockerfile هدايت جيڪا ڪنٽينر پورٽ دستاويز ڪري ٿي.';

  @override
  String get gameHintWord233User => 'Dockerfile هدايت جيڪا بعد وارين ڪمانڊن لاءِ اڪائونٽ چونڊي ٿي.';

  @override
  String get gameHintWord234Healthcheck => 'هدايت جيڪا ڪنٽينر جي صحت جاچڻ جو طريقو بيان ڪري ٿي.';

  @override
  String get gameHintWord235Shebang => 'اسڪرپٽ جي شروعاتي لائن جيڪا هلائڻ واري انٽرپريٽر جي سڃاڻپ ڪري ٿي.';

  @override
  String get gameHintWord236Compose => 'گهڻ-ڪنٽينر ايپليڪيشنون بيان ڪرڻ ۽ هلائڻ لاءِ Docker اوزار.';

  @override
  String get gameHintWord237Bridge => 'مقامي ڪنٽينر نيٽ ورڪنگ لاءِ عام Docker نيٽ ورڪ ڊرائيور.';

  @override
  String get gameHintWord238Overlay => 'نيٽ ورڪ جيڪو ڪيترن ئي هوسٽن تي ڪنٽينرز تائين پکڙيل هجي.';

  @override
  String get gameHintWord239None => 'Docker نيٽ ورڪ ڊرائيور جيڪو ڪنٽينر نيٽ ورڪنگ بند ڪري ٿو.';

  @override
  String get gameHintWord240Prune => 'غير استعمال ٿيل ڪنٽينر وسيلا هٽائي ٿو.';

  @override
  String get gameHintWord241Replicaset => 'Kubernetes ڪنٽرولر جيڪو گهربل پوڊ تعداد برقرار رکي ٿو.';

  @override
  String get gameHintWord242Service => 'Kubernetes تجريد جيڪو پوڊس تائين مستحڪم رسائي ڏئي ٿو.';

  @override
  String get gameHintWord243Endpoints => 'ايڊريس جيڪي Kubernetes سروس جي پٺڀرائي ڪن ٿا.';

  @override
  String get gameHintWord244Namespace => 'منطقي دائرو جيڪو Kubernetes وسيلن کي گروپ ڪري ٿو.';

  @override
  String get gameHintWord245Node => 'ورڪر مشين جيڪا Kubernetes پوڊس هوسٽ ڪري ٿي.';

  @override
  String get gameHintWord246Kubelet => 'هر نوڊ تي ايجنٽ جيڪو پوڊ جي عمل کي منظم ڪري ٿو.';

  @override
  String get gameHintWord247Pvc => 'مستقل اسٽوريج لاءِ Kubernetes درخواست.';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes ڪنٽرول-پلين جزو جيڪو ڪلسٽر API ظاهر ڪري ٿو.';

  @override
  String get gameHintWord249Role => 'رول تي ٻڌل رسائي ڪنٽرول ۾ اجازتن جو نالو ڏنل سيٽ.';

  @override
  String get gameHintWord250Resourcequota => 'Kubernetes اعتراض جيڪو نيم اسپيس ۾ وسيلن جي استعمال کي محدود ڪري ٿو.';

  @override
  String get gameHintWord251Selector => 'اظهار جيڪو وسيلن کي انهن جي ليبلن سان ملائي ٿو.';

  @override
  String get gameHintWord252Taint => 'نوڊ جي خاصيت جيڪا ملندڙ toleration کان سواءِ پوڊس کي ڌڪاري ٿي.';

  @override
  String get gameHintWord253Toleration => 'پوڊ سيٽنگ جيڪا taint ٿيل نوڊ تي شيڊيول ٿيڻ جي اجازت ڏئي ٿي.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes نوڊ کي شيڊيول ٿيڻ جوڳو نه ڪري ٿو.';

  @override
  String get gameHintWord255Uncordon => 'cordon ٿيل نوڊ کي ٻيهر شيڊيول ٿيڻ جوڳو بڻائي ٿو.';

  @override
  String get gameHintWord256Drain => 'نوڊ جي سار سنڀال کان اڳ ورڪلوڊس کي محفوظ طريقي سان ڪڍي ٿو.';

  @override
  String get gameHintWord257Job => 'Kubernetes ورڪلوڊ جيڪو ڪم کي مڪمل ٿيڻ تائين هلائي ٿو.';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes ورڪلوڊ جيڪو شيڊيول تي جابس ٺاهي ٿو.';

  @override
  String get gameHintWord259Readiness => 'پروب جيڪو ٻڌائي ٿو ته ڪنٽينر ٽريفڪ وصول ڪري سگهي ٿو يا نه.';

  @override
  String get gameHintWord260Liveness => 'پروب جيڪو ٻڌائي ٿو ته ڪنٽينر کي ٻيهر شروع ڪرڻ جي ضرورت آهي يا نه.';

  @override
  String get gameHintWord261Canary => 'رليز طريقو جيڪو نئين ورزن کي ٽريفڪ جي ننڍي حصي سان ظاهر ڪري ٿو.';

  @override
  String get gameHintWord262Rolling => 'اپڊيٽ حڪمت عملي جيڪا هلندڙ انسٽينسز کي آهستي آهستي بدلائي ٿي.';

  @override
  String get gameHintWord263Rollback => 'اڳ ۾ ڪم ڪندڙ ايپليڪيشن ورزن بحال ڪري ٿو.';

  @override
  String get gameHintWord264Rollout => 'نئين ايپليڪيشن ورزن جي بتدريج ڊپلائيمينٽ.';

  @override
  String get gameHintWord265Recreate => 'ڊپلائيمينٽ حڪمت عملي جيڪا بدلا شروع ڪرڻ کان اڳ پراڻا پوڊس بند ڪري ٿي.';

  @override
  String get gameHintWord266Blue => 'blue-green رليز ۾ ٻن ماحولن مان هڪ.';

  @override
  String get gameHintWord267Green => 'blue-green رليز ۾ ٻيو ماحول.';

  @override
  String get gameHintWord268Artifact => 'بلڊ پائپ لائن مان پيدا ٿيل ورزن ٿيل آئوٽ پٽ.';

  @override
  String get gameHintWord269Staging => 'رليز جي تصديق لاءِ استعمال ٿيندڙ پروڊڪشن کان اڳ وارو ماحول.';

  @override
  String get gameHintWord270Production => 'ماحول جيڪو حقيقي آخري صارفن کي خدمت ڏئي ٿو.';

  @override
  String get gameHintWord271Release => 'استعمال لاءِ پهچايل سافٽ ويئر ورزن.';

  @override
  String get gameHintWord272Version => 'سڃاڻپ ڪندڙ جيڪو سافٽ ويئر ريويزن کي ڌار ڪري ٿو.';

  @override
  String get gameHintWord273Revision => 'دستاويز يا ڪوڊبيس جو سڃاڻپ جوڳو ورزن.';

  @override
  String get gameHintWord274Webhook => 'HTTP اطلاع جيڪو ڪنهن واقعي ٿيڻ تي موڪليو وڃي ٿو.';

  @override
  String get gameHintWord275Runbook => 'سسٽم هلائڻ يا بحال ڪرڻ لاءِ دستاويز ٿيل طريقو.';

  @override
  String get gameHintWord276Workspace => 'ڊائريڪٽري يا دائرو جنهن ۾ ڪم ڪندڙ پروجيڪٽ وسيلا هجن.';

  @override
  String get gameHintWord277Credentials => 'سسٽم تائين رسائي لاءِ استعمال ٿيندڙ تصديقي مواد.';

  @override
  String get gameHintWord278Trigger => 'واقعو يا شرط جيڪا پائپ لائن شروع ڪري ٿي.';

  @override
  String get gameHintWord279Parameter => 'نالو ڏنل ان پٽ جيڪو جاب يا فنڪشن کي ڏنو وڃي ٿو.';

  @override
  String get gameHintWord280Access => 'اختيار جي تابع وسيلو استعمال ڪرڻ جي صلاحيت.';

  @override
  String get gameHintWord281Module => 'انفراسٽرڪچر وصفن جو ٻيهر استعمال جوڳو گروپ.';

  @override
  String get gameHintWord282Provider => 'Terraform پلگ ان جيڪو ڪنفيگريشن کي ٻاهرين API سان ڳنڍي ٿو.';

  @override
  String get gameHintWord283Resource => 'ڪنفيگريشن ۾ اعلان ٿيل منظم انفراسٽرڪچر اعتراض.';

  @override
  String get gameHintWord284Variable => 'نالو ڏنل ان پٽ قيمت جيڪا ڪنفيگريشن يا ڪوڊ استعمال ڪري ٿو.';

  @override
  String get gameHintWord285Output => 'انفراسٽرڪچر ڪنفيگريشن مان واپس ڏنل ظاهر ٿيل قيمت.';

  @override
  String get gameHintWord286Tfstate => 'فائل لاحقو جيڪو Terraform اسٽيٽ اسنيپ شاٽس سان لاڳاپيل آهي.';

  @override
  String get gameHintWord287Tfvars => 'Terraform ان پٽ متغير قيمتن لاءِ استعمال ٿيندڙ فائل لاحقو.';

  @override
  String get gameHintWord288Backend => 'Terraform ڪنفيگريشن جيڪا اسٽيٽ اسٽوريج کي ڪنٽرول ڪري ٿي.';

  @override
  String get gameHintWord289Plan => 'تجويز ڪيل انفراسٽرڪچر تبديلين جو Terraform اڳڀرو ڏيک.';

  @override
  String get gameHintWord290Apply => 'Terraform عمل جيڪو تجويز ڪيل تبديليون هلائي ٿو.';

  @override
  String get gameHintWord291Destroy => 'Terraform عمل جيڪو منظم انفراسٽرڪچر هٽائي ٿو.';

  @override
  String get gameHintWord292Import => 'موجود وسيلي کي انفراسٽرڪچر جي انتظام هيٺ آڻي ٿو.';

  @override
  String get gameHintWord293Refresh => 'رڪارڊ ٿيل حالت کي حقيقي انفراسٽرڪچر سان هم وقت ڪري ٿو.';

  @override
  String get gameHintWord294Validate => 'ڪنفيگريشن جي نحو ۽ اندروني هم آهنگي جاچي ٿو.';

  @override
  String get gameHintWord295Fmt => 'Terraform ڪمانڊ جيڪو معياري ڪنفيگريشن فارميٽنگ لاڳو ڪري ٿو.';

  @override
  String get gameHintWord296Init => 'Terraform پروائيڊرز ۽ ڪم ڪندڙ ڊائريڪٽري کي شروع ڪري ٿو.';

  @override
  String get gameHintWord297Executor => 'Jenkins ورڪر سلاٽ جيڪو بلڊ هلائي سگهي ٿو.';

  @override
  String get gameHintWord298Dependencies => 'لاڳاپا جن ۾ هڪ جزو ٻئي کان اڳ گهربل هجي.';

  @override
  String get gameHintWord299Drift => 'اعلان ٿيل ۽ حقيقي انفراسٽرڪچر حالت وچ ۾ فرق.';

  @override
  String get gameHintWord300Locking => 'هڪ ئي وقت لکندڙن کي گڏيل حالت تبديل ڪرڻ کان روڪي ٿو.';

  @override
  String get gameHintWord301Playbook => 'Ansible دستاويز جيڪو آٽوميشن پلےز ۽ ڪم بيان ڪري ٿو.';

  @override
  String get gameHintWord302Inventory => 'منظم هوسٽن ۽ گروپن جو Ansible مجموعو.';

  @override
  String get gameHintWord303Facts => 'منظم هوسٽن بابت گڏ ڪيل سسٽم معلومات.';

  @override
  String get gameHintWord304Task => 'آٽوميشن ۾ ڪم جو هڪ الڳ يونٽ.';

  @override
  String get gameHintWord305Handler => 'Ansible ڪم جيڪو تبديليءَ جي اطلاع تي هلندو آهي.';

  @override
  String get gameHintWord306Notify => 'Ansible هدايت جيڪا تبديل ٿيل ڪم کانپوءِ handler کي قطار ۾ رکي ٿي.';

  @override
  String get gameHintWord307Become => 'Ansible سيٽنگ جيڪا مراعات وڌائڻ کي فعال ڪري ٿي.';

  @override
  String get gameHintWord308Vault => 'حساس آٽوميشن ڊيٽا کي مرموز ڪرڻ لاءِ Ansible خصوصيت.';

  @override
  String get gameHintWord309Register => 'Ansible هدايت جيڪا ڪم جو نتيجو متغير ۾ محفوظ ڪري ٿي.';

  @override
  String get gameHintWord310When => 'Ansible ڪي ورڊ جيڪو شرطي ڪم عمل کي ڪنٽرول ڪري ٿو.';

  @override
  String get gameHintWord311Loop => 'مجموعي تي آٽوميشن ڪم کي ورجائي ٿو.';

  @override
  String get gameHintWord312Include => 'ٻيهر استعمال جوڳو آٽوميشن مواد متحرڪ طور لوڊ ڪري ٿو.';

  @override
  String get gameHintWord313Tags => 'ليبل جيڪي آٽوميشن ڪمن جا ذيلي سيٽ چونڊڻ لاءِ استعمال ٿين ٿا.';

  @override
  String get gameHintWord314Template => 'فائل جيڪا ڊپلائيمينٽ کان اڳ متغيرن سان رينڊر ٿئي ٿي.';

  @override
  String get gameHintWord315Jinja => 'ٽيمپليٽ ٻولي جيڪا Ansible استعمال ڪري ٿو.';

  @override
  String get gameHintWord316Abstraction => 'عمل درآمد جا تفصيل سادي انٽرفيس پويان لڪائڻ.';

  @override
  String get gameHintWord317Agile => 'ورجائجندڙ سافٽ ويئر ترسيل جو طريقو جيڪو راءِ تي زور ڏئي ٿو.';

  @override
  String get gameHintWord318Puppet => 'ڪنفيگريشن مئنيجمينٽ اوزار جيڪو اعلانيه مينيفيسٽ استعمال ڪري ٿو.';

  @override
  String get gameHintWord319Airflow => 'ورڪ فلو DAGs کي شيڊيول ۽ آرڪيسٽريٽ ڪرڻ جو پليٽ فارم.';

  @override
  String get gameHintWord320Argo => 'ڪلائوڊ-نيٽيو پروجيڪٽ خاندان جنهن ۾ GitOps ڊليوري ڪنٽرولر شامل آهي.';

  @override
  String get gameHintWord321Rds => 'AWS جي منظم رشتيدار ڊيٽابيس سروس جو مخفف.';

  @override
  String get gameHintWord322Sqs => 'AWS جي منظم پيغام قطار جو مخفف.';

  @override
  String get gameHintWord323Sns => 'AWS جي publish-subscribe اطلاع سروس جو مخفف.';

  @override
  String get gameHintWord324Ses => 'AWS جي اي ميل موڪلڻ واري سروس جو مخفف.';

  @override
  String get gameHintWord325Iam => 'ڪلائوڊ سڃاڻپ ۽ رسائي جي انتظام جو مخفف.';

  @override
  String get gameHintWord326Kms => 'AWS جي انڪرپشن ڪي مئنيجمينٽ سروس جو مخفف.';

  @override
  String get gameHintWord327Waf => 'فائر وال جيڪو ايپليڪيشن-پرت ويب درخواستن کي فلٽر ڪري ٿو.';

  @override
  String get gameHintWord328Eks => 'AWS جي منظم Kubernetes سروس جو مخفف.';

  @override
  String get gameHintWord329Ecs => 'AWS جي منظم ڪنٽينر آرڪيسٽريشن سروس جو مخفف.';

  @override
  String get gameHintWord330Ecr => 'AWS ڪنٽينر امیج رجسٽري جو مخفف.';

  @override
  String get gameHintWord331Aurora => 'AWS رشتيدار ڊيٽابيس جيڪو MySQL ۽ PostgreSQL سان سازگار آهي.';

  @override
  String get gameHintWord332Redshift => 'AWS اينالاٽڪس ڊيٽا گودام.';

  @override
  String get gameHintWord333Neptune => 'AWS جو منظم گراف ڊيٽابيس.';

  @override
  String get gameHintWord334Elasticache => 'AWS جي منظم ان-ميموري ڪيشنگ سروس.';

  @override
  String get gameHintWord335Athena => 'AWS سروس جيڪا SQL سان آبجڪٽ اسٽوريج ڊيٽا ڪوئري ڪري ٿي.';

  @override
  String get gameHintWord336Glue => 'AWS سرور کان سواءِ ڊيٽا انٽيگريشن ۽ ETL سروس.';

  @override
  String get gameHintWord337Emr => 'منظم وڏي ڊيٽا پروسيسنگ ڪلسٽرز لاءِ AWS پليٽ فارم.';

  @override
  String get gameHintWord338Lambda => 'AWS سروس جيڪا سرور منظم ڪرڻ کان سواءِ فنڪشن هلائي ٿي.';

  @override
  String get gameHintWord339Cloudfront => 'AWS جو عالمي مواد ترسيل نيٽ ورڪ.';

  @override
  String get gameHintWord340Cloudwatch => 'AWS سروس جيڪا ميٽرڪس، لاگ ۽ الارم گڏ ڪري ٿي.';

  @override
  String get gameHintWord341Cloudshell => 'AWS جو برائوزر تي ٻڌل شيل ماحول.';

  @override
  String get gameHintWord342Codecommit => 'AWS جي منظم Git ريپوزٽري سروس.';

  @override
  String get gameHintWord343Codebuild => 'AWS سروس جيڪا سورس ڪمپائل ڪري ۽ بلڊ ٽيسٽ هلائي ٿي.';

  @override
  String get gameHintWord344Codedeploy => 'AWS جي خودڪار ايپليڪيشن ڊپلائيمينٽ سروس.';

  @override
  String get gameHintWord345Codepipeline => 'AWS جي مسلسل ترسيل پائپ لائن سروس.';

  @override
  String get gameHintWord346Guardduty => 'AWS جي ذهين خطرو ڳولڻ واري سروس.';

  @override
  String get gameHintWord347Inspector => 'AWS سروس جيڪا ورڪلوڊس جي ڪمزورين جو جائزو وٺي ٿي.';

  @override
  String get gameHintWord348Macie => 'AWS سروس جيڪا آبجڪٽ اسٽوريج ۾ حساس ڊيٽا ڳولي ٿي.';

  @override
  String get gameHintWord349Shield => 'AWS جي منظم DDoS تحفظ سروس.';

  @override
  String get gameHintWord350Snowball => 'وڏي ڊيٽا منتقلي لاءِ AWS جو فزيڪل اوزار.';

  @override
  String get gameHintWord351Snowcone => 'AWS آف لائن منتقلي خاندان ۾ ننڍو مضبوط ڊوائيس.';

  @override
  String get gameHintWord352Datasync => 'AWS جي خودڪار آن لائن ڊيٽا منتقلي سروس.';

  @override
  String get gameHintWord353Msk => 'AWS جي منظم Apache Kafka سروس جو مخفف.';

  @override
  String get gameHintWord354Backup => 'بحالي لاءِ رکيل ڊيٽا جي ڪاپي.';

  @override
  String get gameHintWord355Transcribe => 'AWS سروس جيڪا ڳالهه کي متن ۾ بدلائي ٿي.';

  @override
  String get gameHintWord356Translate => 'AWS سروس جيڪا ٻولين وچ ۾ متن ترجمو ڪري ٿي.';

  @override
  String get gameHintWord357Rekognition => 'AWS سروس جيڪا تصويرن ۽ وڊيو جو تجزيو ڪري ٿي.';

  @override
  String get gameHintWord358Comprehend => 'AWS جي قدرتي ٻولي تجزيي واري سروس.';

  @override
  String get gameHintWord359Textract => 'AWS سروس جيڪا دستاويزن مان متن ۽ جدول ڪڍي ٿي.';

  @override
  String get gameHintWord360Sagemaker => 'مشين لرننگ ماڊل ٺاهڻ ۽ ڊپلائي ڪرڻ لاءِ AWS پليٽ فارم.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud جو عالمي سطح تي ورهايل رشتيدار ڊيٽابيس.';

  @override
  String get gameHintWord362Pub => 'publish-subscribe پيغام نمونن جو شايع ڪرڻ وارو اڌ.';

  @override
  String get gameHintWord363Sub => 'publish-subscribe پيغام نمونن جو سبسڪرائبر وارو اڌ.';

  @override
  String get gameHintWord364Functions => 'واقعن تي هلندڙ ڪوڊ يونٽ جيڪي سرور کان سواءِ پليٽ فارم ڏين ٿا.';

  @override
  String get gameHintWord365App => 'سافٽ ويئر ايپليڪيشن جو مختصر روپ.';

  @override
  String get gameHintWord366Engine => 'Compute Engine جهڙن نالن ۾ عمل درآمد وارو جزو.';

  @override
  String get gameHintWord367Compute => 'ورچوئل مشينن يا ڪنٽينرز طرفان فراهم ٿيندڙ پروسيسنگ گنجائش.';

  @override
  String get gameHintWord368Network => 'ڳنڍيل سسٽم جيڪي ڊيٽا جي ڏي وٺ ڪن ٿا.';

  @override
  String get gameHintWord369Security => 'سسٽم ۽ معلومات جو خطرن کان تحفظ.';

  @override
  String get gameHintWord370Identity => 'صارف يا سروس جي نمائندگي جيڪا رسائي جي فيصلن لاءِ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord371Monitoring => 'سسٽم جي صحت ۽ رويي جي مسلسل نگراني.';

  @override
  String get gameHintWord372Logging => 'ايپليڪيشن ۽ سسٽم جي الڳ واقعن کي رڪارڊ ڪرڻ.';

  @override
  String get gameHintWord373Trace => 'سروس ڪالن ۾ درخواست جي رستي جو رڪارڊ.';

  @override
  String get gameHintWord374Metrics => 'وقت سان سسٽم جي رويي جون عددي ماپون.';

  @override
  String get gameHintWord375Alert => 'اطلاع ته نگراني هيٺ شرط ڏانهن ڌيان گهرجي.';

  @override
  String get gameHintWord376Billing => 'استعمال ٿيل ڪلائوڊ سروسز جو حساب رکڻ ۽ چارج ڪرڻ.';

  @override
  String get gameHintWord377Quota => 'وسيلي جي استعمال جي مقدار تي حد.';

  @override
  String get gameHintWord378Region => 'جاگرافيائي ڪلائوڊ ڊپلائيمينٽ علائقو جنهن ۾ availability zones هجن.';

  @override
  String get gameHintWord379Tenancy => 'ترتيب جيڪا ٻڌائي ٿي ته گراهڪ انفراسٽرڪچر ڪيئن شيئر ڪن ٿا.';

  @override
  String get gameHintWord380Regional => 'اهو وسيلو بيان ڪري ٿو جيڪو ڪلائوڊ علائقي تائين محدود هجي.';

  @override
  String get gameHintWord381Cosmos => 'Azure جي عالمي سطح تي ورهايل گهڻ-ماڊل ڊيٽابيس جو نالو.';

  @override
  String get gameHintWord382Synapse => 'Azure اينالاٽڪس پليٽ فارم جيڪو گودام ۽ ڊيٽا پروسيسنگ گڏ ڪري ٿو.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft جو ڪلائوڊ-نيٽيو سيڪيورٽي معلومات ۽ واقعن جو پليٽ فارم.';

  @override
  String get gameHintWord384Defender => 'Microsoft سيڪيورٽي پراڊڪٽ خاندان جيڪو ڪلائوڊ ورڪلوڊس کي بچائي ٿو.';

  @override
  String get gameHintWord385Entra => 'Microsoft سڃاڻپ پراڊڪٽ خاندان جيڪو Azure AD برانڊنگ جي جاءِ وٺي ٿو.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager جو مخفف.';

  @override
  String get gameHintWord387Arc => 'Azure سروس جيڪا Azure کان ٻاهر وسيلن تائين انتظام وڌائي ٿي.';

  @override
  String get gameHintWord388Aks => 'Azure جي منظم Kubernetes سروس جو مخفف.';

  @override
  String get gameHintWord389Armor => 'Google Cloud ويب تحفظ سروس جي نالي جو لاحقو.';

  @override
  String get gameHintWord390Blob => 'Azure آبجڪٽ اسٽوريج ڊيٽا جو قسم.';

  @override
  String get gameHintWord391Files => 'Azure سروس جيڪا منظم نيٽ ورڪ فائل شيئر ڏئي ٿي.';

  @override
  String get gameHintWord392Disk => 'بلاڪ اسٽوريج ڊوائيس جيڪو ورچوئل مشين سان ڳنڍيل هجي.';

  @override
  String get gameHintWord393Function => 'ڪوڊ جو سڏڻ جوڳو بلاڪ جيڪو نتيجو واپس ڏئي سگهي ٿو.';

  @override
  String get gameHintWord394Logic => 'ورڪ فلو انٽيگريشن لاءِ Azure ايپ سروس ڪئٽيگري.';

  @override
  String get gameHintWord395Insights => 'Azure ايپليڪيشن ٽيلي ميٽري پراڊڪٽ جي نالي جو لاحقو.';

  @override
  String get gameHintWord396Traffic => 'نيٽ ورڪ اينڊ پوائنٽس وچ ۾ وهندڙ ڊيٽا.';

  @override
  String get gameHintWord397Manager => 'Azure Resource پراڊڪٽ نالي جو لاحقو جيڪو ان جي ڪنٽرول پلين لاءِ آهي.';

  @override
  String get gameHintWord398Bastion => 'نجي هوسٽ رسائي لاءِ منظم يا مضبوط ڪيل داخلا نقطو.';

  @override
  String get gameHintWord399Front => 'Azure جي عالمي داخلا نقطي سروس Front Door ۾ پهريون لفظ.';

  @override
  String get gameHintWord400Door => 'Azure جي عالمي داخلا نقطي سروس Front Door ۾ ٻيو لفظ.';

  @override
  String get gameHintWord401Javascript => 'پروگرامنگ ٻولي جيڪا برائوزرن ۽ Node رن ٽائمز ۾ وڏي پيماني تي استعمال ٿئي ٿي.';

  @override
  String get gameHintWord402Perl => 'اسڪرپٽنگ ٻولي جيڪا متن پروسيسنگ ۽ باقاعده اظهارن لاءِ مشهور آهي.';

  @override
  String get gameHintWord403Powershell => 'Microsoft جي اعتراض تي ٻڌل شيل ۽ آٽوميشن ٻولي.';

  @override
  String get gameHintWord404Java => 'JVM ٻولي جيڪا Jenkins لاڳو ڪرڻ ۾ استعمال ٿي.';

  @override
  String get gameHintWord405Json => 'هلڪو ڊيٽا فارميٽ جنهن ۾ اعتراض ۽ ارريز هجن.';

  @override
  String get gameHintWord406Xml => 'مارڪ اپ فارميٽ جيڪو اندر اندر نالو ڏنل ٽيگ استعمال ڪري ٿو.';

  @override
  String get gameHintWord407Html => 'مارڪ اپ ٻولي جيڪا ويب صفحن جي جوڙجڪ لاءِ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord408Css => 'اسٽائل شيٽ ٻولي جيڪا ويب پيشڪش کي ڪنٽرول ڪري ٿي.';

  @override
  String get gameHintWord409String => 'متن جي ڪردارن جو سلسلو.';

  @override
  String get gameHintWord410Array => 'عنصرن جو انڊيڪس ٿيل مجموعو.';

  @override
  String get gameHintWord411Hash => 'Ruby ۽ Perl ۾ ساٿي ڪي-ويليو مجموعو.';

  @override
  String get gameHintWord412Object => 'رن ٽائيم قيمت جنهن ۾ خاصيتون ۽ رويو هجي.';

  @override
  String get gameHintWord413Class => 'وصف جيڪو ڪلاس تي ٻڌل ٻولين ۾ اعتراض ٺاهڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord414Method => 'فنڪشن جيڪو اعتراض يا ڪلاس سان لاڳاپيل هجي.';

  @override
  String get gameHintWord415Interface => 'معاهدو جيڪو جزو جي ظاهر ڪيل عملن کي بيان ڪري ٿو.';

  @override
  String get gameHintWord416Subclass => 'ڪلاس جيڪو ٻئي ڪلاس مان نڪتل هجي.';

  @override
  String get gameHintWord417Super => 'ڪي ورڊ جيڪو والد-ڪلاس جو رويو سڏڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord418Protected => 'ڏيک جي سطح جيڪا رسائي کي ڪلاس سان لاڳاپيل حوالن تائين محدود ڪري ٿي.';

  @override
  String get gameHintWord419Exception => 'رن ٽائيم شرط جيڪا عام ڪنٽرول وهڪري کي روڪي ٿي.';

  @override
  String get gameHintWord420Regex => 'نمونو اشارو جيڪو متن ملائڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord421Lexical => 'اهو دائرو بيان ڪري ٿو جيڪو سورس ڪوڊ جي جوڙجڪ مان طئي ٿئي.';

  @override
  String get gameHintWord422Scalar => 'Perl ۾ هڪ قيمت وارو متغير ڪئٽيگري.';

  @override
  String get gameHintWord423Tuple => 'Python ۾ نه بدلجندڙ ترتيب وار مجموعو.';

  @override
  String get gameHintWord424List => 'Python ۾ بدلجندڙ ترتيب وار مجموعو.';

  @override
  String get gameHintWord425Dict => 'Python جي built-in ميپنگ قسم جو نالو.';

  @override
  String get gameHintWord426Dictionary => 'مجموعو جيڪو ڪنجين کي لاڳاپيل قيمتن سان نقشو ڪري ٿو.';

  @override
  String get gameHintWord427Set => 'ڌار ڌار قيمتن جو مجموعو.';

  @override
  String get gameHintWord428Boolean => 'ڊيٽا جو قسم جيڪو سچ يا ڪوڙ ظاهر ڪري ٿو.';

  @override
  String get gameHintWord429Integer => 'عددي قسم جيڪو پورا عدد ظاهر ڪري ٿو.';

  @override
  String get gameHintWord430Float => 'عددي قسم جيڪو فلوٽنگ-پوائنٽ قيمتون ظاهر ڪري ٿو.';

  @override
  String get gameHintWord431Double => 'ڊبل-پريسيزن فلوٽنگ-پوائنٽ قسم.';

  @override
  String get gameHintWord432Null => 'قيمت جيڪا اعتراض يا نتيجي جي غير موجودگي ظاهر ڪري ٿي.';

  @override
  String get gameHintWord433Undefined => 'JavaScript قيمت جيڪا غائب مقرر ٿيل قيمت لاءِ آهي.';

  @override
  String get gameHintWord434Promise => 'JavaScript اعتراض جيڪو آخرڪار ايندڙ غير هم وقتي نتيجو ظاهر ڪري ٿو.';

  @override
  String get gameHintWord435Async => 'ڪي ورڊ جيڪو غير هم وقتي فنڪشن کي نشان ڪري ٿو.';

  @override
  String get gameHintWord436Await => 'ڪي ورڊ جيڪو غير هم وقتي نتيجي جو انتظار ڪري ٿو.';

  @override
  String get gameHintWord437Callback => 'فنڪشن جيڪو ٻئي عمل طرفان سڏجڻ لاءِ ڏنو وڃي ٿو.';

  @override
  String get gameHintWord438Closure => 'فنڪشن جيڪو پنهنجي گهيري واري lexical دائري تائين رسائي برقرار رکي ٿو.';

  @override
  String get gameHintWord439Generator => 'فنڪشن جيڪو yield ٿيل قيمتن ذريعي سلسلو سست طريقي سان پيدا ڪري ٿو.';

  @override
  String get gameHintWord440Iterator => 'اعتراض جيڪو مجموعي ۾ قيمتن مان اڳتي وڌي ٿو.';

  @override
  String get gameHintWord441Print => 'عام فنڪشن جيڪو قيمت آئوٽ پٽ ڏانهن لکي ٿو.';

  @override
  String get gameHintWord442Input => 'Python فنڪشن جيڪو معياري ان پٽ مان هڪ لائن پڙهي ٿو.';

  @override
  String get gameHintWord443Open => 'فنڪشن جيڪو فائل هينڊل حاصل ڪرڻ لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord444Close => 'عمل جيڪو کليل فائل يا ڪنيڪشن آزاد ڪري ٿو.';

  @override
  String get gameHintWord445Read => 'عمل جيڪو اسٽريم يا فائل مان ڊيٽا حاصل ڪري ٿو.';

  @override
  String get gameHintWord446Write => 'عمل جيڪو اسٽريم يا فائل ڏانهن ڊيٽا موڪلي ٿو.';

  @override
  String get gameHintWord447Append => 'مجموعي جي آخر ۾ شيءِ شامل ڪري ٿو.';

  @override
  String get gameHintWord448Split => 'ڊيليميٽر استعمال ڪري متن کي ذيلي اسٽرنگن ۾ ورهائي ٿو.';

  @override
  String get gameHintWord449Join => 'الڳ ڪندڙ سان اسٽرنگن جو سلسلو گڏ ڪري ٿو.';

  @override
  String get gameHintWord450Strip => 'Python اسٽرنگ مان آس پاس جي خالي جاءِ هٽائي ٿو.';

  @override
  String get gameHintWord451Chomp => 'Perl يا Ruby ۾ آخري رڪارڊ الڳ ڪندڙ هٽائي ٿو.';

  @override
  String get gameHintWord452Map => 'مجموعي جي هر شيءِ تي تبديلي لاڳو ڪري ٿو.';

  @override
  String get gameHintWord453Filter => 'مجموعي جون اهي شيون رکي ٿو جيڪي شرط پوري ڪن.';

  @override
  String get gameHintWord454Reduce => 'مجموعي کي گڏ ٿيل نتيجي ۾ ملائي ٿو.';

  @override
  String get gameHintWord455Range => 'Python قسم جيڪو انٽيجرز جو رياضياتي سلسلو ظاهر ڪري ٿو.';

  @override
  String get gameHintWord456Length => 'خاصيت يا طريقو جيڪو مجموعي جو سائيز واپس ڏئي ٿو.';

  @override
  String get gameHintWord457Len => 'Python built-in فنڪشن جيڪو مجموعي جو سائيز واپس ڏئي ٿو.';

  @override
  String get gameHintWord458Type => 'Python فنڪشن جيڪو اعتراض جو قسم واپس ڏئي ٿو.';

  @override
  String get gameHintWord459Isinstance => 'Python فنڪشن جيڪو قسم جي ورڇ ۾ رڪنيت جاچي ٿو.';

  @override
  String get gameHintWord460Yield => 'ڪي ورڊ جيڪو generator مان قيمت پيدا ڪري ٿو.';

  @override
  String get gameHintWord461Saas => 'ڪلائوڊ ماڊل جيڪو مڪمل سافٽ ويئر ايپليڪيشنون پهچائي ٿو.';

  @override
  String get gameHintWord462Paas => 'ڪلائوڊ ماڊل جيڪو منظم ايپليڪيشن ڊولپمينٽ پليٽ فارم ڏئي ٿو.';

  @override
  String get gameHintWord463Iaas => 'ڪلائوڊ ماڊل جيڪو ورچوئل ڪمپيوٽ، اسٽوريج ۽ نيٽ ورڪنگ ڏئي ٿو.';

  @override
  String get gameHintWord464Hybrid => 'ڪلائوڊ طريقو جيڪو نجي ۽ عوامي انفراسٽرڪچر گڏ ڪري ٿو.';

  @override
  String get gameHintWord465Archive => 'گهٽ استعمال ٿيندڙ ڊيٽا جي ڊگهي مدي واري اسٽوريج.';

  @override
  String get gameHintWord466Public => 'ڪلائوڊ ملڪيت ماڊل جيڪو ڪيترن ئي گراهڪن کي خدمتون پيش ڪري ٿو.';

  @override
  String get gameHintWord467Private => 'ڪلائوڊ ماڊل جيڪو هڪ ادارتي لاءِ مخصوص هجي.';

  @override
  String get gameHintWord468Scalability => 'وسيلا شامل ڪري وڌندڙ لوڊ کي سنڀالڻ جي صلاحيت.';

  @override
  String get gameHintWord469Availability => 'اها حد جنهن تائين سروس گهربل وقت دستياب رهي.';

  @override
  String get gameHintWord470Resilience => 'ناڪامين کي برداشت ڪرڻ ۽ انهن مان بحال ٿيڻ جي صلاحيت.';

  @override
  String get gameHintWord471Redundancy => 'ورجايل جزا جيڪي هڪ نقطي جي ناڪامي جا خطرا گھٽائين ٿا.';

  @override
  String get gameHintWord472Disaster => 'وڏو بندش جنهن کي بحالي جي حڪمت عملي سان حل ڪيو وڃي.';

  @override
  String get gameHintWord473Recovery => 'ناڪامي کانپوءِ سروس يا ڊيٽا بحال ڪرڻ.';

  @override
  String get gameHintWord474Replicate => 'ڊيٽا يا ورڪلوڊس کي ٻي جاءِ تي ڪاپي ڪرڻ.';

  @override
  String get gameHintWord475Snapshotting => 'ڊيٽا يا سسٽم حالت جون ڏنل وقت جون ڪاپيون وٺڻ.';

  @override
  String get gameHintWord476Restore => 'عمل جيڪو محفوظ ڪاپي مان ڊيٽا بحال ڪري ٿو.';

  @override
  String get gameHintWord477Residency => 'گهرج جيڪا محفوظ ڊيٽا جي جاگرافيائي جڳهه مقرر ڪري ٿي.';

  @override
  String get gameHintWord478Compliance => 'گهربل ضابطن ۽ ادارتي ڪنٽرولن جي پيروي ڪرڻ.';

  @override
  String get gameHintWord479Governance => 'پاليسيون ۽ عمل جيڪي ٽيڪنالاجي جي استعمال کي ڪنٽرول ڪن ٿا.';

  @override
  String get gameHintWord480Audit => 'رڪارڊ ٿيل سرگرمين ۽ تعميل جي ثبوتن جو جائزو.';

  @override
  String get gameHintWord481Token => 'سند يا علامت جيڪا اختيار يا سڃاڻپ ظاهر ڪري ٿي.';

  @override
  String get gameHintWord482Oauth => 'اختيار جو فريم ورڪ جيڪو سونپيل رسائي جي اجازت ڏئي ٿو.';

  @override
  String get gameHintWord483Saml => 'XML تي ٻڌل معيار جيڪو عام طور ادارتي سنگل سائن آن لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell پائپ لائنن ۾ استعمال ٿيندڙ خاص ڪمانڊ.';

  @override
  String get gameHintWord485Algorithm => 'ڪمپيوٽيشنل مسئلو حل ڪرڻ لاءِ قدمن جو وضاحت ٿيل سلسلو.';

  @override
  String get gameHintWord486Key => 'قيمت جيڪا انڪرپشن ڪنٽرول ڪرڻ يا محفوظ ڊيٽا سڃاڻڻ لاءِ استعمال ٿئي ٿي.';

  @override
  String get gameHintWord487Alias => 'شيل ڪمانڊ يا وسيلي لاءِ متبادل نالو.';

  @override
  String get gameHintWord488Amend => 'Git ڪميٽ آپشن جيڪو تازو ڪميٽ کي بدلائي ٿو.';

  @override
  String get gameHintWord489Allsigned => 'PowerShell عمل درآمد پاليسي جيڪا دستخط ٿيل اسڪرپٽس گهري ٿي.';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell پاليسي جيڪا ڊائونلوڊ ٿيل اسڪرپٽس تي دستخط گهري ٿي.';

  @override
  String get gameHintWord491Acl => 'فهرست جيڪا صارفن يا سسٽمن لاءِ اجازتون بيان ڪري ٿي.';

  @override
  String get gameHintWord492Uid => 'Unix صارف کي ڏنل عددي سڃاڻپ ڪندڙ.';

  @override
  String get gameHintWord493Setgid => 'اجازت بٽ جيڪو عمل يا وراثت دوران گروپ سڃاڻپ تي اثر وجهي ٿو.';

  @override
  String get gameHintWord494Setfacl => 'Linux ڪمانڊ جيڪو فائل رسائي ڪنٽرول لسٽون مقرر ڪري ٿو.';

  @override
  String get gameHintWord495Isolation => 'جدائي جيڪا ورڪلوڊس کي هڪ ٻئي ۾ مداخلت ڪرڻ کان روڪي ٿي.';

  @override
  String get gameHintWord496Sighup => 'Unix هينگ اپ سگنل جيڪو اڪثر ڪنفيگريشن ٻيهر لوڊ ڪرڻ جي گهر لاءِ استعمال ٿئي ٿو.';

  @override
  String get gameHintWord497Sigint => 'Unix مداخلت سگنل جيڪو عام طور Control-C سان پيدا ٿئي ٿو.';

  @override
  String get gameHintWord498Sigstop => 'Unix سگنل جيڪو پروسيس کي ختم ڪرڻ کان سواءِ روڪي ٿو.';

  @override
  String get gameHintWord499Secrets => 'حساس قيمتون جهڙوڪ پاسورڊ ۽ رسائي ڪنجيون.';

  @override
  String get gameHintWord500Secure => 'اهو ڪنيڪشن بيان ڪري ٿو جيڪو غير مجاز رسائي کان محفوظ هجي.';

  @override
  String get fontSettingsTitle => 'فونٽ';

  @override
  String get fontChangeFont => 'فونٽ مٽايو';

  @override
  String get fontSystemDefault => 'سسٽم ڊفالٽ';

  @override
  String get fontPreview => 'پيش منظر';

  @override
  String get fontPreviewSample => 'هڪ هڪ سوال سان DevOps سکو';

  @override
  String get fontSelected => 'چونڊيل';

  @override
  String get fontLatinOnlyNote => 'ڪسٽم فونٽ لاطيني اکرن تي لاڳو ٿين ٿا. ٻيون لپيون توهان جي ڊوائيس جي فونٽ ۾ ئي رهن ٿيون.';

  @override
  String get fontDescSystem => 'توهان جي ڊوائيس جو اندروني فونٽ';

  @override
  String get fontDescGeometric => 'جاميٽرڪ سانس سيرف';

  @override
  String get fontDescGeometricRounded => 'جاميٽرڪ گول سانس سيرف';

  @override
  String get fontDescFriendly => 'دوستاڻو سانس سيرف';

  @override
  String get fontDescCondensed => 'سوڙهو';

  @override
  String get fontDescRounded => 'گول سانس سيرف';

  @override
  String get fontDescRoundedDisplay => 'گول ڊسپلي';

  @override
  String gameScene3dScene(String value1) {
    return '3D منظر $value1';
  }
}
