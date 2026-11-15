// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTour => 'एप परिचय';

  @override
  String get skipTour => 'परिचय छोड्नुहोस्';

  @override
  String get finishTour => 'परिचय पूरा गर्नुहोस्';

  @override
  String tourStep(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेभिगेसन मेनु';

  @override
  String get tourSearch => 'सम्बन्धित क्विजका वर्गहरू खोज्न यहाँ विषय लेख्नुहोस्।';

  @override
  String get tourCategory => 'मिश्रित क्विजका लागि DevOps थिच्नुहोस्। अन्य वर्गमा प्रश्नसेट छन्। पछि पढ्न प्रश्नहरू बुकमार्क गर्नुहोस्।';

  @override
  String get tourMenu => 'नेभिगेसन मेनु खोल्न यो बटन थिच्नुहोस्।';

  @override
  String get tourLearning => 'कार्डका लागि सिकाइ खोल्नुहोस्। जुनसुकै दिशामा स्वाइप गर्नुहोस्, शफल गर्नुहोस्, स्वतः परिवर्तन चलाउनुहोस् वा कार्ड बुकमार्क गर्नुहोस्।';

  @override
  String get tourGames => 'खेल खेलेर अङ्क कमाउनुहोस्। स्तर भएका खेलमा हरेक पूरा स्तरले 100 अङ्क दिन्छ; सङ्केतको मूल्य 20 अङ्क हो।';

  @override
  String get tourAchievements => 'आफ्ना उपलब्धिहरू यहाँ हेर्नुहोस्। नयाँ उपलब्धि र उपलब्ध थिम पपअपमा देखाइन्छन्।';

  @override
  String get tourSettings => 'भाषा, थिम र आवाज छान्नुहोस्। बुकमार्कका लागि सुरक्षित गरिएका डेटा वा यो गाइड फेरि हेर्न एप परिचय खोल्नुहोस्।';

  @override
  String get achievementUnlocked => 'उपलब्धि अनलक भयो!';

  @override
  String get themeUnlocked => 'नयाँ थिम उपलब्ध छ!';

  @override
  String get themeUnlockedMessage => 'अब सेटिङहरू > थिमहरूमा यो थिम छान्न सक्नुहुन्छ।';

  @override
  String get gameSounds => 'खेलका आवाजहरू';

  @override
  String get gameSoundsDescription => 'खेल र क्विजका ध्वनि प्रभावहरू। उपकरणको आवाज र साइलेन्ट मोड जाँच्नुहोस्।';

  @override
  String get testSound => 'आवाज जाँच्नुहोस्';

  @override
  String get soundSettingBusy => 'कृपया पर्खनुहोस्...';

  @override
  String get soundSettingError => 'आवाजको सेटिङ लोड वा सुरक्षित गर्न सकिएन। फेरि प्रयास गर्नुहोस्।';

  @override
  String get soundPlaybackError => 'आवाज बजाउन सकिएन। उपकरण वा ब्राउजरको अडियो सेटिङ जाँच्नुहोस्।';

  @override
  String get saveData => 'सुरक्षित गरिएका डेटा';

  @override
  String get learningTranslationUnavailable => 'यो कार्ड चयन गरिएको भाषामा अझै अनुवाद गरिएको छैन।';

  @override
  String get saveQuestion => 'प्रश्न सुरक्षित गर्नुहोस्';

  @override
  String defaultPortQuestion(String service) {
    return '$service को पूर्वनिर्धारित पोर्ट कुन हो?';
  }

  @override
  String get removeSavedItem => 'सुरक्षित गरिएकाबाट हटाउनुहोस्';

  @override
  String get noSavedData => 'अहिलेसम्म केही सुरक्षित गरिएको छैन। सिक्ने कार्ड वा क्विजका प्रश्नहरू बुकमार्क गर्नुहोस्।';

  @override
  String get savedDataError => 'सुरक्षित गरिएका डेटा लोड वा अद्यावधिक गर्न सकिएन। फेरि प्रयास गर्नुहोस्।';

  @override
  String get savedItemUnavailable => 'यो सुरक्षित गरिएको सामग्री अब उपलब्ध छैन।';

  @override
  String get correctAnswer => 'सही उत्तर';

  @override
  String get retry => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get certificates => 'प्रमाणपत्रहरू';

  @override
  String get whatsNew => 'नयाँ के छ';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get darkMode => 'गाढा मोड';

  @override
  String get lightMode => 'उज्यालो मोड';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा छान्नुहोस्';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'क्विज सुरु गर्नुहोस्';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'वर्ग बदल्नुहोस्';

  @override
  String get dailyQuiz => 'दैनिक क्विज';

  @override
  String get dailyQuizCompleted => 'दैनिक क्विज पूरा भयो';

  @override
  String get dailyQuizCompletedMessage => 'तपाईंले आजको दैनिक क्विज पूरा गरिसक्नुभयो। नयाँ चुनौतीका लागि भोलि आउनुहोस्!';

  @override
  String get leaderboard => 'अग्रसूची';

  @override
  String get shareApp => 'एप साझा गर्नुहोस्';

  @override
  String get rateApp => 'एपलाई मूल्याङ्कन गर्नुहोस्';

  @override
  String get about => 'बारेमा';

  @override
  String get ok => 'ठीक छ';

  @override
  String get home => 'गृहपृष्ठ';

  @override
  String get games => 'खेलहरू';

  @override
  String get referAndEarn => 'सिफारिस गरेर कमाउनुहोस्';

  @override
  String get themes => 'थिमहरू';

  @override
  String get version => 'संस्करण';

  @override
  String get developer => 'विकासकर्ता';

  @override
  String get contact => 'सम्पर्क';

  @override
  String get learning => 'सिकाइ';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'मसँग जोडिनुहोस्';

  @override
  String get aboutDescription => 'DevOps Quizबाट Linux, Docker, Kubernetes र अन्य DevOps विषय सिकेर अन्तर्वार्ता र प्रमाणपत्रका लागि तयारी गर्नुहोस्।';

  @override
  String get quizResult => 'क्विजको नतिजा';

  @override
  String get outstanding => 'उत्कृष्ट!';

  @override
  String get greatJob => 'राम्रो गर्नुभयो!';

  @override
  String get goodEffort => 'राम्रो प्रयास!';

  @override
  String get keepPracticing => 'अभ्यास जारी राख्नुहोस्!';

  @override
  String get dontGiveUp => 'हार नमान्नुहोस्!';

  @override
  String get shareMessage1 => 'मेरो स्कोर';

  @override
  String get shareMessage2 => 'DevOps क्विजमा!';

  @override
  String get downloadApp => 'एप डाउनलोड गर्नुहोस्:';

  @override
  String get score => 'स्कोर';

  @override
  String get points => 'अङ्क';

  @override
  String get percentage => 'प्रतिशत';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'पूर्ण स्कोर बोनस';

  @override
  String get shareScore => 'स्कोर साझा गर्नुहोस्';

  @override
  String get restartQuiz => 'क्विज फेरि सुरु गर्नुहोस्';

  @override
  String get backToCategories => 'वर्गहरूमा फर्कनुहोस्';

  @override
  String get greatProgress => 'राम्रो गर्नुभयो! तपाईं राम्रो प्रगति गर्दै हुनुहुन्छ।';

  @override
  String get practiceMore => 'राम्रो प्रयास! थप अभ्यासले स्कोर बढ्नेछ।';

  @override
  String get keepLearning => 'सिकिरहनुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get everyExpertStarted => 'हरेक विशेषज्ञ सुरुमा सिकारु नै थियो। अभ्यास जारी राख्नुहोस्!';

  @override
  String get quizInstructions => 'क्विजका निर्देशनहरू';

  @override
  String get instruction1 => 'हरेक सेटमा 25 प्रश्न हुन्छन्।';

  @override
  String get instruction2 => 'हरेक प्रश्नका लागि 30 सेकेन्ड हुन्छ।';

  @override
  String get instruction3 => 'हरियो = सही उत्तर।';

  @override
  String get instruction4 => 'रातो = गलत उत्तर।';

  @override
  String get instruction5 => 'उत्तर बदल्न सकिँदैन।';

  @override
  String get instruction6 => 'पछाडि बटन समीक्षाका लागि मात्र हो।';

  @override
  String get instruction7 => 'पूरा भएपछि स्कोर देखाइन्छ।';

  @override
  String get instruction8 => 'हरेक सही उत्तरमा 10 अंक पाइन्छ।';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्ट प्रदर्शन! तपाईं एक $expert हुनुहुन्छ।';
  }

  @override
  String get selectCategory => 'वर्ग छान्नुहोस्';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'सेट छान्नुहोस्';

  @override
  String get set => 'सेट';

  @override
  String get questions => 'प्रश्नहरू';

  @override
  String get noScoresYet => 'अहिलेसम्म कुनै स्कोर छैन';

  @override
  String get pointsShort => 'अङ्क';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizमा स्वागत छ';

  @override
  String hiUser(String name) {
    return 'नमस्ते $name';
  }

  @override
  String get challengeMode => 'चुनौती मोड';

  @override
  String get challenge => 'चुनौती';

  @override
  String get question => 'प्रश्न';

  @override
  String get reward => 'पुरस्कार';

  @override
  String get survivalMode => 'सर्वाइभल मोड';

  @override
  String get speedChallenge => 'गतिको चुनौती';

  @override
  String get dailyChallenge => 'दैनिक चुनौती';

  @override
  String get ultimateChallenge => 'अन्तिम चुनौती';

  @override
  String get timeLeft => 'बाँकी समय';

  @override
  String get completed => 'पूरा भयो';

  @override
  String get locked => 'बन्द गरिएको';

  @override
  String get back => 'पछाडि';

  @override
  String get next => 'अर्को';

  @override
  String get submit => 'पेस गर्नुहोस्';

  @override
  String get achievements => 'उपलब्धिहरू';

  @override
  String get streak => 'निरन्तरता';

  @override
  String get days => 'दिनहरू';

  @override
  String get tomorrowsReward => 'भोलिको पुरस्कार';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 मेरो स्कोर $score/$totalQuestions #DevOps Quiz!\n\n🏆 अङ्क: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 प्रतिशत: $percentage%\n\nएप डाउनलोड गर्नुहोस्:';
  }

  @override
  String get gameUiSpinWheel => 'चक्का घुमाउनुहोस्';

  @override
  String get gameUiSpinAndWinBonusPoints => 'घुमाउनुहोस् र बोनस अंक जित्नुहोस्';

  @override
  String get gameUiScratchCard => 'स्क्र्याच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'पुरस्कार देखाउन स्क्र्याच गर्नुहोस्';

  @override
  String get gameUiLuckySlots => 'लकी स्लट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लट घुमाउनुहोस् र अंक जित्नुहोस्';

  @override
  String get gameUiMysteryDeal => 'रहस्यमय डिल';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'रहस्यमय बक्स छान्नुहोस् र उत्तर दिनुहोस्';

  @override
  String get gameUiMemoryMatch => 'मेमोरी म्याच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोडीहरू मिलाउनुहोस्';

  @override
  String get gameUiWordGuess => 'शब्द अनुमान';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'तहहरू पार गर्दै DevOps शब्दहरू अनुमान गर्नुहोस्';

  @override
  String get gameUiFindWords => 'शब्दहरू खोज्नुहोस्';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिडमा लुकेका DevOps शब्दहरू खोज्नुहोस्';

  @override
  String get gameUiSpotTheDifference => 'भिन्नता पत्ता लगाउनुहोस्';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दुई चित्रित दृश्यहरूबीच पाँच परिवर्तन फेला पार्नुहोस्';

  @override
  String get gameUiJigsawPuzzle => 'जिगसा पजल';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'साझा गरिएका HD पशु र प्रकृतिका तस्बिरहरू पुनः जोड्नुहोस्';

  @override
  String get gameUiHighOrLow => 'उच्च वा न्यून';

  @override
  String get gameUiBuildAStreak => 'लगातार जितको शृङ्खला बनाउनुहोस्';

  @override
  String get gameUiTrueOrFalseBlitz => 'सही वा गलत ब्लिट्ज';

  @override
  String get gameUiQuickAnswerQuiz => 'छिटो उत्तर क्विज';

  @override
  String get gameUiCommandMatch => 'कमाण्ड म्याच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमाण्डहरूलाई अर्थसँग मिलाउनुहोस्';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'पूर्वनिर्धारित पोर्टहरू अनुमान गर्नुहोस्';

  @override
  String get gameUiTicTacToe => 'टिक-ट्याक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X शून्य र क्रस कम्प्युटर';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चार डिस्क खसाल्नुहोस्';

  @override
  String get gameUiLudo => 'लुडो';

  @override
  String get gameUiRaceAgainstBots => 'बटहरूसँग दौड गर्नुहोस्';

  @override
  String get gameUiChess => 'चेस';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'चेस बोर्ड वैध चाल दुई खेलाडी';

  @override
  String get gameUiSnakeAndLadders => 'सर्प र भर्याङ';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'पासा बोर्ड सर्प भर्याङ दुई खेलाडी';

  @override
  String get gameUiGames => 'खेलहरू 🎮';

  @override
  String get gameUiPlayEarn => 'खेल्नुहोस् र कमाउनुहोस्';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'खेल खेल्नुहोस् र बोनस अंक कमाउनुहोस्!';

  @override
  String get gameUiSearchGames => 'खेलहरू खोज्नुहोस्';

  @override
  String get gameUiClearSearch => 'खोजी हटाउनुहोस्';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" सँग मिल्ने कुनै खेल छैन';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'घुमाउनुहोस् र बोनस अंक जित्नुहोस्।';

  @override
  String get gameUiScratchToRevealYourReward => 'आफ्नो पुरस्कार देखाउन स्क्र्याच गर्नुहोस्।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लट घुमाउनुहोस् र अंक जित्नुहोस्।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'रहस्यमय बक्स छान्नुहोस् र अंक जित्न सही उत्तर दिनुहोस्।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'अंक कमाउन DevOps जोडीहरू मिलाउनुहोस्।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 प्रयासमा DevOps शब्द अनुमान गर्नुहोस्।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिडमा लुकेका DevOps शब्दहरू खोज्नुहोस्।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 तहमा DevOps शब्दहरू खोज्न स्वाइप गर्नुहोस्।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दुई चित्रित दृश्यहरूबीच पाँच परिवर्तन फेला पार्नुहोस्।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'साझा गरिएका HD पशु र प्रकृतिका तस्बिरहरू पुनः जोड्नुहोस्।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'लगातार जितको शृङ्खला बनाउनुहोस् र आफ्ना अंक सुरक्षित गर्नुहोस्।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'छिटो उत्तरहरूद्वारा समयलाई जित्नुहोस्।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'सही वा गलत ब्लिट्ज 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमाण्डहरूलाई तिनले गर्ने कामसँग मिलाउनुहोस्।';

  @override
  String get gameUiCommandMatch670a76e => 'कमाण्ड म्याच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जीवनसहित पूर्वनिर्धारित पोर्टहरू अनुमान गर्नुहोस्।';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'कम्प्युटरविरुद्ध O/X खेल्नुहोस्।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जित्न एउटै लाइनमा चार डिस्क खसाल्नुहोस्।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'आफ्ना गोटीहरू तीन बटहरूविरुद्ध दौडाउनुहोस्।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'वैध चालसहित स्थानीय दुई खेलाडीको चेस।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'वैध नियमअनुसार दुई खेलाडीको चेस खेल्नुहोस्।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दुई खेलाडीको पासा बोर्ड खेल।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 सम्म दौडनुहोस्। भर्याङ चढ्नुहोस् र सर्पबाट जोगिनुहोस्।';

  @override
  String get gameUiPlay => 'खेल्नुहोस्';

  @override
  String get gameUiWheelStopped => 'चक्का रोकियो!';

  @override
  String get gameUiYourRewardIs => 'तपाईंको पुरस्कार हो';

  @override
  String get gameUiPOINTS => 'अंक';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'यो पुरस्कार प्राप्त गर्न 1 क्विज प्रश्नको सही उत्तर दिनुहोस्।';

  @override
  String get gameUiWrongAnswerRewardLost => 'गलत उत्तर = पुरस्कार गुम्यो।';

  @override
  String get gameUiAnswerQuestion => 'प्रश्नको उत्तर दिनुहोस्';

  @override
  String get gameUiSpinWheele449982 => '🎡 चक्का घुमाउनुहोस्';

  @override
  String get gameUiDailySpin => 'दैनिक स्पिन';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'चक्का घुमाउनुहोस्, त्यसपछि आफ्नो पुरस्कार प्राप्त गर्न प्रश्नको उत्तर दिनुहोस्!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'तपाईंले आजको स्पिन पहिले नै प्रयोग गरिसक्नुभएको छ।';

  @override
  String get gameUiSpinning => 'घुमिरहेको छ...';

  @override
  String get gameUiSPINNOW => 'अहिले घुमाउनुहोस्';

  @override
  String get gameUiCOMEBACKTOMORROW => 'भोलि फेरि आउनुहोस्';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'आजको पुरस्कार: ⭐ $value1 अंक';
  }

  @override
  String get gameUiBackToGames => 'खेलहरूमा फर्कनुहोस्';

  @override
  String get gameUiSPIN => 'घुमाउनुहोस्';

  @override
  String get gameUiRewardRevealed => 'पुरस्कार देखियो!';

  @override
  String get gameUiYouFound => 'तपाईंले फेला पार्नुभयो';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्र्याच कार्ड';

  @override
  String get gameUiDailyScratch => 'दैनिक स्क्र्याच';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'आजको पुरस्कार देखाउन कार्ड स्क्र्याच गर्नुहोस्!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'तपाईंले आजको स्क्र्याच कार्ड पहिले नै प्रयोग गरिसक्नुभएको छ।';

  @override
  String get gameUiAlreadyScratched => 'पहिले नै स्क्र्याच गरिएको';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'अर्को पुरस्कारका लागि भोलि फेरि आउनुहोस्।';

  @override
  String get gameUiYouRevealed => 'तपाईंले देखाउनुभयो';

  @override
  String get gameUiSCRATCHHERE => 'यहाँ स्क्र्याच गर्नुहोस्  👆';

  @override
  String get gameUiJACKPOT777 => 'ज्याकपट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'तपाईंको पुरस्कार';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लट घुमाउनुहोस्, त्यसपछि पुरस्कार प्राप्त गर्न प्रश्नको उत्तर दिनुहोस्!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'तपाईंले आज पहिले नै खेलिसक्नुभएको छ।';

  @override
  String get gameUiSPINNING => 'घुमिरहेको छ...';

  @override
  String get gameUiROLLNOW => 'अहिले रोल गर्नुहोस्';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ज्याकपट! 777 अंक उपलब्ध छ!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'रहस्यमय डिलको स्थिति जाँच गर्न सकिएन: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'बाकस $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 अंक';
  }

  @override
  String get gameUiStartQuestion => 'प्रश्न सुरु गर्नुहोस्';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 रहस्यमय डिल';

  @override
  String get gameUiMysteryDealCompleted => 'रहस्यमय डिल पूरा भयो!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'तपाईंले आज पहिल्यै रहस्यमय डिल खेलिसक्नुभएको छ।';

  @override
  String get gameUiTodayYouWon => 'आज तपाईंले जित्नुभयो';

  @override
  String get gameUiTodaySReward => 'आजको पुरस्कार';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 अंक';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 अंक गुमाउनुभयो';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'अर्को रहस्यमय बाकसका लागि भोलि फर्किनुहोस्!';

  @override
  String get gameUiChooseYourMysteryBox => 'आफ्नो रहस्यमय बाकस छान्नुहोस्';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'प्रत्येक बाकसमा 10 देखि 1000 अंकको बीचको लुकेको पुरस्कार हुन्छ।';

  @override
  String get gameUiPickOnlyOneBox => 'केवल एउटा बाकस छान्नुहोस्!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सबै $value1 स्तर पूरा भयो!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'स्तर $value1 पूरा भयो!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालमा पूरा भयो।\nतपाईंले $value2 अंक कमाउनुभयो!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालमा पूरा भयो।\nयो स्तर पहिल्यै पार भइसकेको थियो।';
  }

  @override
  String get gameUiNextLevel => 'अर्को स्तर';

  @override
  String get gameUiDone => 'सकियो';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमोरी म्याच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सबै 100 स्तर पूरा भयो!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'तपाईंले मेमोरी म्याचका सबै स्तर पूरा गर्नुभयो। राम्रो खेल्नुभयो!';

  @override
  String get gameUiChooseLevel => 'स्तर छान्नुहोस्';

  @override
  String gameUiMoves(String value1) {
    return 'चाल: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'स्तर $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोडी';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'स्तर $value1 याद गर्नुहोस्';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 मिल्ने जोडी भेट्टाउनुहोस्';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz को लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'अध्याय 1 · बिल्ड पाइपलाइन पुनर्स्थापना गर्नुहोस्';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'अध्याय 2 · क्लाउड प्लेटफर्मलाई स्केल गर्नुहोस्';

  @override
  String get gameUiChapter3ProtectProduction => 'अध्याय 3 · प्रोडक्सनको सुरक्षा गर्नुहोस्';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'पेश गर्न बाँकी सबै $value1 अक्षर प्रयोग गर्नुहोस्।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सबै स्तर पूरा भयो!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'स्तर $value1 पूरा भयो!';
  }

  @override
  String get gameUiTryAgain => 'फेरि प्रयास गर्नुहोस्';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्द $value1 थियो। तपाईंले $value2 अंक कमाउनुभयो।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्द $value1 थियो। तपाईंले $value3 संकेत पछि $value2 अंक कमाउनुभयो।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्द $value1 थियो। तपाईंले $value3 संकेतहरू पछि $value2 अंक कमाउनुभयो।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्द $value1 थियो। स्तर $value2 अझै तपाईंको प्रतीक्षामा छ।';
  }

  @override
  String get gameUiFinish => 'समाप्त गर्नुहोस्';

  @override
  String get gameUiNextLevel254fd73 => 'अर्को स्तर';

  @override
  String get gameUiRetryLevel => 'स्तर फेरि प्रयास गर्नुहोस्';

  @override
  String get gameUiHowToPlay => 'कसरी खेल्ने';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'प्रत्येक स्तरमा एउटा DevOps शब्द हुन्छ। पाँच अक्षरभन्दा छोटा शब्द कुनै निःशुल्क अक्षरबिना सुरु हुन्छन्; लामा शब्द एउटा अक्षरसहित सुरु हुन्छन्। उत्तर बनाउन अक्षर र्‍याक प्रयोग गर्नुहोस् र Enter थिच्नुहोस्। संकेतले अर्को अक्षर देखाउँछ र तपाईंको ब्यालेन्सबाट 20 अंक कटौती हुन्छ। प्रत्येक पूरा गरिएको स्तरले 100 अंक दिन्छ।';

  @override
  String get gameUiGotIt => 'बुझें';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सबै $value1 स्तर पूरा भयो!';
  }

  @override
  String get gameUiEasy => 'सजिलो';

  @override
  String get gameUiMedium => 'मध्यम';

  @override
  String get gameUiHard => 'कठिन';

  @override
  String get gameUiHowToPlay13a6b22 => 'कसरी खेल्ने';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'स्तर $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'पुरस्कार $value1 अंक · प्रयोग गरिएका संकेत $value2';
  }

  @override
  String get gameUiHint20Pts => 'संकेत · −20 अंक';

  @override
  String get gameUiEnter => 'प्रवेश गर्नुहोस्';

  @override
  String get gameUiDelete => 'मेट्नुहोस्';

  @override
  String get gameUiDragThroughAWord => 'शब्दमाथि तान्नुहोस्';

  @override
  String get gameUiDragThroughEachWord => 'प्रत्येक शब्दमाथि तान्नुहोस्';

  @override
  String get gameUiReleaseToSelect => 'छान्न छोड्नुहोस्';

  @override
  String gameUiFound(String value1) {
    return '$value1 भेटियो';
  }

  @override
  String get gameUiNoWordThere => 'त्यहाँ कुनै शब्द छैन';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 पहिल्यै भेटिसकेको छ';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 खोज्नुहोस्';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सबै स्तर पूरा भयो!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'तपाईंले सबै शब्द भेट्टाउनुभयो र $value1 अंक कमाउनुभयो।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'तपाईंले सबै शब्द भेट्टाउनुभयो। यो स्तर पहिल्यै पार भइसकेको थियो।';

  @override
  String get gameUiAll500LevelsComplete => 'सबै 500 स्तर पूरा भयो!';

  @override
  String get gameUiReviewLevels => 'स्तरहरू हेर्नुहोस्';

  @override
  String gameUiLeft(String value1) {
    return '$value1 बाँकी';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 अंक';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगति सुरक्षित गर्न सकिएन। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'तपाईंले $value1 अंक कमाउनुभयो!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'तपाईंले यो तस्वीर पहिल्यै पूरा गरिसक्नुभएको छ। फेरि खेल्दा थप अंक पाइँदैन।';

  @override
  String get gameUiYouCompletedEveryPicture => 'तपाईंले सबै तस्वीर पूरा गर्नुभयो!';

  @override
  String get gameUiLevels => 'स्तरहरू';

  @override
  String get gameUiPictureB => 'तस्वीर B';

  @override
  String get gameUiPictureA => 'तस्वीर A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'तस्वीर लोड हुन सकेन। फेरि प्रयास गर्नुहोस्';

  @override
  String get gameUiResetZoom => 'जुम रिसेट गर्नुहोस्';

  @override
  String get gameUiZoomBothPictures => 'दुवै तस्वीर जुम गर्नुहोस्';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'संकेत · प्रति संकेत $value1 अंक';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगति लोड हुन सकेन। फेरि प्रयास गर्नुहोस्';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'स्तर $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सबै भिन्नता भेटिए!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count भिन्नता भेट्टाउनुहोस्। कुनै पनि तस्वीरमा प्रत्येकलाई ट्याप गर्नुहोस्।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'छुटेका: $value1  ·  संकेत: $value2 (−$value3 अंक)  ·  $value4 स्तर पूरा';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'अर्को स्तर: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'पजल $value1 पूरा भयो!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'तस्वीर $value1 चालमा पूरा भयो। तपाईंले $value2 अंक कमाउनुभयो।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'तस्वीर $value1 चालमा पूरा भयो।';
  }

  @override
  String get gameUiNextPuzzle => 'अर्को पजल';

  @override
  String get gameUiAllPuzzlesComplete => 'सबै पजल पूरा भयो';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'पजलको टुक्रा $value1 / $value2, सही ठाउँमा राखिएको';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'पजलको टुक्रा $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'पजल छान्नुहोस्';

  @override
  String get gameUiShufflePieces => 'टुक्राहरू मिसाउनुहोस्';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'पजलको तस्बिर लोड गर्न सकिएन।';

  @override
  String get gameUiPreviousPuzzle => 'अघिल्लो पजल';

  @override
  String gameUiPuzzle(String value1) {
    return 'पजल $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चाल';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'टुक्राहरू तानेर साट्नुहोस्, वा दुई टुक्रामा ट्याप गर्नुहोस्।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 पजल हल गरियो  ·  प्रत्येकको $value3 अंक';
  }

  @override
  String get gameUiGameOver => 'खेल समाप्त';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'संख्या $value1 थियो।\nलगातार सफलता: $value2\nतपाईंले $value3 अंक कमाउनुभयो!\n\nअर्को मौकाका लागि भोलि फर्केर आउनुहोस्!';
  }

  @override
  String get gameUiHigherOrLower => 'बढी कि कम 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'आज पहिले नै खेलिसक्नुभयो!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'तपाईंले $value1/$value2/$value3 मा खेल्नुभयो।\n\nनयाँ लगातार सफलता बनाउन भोलि फर्केर आउनुहोस्!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'तपाईंले आज पहिले नै खेलिसक्नुभयो।\n\nअर्को मौकाका लागि भोलि फर्केर आउनुहोस्!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 लगातार सफलता: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ अंक: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'अर्को संख्या बढी हुन्छ कि कम?';

  @override
  String get gameUiLower => 'कम';

  @override
  String get gameUiHigher => 'बढी';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'सही वा गलत ब्लिट्ज ⚡';

  @override
  String get gameUiTimeSUp => 'समय सकियो!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'सही उत्तरहरू: $value1\nसर्वोत्तम लगातार सफलता: $value2\n$value3तपाईंले $value4 अंक कमाउनुभयो!\n\nअर्को राउन्डका लागि भोलि फर्केर आउनुहोस्!';
  }

  @override
  String get gameUiStreakBonus20 => 'लगातार सफलता बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'देखाइएको उत्तर सही हो कि गलत?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 श्रेणीमा $value1 प्रश्न';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'तपाईंसँग $value1 सेकेन्ड छ। प्रत्येक सही उत्तरले $value2 अंक दिन्छ। गलत उत्तरले $value3 सेकेन्ड घटाउँछ। लगातार 5 सही उत्तर दिएमा +20 बोनस पाइन्छ।';
  }

  @override
  String get gameUiRoundTimer => 'राउन्ड टाइमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सेकेन्ड';
  }

  @override
  String get gameUiStart => 'सुरु गर्नुहोस्';

  @override
  String get gameUiTrue => 'सही';

  @override
  String get gameUiFalse => 'गलत';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमान्ड मिलान 🔗';

  @override
  String get gameUiAllMatched => 'सबै मिल्यो!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'गल्तीहरू: $value1\nतपाईंले $value2 अंक कमाउनुभयो!\n\nनयाँ कमान्डहरूका लागि भोलि फर्केर आउनुहोस्!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'राउन्ड $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'एउटा कमान्डमा ट्याप गर्नुहोस्, त्यसपछि त्यसको अर्थमा ट्याप गर्नुहोस्।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'अब मिल्दो अर्थमा ट्याप गर्नुहोस्।';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जीवन सकियो';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'सही उत्तरहरू: $value1\nतपाईंले $value2 अंक कमाउनुभयो!\n\nअर्को राउन्डका लागि भोलि फर्केर आउनुहोस्!';
  }

  @override
  String get gameUiYouEarned10Points => 'तपाईंले 10 अंक कमाउनुभयो!';

  @override
  String get gameUiYouWin => 'तपाईं जित्नुभयो!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जित्यो!';
  }

  @override
  String get gameUiXWins => 'X जित्यो!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जित्यो!';
  }

  @override
  String get gameUiComputerWins => 'कम्प्युटर जित्यो';

  @override
  String get gameUiOWins => 'O जित्यो!';

  @override
  String get gameUiPlayer2OWins => 'खेलाडी 2 (O) जित्यो!';

  @override
  String get gameUiItSADraw => 'खेल बराबरी भयो';

  @override
  String get gameUiYourTurn => 'तपाईंको पालो';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 को पालो';
  }

  @override
  String get gameUiComputerIsThinking => 'कम्प्युटरले सोच्दै छ';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खेलाडी $value1 को चाल्ने पालो';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 को चाल्ने पालो';
  }

  @override
  String get gameUiPlayer2ToMove => 'खेलाडी 2 को चाल्ने पालो';

  @override
  String get gameUiNewRound => 'नयाँ राउन्ड';

  @override
  String get gameUiVsComputer => 'कम्प्युटर विरुद्ध';

  @override
  String get gameUi2Players => '2 खेलाडी';

  @override
  String get gameUiYou => 'तपाईं';

  @override
  String get gameUiDraws => 'बराबरी';

  @override
  String get gameUiPlayer2 => 'खेलाडी 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'कक्ष $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'फेरि खेल्नुहोस्';

  @override
  String get gameUiConnectFourWin20Points => 'कनेक्ट फोर जित: 20 अंक!';

  @override
  String get gameUiBotWins => 'बोट जित्यो!';

  @override
  String get gameUiRed => 'रातो';

  @override
  String get gameUiYellow => 'पहेँलो';

  @override
  String get gameUiBoardFullDraw => 'बोर्ड भरियो — बराबरी';

  @override
  String get gameUiBotIsThinking => 'बोटले सोच्दै छ';

  @override
  String get gameUiBotTurn => 'बोटको पालो';

  @override
  String get gameUiNewGame => 'नयाँ खेल';

  @override
  String get gameUiVsBot => 'बोट विरुद्ध';

  @override
  String get gameUi2Player => '2 खेलाडी';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बोट विरुद्ध खेल्नुहोस् · डिस्क खसाल्न स्तम्भमा ट्याप गर्नुहोस्';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दुई खेलाडी · डिस्क खसाल्न स्तम्भमा ट्याप गर्नुहोस्';

  @override
  String gameUiColumn(String value1) {
    return 'स्तम्भ $value1';
  }

  @override
  String get gameUiYouRed => 'तपाईं · रातो';

  @override
  String get gameUiRedPlayer1 => 'रातो · खेलाडी 1';

  @override
  String get gameUiBotYellow => 'बोट · पहेँलो';

  @override
  String get gameUiYellowPlayer2 => 'पहेँलो · खेलाडी 2';

  @override
  String get gameUiLudoMatchStats => 'लुडो खेलको तथ्याङ्क';

  @override
  String get gameUiNoCompletedMatchesYet => 'अहिलेसम्म कुनै खेल पूरा भएको छैन।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेलेको $value1  ·  जितेको $value2  ·  हारेको $value3';
  }

  @override
  String get gameUiClose => 'बन्द गर्नुहोस्';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लुडो च्याम्पियन! तपाईंले 50 अंक कमाउनुभयो।';

  @override
  String get gameUiNewLudoGame => 'नयाँ लुडो खेल';

  @override
  String get gameUiBotOpponents => 'बोट प्रतिद्वन्द्वीहरू';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नयाँ खेल सुरु गर्दा तपाईंको सुरक्षित गरिएको खेल प्रतिस्थापन हुन्छ।';

  @override
  String get gameUiCancel => 'रद्द गर्नुहोस्';

  @override
  String get gameUiStartGame => 'खेल सुरु गर्नुहोस्';

  @override
  String get gameUiPlayerColours => 'खेलाडीका रङहरू';

  @override
  String get gameUiApply => 'लागू गर्नुहोस्';

  @override
  String get gameUiMatchStats => 'खेलको तथ्याङ्क';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेटबाट जित्यो';
  }

  @override
  String get gameUiBlack => 'कालो';

  @override
  String get gameUiWhite => 'सेतो';

  @override
  String get gameUiComputerWinsByCheckmate => 'कम्प्युटर चेकमेटबाट जित्यो';

  @override
  String get gameUiYouWinByCheckmate => 'तपाईं चेकमेटबाट जित्नुभयो';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेटबाट बराबरी';

  @override
  String get gameUiDraw => 'बराबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · चेक';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'शह-मात! तपाईंले 50 अंक कमाउनुभयो।';

  @override
  String get gameUiStartANewGame => 'नयाँ खेल सुरु गर्ने?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खेलाडी मोड परिवर्तन गर्दा सुरक्षित गरिएको खेल प्रतिस्थापन हुन्छ।';

  @override
  String get gameUiComputer => 'कम्प्युटर';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · सेतो / खेलाडी 2 · कालो';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'तपाईं सेतो हुनुहुन्छ · कम्प्युटर कालो हो';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (सेतो) · कम्प्युटर (कालो)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'तपाईं कालो हुनुहुन्छ · कम्प्युटर सेतो हो';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (कालो) · कम्प्युटर (सेतो)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ले पहिले पासा फाल्छ';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ले फेरि पासा फाल्छ';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 को पासा फाल्ने पालो';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सर्प र भर्‍याङ जित: 100 अंक!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खेलाडी परिवर्तन गर्दा सुरक्षित गरिएको खेल प्रतिस्थापन हुन्छ।';

  @override
  String get gameUiStartANewLevel => 'नयाँ स्तर सुरु गर्ने?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'स्तर परिवर्तन गर्दा सुरक्षित गरिएको खेल प्रतिस्थापन हुन्छ।';

  @override
  String get gameUiChangeLevel => 'स्तर परिवर्तन गर्नुहोस्';

  @override
  String get gameUiPlayers => 'खेलाडीहरू';

  @override
  String get gameUiPlayAgainstBot => 'बोटविरुद्ध खेल्नुहोस्';

  @override
  String get gameUi3Players => '3 खेलाडी';

  @override
  String get gameUi4Players => '4 खेलाडी';

  @override
  String get gameUiLevel1709305 => 'स्तर';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'स्तर $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 खेलाडी · स्तर $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · पासा फाल्नुहोस्';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 मा $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रश्न लोड गर्न सकिएन: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'सही उत्तर!';

  @override
  String get gameUiWrongAnswer => 'गलत उत्तर';

  @override
  String get gameUiYouClaimedYourReward => 'तपाईंले आफ्नो पुरस्कार प्राप्त गर्नुभयो!';

  @override
  String get gameUiAddedToYourTotalPoints => 'तपाईंको कुल अंकमा थपियो।';

  @override
  String get gameUiTheCorrectAnswerWas => 'सही उत्तर यो थियो:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 अंकको पुरस्कार गुम्यो।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'तपाईंका हालका अंक कटौती गरिएनन्।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'भोलि फर्केर फेरि प्रयास गर्नुहोस्।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रश्न लोड गर्न सकिएन।';

  @override
  String get gameUiYourReward677fa6e => 'तपाईंको पुरस्कार';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 अंक';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'प्राप्त गर्न सही उत्तर दिनुहोस्!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'अर्को चरणका लागि भोलि फर्कनुहोस्।';

  @override
  String get gameUiGreen => 'हरियो';

  @override
  String get gameUiBlue => 'निलो';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 सोच्दै छ';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: गोटी छान्नुहोस्';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: पासा फाल्नुहोस्';
  }

  @override
  String gameUiDice(String value1) {
    return 'पासा $value1';
  }

  @override
  String get gameUiRollDice => 'पासा फाल्नुहोस्';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 गोटी $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'खेलाडी $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'बट $value1';
  }

  @override
  String get gameUiBot => 'बट';

  @override
  String get gameUiHintInsufficientPoints => 'संकेत प्रयोग गर्न तपाईंलाई 20 अंक चाहिन्छ।';

  @override
  String get gameUiHintPurchaseFailed => 'संकेत खरिद गर्न सकिएन। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'रानी';

  @override
  String get gameUiChessRook => 'हात्ती';

  @override
  String get gameUiChessBishop => 'ऊँट';

  @override
  String get gameUiChessKnight => 'घोडा';

  @override
  String get gameUiChessPawn => 'प्यादा';

  @override
  String get gameUiChessEmpty => 'खाली';

  @override
  String get gameSceneLampAndFlowers => 'बत्ती र फूलहरू';

  @override
  String get gameSceneGardenFriends => 'बगैंचाका साथीहरू';

  @override
  String get gameSceneUnderwaterExplorers => 'पानी मुनिका अन्वेषकहरू';

  @override
  String get gameSceneOceanOrca => 'समुद्री ओर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'चरन क्षेत्रमा फ्याउरो';

  @override
  String get gameSceneYellowSubmarine => 'पहेँलो पनडुब्बी';

  @override
  String get gameSceneTurkeyInTheClearing => 'खुला स्थानमा टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारीको पानी पिउने ठाउँ';

  @override
  String get gameSceneJungleCompanions => 'जंगलका साथीहरू';

  @override
  String get gameSceneGoldenPuppyGarden => 'सुनौलो कुकुरको बच्चाको बगैंचा';

  @override
  String get gameSceneSeaTurtleReef => 'समुद्री कछुवा चट्टान';

  @override
  String get gameSceneCoralReefFriends => 'प्रवाल चट्टानका साथीहरू';

  @override
  String get gameSceneSharedClownfish => 'साझा क्लाउनफिश';

  @override
  String get gameSceneLittleDinosaur => 'सानो डाइनोसर';

  @override
  String get gameSceneSafariCompanions => 'सफारीका साथीहरू';

  @override
  String get gameSceneSwirlingFlowers => 'घुमरिएका फूलहरू';

  @override
  String get gameSceneGardenKitten => 'बगैंचाको बिरालोको बच्चा';

  @override
  String get gameSceneBlueOcean => 'नीलो समुद्र';

  @override
  String get gameSceneCastlePrincess => 'दरबारकी राजकुमारी';

  @override
  String get gameSceneRedCar => 'रातो कार';

  @override
  String get gameSceneGardenPuppy => 'बगैंचाको कुकुरको बच्चा';

  @override
  String get gameSceneSpaceExplorer => 'अन्तरिक्ष अन्वेषक';

  @override
  String get gameSceneEnchantedReadingForest => 'मोहक पठन जंगल';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनन्त चक्र';

  @override
  String get gameSceneAnsible => 'एन्सिबल (Ansible)';

  @override
  String get gameSceneAws => 'एडब्ल्यूएस (AWS)';

  @override
  String get gameSceneAzure => 'एज्युर (Azure)';

  @override
  String get gameSceneBashScripting => 'ब्यास स्क्रिप्टिङ (Bash Scripting)';

  @override
  String get gameSceneDocker => 'डकर (Docker)';

  @override
  String get gameSceneGcp => 'जीसीपी (GCP)';

  @override
  String get gameSceneGit => 'गिट (Git)';

  @override
  String get gameSceneHybridCloud => 'हाइब्रिड क्लाउड (Hybrid Cloud)';

  @override
  String get gameSceneIbmCloud => 'आईबीएम क्लाउड (IBM Cloud)';

  @override
  String get gameSceneJavascript => 'जाभास्क्रिप्ट (JavaScript)';

  @override
  String get gameSceneJenkins => 'जेनकिन्स (Jenkins)';

  @override
  String get gameSceneKubernetes => 'कुबरनेटिस (Kubernetes)';

  @override
  String get gameSceneLinux => 'लिनक्स (Linux)';

  @override
  String get gameSceneMultiCloud => 'मल्टी क्लाउड (Multi Cloud)';

  @override
  String get gameSceneNetworking => 'नेटवर्किङ';

  @override
  String get gameSceneOracleCloud => 'ओरेकल क्लाउड (Oracle Cloud)';

  @override
  String get gameScenePerl => 'पर्ल (Perl)';

  @override
  String get gameScenePowershell => 'पावरशेल (PowerShell)';

  @override
  String get gameScenePython => 'पाइथन (Python)';

  @override
  String get gameSceneRuby => 'रुबी (Ruby)';

  @override
  String get gameSceneTerraform => 'टेराफर्म (Terraform)';

  @override
  String get gameSceneWinterFestivalFair => 'हिउँदे महोत्सव मेला';

  @override
  String get gameSceneArmoredHeroCloseUp => 'कवचधारी नायकको नजिकको दृश्य';

  @override
  String get gameSceneArmoredHeroInCrimson => 'गाढा रातोमा कवचधारी नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गाढा प्लुमेरिया फूलहरू';

  @override
  String get gameSceneMangroveBoardwalk => 'म्यानग्रोभ काठे बाटो';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबन्धीय खजूरका प्रतिबिम्बहरू';

  @override
  String get gameSceneMaskedFigureInShadow => 'छायाँमा मुकुन्डो लगाएको आकृति';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूर्यास्तमा विद्युतीय साथी';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक र आगोको ड्रागन';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्न जडित कुस्ती मुकुन्डो';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'रातो कुचीका धर्कामा पहलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुस्ती च्याम्पियनको सलामी';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरीमा बिहान';

  @override
  String get gameSceneGreenhousePottingBench => 'ग्रीनहाउसको गमला राख्ने बेन्च';

  @override
  String get gameSceneHarborFishingBoat => 'बन्दरगाहको माछा मार्ने डुङ्गा';

  @override
  String get gameSceneAtticObservatory => 'छत मुनिको वेधशाला';

  @override
  String get gameSceneToyMakerSWorkshop => 'खेलौना निर्माताको कार्यशाला';

  @override
  String get gameSceneWoodlandCampsite => 'वनको शिविर स्थल';

  @override
  String get gameSceneAfternoonMusicRoom => 'दिउँसोको संगीत कोठा';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुद्र किनारको आइसक्रिम स्टल';

  @override
  String get gameSceneLibraryReadingNook => 'पुस्तकालयको पढ्ने कुना';

  @override
  String get gameSceneSewingStudio => 'सिलाइ स्टुडियो';

  @override
  String get gameSceneFruitMarket => 'फलफूल बजार';

  @override
  String get gameSceneKoiCourtyard => 'कोई माछा भएको आँगन';

  @override
  String get gameSceneArtistSAtelier => 'कलाकारको स्टुडियो';

  @override
  String get gameSceneMountainRailway => 'पहाडी रेलमार्ग';

  @override
  String get gameSceneCountryKitchen => 'ग्रामीण भान्सा';

  @override
  String get gameScenePotteryWorkshop => 'माटाका भाँडा बनाउने कार्यशाला';

  @override
  String get gameSceneBeachPicnic => 'समुद्र किनारको पिकनिक';

  @override
  String get gameSceneFlowerShop => 'फूल पसल';

  @override
  String get gameSceneClockmakerSWorkshop => 'घडी निर्माताको कार्यशाला';

  @override
  String get gameSceneRainyCafeTerrace => 'वर्षाको क्याफे टेरेस';

  @override
  String get gameSceneCastleHerbGarden => 'दरबारको जडिबुटी बगैंचा';

  @override
  String get gameSceneClassroomArtCorner => 'कक्षाकोठाको कला कुना';

  @override
  String get gameSceneAquariumShop => 'एक्वेरियम पसल';

  @override
  String get gameSceneAutumnLeafCollection => 'शरद ऋतुका पातहरूको संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चन्द्रमा मुनिको एक्लो रूख';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'हाँगामा शरद ऋतुको फूल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हरिया पातहरूबीच फ्याउरो';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'लिलीले ढाकेको तालमा डोंगा';

  @override
  String get gameSceneDewDropsOnALeaf => 'पातमा शीतका थोपाहरू';

  @override
  String get gameSceneStagInATurquoiseLake => 'फिरोजा रङको तालमा बारासिङ्गा';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'सुन्तला रङको चन्द्रमा मुनि साइकल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'उपत्यकामाथि सेतो बाघ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'नीलो पानीमा दुई रूख';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'वफादार कुकुरको छेउमा माछा मार्दै';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'पहाडी तालको किनारमा लिली फूलहरू';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदी किनारमा मृग';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूर्यास्तमा उष्णकटिबन्धीय झुप्रो';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'अल्पाइन उपत्यकालाई हेरिरहेको फिस्टो';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मायावी वनबाट देखिने सूर्यास्त';

  @override
  String get learningControlTitle => 'DevOps सिक्नुहोस्';

  @override
  String get learningControlAllCategories => 'सबै श्रेणी';

  @override
  String get learningControlSearchCards => 'कार्ड खोज्नुहोस्';

  @override
  String get learningControlClearSearch => 'खोज मेटाउनुहोस्';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सबै कार्ड देखाउनुहोस्';

  @override
  String learningControlShowSaved(int count) {
    return 'सुरक्षित गरिएका कार्ड देखाउनुहोस् ($count)';
  }

  @override
  String get learningControlShuffleOff => 'सफल बन्द गर्नुहोस्';

  @override
  String get learningControlShuffleOn => 'कार्ड सफल गर्नुहोस्';

  @override
  String get learningControlAutoOff => 'अटो स्वाइप बन्द गर्नुहोस्';

  @override
  String get learningControlAutoOn => 'प्रत्येक १० सेकेन्डमा अटो स्वाइप';

  @override
  String get learningControlNoSaved => 'अहिलेसम्म कुनै कार्ड सुरक्षित गरिएको छैन';

  @override
  String get learningControlNoMatches => 'मिल्दो कार्ड भेटिएन';

  @override
  String get learningControlResetFilters => 'फिल्टर रिसेट गर्नुहोस्';

  @override
  String get learningControlPrevious => 'अघिल्लो';

  @override
  String get learningControlNext => 'अर्को';

  @override
  String get learningControlProgress => 'प्रगति';

  @override
  String get learningControlRemoveSaved => 'सुरक्षितबाट हटाउनुहोस्';

  @override
  String get learningControlSaveCard => 'कार्ड सुरक्षित गर्नुहोस्';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कपी गर्नुहोस्';

  @override
  String get learningControlExampleCopied => 'उदाहरण कपी गरियो';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'स्तर $value1 पूरा भयो';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'स्तर $value1 खेल्नुहोस्';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलक गर्न स्तर $value1 पूरा गर्नुहोस्';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दैनिक लगइन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'फेरि फर्किनुभएकोमा धन्यवाद!';

  @override
  String get sharedDialogDailyRewardAdded => 'तपाईंको दैनिक पुरस्कार तपाईंको कुल अंकमा थपिएको छ।';

  @override
  String get sharedDialogAwesome => 'अद्भुत!';

  @override
  String get accountWelcomeGuest => 'अतिथि';

  @override
  String get accountWelcomeGuestUser => 'अतिथि प्रयोगकर्ता';

  @override
  String get accountWelcomeUser => 'प्रयोगकर्ता';

  @override
  String get accountWelcomePlayingAsGuest => 'अतिथिको रूपमा खेल्दै';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खाता जडान गर्नुहोस्';

  @override
  String get accountWelcomeGoogleConnected => 'Google खाता सफलतापूर्वक जडान भयो! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द गरियो।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'जडान गर्न असफल भयो: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट गर्नुहोस्';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट गर्ने हो?';

  @override
  String get accountWelcomeSignOutMessage => 'के तपाईं साँच्चै साइन आउट गर्न चाहनुहुन्छ? आफ्नो सुरक्षित गरिएको प्रगतिमा पहुँच पाउन तपाईंले फेरि साइन इन गर्नुपर्नेछ।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट असफल भयो: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ एप डेटा रिसेट गर्ने हो?';

  @override
  String get accountWelcomeResetAppMessage => 'यसले तपाईंको सबै अंक, स्ट्रिक, गेम इतिहास र सेटिङहरू स्थायी रूपमा मेटाउनेछ। तपाईं साइन आउट हुनुहुनेछ र सुरुको स्क्रिनमा फर्कनुहुनेछ। यो कार्य पूर्ववत् गर्न सकिँदैन।';

  @override
  String get accountWelcomeResetEverything => 'सबै रिसेट गर्नुहोस्';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रिसेट असफल भयो: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द गर्नुहोस्';

  @override
  String get accountWelcomeResetAppData => 'एप डेटा रिसेट गर्नुहोस्';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सबै अंक, स्ट्रिक र सेटिङहरू हटाउनुहोस्';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz एप';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अनुवाद अझै उपलब्ध छैन';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google मार्फत जारी राख्नुहोस्';

  @override
  String get accountWelcomeSigningIn => 'साइन इन हुँदैछ...';

  @override
  String get accountWelcomeOr => 'वा';

  @override
  String get accountWelcomeContinueAsGuest => 'अतिथिको रूपमा जारी राख्नुहोस्';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'तपाईं पछि आफ्नो प्रोफाइलबाट साइन इन गर्न सक्नुहुन्छ।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'तपाईं अतिथिको रूपमा सुरु गरेर पछि साइन इन गर्न सक्नुहुन्छ।';

  @override
  String get accountWelcomeGreetingGuest => 'स्वागत छ';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'स्वागत छ, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूरा भयो, तर कुनै प्रयोगकर्ता खाता प्राप्त भएन।';

  @override
  String get accountWelcomeErrorEmailExists => 'यो इमेलमा पहिले नै अर्को साइन-इन विधि प्रयोग गर्ने खाता छ।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'यो Google खाता पहिले नै अर्को खातासँग लिंक गरिएको छ।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण विवरण अमान्य छ वा म्याद सकिएको छ।';

  @override
  String get accountWelcomeErrorUserDisabled => 'यो खाता निष्क्रिय पारिएको छ।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन हाल सक्षम गरिएको छैन।';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क त्रुटि। कृपया आफ्नो इन्टरनेट जडान जाँच गरी फेरि प्रयास गर्नुहोस्।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'धेरै पटक साइन-इन प्रयास गरियो। कृपया पर्खनुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'थप त्रुटि जानकारी उपलब्ध छैन।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन असफल भयो।\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन त्रुटि:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'अतिथिको रूपमा जारी राख्न सकिएन। कृपया फेरि प्रयास गर्नुहोस्।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन चाँडै उपलब्ध हुनेछ।';

  @override
  String get accountWelcomeLoginTagline => 'सिक्नुहोस् • अभ्यास गर्नुहोस् • प्रतिस्पर्धा गर्नुहोस् • कमाउनुहोस्';

  @override
  String get accountWelcomeCountryRegion => 'देश / क्षेत्र';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / क्षेत्र: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश खोज्नुहोस्';

  @override
  String get accountWelcomeCountryNotSelected => 'चयन गरिएको छैन';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'किन DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ अभ्यास प्रश्नहरू';

  @override
  String get accountWelcomeFeatureLanguages => 'बहु-भाषा समर्थन';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रिक र लिडरबोर्डहरू';

  @override
  String get accountWelcomeFeatureGames => 'गेम र चुनौतीहरू';

  @override
  String get accountWelcomeFeatureCloud => 'क्लाउड र DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस र पुरस्कारहरू';

  @override
  String get accountWelcomePracticeOnTheGo => 'जहाँसुकै अभ्यास गर्नुहोस्';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android एप इन्स्टल गर्नुहोस् र जहाँसुकै अफलाइन सिक्नुहोस्।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play मा पाउनुहोस्';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिनको स्ट्रिक';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिनको स्ट्रिक कायम राख्नुहोस्।';
  }

  @override
  String get achLocYearStreakTitle => '१ वर्षको स्ट्रिक';

  @override
  String get achLocFirstQuizTitle => 'पहिलो क्विज';

  @override
  String get achLocFirstQuizDescription => 'आफ्नो पहिलो क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocQuiz10Title => 'क्विज अन्वेषक';

  @override
  String get achLocQuiz10Description => '१० क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocPoints1000Title => '१००० अंक';

  @override
  String get achLocPoints1000Description => 'क्विजमा कुल १००० अंक कमाउनुहोस्।';

  @override
  String get achLocPerfectScoreTitle => 'उत्कृष्ट अंक';

  @override
  String get achLocPerfectScoreDescription => 'कुनै पनि क्विजमा १००% अंक ल्याउनुहोस्।';

  @override
  String get achLocQuiz25Title => 'क्विज उत्साही';

  @override
  String get achLocQuiz25Description => '२५ क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocQuiz50Title => 'क्विज मास्टर';

  @override
  String get achLocQuiz50Description => '५० क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocQuiz100Title => 'सेन्चुरी क्लब';

  @override
  String get achLocQuiz100Description => '१०० क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocQuiz250Title => 'क्विज लेजेन्ड';

  @override
  String get achLocQuiz250Description => '२५० क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocPoints5000Title => '५,००० अंक';

  @override
  String get achLocPoints5000Description => 'कुल ५,००० अंक कमाउनुहोस्।';

  @override
  String get achLocPoints10000Title => '१०,००० अंक';

  @override
  String get achLocPoints10000Description => 'कुल १०,००० अंक कमाउनुहोस्।';

  @override
  String get achLocPoints50000Title => '५०,००० अंक';

  @override
  String get achLocPoints50000Description => 'कुल ५०,००० अंक कमाउनुहोस्।';

  @override
  String get achLocPoints100000Title => '१,००,००० अंक';

  @override
  String get achLocPoints100000Description => 'कुल १,००,००० अंक कमाउनुहोस्।';

  @override
  String get achLocDaily1Title => 'दैनिक सुरुवातकर्ता';

  @override
  String get achLocDaily1Description => 'आफ्नो पहिलो दैनिक क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocDaily7Title => 'दैनिक बानी';

  @override
  String get achLocDaily7Description => '७ दैनिक क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocDaily30Title => 'दैनिक च्याम्पियन';

  @override
  String get achLocDaily30Description => '३० दैनिक क्विज पूरा गर्नुहोस्।';

  @override
  String get achLocSets5Title => 'सेट सुरुवातकर्ता';

  @override
  String get achLocSets5Description => '५ क्विज सेट सक्नुहोस्।';

  @override
  String get achLocSets25Title => 'सेट संग्राहक';

  @override
  String get achLocSets25Description => '२५ क्विज सेट सक्नुहोस्।';

  @override
  String get achLocSets50Title => 'सेट मास्टर';

  @override
  String get achLocSets50Description => '५० क्विज सेट सक्नुहोस्।';

  @override
  String get achLocSets100Title => 'सेट लेजेन्ड';

  @override
  String get achLocSets100Description => '१०० क्विज सेट सक्नुहोस्।';

  @override
  String get achLocCert1Title => 'पहिलो प्रमाणपत्र';

  @override
  String get achLocCert1Description => 'आफ्नो पहिलो श्रेणी प्रमाणपत्र कमाउनुहोस्।';

  @override
  String get achLocCert5Title => 'प्रमाणित प्रो';

  @override
  String get achLocCert5Description => '५ श्रेणी प्रमाणपत्र कमाउनुहोस्।';

  @override
  String get achLocCert21Title => 'पूर्ण प्रमाणित';

  @override
  String get achLocCert21Description => 'सबै २१ श्रेणीमा प्रमाणपत्र कमाउनुहोस्।';

  @override
  String get achLocThemeFreeValentinesWeek => 'हरेक वर्ष फेब्रुअरी ७-१४ सम्म निःशुल्क';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'हरेक वर्ष मार्च ८-१५ सम्म निःशुल्क';

  @override
  String get achLocThemeLight => 'लाइट';

  @override
  String get achLocThemeDark => 'डार्क';

  @override
  String get achLocThemeSakura => 'साकुरा';

  @override
  String get achLocThemeSunset => 'सनसेट';

  @override
  String get achLocThemeCoffee => 'कफी';

  @override
  String get achLocThemeTea => 'टी';

  @override
  String get achLocThemeOcean => 'ओसन';

  @override
  String get achLocThemeSolarFlare => 'सोलार फ्लेयर';

  @override
  String get achLocThemeForest => 'फरेस्ट';

  @override
  String get achLocThemeAurora => 'अरोरा';

  @override
  String get achLocThemeMatrix => 'म्याट्रिक्स';

  @override
  String get achLocThemeCyberPurple => 'साइबर पर्पल';

  @override
  String get achLocThemeInferno => 'इन्फर्नो';

  @override
  String get achLocThemeMidnight => 'मध्यरात';

  @override
  String get achLocThemeDarkGrey => 'गाढा खैरो-खरानी';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'भ्यालेन्टाइन डे';

  @override
  String get achLocThemeDqSpecial => 'DQ स्पेशल';

  @override
  String get achLocThemeArmy => 'आर्मी';

  @override
  String get achLocThemeSpiderMan => 'स्पाइडर-म्यान';

  @override
  String get achLocThemeKrrish => 'कृष';

  @override
  String get achLocThemeIronMan => 'आइरन म्यान';

  @override
  String get achLocThemeCaptainAmerica => 'क्याप्टेन अमेरिका';

  @override
  String get achLocThemeThor => 'थोर';

  @override
  String get achLocThemeHulk => 'हल्क';

  @override
  String get achLocThemeBlackWidow => 'ब्ल्याक विडो';

  @override
  String get achLocThemeHawkeye => 'हकआई';

  @override
  String get achLocThemeBlackPanther => 'ब्ल्याक प्यान्थर';

  @override
  String get achLocThemeScarletWitch => 'स्कार्लेट विच';

  @override
  String get achLocThemeVision => 'भिजन';

  @override
  String get achLocThemeAntMan => 'एन्ट-म्यान';

  @override
  String get achLocThemeCaptainMarvel => 'क्याप्टेन मार्भल';

  @override
  String get achLocThemeDoctorStrange => 'डक्टर स्ट्रेन्ज';

  @override
  String get achLocThemeAvengers => 'एभेन्जर्स';

  @override
  String get achLocThemeBatman => 'ब्याटम्यान';

  @override
  String get achLocThemeSuperman => 'सुपरम्यान';

  @override
  String get achLocThemeWonderWoman => 'वन्डर वुमन';

  @override
  String get achLocThemeFlash => 'फ्ल्यास';

  @override
  String get achLocThemeAquaman => 'एक्वाम्यान';

  @override
  String get achLocThemeGreenLantern => 'ग्रीन ल्यान्टर्न';

  @override
  String get achLocThemeCyborg => 'साइबोर्ग';

  @override
  String get achLocThemeSupergirl => 'सुपरगर्ल';

  @override
  String get achLocThemeDc => 'DC हिरोज';

  @override
  String get achLocThemeRainbow => 'इन्द्रेणी';

  @override
  String get achLocThemeDiamond => 'हीरा';

  @override
  String get achLocThemeLegendary => 'महान् दन्तकथा';

  @override
  String get gameHintCmd001LsLa => 'सबै फाइलहरू विवरणसहित सूचीबद्ध गर्नुहोस्';

  @override
  String get gameHintCmd002Grep => 'ढाँचा प्रयोग गरेर पाठ खोज्नुहोस्';

  @override
  String get gameHintCmd003Chmod => 'फाइलको अनुमति परिवर्तन गर्नुहोस्';

  @override
  String get gameHintCmd004DfH => 'खाली डिस्क ठाउँ देखाउनुहोस्';

  @override
  String get gameHintCmd005TailF => 'बढ्दै गइरहेको लग फाइल पछ्याउनुहोस्';

  @override
  String get gameHintCmd006PsAux => 'चलिरहेका प्रक्रियाहरू सूचीबद्ध गर्नुहोस्';

  @override
  String get gameHintCmd007GitClone => 'रिमोट रिपोजिटरीको प्रतिलिपि बनाउनुहोस्';

  @override
  String get gameHintCmd008GitStash => 'कमिट नगरिएका परिवर्तनहरू अलग्गै राख्नुहोस्';

  @override
  String get gameHintCmd009GitRebase => 'नयाँ आधारमा कमिटहरू पुनः लागू गर्नुहोस्';

  @override
  String get gameHintCmd010GitBlame => 'प्रत्येक पङ्क्ति कसले परिवर्तन गर्‍यो देखाउनुहोस्';

  @override
  String get gameHintCmd011DockerPs => 'चलिरहेका कन्टेनरहरू सूचीबद्ध गर्नुहोस्';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile बाट इमेज बनाउनुहोस्';

  @override
  String get gameHintCmd013DockerLogs => 'कन्टेनरको आउटपुट देखाउनुहोस्';

  @override
  String get gameHintCmd014DockerExec => 'कन्टेनर भित्र कमाण्ड चलाउनुहोस्';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेसमा रहेका पडहरू सूचीबद्ध गर्नुहोस्';

  @override
  String get gameHintCmd016KubectlApply => 'फाइलबाट स्रोतहरू बनाउनुहोस्';

  @override
  String get gameHintCmd017KubectlDescribe => 'स्रोतको विस्तृत जानकारी देखाउनुहोस्';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिकाहरूको संख्या परिवर्तन गर्नुहोस्';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोभाइडरहरू डाउनलोड गरी सेटअप गर्नुहोस्';

  @override
  String get gameHintCmd020TerraformPlan => 'पूर्वाधार परिवर्तनहरूको पूर्वावलोकन गर्नुहोस्';

  @override
  String get gameHintCmd021TerraformApply => 'पूर्वाधार बनाउनुहोस् वा अद्यावधिक गर्नुहोस्';

  @override
  String get gameHintCmd022TerraformDestroy => 'व्यवस्थित पूर्वाधार हटाउनुहोस्';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'स्वचालन प्लेबुक चलाउनुहोस्';

  @override
  String get gameHintCmd024Ping => 'ICMP बाट पहुँचयोग्यता जाँच गर्नुहोस्';

  @override
  String get gameHintCmd025Traceroute => 'होस्टसम्मको मार्ग देखाउनुहोस्';

  @override
  String get gameHintCmd026Curl => 'URL बाट डेटा स्थानान्तरण गर्नुहोस्';

  @override
  String get gameHintCmd027Ssh => 'रिमोट मेसिनमा सुरक्षित रूपमा लगइन गर्नुहोस्';

  @override
  String get gameHintCmd028CrontabE => 'निर्धारित कामहरू सम्पादन गर्नुहोस्';

  @override
  String get gameHintCmd029SystemctlStatus => 'सेवाको अवस्था जाँच गर्नुहोस्';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes मा चार्ट डिप्लोय गर्नुहोस्';

  @override
  String get gameHintWord001Git => 'सोर्स कोडमा भएका परिवर्तनहरू ट्र्याक गर्छ।';

  @override
  String get gameHintWord002Aws => 'Amazon को क्लाउड प्लेटफर्म।';

  @override
  String get gameHintWord003Api => 'सफ्टवेयर प्रणालीहरूबीच सञ्चार गराउने सम्झौता।';

  @override
  String get gameHintWord004Dns => 'डोमेन नामहरूलाई IP ठेगानामा रूपान्तरण गर्छ।';

  @override
  String get gameHintWord005Cli => 'कमाण्ड चलाउनको लागि पाठमा आधारित इन्टरफेस।';

  @override
  String get gameHintWord006Cpu => 'निर्देशनहरू कार्यान्वयन गर्ने प्रोसेसर।';

  @override
  String get gameHintWord007Ram => 'चलिरहेका प्रोग्रामहरूले प्रयोग गर्ने अस्थायी मेमोरी।';

  @override
  String get gameHintWord008Ssh => 'रिमोट सेल पहुँचका लागि सुरक्षित प्रोटोकल।';

  @override
  String get gameHintWord009Yaml => 'मानिसले पढ्न सजिलो डेटा सिरियलाइजेसन ढाँचा।';

  @override
  String get gameHintWord010Linux => 'खुला स्रोत अपरेटिङ सिस्टम कर्नेल र त्यसको परिवार।';

  @override
  String get gameHintWord011Bash => 'लोकप्रिय Unix कमाण्ड सेल।';

  @override
  String get gameHintWord012Cloud => 'नेटवर्कमार्फत माग अनुसार उपलब्ध गराइने कम्प्युटिङ।';

  @override
  String get gameHintWord013Docker => 'कन्टेनर बनाउन र चलाउनको लागि प्लेटफर्म।';

  @override
  String get gameHintWord014Azure => 'Microsoft को क्लाउड प्लेटफर्म।';

  @override
  String get gameHintWord015Python => 'व्यापक रूपमा प्रयोग हुने स्क्रिप्टिङ र प्रोग्रामिङ भाषा।';

  @override
  String get gameHintWord016Github => 'लोकप्रिय होस्ट गरिएको Git सहकार्य सेवा।';

  @override
  String get gameHintWord017Bgp => 'स्वायत्त प्रणालीहरूबीच मार्गहरू आदानप्रदान गर्ने रुटिङ प्रोटोकल।';

  @override
  String get gameHintWord018Jenkins => 'प्रायः CI का लागि प्रयोग हुने स्वचालन सर्भर।';

  @override
  String get gameHintWord019Port => 'नेटवर्क सेवाहरूले प्रयोग गर्ने क्रमसङ्ख्या भएको अन्त्यबिन्दु।';

  @override
  String get gameHintWord020Proxy => 'ग्राहकहरूका लागि अनुरोधहरू अगाडि पठाउने सर्भर।';

  @override
  String get gameHintWord021Cache => 'बारम्बार प्रयोग हुने डेटाको लागि छिटो भण्डार।';

  @override
  String get gameHintWord022Cron => 'दोहोरिने कमाण्डहरूको लागि Unix सेड्युलर।';

  @override
  String get gameHintWord023Bicep => 'कोडको रूपमा पूर्वाधारका लागि Azure को घोषणात्मक भाषा।';

  @override
  String get gameHintWord024Apigee => 'केन्द्रीकृत API व्यवस्थापनका लागि Google Cloud प्लेटफर्म।';

  @override
  String get gameHintWord025Root => 'Unix जस्ता प्रणालीहरूमा विशेषाधिकार प्राप्त प्रशासक खाता।';

  @override
  String get gameHintWord026Nginx => 'वेब सर्भर र रिभर्स प्रोक्सी।';

  @override
  String get gameHintWord027Redis => 'प्रायः क्यासको रूपमा प्रयोग हुने इन-मेमोरी डेटा भण्डार।';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेसनल डेटाबेस प्रणाली।';

  @override
  String get gameHintWord029Ruby => 'Chef जस्ता उपकरणहरूले प्रयोग गर्ने प्रोग्रामिङ भाषा।';

  @override
  String get gameHintWord030Helm => 'सामान्यतया Kubernetes सँग प्रयोग हुने प्याकेज म्यानेजर।';

  @override
  String get gameHintWord031Pod => 'Kubernetes मा डिप्लोय गर्न सकिने सबैभन्दा सानो एकाइ।';

  @override
  String get gameHintWord032Image => 'कन्टेनर बनाउन प्रयोग हुने पढ्न मात्र मिल्ने टेम्प्लेट।';

  @override
  String get gameHintWord033Build => 'सोर्स र निर्भरताहरूबाट आर्टिफ्याक्ट बनाउँछ।';

  @override
  String get gameHintWord034Deploy => 'एप्लिकेसनलाई वातावरणमा रिलिज गर्छ।';

  @override
  String get gameHintWord035Terraform => 'कोडको रूपमा पूर्वाधारका लागि HashiCorp को उपकरण।';

  @override
  String get gameHintWord036Ansible => 'एजेन्टविहीन स्वचालन र कन्फिगरेसन उपकरण।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes को कमाण्ड-लाइन क्लाइन्ट।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform को संक्षिप्त रूप।';

  @override
  String get gameHintWord039Gitops => 'Git लाई सत्यको स्रोत मान्ने सञ्चालन मोडेल।';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, परीक्षण र रिलिज चरणहरूको स्वचालित क्रम।';

  @override
  String get gameHintWord041Container => 'आफ्ना निर्भरताहरूसहित प्याकेज गरिएको पृथक प्रक्रिया।';

  @override
  String get gameHintWord042Cluster => 'साझा प्रणालीको रूपमा व्यवस्थित मेसिनहरूको समूह।';

  @override
  String get gameHintWord043Ingress => 'बाह्य HTTP रुटिङका लागि Kubernetes API वस्तु।';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नियम अनुसार नेटवर्क ट्राफिक छान्छ।';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्कको तार्किक उपविभाजन।';

  @override
  String get gameHintWord046Gateway => 'फरक नेटवर्कहरूलाई जोड्ने नेटवर्क नोड।';

  @override
  String get gameHintWord047Router => 'नेटवर्कहरूबीच प्याकेटहरू अगाडि पठाउँछ।';

  @override
  String get gameHintWord048Switch => 'स्थानीय नेटवर्कभित्र उपकरणहरू जोड्छ।';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड वा प्याकेजहरूको व्यवस्थित भण्डारण।';

  @override
  String get gameHintWord050Systemd => 'Linux को init प्रणाली र सेवा व्यवस्थापक।';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लगहरू पढ्न प्रयोग हुने कमाण्ड।';

  @override
  String get gameHintWord052Permission => 'कसले पढ्न, लेख्न वा चलाउन सक्छ भनी नियन्त्रण गर्ने नियम।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud को व्यवस्थित PostgreSQL-अनुकूल डेटाबेस।';

  @override
  String get gameHintWord054Configmap => 'गोप्य नभएका कन्फिगरेसनका लागि Kubernetes वस्तु।';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटाका लागि बनाइएको Kubernetes वस्तु।';

  @override
  String get gameHintWord056Persistent => 'वर्कलोड पुनः सुरु हुँदा पनि बाँकी रहने भण्डारणलाई जनाउँछ।';

  @override
  String get gameHintWord057Volume => 'कन्टेनरमा माउन्ट गरिएको फाइलप्रणाली भण्डारण।';

  @override
  String get gameHintWord058Storage => 'फाइल, वस्तु वा ब्लकहरूका लागि स्थायी ठाउँ।';

  @override
  String get gameHintWord059Replica => 'स्केल वा विश्वसनीयताका लागि राखिएको वर्कलोड उदाहरणको प्रतिलिपि।';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस एप्लिकेसन पडहरूका लागि Kubernetes कन्ट्रोलर।';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज बनाउन प्रयोग हुने निर्देशनहरू।';

  @override
  String get gameHintWord062Database => 'एप्लिकेसनहरूले क्वेरी गर्ने व्यवस्थित भण्डार।';

  @override
  String get gameHintWord063Automation => 'म्यानुअल चरणबिना दोहोरिने कार्यहरू गर्न सफ्टवेयर प्रयोग गर्नु।';

  @override
  String get gameHintWord064Anthos => 'विभिन्न वातावरणमा क्लस्टरहरू व्यवस्थापन गर्ने Google Cloud प्लेटफर्म।';

  @override
  String get gameHintWord065Bigquery => 'ठूलो स्तरको डेटा विश्लेषणका लागि Google Cloud सेवा।';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषणका लागि Google Cloud को वाइड-कोलम NoSQL डेटाबेस।';

  @override
  String get gameHintWord067Loadbalancer => 'आउने ट्राफिकलाई धेरै ब्याकएन्डहरूमा बाँड्छ।';

  @override
  String get gameHintWord068Prometheus => 'समय-शृङ्खला मेट्रिक्स भण्डारण गर्ने अनुगमन प्रणाली।';

  @override
  String get gameHintWord069Grafana => 'अवलोकनीयता डेटा क्वेरी र दृश्यात्मक रूपमा देखाउने प्लेटफर्म।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud को व्यवस्थित NoSQL JSON दस्तावेज डेटाबेस।';

  @override
  String get gameHintWord071Cloudtrail => 'लेखापरीक्षणका लागि API गतिविधि रेकर्ड गर्ने AWS सेवा।';

  @override
  String get gameHintWord072Statefulset => 'स्थिर पहिचान चाहिने वर्कलोडका लागि Kubernetes कन्ट्रोलर।';

  @override
  String get gameHintWord073Daemonset => 'चयन गरिएका नोडहरूमा पड चलाउने Kubernetes कन्ट्रोलर।';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड वा प्रक्रियाले प्रयोग गर्ने Kubernetes पहिचान।';

  @override
  String get gameHintWord075Networkpolicy => 'पडको नेटवर्क ट्राफिक नियन्त्रण गर्ने Kubernetes स्रोत।';

  @override
  String get gameHintWord076Certificate => 'TLS मा पहिचान स्थापित गर्न प्रयोग हुने डिजिटल कागजात।';

  @override
  String get gameHintWord077Encryption => 'डेटा यसरी रूपान्तरण गर्छ कि अधिकृत पक्षले मात्र पढ्न सकून्।';

  @override
  String get gameHintWord078Observability => 'प्रणालीको आउटपुटबाट यसको व्यवहार अनुमान गर्ने क्षमता।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes क्लस्टरभित्र सामान्यतया प्रयोग हुने DNS सर्भर।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API मार्फत क्लाउड स्रोतहरू व्यवस्थापन गर्ने परियोजना।';

  @override
  String get gameHintWord081Failover => 'विफलतापछि स्ट्यान्डबाई अवयवमा स्विच गर्नु।';

  @override
  String get gameHintWord082Idempotency => 'कुनै कार्य दोहोर्‍याउँदा एक पटक गर्दा जस्तै नै प्रभाव हुने गुण।';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रिम र ब्याच डेटा प्रशोधनका लागि Google Cloud सेवा।';

  @override
  String get gameHintWord084Orchestration => 'धेरै स्वचालित वर्कलोडहरूको समन्वित व्यवस्थापन।';

  @override
  String get gameHintWord085Dataplex => 'उद्यम डेटा पत्ता लगाउन र शासन गर्न Google Cloud सेवा।';

  @override
  String get gameHintWord086Serverless => 'पूर्वाधार व्यवस्थापन अमूर्त गरिएको कार्यान्वयन मोडेल।';

  @override
  String get gameHintWord087Distributed => 'नेटवर्कमा जोडिएका धेरै मेसिनहरूमा अवयवहरू चल्ने प्रणाली।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud को व्यवस्थित Apache Spark र Hadoop वातावरण।';

  @override
  String get gameHintWord089Dynamodb => 'प्रायः Terraform state लकिङका लागि प्रयोग हुने AWS NoSQL डेटाबेस।';

  @override
  String get gameHintWord090Provisioning => 'पूर्वाधार वा स्रोतहरू प्रयोगका लागि तयार पार्नु।';

  @override
  String get gameHintWord091Elasticsearch => 'केन्द्रीकृत लगिङका लागि सामान्य रूपमा प्रयोग हुने खोज इन्जिन।';

  @override
  String get gameHintWord092Etcd => 'Kubernetes क्लस्टरको अवस्था राख्ने कुञ्जी-मान भण्डार।';

  @override
  String get gameHintWord093Authentication => 'प्रयोगकर्ता वा सेवा को हो भनी प्रमाणित गर्ने प्रक्रिया।';

  @override
  String get gameHintWord094Authorization => 'कुनै पहिचानलाई के गर्न अनुमति छ भनी निर्णय गर्ने प्रक्रिया।';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेन्टरहरूमा समर्पित निजी जडानका लागि Azure सेवा।';

  @override
  String get gameHintWord096Configuration => 'सफ्टवेयरको व्यवहार निर्धारण गर्ने सेटिङहरू।';

  @override
  String get gameHintWord097Infrastructure => 'एप्लिकेसनहरूलाई सहयोग गर्ने कम्प्युट, नेटवर्क र भण्डारण स्रोतहरू।';

  @override
  String get gameHintWord098Fastconnect => 'समर्पित निजी नेटवर्क जडानका लागि Oracle Cloud सेवा।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ले प्रयोग गर्ने उद्योग-मानक कन्टेनर रनटाइम।';

  @override
  String get gameHintWord100Kubernetes => 'कन्टेनर अर्केस्ट्रेसन प्लेटफर्म।';

  @override
  String get gameHintWord101Http => 'वेब स्रोतहरू अनुरोध गर्न प्रयोग हुने एप्लिकेसन प्रोटोकल।';

  @override
  String get gameHintWord102Https => 'वेब अनुरोध प्रोटोकलको इन्क्रिप्ट गरिएको संस्करण।';

  @override
  String get gameHintWord103Tcp => 'भरपर्दो र क्रमबद्ध डेलिभरी दिने ट्रान्सपोर्ट प्रोटोकल।';

  @override
  String get gameHintWord104Udp => 'डेटाग्रामका लागि प्रयोग हुने कनेक्शनरहित ट्रान्सपोर्ट प्रोटोकल।';

  @override
  String get gameHintWord105Tls => 'नेटवर्कमा आदानप्रदान हुने डेटा सुरक्षित गर्ने प्रोटोकल।';

  @override
  String get gameHintWord106Ssl => 'आधुनिक ट्रान्सपोर्ट सुरक्षा प्रोटोकलको पुरानो पूर्ववर्ती।';

  @override
  String get gameHintWord107Ftp => 'फाइल स्थानान्तरणका लागि परम्परागत प्रोटोकल।';

  @override
  String get gameHintWord108Sftp => 'सुरक्षित सेल जडानमार्फत चल्ने फाइल स्थानान्तरण प्रोटोकल।';

  @override
  String get gameHintWord109Smtp => 'सर्भरहरूबीच इमेल पठाउन प्रयोग हुने प्रोटोकल।';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क उपकरणहरू व्यवस्थापन र अनुगमन गर्ने प्रोटोकल।';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क त्रुटि र ping सन्देशहरू बोक्ने प्रोटोकल।';

  @override
  String get gameHintWord112Arp => 'स्थानीय IPv4 ठेगानालाई हार्डवेयर ठेगानामा रूपान्तरण गर्छ।';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लाइन्टहरूलाई स्वचालित रूपमा IP कन्फिगरेसन उपलब्ध गराउँछ।';

  @override
  String get gameHintWord114Nat => 'प्याकेटहरू गेटवे पार गर्दा नेटवर्क ठेगाना पुनर्लेखन गर्छ।';

  @override
  String get gameHintWord115Vpn => 'टाढाका नेटवर्क वा प्रयोगकर्ताहरूलाई जोड्ने इन्क्रिप्ट गरिएको सुरुङ।';

  @override
  String get gameHintWord116Vpc => 'सार्वजनिक क्लाउडमा पृथक भर्चुअल नेटवर्क।';

  @override
  String get gameHintWord117Vlan => 'स्विच गरिएको नेटवर्कको तार्किक विभाजन।';

  @override
  String get gameHintWord118Wan => 'विस्तृत भौगोलिक क्षेत्रमा फैलिएको नेटवर्क।';

  @override
  String get gameHintWord119Lan => 'स्थानीय क्षेत्रभित्र उपकरणहरू जोड्ने नेटवर्क।';

  @override
  String get gameHintWord120Cdn => 'डेलिभर गरिएको सामग्री क्यास गर्ने वितरित एज नेटवर्क।';

  @override
  String get gameHintWord121Cidr => 'स्ल्यासको लम्बाइसहित नेटवर्क उपसर्ग देखाउने सङ्केतन।';

  @override
  String get gameHintWord122Host => 'नेटवर्कमा जोडिएको कम्प्युटर वा अन्त्यबिन्दु।';

  @override
  String get gameHintWord123Hostname => 'नेटवर्कमा जोडिएको मेसिनलाई दिइएको मानिसले पढ्न सकिने नाम।';

  @override
  String get gameHintWord124Domain => 'इन्टरनेट नामकरण प्रणालीमा नाम दिइएको प्रशासनिक क्षेत्र।';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेसको प्रशासनिक भाग।';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेसको एउटा प्रविष्टि।';

  @override
  String get gameHintWord127Aaaa => 'नामलाई IPv6 ठेगानामा समाधान गर्ने DNS रेकर्ड प्रकार।';

  @override
  String get gameHintWord128Ptr => 'उल्टो ठेगाना खोजीका लागि प्रयोग हुने DNS रेकर्ड प्रकार।';

  @override
  String get gameHintWord129Txt => 'पाठ मानहरू भण्डारण गर्ने DNS रेकर्ड प्रकार।';

  @override
  String get gameHintWord130Cname => 'एउटा नामलाई अर्कोको उपनाम बनाउने DNS रेकर्ड।';

  @override
  String get gameHintWord131Route => 'प्याकेटहरूलाई गन्तव्यतर्फ निर्देशित गर्ने मार्ग प्रविष्टि।';

  @override
  String get gameHintWord132Routing => 'नेटवर्कहरूबीच ट्राफिकका लागि मार्ग छनोट गर्नु।';

  @override
  String get gameHintWord133Packet => 'नेटवर्कमा प्रसारण हुने डेटाको एकाइ।';

  @override
  String get gameHintWord134Protocol => 'प्रणालीहरूबीच सञ्चारका लागि सहमत नियमहरू।';

  @override
  String get gameHintWord135Ack => 'डेटा प्राप्त भएको पुष्टि गर्ने TCP फ्ल्याग।';

  @override
  String get gameHintWord136Bandwidth => 'सञ्चार लिङ्कको क्षमता।';

  @override
  String get gameHintWord137Latency => 'अनुरोध वा प्याकेटले प्रतिक्रिया पाउनु अघिको ढिलाइ।';

  @override
  String get gameHintWord138Throughput => 'प्रति एकाइ समयमा प्रशोधन गरिएको उपयोगी काम वा डेटाको मात्रा।';

  @override
  String get gameHintWord139Mtu => 'लिङ्कले विखण्डनबिना पठाउन सक्ने सबैभन्दा ठूलो प्याकेट आकार।';

  @override
  String get gameHintWord140Alpn => 'एप्लिकेसन-तह प्रोटोकल वार्ता गर्ने TLS विस्तार।';

  @override
  String get gameHintWord141Grep => 'मेल खाने ढाँचाका लागि पाठका पङ्क्तिहरू खोज्छ।';

  @override
  String get gameHintWord142Sed => 'पाठ प्रतिस्थापनका लागि सामान्य रूपमा प्रयोग हुने स्ट्रिम सम्पादक।';

  @override
  String get gameHintWord143Lscpu => 'प्रोसेसरको आर्किटेक्चर र कोर विवरण देखाउने Linux कमाण्ड।';

  @override
  String get gameHintWord144Find => 'फाइल सर्तहरू प्रयोग गरी डाइरेक्टरी रुखमा खोज्छ।';

  @override
  String get gameHintWord145Lsblk => 'ब्लक उपकरणहरू र तिनका सम्बन्धहरू सूचीबद्ध गर्ने Linux कमाण्ड।';

  @override
  String get gameHintWord146Sort => 'पाठका पङ्क्तिहरूलाई क्रमबद्ध गर्छ।';

  @override
  String get gameHintWord147Uniq => 'छेउछाउका दोहोरिएका पङ्क्तिहरू छान्छ।';

  @override
  String get gameHintWord148Head => 'फाइलको सुरुको भाग छाप्छ।';

  @override
  String get gameHintWord149Tail => 'फाइलको अन्तिम भाग छाप्छ र थपिँदै गएका लगहरू पछ्याउन सक्छ।';

  @override
  String get gameHintWord150Cat => 'फाइलहरू जोडेर तिनको सामग्री छाप्छ।';

  @override
  String get gameHintWord151Cut => 'पङ्क्तिहरूबाट चयन गरिएका फिल्ड वा अक्षर स्तम्भहरू निकाल्छ।';

  @override
  String get gameHintWord152Tee => 'स्ट्यान्डर्ड इनपुटलाई फाइलहरू र स्ट्यान्डर्ड आउटपुटमा प्रतिलिपि गर्छ।';

  @override
  String get gameHintWord153Echo => 'आफ्ना आर्गुमेन्टहरू स्ट्यान्डर्ड आउटपुटमा लेख्छ।';

  @override
  String get gameHintWord154Printf => 'सेल वा प्रोग्रामबाट ढाँचाबद्ध पाठ छाप्छ।';

  @override
  String get gameHintWord155Touch => 'फाइलको समयछाप अद्यावधिक गर्छ वा खाली फाइल बनाउँछ।';

  @override
  String get gameHintWord156Mkdir => 'डाइरेक्टरीहरू बनाउँछ।';

  @override
  String get gameHintWord157Rmdir => 'खाली डाइरेक्टरीहरू हटाउँछ।';

  @override
  String get gameHintWord158Chmod => 'Unix फाइल अनुमति बिटहरू परिवर्तन गर्छ।';

  @override
  String get gameHintWord159Chown => 'फाइलको स्वामित्व परिवर्तन गर्छ।';

  @override
  String get gameHintWord160Chgrp => 'फाइलको समूह स्वामित्व परिवर्तन गर्छ।';

  @override
  String get gameHintWord161Pwd => 'हालको कार्य डाइरेक्टरी छाप्छ।';

  @override
  String get gameHintWord162Apt => 'Debian-आधारित प्रणालीहरूले प्रयोग गर्ने प्याकेज व्यवस्थापन उपकरण।';

  @override
  String get gameHintWord163Top => 'प्रक्रियाहरू र प्रणाली स्रोत प्रयोगको अन्तरक्रियात्मक प्रदर्शन।';

  @override
  String get gameHintWord164Agent => 'होस्टमा काम गर्ने वा रिपोर्ट गर्ने सफ्टवेयर अवयव।';

  @override
  String get gameHintWord165Kill => 'पहिचानकर्ता प्रयोग गरी प्रक्रियामा सङ्केत पठाउँछ।';

  @override
  String get gameHintWord166Signal => 'अपरेटिङ सिस्टमले प्रक्रियालाई पठाउने सूचना।';

  @override
  String get gameHintWord167Sigkill => 'प्रक्रियालाई तुरुन्तै समाप्त गर्ने Unix सङ्केत।';

  @override
  String get gameHintWord168Nice => 'समायोजित सेड्युलिङ प्राथमिकतासहित प्रक्रिया सुरु गर्छ।';

  @override
  String get gameHintWord169Renice => 'चलिरहेको प्रक्रियाको सेड्युलिङ प्राथमिकता परिवर्तन गर्छ।';

  @override
  String get gameHintWord170Jobs => 'हालको सेलले व्यवस्थापन गरेका जबहरू सूचीबद्ध गर्छ।';

  @override
  String get gameHintWord171Nohup => 'ह्याङअप सङ्केतहरू बेवास्ता गरी कमाण्ड चलाउँछ।';

  @override
  String get gameHintWord172Screen => 'छुट्याउन मिल्ने सत्रहरू समर्थन गर्ने टर्मिनल मल्टिप्लेक्सर।';

  @override
  String get gameHintWord173Uptime => 'प्रणाली कति समयदेखि चलिरहेको छ भनी बताउँछ।';

  @override
  String get gameHintWord174Uname => 'प्रणाली र कर्नेल जानकारी छाप्छ।';

  @override
  String get gameHintWord175Whoami => 'हालको प्रभावकारी प्रयोगकर्ता नाम छाप्छ।';

  @override
  String get gameHintWord176Umask => 'फाइल बनाउँदा प्रयोग हुने अनुमति मास्क सेट गर्छ।';

  @override
  String get gameHintWord177Usermod => 'विद्यमान प्रयोगकर्ता खाता परिमार्जन गर्ने Linux कमाण्ड।';

  @override
  String get gameHintWord178Crontab => 'निर्धारित दोहोरिने सेल जबहरू सम्पादन वा सूचीबद्ध गर्छ।';

  @override
  String get gameHintWord179Findmnt => 'माउन्ट गरिएका फाइलप्रणालीहरूको जानकारी देखाउने Linux कमाण्ड।';

  @override
  String get gameHintWord180Mount => 'फाइलप्रणालीलाई डाइरेक्टरी रुखमा जोड्छ।';

  @override
  String get gameHintWord181Sigterm => 'प्रक्रियालाई सहज रूपमा समाप्त गर्न अनुरोध गर्ने Unix सङ्केत।';

  @override
  String get gameHintWord182Fstab => 'माउन्ट गर्नुपर्ने फाइलप्रणालीहरू वर्णन गर्ने प्रणाली तालिका।';

  @override
  String get gameHintWord183Swap => 'भौतिक मेमोरीको पूरकको रूपमा प्रयोग हुने डिस्कमा आधारित ठाउँ।';

  @override
  String get gameHintWord184Tmpfs => 'भर्चुअल मेमोरीमा आधारित अस्थायी फाइलप्रणाली।';

  @override
  String get gameHintWord185Proc => 'प्रक्रिया र कर्नेल जानकारी देखाउने Linux भर्चुअल फाइलप्रणाली।';

  @override
  String get gameHintWord186Syslog => 'मानक लगिङ प्रोटोकल र सन्देश ढाँचा।';

  @override
  String get gameHintWord187Dmesg => 'कर्नेल रिङ बफरका सन्देशहरू देखाउँछ।';

  @override
  String get gameHintWord188Free => 'प्रयोग भएको र उपलब्ध प्रणाली मेमोरी रिपोर्ट गर्छ।';

  @override
  String get gameHintWord189Stat => 'फाइलको विस्तृत मेटाडेटा देखाउँछ।';

  @override
  String get gameHintWord190Lsof => 'खुला फाइलहरू र तिनलाई समात्ने प्रक्रियाहरू सूचीबद्ध गर्छ।';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क जडान र रुटिङ जानकारी देखाउँछ।';

  @override
  String get gameHintWord192Checksum => 'डेटामा परिवर्तन वा बिग्रिएको पत्ता लगाउन प्रयोग हुने गणना गरिएको मान।';

  @override
  String get gameHintWord193Ping => 'इको अनुरोधहरू प्रयोग गरी नेटवर्क पहुँचयोग्यता जाँच्छ।';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क गन्तव्यसम्मका बीचका हपहरू देखाउँछ।';

  @override
  String get gameHintWord195Resolver => 'नाम क्वेरीका उत्तरहरू खोज्ने DNS अवयव।';

  @override
  String get gameHintWord196Nslookup => 'DNS नाम र ठेगानाहरू खोज्छ।';

  @override
  String get gameHintWord197Telnet => 'पुरानो इन्क्रिप्ट नगरिएको रिमोट टर्मिनल प्रोटोकल।';

  @override
  String get gameHintWord198Tftp => 'UDP मा आधारित सरल फाइल स्थानान्तरण प्रोटोकल।';

  @override
  String get gameHintWord199Daemon => 'Unix जस्ता प्रणालीहरूमा पृष्ठभूमिमा चल्ने सेवा प्रक्रिया।';

  @override
  String get gameHintWord200Kernel => 'अपरेटिङ सिस्टम स्रोतहरू व्यवस्थापन गर्ने मुख्य अवयव।';

  @override
  String get gameHintWord201Commit => 'संस्करण नियन्त्रणमा परिवर्तनहरूको रेकर्ड गरिएको स्न्यापसट।';

  @override
  String get gameHintWord202Branch => 'विकासको एउटा धारा जनाउने सार्न मिल्ने सन्दर्भ।';

  @override
  String get gameHintWord203Merge => 'विभिन्न विकास धाराहरूको इतिहास संयोजन गर्छ।';

  @override
  String get gameHintWord204Rebase => 'फरक आधार कमिटमाथि कमिटहरू पुनः चलाउँछ।';

  @override
  String get gameHintWord205Clone => 'रिमोट रिपोजिटरीको स्थानीय प्रतिलिपि बनाउँछ।';

  @override
  String get gameHintWord206Fetch => 'मर्ज नगरी रिमोट वस्तुहरू र सन्दर्भहरू डाउनलोड गर्छ।';

  @override
  String get gameHintWord207Pull => 'परिवर्तनहरू ल्याएर हालको ब्रान्चमा एकीकृत गर्छ।';

  @override
  String get gameHintWord208Push => 'स्थानीय कमिटहरू रिमोट रिपोजिटरीमा पठाउँछ।';

  @override
  String get gameHintWord209Stash => 'कमिट नगरिएका कार्य-रुख परिवर्तनहरू अस्थायी रूपमा सुरक्षित गर्छ।';

  @override
  String get gameHintWord210Revert => 'अर्को कमिटलाई उल्ट्याउने कमिट बनाउँछ।';

  @override
  String get gameHintWord211Reset => 'Git सन्दर्भ सार्छ र इन्डेक्स वा कार्य फाइलहरू रिसेट गर्न सक्छ।';

  @override
  String get gameHintWord212Reflog => 'Git सन्दर्भहरूमा भएका अद्यावधिकहरूको स्थानीय इतिहास।';

  @override
  String get gameHintWord213Diff => 'संस्करण वा फाइलहरूबीचको भिन्नता देखाउँछ।';

  @override
  String get gameHintWord214Status => 'स्टेज गरिएका, परिमार्जित र ट्र्याक नगरिएका फाइलहरू रिपोर्ट गर्छ।';

  @override
  String get gameHintWord215Checkout => 'रिभिजन बदल्न वा फाइलहरू पुनर्स्थापना गर्ने Git कमाण्ड।';

  @override
  String get gameHintWord216Tag => 'प्रायः रिलिज चिन्ह लगाउने नाम दिइएको सन्दर्भ।';

  @override
  String get gameHintWord217Remote => 'अर्को रिपोजिटरीसँगको नाम दिइएको जडान।';

  @override
  String get gameHintWord218Origin => 'क्लोन गरिएको रिपोजिटरीको रिमोटलाई दिइने पूर्वनिर्धारित नाम।';

  @override
  String get gameHintWord219Upstream => 'स्थानीय ब्रान्चसँग सम्बन्धित रिमोट ट्र्याकिङ ब्रान्च।';

  @override
  String get gameHintWord220Worktree => 'रिपोजिटरीसँग जोडिएको चेकआउट गरिएको कार्य डाइरेक्टरी।';

  @override
  String get gameHintWord221Registry => 'कन्टेनर इमेजहरू भण्डारण र वितरण गर्ने सेवा।';

  @override
  String get gameHintWord222Digest => 'कन्टेनर इमेजको सामग्रीमा आधारित पहिचानकर्ता।';

  @override
  String get gameHintWord223Layer => 'कन्टेनर इमेजको भाग बन्ने फाइलप्रणाली परिवर्तनहरू।';

  @override
  String get gameHintWord224Entrypoint => 'कन्टेनरको मुख्य कार्यान्वयनयोग्य परिभाषित गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord225Cmd => 'पूर्वनिर्धारित कमाण्ड वा आर्गुमेन्ट तोक्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord226Workdir => 'कार्य डाइरेक्टरी सेट गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord227Copy => 'बिल्ड-सन्दर्भका फाइलहरू इमेजमा प्रतिलिपि गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord228Add => 'स्थानीय अभिलेखहरू खोल्न पनि सक्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord229Run => 'बिल्ड-समयमा कमाण्ड कार्यान्वयन गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord230Env => 'वातावरण भेरिएबलहरू परिभाषित गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord231Arg => 'बिल्ड-समयको भेरिएबल घोषणा गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord232Expose => 'कन्टेनर पोर्ट दस्तावेजीकरण गर्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord233User => 'पछिका कमाण्डहरूको लागि खाता छान्ने Dockerfile निर्देशन।';

  @override
  String get gameHintWord234Healthcheck => 'कन्टेनरको स्वास्थ्य कसरी जाँच्ने भनी वर्णन गर्ने निर्देशन।';

  @override
  String get gameHintWord235Shebang => 'कार्यान्वयन गर्ने इन्टरप्रिटर पहिचान गर्ने स्क्रिप्टको पहिलो पङ्क्ति।';

  @override
  String get gameHintWord236Compose => 'बहु-कन्टेनर एप्लिकेसनहरू परिभाषित गरी चलाउने Docker उपकरण।';

  @override
  String get gameHintWord237Bridge => 'स्थानीय कन्टेनर नेटवर्किङका लागि सामान्य Docker नेटवर्क ड्राइभर।';

  @override
  String get gameHintWord238Overlay => 'धेरै होस्टहरूका कन्टेनरहरूमा फैलिने नेटवर्क।';

  @override
  String get gameHintWord239None => 'कन्टेनर नेटवर्किङ असक्षम गर्ने Docker नेटवर्क ड्राइभर।';

  @override
  String get gameHintWord240Prune => 'प्रयोग नभएका कन्टेनर स्रोतहरू हटाउँछ।';

  @override
  String get gameHintWord241Replicaset => 'इच्छित पड सङ्ख्या कायम राख्ने Kubernetes कन्ट्रोलर।';

  @override
  String get gameHintWord242Service => 'पडहरूमा स्थिर पहुँच दिने Kubernetes अमूर्तता।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सेवाको पछाडि रहेका ठेगानाहरू।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes स्रोतहरू समूहबद्ध गर्ने तार्किक क्षेत्र।';

  @override
  String get gameHintWord245Node => 'Kubernetes पडहरू होस्ट गर्ने वर्कर मेसिन।';

  @override
  String get gameHintWord246Kubelet => 'पड कार्यान्वयन व्यवस्थापन गर्ने प्रत्येक नोडको एजेन्ट।';

  @override
  String get gameHintWord247Pvc => 'स्थायी भण्डारणका लागि Kubernetes अनुरोध।';

  @override
  String get gameHintWord248Apiserver => 'क्लस्टर API उपलब्ध गराउने Kubernetes कन्ट्रोल-प्लेन अवयव।';

  @override
  String get gameHintWord249Role => 'भूमिका-आधारित पहुँच नियन्त्रणमा अनुमतिहरूको नाम दिइएको समूह।';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेसमा स्रोत खपत सीमित गर्ने Kubernetes वस्तु।';

  @override
  String get gameHintWord251Selector => 'लेबलहरूद्वारा स्रोतहरू मिलाउने अभिव्यक्ति।';

  @override
  String get gameHintWord252Taint => 'मेल खाने टोलरेसन नभएका पडहरूलाई टाढा राख्ने नोड गुण।';

  @override
  String get gameHintWord253Toleration => 'टेन्ट गरिएको नोडमा सेड्युल गर्न दिने पड सेटिङ।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोडलाई सेड्युल गर्न नमिल्ने बनाउँछ।';

  @override
  String get gameHintWord255Uncordon => 'कोर्डन गरिएको नोडलाई फेरि सेड्युल गर्न मिल्ने बनाउँछ।';

  @override
  String get gameHintWord256Drain => 'नोड मर्मतअघि वर्कलोडहरू सुरक्षित रूपमा हटाउँछ।';

  @override
  String get gameHintWord257Job => 'कार्य पूरा नभएसम्म चलाउने Kubernetes वर्कलोड।';

  @override
  String get gameHintWord258Cronjob => 'तालिका अनुसार जबहरू बनाउने Kubernetes वर्कलोड।';

  @override
  String get gameHintWord259Readiness => 'कन्टेनरले ट्राफिक प्राप्त गर्न सक्छ कि सक्दैन भनी जनाउने प्रोब।';

  @override
  String get gameHintWord260Liveness => 'कन्टेनर पुनः सुरु गर्नुपर्छ कि पर्दैन भनी जनाउने प्रोब।';

  @override
  String get gameHintWord261Canary => 'नयाँ संस्करण थोरै ट्राफिक अंशमा देखाउने रिलिज विधि।';

  @override
  String get gameHintWord262Rolling => 'चलिरहेका उदाहरणहरू क्रमशः प्रतिस्थापन गर्ने अद्यावधिक रणनीति।';

  @override
  String get gameHintWord263Rollback => 'पहिले राम्ररी चलिरहेको एप्लिकेसन संस्करण पुनर्स्थापना गर्छ।';

  @override
  String get gameHintWord264Rollout => 'नयाँ एप्लिकेसन संस्करणको क्रमिक डिप्लोयमेन्ट।';

  @override
  String get gameHintWord265Recreate => 'प्रतिस्थापन सुरु गर्नु अघि पुराना पडहरू रोक्ने डिप्लोयमेन्ट रणनीति।';

  @override
  String get gameHintWord266Blue => 'ब्लु-ग्रीन रिलिजका दुई वातावरणमध्ये एउटा।';

  @override
  String get gameHintWord267Green => 'ब्लु-ग्रीन रिलिजको अर्को वातावरण।';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पाइपलाइनले उत्पादन गरेको संस्करण भएको आउटपुट।';

  @override
  String get gameHintWord269Staging => 'रिलिज प्रमाणीकरणका लागि प्रयोग हुने उत्पादन-पूर्व वातावरण।';

  @override
  String get gameHintWord270Production => 'वास्तविक अन्तिम प्रयोगकर्ताहरूलाई सेवा दिने वातावरण।';

  @override
  String get gameHintWord271Release => 'प्रयोगका लागि उपलब्ध गराइएको सफ्टवेयर संस्करण।';

  @override
  String get gameHintWord272Version => 'सफ्टवेयर रिभिजनलाई छुट्याउने पहिचानकर्ता।';

  @override
  String get gameHintWord273Revision => 'कागजात वा कोडबेसको पहिचान गर्न सकिने संस्करण।';

  @override
  String get gameHintWord274Webhook => 'घटना हुँदा पठाइने HTTP सूचना।';

  @override
  String get gameHintWord275Runbook => 'प्रणाली सञ्चालन वा पुनर्प्राप्तिका लागि दस्तावेजीकृत प्रक्रिया।';

  @override
  String get gameHintWord276Workspace => 'कार्य गर्ने परियोजना स्रोतहरू भएको डाइरेक्टरी वा क्षेत्र।';

  @override
  String get gameHintWord277Credentials => 'प्रणालीमा पहुँचका लागि प्रयोग हुने प्रमाणीकरण सामग्री।';

  @override
  String get gameHintWord278Trigger => 'पाइपलाइन सुरु गर्ने घटना वा सर्त।';

  @override
  String get gameHintWord279Parameter => 'जब वा फङ्सनलाई दिइने नाम भएको इनपुट।';

  @override
  String get gameHintWord280Access => 'अनुमति सापेक्ष स्रोत प्रयोग गर्न सक्ने क्षमता।';

  @override
  String get gameHintWord281Module => 'पुनः प्रयोग गर्न मिल्ने पूर्वाधार परिभाषाहरूको समूह।';

  @override
  String get gameHintWord282Provider => 'कन्फिगरेसनलाई बाह्य API सँग जोड्ने Terraform प्लगइन।';

  @override
  String get gameHintWord283Resource => 'कन्फिगरेसनमा घोषणा गरिएको व्यवस्थित पूर्वाधार वस्तु।';

  @override
  String get gameHintWord284Variable => 'कन्फिगरेसन वा कोडले प्रयोग गर्ने नाम दिइएको इनपुट मान।';

  @override
  String get gameHintWord285Output => 'पूर्वाधार कन्फिगरेसनले फर्काउने उजागर गरिएको मान।';

  @override
  String get gameHintWord286Tfstate => 'Terraform state स्न्यापसटसँग सम्बन्धित फाइल प्रत्यय।';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट भेरिएबल मानहरूका लागि प्रयोग हुने फाइल प्रत्यय।';

  @override
  String get gameHintWord288Backend => 'state भण्डारण नियन्त्रण गर्ने Terraform कन्फिगरेसन।';

  @override
  String get gameHintWord289Plan => 'प्रस्तावित पूर्वाधार परिवर्तनहरूको Terraform पूर्वावलोकन।';

  @override
  String get gameHintWord290Apply => 'प्रस्तावित परिवर्तनहरू कार्यान्वयन गर्ने Terraform सञ्चालन।';

  @override
  String get gameHintWord291Destroy => 'व्यवस्थित पूर्वाधार हटाउने Terraform सञ्चालन।';

  @override
  String get gameHintWord292Import => 'विद्यमान स्रोतलाई पूर्वाधार व्यवस्थापनअन्तर्गत ल्याउँछ।';

  @override
  String get gameHintWord293Refresh => 'रेकर्ड गरिएको state लाई वास्तविक पूर्वाधारसँग समक्रमण गर्छ।';

  @override
  String get gameHintWord294Validate => 'कन्फिगरेसनको सिन्ट्याक्स र आन्तरिक एकरूपता जाँच्छ।';

  @override
  String get gameHintWord295Fmt => 'मानक कन्फिगरेसन ढाँचा लागू गर्ने Terraform कमाण्ड।';

  @override
  String get gameHintWord296Init => 'Terraform प्रोभाइडरहरू र कार्य डाइरेक्टरी आरम्भ गर्छ।';

  @override
  String get gameHintWord297Executor => 'बिल्ड चलाउन सक्ने Jenkins को वर्कर स्लट।';

  @override
  String get gameHintWord298Dependencies => 'एउटा अवयव अर्कोभन्दा पहिले चाहिने सम्बन्धहरू।';

  @override
  String get gameHintWord299Drift => 'घोषित र वास्तविक पूर्वाधार अवस्थाबीचको भिन्नता।';

  @override
  String get gameHintWord300Locking => 'साझा अवस्था एकसाथ धेरै लेखकले परिवर्तन गर्न नपाउने गरी रोक्छ।';

  @override
  String get gameHintWord301Playbook => 'स्वचालन प्ले र कार्यहरू वर्णन गर्ने Ansible कागजात।';

  @override
  String get gameHintWord302Inventory => 'व्यवस्थित होस्ट र समूहहरूको Ansible सङ्ग्रह।';

  @override
  String get gameHintWord303Facts => 'व्यवस्थित होस्टहरूबारे सङ्कलन गरिएको प्रणाली जानकारी।';

  @override
  String get gameHintWord304Task => 'स्वचालनमा कामको एउटा व्यक्तिगत एकाइ।';

  @override
  String get gameHintWord305Handler => 'परिवर्तनले सूचित गर्दा चल्ने Ansible कार्य।';

  @override
  String get gameHintWord306Notify => 'परिवर्तन भएको कार्यपछि ह्यान्डलर लाइनमा राख्ने Ansible निर्देशन।';

  @override
  String get gameHintWord307Become => 'विशेषाधिकार वृद्धि सक्षम गर्ने Ansible सेटिङ।';

  @override
  String get gameHintWord308Vault => 'संवेदनशील स्वचालन डेटा इन्क्रिप्ट गर्ने Ansible सुविधा।';

  @override
  String get gameHintWord309Register => 'कार्यको नतिजा भेरिएबलमा सुरक्षित गर्ने Ansible निर्देशन।';

  @override
  String get gameHintWord310When => 'सर्तयुक्त कार्य कार्यान्वयन नियन्त्रण गर्ने Ansible कीवर्ड।';

  @override
  String get gameHintWord311Loop => 'सङ्ग्रहमा स्वचालन कार्य दोहोर्‍याउँछ।';

  @override
  String get gameHintWord312Include => 'पुनः प्रयोग गर्न मिल्ने स्वचालन सामग्री गतिशील रूपमा लोड गर्छ।';

  @override
  String get gameHintWord313Tags => 'स्वचालन कार्यहरूका उपसमूह छान्न प्रयोग हुने लेबलहरू।';

  @override
  String get gameHintWord314Template => 'डिप्लोय गर्नु अघि भेरिएबलहरूसहित रेन्डर गरिने फाइल।';

  @override
  String get gameHintWord315Jinja => 'Ansible ले प्रयोग गर्ने टेम्प्लेट भाषा।';

  @override
  String get gameHintWord316Abstraction => 'कार्यान्वयन विवरण सरल इन्टरफेसको पछाडि लुकाउनु।';

  @override
  String get gameHintWord317Agile => 'प्रतिक्रियामा जोड दिने पुनरावृत्तिमूलक सफ्टवेयर डेलिभरी विधि।';

  @override
  String get gameHintWord318Puppet => 'घोषणात्मक म्यानिफेस्ट प्रयोग गर्ने कन्फिगरेसन व्यवस्थापन उपकरण।';

  @override
  String get gameHintWord319Airflow => 'कार्यप्रवाह DAG हरू तालिकाबद्ध र अर्केस्ट्रेट गर्ने प्लेटफर्म।';

  @override
  String get gameHintWord320Argo => 'GitOps डेलिभरी कन्ट्रोलर समेत समावेश भएको क्लाउड-नेटिभ परियोजना परिवार।';

  @override
  String get gameHintWord321Rds => 'AWS को व्यवस्थित रिलेसनल डेटाबेस सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord322Sqs => 'AWS को व्यवस्थित सन्देश कतारको संक्षिप्त रूप।';

  @override
  String get gameHintWord323Sns => 'AWS को प्रकाशन-सदस्यता सूचना सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord324Ses => 'AWS को इमेल पठाउने सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord325Iam => 'क्लाउड पहिचान र पहुँच व्यवस्थापनको संक्षिप्त रूप।';

  @override
  String get gameHintWord326Kms => 'AWS को इन्क्रिप्सन कुञ्जी व्यवस्थापन सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord327Waf => 'एप्लिकेसन-तहका वेब अनुरोधहरू छान्ने फायरवाल।';

  @override
  String get gameHintWord328Eks => 'AWS को व्यवस्थित Kubernetes सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord329Ecs => 'AWS को व्यवस्थित कन्टेनर अर्केस्ट्रेसन सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord330Ecr => 'AWS को कन्टेनर इमेज रजिस्ट्रीको संक्षिप्त रूप।';

  @override
  String get gameHintWord331Aurora => 'MySQL र PostgreSQL सँग अनुकूल AWS रिलेसनल डेटाबेस।';

  @override
  String get gameHintWord332Redshift => 'AWS को विश्लेषण डेटा वेयरहाउस।';

  @override
  String get gameHintWord333Neptune => 'AWS को व्यवस्थित ग्राफ डेटाबेस।';

  @override
  String get gameHintWord334Elasticache => 'AWS को व्यवस्थित इन-मेमोरी क्यासिङ सेवा।';

  @override
  String get gameHintWord335Athena => 'SQL प्रयोग गरी वस्तु-भण्डारण डेटा क्वेरी गर्ने AWS सेवा।';

  @override
  String get gameHintWord336Glue => 'AWS को सर्भरविहीन डेटा एकीकरण र ETL सेवा।';

  @override
  String get gameHintWord337Emr => 'व्यवस्थित ठूलो-डेटा प्रशोधन क्लस्टरहरूका लागि AWS प्लेटफर्म।';

  @override
  String get gameHintWord338Lambda => 'सर्भर व्यवस्थापन नगरी फङ्सनहरू चलाउने AWS सेवा।';

  @override
  String get gameHintWord339Cloudfront => 'AWS को विश्वव्यापी सामग्री वितरण नेटवर्क।';

  @override
  String get gameHintWord340Cloudwatch => 'मेट्रिक्स, लग र अलार्महरू सङ्कलन गर्ने AWS सेवा।';

  @override
  String get gameHintWord341Cloudshell => 'AWS को ब्राउजरमा आधारित सेल वातावरण।';

  @override
  String get gameHintWord342Codecommit => 'AWS को व्यवस्थित Git रिपोजिटरी सेवा।';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कम्पाइल गरी बिल्ड परीक्षण चलाउने AWS सेवा।';

  @override
  String get gameHintWord344Codedeploy => 'AWS को स्वचालित एप्लिकेसन डिप्लोयमेन्ट सेवा।';

  @override
  String get gameHintWord345Codepipeline => 'AWS को निरन्तर डेलिभरी पाइपलाइन सेवा।';

  @override
  String get gameHintWord346Guardduty => 'AWS को बुद्धिमान खतरा पहिचान सेवा।';

  @override
  String get gameHintWord347Inspector => 'वर्कलोडहरूमा जोखिमहरू मूल्याङ्कन गर्ने AWS सेवा।';

  @override
  String get gameHintWord348Macie => 'वस्तु भण्डारणमा संवेदनशील डेटा पत्ता लगाउने AWS सेवा।';

  @override
  String get gameHintWord349Shield => 'AWS को व्यवस्थित DDoS सुरक्षा सेवा।';

  @override
  String get gameHintWord350Snowball => 'ठूलो डेटा स्थानान्तरणका लागि AWS को भौतिक उपकरण।';

  @override
  String get gameHintWord351Snowcone => 'AWS अफलाइन स्थानान्तरण परिवारको सानो र बलियो उपकरण।';

  @override
  String get gameHintWord352Datasync => 'AWS को स्वचालित अनलाइन डेटा स्थानान्तरण सेवा।';

  @override
  String get gameHintWord353Msk => 'AWS को व्यवस्थित Apache Kafka सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord354Backup => 'पुनर्प्राप्तिका लागि राखिएको डेटाको प्रतिलिपि।';

  @override
  String get gameHintWord355Transcribe => 'बोलीलाई पाठमा रूपान्तरण गर्ने AWS सेवा।';

  @override
  String get gameHintWord356Translate => 'भाषाहरूबीच पाठ अनुवाद गर्ने AWS सेवा।';

  @override
  String get gameHintWord357Rekognition => 'तस्बिर र भिडियो विश्लेषण गर्ने AWS सेवा।';

  @override
  String get gameHintWord358Comprehend => 'AWS को प्राकृतिक-भाषा विश्लेषण सेवा।';

  @override
  String get gameHintWord359Textract => 'कागजातबाट पाठ र तालिकाहरू निकाल्ने AWS सेवा।';

  @override
  String get gameHintWord360Sagemaker => 'मेसिन लर्निङ मोडेल बनाउन र डिप्लोय गर्ने AWS प्लेटफर्म।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud को विश्वव्यापी रूपमा वितरित रिलेसनल डेटाबेस।';

  @override
  String get gameHintWord362Pub => 'प्रकाशन-सदस्यता सन्देश ढाँचाको प्रकाशन गर्ने भाग।';

  @override
  String get gameHintWord363Sub => 'प्रकाशन-सदस्यता सन्देश ढाँचाको सदस्य भाग।';

  @override
  String get gameHintWord364Functions => 'सर्भरविहीन प्लेटफर्महरूले दिने घटना-सञ्चालित कोड एकाइहरू।';

  @override
  String get gameHintWord365App => 'सफ्टवेयर एप्लिकेसनको छोटो रूप।';

  @override
  String get gameHintWord366Engine => 'Compute Engine जस्ता नामहरूमा रहेको कार्यान्वयन अवयव।';

  @override
  String get gameHintWord367Compute => 'भर्चुअल मेसिन वा कन्टेनरले उपलब्ध गराउने प्रशोधन क्षमता।';

  @override
  String get gameHintWord368Network => 'डेटा आदानप्रदान गर्ने जोडिएका प्रणालीहरू।';

  @override
  String get gameHintWord369Security => 'खतराहरूविरुद्ध प्रणाली र जानकारीको सुरक्षा।';

  @override
  String get gameHintWord370Identity => 'पहुँच निर्णयका लागि प्रयोग हुने प्रयोगकर्ता वा सेवाको प्रतिनिधित्व।';

  @override
  String get gameHintWord371Monitoring => 'प्रणालीको स्वास्थ्य र व्यवहारको निरन्तर अवलोकन।';

  @override
  String get gameHintWord372Logging => 'एप्लिकेसन र प्रणालीका छुट्टाछुट्टै घटनाहरू रेकर्ड गर्नु।';

  @override
  String get gameHintWord373Trace => 'सेवा कलहरूमा अनुरोधको मार्गको रेकर्ड।';

  @override
  String get gameHintWord374Metrics => 'समयसँगै प्रणालीको व्यवहारको सङ्ख्यात्मक मापन।';

  @override
  String get gameHintWord375Alert => 'अनुगमन गरिएको अवस्थामा ध्यान चाहिएको जनाउने सूचना।';

  @override
  String get gameHintWord376Billing => 'प्रयोग गरिएका क्लाउड सेवाहरूको ट्र्याकिङ र शुल्क लगाउने काम।';

  @override
  String get gameHintWord377Quota => 'प्रयोग गर्न सकिने स्रोतको मात्रामा सीमा।';

  @override
  String get gameHintWord378Region => 'उपलब्धता क्षेत्रहरू समावेश गर्ने भौगोलिक क्लाउड डिप्लोयमेन्ट क्षेत्र।';

  @override
  String get gameHintWord379Tenancy => 'ग्राहकहरूले पूर्वाधार कसरी साझा गर्छन् भनी वर्णन गर्ने व्यवस्था।';

  @override
  String get gameHintWord380Regional => 'क्लाउड क्षेत्रमा सीमित स्रोतलाई जनाउँछ।';

  @override
  String get gameHintWord381Cosmos => 'Azure को विश्वव्यापी रूपमा वितरित बहु-मोडेल डेटाबेसको नाम।';

  @override
  String get gameHintWord382Synapse => 'वेयरहाउसिङ र डेटा प्रशोधन संयोजन गर्ने Azure विश्लेषण प्लेटफर्म।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft को क्लाउड-नेटिभ सुरक्षा जानकारी र घटना प्लेटफर्म।';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोड सुरक्षित गर्ने Microsoft सुरक्षा उत्पादन परिवार।';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रान्डिङको ठाउँ लिने Microsoft पहिचान उत्पादन परिवार।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager को संक्षिप्त रूप।';

  @override
  String get gameHintWord387Arc => 'Azure बाहिरका स्रोतहरूमा व्यवस्थापन विस्तार गर्ने Azure सेवा।';

  @override
  String get gameHintWord388Aks => 'Azure को व्यवस्थित Kubernetes सेवाको संक्षिप्त रूप।';

  @override
  String get gameHintWord389Armor => 'Google Cloud को वेब सुरक्षा सेवाको नामको अन्तिम भाग।';

  @override
  String get gameHintWord390Blob => 'Azure को वस्तु-भण्डारण डेटा प्रकार।';

  @override
  String get gameHintWord391Files => 'व्यवस्थित नेटवर्क फाइल साझेदारी दिने Azure सेवा।';

  @override
  String get gameHintWord392Disk => 'भर्चुअल मेसिनमा जोडिएको ब्लक-भण्डारण उपकरण।';

  @override
  String get gameHintWord393Function => 'नतिजा फर्काउन सक्ने बोलाउन मिल्ने कोड खण्ड।';

  @override
  String get gameHintWord394Logic => 'कार्यप्रवाह एकीकरणका लागि Azure एप सेवा श्रेणी।';

  @override
  String get gameHintWord395Insights => 'Azure को एप्लिकेसन टेलिमेट्री उत्पादन नामको अन्तिम भाग।';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क अन्त्यबिन्दुहरूबीच बग्ने डेटा।';

  @override
  String get gameHintWord397Manager => 'Azure Resource को कन्ट्रोल प्लेनको उत्पादन नामको अन्तिम भाग।';

  @override
  String get gameHintWord398Bastion => 'निजी होस्ट पहुँचका लागि व्यवस्थित वा कडा सुरक्षित प्रवेश बिन्दु।';

  @override
  String get gameHintWord399Front => 'Azure को विश्वव्यापी प्रवेश-बिन्दु सेवा Front Door को पहिलो शब्द।';

  @override
  String get gameHintWord400Door => 'Azure को विश्वव्यापी प्रवेश-बिन्दु सेवा Front Door को दोस्रो शब्द।';

  @override
  String get gameHintWord401Javascript => 'ब्राउजर र Node रनटाइममा व्यापक रूपमा प्रयोग हुने प्रोग्रामिङ भाषा।';

  @override
  String get gameHintWord402Perl => 'पाठ प्रशोधन र नियमित अभिव्यक्तिका लागि चिनिने स्क्रिप्टिङ भाषा।';

  @override
  String get gameHintWord403Powershell => 'Microsoft को वस्तु-उन्मुख सेल र स्वचालन भाषा।';

  @override
  String get gameHintWord404Java => 'Jenkins कार्यान्वयन गर्न प्रयोग भएको JVM भाषा।';

  @override
  String get gameHintWord405Json => 'वस्तु र एरेसहितको हल्का डेटा ढाँचा।';

  @override
  String get gameHintWord406Xml => 'नेस्ट गरिएका नाम दिइएका ट्यागहरू प्रयोग गर्ने मार्कअप ढाँचा।';

  @override
  String get gameHintWord407Html => 'वेब पृष्ठहरू संरचित गर्न प्रयोग हुने मार्कअप भाषा।';

  @override
  String get gameHintWord408Css => 'वेब प्रस्तुति नियन्त्रण गर्ने स्टाइलसिट भाषा।';

  @override
  String get gameHintWord409String => 'पाठ अक्षरहरूको क्रम।';

  @override
  String get gameHintWord410Array => 'तत्वहरूको सूचकाङ्क भएको सङ्ग्रह।';

  @override
  String get gameHintWord411Hash => 'Ruby र Perl मा रहेको सहयोगी कुञ्जी-मान सङ्ग्रह।';

  @override
  String get gameHintWord412Object => 'गुण र व्यवहार भएको रनटाइम मान।';

  @override
  String get gameHintWord413Class => 'क्लास-आधारित भाषाहरूमा वस्तु बनाउन प्रयोग हुने परिभाषा।';

  @override
  String get gameHintWord414Method => 'वस्तु वा क्लाससँग सम्बन्धित फङ्सन।';

  @override
  String get gameHintWord415Interface => 'अवयवले उपलब्ध गराउने सञ्चालनहरू वर्णन गर्ने सम्झौता।';

  @override
  String get gameHintWord416Subclass => 'अर्को क्लासबाट व्युत्पन्न क्लास।';

  @override
  String get gameHintWord417Super => 'अभिभावक-क्लासको व्यवहार बोलाउन प्रयोग हुने कीवर्ड।';

  @override
  String get gameHintWord418Protected => 'पहुँचलाई क्लास-सम्बन्धित सन्दर्भमा सीमित गर्ने दृश्यता तह।';

  @override
  String get gameHintWord419Exception => 'सामान्य नियन्त्रण प्रवाहलाई अवरुद्ध गर्ने रनटाइम अवस्था।';

  @override
  String get gameHintWord420Regex => 'पाठ मिलाउन प्रयोग हुने ढाँचा सङ्केतन।';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोड संरचनाले निर्धारण गर्ने स्कोपलाई जनाउँछ।';

  @override
  String get gameHintWord422Scalar => 'Perl मा एकल-मान भेरिएबल श्रेणी।';

  @override
  String get gameHintWord423Tuple => 'Python मा परिवर्तन गर्न नमिल्ने क्रमबद्ध सङ्ग्रह।';

  @override
  String get gameHintWord424List => 'Python मा परिवर्तन गर्न मिल्ने क्रमबद्ध सङ्ग्रह।';

  @override
  String get gameHintWord425Dict => 'Python को अन्तर्निहित म्यापिङ प्रकारको नाम।';

  @override
  String get gameHintWord426Dictionary => 'कुञ्जीहरूलाई सम्बन्धित मानहरूसँग जोड्ने सङ्ग्रह।';

  @override
  String get gameHintWord427Set => 'भिन्न मानहरूको सङ्ग्रह।';

  @override
  String get gameHintWord428Boolean => 'सत्य वा असत्य जनाउने डेटा प्रकार।';

  @override
  String get gameHintWord429Integer => 'पूर्ण सङ्ख्याहरू जनाउने सङ्ख्यात्मक प्रकार।';

  @override
  String get gameHintWord430Float => 'फ्लोटिङ-पोइन्ट मानहरू जनाउने सङ्ख्यात्मक प्रकार।';

  @override
  String get gameHintWord431Double => 'दोहोरो-परिशुद्धता फ्लोटिङ-पोइन्ट प्रकार।';

  @override
  String get gameHintWord432Null => 'वस्तु वा नतिजाको अनुपस्थिति जनाउने मान।';

  @override
  String get gameHintWord433Undefined => 'तोकिएको मान नभएको अवस्थाका लागि JavaScript मान।';

  @override
  String get gameHintWord434Promise => 'भविष्यमा आउने असिङ्क्रोनस नतिजा जनाउने JavaScript वस्तु।';

  @override
  String get gameHintWord435Async => 'असिङ्क्रोनस फङ्सन चिन्ह लगाउने कीवर्ड।';

  @override
  String get gameHintWord436Await => 'असिङ्क्रोनस नतिजाको प्रतीक्षा गर्ने कीवर्ड।';

  @override
  String get gameHintWord437Callback => 'अर्को सञ्चालनले बोलाउन पठाइने फङ्सन।';

  @override
  String get gameHintWord438Closure => 'वरपरको लेक्सिकल स्कोपमा पहुँच कायम राख्ने फङ्सन।';

  @override
  String get gameHintWord439Generator => 'yield गरिएका मानहरूमार्फत क्रम आलस्यपूर्वक उत्पादन गर्ने फङ्सन।';

  @override
  String get gameHintWord440Iterator => 'सङ्ग्रहका मानहरूमा एकपछि अर्को गर्दै अघि बढ्ने वस्तु।';

  @override
  String get gameHintWord441Print => 'मानलाई आउटपुटमा लेख्ने सामान्य फङ्सन।';

  @override
  String get gameHintWord442Input => 'स्ट्यान्डर्ड इनपुटबाट एक पङ्क्ति पढ्ने Python फङ्सन।';

  @override
  String get gameHintWord443Open => 'फाइल ह्यान्डल प्राप्त गर्न प्रयोग हुने फङ्सन।';

  @override
  String get gameHintWord444Close => 'खुला फाइल वा जडान मुक्त गर्ने सञ्चालन।';

  @override
  String get gameHintWord445Read => 'स्ट्रिम वा फाइलबाट डेटा प्राप्त गर्ने सञ्चालन।';

  @override
  String get gameHintWord446Write => 'स्ट्रिम वा फाइलमा डेटा पठाउने सञ्चालन।';

  @override
  String get gameHintWord447Append => 'सङ्ग्रहको अन्त्यमा वस्तु थप्छ।';

  @override
  String get gameHintWord448Split => 'डेलिमिटर प्रयोग गरी पाठलाई उप-स्ट्रिङहरूमा तोड्छ।';

  @override
  String get gameHintWord449Join => 'विभाजक प्रयोग गरी स्ट्रिङहरूको क्रम जोड्छ।';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिङको वरपरको खाली ठाउँ हटाउँछ।';

  @override
  String get gameHintWord451Chomp => 'Perl वा Ruby मा अन्त्यको रेकर्ड विभाजक हटाउँछ।';

  @override
  String get gameHintWord452Map => 'सङ्ग्रहको प्रत्येक वस्तुमा रूपान्तरण लागू गर्छ।';

  @override
  String get gameHintWord453Filter => 'सर्त पूरा गर्ने सङ्ग्रहका वस्तुहरू राख्छ।';

  @override
  String get gameHintWord454Reduce => 'सङ्ग्रहलाई सञ्चित नतिजामा संयोजन गर्छ।';

  @override
  String get gameHintWord455Range => 'पूर्णाङ्कहरूको अङ्कगणितीय क्रम जनाउने Python प्रकार।';

  @override
  String get gameHintWord456Length => 'सङ्ग्रहको आकार फर्काउने गुण वा मेथड।';

  @override
  String get gameHintWord457Len => 'सङ्ग्रहको आकार फर्काउने Python को अन्तर्निहित फङ्सन।';

  @override
  String get gameHintWord458Type => 'वस्तुको प्रकार फर्काउने Python फङ्सन।';

  @override
  String get gameHintWord459Isinstance => 'प्रकार पदानुक्रममा सदस्यता जाँच्ने Python फङ्सन।';

  @override
  String get gameHintWord460Yield => 'जेनरेटरबाट मान उत्पादन गर्ने कीवर्ड।';

  @override
  String get gameHintWord461Saas => 'पूर्ण सफ्टवेयर एप्लिकेसनहरू उपलब्ध गराउने क्लाउड मोडेल।';

  @override
  String get gameHintWord462Paas => 'व्यवस्थित एप्लिकेसन विकास प्लेटफर्म दिने क्लाउड मोडेल।';

  @override
  String get gameHintWord463Iaas => 'भर्चुअल कम्प्युट, भण्डारण र नेटवर्किङ दिने क्लाउड मोडेल।';

  @override
  String get gameHintWord464Hybrid => 'निजी र सार्वजनिक पूर्वाधार संयोजन गर्ने क्लाउड दृष्टिकोण।';

  @override
  String get gameHintWord465Archive => 'कम पहुँच हुने डेटाको दीर्घकालीन भण्डारण।';

  @override
  String get gameHintWord466Public => 'धेरै ग्राहकहरूलाई सेवा दिने क्लाउड स्वामित्व मोडेल।';

  @override
  String get gameHintWord467Private => 'एकल संस्थालाई समर्पित क्लाउड मोडेल।';

  @override
  String get gameHintWord468Scalability => 'स्रोत थपेर बढ्दो भार सम्हाल्ने क्षमता।';

  @override
  String get gameHintWord469Availability => 'आवश्यक पर्दा सेवा कति हदसम्म पहुँचयोग्य रहन्छ भन्ने मात्रा।';

  @override
  String get gameHintWord470Resilience => 'विफलताहरू सहन र त्यसबाट पुनर्प्राप्त हुने क्षमता।';

  @override
  String get gameHintWord471Redundancy => 'एकल विफलता बिन्दुहरू घटाउने दोहोरो अवयवहरू।';

  @override
  String get gameHintWord472Disaster => 'पुनर्प्राप्ति रणनीतिले सम्बोधन गर्ने ठूलो अवरोध।';

  @override
  String get gameHintWord473Recovery => 'विफलतापछि सेवा वा डेटा पुनर्स्थापना गर्नु।';

  @override
  String get gameHintWord474Replicate => 'डेटा वा वर्कलोडहरू अर्को स्थानमा प्रतिलिपि गर्नुहोस्।';

  @override
  String get gameHintWord475Snapshotting => 'डेटा वा प्रणाली अवस्थाको निश्चित समयको प्रतिलिपि लिनु।';

  @override
  String get gameHintWord476Restore => 'सुरक्षित गरिएको प्रतिलिपिबाट डेटा पुनर्प्राप्त गर्ने सञ्चालन।';

  @override
  String get gameHintWord477Residency => 'भण्डारण गरिएको डेटाको भौगोलिक स्थान निर्धारण गर्ने आवश्यकता।';

  @override
  String get gameHintWord478Compliance => 'आवश्यक नियमन र संगठनात्मक नियन्त्रणहरू पूरा गर्नु।';

  @override
  String get gameHintWord479Governance => 'प्रविधिको प्रयोग नियन्त्रण गर्ने नीति र प्रक्रियाहरू।';

  @override
  String get gameHintWord480Audit => 'रेकर्ड गरिएका गतिविधि र अनुपालन प्रमाणको समीक्षा।';

  @override
  String get gameHintWord481Token => 'प्राधिकरण वा पहिचान जनाउने प्रमाण वा चिन्ह।';

  @override
  String get gameHintWord482Oauth => 'प्रत्यायोजित पहुँच दिन मिल्ने प्राधिकरण फ्रेमवर्क।';

  @override
  String get gameHintWord483Saml => 'उद्यम सिङ्गल साइन-अनका लागि सामान्य रूपमा प्रयोग हुने XML-आधारित मानक।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पाइपलाइनहरूमा प्रयोग हुने विशेष कमाण्ड।';

  @override
  String get gameHintWord485Algorithm => 'गणनात्मक समस्या समाधान गर्न परिभाषित चरणहरूको क्रम।';

  @override
  String get gameHintWord486Key => 'इन्क्रिप्सन नियन्त्रण गर्न वा भण्डारण गरिएको डेटा पहिचान गर्न प्रयोग हुने मान।';

  @override
  String get gameHintWord487Alias => 'सेल कमाण्ड वा स्रोतको वैकल्पिक नाम।';

  @override
  String get gameHintWord488Amend => 'सबैभन्दा हालको कमिट प्रतिस्थापन गर्ने Git कमिट विकल्प।';

  @override
  String get gameHintWord489Allsigned => 'हस्ताक्षर गरिएका स्क्रिप्टहरू मात्र चाहिने PowerShell कार्यान्वयन नीति।';

  @override
  String get gameHintWord490Remotesigned => 'डाउनलोड गरिएका स्क्रिप्टहरूमा हस्ताक्षर चाहिने PowerShell नीति।';

  @override
  String get gameHintWord491Acl => 'प्रयोगकर्ता वा प्रणालीहरूका अनुमति परिभाषित गर्ने सूची।';

  @override
  String get gameHintWord492Uid => 'Unix प्रयोगकर्तालाई दिइएको सङ्ख्यात्मक पहिचानकर्ता।';

  @override
  String get gameHintWord493Setgid => 'कार्यान्वयन वा विरासतको क्रममा समूह पहिचानमा असर गर्ने अनुमति बिट।';

  @override
  String get gameHintWord494Setfacl => 'फाइल पहुँच नियन्त्रण सूचीहरू सेट गर्ने Linux कमाण्ड।';

  @override
  String get gameHintWord495Isolation => 'वर्कलोडहरूले एकअर्कामा हस्तक्षेप गर्न नपाउने गरी गरिएको विभाजन।';

  @override
  String get gameHintWord496Sighup => 'प्रायः कन्फिगरेसन पुनः लोड गर्न अनुरोध गर्न प्रयोग हुने Unix ह्याङअप सङ्केत।';

  @override
  String get gameHintWord497Sigint => 'सामान्यतया Control-C बाट उत्पन्न हुने Unix अवरोध सङ्केत।';

  @override
  String get gameHintWord498Sigstop => 'प्रक्रिया समाप्त नगरी रोक्ने Unix सङ्केत।';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड र पहुँच कुञ्जीजस्ता संवेदनशील मानहरू।';

  @override
  String get gameHintWord500Secure => 'अनधिकृत पहुँचबाट सुरक्षित जडानलाई जनाउँछ।';

  @override
  String get fontSettingsTitle => 'फन्ट';

  @override
  String get fontChangeFont => 'फन्ट परिवर्तन गर्नुहोस्';

  @override
  String get fontSystemDefault => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get fontPreview => 'पूर्वावलोकन';

  @override
  String get fontPreviewSample => 'एक-एक प्रश्नबाट DevOps सिक्नुहोस्';

  @override
  String get fontSelected => 'चयन गरिएको';

  @override
  String get fontLatinOnlyNote => 'अनुकूल फन्टहरू ल्याटिन अक्षरमा लागू हुन्छन्। अन्य लिपिहरू तपाईंको यन्त्रको फन्टमै रहन्छन्।';

  @override
  String get fontDescSystem => 'तपाईंको यन्त्रको अन्तर्निर्मित फन्ट';

  @override
  String get fontDescGeometric => 'ज्यामितीय सान्स-सेरिफ';

  @override
  String get fontDescGeometricRounded => 'ज्यामितीय गोलाकार सान्स-सेरिफ';

  @override
  String get fontDescFriendly => 'मैत्रीपूर्ण सान्स-सेरिफ';

  @override
  String get fontDescCondensed => 'साँघुरो';

  @override
  String get fontDescRounded => 'गोलाकार सान्स-सेरिफ';

  @override
  String get fontDescRoundedDisplay => 'गोलाकार डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
