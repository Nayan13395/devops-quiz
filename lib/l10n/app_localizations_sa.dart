// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appTour => 'अनुप्रयोगपरिचयः';

  @override
  String get skipTour => 'परिचयं त्यजतु';

  @override
  String get finishTour => 'परिचयं समापयतु';

  @override
  String tourStep(int current, int total) {
    return 'चरणः $current / $total';
  }

  @override
  String get tourMenuTitle => 'सञ्चारसूची';

  @override
  String get tourSearch => 'सम्बद्धप्रश्नोत्तरीवर्गान् अन्वेष्टुम् अत्र विषयं लिखतु।';

  @override
  String get tourCategory => 'मिश्रप्रश्नोत्तर्यै DevOps स्पृशतु। अन्यवर्गेषु प्रश्नसञ्चयाः सन्ति। पश्चात् पुनरवलोकनाय प्रश्नान् चिह्नयतु।';

  @override
  String get tourMenu => 'सञ्चारसूचीम् उद्घाटयितुम् इदं बटनं स्पृशतु।';

  @override
  String get tourLearning => 'पत्राणि द्रष्टुम् अध्ययनम् उद्घाटयतु। कस्यामपि दिशि सारयतु, मिश्रयतु, स्वचालितपरिवर्तनं चालयतु अथवा पत्रं चिह्नयतु।';

  @override
  String get tourGames => 'क्रीडाभिः अङ्कान् अर्जयतु। स्तरयुक्तक्रीडासु प्रत्येकस्य स्तरस्य समापने 100 अङ्काः लभ्यन्ते; सङ्केतस्य मूल्यं 20 अङ्काः।';

  @override
  String get tourAchievements => 'अत्र स्वोपलब्धीः पश्यतु। नूतनाः उपलब्धयः विषयाश्च उद्भवसूचनाभिः ज्ञाप्यन्ते।';

  @override
  String get tourSettings => 'भाषां विषयं ध्वनिं च चिनोतु। चिह्नितवस्तूनां कृते सङ्गृहीतदत्तांशान् अथवा पुनः परिचयाय अनुप्रयोगपरिचयम् उद्घाटयतु।';

  @override
  String get achievementUnlocked => 'उपलब्धिः प्राप्ता!';

  @override
  String get themeUnlocked => 'नूतनः विषयः उपलब्धः!';

  @override
  String get themeUnlockedMessage => 'इदानीं विन्यासाः > विषयाः इत्यत्र इमं विषयं चिनोतु।';

  @override
  String get gameSounds => 'क्रीडाध्वनयः';

  @override
  String get gameSoundsDescription => 'क्रीडानां प्रश्नोत्तरीणां च ध्वनिप्रभावाः। उपकरणस्य ध्वनिस्तरं मौनावस्थां च परीक्षताम्।';

  @override
  String get testSound => 'ध्वनिं परीक्षताम्';

  @override
  String get soundSettingBusy => 'कृपया प्रतीक्षताम्...';

  @override
  String get soundSettingError => 'ध्वनिविन्यासस्य आनयनं सङ्ग्रहणं वा न शक्यम्। पुनः प्रयतताम्।';

  @override
  String get soundPlaybackError => 'ध्वनिवादनं न शक्यम्। उपकरणस्य अथवा ब्राउजरस्य ध्वनिविन्यासं परीक्षताम्।';

  @override
  String get saveData => 'सङ्गृहीतदत्तांशाः';

  @override
  String get learningTranslationUnavailable => 'अस्य पत्रस्य चयनितभाषायाम् अनुवादः अद्यापि न कृतः।';

  @override
  String get saveQuestion => 'प्रश्नं सङ्गृह्णातु';

  @override
  String defaultPortQuestion(String service) {
    return '$service इत्यस्य पूर्वनिर्धारितं पोर्ट् किम्?';
  }

  @override
  String get removeSavedItem => 'सङ्गृहीतेभ्यः अपनयतु';

  @override
  String get noSavedData => 'अद्यापि किमपि न सङ्गृहीतम्। अध्ययनपत्राणि अथवा प्रश्नोत्तरीप्रश्नान् सङ्गृह्णातु।';

  @override
  String get savedDataError => 'सङ्गृहीतदत्तांशानाम् आनयनम् अथवा नवीकरणं न शक्यम्। पुनः प्रयतताम्।';

  @override
  String get savedItemUnavailable => 'अयं सङ्गृहीतः विषयः इदानीं नोपलभ्यते।';

  @override
  String get correctAnswer => 'सम्यगुत्तरम्';

  @override
  String get retry => 'पुनः प्रयतताम्';

  @override
  String get certificates => 'प्रमाणपत्राणि';

  @override
  String get whatsNew => 'नूतनवार्ताः';

  @override
  String get settings => 'विन्यासाः';

  @override
  String get darkMode => 'श्यामविधिः';

  @override
  String get lightMode => 'प्रकाशविधिः';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषां चिनुत';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'प्रश्नोत्तरीम् आरभत';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'वर्गं परिवर्तयत';

  @override
  String get dailyQuiz => 'दैनिकप्रश्नोत्तरी';

  @override
  String get dailyQuizCompleted => 'दैनिकप्रश्नोत्तरी पूर्णा';

  @override
  String get dailyQuizCompletedMessage => 'अद्यतनदैनिकप्रश्नोत्तरी भवता पूर्णा। नूतनाह्वानाय श्वः आगच्छत!';

  @override
  String get leaderboard => 'अग्रक्रमसूची';

  @override
  String get shareApp => 'अनुप्रयोगं संविभजत';

  @override
  String get rateApp => 'अनुप्रयोगस्य मूल्याङ्कनं कुरुत';

  @override
  String get about => 'परिचयः';

  @override
  String get ok => 'अस्तु';

  @override
  String get home => 'मुखपृष्ठम्';

  @override
  String get games => 'क्रीडाः';

  @override
  String get referAndEarn => 'आमन्त्रयत अर्जयत च';

  @override
  String get themes => 'रूपविन्यासाः';

  @override
  String get version => 'संस्करणम्';

  @override
  String get developer => 'विकासकः';

  @override
  String get contact => 'सम्पर्कः';

  @override
  String get learning => 'अध्ययनम्';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'मया सह संयुज्यताम्';

  @override
  String get aboutDescription => 'DevOps Quiz द्वारा Linux, Docker, Kubernetes इत्यादीन् विषयान् अधीत्य साक्षात्काराणां प्रमाणपत्राणां च कृते सज्जाः भवन्तु।';

  @override
  String get quizResult => 'प्रश्नोत्तरीफलम्';

  @override
  String get outstanding => 'अत्युत्तमम्!';

  @override
  String get greatJob => 'साधु कृतम्!';

  @override
  String get goodEffort => 'शोभनः प्रयासः!';

  @override
  String get keepPracticing => 'अभ्यासं कुर्वन्तु!';

  @override
  String get dontGiveUp => 'प्रयासं मा त्यजत!';

  @override
  String get shareMessage1 => 'मम अङ्काः';

  @override
  String get shareMessage2 => 'DevOps प्रश्नोत्तर्याम्!';

  @override
  String get downloadApp => 'अनुप्रयोगम् अवतारयत:';

  @override
  String get score => 'अङ्काः';

  @override
  String get points => 'गुणाङ्काः';

  @override
  String get percentage => 'प्रतिशतम्';

  @override
  String get bonus => 'अतिरिक्ताङ्काः';

  @override
  String get perfectScoreBonus => 'पूर्णाङ्कलाभः';

  @override
  String get shareScore => 'अङ्कान् संविभजत';

  @override
  String get restartQuiz => 'प्रश्नोत्तरीं पुनः आरभत';

  @override
  String get backToCategories => 'वर्गेषु प्रत्यागच्छत';

  @override
  String get greatProgress => 'साधु कृतम्! भवतः प्रगतिः शोभना अस्ति।';

  @override
  String get practiceMore => 'शोभनः प्रयासः! अधिकाभ्यासेन अङ्काः वर्धिष्यन्ते।';

  @override
  String get keepLearning => 'अध्ययनं कुर्वन्तु पुनः प्रयतध्वम्।';

  @override
  String get everyExpertStarted => 'प्रत्येकः विशेषज्ञः आरम्भे शिक्षार्थी आसीत्। अभ्यासं कुर्वन्तु!';

  @override
  String get quizInstructions => 'प्रश्नोत्तरीनिर्देशाः';

  @override
  String get instruction1 => 'प्रत्येकस्मिन् समूहे 25 प्रश्नाः सन्ति।';

  @override
  String get instruction2 => 'प्रत्येकप्रश्नाय 30 क्षणाः सन्ति।';

  @override
  String get instruction3 => 'हरितवर्णः = सम्यगुत्तरम्।';

  @override
  String get instruction4 => 'रक्तवर्णः = अशुद्धोत्तरम्।';

  @override
  String get instruction5 => 'उत्तरं परिवर्तयितुं न शक्यते।';

  @override
  String get instruction6 => 'पृष्ठबटनं केवलं पुनरवलोकनाय अस्ति।';

  @override
  String get instruction7 => 'समाप्तौ अङ्काः प्रदर्श्यन्ते।';

  @override
  String get instruction8 => 'प्रत्येकं शुद्धम् उत्तरं 10 अङ्कान् ददाति।';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्टं प्रदर्शनम्! भवान् $expert अस्ति।';
  }

  @override
  String get selectCategory => 'वर्गं चिनुत';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'समूहं चिनुत';

  @override
  String get set => 'समूहः';

  @override
  String get questions => 'प्रश्नाः';

  @override
  String get noScoresYet => 'अद्यापि अङ्काः न सन्ति';

  @override
  String get pointsShort => 'अङ्काः';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz मध्ये स्वागतम्';

  @override
  String hiUser(String name) {
    return 'नमस्ते $name';
  }

  @override
  String get challengeMode => 'आह्वानविधिः';

  @override
  String get challenge => 'आह्वानम्';

  @override
  String get question => 'प्रश्नः';

  @override
  String get reward => 'पुरस्कारः';

  @override
  String get survivalMode => 'अस्तित्वविधिः';

  @override
  String get speedChallenge => 'वेगाह्वानम्';

  @override
  String get dailyChallenge => 'दैनिकाह्वानम्';

  @override
  String get ultimateChallenge => 'परमाह्वानम्';

  @override
  String get timeLeft => 'अवशिष्टसमयः';

  @override
  String get completed => 'पूर्णम्';

  @override
  String get locked => 'अवरुद्धम्';

  @override
  String get back => 'पृष्ठतः';

  @override
  String get next => 'अग्रिमम्';

  @override
  String get submit => 'समर्पयत';

  @override
  String get achievements => 'उपलब्धयः';

  @override
  String get streak => 'सातत्यम्';

  @override
  String get days => 'दिनानि';

  @override
  String get tomorrowsReward => 'श्वस्तनपुरस्कारः';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 मम अङ्काः $score/$totalQuestions #DevOps Quiz!\n\n🏆 गुणाङ्काः: $earnedPoints\n🔥 अतिरिक्ताङ्काः: $bonusPoints\n📊 प्रतिशतम्: $percentage%\n\nअनुप्रयोगम् अवतारयत:';
  }

  @override
  String get gameUiSpinWheel => 'चक्रं भ्रामय';

  @override
  String get gameUiSpinAndWinBonusPoints => 'भ्रामय अधिकाङ्कान् च जय';

  @override
  String get gameUiScratchCard => 'खरोष्टपत्रम्';

  @override
  String get gameUiScratchToRevealAReward => 'पुरस्कारं प्रकटयितुं खरोष्टय';

  @override
  String get gameUiLuckySlots => 'भाग्यस्लॉट्स्';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स् भ्रामय अङ्कान् च जय';

  @override
  String get gameUiMysteryDeal => 'रहस्यव्यवहारः';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'रहस्यमञ्जूषां चिनु उत्तरं च देहि';

  @override
  String get gameUiMemoryMatch => 'स्मृतिमेलनम्';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps युग्मानि मेलय';

  @override
  String get gameUiWordGuess => 'शब्दानुमानम्';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'स्तरेषु DevOps शब्दान् अनुमिनु';

  @override
  String get gameUiFindWords => 'शब्दान् अन्विष्य';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'जालके निगूढान् DevOps शब्दान् अन्विष्य';

  @override
  String get gameUiSpotTheDifference => 'भेदं लक्षय';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'द्वयोः चित्रितदृश्ययोः मध्ये पञ्च परिवर्तनानि अन्विष्य';

  @override
  String get gameUiJigsawPuzzle => 'खण्डचित्रपहेली';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'साझा HD पशुप्रकृतिचित्राणि पुनर्निर्मिणु';

  @override
  String get gameUiHighOrLow => 'उच्चं वा न्यूनं वा';

  @override
  String get gameUiBuildAStreak => 'अविच्छिन्नक्रमं निर्मिणु';

  @override
  String get gameUiTrueOrFalseBlitz => 'सत्यं वा असत्यं वा त्वरितक्रीडा';

  @override
  String get gameUiQuickAnswerQuiz => 'शीघ्रोत्तरप्रश्नोत्तरी';

  @override
  String get gameUiCommandMatch => 'आदेशमेलनम्';

  @override
  String get gameUiMatchCommandsToMeanings => 'आदेशान् अर्थैः सह मेलय';

  @override
  String get gameUiPortMaster => 'पोर्ट्निपुणः';

  @override
  String get gameUiGuessDefaultPorts => 'पूर्वनिर्धारितपोर्ट्स् अनुमिनु';

  @override
  String get gameUiTicTacToe => 'टिक्-टैक्-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X शून्यानि क्रॉसानि च सङ्गणकः';

  @override
  String get gameUiConnectFour => 'चतुर्संयोजनम्';

  @override
  String get gameUiDropFourDiscs => 'चतस्रः चक्रिकाः पातय';

  @override
  String get gameUiLudo => 'लूडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट्स्विरुद्धं धाव';

  @override
  String get gameUiChess => 'चतुरङ्गम्';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'चतुरङ्गफलकं वैधचालाः द्वौ क्रीडकौ';

  @override
  String get gameUiSnakeAndLadders => 'सर्पसोपानम्';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'पाशकफलकं सर्पाः सोपानानि द्वौ क्रीडकौ';

  @override
  String get gameUiGames => 'क्रीडाः 🎮';

  @override
  String get gameUiPlayEarn => 'क्रीड अर्जय च';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'क्रीडाः क्रीड अधिकाङ्कान् च अर्जय!';

  @override
  String get gameUiSearchGames => 'क्रीडाः अन्विष्य';

  @override
  String get gameUiClearSearch => 'अन्वेषणं मार्जय';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" इत्यनेन सह काऽपि क्रीडा न मिलति';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'भ्रामय अधिकाङ्कान् च जय।';

  @override
  String get gameUiScratchToRevealYourReward => 'स्वपुरस्कारं प्रकटयितुं खरोष्टय।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स् भ्रामय अङ्कान् च जय।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'रहस्यमञ्जूषां चिनु अङ्कान् जेतुं च सम्यक् उत्तरं देहि।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'अङ्कान् अर्जितुं DevOps युग्मानि मेलय।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 प्रयासेषु DevOps शब्दम् अनुमिनु।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'जालके निगूढान् DevOps शब्दान् अन्विष्य।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 स्तरेषु DevOps शब्दान् अन्वेष्टुं स्वाइप् कुरु।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'द्वयोः चित्रितदृश्ययोः मध्ये पञ्च परिवर्तनानि अन्विष्य।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'साझा HD पशुप्रकृतिचित्राणि पुनर्निर्मिणु।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'अविच्छिन्नक्रमं निर्मिणु स्वाङ्कान् च सुरक्षितान् कुरु।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'शीघ्रोत्तरैः कालं पराजय।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'सत्यं वा असत्यं वा त्वरितक्रीडा 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'आदेशान् तेषां कार्यैः सह मेलय।';

  @override
  String get gameUiCommandMatch670a76e => 'आदेशमेलनम् 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जीवनैः सह पूर्वनिर्धारितपोर्ट्स् अनुमिनु।';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट्निपुणः 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'सङ्गणकविरुद्धं O/X क्रीड।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जेतुं चतस्रः चक्रिकाः पङ्क्तौ पातय।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'स्वमोहरान् त्रिभिः बॉट्स्विरुद्धं धावय।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'वैधचालैः सह स्थानीयं द्विक्रीडकचतुरङ्गम्।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'वैधं द्विक्रीडकचतुरङ्गस्पर्धां क्रीड।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'द्विक्रीडकपाशकफलकक्रीडा।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 पर्यन्तं धाव। सोपानानि आरोह सर्पान् च परिहर।';

  @override
  String get gameUiPlay => 'क्रीड';

  @override
  String get gameUiWheelStopped => 'चक्रं स्थगितम्!';

  @override
  String get gameUiYourRewardIs => 'तव पुरस्कारः अस्ति';

  @override
  String get gameUiPOINTS => 'अङ्काः';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'इमं पुरस्कारं प्राप्तुं 1 प्रश्नोत्तरीप्रश्नस्य सम्यक् उत्तरं देहि।';

  @override
  String get gameUiWrongAnswerRewardLost => 'असम्यक् उत्तरम् = पुरस्कारः नष्टः।';

  @override
  String get gameUiAnswerQuestion => 'प्रश्नस्य उत्तरं देहि';

  @override
  String get gameUiSpinWheele449982 => '🎡 चक्रं भ्रामय';

  @override
  String get gameUiDailySpin => 'दैनिकभ्रामणम्';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'चक्रं भ्रामय, ततः स्वपुरस्कारं प्राप्तुं प्रश्नस्य उत्तरं देहि!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'त्वया अद्यतनं भ्रामणं पूर्वमेव उपयुक्तम्।';

  @override
  String get gameUiSpinning => 'भ्राम्यति...';

  @override
  String get gameUiSPINNOW => 'अधुना भ्रामय';

  @override
  String get gameUiCOMEBACKTOMORROW => 'श्वः पुनः आगच्छ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'अद्यतनः पुरस्कारः: ⭐ $value1 अङ्काः';
  }

  @override
  String get gameUiBackToGames => 'क्रीडासु प्रतिगच्छ';

  @override
  String get gameUiSPIN => 'भ्रामय';

  @override
  String get gameUiRewardRevealed => 'पुरस्कारः प्रकटितः!';

  @override
  String get gameUiYouFound => 'त्वया प्राप्तम्';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ खरोष्टपत्रम्';

  @override
  String get gameUiDailyScratch => 'दैनिकखरोष्टनम्';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'अद्यतनं पुरस्कारं प्रकटयितुं पत्रं खरोष्टय!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'त्वया अद्यतनं खरोष्टपत्रं पूर्वमेव उपयुक्तम्।';

  @override
  String get gameUiAlreadyScratched => 'पूर्वमेव खरोष्टितम्';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'अन्यपुरस्कारार्थं श्वः पुनः आगच्छ।';

  @override
  String get gameUiYouRevealed => 'त्वया प्रकटितम्';

  @override
  String get gameUiSCRATCHHERE => 'अत्र खरोष्टय  👆';

  @override
  String get gameUiJACKPOT777 => 'महालाभः 777!';

  @override
  String get gameUiLucky777 => 'भाग्यशाली 777!';

  @override
  String get gameUiYourReward => 'तव पुरस्कारः';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 भाग्यस्लॉट्स्';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स् भ्रामय, ततः पुरस्कारं प्राप्तुं प्रश्नस्य उत्तरं देहि!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'त्वया अद्य पूर्वमेव क्रीडितम्।';

  @override
  String get gameUiSPINNING => 'भ्राम्यति...';

  @override
  String get gameUiROLLNOW => 'अधुना क्षिपत';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जैकपॉट! 777 अङ्काः उपलब्धाः!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'रहस्यसौदस्य स्थितिं परीक्षितुं न शक्यते: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'मञ्जूषा $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 अङ्काः';
  }

  @override
  String get gameUiStartQuestion => 'प्रश्नम् आरभस्व';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 रहस्यसौदः';

  @override
  String get gameUiMysteryDealCompleted => 'रहस्यसौदः सम्पन्नः!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'त्वं अद्य रहस्यसौदं पूर्वमेव अखेलः।';

  @override
  String get gameUiTodayYouWon => 'अद्य त्वया जितम्';

  @override
  String get gameUiTodaySReward => 'अद्यतनं पारितोषिकम्';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 अङ्काः';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 अङ्काः नष्टाः';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'अन्यस्याः रहस्यमञ्जूषायाः कृते श्वः पुनः आगच्छ!';

  @override
  String get gameUiChooseYourMysteryBox => 'स्वां रहस्यमञ्जूषां चिनुहि';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'प्रत्येकस्यां मञ्जूषायां 10 तः 1000 अङ्कानां मध्ये गुप्तं पारितोषिकम् अस्ति।';

  @override
  String get gameUiPickOnlyOneBox => 'केवलम् एकां मञ्जूषां चिनुहि!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सर्वे $value1 स्तराः सम्पन्नाः!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'स्तरः $value1 सम्पन्नः!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालनैः सम्पन्नम्।\nत्वया $value2 अङ्काः अर्जिताः!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालनैः सम्पन्नम्।\nअयं स्तरः पूर्वमेव उत्तीर्णः आसीत्।';
  }

  @override
  String get gameUiNextLevel => 'अग्रिमः स्तरः';

  @override
  String get gameUiDone => 'समाप्तम्';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'स्मृतिमेलनम् 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सर्वे 100 स्तराः सम्पन्नाः!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'त्वया प्रत्येकः स्मृतिमेलनस्तरः सम्पन्नः। सुष्ठु क्रीडितम्!';

  @override
  String get gameUiChooseLevel => 'स्तरं चिनुहि';

  @override
  String gameUiMoves(String value1) {
    return 'चालनानि: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'स्तरः $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 युग्मानि';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'स्तरं $value1 स्मर';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 समानानि युग्मानि अन्विष्यताम्';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz चिह्नम्';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'अध्यायः 1 · निर्माणपाइपलाइनं पुनःस्थापय';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'अध्यायः 2 · क्लाउडमञ्चस्य विस्तारं कुरु';

  @override
  String get gameUiChapter3ProtectProduction => 'अध्यायः 3 · उत्पादनं रक्ष';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'समर्पयितुं सर्वान् अवशिष्टान् $value1 अक्षरान् उपयुङ्क्ष्व।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सर्वे स्तराः सम्पन्नाः!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'स्तरः $value1 सम्पन्नः!';
  }

  @override
  String get gameUiTryAgain => 'पुनः प्रयतस्व';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्दः $value1 आसीत्। त्वया $value2 अङ्काः अर्जिताः।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्दः $value1 आसीत्। $value3 सङ्केतानन्तरं त्वया $value2 अङ्काः अर्जिताः।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्दः $value1 आसीत्। $value3 सङ्केतानन्तरं त्वया $value2 अङ्काः अर्जिताः।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्दः $value1 आसीत्। स्तरः $value2 अद्यापि त्वां प्रतीक्षते।';
  }

  @override
  String get gameUiFinish => 'समापय';

  @override
  String get gameUiNextLevel254fd73 => 'अग्रिमः स्तरः';

  @override
  String get gameUiRetryLevel => 'स्तरं पुनः प्रयतस्व';

  @override
  String get gameUiHowToPlay => 'कथं क्रीडनीयम्';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'प्रत्येकस्मिन् स्तरे एकः DevOps शब्दः अस्ति। पञ्चाक्षरेभ्यः न्यूनाः शब्दाः निःशुल्काक्षरैः विना आरभन्ते; दीर्घाः शब्दाः एकेन अक्षरेण सह आरभन्ते। उत्तरं रचयितुम् अक्षरफलकं प्रयुङ्क्ष्व, ततः Enter नुद। सङ्केताः अपरम् अक्षरं प्रकटयन्ति, तेषां मूल्यं तव शेषात् 20 अङ्काः। प्रत्येकः सम्पन्नः स्तरः 100 अङ्कान् अर्जयति।';

  @override
  String get gameUiGotIt => 'अवगतम्';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सर्वे $value1 स्तराः सम्पन्नाः!';
  }

  @override
  String get gameUiEasy => 'सरलम्';

  @override
  String get gameUiMedium => 'मध्यमम्';

  @override
  String get gameUiHard => 'कठिनम्';

  @override
  String get gameUiHowToPlay13a6b22 => 'कथं क्रीडनीयम्';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'स्तरः $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'पारितोषिकम् $value1 अङ्काः · उपयुक्ताः सङ्केताः $value2';
  }

  @override
  String get gameUiHint20Pts => 'सङ्केतः · −20 अङ्काः';

  @override
  String get gameUiEnter => 'प्रविश';

  @override
  String get gameUiDelete => 'लोपय';

  @override
  String get gameUiDragThroughAWord => 'शब्दस्य उपरि कर्ष';

  @override
  String get gameUiDragThroughEachWord => 'प्रत्येकस्य शब्दस्य उपरि कर्ष';

  @override
  String get gameUiReleaseToSelect => 'चेतुं मुञ्च';

  @override
  String gameUiFound(String value1) {
    return 'प्राप्तम् $value1';
  }

  @override
  String get gameUiNoWordThere => 'तत्र शब्दः नास्ति';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 पूर्वमेव प्राप्तम्';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 अन्विष्यताम्';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सर्वे स्तराः सम्पन्नाः!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'त्वया सर्वे शब्दाः प्राप्ताः, $value1 अङ्काः च अर्जिताः।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'त्वया सर्वे शब्दाः प्राप्ताः। अयं स्तरः पूर्वमेव उत्तीर्णः आसीत्।';

  @override
  String get gameUiAll500LevelsComplete => 'सर्वे 500 स्तराः सम्पन्नाः!';

  @override
  String get gameUiReviewLevels => 'स्तरान् पुनरवलोकय';

  @override
  String gameUiLeft(String value1) {
    return '$value1 अवशिष्टाः';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 अङ्काः';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगतिः रक्षितुं न शक्ता। कृपया पुनः प्रयतस्व।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'त्वया $value1 अङ्काः अर्जिताः!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'त्वया इदं चित्रं पूर्वमेव सम्पूरितम्। पुनःक्रीडायाम् अतिरिक्ताः अङ्काः न सन्ति।';

  @override
  String get gameUiYouCompletedEveryPicture => 'त्वया सर्वाणि चित्राणि सम्पूरितानि!';

  @override
  String get gameUiLevels => 'स्तराः';

  @override
  String get gameUiPictureB => 'चित्रम् B';

  @override
  String get gameUiPictureA => 'चित्रम् A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'चित्रं भारयितुं न शक्तम्। पुनः प्रयतस्व';

  @override
  String get gameUiResetZoom => 'ज़ूमं पुनःस्थापय';

  @override
  String get gameUiZoomBothPictures => 'उभे चित्रे ज़ूम कुरु';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'सङ्केतः · प्रतिसङ्केतं $value1 अङ्काः';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगतिं भारयितुं न शक्तम्। पुनः प्रयतस्व';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'स्तरः $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सर्वे भेदाः प्राप्ताः!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count भेदान् अन्विष। कस्मिंश्चित् अपि चित्रे प्रत्येकं स्पृश।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'अपचाराः: $value1  ·  सङ्केताः: $value2 (−$value3 अङ्काः)  ·  $value4 स्तराः सम्पन्नाः';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'अग्रिमः स्तरः: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'प्रहेलिका $value1 सम्पन्ना!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'चित्रं $value1 चालनैः सम्पन्नम्। त्वया $value2 अङ्काः अर्जिताः।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'चित्रं $value1 चालनैः सम्पन्नम्।';
  }

  @override
  String get gameUiNextPuzzle => 'अग्रिमा प्रहेलिका';

  @override
  String get gameUiAllPuzzlesComplete => 'सर्वाः प्रहेलिकाः सम्पन्नाः';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'प्रहेलिकाखण्डः $value1 / $value2, सम्यक् स्थापितः';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'प्रहेलिकाखण्डः $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'प्रहेलिकां चिनुहि';

  @override
  String get gameUiShufflePieces => 'खण्डान् मिश्रय';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'पहेलीचित्रं भारयितुं न शक्यते।';

  @override
  String get gameUiPreviousPuzzle => 'पूर्वा पहेली';

  @override
  String gameUiPuzzle(String value1) {
    return 'पहेली $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चालनानि';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'खण्डान् विनिमयार्थं कर्षत, अथवा द्वौ खण्डौ स्पृशत।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 पहेलिकाः समाधिताः  ·  प्रत्येकं $value3 अङ्काः';
  }

  @override
  String get gameUiGameOver => 'क्रीडा समाप्ता';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'सङ्ख्या $value1 आसीत्।\nशृङ्खला: $value2\nत्वया $value3 अङ्काः अर्जिताः!\n\nपुनः अवसराय श्वः आगच्छ!';
  }

  @override
  String get gameUiHigherOrLower => 'अधिका वा न्यूना 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'अद्य पूर्वमेव क्रीडितम्!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'त्वं $value1/$value2/$value3 दिनाङ्के अक्रीडः।\n\nनूतनां शृङ्खलां निर्मातुं श्वः आगच्छ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'त्वया अद्य पूर्वमेव क्रीडितम्।\n\nपुनः अवसराय श्वः आगच्छ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 शृङ्खला: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ अङ्काः: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'अग्रिमा सङ्ख्या अधिका भविष्यति वा न्यूना?';

  @override
  String get gameUiLower => 'न्यूना';

  @override
  String get gameUiHigher => 'अधिका';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'सत्यम् असत्यं वा द्रुतक्रीडा ⚡';

  @override
  String get gameUiTimeSUp => 'समयः समाप्तः!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'समीचीनानि उत्तराणि: $value1\nश्रेष्ठा शृङ्खला: $value2\n$value3त्वया $value4 अङ्काः अर्जिताः!\n\nअन्यस्मै चक्राय श्वः आगच्छ!';
  }

  @override
  String get gameUiStreakBonus20 => 'शृङ्खलापुरस्कारः: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'प्रदर्शितम् उत्तरं सत्यम् असत्यं वा?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 वर्गेषु $value1 प्रश्नाः';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'तव $value1 क्षणाः सन्ति। प्रत्येकं समीचीनम् उत्तरं $value2 अङ्कान् ददाति। असमीचीनम् उत्तरं $value3 क्षणान् हरति। 5 शृङ्खलां प्राप्य +20 पुरस्कारं प्राप्नुहि।';
  }

  @override
  String get gameUiRoundTimer => 'चक्रसमयमापकः';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 क्षणाः';
  }

  @override
  String get gameUiStart => 'आरभस्व';

  @override
  String get gameUiTrue => 'सत्यम्';

  @override
  String get gameUiFalse => 'असत्यम्';

  @override
  String get gameUiCommandMatch26b0e70 => 'आदेशमेलनम् 🔗';

  @override
  String get gameUiAllMatched => 'सर्वं मेलितम्!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'त्रुटयः: $value1\nत्वया $value2 अङ्काः अर्जिताः!\n\nनूतनादेशार्थं श्वः आगच्छ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'चक्रम् $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'आदेशं स्पृश, ततः तस्य अर्थं स्पृश।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'अधुना संवादिनम् अर्थं स्पृश।';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्टस्वामी 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्टस्वामी!';

  @override
  String get gameUiOutOfLives => 'जीवनानि समाप्तानि';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'समीचीनानि उत्तराणि: $value1\nत्वया $value2 अङ्काः अर्जिताः!\n\nअन्यस्मै चक्राय श्वः आगच्छ!';
  }

  @override
  String get gameUiYouEarned10Points => 'त्वया 10 अङ्काः अर्जिताः!';

  @override
  String get gameUiYouWin => 'त्वं जितवान्!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जयति!';
  }

  @override
  String get gameUiXWins => 'X जयति!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जयति!';
  }

  @override
  String get gameUiComputerWins => 'सङ्गणकः जयति';

  @override
  String get gameUiOWins => 'O जयति!';

  @override
  String get gameUiPlayer2OWins => 'क्रीडकः 2 (O) जयति!';

  @override
  String get gameUiItSADraw => 'समं जातम्';

  @override
  String get gameUiYourTurn => 'तव वारः';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 इत्यस्य वारः';
  }

  @override
  String get gameUiComputerIsThinking => 'सङ्गणकः चिन्तयति';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'क्रीडकः $value1 चालयतु';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 चालयतु';
  }

  @override
  String get gameUiPlayer2ToMove => 'क्रीडकः 2 चालयतु';

  @override
  String get gameUiNewRound => 'नूतनं चक्रम्';

  @override
  String get gameUiVsComputer => 'सङ्गणकविरुद्धम्';

  @override
  String get gameUi2Players => '2 क्रीडकाः';

  @override
  String get gameUiYou => 'त्वम्';

  @override
  String get gameUiDraws => 'समानि';

  @override
  String get gameUiPlayer2 => 'क्रीडकः 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'कोष्ठम् $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'पुनः क्रीडतु';

  @override
  String get gameUiConnectFourWin20Points => 'Connect Four जयः: 20 अङ्काः!';

  @override
  String get gameUiBotWins => 'बोट् जयति!';

  @override
  String get gameUiRed => 'रक्तः';

  @override
  String get gameUiYellow => 'पीतः';

  @override
  String get gameUiBoardFullDraw => 'फलकं पूर्णम् — समम्';

  @override
  String get gameUiBotIsThinking => 'बोट् चिन्तयति';

  @override
  String get gameUiBotTurn => 'बोट् इत्यस्य वारः';

  @override
  String get gameUiNewGame => 'नूतना क्रीडा';

  @override
  String get gameUiVsBot => 'बोट्विरुद्धम्';

  @override
  String get gameUi2Player => '2 क्रीडकौ';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बोट्विरुद्धं क्रीडतु · चक्रिकां पातयितुं स्तम्भं स्पृशतु';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'द्वौ क्रीडकौ · चक्रिकां पातयितुं स्तम्भं स्पृशतम्';

  @override
  String gameUiColumn(String value1) {
    return 'स्तम्भः $value1';
  }

  @override
  String get gameUiYouRed => 'त्वम् · रक्तः';

  @override
  String get gameUiRedPlayer1 => 'रक्तः · क्रीडकः 1';

  @override
  String get gameUiBotYellow => 'बोट् · पीतः';

  @override
  String get gameUiYellowPlayer2 => 'पीतः · क्रीडकः 2';

  @override
  String get gameUiLudoMatchStats => 'Ludo स्पर्धासाङ्ख्यिकी';

  @override
  String get gameUiNoCompletedMatchesYet => 'अद्यावधि काचित् स्पर्धा न समाप्ता।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'क्रीडिताः $value1  ·  जिताः $value2  ·  पराजिताः $value3';
  }

  @override
  String get gameUiClose => 'पिधेहि';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Ludo विजेता! त्वया 50 अङ्काः अर्जिताः।';

  @override
  String get gameUiNewLudoGame => 'नूतना Ludo क्रीडा';

  @override
  String get gameUiBotOpponents => 'बोट्प्रतिद्वन्द्विनः';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नूतनां स्पर्धाम् आरभ्य तव सुरक्षिता क्रीडा प्रतिस्थाप्यते।';

  @override
  String get gameUiCancel => 'निरस्यताम्';

  @override
  String get gameUiStartGame => 'क्रीडाम् आरभस्व';

  @override
  String get gameUiPlayerColours => 'क्रीडकवर्णाः';

  @override
  String get gameUiApply => 'प्रयुङ्क्ष्व';

  @override
  String get gameUiMatchStats => 'स्पर्धासाङ्ख्यिकी';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 मातेन जयति';
  }

  @override
  String get gameUiBlack => 'कृष्णः';

  @override
  String get gameUiWhite => 'श्वेतः';

  @override
  String get gameUiComputerWinsByCheckmate => 'सङ्गणकः मातेन जयति';

  @override
  String get gameUiYouWinByCheckmate => 'त्वं मातेन जयसि';

  @override
  String get gameUiDrawByStalemate => 'गतिरोधेन समम्';

  @override
  String get gameUiDraw => 'समम्';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · शाहः';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'शहमात! भवता 50 अङ्काः अर्जिताः।';

  @override
  String get gameUiStartANewGame => 'नूतनं क्रीडां प्रारभेत?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'क्रीडकप्रकारपरिवर्तनेन सुरक्षिता स्पर्धा प्रतिस्थाप्यते।';

  @override
  String get gameUiComputer => 'सङ्गणकः';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · श्वेतः / क्रीडकः 2 · कृष्णः';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'भवान् श्वेतः · सङ्गणकः कृष्णः';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (श्वेतः) · सङ्गणकः (कृष्णः)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'भवान् कृष्णः · सङ्गणकः श्वेतः';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (कृष्णः) · सङ्गणकः (श्वेतः)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 प्रथमं क्षिपति';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 पुनः क्षिपति';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 क्षेप्तुम्';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सर्पसोपानक्रीडायां विजयः: 100 अङ्काः!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'क्रीडकपरिवर्तनेन सुरक्षिता क्रीडा प्रतिस्थाप्यते।';

  @override
  String get gameUiStartANewLevel => 'नूतनं स्तरं प्रारभेत?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'स्तरपरिवर्तनेन सुरक्षिता क्रीडा प्रतिस्थाप्यते।';

  @override
  String get gameUiChangeLevel => 'स्तरं परिवर्तयतु';

  @override
  String get gameUiPlayers => 'क्रीडकाः';

  @override
  String get gameUiPlayAgainstBot => 'बोट्विरुद्धं क्रीडतु';

  @override
  String get gameUi3Players => '3 क्रीडकाः';

  @override
  String get gameUi4Players => '4 क्रीडकाः';

  @override
  String get gameUiLevel1709305 => 'स्तरः';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'स्तरः $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 क्रीडकाः · स्तरः $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · क्षेपः';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 उपरि $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रश्नं भारयितुं न शक्यते: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'सम्यक् उत्तरम्!';

  @override
  String get gameUiWrongAnswer => 'असम्यक् उत्तरम्';

  @override
  String get gameUiYouClaimedYourReward => 'भवता स्वपुरस्कारः गृहीतः!';

  @override
  String get gameUiAddedToYourTotalPoints => 'भवतः कुल-अङ्केषु योजितम्।';

  @override
  String get gameUiTheCorrectAnswerWas => 'सम्यक् उत्तरम् आसीत्:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 अङ्कपुरस्कारः नष्टः।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'भवतः विद्यमानाः अङ्काः न न्यूनीकृताः।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'श्वः पुनः आगत्य प्रयत्नं करोतु।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रश्नं भारयितुं न शक्यते।';

  @override
  String get gameUiYourReward677fa6e => 'भवतः पुरस्कारः';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 अङ्काः';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'तं प्राप्तुं सम्यक् उत्तरं ददातु!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'अन्यस्य चक्रस्य कृते श्वः आगच्छतु।';

  @override
  String get gameUiGreen => 'हरितः';

  @override
  String get gameUiBlue => 'नीलः';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 चिन्तयति';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: एकं मोहरं चिनोतु';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: पाशकं क्षिपतु';
  }

  @override
  String gameUiDice(String value1) {
    return 'पाशकः $value1';
  }

  @override
  String get gameUiRollDice => 'पाशकं क्षिपतु';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 मोहरः $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'क्रीडकः $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'यन्त्रक्रीडकः $value1';
  }

  @override
  String get gameUiBot => 'यन्त्रक्रीडकः';

  @override
  String get gameUiHintInsufficientPoints => 'सङ्केतस्य उपयोगाय भवतः 20 अङ्काः आवश्यकाः।';

  @override
  String get gameUiHintPurchaseFailed => 'सङ्केतः क्रेतुं न शक्तः। कृपया पुनः प्रयतस्व।';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'राज्ञी';

  @override
  String get gameUiChessRook => 'गजः';

  @override
  String get gameUiChessBishop => 'उष्ट्रः';

  @override
  String get gameUiChessKnight => 'अश्वः';

  @override
  String get gameUiChessPawn => 'पदातिः';

  @override
  String get gameUiChessEmpty => 'रिक्तम्';

  @override
  String get gameSceneLampAndFlowers => 'दीपः पुष्पाणि च';

  @override
  String get gameSceneGardenFriends => 'उद्यानमित्राणि';

  @override
  String get gameSceneUnderwaterExplorers => 'जलान्तरन्वेषकाः';

  @override
  String get gameSceneOceanOrca => 'सागरस्य ओर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'शाद्वले शृगालः';

  @override
  String get gameSceneYellowSubmarine => 'पीता जलमग्ननौका';

  @override
  String get gameSceneTurkeyInTheClearing => 'वनविरले स्थले टर्कीपक्षी';

  @override
  String get gameSceneSafariWateringHole => 'सफारीजलपानस्थलम्';

  @override
  String get gameSceneJungleCompanions => 'वनसहचराः';

  @override
  String get gameSceneGoldenPuppyGarden => 'सुवर्णश्वशावकस्य उद्यानम्';

  @override
  String get gameSceneSeaTurtleReef => 'समुद्रकूर्मस्य प्रवालभित्तिः';

  @override
  String get gameSceneCoralReefFriends => 'प्रवालभित्तिमित्राणि';

  @override
  String get gameSceneSharedClownfish => 'सहभागी क्लाउनमत्स्यः';

  @override
  String get gameSceneLittleDinosaur => 'लघुः डायनासोरः';

  @override
  String get gameSceneSafariCompanions => 'सफारीसहचराः';

  @override
  String get gameSceneSwirlingFlowers => 'आवर्तमानानि पुष्पाणि';

  @override
  String get gameSceneGardenKitten => 'उद्यानमार्जारशावकः';

  @override
  String get gameSceneBlueOcean => 'नीलः सागरः';

  @override
  String get gameSceneCastlePrincess => 'दुर्गस्य राजकुमारी';

  @override
  String get gameSceneRedCar => 'रक्ता कारयानम्';

  @override
  String get gameSceneGardenPuppy => 'उद्यानश्वशावकः';

  @override
  String get gameSceneSpaceExplorer => 'अन्तरिक्षान्वेषकः';

  @override
  String get gameSceneEnchantedReadingForest => 'मोहितं पठनवनम्';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनन्तचक्रम्';

  @override
  String get gameSceneAnsible => 'Ansible (अन्सिबल्)';

  @override
  String get gameSceneAws => 'AWS (ए डब्ल्यू एस्)';

  @override
  String get gameSceneAzure => 'Azure (अज़ूर्)';

  @override
  String get gameSceneBashScripting => 'Bash लिपिलेखनम्';

  @override
  String get gameSceneDocker => 'Docker (डॉकर्)';

  @override
  String get gameSceneGcp => 'GCP (जी सी पी)';

  @override
  String get gameSceneGit => 'Git (गिट्)';

  @override
  String get gameSceneHybridCloud => 'संकरमेघः';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud (आइ बी एम् क्लाउड्)';

  @override
  String get gameSceneJavascript => 'JavaScript (जावास्क्रिप्ट्)';

  @override
  String get gameSceneJenkins => 'Jenkins (जेनकिन्स्)';

  @override
  String get gameSceneKubernetes => 'Kubernetes (कुबरनेटीस्)';

  @override
  String get gameSceneLinux => 'Linux (लिनक्स्)';

  @override
  String get gameSceneMultiCloud => 'बहुमेघः';

  @override
  String get gameSceneNetworking => 'जालसंयोजनम्';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud (ओरेकल् क्लाउड्)';

  @override
  String get gameScenePerl => 'Perl (पर्ल्)';

  @override
  String get gameScenePowershell => 'PowerShell (पावरशेल्)';

  @override
  String get gameScenePython => 'Python (पायथन्)';

  @override
  String get gameSceneRuby => 'Ruby (रूबी)';

  @override
  String get gameSceneTerraform => 'Terraform (टेराफॉर्म्)';

  @override
  String get gameSceneWinterFestivalFair => 'शिशिरोत्सवमेला';

  @override
  String get gameSceneArmoredHeroCloseUp => 'कवचधारिणो वीरस्य समीपदृश्यम्';

  @override
  String get gameSceneArmoredHeroInCrimson => 'रक्तवर्णे कवचधारी वीरः';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'कृष्णानि प्लुमेरियापुष्पाणि';

  @override
  String get gameSceneMangroveBoardwalk => 'कच्छवृक्षवने काष्ठपथः';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबन्धीयतालवृक्षाणां प्रतिबिम्बानि';

  @override
  String get gameSceneMaskedFigureInShadow => 'छायायां मुखावरणधारी आकारः';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूर्यास्तसमये विद्युन्मयः सहचरः';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षकः अग्निनागः च';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्नखचितं मल्लयुद्धमुखावरणम्';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'रक्ततूलिकारेखासु मल्लः';

  @override
  String get gameSceneWrestlingChampionSalute => 'मल्लयुद्धविजेतुः अभिवादनम्';

  @override
  String get gameSceneMorningAtTheBakery => 'पक्वान्नशालायां प्रातःकालः';

  @override
  String get gameSceneGreenhousePottingBench => 'हरितगृहे रोपणपीठिका';

  @override
  String get gameSceneHarborFishingBoat => 'पत्तने मत्स्यग्राहिनौका';

  @override
  String get gameSceneAtticObservatory => 'अट्टालिकायां वेधशाला';

  @override
  String get gameSceneToyMakerSWorkshop => 'क्रीडनकनिर्मातुः कार्यशाला';

  @override
  String get gameSceneWoodlandCampsite => 'वनप्रदेशे शिबिरस्थलम्';

  @override
  String get gameSceneAfternoonMusicRoom => 'मध्याह्नोत्तरं सङ्गीतकक्षः';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुद्रतटे हिमक्रीमविक्रयस्थानम्';

  @override
  String get gameSceneLibraryReadingNook => 'ग्रन्थालये पठनकोणः';

  @override
  String get gameSceneSewingStudio => 'सीवनशाला';

  @override
  String get gameSceneFruitMarket => 'फलापणः';

  @override
  String get gameSceneKoiCourtyard => 'कोईमत्स्ययुक्तं प्राङ्गणम्';

  @override
  String get gameSceneArtistSAtelier => 'कलाकारस्य चित्रशाला';

  @override
  String get gameSceneMountainRailway => 'पर्वतीया रेलमार्गः';

  @override
  String get gameSceneCountryKitchen => 'ग्राम्यपाकशाला';

  @override
  String get gameScenePotteryWorkshop => 'मृद्भाण्डकार्यशाला';

  @override
  String get gameSceneBeachPicnic => 'समुद्रतटे वनभोजनम्';

  @override
  String get gameSceneFlowerShop => 'पुष्पापणः';

  @override
  String get gameSceneClockmakerSWorkshop => 'घटीनिर्मातुः कार्यशाला';

  @override
  String get gameSceneRainyCafeTerrace => 'वर्षायुक्ता कैफेप्राङ्गणवेदिका';

  @override
  String get gameSceneCastleHerbGarden => 'दुर्गस्य औषधिवाटिका';

  @override
  String get gameSceneClassroomArtCorner => 'कक्षायां कलाकोणः';

  @override
  String get gameSceneAquariumShop => 'मत्स्यालयापणः';

  @override
  String get gameSceneAutumnLeafCollection => 'शरत्पर्णसङ्ग्रहः';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चन्द्रस्य अधः एकाकी वृक्षः';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'शाखायां शरत्पुष्पम्';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हरितपर्णेषु शृगालः';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कुमुदाच्छादिते सरोवरे डोङ्गा';

  @override
  String get gameSceneDewDropsOnALeaf => 'पर्णे हिमबिन्दवः';

  @override
  String get gameSceneStagInATurquoiseLake => 'फिरोजवर्णे सरोवरे मृगः';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'नारङ्गवर्णस्य चन्द्रस्य अधः द्विचक्रिका';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'उपत्यकायाः उपरि श्वेतव्याघ्रः';

  @override
  String get gameSceneTwoTreesInBlueWater => 'नीलजले द्वौ वृक्षौ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'निष्ठावतः श्वनः समीपे मत्स्यग्रहणम्';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'पर्वतसरसः समीपे कुमुदानि';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबीनदीतटे मृगः';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूर्यास्तसमये उष्णकटिबन्धीया कुटीरी';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'आल्प्सोपत्यकां पश्यन् शृगालः';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मोहितवनमध्येन सूर्यास्तः';

  @override
  String get learningControlTitle => 'DevOps पठतु';

  @override
  String get learningControlAllCategories => 'सर्वाः श्रेण्यः';

  @override
  String get learningControlSearchCards => 'पत्राणि अन्विष्यताम्';

  @override
  String get learningControlClearSearch => 'अन्वेषणं मार्जयतु';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सर्वाणि पत्राणि दर्शयतु';

  @override
  String learningControlShowSaved(int count) {
    return 'सङ्गृहीतानि पत्राणि दर्शयतु ($count)';
  }

  @override
  String get learningControlShuffleOff => 'मिश्रणं निरुणद्धु';

  @override
  String get learningControlShuffleOn => 'पत्राणि मिश्रयतु';

  @override
  String get learningControlAutoOff => 'स्वयंपरिवर्तनं निरुणद्धु';

  @override
  String get learningControlAutoOn => 'प्रत्येकं दशसेकण्डेषु स्वयंपरिवर्तनम्';

  @override
  String get learningControlNoSaved => 'अद्यापि किमपि पत्रं सङ्गृहीतं नास्ति';

  @override
  String get learningControlNoMatches => 'अनुरूपं पत्रं नास्ति';

  @override
  String get learningControlResetFilters => 'छन्नकानि पुनःस्थापयतु';

  @override
  String get learningControlPrevious => 'पूर्वम्';

  @override
  String get learningControlNext => 'अग्रिमम्';

  @override
  String get learningControlProgress => 'प्रगतिः';

  @override
  String get learningControlRemoveSaved => 'सङ्गृहीतात् अपनयतु';

  @override
  String get learningControlSaveCard => 'पत्रं सङ्गृह्णातु';

  @override
  String get learningControlExample => 'उदाहरणम्';

  @override
  String get learningControlCopyExample => 'उदाहरणं प्रतिलिपिं करोतु';

  @override
  String get learningControlExampleCopied => 'उदाहरणं प्रतिलिपितम्';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'स्तरः $value1 सम्पूर्णः';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'स्तरं $value1 क्रीडत';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'उद्घाटनार्थं स्तरं $value1 सम्पूर्णं कुरुत';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दैनिकप्रवेशपुरस्कारः';

  @override
  String get sharedDialogThanksForComingBack => 'पुनरागमनाय धन्यवादः!';

  @override
  String get sharedDialogDailyRewardAdded => 'भवतः दैनिकपुरस्कारः भवतः कुलअङ्केषु योजितः अस्ति।';

  @override
  String get sharedDialogAwesome => 'अद्भुतम्!';

  @override
  String get accountWelcomeGuest => 'अतिथिः';

  @override
  String get accountWelcomeGuestUser => 'अतिथि-उपयोक्ता';

  @override
  String get accountWelcomeUser => 'उपयोक्ता';

  @override
  String get accountWelcomePlayingAsGuest => 'अतिथिरूपेण क्रीडति';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google लेखा योजयतु';

  @override
  String get accountWelcomeGoogleConnected => 'Google लेखा सफलतापूर्वकं योजिता! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'प्रवेशः निरस्तः।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'योजने विफलता: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'निर्गच्छतु';

  @override
  String get accountWelcomeSignOutTitle => 'निर्गन्तुम् इच्छति वा?';

  @override
  String get accountWelcomeSignOutMessage => 'किं भवान् निश्चयेन निर्गन्तुम् इच्छति? रक्षितं प्रगतिं प्राप्तुं पुनः प्रवेशः करणीयः भविष्यति।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'निर्गमनं विफलम्: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ अनुप्रयोग-दत्तांशं पुनःस्थापयतु?';

  @override
  String get accountWelcomeResetAppMessage => 'अनेन भवतः सर्वे अङ्काः, परम्पराः, क्रीडा-इतिहासः, विन्यासाः च स्थायिरूपेण नष्टाः भविष्यन्ति। भवान् निर्गत्य प्रारम्भपटलं प्रति प्रत्यागमिष्यति। एतत् परिवर्तयितुं न शक्यते।';

  @override
  String get accountWelcomeResetEverything => 'सर्वं पुनःस्थापयतु';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'पुनःस्थापनं विफलम्: $value1';
  }

  @override
  String get accountWelcomeCancel => 'निरस्यताम्';

  @override
  String get accountWelcomeResetAppData => 'अनुप्रयोग-दत्तांशं पुनःस्थापयतु';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सर्वान् अङ्कान्, परम्पराः, विन्यासान् च अपनयतु';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz अनुप्रयोगः';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अनुवादः अद्यापि उपलब्धः नास्ति';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google माध्यमेन अनुवर्तताम्';

  @override
  String get accountWelcomeSigningIn => 'प्रवेशः प्रचलति...';

  @override
  String get accountWelcomeOr => 'अथवा';

  @override
  String get accountWelcomeContinueAsGuest => 'अतिथिरूपेण अनुवर्तताम्';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'भवान् पश्चात् स्वपरिचयात् प्रवेष्टुं शक्नोति।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'भवान् अतिथिरूपेण आरभ्य पश्चात् प्रवेष्टुं शक्नोति।';

  @override
  String get accountWelcomeGreetingGuest => 'स्वागतम्';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'स्वागतम्, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google प्रवेशः सम्पूर्णः, परं कोऽपि उपयोक्तृलेखा न प्राप्तः।';

  @override
  String get accountWelcomeErrorEmailExists => 'अस्य अणुडाकस्य अन्यप्रवेशरीत्या पूर्वमेव लेखा अस्ति।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'एषा Google लेखा पूर्वमेव अन्यलेखया सह सम्बद्धा अस्ति।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरणपत्रम् अमान्यं कालबाह्यं वा अस्ति।';

  @override
  String get accountWelcomeErrorUserDisabled => 'एषा लेखा निष्क्रियीकृता अस्ति।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google प्रवेशः सम्प्रति सक्रियः नास्ति।';

  @override
  String get accountWelcomeErrorNetwork => 'जालदोषः। कृपया स्वजालसम्पर्कं परीक्ष्य पुनः प्रयतताम्।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'अतिबालाः प्रवेशप्रयासाः। कृपया प्रतीक्ष्य पुनः प्रयतताम्।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'अधिकं दोषविवरणं नास्ति।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google प्रवेशः विफलः।\n\nसङ्केतः: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google प्रवेशदोषः:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'अतिथिरूपेण अनुवर्तितुम् असमर्थः। कृपया पुनः प्रयतताम्।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google प्रवेशः शीघ्रमेव उपलब्धः भविष्यति।';

  @override
  String get accountWelcomeLoginTagline => 'पठतु • अभ्यस्यतु • स्पर्धताम् • अर्जयतु';

  @override
  String get accountWelcomeCountryRegion => 'देशः / क्षेत्रम्';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देशः / क्षेत्रम्: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देशं अन्विष्यताम्';

  @override
  String get accountWelcomeCountryNotSelected => 'अचयनितम्';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'किमर्थं DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ अभ्यासप्रश्नाः';

  @override
  String get accountWelcomeFeatureLanguages => 'बहुभाषा-समर्थनम्';

  @override
  String get accountWelcomeFeatureStreaks => 'परम्पराः अग्रणीसूचयश्च';

  @override
  String get accountWelcomeFeatureGames => 'क्रीडाः आह्वानानि च';

  @override
  String get accountWelcomeFeatureCloud => 'मेघः DevOps च';

  @override
  String get accountWelcomeFeatureRewards => 'लाभाः पुरस्काराश्च';

  @override
  String get accountWelcomePracticeOnTheGo => 'सर्वत्र अभ्यासं करोतु';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android अनुप्रयोगं संस्थाप्य सर्वत्र जालं विना पठतु।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play तः प्राप्नोतु';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिवसीय अविच्छिन्न क्रमः';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिवसीयम् अविच्छिन्नं क्रमं पालयतु।';
  }

  @override
  String get achLocYearStreakTitle => '१ वर्षीयः अविच्छिन्न क्रमः';

  @override
  String get achLocFirstQuizTitle => 'प्रथमा प्रश्नोत्तरी';

  @override
  String get achLocFirstQuizDescription => 'स्वस्य प्रथमां प्रश्नोत्तरीं पूर्णां करोतु।';

  @override
  String get achLocQuiz10Title => 'प्रश्नोत्तरी-अन्वेषकः';

  @override
  String get achLocQuiz10Description => '10 प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocPoints1000Title => '1000 अङ्काः';

  @override
  String get achLocPoints1000Description => 'Quiz मध्ये कुलम् 1000 अङ्कान् अर्जयतु।';

  @override
  String get achLocPerfectScoreTitle => 'सम्पूर्णः अङ्कः';

  @override
  String get achLocPerfectScoreDescription => 'कस्याम् अपि प्रश्नोत्तर्यां 100% अङ्कान् प्राप्नोतु।';

  @override
  String get achLocQuiz25Title => 'प्रश्नोत्तरी-उत्साही';

  @override
  String get achLocQuiz25Description => '25 प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocQuiz50Title => 'प्रश्नोत्तरी-निपुणः';

  @override
  String get achLocQuiz50Description => '50 प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocQuiz100Title => 'शतक-मण्डलम्';

  @override
  String get achLocQuiz100Description => '100 प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocQuiz250Title => 'प्रश्नोत्तरी-दन्तकथा';

  @override
  String get achLocQuiz250Description => '250 प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocPoints5000Title => '5,000 अङ्काः';

  @override
  String get achLocPoints5000Description => 'कुलम् 5,000 अङ्कान् अर्जयतु।';

  @override
  String get achLocPoints10000Title => '10,000 अङ्काः';

  @override
  String get achLocPoints10000Description => 'कुलम् 10,000 अङ्कान् अर्जयतु।';

  @override
  String get achLocPoints50000Title => '50,000 अङ्काः';

  @override
  String get achLocPoints50000Description => 'कुलम् 50,000 अङ्कान् अर्जयतु।';

  @override
  String get achLocPoints100000Title => '100,000 अङ्काः';

  @override
  String get achLocPoints100000Description => 'कुलम् 100,000 अङ्कान् अर्जयतु।';

  @override
  String get achLocDaily1Title => 'दैनिक-प्रारम्भकः';

  @override
  String get achLocDaily1Description => 'स्वां प्रथमां दैनिकीं प्रश्नोत्तरीं पूर्णां करोतु।';

  @override
  String get achLocDaily7Title => 'दैनिक-अभ्यासः';

  @override
  String get achLocDaily7Description => '7 दैनिकीः प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocDaily30Title => 'दैनिक-विजेता';

  @override
  String get achLocDaily30Description => '30 दैनिकीः प्रश्नोत्तरीः पूर्णाः करोतु।';

  @override
  String get achLocSets5Title => 'समूह-प्रारम्भकः';

  @override
  String get achLocSets5Description => '5 प्रश्नोत्तरी-समूहान् समापयतु।';

  @override
  String get achLocSets25Title => 'समूह-संग्राहकः';

  @override
  String get achLocSets25Description => '25 प्रश्नोत्तरी-समूहान् समापयतु।';

  @override
  String get achLocSets50Title => 'समूह-निपुणः';

  @override
  String get achLocSets50Description => '50 प्रश्नोत्तरी-समूहान् समापयतु।';

  @override
  String get achLocSets100Title => 'समूह-दन्तकथा';

  @override
  String get achLocSets100Description => '100 प्रश्नोत्तरी-समूहान् समापयतु।';

  @override
  String get achLocCert1Title => 'प्रथमं प्रमाणपत्रम्';

  @override
  String get achLocCert1Description => 'स्वस्य प्रथमं वर्गप्रमाणपत्रम् अर्जयतु।';

  @override
  String get achLocCert5Title => 'प्रमाणित-विशेषज्ञः';

  @override
  String get achLocCert5Description => '5 वर्गप्रमाणपत्राणि अर्जयतु।';

  @override
  String get achLocCert21Title => 'पूर्णतः प्रमाणितः';

  @override
  String get achLocCert21Description => 'सर्वेषु 21 वर्गेषु प्रमाणपत्रम् अर्जयतु।';

  @override
  String get achLocThemeFreeValentinesWeek => 'प्रतिवर्षं फेब्रुवरी 7-14 निःशुल्कम्';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'प्रतिवर्षं मार्च 8-15 निःशुल्कम्';

  @override
  String get achLocThemeLight => 'प्रकाशः';

  @override
  String get achLocThemeDark => 'तमः';

  @override
  String get achLocThemeSakura => 'सकुरा';

  @override
  String get achLocThemeSunset => 'सूर्यास्तः';

  @override
  String get achLocThemeCoffee => 'कॉफी';

  @override
  String get achLocThemeTea => 'चायम्';

  @override
  String get achLocThemeOcean => 'महासागरः';

  @override
  String get achLocThemeSolarFlare => 'सौरज्वाला';

  @override
  String get achLocThemeForest => 'वनम्';

  @override
  String get achLocThemeAurora => 'ऑरोरा';

  @override
  String get achLocThemeMatrix => 'मैट्रिक्स';

  @override
  String get achLocThemeCyberPurple => 'साइबर पर्पल';

  @override
  String get achLocThemeInferno => 'इन्फर्नो';

  @override
  String get achLocThemeMidnight => 'मिडनाइट';

  @override
  String get achLocThemeDarkGrey => 'गहनधूसर';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'वैलेंटाइन दिवस';

  @override
  String get achLocThemeDqSpecial => 'डीक्यू विशेष';

  @override
  String get achLocThemeArmy => 'सेना';

  @override
  String get achLocThemeSpiderMan => 'स्पाइडर-मैन';

  @override
  String get achLocThemeKrrish => 'कृष';

  @override
  String get achLocThemeIronMan => 'आयरन मैन';

  @override
  String get achLocThemeCaptainAmerica => 'कैप्टन अमेरिका';

  @override
  String get achLocThemeThor => 'थॉर';

  @override
  String get achLocThemeHulk => 'हल्क';

  @override
  String get achLocThemeBlackWidow => 'ब्लैक विडो';

  @override
  String get achLocThemeHawkeye => 'हॉकआई';

  @override
  String get achLocThemeBlackPanther => 'ब्लैक पैंथर';

  @override
  String get achLocThemeScarletWitch => 'स्कार्लेट विच';

  @override
  String get achLocThemeVision => 'विजन';

  @override
  String get achLocThemeAntMan => 'ऐंट-मैन';

  @override
  String get achLocThemeCaptainMarvel => 'कैप्टन मार्वल';

  @override
  String get achLocThemeDoctorStrange => 'डॉक्टर स्ट्रेंज';

  @override
  String get achLocThemeAvengers => 'अवेंजर्स';

  @override
  String get achLocThemeBatman => 'बैटमैन';

  @override
  String get achLocThemeSuperman => 'सुपरमैन';

  @override
  String get achLocThemeWonderWoman => 'वंडर वुमन';

  @override
  String get achLocThemeFlash => 'फ्लैश';

  @override
  String get achLocThemeAquaman => 'एक्वामैन';

  @override
  String get achLocThemeGreenLantern => 'ग्रीन लैंटर्न';

  @override
  String get achLocThemeCyborg => 'साइबॉर्ग';

  @override
  String get achLocThemeSupergirl => 'सुपरगर्ल';

  @override
  String get achLocThemeDc => 'डीसी वीराः';

  @override
  String get achLocThemeRainbow => 'इन्द्रधनुः';

  @override
  String get achLocThemeDiamond => 'हीरकम्';

  @override
  String get achLocThemeLegendary => 'पौराणिक';

  @override
  String get gameHintCmd001LsLa => 'सर्वाणि सञ्चिकानि विवरणैः सह सूचयतु';

  @override
  String get gameHintCmd002Grep => 'प्रतिरूपेण पाठं अन्विषतु';

  @override
  String get gameHintCmd003Chmod => 'सञ्चिकानुमतयः परिवर्तयतु';

  @override
  String get gameHintCmd004DfH => 'रिक्तं डिस्कस्थानं दर्शयतु';

  @override
  String get gameHintCmd005TailF => 'वर्धमानां लेखसञ्चिकाम् अनुसरतु';

  @override
  String get gameHintCmd006PsAux => 'चलत्प्रक्रियाः सूचयतु';

  @override
  String get gameHintCmd007GitClone => 'दूरस्थं भाण्डागारम् अनुकरोतु';

  @override
  String get gameHintCmd008GitStash => 'अनिवेदितान् परिवर्तनान् पृथक् स्थापयतु';

  @override
  String get gameHintCmd009GitRebase => 'नूतनाधारे निवेदनानि पुनः प्रयुनक्तु';

  @override
  String get gameHintCmd010GitBlame => 'प्रतिपङ्क्तिं केन परिवर्तितम् इति दर्शयतु';

  @override
  String get gameHintCmd011DockerPs => 'चलन्तः पात्रान् सूचयतु';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile तः प्रतिबिम्बं निर्मातु';

  @override
  String get gameHintCmd013DockerLogs => 'पात्रस्य निर्गमं दर्शयतु';

  @override
  String get gameHintCmd014DockerExec => 'पात्रस्य अन्तः आदेशं चालयतु';

  @override
  String get gameHintCmd015KubectlGetPods => 'नामस्थाने pods सूचयतु';

  @override
  String get gameHintCmd016KubectlApply => 'सञ्चिकातः संसाधनानि निर्मातु';

  @override
  String get gameHintCmd017KubectlDescribe => 'संसाधनस्य विस्तृतां सूचनां दर्शयतु';

  @override
  String get gameHintCmd018KubectlScale => 'प्रतिकृतीनां सङ्ख्यां परिवर्तयतु';

  @override
  String get gameHintCmd019TerraformInit => 'प्रदातॄन् अवतारयतु स्थापयतु च';

  @override
  String get gameHintCmd020TerraformPlan => 'आधारसंरचनापरिवर्तनानां पूर्वावलोकनं करोतु';

  @override
  String get gameHintCmd021TerraformApply => 'आधारसंरचनां निर्मातु अद्यतनीकरोतु वा';

  @override
  String get gameHintCmd022TerraformDestroy => 'प्रबन्धितां आधारसंरचनाम् अपनयतु';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'स्वचालनस्य playbook चालयतु';

  @override
  String get gameHintCmd024Ping => 'ICMP द्वारा सुगम्यतां परीक्षतु';

  @override
  String get gameHintCmd025Traceroute => 'यजमानं प्रति मार्गं दर्शयतु';

  @override
  String get gameHintCmd026Curl => 'URL तः दत्तांशं स्थानान्तरयतु';

  @override
  String get gameHintCmd027Ssh => 'दूरस्थं यन्त्रं सुरक्षितं प्रविशतु';

  @override
  String get gameHintCmd028CrontabE => 'समयबद्धकार्याणि सम्पादयतु';

  @override
  String get gameHintCmd029SystemctlStatus => 'सेवायाः स्थितिं परीक्षतु';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes मध्ये chart स्थापयतु';

  @override
  String get gameHintWord001Git => 'स्रोतसङ्केतस्य परिवर्तनानि अनुसरति।';

  @override
  String get gameHintWord002Aws => 'Amazon इत्यस्य मेघमञ्चः।';

  @override
  String get gameHintWord003Api => 'सॉफ्टवेयरव्यवस्थानां संवादं कारयति यः सन्धिः।';

  @override
  String get gameHintWord004Dns => 'क्षेत्रनामानि IP सङ्केतेषु अनुवदति।';

  @override
  String get gameHintWord005Cli => 'आदेशचालनार्थं पाठाधारितं अन्तरापृष्ठम्।';

  @override
  String get gameHintWord006Cpu => 'निर्देशान् निष्पादयति यः संसाधकः।';

  @override
  String get gameHintWord007Ram => 'चलद्भिः प्रोग्रामैः प्रयुक्ता अस्थायिनी स्मृतिः।';

  @override
  String get gameHintWord008Ssh => 'दूरस्थशेलप्रवेशार्थं सुरक्षितं प्रोटोकॉल।';

  @override
  String get gameHintWord009Yaml => 'मनुष्यपठनीयं दत्तांशक्रमबद्धीकरणस्वरूपम्।';

  @override
  String get gameHintWord010Linux => 'मुक्तस्रोतः प्रचालनतन्त्रस्य कर्नलः तत्कुलं च।';

  @override
  String get gameHintWord011Bash => 'लोकप्रियः Unix आदेशशेलः।';

  @override
  String get gameHintWord012Cloud => 'जालद्वारा माङ्गल्येन प्रदत्ता गणनाशक्तिः।';

  @override
  String get gameHintWord013Docker => 'पात्राणां निर्माणाय चालनाय च मञ्चः।';

  @override
  String get gameHintWord014Azure => 'Microsoft इत्यस्य मेघमञ्चः।';

  @override
  String get gameHintWord015Python => 'बहुप्रयुक्ता स्क्रिप्टिंग्-प्रोग्रामिंग्-भाषा।';

  @override
  String get gameHintWord016Github => 'लोकप्रिया होस्टितः Git सहकार्यसेवा।';

  @override
  String get gameHintWord017Bgp => 'स्वायत्तव्यवस्थानां मध्ये मार्गान् विनिमयति मार्गनिर्देशप्रोटोकॉल।';

  @override
  String get gameHintWord018Jenkins => 'CI कृते बहुधा प्रयुक्तः स्वचालनसेवकः।';

  @override
  String get gameHintWord019Port => 'जालसेवाभिः प्रयुक्तः सङ्ख्याङ्कितः अन्तबिन्दुः।';

  @override
  String get gameHintWord020Proxy => 'ग्राहकेभ्यः अनुरोधान् अग्रेषयति यः सेवकः।';

  @override
  String get gameHintWord021Cache => 'बहुधा पुनःप्रयुक्तस्य दत्तांशस्य द्रुतः सङ्ग्रहः।';

  @override
  String get gameHintWord022Cron => 'आवर्तकादेशानां कृते Unix समयनियोजकः।';

  @override
  String get gameHintWord023Bicep => 'आधारसंरचना-सङ्केतरूपेण Azure इत्यस्य घोषणात्मिका भाषा।';

  @override
  String get gameHintWord024Apigee => 'API केन्द्रीयप्रबन्धनाय Google Cloud मञ्चः।';

  @override
  String get gameHintWord025Root => 'Unix-सदृशेषु व्यवस्थासु विशेषाधिकारयुक्तं प्रशासकखातम्।';

  @override
  String get gameHintWord026Nginx => 'जालसेवकः प्रतिलोमप्रॉक्सी च।';

  @override
  String get gameHintWord027Redis => 'स्मृत्यन्तर्गतः दत्तांशसङ्ग्रहः, बहुधा cache रूपेण प्रयुक्तः।';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिया सम्बन्धात्मिका दत्तांशकोशव्यवस्था।';

  @override
  String get gameHintWord029Ruby => 'Chef सदृशैः उपकरणैः प्रयुक्ता प्रोग्रामिंग्भाषा।';

  @override
  String get gameHintWord030Helm => 'Kubernetes सह बहुधा प्रयुक्तः संकुलप्रबन्धकः।';

  @override
  String get gameHintWord031Pod => 'Kubernetes मध्ये लघुतमा नियोज्या इकाई।';

  @override
  String get gameHintWord032Image => 'पात्रनिर्माणार्थं प्रयुक्तं केवलपठनीयं प्रारूपम्।';

  @override
  String get gameHintWord033Build => 'स्रोतात् निर्भरताभ्यश्च कृतिं निर्माति।';

  @override
  String get gameHintWord034Deploy => 'अनुप्रयोगं परिवेशे प्रकाशयति।';

  @override
  String get gameHintWord035Terraform => 'आधारसंरचना-सङ्केतार्थं HashiCorp इत्यस्य उपकरणम्।';

  @override
  String get gameHintWord036Ansible => 'अभिकर्तृहीनं स्वचालनविन्यासोपकरणम्।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes कृते आदेशपङ्क्तिग्राहकः।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform इत्यस्य संक्षेपः।';

  @override
  String get gameHintWord039Gitops => 'Git सत्यस्रोतरूपेण प्रयुञ्जानं सञ्चालनप्रतिरूपम्।';

  @override
  String get gameHintWord040Pipeline => 'निर्माणपरीक्षणप्रकाशनचरणानां स्वचालितः क्रमः।';

  @override
  String get gameHintWord041Container => 'निर्भरताभिः सह संवेष्टिता पृथक्कृता प्रक्रिया।';

  @override
  String get gameHintWord042Cluster => 'साझाव्यवस्थारूपेण प्रबन्धितं यन्त्रसमूहम्।';

  @override
  String get gameHintWord043Ingress => 'बाह्य HTTP मार्गनिर्देशार्थं Kubernetes API वस्तु।';

  @override
  String get gameHintWord044Firewall => 'सुरक्षानियमानुसारं जालयातायातं छानयति।';

  @override
  String get gameHintWord045Subnet => 'IP जालस्य तार्किकः उपविभागः।';

  @override
  String get gameHintWord046Gateway => 'भिन्नानि जालानि संयोजयति यः जालबिन्दुः।';

  @override
  String get gameHintWord047Router => 'जालानां मध्ये packets अग्रेषयति।';

  @override
  String get gameHintWord048Switch => 'स्थानीयजालान्तः उपकरणानि संयोजयति।';

  @override
  String get gameHintWord049Repository => 'स्रोतसङ्केतस्य संकुलानां वा प्रबन्धितः सङ्ग्रहः।';

  @override
  String get gameHintWord050Systemd => 'Linux आरम्भव्यवस्था सेवाप्रबन्धकश्च।';

  @override
  String get gameHintWord051Journalctl => 'systemd journal लेखान् पठितुं प्रयुक्त आदेशः।';

  @override
  String get gameHintWord052Permission => 'कः पठितुं लेखितुं निष्पादयितुं वा शक्नोति इति नियन्त्रयति नियमः।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud प्रबन्धितः PostgreSQL-सुसङ्गतः दत्तांशकोशः।';

  @override
  String get gameHintWord054Configmap => 'अगोपनीयविन्यासार्थं Kubernetes वस्तु।';

  @override
  String get gameHintWord055Secret => 'संवेदनशीलदत्तांशार्थं निर्मितं Kubernetes वस्तु।';

  @override
  String get gameHintWord056Persistent => 'कार्यभारपुनरारम्भं यः सहते तादृशं सङ्ग्रहणं वर्णयति।';

  @override
  String get gameHintWord057Volume => 'पात्रे आरोपितं सञ्चिकाव्यवस्थासङ्ग्रहणम्।';

  @override
  String get gameHintWord058Storage => 'सञ्चिकानां वस्तूनां खण्डानां वा स्थायि स्थानम्।';

  @override
  String get gameHintWord059Replica => 'मापनाय विश्वसनीयतायै वा धृता कार्यभारप्रतिलिपिः।';

  @override
  String get gameHintWord060Deployment => 'स्थितिहीनानाम् अनुप्रयोग pods कृते Kubernetes नियन्त्रकः।';

  @override
  String get gameHintWord061Dockerfile => 'Docker प्रतिबिम्बनिर्माणार्थं प्रयुक्ताः निर्देशाः।';

  @override
  String get gameHintWord062Database => 'अनुप्रयोगैः पृच्छ्यमानः व्यवस्थितः सङ्ग्रहः।';

  @override
  String get gameHintWord063Automation => 'हस्तचरणैः विना पुनरावर्तनीयकार्याणि सॉफ्टवेयरद्वारा करणम्।';

  @override
  String get gameHintWord064Anthos => 'परिवेशान्तरेषु clusters प्रबन्धनाय Google Cloud मञ्चः।';

  @override
  String get gameHintWord065Bigquery => 'बृहत्पैमानिकदत्तांशविश्लेषणाय Google Cloud सेवा।';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषणार्थं Google Cloud इत्यस्य विस्तृतस्तम्भयुक्तः NoSQL दत्तांशकोशः।';

  @override
  String get gameHintWord067Loadbalancer => 'आगच्छन्तं यातायातं बहुषु पृष्ठसेवकेषु वितरति।';

  @override
  String get gameHintWord068Prometheus => 'कालश्रेणीमापदण्डान् सङ्गृह्णाति निरीक्षणव्यवस्था।';

  @override
  String get gameHintWord069Grafana => 'निरीक्षणीयतादत्तांशं प्रष्टुं दृश्यीकर्तुं च मञ्चः।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud प्रबन्धितः NoSQL JSON लेखदत्तांशकोशः।';

  @override
  String get gameHintWord071Cloudtrail => 'लेखापरीक्षणार्थं API क्रियाकलापं अभिलिखति AWS सेवा।';

  @override
  String get gameHintWord072Statefulset => 'स्थिरपरिचयम् अपेक्षमाणानां कार्यभाराणां कृते Kubernetes नियन्त्रकः।';

  @override
  String get gameHintWord073Daemonset => 'चयनितेषु nodes मध्ये pod चालयति Kubernetes नियन्त्रकः।';

  @override
  String get gameHintWord074Serviceaccount => 'कार्यभारेण प्रक्रियया वा प्रयुक्तः Kubernetes परिचयः।';

  @override
  String get gameHintWord075Networkpolicy => 'pod जालयातायातं नियन्त्रयति Kubernetes संसाधनम्।';

  @override
  String get gameHintWord076Certificate => 'TLS मध्ये परिचयस्थापनार्थं प्रयुक्तं अङ्कीयं प्रलेखम्।';

  @override
  String get gameHintWord077Encryption => 'दत्तांशं तथा परिवर्तयति यथा अधिकृताः एव पठितुं शक्नुवन्ति।';

  @override
  String get gameHintWord078Observability => 'निर्गमेभ्यः व्यवस्थायाः व्यवहारम् अनुमातुं क्षमता।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes clusters अन्तः बहुधा प्रयुक्तः DNS सेवकः।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API द्वारा मेघसंसाधनानि प्रबन्धयितुं परियोजना।';

  @override
  String get gameHintWord081Failover => 'विफलतायाः अनन्तरं प्रतीक्षारतं घटकं प्रति परिवर्तनम्।';

  @override
  String get gameHintWord082Idempotency => 'क्रियायाः पुनरावृत्तिः एकवारकरणसमानं फलं ददाति इति गुणः।';

  @override
  String get gameHintWord083Dataflow => 'प्रवाहदत्तांशस्य समूहदत्तांशस्य च संसाधनाय Google Cloud सेवा।';

  @override
  String get gameHintWord084Orchestration => 'बहूनां स्वचालितकार्यभाराणां समन्वितं प्रबन्धनम्।';

  @override
  String get gameHintWord085Dataplex => 'उद्यमदत्तांशस्य अन्वेषणाय शासनाय च Google Cloud सेवा।';

  @override
  String get gameHintWord086Serverless => 'यत्र आधारसंरचनाप्रबन्धनं अमूर्तं भवति तादृशं निष्पादनप्रतिरूपम्।';

  @override
  String get gameHintWord087Distributed => 'बहुषु जालबद्धेषु यन्त्रेषु घटकाः चलन्ति यस्मिन् तादृशी व्यवस्था।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud प्रबन्धितं Apache Spark Hadoop च परिवेशम्।';

  @override
  String get gameHintWord089Dynamodb => 'Terraform स्थितितालनाय बहुधा प्रयुक्तः AWS NoSQL दत्तांशकोशः।';

  @override
  String get gameHintWord090Provisioning => 'आधारसंरचनां संसाधनानि वा उपयोगाय सज्जीकरणम्।';

  @override
  String get gameHintWord091Elasticsearch => 'केन्द्रीयलेखनाय बहुधा प्रयुक्तं अन्वेषणयन्त्रम्।';

  @override
  String get gameHintWord092Etcd => 'Kubernetes cluster स्थितिं धारयति कुञ्जी-मूल्य सङ्ग्रहः।';

  @override
  String get gameHintWord093Authentication => 'उपयोक्ता सेवा वा कः इति सत्यापयितुं प्रक्रिया।';

  @override
  String get gameHintWord094Authorization => 'परिचयः किं कर्तुम् अर्हति इति निर्णेतुं प्रक्रिया।';

  @override
  String get gameHintWord095Expressroute => 'दत्तांशकेन्द्रैः सह समर्पितसंयोजनार्थं Azure सेवा।';

  @override
  String get gameHintWord096Configuration => 'सॉफ्टवेयरस्य व्यवहारं निर्धारयन्ति सेटिङ्ग्स्।';

  @override
  String get gameHintWord097Infrastructure => 'अनुप्रयोगान् समर्थयन्ति गणनाजालसङ्ग्रहणसंसाधनानि।';

  @override
  String get gameHintWord098Fastconnect => 'समर्पितनिजीजालसंयोजनार्थं Oracle Cloud सेवा।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes द्वारा प्रयुक्तं उद्योगमानकं पात्रचालनतन्त्रम्।';

  @override
  String get gameHintWord100Kubernetes => 'पात्रसमन्वयमञ्चः।';

  @override
  String get gameHintWord101Http => 'जालसंसाधनानि अनुरोद्धुं प्रयुक्तं अनुप्रयोगप्रोटोकॉल।';

  @override
  String get gameHintWord102Https => 'जालानुरोधप्रोटोकॉलस्य गूढीकृतं रूपम्।';

  @override
  String get gameHintWord103Tcp => 'विश्वसनीयं क्रमबद्धं वितरणं प्रददाति परिवहनप्रोटोकॉल।';

  @override
  String get gameHintWord104Udp => 'datagrams कृते प्रयुक्तं संयोजनहीनं परिवहनप्रोटोकॉल।';

  @override
  String get gameHintWord105Tls => 'जालद्वारा विनिमितं दत्तांशं सुरक्षितं करोति प्रोटोकॉल।';

  @override
  String get gameHintWord106Ssl => 'आधुनिकस्य परिवहनसुरक्षाप्रोटोकॉलस्य प्राचीनः पूर्वजः।';

  @override
  String get gameHintWord107Ftp => 'सञ्चिकास्थानान्तरणार्थं पारम्परिकं प्रोटोकॉल।';

  @override
  String get gameHintWord108Sftp => 'सुरक्षितशेलसंयोजनेन वाह्यमानं सञ्चिकास्थानान्तरणप्रोटोकॉल।';

  @override
  String get gameHintWord109Smtp => 'सेवकानां मध्ये ईमेल प्रेषितुं प्रयुक्तं प्रोटोकॉल।';

  @override
  String get gameHintWord110Snmp => 'जालोपकरणानि प्रबन्धयितुं निरीक्षितुं च प्रयुक्तं प्रोटोकॉल।';

  @override
  String get gameHintWord111Icmp => 'जालदोषान् ping सन्देशांश्च वहति प्रोटोकॉल।';

  @override
  String get gameHintWord112Arp => 'स्थानीयान् IPv4 पत्रकान् यन्त्रांशपत्रकेषु परिवर्तयति।';

  @override
  String get gameHintWord113Dhcp => 'जालग्राहकेभ्यः IP विन्यासं स्वयं प्रयच्छति।';

  @override
  String get gameHintWord114Nat => 'gateway पारयतां packets इत्येषां जालपत्रकानि पुनर्लिखति।';

  @override
  String get gameHintWord115Vpn => 'दूरस्थजालानि उपयोक्तॄन् वा संयोजयति गूढीकृता सुरङ्गा।';

  @override
  String get gameHintWord116Vpc => 'सार्वजनिकमेघे पृथक्कृतं आभासीजालम्।';

  @override
  String get gameHintWord117Vlan => 'स्विच्ड् जालस्य तार्किकं पृथक्करणम्।';

  @override
  String get gameHintWord118Wan => 'विस्तृतं भौगोलिकक्षेत्रं व्याप्नोति जालम्।';

  @override
  String get gameHintWord119Lan => 'स्थानीयक्षेत्रे उपकरणानि संयोजयति जालम्।';

  @override
  String get gameHintWord120Cdn => 'वितरितां सामग्रीं cache करोति वितरितं सीमाजालम्।';

  @override
  String get gameHintWord121Cidr => 'तिर्यक्रेखादैर्घ्येण जालपूर्वपदं निर्दिशति सङ्केतना।';

  @override
  String get gameHintWord122Host => 'जाले संयुक्तं सङ्गणकम् अन्तबिन्दुः वा।';

  @override
  String get gameHintWord123Hostname => 'जालबद्धाय यन्त्राय दत्तं मनुष्यपठनीयं नाम।';

  @override
  String get gameHintWord124Domain => 'अन्तर्जालनामकरणव्यवस्थायां नामितं प्रशासनक्षेत्रम्।';

  @override
  String get gameHintWord125Zone => 'DNS नामाकाशस्य प्रशासनीयः भागः।';

  @override
  String get gameHintWord126Record => 'DNS दत्तांशकोशे एका प्रविष्टिः।';

  @override
  String get gameHintWord127Aaaa => 'नाम IPv6 पत्रके परिवर्तयति DNS अभिलेखप्रकारः।';

  @override
  String get gameHintWord128Ptr => 'प्रतिलोमपत्रकान्वेषणार्थं प्रयुक्तः DNS अभिलेखप्रकारः।';

  @override
  String get gameHintWord129Txt => 'पाठमूल्यानि धारयति DNS अभिलेखप्रकारः।';

  @override
  String get gameHintWord130Cname => 'एकं नाम अन्यस्य उपनाम करोति DNS अभिलेखः।';

  @override
  String get gameHintWord131Route => 'packets गन्तव्यं प्रति निर्दिशति मार्गप्रविष्टिः।';

  @override
  String get gameHintWord132Routing => 'जालानां मध्ये यातायातस्य मार्गचयनम्।';

  @override
  String get gameHintWord133Packet => 'जालद्वारा प्रेष्यमाणः दत्तांशस्य एकः अंशः।';

  @override
  String get gameHintWord134Protocol => 'व्यवस्थानां मध्ये संवादार्थं सम्मताः नियमाः।';

  @override
  String get gameHintWord135Ack => 'दत्तांशप्राप्तिं स्वीकरोति TCP ध्वजः।';

  @override
  String get gameHintWord136Bandwidth => 'सञ्चारसम्पर्कस्य क्षमता।';

  @override
  String get gameHintWord137Latency => 'अनुरोधस्य packet इत्यस्य वा प्रतिक्रियाप्राप्तेः पूर्वं विलम्बः।';

  @override
  String get gameHintWord138Throughput => 'प्रतिकाल-एककं संसाधितं उपयोगि कार्यं दत्तांशं वा।';

  @override
  String get gameHintWord139Mtu => 'खण्डनं विना सम्पर्कः प्रेषितुं शक्नोति बृहत्तमः packet आकारः।';

  @override
  String get gameHintWord140Alpn => 'अनुप्रयोगस्तरीयं प्रोटोकॉल वार्तयति TLS विस्तारः।';

  @override
  String get gameHintWord141Grep => 'मेलनप्रतिरूपाय पाठपङ्क्तीः अन्विषति।';

  @override
  String get gameHintWord142Sed => 'पाठप्रतिस्थापनार्थं बहुधा प्रयुक्तः प्रवाहसम्पादकः।';

  @override
  String get gameHintWord143Lscpu => 'संसाधकस्थापत्यं कोरविवरणानि च दर्शयति Linux आदेशः।';

  @override
  String get gameHintWord144Find => 'सञ्चिकाविधेयैः निर्देशिकावृक्षम् अन्विषति।';

  @override
  String get gameHintWord145Lsblk => 'खण्डोपकरणानि तेषां सम्बन्धांश्च सूचयति Linux आदेशः।';

  @override
  String get gameHintWord146Sort => 'पाठपङ्क्तीः क्रमबद्धां करोति।';

  @override
  String get gameHintWord147Uniq => 'समीपस्थान् द्विरुक्तान् पङ्क्तीः छानयति।';

  @override
  String get gameHintWord148Head => 'सञ्चिकायाः आरम्भं मुद्रयति।';

  @override
  String get gameHintWord149Tail => 'सञ्चिकायाः अन्तं मुद्रयति, योजितलेखान् अनुसर्तुं शक्नोति च।';

  @override
  String get gameHintWord150Cat => 'सञ्चिकाः संयोज्य तासां सामग्रीं मुद्रयति।';

  @override
  String get gameHintWord151Cut => 'पङ्क्तिभ्यः चयनितक्षेत्राणि वर्णस्तम्भान् वा निष्कासयति।';

  @override
  String get gameHintWord152Tee => 'मानकनिवेशं सञ्चिकासु मानकनिर्गमे च प्रतिलिपयति।';

  @override
  String get gameHintWord153Echo => 'स्वतर्कान् मानकनिर्गमे लिखति।';

  @override
  String get gameHintWord154Printf => 'शेलतः प्रोग्रामतः वा स्वरूपितं पाठं मुद्रयति।';

  @override
  String get gameHintWord155Touch => 'सञ्चिकासमयमुद्रां अद्यतनीकरोति रिक्तां सञ्चिकां वा निर्माति।';

  @override
  String get gameHintWord156Mkdir => 'निर्देशिकाः निर्माति।';

  @override
  String get gameHintWord157Rmdir => 'रिक्ताः निर्देशिकाः अपनयति।';

  @override
  String get gameHintWord158Chmod => 'Unix सञ्चिकानुमतिबिट्स् परिवर्तयति।';

  @override
  String get gameHintWord159Chown => 'सञ्चिकास्वामित्वं परिवर्तयति।';

  @override
  String get gameHintWord160Chgrp => 'सञ्चिकायाः समूहस्वामित्वं परिवर्तयति।';

  @override
  String get gameHintWord161Pwd => 'वर्तमानां कार्यनिर्देशिकां मुद्रयति।';

  @override
  String get gameHintWord162Apt => 'Debian-आधारितव्यवस्थाभिः प्रयुक्तं संकुलप्रबन्धनोपकरणम्।';

  @override
  String get gameHintWord163Top => 'प्रक्रियाणां व्यवस्थासंसाधनोपयोगस्य च अन्तरक्रियात्मकं प्रदर्शनम्।';

  @override
  String get gameHintWord164Agent => 'यजमाने कार्यं निष्पादयति निवेदयति वा सॉफ्टवेयरघटकः।';

  @override
  String get gameHintWord165Kill => 'प्रक्रियां तस्याः परिचायकेन संकेतं प्रेषयति।';

  @override
  String get gameHintWord166Signal => 'प्रचालनतन्त्रेण प्रक्रियां प्रति प्रेषिता सूचना।';

  @override
  String get gameHintWord167Sigkill => 'प्रक्रियां तत्क्षणं समापयति Unix संकेतः।';

  @override
  String get gameHintWord168Nice => 'समायोजितप्राथमिकतया प्रक्रियाम् आरभते।';

  @override
  String get gameHintWord169Renice => 'चलन्त्याः प्रक्रियायाः समयनियोजनप्राथमिकतां परिवर्तयति।';

  @override
  String get gameHintWord170Jobs => 'वर्तमानशेलप्रबन्धितानि कार्याणि सूचयति।';

  @override
  String get gameHintWord171Nohup => 'hangup संकेतान् उपेक्ष्य आदेशं चालयति।';

  @override
  String get gameHintWord172Screen => 'वियोज्यसत्राणि समर्थयति टर्मिनल् बहुसंयोजकः।';

  @override
  String get gameHintWord173Uptime => 'व्यवस्था कियत्कालं चलति इति निवेदयति।';

  @override
  String get gameHintWord174Uname => 'व्यवस्थायाः कर्नलस्य च सूचनां मुद्रयति।';

  @override
  String get gameHintWord175Whoami => 'प्रभावि वर्तमानम् उपयोक्तृनाम मुद्रयति।';

  @override
  String get gameHintWord176Umask => 'सञ्चिकानिर्माणकाले प्रयुक्तं अनुमतिमुखौटं स्थापयति।';

  @override
  String get gameHintWord177Usermod => 'विद्यमानं उपयोक्तृखातं परिवर्तयति Linux आदेशः।';

  @override
  String get gameHintWord178Crontab => 'समयबद्धानि आवर्तकशेलकार्याणि सम्पादयति सूचयति वा।';

  @override
  String get gameHintWord179Findmnt => 'आरोपितसञ्चिकाव्यवस्थासूचनां दर्शयति Linux आदेशः।';

  @override
  String get gameHintWord180Mount => 'निर्देशिकावृक्षे सञ्चिकाव्यवस्थां योजयति।';

  @override
  String get gameHintWord181Sigterm => 'सुकरं प्रक्रियासमापनम् अनुरोधति Unix संकेतः।';

  @override
  String get gameHintWord182Fstab => 'आरोपणीयाः सञ्चिकाव्यवस्थाः वर्णयति व्यवस्थासारणी।';

  @override
  String get gameHintWord183Swap => 'भौतिकस्मृतेः पूरणार्थं प्रयुक्तं डिस्काधारितं स्थानम्।';

  @override
  String get gameHintWord184Tmpfs => 'आभासीस्मृत्याधारिता अस्थायिनी सञ्चिकाव्यवस्था।';

  @override
  String get gameHintWord185Proc => 'प्रक्रियाकर्नलसूचनां प्रकाशयति Linux आभासीसञ्चिकाव्यवस्था।';

  @override
  String get gameHintWord186Syslog => 'मानकं लेखनप्रोटोकॉल सन्देशस्वरूपं च।';

  @override
  String get gameHintWord187Dmesg => 'कर्नल ring buffer तः सन्देशान् दर्शयति।';

  @override
  String get gameHintWord188Free => 'प्रयुक्तां उपलब्धां च व्यवस्थास्मृतिं निवेदयति।';

  @override
  String get gameHintWord189Stat => 'सञ्चिकायाः विस्तृतं मेटादत्तांशं दर्शयति।';

  @override
  String get gameHintWord190Lsof => 'उद्घाटिताः सञ्चिकाः ताः धारयन्तीः प्रक्रियाश्च सूचयति।';

  @override
  String get gameHintWord191Netstat => 'जालसंयोजनानि मार्गनिर्देशसूचनां च दर्शयति।';

  @override
  String get gameHintWord192Checksum => 'दत्तांशे परिवर्तनं भ्रष्टतां वा ज्ञातुं गणितं मूल्यम्।';

  @override
  String get gameHintWord193Ping => 'echo अनुरोधैः जालसुगम्यतां परीक्षते।';

  @override
  String get gameHintWord194Traceroute => 'जालगन्तव्यं प्रति मध्यवर्तिनः hops दर्शयति।';

  @override
  String get gameHintWord195Resolver => 'नामप्रश्नानाम् उत्तराणि अन्विषति DNS घटकः।';

  @override
  String get gameHintWord196Nslookup => 'DNS नामानि पत्रकानि च अन्विषति।';

  @override
  String get gameHintWord197Telnet => 'प्राचीनं अगूढीकृतं दूरस्थटर्मिनल्प्रोटोकॉल।';

  @override
  String get gameHintWord198Tftp => 'सरलं UDP-आधारितं सञ्चिकास्थानान्तरणप्रोटोकॉल।';

  @override
  String get gameHintWord199Daemon => 'Unix-सदृशेषु व्यवस्थासु पृष्ठभूमिसेवाप्रक्रिया।';

  @override
  String get gameHintWord200Kernel => 'प्रचालनतन्त्रसंसाधनानि प्रबन्धयति मूलघटकः।';

  @override
  String get gameHintWord201Commit => 'संस्करणनियन्त्रणे परिवर्तनानाम् अभिलिखितं छायाचित्रम्।';

  @override
  String get gameHintWord202Branch => 'विकासरेखां निरूपयति चलनीयः सन्दर्भः।';

  @override
  String get gameHintWord203Merge => 'भिन्नविकासरेखाणाम् इतिहासान् संयोजयति।';

  @override
  String get gameHintWord204Rebase => 'भिन्नस्य आधारनिवेदनस्य उपरि commits पुनः प्रयुनक्ति।';

  @override
  String get gameHintWord205Clone => 'दूरस्थभाण्डागारस्य स्थानीयां प्रतिलिपिं निर्माति।';

  @override
  String get gameHintWord206Fetch => 'संयोजनं विना दूरस्थवस्तूनि सन्दर्भांश्च अवतारयति।';

  @override
  String get gameHintWord207Pull => 'परिवर्तनानि आनीय वर्तमानशाखायां समाकलयति।';

  @override
  String get gameHintWord208Push => 'स्थानीयनिवेदनानि दूरस्थभाण्डागारं प्रति प्रेषयति।';

  @override
  String get gameHintWord209Stash => 'अनिवेदितानि कार्यवृक्षपरिवर्तनानि अस्थायिरूपेण रक्षति।';

  @override
  String get gameHintWord210Revert => 'अन्यं commit निवर्तयन्तं commit निर्माति।';

  @override
  String get gameHintWord211Reset => 'Git सन्दर्भं चालयति, सूचिकां कार्यसञ्चिकाः वा पुनःस्थापयितुं शक्नोति च।';

  @override
  String get gameHintWord212Reflog => 'Git सन्दर्भाणां अद्यतनानां स्थानीय इतिहासः।';

  @override
  String get gameHintWord213Diff => 'संस्करणानां सञ्चिकानां वा भेदान् दर्शयति।';

  @override
  String get gameHintWord214Status => 'मञ्चितानि परिवर्तितानि अनुसरणरहितानि च सञ्चिकानि निवेदयति।';

  @override
  String get gameHintWord215Checkout => 'पुनरीक्षणानि परिवर्तयितुं सञ्चिकाः पुनःस्थापयितुं वा Git आदेशः।';

  @override
  String get gameHintWord216Tag => 'बहुधा प्रकाशनं चिह्नयति नामितः सन्दर्भः।';

  @override
  String get gameHintWord217Remote => 'अन्यभाण्डागारेण सह नामितं संयोजनम्।';

  @override
  String get gameHintWord218Origin => 'अनुकृतस्य भाण्डागारस्य remote कृते दत्तं पूर्वनिर्धारितं नाम।';

  @override
  String get gameHintWord219Upstream => 'स्थानीयशाखया सम्बद्धा दूरस्था अनुसरणशाखा।';

  @override
  String get gameHintWord220Worktree => 'भाण्डागारेण सम्बद्धा checked-out कार्यनिर्देशिका।';

  @override
  String get gameHintWord221Registry => 'पात्रप्रतिबिम्बानि सङ्गृह्णाति वितरति च सेवा।';

  @override
  String get gameHintWord222Digest => 'पात्रप्रतिबिम्बस्य सामग्र्याधारितः परिचायकः।';

  @override
  String get gameHintWord223Layer => 'पात्रप्रतिबिम्बस्य भागं निर्माणि सञ्चिकाव्यवस्थापरिवर्तनानि।';

  @override
  String get gameHintWord224Entrypoint => 'पात्रस्य मुख्यं निष्पादनीयं निर्धारयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord225Cmd => 'पूर्वनिर्धारितम् आदेशं तर्कान् वा निर्दिशति Dockerfile निर्देशः।';

  @override
  String get gameHintWord226Workdir => 'कार्यनिर्देशिकां स्थापयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord227Copy => 'build-context सञ्चिकाः प्रतिबिम्बे प्रतिलिपयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord228Add => 'स्थानीयसंग्रहान् अपि अनावृत्तं कर्तुं शक्नोति Dockerfile निर्देशः।';

  @override
  String get gameHintWord229Run => 'निर्माणकाले आदेशं निष्पादयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord230Env => 'पर्यावरणचरान् परिभाषयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord231Arg => 'निर्माणकालीनं चरं घोषयति Dockerfile निर्देशः।';

  @override
  String get gameHintWord232Expose => 'पात्रस्य port अभिलिखति Dockerfile निर्देशः।';

  @override
  String get gameHintWord233User => 'परवर्तिनां आदेशानां कृते खातं चिनोति Dockerfile निर्देशः।';

  @override
  String get gameHintWord234Healthcheck => 'पात्रस्वास्थ्यं कथं परीक्ष्यते इति वर्णयति निर्देशः।';

  @override
  String get gameHintWord235Shebang => 'निष्पादनीयं व्याख्यातारं निर्दिशति स्क्रिप्टस्य प्रथमा पङ्क्तिः।';

  @override
  String get gameHintWord236Compose => 'बहुपात्रानुप्रयोगान् परिभाषयितुं चालयितुं च Docker उपकरणम्।';

  @override
  String get gameHintWord237Bridge => 'स्थानीयपात्रजालार्थं सामान्यः Docker जालचालकः।';

  @override
  String get gameHintWord238Overlay => 'बहुषु यजमानेषु पात्राणि व्याप्नोति जालम्।';

  @override
  String get gameHintWord239None => 'पात्रजालम् अक्षमं करोति Docker जालचालकः।';

  @override
  String get gameHintWord240Prune => 'अप्रयुक्तानि पात्रसंसाधनानि अपनयति।';

  @override
  String get gameHintWord241Replicaset => 'वाञ्छितां pod सङ्ख्यां धारयति Kubernetes नियन्त्रकः।';

  @override
  String get gameHintWord242Service => 'pods प्रति स्थिरं प्रवेशं ददाति Kubernetes अमूर्तता।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सेवायाः पृष्ठे स्थितानि पत्रकानि।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes संसाधनानि समूहीकरोति तार्किकः व्याप्तिः।';

  @override
  String get gameHintWord245Node => 'Kubernetes pods धारयति कार्ययन्त्रम्।';

  @override
  String get gameHintWord246Kubelet => 'pod निष्पादनं प्रबन्धयति प्रत्येकस्मिन् node स्थितः अभिकर्ता।';

  @override
  String get gameHintWord247Pvc => 'स्थायिसङ्ग्रहणार्थं Kubernetes अनुरोधः।';

  @override
  String get gameHintWord248Apiserver => 'cluster API प्रकाशयति Kubernetes नियन्त्रणतलघटकः।';

  @override
  String get gameHintWord249Role => 'भूमिकाधारिते प्रवेशनियन्त्रणे अनुमतीनां नामितः समूहः।';

  @override
  String get gameHintWord250Resourcequota => 'नामस्थाने संसाधनोपभोगं सीमितं करोति Kubernetes वस्तु।';

  @override
  String get gameHintWord251Selector => 'संसाधनानि तेषां लेबलैः मेलयति अभिव्यक्तिः।';

  @override
  String get gameHintWord252Taint => 'मेलनसहनशीलतारहितान् pods निवारयति node गुणः।';

  @override
  String get gameHintWord253Toleration => 'दूषितं node प्रति नियोजनम् अनुमन्यते pod सेटिङ्ग्।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes node अनियोज्यं चिह्नयति।';

  @override
  String get gameHintWord255Uncordon => 'cordoned node पुनः नियोज्यं करोति।';

  @override
  String get gameHintWord256Drain => 'node अनुरक्षणात् पूर्वं कार्यभारान् सुरक्षितं निष्कासयति।';

  @override
  String get gameHintWord257Job => 'कार्यं पूर्णतां यावत् चालयति Kubernetes कार्यभारः।';

  @override
  String get gameHintWord258Cronjob => 'समयसारण्या jobs निर्माति Kubernetes कार्यभारः।';

  @override
  String get gameHintWord259Readiness => 'पात्रं यातायातं प्राप्तुं शक्नोति वा इति सूचयति probe।';

  @override
  String get gameHintWord260Liveness => 'पात्रस्य पुनरारम्भः आवश्यकः वा इति सूचयति probe।';

  @override
  String get gameHintWord261Canary => 'नूतनं संस्करणं लघुयातायातांशं प्रति प्रकाशयति प्रकाशनपद्धतिः।';

  @override
  String get gameHintWord262Rolling => 'चलन्तीः instances क्रमशः प्रतिस्थापयति अद्यतनरणनीतिः।';

  @override
  String get gameHintWord263Rollback => 'पूर्वं सम्यक् चलितं अनुप्रयोगसंस्करणं पुनःस्थापयति।';

  @override
  String get gameHintWord264Rollout => 'अनुप्रयोगस्य नूतनसंस्करणस्य प्रगतिशीला नियोजना।';

  @override
  String get gameHintWord265Recreate => 'प्रतिस्थापकान् आरब्धुं पूर्वं पुरातनान् pods निरोधयति नियोजनरणनीतिः।';

  @override
  String get gameHintWord266Blue => 'blue-green प्रकाशने द्वयोः परिवेशयोः एकः।';

  @override
  String get gameHintWord267Green => 'blue-green प्रकाशने अपरः परिवेशः।';

  @override
  String get gameHintWord268Artifact => 'निर्माणपाइपलाइनेन जनितः संस्करणयुक्तः निर्गमः।';

  @override
  String get gameHintWord269Staging => 'प्रकाशनसत्यापनार्थं प्रयुक्तः पूर्वोत्पादनपरिवेशः।';

  @override
  String get gameHintWord270Production => 'वास्तविकान् अन्त्योपयोक्तॄन् सेवमानः परिवेशः।';

  @override
  String get gameHintWord271Release => 'उपयोगार्थं वितरितं सॉफ्टवेयरसंस्करणम्।';

  @override
  String get gameHintWord272Version => 'सॉफ्टवेयरपुनरीक्षणं भिनत्ति परिचायकः।';

  @override
  String get gameHintWord273Revision => 'प्रलेखस्य कोडाधारस्य वा परिचेयं संस्करणम्।';

  @override
  String get gameHintWord274Webhook => 'घटनायां जातायां प्रेषिता HTTP सूचना।';

  @override
  String get gameHintWord275Runbook => 'व्यवस्थायाः सञ्चालनाय पुनःप्राप्तये वा प्रलेखिता प्रक्रिया।';

  @override
  String get gameHintWord276Workspace => 'कार्यपरियोजनासंसाधनानि धारयति निर्देशिका व्याप्तिः वा।';

  @override
  String get gameHintWord277Credentials => 'व्यवस्थां प्रवेष्टुं प्रयुक्ता प्रमाणीकरणसामग्री।';

  @override
  String get gameHintWord278Trigger => 'पाइपलाइनम् आरभते या घटना स्थितिः वा।';

  @override
  String get gameHintWord279Parameter => 'job फलनं वा प्रति दत्तं नामितं निवेशम्।';

  @override
  String get gameHintWord280Access => 'अधिकारानुसारं संसाधनस्य उपयोगक्षमता।';

  @override
  String get gameHintWord281Module => 'पुनःप्रयोज्यः आधारसंरचनापरिभाषाणां समूहः।';

  @override
  String get gameHintWord282Provider => 'विन्यासं बाह्यं API सह संयोजयति Terraform प्लगिन्।';

  @override
  String get gameHintWord283Resource => 'विन्यासे घोषितः प्रबन्धितः आधारसंरचनावस्तु।';

  @override
  String get gameHintWord284Variable => 'विन्यासेन कोडेन वा प्रयुक्तं नामितं निवेशमूल्यम्।';

  @override
  String get gameHintWord285Output => 'आधारसंरचनाविन्यासेन प्रत्यर्पितं प्रकाशितं मूल्यम्।';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्थितिछायाचित्रैः सम्बद्धः सञ्चिकाप्रत्ययः।';

  @override
  String get gameHintWord287Tfvars => 'Terraform निवेशचरमूल्यानां कृते प्रयुक्तः सञ्चिकाप्रत्ययः।';

  @override
  String get gameHintWord288Backend => 'स्थितिसङ्ग्रहणं नियन्त्रयति Terraform विन्यासः।';

  @override
  String get gameHintWord289Plan => 'प्रस्तावितानां आधारसंरचनापरिवर्तनानां Terraform पूर्वावलोकनम्।';

  @override
  String get gameHintWord290Apply => 'प्रस्तावितानि परिवर्तनानि निष्पादयति Terraform क्रिया।';

  @override
  String get gameHintWord291Destroy => 'प्रबन्धितां आधारसंरचनाम् अपनयति Terraform क्रिया।';

  @override
  String get gameHintWord292Import => 'विद्यमानं संसाधनम् आधारसंरचनाप्रबन्धने आनयति।';

  @override
  String get gameHintWord293Refresh => 'अभिलिखितां स्थितिं वास्तविकाधारसंरचनया सह समकालीकरोति।';

  @override
  String get gameHintWord294Validate => 'विन्यासस्य वाक्यरचनां आन्तरिकसङ्गतिं च परीक्षते।';

  @override
  String get gameHintWord295Fmt => 'मानकं विन्यासस्वरूपणं प्रयुनक्ति Terraform आदेशः।';

  @override
  String get gameHintWord296Init => 'Terraform प्रदातॄन् कार्यनिर्देशिकां च प्रारम्भयति।';

  @override
  String get gameHintWord297Executor => 'build चालयितुं शक्नोति Jenkins कार्यस्थानम्।';

  @override
  String get gameHintWord298Dependencies => 'एकं घटकम् अन्यस्मात् पूर्वम् अपेक्षमाणाः सम्बन्धाः।';

  @override
  String get gameHintWord299Drift => 'घोषितायाः वास्तविकायाश्च आधारसंरचनास्थितेः भेदः।';

  @override
  String get gameHintWord300Locking => 'साझास्थितिं परिवर्तयितुं समकालीनलेखकान् निवारयति।';

  @override
  String get gameHintWord301Playbook => 'स्वचालनस्य plays tasks च वर्णयति Ansible प्रलेखः।';

  @override
  String get gameHintWord302Inventory => 'प्रबन्धितानां यजमानानां समूहानां च Ansible सङ्ग्रहः।';

  @override
  String get gameHintWord303Facts => 'प्रबन्धितयजमानेषु सङ्गृहीता व्यवस्थासूचना।';

  @override
  String get gameHintWord304Task => 'स्वचालने कार्यस्य एका इकाई।';

  @override
  String get gameHintWord305Handler => 'परिवर्तनेन सूचितः सन् निष्पाद्यमानः Ansible task।';

  @override
  String get gameHintWord306Notify => 'परिवर्तितस्य task अनन्तरं handler पङ्क्तौ स्थापयति Ansible निर्देशः।';

  @override
  String get gameHintWord307Become => 'विशेषाधिकारवर्धनं सक्षमं करोति Ansible सेटिङ्ग्।';

  @override
  String get gameHintWord308Vault => 'संवेदनशीलं स्वचालनदत्तांशं गूढीकर्तुं Ansible विशेषता।';

  @override
  String get gameHintWord309Register => 'task फलं चरे रक्षति Ansible निर्देशः।';

  @override
  String get gameHintWord310When => 'सशर्तं task निष्पादनं नियन्त्रयति Ansible कीवर्ड।';

  @override
  String get gameHintWord311Loop => 'सङ्ग्रहे स्वचालन-task पुनरावर्तयति।';

  @override
  String get gameHintWord312Include => 'पुनःप्रयोज्यां स्वचालनसामग्रीं गतिशीलं भारयति।';

  @override
  String get gameHintWord313Tags => 'स्वचालन-tasks उपसमूहान् चेतुं प्रयुक्ताः लेबलाः।';

  @override
  String get gameHintWord314Template => 'नियोजनात् पूर्वं चरैः सह रूपितः सञ्चिकाप्रारूपः।';

  @override
  String get gameHintWord315Jinja => 'Ansible द्वारा प्रयुक्ता प्रारूपभाषा।';

  @override
  String get gameHintWord316Abstraction => 'सरलान्तरापृष्ठपृष्ठे कार्यान्वयनविवरणानां गोपनम्।';

  @override
  String get gameHintWord317Agile => 'प्रतिक्रियां बलयन्ती पुनरावर्ती सॉफ्टवेयरवितरणपद्धतिः।';

  @override
  String get gameHintWord318Puppet => 'घोषणात्मकैः manifests प्रयुञ्जानं विन्यासप्रबन्धनोपकरणम्।';

  @override
  String get gameHintWord319Airflow => 'workflow DAG समयनियोजनाय समन्वयाय च मञ्चः।';

  @override
  String get gameHintWord320Argo => 'GitOps वितरणनियन्त्रकं समाविशन्ती मेघदेशीया परियोजनाकुलम्।';

  @override
  String get gameHintWord321Rds => 'AWS प्रबन्धितस्य सम्बन्धात्मकदत्तांशकोशसेवायाः संक्षेपः।';

  @override
  String get gameHintWord322Sqs => 'AWS प्रबन्धितस्य सन्देशपङ्क्तेः संक्षेपः।';

  @override
  String get gameHintWord323Sns => 'AWS प्रकाशन-सदस्यता सूचनासेवायाः संक्षेपः।';

  @override
  String get gameHintWord324Ses => 'AWS ईमेलप्रेषणसेवायाः संक्षेपः।';

  @override
  String get gameHintWord325Iam => 'मेघपरिचयप्रवेशप्रबन्धनस्य संक्षेपः।';

  @override
  String get gameHintWord326Kms => 'AWS गूढीकरणकुञ्जीप्रबन्धनसेवायाः संक्षेपः।';

  @override
  String get gameHintWord327Waf => 'अनुप्रयोगस्तरीयान् जालानुरोधान् छानयति firewall।';

  @override
  String get gameHintWord328Eks => 'AWS प्रबन्धितस्य Kubernetes सेवायाः संक्षेपः।';

  @override
  String get gameHintWord329Ecs => 'AWS प्रबन्धितस्य पात्रसमन्वयसेवायाः संक्षेपः।';

  @override
  String get gameHintWord330Ecr => 'AWS पात्रप्रतिबिम्बरजिस्ट्र्याः संक्षेपः।';

  @override
  String get gameHintWord331Aurora => 'MySQL PostgreSQL च सह सुसङ्गतः AWS सम्बन्धात्मकः दत्तांशकोशः।';

  @override
  String get gameHintWord332Redshift => 'AWS विश्लेषणदत्तांशगोदामः।';

  @override
  String get gameHintWord333Neptune => 'AWS प्रबन्धितः आलेखदत्तांशकोशः।';

  @override
  String get gameHintWord334Elasticache => 'AWS प्रबन्धिता स्मृत्यन्तर्गता cache सेवा।';

  @override
  String get gameHintWord335Athena => 'SQL द्वारा वस्तुसङ्ग्रहदत्तांशं पृच्छति AWS सेवा।';

  @override
  String get gameHintWord336Glue => 'AWS सर्वरहिता दत्तांशसमाकलन ETL सेवा।';

  @override
  String get gameHintWord337Emr => 'प्रबन्धितबृहद्दत्तांशसंसाधन clusters कृते AWS मञ्चः।';

  @override
  String get gameHintWord338Lambda => 'सेवकान् अप्रबन्ध्य फलनानि निष्पादयति AWS सेवा।';

  @override
  String get gameHintWord339Cloudfront => 'AWS वैश्विकं सामग्रीवितरणजालम्।';

  @override
  String get gameHintWord340Cloudwatch => 'मापदण्डान् लेखान् सचेतकान् च सङ्गृह्णाति AWS सेवा।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ब्राउज़राधारितः शेलपरिवेशः।';

  @override
  String get gameHintWord342Codecommit => 'AWS प्रबन्धिता Git भाण्डागारसेवा।';

  @override
  String get gameHintWord343Codebuild => 'स्रोतं संकलयति build परीक्षाश्च चालयति AWS सेवा।';

  @override
  String get gameHintWord344Codedeploy => 'AWS स्वचालिता अनुप्रयोगनियोजनसेवा।';

  @override
  String get gameHintWord345Codepipeline => 'AWS निरन्तरवितरणपाइपलाइनसेवा।';

  @override
  String get gameHintWord346Guardduty => 'AWS बुद्धिमती धमकीसंसूचनसेवा।';

  @override
  String get gameHintWord347Inspector => 'कार्यभारान् दुर्बलतार्थं मूल्यांकयति AWS सेवा।';

  @override
  String get gameHintWord348Macie => 'वस्तुसङ्ग्रहे संवेदनशीलं दत्तांशं अन्विषति AWS सेवा।';

  @override
  String get gameHintWord349Shield => 'AWS प्रबन्धिता DDoS संरक्षणसेवा।';

  @override
  String get gameHintWord350Snowball => 'बृहद्दत्तांशस्थानान्तरणार्थं AWS भौतिकं उपकरणम्।';

  @override
  String get gameHintWord351Snowcone => 'AWS अनलाइनेतरस्थानान्तरणकुले लघु दृढं उपकरणम्।';

  @override
  String get gameHintWord352Datasync => 'AWS स्वचालिता ऑनलाइन दत्तांशस्थानान्तरणसेवा।';

  @override
  String get gameHintWord353Msk => 'AWS प्रबन्धितस्य Apache Kafka सेवायाः संक्षेपः।';

  @override
  String get gameHintWord354Backup => 'पुनःप्राप्तये धृता दत्तांशस्य प्रतिलिपिः।';

  @override
  String get gameHintWord355Transcribe => 'भाषणं पाठे परिवर्तयति AWS सेवा।';

  @override
  String get gameHintWord356Translate => 'भाषाणां मध्ये पाठम् अनुवदति AWS सेवा।';

  @override
  String get gameHintWord357Rekognition => 'चित्राणि वीडियो च विश्लेषयति AWS सेवा।';

  @override
  String get gameHintWord358Comprehend => 'AWS प्राकृतभाषाविश्लेषणसेवा।';

  @override
  String get gameHintWord359Textract => 'प्रलेखेभ्यः पाठं सारणीश्च निष्कासयति AWS सेवा।';

  @override
  String get gameHintWord360Sagemaker => 'यन्त्रशिक्षणप्रतिरूपाणि निर्मातुं नियोजयितुं च AWS मञ्चः।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud वैश्विकतया वितरितः सम्बन्धात्मकः दत्तांशकोशः।';

  @override
  String get gameHintWord362Pub => 'प्रकाशन-सदस्यता सन्देशप्रतिरूपस्य प्रकाशकार्धम्।';

  @override
  String get gameHintWord363Sub => 'प्रकाशन-सदस्यता सन्देशप्रतिरूपस्य सदस्यार्धम्।';

  @override
  String get gameHintWord364Functions => 'सर्वररहितमञ्चैः प्रदत्ताः घटनाचालिताः कोडइकाइयः।';

  @override
  String get gameHintWord365App => 'सॉफ्टवेयरानुप्रयोगस्य संक्षिप्तं रूपम्।';

  @override
  String get gameHintWord366Engine => 'Compute Engine सदृशेषु नामसु निष्पादनघटकः।';

  @override
  String get gameHintWord367Compute => 'आभासीयन्त्रैः पात्रैः वा प्रदत्ता संसाधनक्षमता।';

  @override
  String get gameHintWord368Network => 'दत्तांशं विनिमयन्तः संयुक्ताः व्यवस्थाः।';

  @override
  String get gameHintWord369Security => 'धमकीभ्यः व्यवस्थानां सूचनायाश्च संरक्षणम्।';

  @override
  String get gameHintWord370Identity => 'प्रवेशनिर्णयार्थं प्रयुक्तं उपयोक्तुः सेवायाः वा निरूपणम्।';

  @override
  String get gameHintWord371Monitoring => 'व्यवस्थास्वास्थ्यस्य व्यवहारस्य च निरन्तरं निरीक्षणम्।';

  @override
  String get gameHintWord372Logging => 'पृथक्पृथक् अनुप्रयोगव्यवस्थाघटनानाम् अभिलेखनम्।';

  @override
  String get gameHintWord373Trace => 'सेवाआह्वानेषु अनुरोधमार्गस्य अभिलेखः।';

  @override
  String get gameHintWord374Metrics => 'कालक्रमेण व्यवस्थाव्यवहारस्य सङ्ख्यात्मकमापनानि।';

  @override
  String get gameHintWord375Alert => 'निरीक्षिता स्थितिः ध्यानम् अपेक्षते इति सूचना।';

  @override
  String get gameHintWord376Billing => 'उपभुक्तमेघसेवानां अनुसरणं शुल्कग्रहणं च।';

  @override
  String get gameHintWord377Quota => 'उपभोक्तुं शक्यस्य संसाधनपरिमाणस्य सीमा।';

  @override
  String get gameHintWord378Region => 'उपलब्धताक्षेत्राणि धारयन् भौगोलिकः मेघनियोजनक्षेत्रम्।';

  @override
  String get gameHintWord379Tenancy => 'ग्राहकाः आधारसंरचनां कथं साझां कुर्वन्ति इति वर्णयन् व्यवस्था।';

  @override
  String get gameHintWord380Regional => 'मेघक्षेत्रे व्याप्तं संसाधनं वर्णयति।';

  @override
  String get gameHintWord381Cosmos => 'Azure वैश्विकतया वितरितस्य बहुप्रतिरूपदत्तांशकोशस्य नाम।';

  @override
  String get gameHintWord382Synapse => 'गोदामं दत्तांशसंसाधनं च संयोजयन् Azure विश्लेषणमञ्चः।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft मेघदेशीयः सुरक्षासूचनाघटनामञ्चः।';

  @override
  String get gameHintWord384Defender => 'मेघकार्यभारान् रक्षति Microsoft सुरक्षोत्पादकुलम्।';

  @override
  String get gameHintWord385Entra => 'Azure AD नामकरणं प्रतिस्थापयति Microsoft परिचयोत्पादकुलम्।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager इत्यस्य संक्षेपः।';

  @override
  String get gameHintWord387Arc => 'Azure बहिः संसाधनेषु प्रबन्धनं विस्तारयति Azure सेवा।';

  @override
  String get gameHintWord388Aks => 'Azure प्रबन्धितस्य Kubernetes सेवायाः संक्षेपः।';

  @override
  String get gameHintWord389Armor => 'Google Cloud जालसंरक्षणसेवानाम्नः प्रत्ययः।';

  @override
  String get gameHintWord390Blob => 'Azure वस्तुसङ्ग्रहदत्तांशप्रकारः।';

  @override
  String get gameHintWord391Files => 'प्रबन्धितानि जालसञ्चिकासाझास्थानानि प्रददाति Azure सेवा।';

  @override
  String get gameHintWord392Disk => 'आभासीयन्त्रे संलग्नं खण्डसङ्ग्रहणोपकरणम्।';

  @override
  String get gameHintWord393Function => 'फलं प्रत्यर्पयितुं शक्यः आह्वानीयः कोडखण्डः।';

  @override
  String get gameHintWord394Logic => 'workflow समाकलनार्थं Azure अनुप्रयोगसेवावर्गः।';

  @override
  String get gameHintWord395Insights => 'Azure अनुप्रयोगटेलीमेट्रीउत्पादनाम्नः प्रत्ययः।';

  @override
  String get gameHintWord396Traffic => 'जालान्तबिन्दूनां मध्ये प्रवहन् दत्तांशः।';

  @override
  String get gameHintWord397Manager => 'Azure Resource इत्यस्य नियन्त्रणतलस्य उत्पादनाम्नः प्रत्ययः।';

  @override
  String get gameHintWord398Bastion => 'निजीयजमानप्रवेशार्थं प्रबन्धितः दृढीकृतः वा प्रवेशबिन्दुः।';

  @override
  String get gameHintWord399Front => 'Azure वैश्विकप्रवेशबिन्दुसेवायां Front Door इत्यस्मिन् प्रथमं पदम्।';

  @override
  String get gameHintWord400Door => 'Azure वैश्विकप्रवेशबिन्दुसेवायां Front Door इत्यस्मिन् द्वितीयं पदम्।';

  @override
  String get gameHintWord401Javascript => 'ब्राउज़रेषु Node runtime मध्ये च बहुप्रयुक्ता प्रोग्रामिंग्भाषा।';

  @override
  String get gameHintWord402Perl => 'पाठसंसाधनेन नियमितव्यञ्जकैश्च प्रसिद्धा स्क्रिप्टिंग्भाषा।';

  @override
  String get gameHintWord403Powershell => 'Microsoft इत्यस्य वस्तुकेन्द्रितः शेलः स्वचालनभाषा च।';

  @override
  String get gameHintWord404Java => 'Jenkins निर्मातुं प्रयुक्ता JVM भाषा।';

  @override
  String get gameHintWord405Json => 'वस्तुभिः सारणीभिश्च युक्तं लघुदत्तांशस्वरूपम्।';

  @override
  String get gameHintWord406Xml => 'नामितैः सन्निविष्टैः tags प्रयुञ्जानं markup स्वरूपम्।';

  @override
  String get gameHintWord407Html => 'जालपृष्ठानां संरचनार्थं प्रयुक्ता markup भाषा।';

  @override
  String get gameHintWord408Css => 'जालप्रस्तुतिं नियन्त्रयति शैलीपत्रभाषा।';

  @override
  String get gameHintWord409String => 'पाठवर्णानां क्रमः।';

  @override
  String get gameHintWord410Array => 'अनुक्रमितानां तत्त्वानां सङ्ग्रहः।';

  @override
  String get gameHintWord411Hash => 'Ruby Perl च मध्ये साहचर्यात्मकः कुञ्जी-मूल्य सङ्ग्रहः।';

  @override
  String get gameHintWord412Object => 'गुणैः व्यवहारेण च युक्तं runtime मूल्यम्।';

  @override
  String get gameHintWord413Class => 'वर्गाधारितभाषासु वस्तूनि निर्मातुं प्रयुक्ता परिभाषा।';

  @override
  String get gameHintWord414Method => 'वस्तुना वर्गेण वा सम्बद्धं फलनम्।';

  @override
  String get gameHintWord415Interface => 'घटकेन प्रकाशिताः क्रियाः वर्णयन् सन्धिः।';

  @override
  String get gameHintWord416Subclass => 'अन्यस्मात् वर्गात् व्युत्पन्नः वर्गः।';

  @override
  String get gameHintWord417Super => 'पितृवर्गव्यवहारम् आह्वातुं प्रयुक्तः कीवर्ड।';

  @override
  String get gameHintWord418Protected => 'प्रवेशं वर्गसम्बद्धसन्दर्भेषु सीमितं करोति दृश्यतास्तरः।';

  @override
  String get gameHintWord419Exception => 'सामान्यनियन्त्रणप्रवाहं बाधमाना runtime स्थितिः।';

  @override
  String get gameHintWord420Regex => 'पाठमेलनार्थं प्रयुक्ता प्रतिरूपसङ्केतना।';

  @override
  String get gameHintWord421Lexical => 'स्रोतकोडसंरचनया निर्धारितां व्याप्तिं वर्णयति।';

  @override
  String get gameHintWord422Scalar => 'Perl मध्ये एकमूल्ययुक्तः चरवर्गः।';

  @override
  String get gameHintWord423Tuple => 'Python मध्ये अपरिवर्तनीयः क्रमबद्धः सङ्ग्रहः।';

  @override
  String get gameHintWord424List => 'Python मध्ये परिवर्तनीयः क्रमबद्धः सङ्ग्रहः।';

  @override
  String get gameHintWord425Dict => 'Python अन्तर्निर्मितस्य mapping प्रकारस्य नाम।';

  @override
  String get gameHintWord426Dictionary => 'कुञ्जीः सम्बद्धमूल्यैः सह मापयन् सङ्ग्रहः।';

  @override
  String get gameHintWord427Set => 'विशिष्टमूल्यानां सङ्ग्रहः।';

  @override
  String get gameHintWord428Boolean => 'सत्यम् असत्यं वा निरूपयति दत्तांशप्रकारः।';

  @override
  String get gameHintWord429Integer => 'पूर्णाङ्कान् निरूपयति सङ्ख्याप्रकारः।';

  @override
  String get gameHintWord430Float => 'floating-point मूल्यानि निरूपयति सङ्ख्याप्रकारः।';

  @override
  String get gameHintWord431Double => 'द्विगुणशुद्धतायुक्तः floating-point प्रकारः।';

  @override
  String get gameHintWord432Null => 'वस्तुनः फलस्य वा अभावं निरूपयति मूल्यम्।';

  @override
  String get gameHintWord433Undefined => 'अनुपस्थितस्य नियुक्तमूल्यस्य कृते JavaScript मूल्यम्।';

  @override
  String get gameHintWord434Promise => 'भविष्यत्कालिकं असमकालिकं फलं निरूपयति JavaScript वस्तु।';

  @override
  String get gameHintWord435Async => 'असमकालिकं फलनं चिह्नयति कीवर्ड।';

  @override
  String get gameHintWord436Await => 'असमकालिकफलं प्रतीक्षते कीवर्ड।';

  @override
  String get gameHintWord437Callback => 'अन्यया क्रियया आह्वातुं प्रदत्तं फलनम्।';

  @override
  String get gameHintWord438Closure => 'परितः लेक्सिकल् व्याप्तेः प्रवेशं धारयति फलनम्।';

  @override
  String get gameHintWord439Generator => 'yield मूल्यैः आलस्येन क्रमं जनयति फलनम्।';

  @override
  String get gameHintWord440Iterator => 'सङ्ग्रहे मूल्येषु अग्रे गच्छति वस्तु।';

  @override
  String get gameHintWord441Print => 'मूल्यं निर्गमे लिखति सामान्यं फलनम्।';

  @override
  String get gameHintWord442Input => 'मानकनिवेशात् पङ्क्तिं पठति Python फलनम्।';

  @override
  String get gameHintWord443Open => 'सञ्चिकाहस्तकं प्राप्तुं प्रयुक्तं फलनम्।';

  @override
  String get gameHintWord444Close => 'उद्घाटितां सञ्चिकां संयोजनं वा मुञ्चति क्रिया।';

  @override
  String get gameHintWord445Read => 'प्रवाहात् सञ्चिकातः वा दत्तांशं प्राप्नोति क्रिया।';

  @override
  String get gameHintWord446Write => 'प्रवाहं सञ्चिकां वा दत्तांशं प्रेषयति क्रिया।';

  @override
  String get gameHintWord447Append => 'सङ्ग्रहस्य अन्ते वस्तु योजयति।';

  @override
  String get gameHintWord448Split => 'विभाजकेन पाठं उपपाठेषु विभजति।';

  @override
  String get gameHintWord449Join => 'विभाजकेन strings क्रमं संयोजयति।';

  @override
  String get gameHintWord450Strip => 'Python string तः परितः रिक्तस्थानं अपनयति।';

  @override
  String get gameHintWord451Chomp => 'Perl Ruby वा मध्ये अन्त्यम् अभिलेखविभाजकं अपनयति।';

  @override
  String get gameHintWord452Map => 'सङ्ग्रहस्य प्रत्येकं वस्तुनि परिवर्तनं प्रयुनक्ति।';

  @override
  String get gameHintWord453Filter => 'विधेयं पूरयन्ति सङ्ग्रहवस्तूनि रक्षति।';

  @override
  String get gameHintWord454Reduce => 'सङ्ग्रहं सञ्चितफले संयोजयति।';

  @override
  String get gameHintWord455Range => 'पूर्णाङ्कानां गणितक्रमं निरूपयति Python प्रकारः।';

  @override
  String get gameHintWord456Length => 'सङ्ग्रहस्य आकारं प्रत्यर्पयति गुणः विधिः वा।';

  @override
  String get gameHintWord457Len => 'सङ्ग्रहस्य आकारं प्रत्यर्पयति Python अन्तर्निर्मितं फलनम्।';

  @override
  String get gameHintWord458Type => 'वस्तुप्रकारं प्रत्यर्पयति Python फलनम्।';

  @override
  String get gameHintWord459Isinstance => 'प्रकारक्रमे सदस्यतां परीक्षते Python फलनम्।';

  @override
  String get gameHintWord460Yield => 'generator तः मूल्यं जनयति कीवर्ड।';

  @override
  String get gameHintWord461Saas => 'सम्पूर्णान् सॉफ्टवेयरानुप्रयोगान् प्रदाति मेघप्रतिरूपम्।';

  @override
  String get gameHintWord462Paas => 'प्रबन्धितं अनुप्रयोगविकासमञ्चं प्रददाति मेघप्रतिरूपम्।';

  @override
  String get gameHintWord463Iaas => 'आभासीं गणनां सङ्ग्रहणं जालं च प्रददाति मेघप्रतिरूपम्।';

  @override
  String get gameHintWord464Hybrid => 'निजीं सार्वजनिकीं च आधारसंरचनां संयोजयन् मेघदृष्टिकोणः।';

  @override
  String get gameHintWord465Archive => 'विरलप्रवेश्यदत्तांशस्य दीर्घकालीनं सङ्ग्रहणम्।';

  @override
  String get gameHintWord466Public => 'बहुभ्यः ग्राहकेभ्यः सेवाः प्रददाति मेघस्वामित्वप्रतिरूपम्।';

  @override
  String get gameHintWord467Private => 'एकस्य संस्थानस्य कृते समर्पितं मेघप्रतिरूपम्।';

  @override
  String get gameHintWord468Scalability => 'संसाधनानि योजयित्वा वर्धमानं भारं सोढुं क्षमता।';

  @override
  String get gameHintWord469Availability => 'सेवा आवश्यकतासमये कियत् सुगम्या तिष्ठति इति मात्रा।';

  @override
  String get gameHintWord470Resilience => 'विफलताः सोढुं ततः पुनः उत्थातुं च क्षमता।';

  @override
  String get gameHintWord471Redundancy => 'एकबिन्दुविफलताः न्यूनीकुर्वन्तः द्विगुणिताः घटकाः।';

  @override
  String get gameHintWord472Disaster => 'पुनःप्राप्तिरणनीत्या सम्बोध्यमानः बृहद् अवरोधः।';

  @override
  String get gameHintWord473Recovery => 'विफलतायाः अनन्तरं सेवां दत्तांशं वा पुनःस्थापनम्।';

  @override
  String get gameHintWord474Replicate => 'दत्तांशं कार्यभारान् वा अन्यस्मिन् स्थाने प्रतिलिपयति।';

  @override
  String get gameHintWord475Snapshotting => 'दत्तांशस्य व्यवस्थास्थितेः वा कालबिन्दुप्रतिलिपीनां ग्रहणम्।';

  @override
  String get gameHintWord476Restore => 'रक्षितप्रतिलिपितः दत्तांशं पुनःप्राप्नोति क्रिया।';

  @override
  String get gameHintWord477Residency => 'सङ्गृहीतदत्तांशस्य भौगोलिकं स्थानं निर्धारयति आवश्यकता।';

  @override
  String get gameHintWord478Compliance => 'आवश्यकनियमानां संस्थागतनियन्त्रणानां च पालनम्।';

  @override
  String get gameHintWord479Governance => 'प्रौद्योगिक्याः उपयोगं नियन्त्रयन्तः नीतयः प्रक्रियाश्च।';

  @override
  String get gameHintWord480Audit => 'अभिलिखितक्रियाणां अनुपालनप्रमाणानां च समीक्षा।';

  @override
  String get gameHintWord481Token => 'अधिकारं परिचयं वा निरूपयति प्रमाणपत्रं चिह्नं वा।';

  @override
  String get gameHintWord482Oauth => 'प्रत्यायोजितं प्रवेशम् अनुमन्यमानः अधिकारचौखटः।';

  @override
  String get gameHintWord483Saml => 'उद्यमस्य एकलप्रवेशार्थं बहुधा प्रयुक्तं XML-आधारितं मानकम्।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell pipelines मध्ये प्रयुक्तः विशिष्टः आदेशः।';

  @override
  String get gameHintWord485Algorithm => 'गणनासमस्यां समाधातुं परिभाषितः चरणक्रमः।';

  @override
  String get gameHintWord486Key => 'गूढीकरणं नियन्त्रयितुं सङ्गृहीतदत्तांशं परिचेतुं वा प्रयुक्तं मूल्यम्।';

  @override
  String get gameHintWord487Alias => 'शेलादेशस्य संसाधनस्य वा वैकल्पिकं नाम।';

  @override
  String get gameHintWord488Amend => 'सर्वशेषं commit प्रतिस्थापयति Git commit विकल्पः।';

  @override
  String get gameHintWord489Allsigned => 'हस्ताक्षरितान् स्क्रिप्ट्स् अपेक्षमाणा PowerShell निष्पादननीतिः।';

  @override
  String get gameHintWord490Remotesigned => 'अवतारितेषु स्क्रिप्ट्स्सु हस्ताक्षराणि अपेक्षमाणा PowerShell नीतिः।';

  @override
  String get gameHintWord491Acl => 'उपयोक्तॄणां व्यवस्थानां वा अनुमतीः परिभाषयन् सूची।';

  @override
  String get gameHintWord492Uid => 'Unix उपयोक्त्रे दत्तः सङ्ख्यात्मकः परिचायकः।';

  @override
  String get gameHintWord493Setgid => 'निष्पादनकाले उत्तराधिकारे वा समूहपरिचयं प्रभावयति अनुमतिबिट्।';

  @override
  String get gameHintWord494Setfacl => 'सञ्चिकाप्रवेशनियन्त्रणसूचीः स्थापयति Linux आदेशः।';

  @override
  String get gameHintWord495Isolation => 'कार्यभाराणां परस्परबाधां निवारयन् पृथक्करणम्।';

  @override
  String get gameHintWord496Sighup => 'विन्यासपुनर्भारणम् अनुरोद्धुं बहुधा प्रयुक्तः Unix hangup संकेतः।';

  @override
  String get gameHintWord497Sigint => 'बहुधा Control-C द्वारा जनितः Unix interrupt संकेतः।';

  @override
  String get gameHintWord498Sigstop => 'प्रक्रियां समाप्तिं विना विरमयति Unix संकेतः।';

  @override
  String get gameHintWord499Secrets => 'गुप्तशब्दाः प्रवेशकुञ्जयः इत्यादयः संवेदनशीलमूल्यानि।';

  @override
  String get gameHintWord500Secure => 'अनधिकृतप्रवेशात् रक्षितं संयोजनं वर्णयति।';

  @override
  String get fontSettingsTitle => 'अक्षररूपम्';

  @override
  String get fontChangeFont => 'अक्षररूपं परिवर्तयतु';

  @override
  String get fontSystemDefault => 'प्रणाली-पूर्वनिर्धारितम्';

  @override
  String get fontPreview => 'पूर्वदर्शनम्';

  @override
  String get fontPreviewSample => 'एकैकेन प्रश्नेन DevOps पठतु';

  @override
  String get fontSelected => 'चितम्';

  @override
  String get fontLatinOnlyNote => 'स्वनिर्मित-अक्षररूपाणि लैटिन-अक्षरेषु प्रयुज्यन्ते। अन्याः लिपयः भवतः यन्त्रस्य अक्षररूपे एव तिष्ठन्ति।';

  @override
  String get fontDescSystem => 'भवतः यन्त्रस्य अन्तर्निहितम् अक्षररूपम्';

  @override
  String get fontDescGeometric => 'ज्यामितीयं सान्स-सेरिफ्';

  @override
  String get fontDescGeometricRounded => 'ज्यामितीयं वर्तुलं सान्स-सेरिफ्';

  @override
  String get fontDescFriendly => 'सौम्यं सान्स-सेरिफ्';

  @override
  String get fontDescCondensed => 'सङ्कुचितम्';

  @override
  String get fontDescRounded => 'वर्तुलं सान्स-सेरिफ्';

  @override
  String get fontDescRoundedDisplay => 'वर्तुलं प्रदर्शन-रूपम्';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्यम् $value1';
  }
}
