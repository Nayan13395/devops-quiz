// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTour => 'ॲपची सफर';

  @override
  String get skipTour => 'सफर वगळा';

  @override
  String get finishTour => 'सफर पूर्ण करा';

  @override
  String tourStep(int current, int total) {
    return 'पायरी $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेव्हिगेशन मेनू';

  @override
  String get tourSearch => 'संबंधित क्विझ श्रेणी शोधण्यासाठी येथे विषय लिहा.';

  @override
  String get tourCategory => 'मिश्र क्विझसाठी DevOps वर टॅप करा. इतर श्रेणींमध्ये प्रश्नसंच आहेत. नंतर पाहण्यासाठी प्रश्न बुकमार्क करा.';

  @override
  String get tourMenu => 'नेव्हिगेशन मेनू उघडण्यासाठी या बटणावर टॅप करा.';

  @override
  String get tourLearning => 'कार्डसाठी शिका उघडा. कोणत्याही दिशेने स्वाइप करा, शफल करा, ऑटो-स्वाइप वापरा किंवा कार्ड बुकमार्क करा.';

  @override
  String get tourGames => 'खेळ खेळून गुण मिळवा. पातळी असलेल्या खेळांमध्ये प्रत्येक पूर्ण पातळीसाठी 100 गुण मिळतात; सूचनेसाठी 20 गुण लागतात.';

  @override
  String get tourAchievements => 'तुमच्या उपलब्धी येथे पाहा. नवीन उपलब्धी आणि उपलब्ध थीम पॉपअपमध्ये दिसतात.';

  @override
  String get tourSettings => 'भाषा, थीम आणि आवाज निवडा. बुकमार्कसाठी जतन केलेला डेटा किंवा हा मार्गदर्शक पुन्हा पाहण्यासाठी ॲपची सफर उघडा.';

  @override
  String get achievementUnlocked => 'उपलब्धी अनलॉक झाली!';

  @override
  String get themeUnlocked => 'नवीन थीम उपलब्ध!';

  @override
  String get themeUnlockedMessage => 'आता तुम्ही सेटिंग्ज > थीम येथे ही थीम निवडू शकता.';

  @override
  String get gameSounds => 'खेळाचे आवाज';

  @override
  String get gameSoundsDescription => 'खेळ आणि क्विझसाठी ध्वनी प्रभाव. उपकरणाचा आवाज आणि सायलेंट मोड तपासा.';

  @override
  String get testSound => 'आवाज तपासा';

  @override
  String get soundSettingBusy => 'कृपया प्रतीक्षा करा...';

  @override
  String get soundSettingError => 'आवाजाची सेटिंग लोड किंवा जतन करता आली नाही. पुन्हा प्रयत्न करा.';

  @override
  String get soundPlaybackError => 'आवाज वाजवता आला नाही. उपकरण किंवा ब्राउझरच्या ऑडिओ सेटिंग्ज तपासा.';

  @override
  String get saveData => 'जतन केलेला डेटा';

  @override
  String get learningTranslationUnavailable => 'या कार्डचे निवडलेल्या भाषेत अजून भाषांतर झालेले नाही.';

  @override
  String get saveQuestion => 'प्रश्न जतन करा';

  @override
  String defaultPortQuestion(String service) {
    return '$service चे डीफॉल्ट पोर्ट कोणते आहे?';
  }

  @override
  String get removeSavedItem => 'जतन केलेल्यातून काढा';

  @override
  String get noSavedData => 'अजून काहीही जतन केलेले नाही. शिकण्याचे कार्ड किंवा क्विझमधील प्रश्न बुकमार्क करा.';

  @override
  String get savedDataError => 'जतन केलेला डेटा लोड किंवा अपडेट करता आला नाही. पुन्हा प्रयत्न करा.';

  @override
  String get savedItemUnavailable => 'हा जतन केलेला घटक आता उपलब्ध नाही.';

  @override
  String get correctAnswer => 'योग्य उत्तर';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get certificates => 'प्रमाणपत्रे';

  @override
  String get whatsNew => 'नवीन काय आहे';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get lightMode => 'लाईट मोड';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा निवडा';

  @override
  String get english => 'इंग्रजी';

  @override
  String get hindi => 'हिंदी';

  @override
  String get marathi => 'मराठी';

  @override
  String get startQuiz => 'क्विझ सुरू करा';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'श्रेणी बदला';

  @override
  String get dailyQuiz => 'दैनिक प्रश्नमंजुषा';

  @override
  String get dailyQuizCompleted => 'दैनिक प्रश्नमंजुषा पूर्ण झाली.';

  @override
  String get dailyQuizCompletedMessage => 'तुम्ही आजची दैनिक प्रश्नमंजुषा आधीच पूर्ण केली आहे.\n\nउद्या नवीन आव्हानासाठी पुन्हा या!';

  @override
  String get leaderboard => 'गुणफलक';

  @override
  String get shareApp => 'ॲप शेअर करा';

  @override
  String get rateApp => 'ॲपला रेटिंग द्या';

  @override
  String get about => 'आमच्याबद्दल';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get home => 'मुख्यपृष्ठ';

  @override
  String get games => 'गेम्स';

  @override
  String get referAndEarn => 'रेफर करा आणि कमवा';

  @override
  String get themes => 'थीम्स';

  @override
  String get version => 'आवृत्ती';

  @override
  String get developer => 'विकसक';

  @override
  String get contact => 'संपर्क';

  @override
  String get learning => 'शिका';

  @override
  String get linkedIn => 'लिंक्डइन';

  @override
  String get connectWithMe => 'माझ्याशी संपर्क साधा';

  @override
  String get aboutDescription => 'DevOps Quiz Linux, Docker, Kubernetes, Networking, Git, Jenkins, Terraform, Ansible आणि इतर DevOps तंत्रज्ञानावरील हजारो निवडक प्रश्नांच्या माध्यमातून मुलाखती आणि प्रमाणपत्र परीक्षांची तयारी करण्यास मदत करते.';

  @override
  String get quizResult => 'प्रश्नमंजुषा निकाल';

  @override
  String get outstanding => 'उत्कृष्ट!';

  @override
  String get greatJob => 'खूप छान!';

  @override
  String get goodEffort => 'चांगला प्रयत्न!';

  @override
  String get keepPracticing => 'सराव सुरू ठेवा!';

  @override
  String get dontGiveUp => 'हार मानू नका!';

  @override
  String get shareMessage1 => 'माझा स्कोअर';

  @override
  String get shareMessage2 => 'DevOps प्रश्नमंजुषेत!';

  @override
  String get downloadApp => 'ॲप डाउनलोड करा:';

  @override
  String get score => 'गुण';

  @override
  String get points => 'गुण';

  @override
  String get percentage => 'टक्केवारी';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'परिपूर्ण गुण बोनस';

  @override
  String get shareScore => 'गुण शेअर करा';

  @override
  String get restartQuiz => 'प्रश्नमंजुषा पुन्हा सुरू करा';

  @override
  String get backToCategories => 'श्रेणीकडे परत जा';

  @override
  String get greatProgress => 'खूप छान! तुम्ही उत्कृष्ट प्रगती करत आहात.';

  @override
  String get practiceMore => 'छान प्रयत्न! अजून थोडा सराव करा आणि अधिक गुण मिळवा.';

  @override
  String get keepLearning => 'शिकत राहा आणि पुन्हा प्रयत्न करा. सरावाने तुम्ही नक्कीच सुधाराल.';

  @override
  String get everyExpertStarted => 'प्रत्येक तज्ञाची सुरुवात नवशिक्या म्हणूनच झाली होती. सराव करा आणि पुन्हा अधिक आत्मविश्वासाने या!';

  @override
  String get quizInstructions => 'क्विझसाठी सूचना';

  @override
  String get instruction1 => 'प्रत्येक संचामध्ये 25 प्रश्न आहेत.';

  @override
  String get instruction2 => 'प्रत्येक प्रश्नासाठी 30 सेकंद आहेत.';

  @override
  String get instruction3 => 'हिरवा = बरोबर उत्तर.';

  @override
  String get instruction4 => 'लाल = चुकीचे उत्तर.';

  @override
  String get instruction5 => 'उत्तर बदलता येणार नाही.';

  @override
  String get instruction6 => 'मागील बटण फक्त पुनरावलोकनासाठी आहे.';

  @override
  String get instruction7 => 'क्विझ पूर्ण झाल्यावर गुण दाखवले जातील.';

  @override
  String get instruction8 => 'प्रत्येक बरोबर उत्तरासाठी 10 गुण मिळतात.';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्ट कामगिरी! तुम्ही $expert आहात.';
  }

  @override
  String get selectCategory => 'श्रेणी निवडा';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'संच निवडा';

  @override
  String get set => 'संच';

  @override
  String get questions => 'प्रश्न';

  @override
  String get noScoresYet => 'अद्याप कोणतेही गुण नाहीत';

  @override
  String get pointsShort => 'गुण';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz मध्ये आपले स्वागत आहे';

  @override
  String hiUser(String name) {
    return 'नमस्कार $name';
  }

  @override
  String get challengeMode => 'चॅलेंज मोड';

  @override
  String get challenge => 'चॅलेंज';

  @override
  String get question => 'प्रश्न';

  @override
  String get reward => 'बक्षीस';

  @override
  String get survivalMode => 'सर्व्हायव्हल मोड';

  @override
  String get speedChallenge => 'स्पीड चॅलेंज';

  @override
  String get dailyChallenge => 'दैनिक चॅलेंज';

  @override
  String get ultimateChallenge => 'अल्टिमेट चॅलेंज';

  @override
  String get timeLeft => 'उर्वरित वेळ';

  @override
  String get completed => 'पूर्ण';

  @override
  String get locked => 'लॉक';

  @override
  String get back => 'मागे';

  @override
  String get next => 'पुढे';

  @override
  String get submit => 'सबमिट करा';

  @override
  String get achievements => 'उपलब्धी';

  @override
  String get streak => 'सलग दिवस';

  @override
  String get days => 'दिवस';

  @override
  String get tomorrowsReward => 'उद्याचे बक्षीस';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 मी DevOps Quiz मध्ये $score/$totalQuestions गुण मिळवले!\n\n🏆 गुण: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 टक्केवारी: $percentage%\n\nतुम्ही माझा स्कोअर मागे टाकू शकता का?';
  }

  @override
  String get gameUiSpinWheel => 'चक्र फिरवा';

  @override
  String get gameUiSpinAndWinBonusPoints => 'फिरवा आणि बोनस गुण जिंका';

  @override
  String get gameUiScratchCard => 'स्क्रॅच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'बक्षीस पाहण्यासाठी खरवडा';

  @override
  String get gameUiLuckySlots => 'लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स फिरवा आणि गुण जिंका';

  @override
  String get gameUiMysteryDeal => 'मिस्ट्री डील';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'एक रहस्यमय बॉक्स निवडा आणि उत्तर द्या';

  @override
  String get gameUiMemoryMatch => 'मेमरी मॅच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोड्या जुळवा';

  @override
  String get gameUiWordGuess => 'शब्द ओळखा';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'विविध स्तरांमधून DevOps शब्द ओळखा';

  @override
  String get gameUiFindWords => 'शब्द शोधा';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिडमध्ये लपलेल्या DevOps संज्ञा शोधा';

  @override
  String get gameUiSpotTheDifference => 'फरक ओळखा';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दोन चित्रित दृश्यांमधील पाच बदल शोधा';

  @override
  String get gameUiJigsawPuzzle => 'जिगसॉ कोडे';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'शेअर केलेली HD प्राणी आणि निसर्ग चित्रे पुन्हा जुळवा';

  @override
  String get gameUiHighOrLow => 'जास्त की कमी';

  @override
  String get gameUiBuildAStreak => 'सलग विजयांची मालिका तयार करा';

  @override
  String get gameUiTrueOrFalseBlitz => 'खरे की खोटे ब्लिट्झ';

  @override
  String get gameUiQuickAnswerQuiz => 'झटपट उत्तर क्विझ';

  @override
  String get gameUiCommandMatch => 'कमांड मॅच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमांड्स त्यांच्या अर्थांशी जुळवा';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'डीफॉल्ट पोर्ट्स ओळखा';

  @override
  String get gameUiTicTacToe => 'टिक-टॅक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X शून्य आणि फुल्या संगणकाविरुद्ध';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चार डिस्क टाका';

  @override
  String get gameUiLudo => 'लुडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट्सविरुद्ध शर्यत';

  @override
  String get gameUiChess => 'बुद्धिबळ';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'बुद्धिबळ पट, कायदेशीर चाली, दोन खेळाडू';

  @override
  String get gameUiSnakeAndLadders => 'साप-शिडी';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'फासे बोर्ड, साप आणि शिड्या, दोन खेळाडू';

  @override
  String get gameUiGames => 'खेळ 🎮';

  @override
  String get gameUiPlayEarn => 'खेळा आणि कमवा';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'खेळ खेळा आणि बोनस गुण कमवा!';

  @override
  String get gameUiSearchGames => 'खेळ शोधा';

  @override
  String get gameUiClearSearch => 'शोध साफ करा';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" शी जुळणारा कोणताही खेळ नाही';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'फिरवा आणि बोनस गुण जिंका.';

  @override
  String get gameUiScratchToRevealYourReward => 'तुमचे बक्षीस पाहण्यासाठी खरवडा.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स फिरवा आणि गुण जिंका.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'एक रहस्यमय बॉक्स निवडा आणि गुण जिंकण्यासाठी बरोबर उत्तर द्या.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'गुण कमावण्यासाठी DevOps जोड्या जुळवा.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 प्रयत्नांत DevOps संज्ञा ओळखा.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिडमध्ये लपलेल्या DevOps संज्ञा शोधा.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 स्तरांमध्ये स्वाइप करून DevOps शब्द शोधा.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दोन चित्रित दृश्यांमधील पाच बदल शोधा.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'शेअर केलेली HD प्राणी आणि निसर्ग चित्रे पुन्हा जुळवा.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'सलग विजयांची मालिका तयार करा आणि तुमचे गुण सुरक्षित करा.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'झटपट उत्तरे देऊन वेळेवर मात करा.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'खरे की खोटे ब्लिट्झ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमांड्स त्या काय करतात त्याशी जुळवा.';

  @override
  String get gameUiCommandMatch670a76e => 'कमांड मॅच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जीवनांसह डीफॉल्ट पोर्ट्स ओळखा.';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'संगणकाविरुद्ध O/X खेळा.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जिंकण्यासाठी एका रांगेत चार डिस्क टाका.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'तुमच्या सोंगट्या तीन बॉट्सविरुद्ध पळवा.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'कायदेशीर चालींसह स्थानिक दोन खेळाडूंचे बुद्धिबळ.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'कायदेशीर दोन खेळाडूंचा बुद्धिबळ सामना खेळा.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दोन खेळाडूंचा फासे बोर्ड खेळ.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 पर्यंत शर्यत. शिड्या चढा आणि सापांपासून वाचा.';

  @override
  String get gameUiPlay => 'खेळा';

  @override
  String get gameUiWheelStopped => 'चक्र थांबले!';

  @override
  String get gameUiYourRewardIs => 'तुमचे बक्षीस आहे';

  @override
  String get gameUiPOINTS => 'गुण';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'हे बक्षीस मिळवण्यासाठी 1 क्विझ प्रश्नाचे बरोबर उत्तर द्या.';

  @override
  String get gameUiWrongAnswerRewardLost => 'चुकीचे उत्तर = बक्षीस गमावले.';

  @override
  String get gameUiAnswerQuestion => 'प्रश्नाचे उत्तर द्या';

  @override
  String get gameUiSpinWheele449982 => '🎡 चक्र फिरवा';

  @override
  String get gameUiDailySpin => 'दैनिक स्पिन';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'चक्र फिरवा, नंतर तुमचे बक्षीस मिळवण्यासाठी प्रश्नाचे उत्तर द्या!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'तुम्ही आजचा स्पिन आधीच वापरला आहे.';

  @override
  String get gameUiSpinning => 'फिरत आहे...';

  @override
  String get gameUiSPINNOW => 'आता फिरवा';

  @override
  String get gameUiCOMEBACKTOMORROW => 'उद्या पुन्हा या';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'आजचे बक्षीस: ⭐ $value1 गुण';
  }

  @override
  String get gameUiBackToGames => 'खेळांकडे परत';

  @override
  String get gameUiSPIN => 'फिरवा';

  @override
  String get gameUiRewardRevealed => 'बक्षीस उघड झाले!';

  @override
  String get gameUiYouFound => 'तुम्हाला मिळाले';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्रॅच कार्ड';

  @override
  String get gameUiDailyScratch => 'दैनिक स्क्रॅच';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'आजचे बक्षीस पाहण्यासाठी कार्ड खरवडा!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'तुम्ही आजचे स्क्रॅच कार्ड आधीच वापरले आहे.';

  @override
  String get gameUiAlreadyScratched => 'आधीच खरवडले';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'दुसऱ्या बक्षिसासाठी उद्या पुन्हा या.';

  @override
  String get gameUiYouRevealed => 'तुम्ही उघड केले';

  @override
  String get gameUiSCRATCHHERE => 'येथे खरवडा  👆';

  @override
  String get gameUiJACKPOT777 => 'जॅकपॉट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'तुमचे बक्षीस';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स फिरवा, नंतर बक्षीस मिळवण्यासाठी प्रश्नाचे उत्तर द्या!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'तुम्ही आज आधीच खेळला आहात.';

  @override
  String get gameUiSPINNING => 'फिरत आहे...';

  @override
  String get gameUiROLLNOW => 'आता फासा टाका';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जॅकपॉट! 777 गुण उपलब्ध!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'मिस्ट्री डीलची स्थिती तपासता आली नाही: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'बॉक्स $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 गुण';
  }

  @override
  String get gameUiStartQuestion => 'प्रश्न सुरू करा';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 मिस्ट्री डील';

  @override
  String get gameUiMysteryDealCompleted => 'मिस्ट्री डील पूर्ण झाले!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'तुम्ही आज मिस्ट्री डील आधीच खेळला आहात.';

  @override
  String get gameUiTodayYouWon => 'आज तुम्ही जिंकलात';

  @override
  String get gameUiTodaySReward => 'आजचे बक्षीस';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 गुण';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 गुण गमावले';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'आणखी एका मिस्ट्री बॉक्ससाठी उद्या परत या!';

  @override
  String get gameUiChooseYourMysteryBox => 'तुमचा मिस्ट्री बॉक्स निवडा';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'प्रत्येक बॉक्समध्ये 10 ते 1000 गुणांचे लपवलेले बक्षीस असते.';

  @override
  String get gameUiPickOnlyOneBox => 'फक्त एकच बॉक्स निवडा!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सर्व $value1 स्तर पूर्ण झाले!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'स्तर $value1 पूर्ण झाला!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालींमध्ये पूर्ण केले.\nतुम्ही $value2 गुण मिळवले!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालींमध्ये पूर्ण केले.\nहा स्तर आधीच पूर्ण झाला होता.';
  }

  @override
  String get gameUiNextLevel => 'पुढील स्तर';

  @override
  String get gameUiDone => 'पूर्ण';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमरी मॅच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सर्व 100 स्तर पूर्ण झाले!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'तुम्ही मेमरी मॅचचे प्रत्येक स्तर पूर्ण केले. छान खेळलात!';

  @override
  String get gameUiChooseLevel => 'स्तर निवडा';

  @override
  String gameUiMoves(String value1) {
    return 'चाली: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'स्तर $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोड्या';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'स्तर $value1 लक्षात ठेवा';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 जुळणाऱ्या जोड्या शोधा';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'प्रकरण 1 · बिल्ड पाइपलाइन पुन्हा सुरू करा';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'प्रकरण 2 · क्लाउड प्लॅटफॉर्मचा विस्तार करा';

  @override
  String get gameUiChapter3ProtectProduction => 'प्रकरण 3 · प्रोडक्शनचे संरक्षण करा';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'सबमिट करण्यासाठी उरलेली सर्व $value1 अक्षरे वापरा.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सर्व स्तर पूर्ण झाले!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'स्तर $value1 पूर्ण झाला!';
  }

  @override
  String get gameUiTryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्द $value1 होता. तुम्ही $value2 गुण मिळवले.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्द $value1 होता. $value3 हिंट नंतर तुम्ही $value2 गुण मिळवले.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्द $value1 होता. $value3 हिंट्स नंतर तुम्ही $value2 गुण मिळवले.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्द $value1 होता. स्तर $value2 अजूनही तुमची वाट पाहत आहे.';
  }

  @override
  String get gameUiFinish => 'समाप्त करा';

  @override
  String get gameUiNextLevel254fd73 => 'पुढील स्तर';

  @override
  String get gameUiRetryLevel => 'स्तर पुन्हा खेळा';

  @override
  String get gameUiHowToPlay => 'कसे खेळायचे';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'प्रत्येक स्तरात एक DevOps शब्द असतो. पाच अक्षरांपेक्षा लहान शब्दांमध्ये सुरुवातीला कोणतेही मोफत अक्षर नसते; मोठ्या शब्दांमध्ये एक असते. उत्तर तयार करण्यासाठी अक्षर रॅक वापरा आणि Enter दाबा. हिंट आणखी एक अक्षर उघड करते आणि तुमच्या शिल्लकेतून 20 गुण वजा करते. प्रत्येक पूर्ण केलेल्या स्तरासाठी 100 गुण मिळतात.';

  @override
  String get gameUiGotIt => 'समजले';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सर्व $value1 स्तर पूर्ण झाले!';
  }

  @override
  String get gameUiEasy => 'सोपे';

  @override
  String get gameUiMedium => 'मध्यम';

  @override
  String get gameUiHard => 'कठीण';

  @override
  String get gameUiHowToPlay13a6b22 => 'कसे खेळायचे';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'स्तर $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'बक्षीस $value1 गुण · वापरलेल्या हिंट्स $value2';
  }

  @override
  String get gameUiHint20Pts => 'हिंट · −20 गुण';

  @override
  String get gameUiEnter => 'एंटर';

  @override
  String get gameUiDelete => 'हटवा';

  @override
  String get gameUiDragThroughAWord => 'शब्दावरून ड्रॅग करा';

  @override
  String get gameUiDragThroughEachWord => 'प्रत्येक शब्दावरून ड्रॅग करा';

  @override
  String get gameUiReleaseToSelect => 'निवडण्यासाठी सोडा';

  @override
  String gameUiFound(String value1) {
    return '$value1 सापडला';
  }

  @override
  String get gameUiNoWordThere => 'तेथे कोणताही शब्द नाही';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 आधीच सापडला आहे';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 शोधा';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सर्व स्तर पूर्ण झाले!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'तुम्हाला प्रत्येक शब्द सापडला आणि तुम्ही $value1 गुण मिळवले.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'तुम्हाला प्रत्येक शब्द सापडला. हा स्तर आधीच पूर्ण झाला होता.';

  @override
  String get gameUiAll500LevelsComplete => 'सर्व 500 स्तर पूर्ण झाले!';

  @override
  String get gameUiReviewLevels => 'स्तरांचे पुनरावलोकन करा';

  @override
  String gameUiLeft(String value1) {
    return '$value1 शिल्लक';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 गुण';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगती जतन करता आली नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'तुम्ही $value1 गुण मिळवले!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'तुम्ही हे चित्र आधीच पूर्ण केले आहे. पुन्हा खेळल्यास अतिरिक्त गुण मिळत नाहीत.';

  @override
  String get gameUiYouCompletedEveryPicture => 'तुम्ही प्रत्येक चित्र पूर्ण केले!';

  @override
  String get gameUiLevels => 'स्तर';

  @override
  String get gameUiPictureB => 'चित्र B';

  @override
  String get gameUiPictureA => 'चित्र A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'चित्र लोड होऊ शकले नाही. पुन्हा प्रयत्न करा';

  @override
  String get gameUiResetZoom => 'झूम रीसेट करा';

  @override
  String get gameUiZoomBothPictures => 'दोन्ही चित्रे झूम करा';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'हिंट · प्रति हिंट $value1 गुण';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगती लोड करता आली नाही. पुन्हा प्रयत्न करा';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'स्तर $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सर्व फरक सापडले!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count फरक शोधा. कोणत्याही चित्रात प्रत्येक फरकावर टॅप करा.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'चुका: $value1  ·  हिंट्स: $value2 (−$value3 गुण)  ·  $value4 स्तर पूर्ण';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'पुढील स्तर: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'कोडे $value1 पूर्ण झाले!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'चित्र $value1 चालींमध्ये पूर्ण झाले. तुम्ही $value2 गुण मिळवले.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'चित्र $value1 चालींमध्ये पूर्ण झाले.';
  }

  @override
  String get gameUiNextPuzzle => 'पुढील कोडे';

  @override
  String get gameUiAllPuzzlesComplete => 'सर्व कोडी पूर्ण झाली';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'कोड्याचा तुकडा $value2 पैकी $value1, योग्यरित्या ठेवलेला';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'कोड्याचा तुकडा $value2 पैकी $value1';
  }

  @override
  String get gameUiChoosePuzzle => 'कोडे निवडा';

  @override
  String get gameUiShufflePieces => 'तुकडे मिसळा';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'कोड्याचे चित्र लोड करता आले नाही.';

  @override
  String get gameUiPreviousPuzzle => 'मागील कोडे';

  @override
  String gameUiPuzzle(String value1) {
    return 'कोडे $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चाली';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'तुकडे अदलाबदल करण्यासाठी ओढा, किंवा दोन तुकड्यांवर टॅप करा.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 कोडी सोडवली  ·  प्रत्येकी $value3 गुण';
  }

  @override
  String get gameUiGameOver => 'खेळ संपला';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'संख्या $value1 होती.\nसलग विजय: $value2\nतुम्ही $value3 गुण मिळवले!\n\nआणखी एका संधीसाठी उद्या परत या!';
  }

  @override
  String get gameUiHigherOrLower => 'जास्त की कमी 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'आज आधीच खेळलात!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'तुम्ही $value1/$value2/$value3 रोजी खेळलात.\n\nनवीन सलग मालिका तयार करण्यासाठी उद्या परत या!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'तुम्ही आज आधीच खेळला आहात.\n\nआणखी एका संधीसाठी उद्या परत या!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 सलग मालिका: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ गुण: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'पुढील संख्या जास्त असेल की कमी?';

  @override
  String get gameUiLower => 'कमी';

  @override
  String get gameUiHigher => 'जास्त';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'बरोबर की चूक ब्लिट्झ ⚡';

  @override
  String get gameUiTimeSUp => 'वेळ संपली!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'बरोबर उत्तरे: $value1\nसर्वोत्तम सलग मालिका: $value2\n$value3तुम्ही $value4 गुण मिळवले!\n\nआणखी एका फेरीसाठी उद्या परत या!';
  }

  @override
  String get gameUiStreakBonus20 => 'सलग मालिका बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'दाखवलेले उत्तर बरोबर आहे की चूक?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 श्रेणींमध्ये $value1 प्रश्न';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'तुमच्याकडे $value1 सेकंद आहेत. प्रत्येक बरोबर उत्तराला $value2 गुण मिळतात. चुकीच्या उत्तराने $value3 सेकंद कमी होतात. सलग 5 बरोबर उत्तरे दिल्यास +20 बोनस मिळतो.';
  }

  @override
  String get gameUiRoundTimer => 'फेरीचा टायमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सेकंद';
  }

  @override
  String get gameUiStart => 'सुरू करा';

  @override
  String get gameUiTrue => 'बरोबर';

  @override
  String get gameUiFalse => 'चूक';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमांड जुळवा 🔗';

  @override
  String get gameUiAllMatched => 'सर्व जुळले!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'चुका: $value1\nतुम्ही $value2 गुण मिळवले!\n\nनवीन कमांडसाठी उद्या परत या!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'फेरी $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'एका कमांडवर टॅप करा, नंतर तिच्या अर्थावर टॅप करा.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'आता जुळणाऱ्या अर्थावर टॅप करा.';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जीव संपले';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'बरोबर उत्तरे: $value1\nतुम्ही $value2 गुण मिळवले!\n\nआणखी एका फेरीसाठी उद्या परत या!';
  }

  @override
  String get gameUiYouEarned10Points => 'तुम्ही 10 गुण मिळवले!';

  @override
  String get gameUiYouWin => 'तुम्ही जिंकलात!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जिंकला!';
  }

  @override
  String get gameUiXWins => 'X जिंकला!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जिंकला!';
  }

  @override
  String get gameUiComputerWins => 'संगणक जिंकला';

  @override
  String get gameUiOWins => 'O जिंकला!';

  @override
  String get gameUiPlayer2OWins => 'खेळाडू 2 (O) जिंकला!';

  @override
  String get gameUiItSADraw => 'सामना बरोबरीत सुटला';

  @override
  String get gameUiYourTurn => 'तुमची पाळी';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ची पाळी';
  }

  @override
  String get gameUiComputerIsThinking => 'संगणक विचार करत आहे';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खेळाडू $value1 ची चाल';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ची चाल';
  }

  @override
  String get gameUiPlayer2ToMove => 'खेळाडू 2 ची चाल';

  @override
  String get gameUiNewRound => 'नवीन फेरी';

  @override
  String get gameUiVsComputer => 'संगणकाविरुद्ध';

  @override
  String get gameUi2Players => '2 खेळाडू';

  @override
  String get gameUiYou => 'तुम्ही';

  @override
  String get gameUiDraws => 'बरोबरी';

  @override
  String get gameUiPlayer2 => 'खेळाडू 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'घर $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'पुन्हा खेळा';

  @override
  String get gameUiConnectFourWin20Points => 'Connect Four विजय: 20 गुण!';

  @override
  String get gameUiBotWins => 'बॉट जिंकला!';

  @override
  String get gameUiRed => 'लाल';

  @override
  String get gameUiYellow => 'पिवळा';

  @override
  String get gameUiBoardFullDraw => 'बोर्ड भरला — बरोबरी';

  @override
  String get gameUiBotIsThinking => 'बॉट विचार करत आहे';

  @override
  String get gameUiBotTurn => 'बॉटची पाळी';

  @override
  String get gameUiNewGame => 'नवीन खेळ';

  @override
  String get gameUiVsBot => 'बॉटविरुद्ध';

  @override
  String get gameUi2Player => '2 खेळाडू';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बॉटविरुद्ध खेळा · चकती टाकण्यासाठी स्तंभावर टॅप करा';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दोन खेळाडू · चकती टाकण्यासाठी स्तंभावर टॅप करा';

  @override
  String gameUiColumn(String value1) {
    return 'स्तंभ $value1';
  }

  @override
  String get gameUiYouRed => 'तुम्ही · लाल';

  @override
  String get gameUiRedPlayer1 => 'लाल · खेळाडू 1';

  @override
  String get gameUiBotYellow => 'बॉट · पिवळा';

  @override
  String get gameUiYellowPlayer2 => 'पिवळा · खेळाडू 2';

  @override
  String get gameUiLudoMatchStats => 'लुडो सामन्याची आकडेवारी';

  @override
  String get gameUiNoCompletedMatchesYet => 'अद्याप कोणतेही पूर्ण झालेले सामने नाहीत.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेळले $value1  ·  जिंकले $value2  ·  हरले $value3';
  }

  @override
  String get gameUiClose => 'बंद करा';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लुडो चॅम्पियन! तुम्ही 50 गुण मिळवले.';

  @override
  String get gameUiNewLudoGame => 'नवीन लुडो खेळ';

  @override
  String get gameUiBotOpponents => 'बॉट प्रतिस्पर्धी';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नवीन सामना सुरू केल्यास तुमचा जतन केलेला खेळ बदलला जाईल.';

  @override
  String get gameUiCancel => 'रद्द करा';

  @override
  String get gameUiStartGame => 'खेळ सुरू करा';

  @override
  String get gameUiPlayerColours => 'खेळाडूंचे रंग';

  @override
  String get gameUiApply => 'लागू करा';

  @override
  String get gameUiMatchStats => 'सामन्याची आकडेवारी';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेटने जिंकला';
  }

  @override
  String get gameUiBlack => 'काळा';

  @override
  String get gameUiWhite => 'पांढरा';

  @override
  String get gameUiComputerWinsByCheckmate => 'संगणक चेकमेटने जिंकला';

  @override
  String get gameUiYouWinByCheckmate => 'तुम्ही चेकमेटने जिंकलात';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेटमुळे बरोबरी';

  @override
  String get gameUiDraw => 'बरोबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · चेक';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'मात! तुम्हाला 50 गुण मिळाले.';

  @override
  String get gameUiStartANewGame => 'नवीन खेळ सुरू करायचा?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खेळाडू मोड बदलल्यास जतन केलेला सामना बदलला जाईल.';

  @override
  String get gameUiComputer => 'संगणक';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · पांढरा / खेळाडू 2 · काळा';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'तुम्ही पांढरे आहात · संगणक काळा आहे';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (पांढरा) · संगणक (काळा)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'तुम्ही काळे आहात · संगणक पांढरा आहे';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (काळा) · संगणक (पांढरा)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 प्रथम फासा टाकतो';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 पुन्हा फासा टाकतो';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 ने फासा टाकायचा आहे';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सापसिडी विजय: 100 गुण!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खेळाडू बदलल्यास जतन केलेला खेळ बदलला जाईल.';

  @override
  String get gameUiStartANewLevel => 'नवीन स्तर सुरू करायचा?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'स्तर बदलल्यास जतन केलेला खेळ बदलला जाईल.';

  @override
  String get gameUiChangeLevel => 'स्तर बदला';

  @override
  String get gameUiPlayers => 'खेळाडू';

  @override
  String get gameUiPlayAgainstBot => 'बॉटविरुद्ध खेळा';

  @override
  String get gameUi3Players => '3 खेळाडू';

  @override
  String get gameUi4Players => '4 खेळाडू';

  @override
  String get gameUiLevel1709305 => 'स्तर';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'स्तर $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 खेळाडू · स्तर $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · फासा टाका';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 वर $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रश्न लोड करता आला नाही: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'बरोबर उत्तर!';

  @override
  String get gameUiWrongAnswer => 'चुकीचे उत्तर';

  @override
  String get gameUiYouClaimedYourReward => 'तुम्ही तुमचे बक्षीस मिळवले!';

  @override
  String get gameUiAddedToYourTotalPoints => 'तुमच्या एकूण गुणांमध्ये जोडले.';

  @override
  String get gameUiTheCorrectAnswerWas => 'बरोबर उत्तर होते:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 गुणांचे बक्षीस गमावले.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'तुमचे सध्याचे गुण कमी केले गेले नाहीत.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'उद्या परत या आणि पुन्हा प्रयत्न करा.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रश्न लोड करता आला नाही.';

  @override
  String get gameUiYourReward677fa6e => 'तुमचे बक्षीस';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 गुण';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'ते मिळवण्यासाठी बरोबर उत्तर द्या!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'आणखी एका फेरीसाठी उद्या परत या.';

  @override
  String get gameUiGreen => 'हिरवा';

  @override
  String get gameUiBlue => 'निळा';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 विचार करत आहे';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: सोंगटी निवडा';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: फासा टाका';
  }

  @override
  String gameUiDice(String value1) {
    return 'फासा $value1';
  }

  @override
  String get gameUiRollDice => 'फासा टाका';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 सोंगटी $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'खेळाडू $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'बॉट $value1';
  }

  @override
  String get gameUiBot => 'बॉट';

  @override
  String get gameUiHintInsufficientPoints => 'सूचना वापरण्यासाठी तुम्हाला 20 गुण हवेत.';

  @override
  String get gameUiHintPurchaseFailed => 'सूचना खरेदी करता आली नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'राणी';

  @override
  String get gameUiChessRook => 'हत्ती';

  @override
  String get gameUiChessBishop => 'उंट';

  @override
  String get gameUiChessKnight => 'घोडा';

  @override
  String get gameUiChessPawn => 'प्यादे';

  @override
  String get gameUiChessEmpty => 'रिकामे';

  @override
  String get gameSceneLampAndFlowers => 'दिवा आणि फुले';

  @override
  String get gameSceneGardenFriends => 'बागेतील मित्र';

  @override
  String get gameSceneUnderwaterExplorers => 'पाण्याखालील संशोधक';

  @override
  String get gameSceneOceanOrca => 'सागरी ऑर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'कुरणातील कोल्हा';

  @override
  String get gameSceneYellowSubmarine => 'पिवळी पाणबुडी';

  @override
  String get gameSceneTurkeyInTheClearing => 'मोकळ्या जागेतील टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारीतील पाणवठा';

  @override
  String get gameSceneJungleCompanions => 'जंगलातील सोबती';

  @override
  String get gameSceneGoldenPuppyGarden => 'सोनेरी पिल्लाची बाग';

  @override
  String get gameSceneSeaTurtleReef => 'सागरी कासवाचा खडक';

  @override
  String get gameSceneCoralReefFriends => 'प्रवाळ खडकातील मित्र';

  @override
  String get gameSceneSharedClownfish => 'सामायिक क्लाउनफिश';

  @override
  String get gameSceneLittleDinosaur => 'छोटा डायनासोर';

  @override
  String get gameSceneSafariCompanions => 'सफारीतील सोबती';

  @override
  String get gameSceneSwirlingFlowers => 'गिरक्या घेणारी फुले';

  @override
  String get gameSceneGardenKitten => 'बागेतील मांजराचे पिल्लू';

  @override
  String get gameSceneBlueOcean => 'निळा महासागर';

  @override
  String get gameSceneCastlePrincess => 'किल्ल्यातील राजकन्या';

  @override
  String get gameSceneRedCar => 'लाल गाडी';

  @override
  String get gameSceneGardenPuppy => 'बागेतील कुत्र्याचे पिल्लू';

  @override
  String get gameSceneSpaceExplorer => 'अंतराळ संशोधक';

  @override
  String get gameSceneEnchantedReadingForest => 'जादुई वाचन अरण्य';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनंत चक्र';

  @override
  String get gameSceneAnsible => 'Ansible ऑटोमेशन';

  @override
  String get gameSceneAws => 'AWS क्लाउड';

  @override
  String get gameSceneAzure => 'Azure क्लाउड';

  @override
  String get gameSceneBashScripting => 'Bash स्क्रिप्टिंग';

  @override
  String get gameSceneDocker => 'Docker कंटेनर';

  @override
  String get gameSceneGcp => 'GCP क्लाउड';

  @override
  String get gameSceneGit => 'Git आवृत्ती नियंत्रण';

  @override
  String get gameSceneHybridCloud => 'हायब्रिड क्लाउड';

  @override
  String get gameSceneIbmCloud => 'IBM क्लाउड';

  @override
  String get gameSceneJavascript => 'JavaScript भाषा';

  @override
  String get gameSceneJenkins => 'Jenkins ऑटोमेशन';

  @override
  String get gameSceneKubernetes => 'Kubernetes ऑर्केस्ट्रेशन';

  @override
  String get gameSceneLinux => 'Linux प्रणाली';

  @override
  String get gameSceneMultiCloud => 'मल्टी क्लाउड';

  @override
  String get gameSceneNetworking => 'नेटवर्किंग';

  @override
  String get gameSceneOracleCloud => 'Oracle क्लाउड';

  @override
  String get gameScenePerl => 'Perl भाषा';

  @override
  String get gameScenePowershell => 'PowerShell स्क्रिप्टिंग';

  @override
  String get gameScenePython => 'Python भाषा';

  @override
  String get gameSceneRuby => 'Ruby भाषा';

  @override
  String get gameSceneTerraform => 'Terraform प्रणाली';

  @override
  String get gameSceneWinterFestivalFair => 'हिवाळी उत्सव जत्रा';

  @override
  String get gameSceneArmoredHeroCloseUp => 'चिलखतधारी नायकाचा क्लोज-अप';

  @override
  String get gameSceneArmoredHeroInCrimson => 'किरमिजी रंगातील चिलखतधारी नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गडद प्लुमेरियाची फुले';

  @override
  String get gameSceneMangroveBoardwalk => 'खारफुटीतील लाकडी पदपथ';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबंधीय ताडाची प्रतिबिंबे';

  @override
  String get gameSceneMaskedFigureInShadow => 'सावलीतील मुखवटाधारी आकृती';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूर्यास्ताच्या वेळी विद्युत सोबती';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक आणि अग्नि ड्रॅगन';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्नजडित कुस्तीचा मुखवटा';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'लाल ब्रशस्ट्रोकमधील पैलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुस्ती विजेत्याची सलामी';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरीतील सकाळ';

  @override
  String get gameSceneGreenhousePottingBench => 'हरितगृहातील कुंडी लावण्याचा बाक';

  @override
  String get gameSceneHarborFishingBoat => 'बंदरातील मासेमारी नौका';

  @override
  String get gameSceneAtticObservatory => 'माळ्यावरील वेधशाळा';

  @override
  String get gameSceneToyMakerSWorkshop => 'खेळणी बनवणाऱ्याची कार्यशाळा';

  @override
  String get gameSceneWoodlandCampsite => 'वनातील तळ';

  @override
  String get gameSceneAfternoonMusicRoom => 'दुपारची संगीत खोली';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुद्रकिनाऱ्यावरील आईस्क्रीम स्टॉल';

  @override
  String get gameSceneLibraryReadingNook => 'ग्रंथालयातील वाचन कोपरा';

  @override
  String get gameSceneSewingStudio => 'शिवणकाम स्टुडिओ';

  @override
  String get gameSceneFruitMarket => 'फळ बाजार';

  @override
  String get gameSceneKoiCourtyard => 'कोई माशांचे अंगण';

  @override
  String get gameSceneArtistSAtelier => 'कलाकाराचा स्टुडिओ';

  @override
  String get gameSceneMountainRailway => 'पर्वतीय रेल्वे';

  @override
  String get gameSceneCountryKitchen => 'ग्रामीण स्वयंपाकघर';

  @override
  String get gameScenePotteryWorkshop => 'मातीकाम कार्यशाळा';

  @override
  String get gameSceneBeachPicnic => 'समुद्रकिनाऱ्यावरील सहल';

  @override
  String get gameSceneFlowerShop => 'फुलांचे दुकान';

  @override
  String get gameSceneClockmakerSWorkshop => 'घड्याळ बनवणाऱ्याची कार्यशाळा';

  @override
  String get gameSceneRainyCafeTerrace => 'पावसाळी कॅफे गच्ची';

  @override
  String get gameSceneCastleHerbGarden => 'किल्ल्यातील औषधी वनस्पतींची बाग';

  @override
  String get gameSceneClassroomArtCorner => 'वर्गातील कला कोपरा';

  @override
  String get gameSceneAquariumShop => 'मत्स्यालयाचे दुकान';

  @override
  String get gameSceneAutumnLeafCollection => 'शरद ऋतूतील पानांचा संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चंद्राखालील एकाकी झाड';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'फांदीवरील शरद ऋतूतील फूल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हिरव्या पानांमधील कोल्हा';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कमळांनी भरलेल्या तलावातील डोंगा';

  @override
  String get gameSceneDewDropsOnALeaf => 'पानावरील दवबिंदू';

  @override
  String get gameSceneStagInATurquoiseLake => 'पाचूसारख्या निळसर तलावातील नर हरीण';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'नारंगी चंद्राखालील सायकल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'दरीच्या वर पांढरा वाघ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'निळ्या पाण्यातील दोन झाडे';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'इमानी कुत्र्याच्या शेजारी मासेमारी';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'डोंगरी सरोवराशेजारील लिलीची फुले';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदीकाठी हरीण';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूर्यास्ताच्या वेळी उष्णकटिबंधीय झोपडी';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'आल्पाइन दरीकडे पाहणारा कोल्हा';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मंत्रमुग्ध करणाऱ्या वनराईतून दिसणारा सूर्यास्त';

  @override
  String get learningControlTitle => 'DevOps शिका';

  @override
  String get learningControlAllCategories => 'सर्व श्रेणी';

  @override
  String get learningControlSearchCards => 'कार्ड शोधा';

  @override
  String get learningControlClearSearch => 'शोध साफ करा';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सर्व कार्ड दाखवा';

  @override
  String learningControlShowSaved(int count) {
    return 'जतन केलेले कार्ड दाखवा ($count)';
  }

  @override
  String get learningControlShuffleOff => 'शफल बंद करा';

  @override
  String get learningControlShuffleOn => 'कार्ड शफल करा';

  @override
  String get learningControlAutoOff => 'ऑटो स्वाइप बंद करा';

  @override
  String get learningControlAutoOn => 'दर 10 सेकंदांनी ऑटो स्वाइप';

  @override
  String get learningControlNoSaved => 'अजून कोणतेही कार्ड जतन केलेले नाही';

  @override
  String get learningControlNoMatches => 'कोणतेही कार्ड सापडले नाही';

  @override
  String get learningControlResetFilters => 'फिल्टर काढा';

  @override
  String get learningControlPrevious => 'मागील';

  @override
  String get learningControlNext => 'पुढील';

  @override
  String get learningControlProgress => 'प्रगती';

  @override
  String get learningControlRemoveSaved => 'जतन केलेल्यातून काढा';

  @override
  String get learningControlSaveCard => 'कार्ड जतन करा';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कॉपी करा';

  @override
  String get learningControlExampleCopied => 'उदाहरण कॉपी केले';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'स्तर $value1 पूर्ण झाला';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'स्तर $value1 खेळा';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलॉक करण्यासाठी स्तर $value1 पूर्ण करा';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दैनिक लॉगिन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'परत आल्याबद्दल धन्यवाद!';

  @override
  String get sharedDialogDailyRewardAdded => 'तुमचे दैनिक बक्षीस तुमच्या एकूण गुणांमध्ये जोडले गेले आहे.';

  @override
  String get sharedDialogAwesome => 'उत्कृष्ट!';

  @override
  String get accountWelcomeGuest => 'अतिथी';

  @override
  String get accountWelcomeGuestUser => 'अतिथी वापरकर्ता';

  @override
  String get accountWelcomeUser => 'वापरकर्ता';

  @override
  String get accountWelcomePlayingAsGuest => 'अतिथी म्हणून खेळत आहात';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खाते कनेक्ट करा';

  @override
  String get accountWelcomeGoogleConnected => 'Google खाते यशस्वीरित्या कनेक्ट झाले! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द करण्यात आले.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'कनेक्ट करण्यात अयशस्वी: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट करा';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट करायचे?';

  @override
  String get accountWelcomeSignOutMessage => 'तुम्हाला नक्की साइन आउट करायचे आहे का? तुमची जतन केलेली प्रगती पाहण्यासाठी तुम्हाला पुन्हा साइन इन करावे लागेल.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट अयशस्वी: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ अ‍ॅप डेटा रीसेट करायचा?';

  @override
  String get accountWelcomeResetAppMessage => 'यामुळे तुमचे सर्व पॉइंट्स, स्ट्रीक्स, गेम इतिहास आणि सेटिंग्ज कायमचे हटवले जातील. तुम्हाला साइन आउट करून सुरुवातीच्या स्क्रीनवर परत नेले जाईल. हे पूर्ववत करता येणार नाही.';

  @override
  String get accountWelcomeResetEverything => 'सर्वकाही रीसेट करा';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रीसेट अयशस्वी: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द करा';

  @override
  String get accountWelcomeResetAppData => 'अ‍ॅप डेटा रीसेट करा';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सर्व पॉइंट्स, स्ट्रीक्स आणि सेटिंग्ज साफ करा';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz अ‍ॅप';

  @override
  String get accountWelcomeTranslationNotAvailable => 'भाषांतर अद्याप उपलब्ध नाही';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google सह सुरू ठेवा';

  @override
  String get accountWelcomeSigningIn => 'साइन इन करत आहे...';

  @override
  String get accountWelcomeOr => 'किंवा';

  @override
  String get accountWelcomeContinueAsGuest => 'अतिथी म्हणून सुरू ठेवा';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'तुम्ही नंतर तुमच्या प्रोफाइलमधून साइन इन करू शकता.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'तुम्ही अतिथी म्हणून सुरुवात करू शकता आणि नंतर साइन इन करू शकता.';

  @override
  String get accountWelcomeGreetingGuest => 'स्वागत';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'स्वागत आहे, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूर्ण झाले, परंतु कोणतेही वापरकर्ता खाते परत मिळाले नाही.';

  @override
  String get accountWelcomeErrorEmailExists => 'या ईमेलवर आधीपासून दुसऱ्या साइन-इन पद्धतीचे खाते आहे.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'हे Google खाते आधीपासून दुसऱ्या खात्याशी लिंक केलेले आहे.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण क्रेडेंशियल अवैध किंवा कालबाह्य झाले आहे.';

  @override
  String get accountWelcomeErrorUserDisabled => 'हे खाते अक्षम करण्यात आले आहे.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन सध्या सक्षम नाही.';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क त्रुटी. कृपया तुमचे इंटरनेट कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'साइन-इनचे खूप जास्त प्रयत्न झाले. कृपया थांबा आणि पुन्हा प्रयत्न करा.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'अतिरिक्त त्रुटी माहिती नाही.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन अयशस्वी.\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन त्रुटी:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'अतिथी म्हणून सुरू ठेवता आले नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन लवकरच उपलब्ध होईल.';

  @override
  String get accountWelcomeLoginTagline => 'शिका • सराव करा • स्पर्धा करा • कमवा';

  @override
  String get accountWelcomeCountryRegion => 'देश / प्रदेश';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / प्रदेश: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश शोधा';

  @override
  String get accountWelcomeCountryNotSelected => 'निवडलेले नाही';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz का?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ सराव प्रश्न';

  @override
  String get accountWelcomeFeatureLanguages => 'बहुभाषिक समर्थन';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रीक्स आणि लीडरबोर्ड';

  @override
  String get accountWelcomeFeatureGames => 'गेम्स आणि आव्हाने';

  @override
  String get accountWelcomeFeatureCloud => 'क्लाउड आणि DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस आणि बक्षिसे';

  @override
  String get accountWelcomePracticeOnTheGo => 'चालता-फिरता सराव करा';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android अ‍ॅप इन्स्टॉल करा आणि कुठेही, ऑफलाइन शिका.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play वर मिळवा';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिवसांची सलग मालिका';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिवसांची सलग मालिका कायम ठेवा.';
  }

  @override
  String get achLocYearStreakTitle => '१ वर्षाची सलग मालिका';

  @override
  String get achLocFirstQuizTitle => 'पहिली क्विझ';

  @override
  String get achLocFirstQuizDescription => 'तुमची पहिली क्विझ पूर्ण करा.';

  @override
  String get achLocQuiz10Title => 'क्विझ एक्सप्लोरर';

  @override
  String get achLocQuiz10Description => '10 क्विझ पूर्ण करा.';

  @override
  String get achLocPoints1000Title => '1000 गुण';

  @override
  String get achLocPoints1000Description => 'क्विझमध्ये एकूण 1000 गुण मिळवा.';

  @override
  String get achLocPerfectScoreTitle => 'परिपूर्ण गुण';

  @override
  String get achLocPerfectScoreDescription => 'कोणत्याही क्विझमध्ये 100% गुण मिळवा.';

  @override
  String get achLocQuiz25Title => 'क्विझ उत्साही';

  @override
  String get achLocQuiz25Description => '25 क्विझ पूर्ण करा.';

  @override
  String get achLocQuiz50Title => 'क्विझ मास्टर';

  @override
  String get achLocQuiz50Description => '50 क्विझ पूर्ण करा.';

  @override
  String get achLocQuiz100Title => 'सेंच्युरी क्लब';

  @override
  String get achLocQuiz100Description => '100 क्विझ पूर्ण करा.';

  @override
  String get achLocQuiz250Title => 'क्विझ लेजेंड';

  @override
  String get achLocQuiz250Description => '250 क्विझ पूर्ण करा.';

  @override
  String get achLocPoints5000Title => '5,000 गुण';

  @override
  String get achLocPoints5000Description => 'एकूण 5,000 गुण मिळवा.';

  @override
  String get achLocPoints10000Title => '10,000 गुण';

  @override
  String get achLocPoints10000Description => 'एकूण 10,000 गुण मिळवा.';

  @override
  String get achLocPoints50000Title => '50,000 गुण';

  @override
  String get achLocPoints50000Description => 'एकूण 50,000 गुण मिळवा.';

  @override
  String get achLocPoints100000Title => '100,000 गुण';

  @override
  String get achLocPoints100000Description => 'एकूण 100,000 गुण मिळवा.';

  @override
  String get achLocDaily1Title => 'दैनिक सुरुवात';

  @override
  String get achLocDaily1Description => 'तुमची पहिली दैनिक क्विझ पूर्ण करा.';

  @override
  String get achLocDaily7Title => 'दैनिक सवय';

  @override
  String get achLocDaily7Description => '7 दैनिक क्विझ पूर्ण करा.';

  @override
  String get achLocDaily30Title => 'दैनिक चॅम्पियन';

  @override
  String get achLocDaily30Description => '30 दैनिक क्विझ पूर्ण करा.';

  @override
  String get achLocSets5Title => 'सेट स्टार्टर';

  @override
  String get achLocSets5Description => '5 क्विझ सेट पूर्ण करा.';

  @override
  String get achLocSets25Title => 'सेट कलेक्टर';

  @override
  String get achLocSets25Description => '25 क्विझ सेट पूर्ण करा.';

  @override
  String get achLocSets50Title => 'सेट मास्टर';

  @override
  String get achLocSets50Description => '50 क्विझ सेट पूर्ण करा.';

  @override
  String get achLocSets100Title => 'सेट लेजेंड';

  @override
  String get achLocSets100Description => '100 क्विझ सेट पूर्ण करा.';

  @override
  String get achLocCert1Title => 'पहिले प्रमाणपत्र';

  @override
  String get achLocCert1Description => 'तुमचे पहिले श्रेणी प्रमाणपत्र मिळवा.';

  @override
  String get achLocCert5Title => 'प्रमाणित प्रो';

  @override
  String get achLocCert5Description => '5 श्रेणी प्रमाणपत्रे मिळवा.';

  @override
  String get achLocCert21Title => 'पूर्णतः प्रमाणित';

  @override
  String get achLocCert21Description => 'सर्व 21 श्रेणींमध्ये प्रमाणपत्र मिळवा.';

  @override
  String get achLocThemeFreeValentinesWeek => 'दरवर्षी 7-14 फेब्रु. मोफत';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'दरवर्षी 8-15 मार्च मोफत';

  @override
  String get achLocThemeLight => 'लाइट';

  @override
  String get achLocThemeDark => 'डार्क';

  @override
  String get achLocThemeSakura => 'साकुरा';

  @override
  String get achLocThemeSunset => 'सनसेट';

  @override
  String get achLocThemeCoffee => 'कॉफी';

  @override
  String get achLocThemeTea => 'चहा';

  @override
  String get achLocThemeOcean => 'ओशन';

  @override
  String get achLocThemeSolarFlare => 'सोलर फ्लेअर';

  @override
  String get achLocThemeForest => 'फॉरेस्ट';

  @override
  String get achLocThemeAurora => 'अरोरा';

  @override
  String get achLocThemeMatrix => 'मॅट्रिक्स';

  @override
  String get achLocThemeCyberPurple => 'सायबर पर्पल';

  @override
  String get achLocThemeInferno => 'इन्फर्नो';

  @override
  String get achLocThemeMidnight => 'मिडनाइट';

  @override
  String get achLocThemeDarkGrey => 'गडद राखाडी';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'व्हॅलेंटाइन डे';

  @override
  String get achLocThemeDqSpecial => 'DQ स्पेशल';

  @override
  String get achLocThemeArmy => 'आर्मी';

  @override
  String get achLocThemeSpiderMan => 'स्पायडर-मॅन';

  @override
  String get achLocThemeKrrish => 'क्रिश';

  @override
  String get achLocThemeIronMan => 'आयर्न मॅन';

  @override
  String get achLocThemeCaptainAmerica => 'कॅप्टन अमेरिका';

  @override
  String get achLocThemeThor => 'थॉर';

  @override
  String get achLocThemeHulk => 'हल्क';

  @override
  String get achLocThemeBlackWidow => 'ब्लॅक विडो';

  @override
  String get achLocThemeHawkeye => 'हॉकआय';

  @override
  String get achLocThemeBlackPanther => 'ब्लॅक पँथर';

  @override
  String get achLocThemeScarletWitch => 'स्कार्लेट विच';

  @override
  String get achLocThemeVision => 'व्हिजन';

  @override
  String get achLocThemeAntMan => 'अँट-मॅन';

  @override
  String get achLocThemeCaptainMarvel => 'कॅप्टन मार्वल';

  @override
  String get achLocThemeDoctorStrange => 'डॉक्टर स्ट्रेंज';

  @override
  String get achLocThemeAvengers => 'अ‍ॅव्हेंजर्स';

  @override
  String get achLocThemeBatman => 'बॅटमॅन';

  @override
  String get achLocThemeSuperman => 'सुपरमॅन';

  @override
  String get achLocThemeWonderWoman => 'वंडर वुमन';

  @override
  String get achLocThemeFlash => 'फ्लॅश';

  @override
  String get achLocThemeAquaman => 'अ‍ॅक्वामॅन';

  @override
  String get achLocThemeGreenLantern => 'ग्रीन लँटर्न';

  @override
  String get achLocThemeCyborg => 'सायबोर्ग';

  @override
  String get achLocThemeSupergirl => 'सुपरगर्ल';

  @override
  String get achLocThemeDc => 'DC हीरोज';

  @override
  String get achLocThemeRainbow => 'इंद्रधनुष्य';

  @override
  String get achLocThemeDiamond => 'हिरा';

  @override
  String get achLocThemeLegendary => 'दिग्गज';

  @override
  String get gameHintCmd001LsLa => 'तपशीलांसह सर्व फाइल्सची यादी करा';

  @override
  String get gameHintCmd002Grep => 'नमुन्याद्वारे मजकूर शोधा';

  @override
  String get gameHintCmd003Chmod => 'फाइलच्या परवानग्या बदला';

  @override
  String get gameHintCmd004DfH => 'उपलब्ध डिस्क जागा दाखवा';

  @override
  String get gameHintCmd005TailF => 'वाढणाऱ्या लॉग फाइलचा मागोवा घ्या';

  @override
  String get gameHintCmd006PsAux => 'चालू असलेल्या प्रक्रियांची यादी करा';

  @override
  String get gameHintCmd007GitClone => 'दूरस्थ रिपॉझिटरीची प्रत बनवा';

  @override
  String get gameHintCmd008GitStash => 'कमिट न केलेले बदल बाजूला ठेवा';

  @override
  String get gameHintCmd009GitRebase => 'नवीन पायावर कमिट्स पुन्हा लागू करा';

  @override
  String get gameHintCmd010GitBlame => 'प्रत्येक ओळ कोणी बदलली ते दाखवा';

  @override
  String get gameHintCmd011DockerPs => 'चालू असलेल्या कंटेनरची यादी करा';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile मधून इमेज तयार करा';

  @override
  String get gameHintCmd013DockerLogs => 'कंटेनरचे आउटपुट दाखवा';

  @override
  String get gameHintCmd014DockerExec => 'कंटेनरमध्ये कमांड चालवा';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेसमधील पॉड्सची यादी करा';

  @override
  String get gameHintCmd016KubectlApply => 'फाइलमधून संसाधने तयार करा';

  @override
  String get gameHintCmd017KubectlDescribe => 'संसाधनाची सविस्तर माहिती दाखवा';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिकांची संख्या बदला';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोव्हायडर्स डाउनलोड करून सेटअप करा';

  @override
  String get gameHintCmd020TerraformPlan => 'पायाभूत सुविधेतील बदलांचे पूर्वावलोकन करा';

  @override
  String get gameHintCmd021TerraformApply => 'पायाभूत सुविधा तयार करा किंवा अद्ययावत करा';

  @override
  String get gameHintCmd022TerraformDestroy => 'व्यवस्थापित पायाभूत सुविधा काढून टाका';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ऑटोमेशन प्लेबुक चालवा';

  @override
  String get gameHintCmd024Ping => 'ICMP द्वारे पोहोच तपासा';

  @override
  String get gameHintCmd025Traceroute => 'होस्टपर्यंतचा मार्ग दाखवा';

  @override
  String get gameHintCmd026Curl => 'URL वरून डेटा हस्तांतरित करा';

  @override
  String get gameHintCmd027Ssh => 'दूरस्थ मशीनमध्ये सुरक्षितपणे लॉग इन करा';

  @override
  String get gameHintCmd028CrontabE => 'नियोजित कामे संपादित करा';

  @override
  String get gameHintCmd029SystemctlStatus => 'सेवेची स्थिती तपासा';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes वर चार्ट डिप्लॉय करा';

  @override
  String get gameHintWord001Git => 'सोर्स कोडमधील बदलांचा मागोवा ठेवते.';

  @override
  String get gameHintWord002Aws => 'Amazon चे क्लाउड प्लॅटफॉर्म.';

  @override
  String get gameHintWord003Api => 'सॉफ्टवेअर प्रणालींना एकमेकांशी संवाद साधू देणारा करार.';

  @override
  String get gameHintWord004Dns => 'डोमेन नावांचे IP पत्त्यांमध्ये भाषांतर करते.';

  @override
  String get gameHintWord005Cli => 'कमांड चालवण्यासाठी मजकूर-आधारित इंटरफेस.';

  @override
  String get gameHintWord006Cpu => 'सूचना कार्यान्वित करणारा प्रोसेसर.';

  @override
  String get gameHintWord007Ram => 'चालू प्रोग्राम्स वापरत असलेली तात्पुरती मेमरी.';

  @override
  String get gameHintWord008Ssh => 'दूरस्थ शेल प्रवेशासाठी सुरक्षित प्रोटोकॉल.';

  @override
  String get gameHintWord009Yaml => 'मानवाला वाचता येणारे डेटा सिरियलायझेशन स्वरूप.';

  @override
  String get gameHintWord010Linux => 'ओपन-सोर्स ऑपरेटिंग सिस्टम कर्नल आणि त्याचे कुटुंब.';

  @override
  String get gameHintWord011Bash => 'लोकप्रिय Unix कमांड शेल.';

  @override
  String get gameHintWord012Cloud => 'नेटवर्कद्वारे मागणीनुसार पुरवली जाणारी संगणन सेवा.';

  @override
  String get gameHintWord013Docker => 'कंटेनर बनवण्यासाठी आणि चालवण्यासाठी प्लॅटफॉर्म.';

  @override
  String get gameHintWord014Azure => 'Microsoft चे क्लाउड प्लॅटफॉर्म.';

  @override
  String get gameHintWord015Python => 'मोठ्या प्रमाणात वापरली जाणारी स्क्रिप्टिंग आणि प्रोग्रामिंग भाषा.';

  @override
  String get gameHintWord016Github => 'लोकप्रिय होस्टेड Git सहयोग सेवा.';

  @override
  String get gameHintWord017Bgp => 'स्वायत्त प्रणालींमध्ये मार्गांची देवाणघेवाण करणारा राउटिंग प्रोटोकॉल.';

  @override
  String get gameHintWord018Jenkins => 'CI साठी अनेकदा वापरला जाणारा ऑटोमेशन सर्व्हर.';

  @override
  String get gameHintWord019Port => 'नेटवर्क सेवांनी वापरलेला क्रमांकित एंडपॉइंट.';

  @override
  String get gameHintWord020Proxy => 'क्लायंटसाठी विनंत्या पुढे पाठवणारा सर्व्हर.';

  @override
  String get gameHintWord021Cache => 'वारंवार वापरल्या जाणाऱ्या डेटासाठी जलद साठा.';

  @override
  String get gameHintWord022Cron => 'वारंवार चालणाऱ्या कमांडसाठी Unix शेड्युलर.';

  @override
  String get gameHintWord023Bicep => 'कोड म्हणून पायाभूत सुविधेसाठी Azure ची घोषणात्मक भाषा.';

  @override
  String get gameHintWord024Apigee => 'केंद्रीकृत API व्यवस्थापनासाठी Google Cloud प्लॅटफॉर्म.';

  @override
  String get gameHintWord025Root => 'Unix-सदृश प्रणालींवरील विशेषाधिकारप्राप्त प्रशासक खाते.';

  @override
  String get gameHintWord026Nginx => 'वेब सर्व्हर आणि रिव्हर्स प्रॉक्सी.';

  @override
  String get gameHintWord027Redis => 'अनेकदा कॅश म्हणून वापरला जाणारा इन-मेमरी डेटा स्टोअर.';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेशनल डेटाबेस प्रणाली.';

  @override
  String get gameHintWord029Ruby => 'Chef सारख्या साधनांमध्ये वापरली जाणारी प्रोग्रामिंग भाषा.';

  @override
  String get gameHintWord030Helm => 'सामान्यतः Kubernetes सोबत वापरला जाणारा पॅकेज व्यवस्थापक.';

  @override
  String get gameHintWord031Pod => 'Kubernetes मधील सर्वात लहान डिप्लॉय करता येणारे एकक.';

  @override
  String get gameHintWord032Image => 'कंटेनर तयार करण्यासाठी वापरला जाणारा फक्त-वाचनीय साचा.';

  @override
  String get gameHintWord033Build => 'सोर्स आणि अवलंबित्वांमधून आर्टिफॅक्ट तयार करते.';

  @override
  String get gameHintWord034Deploy => 'अनुप्रयोग एखाद्या वातावरणात प्रकाशित करते.';

  @override
  String get gameHintWord035Terraform => 'कोड म्हणून पायाभूत सुविधेसाठी HashiCorp चे साधन.';

  @override
  String get gameHintWord036Ansible => 'एजंटविरहित ऑटोमेशन आणि कॉन्फिगरेशन साधन.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes साठी कमांड-लाइन क्लायंट.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform चे संक्षिप्त रूप.';

  @override
  String get gameHintWord039Gitops => 'Git ला सत्याचा स्रोत मानणारे कार्यप्रणाली मॉडेल.';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, चाचणी आणि प्रकाशन टप्प्यांचा स्वयंचलित क्रम.';

  @override
  String get gameHintWord041Container => 'आपल्या अवलंबित्वांसह पॅक केलेली विलग प्रक्रिया.';

  @override
  String get gameHintWord042Cluster => 'सामायिक प्रणाली म्हणून व्यवस्थापित केलेल्या मशीन्सचा गट.';

  @override
  String get gameHintWord043Ingress => 'बाह्य HTTP राउटिंगसाठी Kubernetes API ऑब्जेक्ट.';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नियमांनुसार नेटवर्क ट्रॅफिक गाळते.';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्कचा तार्किक उपविभाग.';

  @override
  String get gameHintWord046Gateway => 'वेगवेगळ्या नेटवर्कना जोडणारा नेटवर्क नोड.';

  @override
  String get gameHintWord047Router => 'नेटवर्कमध्ये पॅकेट्स पुढे पाठवतो.';

  @override
  String get gameHintWord048Switch => 'स्थानिक नेटवर्कमधील उपकरणे जोडतो.';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड किंवा पॅकेजेससाठी व्यवस्थापित साठवण.';

  @override
  String get gameHintWord050Systemd => 'Linux init प्रणाली आणि सेवा व्यवस्थापक.';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लॉग वाचण्यासाठी वापरली जाणारी कमांड.';

  @override
  String get gameHintWord052Permission => 'कोण वाचू, लिहू किंवा चालवू शकते हे ठरवणारा नियम.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud चा व्यवस्थापित PostgreSQL-सुसंगत डेटाबेस.';

  @override
  String get gameHintWord054Configmap => 'गुप्त नसलेल्या कॉन्फिगरेशनसाठी Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटासाठी असलेला Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord056Persistent => 'वर्कलोड रीस्टार्ट झाल्यानंतरही टिकणाऱ्या साठवणीचे वर्णन करते.';

  @override
  String get gameHintWord057Volume => 'कंटेनरमध्ये माउंट केलेली फाइलसिस्टम साठवण.';

  @override
  String get gameHintWord058Storage => 'फाइल्स, ऑब्जेक्ट्स किंवा ब्लॉक्ससाठी कायमस्वरूपी जागा.';

  @override
  String get gameHintWord059Replica => 'स्केल किंवा विश्वासार्हतेसाठी ठेवलेली वर्कलोड इन्स्टन्सची प्रत.';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस अनुप्रयोग पॉड्ससाठी Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज बनवण्यासाठी वापरलेल्या सूचना.';

  @override
  String get gameHintWord062Database => 'अनुप्रयोगांकडून क्वेरी केला जाणारा संघटित साठा.';

  @override
  String get gameHintWord063Automation => 'मॅन्युअल पायऱ्यांशिवाय पुनरावृत्ती कामे करण्यासाठी सॉफ्टवेअरचा वापर.';

  @override
  String get gameHintWord064Anthos => 'विविध वातावरणातील क्लस्टर व्यवस्थापित करण्यासाठी Google Cloud प्लॅटफॉर्म.';

  @override
  String get gameHintWord065Bigquery => 'मोठ्या प्रमाणावरील डेटा विश्लेषणासाठी Google Cloud सेवा.';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषणासाठी Google Cloud चा वाइड-कॉलम NoSQL डेटाबेस.';

  @override
  String get gameHintWord067Loadbalancer => 'येणारा ट्रॅफिक अनेक बॅकएंडमध्ये वाटून देतो.';

  @override
  String get gameHintWord068Prometheus => 'टाइम-सिरीज मेट्रिक्स साठवणारी मॉनिटरिंग प्रणाली.';

  @override
  String get gameHintWord069Grafana => 'ऑब्झर्व्हेबिलिटी डेटा क्वेरी आणि दृश्यरूपात दाखवण्यासाठी प्लॅटफॉर्म.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud चा व्यवस्थापित NoSQL JSON दस्तऐवज डेटाबेस.';

  @override
  String get gameHintWord071Cloudtrail => 'ऑडिटिंगसाठी API क्रियाकलाप नोंदवणारी AWS सेवा.';

  @override
  String get gameHintWord072Statefulset => 'स्थिर ओळख आवश्यक असलेल्या वर्कलोडसाठी Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord073Daemonset => 'निवडक नोड्सवर पॉड चालवणारा Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड किंवा प्रक्रियेने वापरलेली Kubernetes ओळख.';

  @override
  String get gameHintWord075Networkpolicy => 'पॉड नेटवर्क ट्रॅफिक नियंत्रित करणारे Kubernetes संसाधन.';

  @override
  String get gameHintWord076Certificate => 'TLS मध्ये ओळख प्रस्थापित करण्यासाठी वापरला जाणारा डिजिटल दस्तऐवज.';

  @override
  String get gameHintWord077Encryption => 'डेटा असा बदलते की फक्त अधिकृत पक्षच तो वाचू शकतात.';

  @override
  String get gameHintWord078Observability => 'प्रणालीच्या आउटपुटवरून तिच्या वर्तनाचा अंदाज घेण्याची क्षमता.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes क्लस्टरमध्ये सामान्यतः वापरला जाणारा DNS सर्व्हर.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API द्वारे क्लाउड संसाधने व्यवस्थापित करणारा प्रकल्प.';

  @override
  String get gameHintWord081Failover => 'बिघाडानंतर स्टँडबाय घटकाकडे स्विच करणे.';

  @override
  String get gameHintWord082Idempotency => 'क्रिया पुन्हा केल्यावरही एकदा केल्याइतकाच परिणाम होण्याचा गुणधर्म.';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रीम आणि बॅच डेटा प्रक्रियेसाठी Google Cloud सेवा.';

  @override
  String get gameHintWord084Orchestration => 'अनेक स्वयंचलित वर्कलोडचे समन्वित व्यवस्थापन.';

  @override
  String get gameHintWord085Dataplex => 'एंटरप्राइझ डेटा शोधण्यासाठी आणि नियंत्रित करण्यासाठी Google Cloud सेवा.';

  @override
  String get gameHintWord086Serverless => 'पायाभूत सुविधा व्यवस्थापन अमूर्त केलेले एक्झिक्युशन मॉडेल.';

  @override
  String get gameHintWord087Distributed => 'ज्याचे घटक नेटवर्कने जोडलेल्या अनेक मशीन्सवर चालतात अशी प्रणाली.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud चे व्यवस्थापित Apache Spark आणि Hadoop वातावरण.';

  @override
  String get gameHintWord089Dynamodb => 'Terraform स्टेट लॉकिंगसाठी अनेकदा वापरला जाणारा AWS NoSQL डेटाबेस.';

  @override
  String get gameHintWord090Provisioning => 'पायाभूत सुविधा किंवा संसाधने वापरासाठी तयार करणे.';

  @override
  String get gameHintWord091Elasticsearch => 'केंद्रीकृत लॉगिंगसाठी सामान्यतः वापरले जाणारे सर्च इंजिन.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes क्लस्टरची स्थिती साठवणारा की-व्हॅल्यू स्टोअर.';

  @override
  String get gameHintWord093Authentication => 'वापरकर्ता किंवा सेवा कोण आहे हे पडताळण्याची प्रक्रिया.';

  @override
  String get gameHintWord094Authorization => 'एखाद्या ओळखीला काय करण्याची परवानगी आहे हे ठरवण्याची प्रक्रिया.';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेंटर्सशी समर्पित खाजगी कनेक्टिव्हिटीसाठी Azure सेवा.';

  @override
  String get gameHintWord096Configuration => 'सॉफ्टवेअरचे वर्तन ठरवणाऱ्या सेटिंग्ज.';

  @override
  String get gameHintWord097Infrastructure => 'अनुप्रयोगांना आधार देणारी कंप्यूट, नेटवर्क आणि स्टोरेज संसाधने.';

  @override
  String get gameHintWord098Fastconnect => 'समर्पित खाजगी नेटवर्क कनेक्शनसाठी Oracle Cloud सेवा.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes वापरत असलेला उद्योग-मानक कंटेनर रनटाइम.';

  @override
  String get gameHintWord100Kubernetes => 'कंटेनर ऑर्केस्ट्रेशन प्लॅटफॉर्म.';

  @override
  String get gameHintWord101Http => 'वेब संसाधने मागवण्यासाठी वापरला जाणारा अनुप्रयोग प्रोटोकॉल.';

  @override
  String get gameHintWord102Https => 'वेब विनंती प्रोटोकॉलची एनक्रिप्टेड आवृत्ती.';

  @override
  String get gameHintWord103Tcp => 'विश्वसनीय, क्रमबद्ध वितरण देणारा ट्रान्सपोर्ट प्रोटोकॉल.';

  @override
  String get gameHintWord104Udp => 'डेटाग्रामसाठी वापरला जाणारा कनेक्शनविरहित ट्रान्सपोर्ट प्रोटोकॉल.';

  @override
  String get gameHintWord105Tls => 'नेटवर्कवरील डेटाची देवाणघेवाण सुरक्षित करणारा प्रोटोकॉल.';

  @override
  String get gameHintWord106Ssl => 'आधुनिक ट्रान्सपोर्ट सुरक्षा प्रोटोकॉलचा जुना पूर्वसुरी.';

  @override
  String get gameHintWord107Ftp => 'फाइल्स हस्तांतरित करण्याचा पारंपरिक प्रोटोकॉल.';

  @override
  String get gameHintWord108Sftp => 'सुरक्षित शेल कनेक्शनवरून चालणारा फाइल हस्तांतरण प्रोटोकॉल.';

  @override
  String get gameHintWord109Smtp => 'सर्व्हर्समध्ये ईमेल पाठवण्यासाठी वापरला जाणारा प्रोटोकॉल.';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क उपकरणे व्यवस्थापित आणि मॉनिटर करण्यासाठी प्रोटोकॉल.';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क त्रुटी आणि ping संदेश वाहून नेणारा प्रोटोकॉल.';

  @override
  String get gameHintWord112Arp => 'स्थानिक IPv4 पत्ते हार्डवेअर पत्त्यांमध्ये रूपांतरित करतो.';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लायंटना IP कॉन्फिगरेशन आपोआप भाड्याने देतो.';

  @override
  String get gameHintWord114Nat => 'पॅकेट्स गेटवे ओलांडताना नेटवर्क पत्ते पुन्हा लिहितो.';

  @override
  String get gameHintWord115Vpn => 'दूरस्थ नेटवर्क किंवा वापरकर्त्यांना जोडणारा एनक्रिप्टेड बोगदा.';

  @override
  String get gameHintWord116Vpc => 'सार्वजनिक क्लाउडमधील विलग आभासी नेटवर्क.';

  @override
  String get gameHintWord117Vlan => 'स्विच केलेल्या नेटवर्कचे तार्किक विभाजन.';

  @override
  String get gameHintWord118Wan => 'विस्तृत भौगोलिक क्षेत्रात पसरलेले नेटवर्क.';

  @override
  String get gameHintWord119Lan => 'स्थानिक क्षेत्रातील उपकरणे जोडणारे नेटवर्क.';

  @override
  String get gameHintWord120Cdn => 'वितरित सामग्री कॅश करणारे वितरित एज नेटवर्क.';

  @override
  String get gameHintWord121Cidr => 'स्लॅश लांबीसह नेटवर्क उपसर्ग दर्शवणारी नोटेशन.';

  @override
  String get gameHintWord122Host => 'नेटवर्कशी जोडलेला संगणक किंवा एंडपॉइंट.';

  @override
  String get gameHintWord123Hostname => 'नेटवर्कवरील मशीनला दिलेले मानवाला वाचता येणारे नाव.';

  @override
  String get gameHintWord124Domain => 'इंटरनेट नामकरण प्रणालीतील नावाचे प्रशासकीय क्षेत्र.';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेसचा प्रशासकीय भाग.';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेसमधील एक स्वतंत्र नोंद.';

  @override
  String get gameHintWord127Aaaa => 'नावाचे IPv6 पत्त्यामध्ये रूपांतर करणारा DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord128Ptr => 'उलट पत्ता शोधण्यासाठी वापरला जाणारा DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord129Txt => 'मजकूर मूल्ये साठवणारा DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord130Cname => 'एक नाव दुसऱ्याचे उपनाव बनवणारा DNS रेकॉर्ड.';

  @override
  String get gameHintWord131Route => 'पॅकेट्सना गंतव्याकडे निर्देशित करणारी मार्ग नोंद.';

  @override
  String get gameHintWord132Routing => 'नेटवर्कमधील ट्रॅफिकसाठी मार्ग निवडणे.';

  @override
  String get gameHintWord133Packet => 'नेटवर्कवरून पाठवलेले डेटाचे एकक.';

  @override
  String get gameHintWord134Protocol => 'प्रणालींमधील संवादासाठी मान्य केलेले नियम.';

  @override
  String get gameHintWord135Ack => 'डेटा मिळाल्याची पोचपावती देणारा TCP फ्लॅग.';

  @override
  String get gameHintWord136Bandwidth => 'संवाद दुव्याची क्षमता.';

  @override
  String get gameHintWord137Latency => 'विनंती किंवा पॅकेटला प्रतिसाद मिळण्यापूर्वीचा विलंब.';

  @override
  String get gameHintWord138Throughput => 'प्रति एकक वेळेत प्रक्रिया केलेले उपयुक्त काम किंवा डेटा.';

  @override
  String get gameHintWord139Mtu => 'विखंडनाशिवाय दुवा प्रसारित करू शकणारा सर्वात मोठा पॅकेट आकार.';

  @override
  String get gameHintWord140Alpn => 'अनुप्रयोग-स्तर प्रोटोकॉलची वाटाघाट करणारे TLS विस्तार.';

  @override
  String get gameHintWord141Grep => 'जुळणाऱ्या नमुन्यासाठी मजकूर ओळी शोधतो.';

  @override
  String get gameHintWord142Sed => 'मजकूर बदलांसाठी सामान्यतः वापरला जाणारा स्ट्रीम एडिटर.';

  @override
  String get gameHintWord143Lscpu => 'प्रोसेसर आर्किटेक्चर आणि कोअर तपशील दाखवणारी Linux कमांड.';

  @override
  String get gameHintWord144Find => 'फाइल अटींचा वापर करून डिरेक्टरी वृक्षात शोधतो.';

  @override
  String get gameHintWord145Lsblk => 'ब्लॉक डिव्हाइसेस आणि त्यांचे संबंध दाखवणारी Linux कमांड.';

  @override
  String get gameHintWord146Sort => 'मजकुराच्या ओळी क्रमाने लावतो.';

  @override
  String get gameHintWord147Uniq => 'लगतच्या पुनरावृत्त ओळी गाळतो.';

  @override
  String get gameHintWord148Head => 'फाइलची सुरुवात छापतो.';

  @override
  String get gameHintWord149Tail => 'फाइलचा शेवट छापतो आणि जोडल्या जाणाऱ्या लॉगचा मागोवा घेऊ शकतो.';

  @override
  String get gameHintWord150Cat => 'फाइल्स जोडून त्यांचा मजकूर छापतो.';

  @override
  String get gameHintWord151Cut => 'ओळींमधून निवडक फील्ड किंवा अक्षर स्तंभ काढतो.';

  @override
  String get gameHintWord152Tee => 'स्टँडर्ड इनपुट फाइल्सवर आणि स्टँडर्ड आउटपुटवर कॉपी करतो.';

  @override
  String get gameHintWord153Echo => 'आपले आर्ग्युमेंट्स स्टँडर्ड आउटपुटवर लिहितो.';

  @override
  String get gameHintWord154Printf => 'शेल किंवा प्रोग्रामकडून स्वरूपित मजकूर छापतो.';

  @override
  String get gameHintWord155Touch => 'फाइलचे टाइमस्टॅम्प अद्ययावत करतो किंवा रिकामी फाइल बनवतो.';

  @override
  String get gameHintWord156Mkdir => 'डिरेक्टरी तयार करतो.';

  @override
  String get gameHintWord157Rmdir => 'रिकाम्या डिरेक्टरी काढतो.';

  @override
  String get gameHintWord158Chmod => 'Unix फाइल परवानगी बिट्स बदलतो.';

  @override
  String get gameHintWord159Chown => 'फाइलची मालकी बदलतो.';

  @override
  String get gameHintWord160Chgrp => 'फाइलची गट मालकी बदलतो.';

  @override
  String get gameHintWord161Pwd => 'सध्याची कार्यरत डिरेक्टरी छापतो.';

  @override
  String get gameHintWord162Apt => 'Debian-आधारित प्रणालींनी वापरलेले पॅकेज व्यवस्थापन साधन.';

  @override
  String get gameHintWord163Top => 'प्रक्रिया आणि प्रणाली संसाधन वापराचे परस्परसंवादी प्रदर्शन.';

  @override
  String get gameHintWord164Agent => 'होस्टवर काम चालवणारा किंवा त्याचा अहवाल देणारा सॉफ्टवेअर घटक.';

  @override
  String get gameHintWord165Kill => 'ओळख क्रमांकाद्वारे प्रक्रियेला सिग्नल पाठवतो.';

  @override
  String get gameHintWord166Signal => 'ऑपरेटिंग सिस्टमने प्रक्रियेला पाठवलेली सूचना.';

  @override
  String get gameHintWord167Sigkill => 'प्रक्रिया तात्काळ संपवणारा Unix सिग्नल.';

  @override
  String get gameHintWord168Nice => 'बदललेल्या शेड्युलिंग प्राधान्यासह प्रक्रिया सुरू करतो.';

  @override
  String get gameHintWord169Renice => 'चालू प्रक्रियेचे शेड्युलिंग प्राधान्य बदलतो.';

  @override
  String get gameHintWord170Jobs => 'सध्याच्या शेलने व्यवस्थापित केलेल्या जॉब्सची यादी करतो.';

  @override
  String get gameHintWord171Nohup => 'हँगअप सिग्नल दुर्लक्षित करून कमांड चालवतो.';

  @override
  String get gameHintWord172Screen => 'वेगळे करता येणाऱ्या सत्रांना आधार देणारा टर्मिनल मल्टिप्लेक्सर.';

  @override
  String get gameHintWord173Uptime => 'प्रणाली किती वेळ चालू आहे ते सांगतो.';

  @override
  String get gameHintWord174Uname => 'प्रणाली आणि कर्नल माहिती छापतो.';

  @override
  String get gameHintWord175Whoami => 'प्रभावी सध्याचे वापरकर्ता नाव छापतो.';

  @override
  String get gameHintWord176Umask => 'फाइल्स तयार करताना वापरला जाणारा परवानगी मास्क ठरवतो.';

  @override
  String get gameHintWord177Usermod => 'विद्यमान वापरकर्ता खाते बदलणारी Linux कमांड.';

  @override
  String get gameHintWord178Crontab => 'नियोजित वारंवार शेल जॉब्स संपादित करतो किंवा दाखवतो.';

  @override
  String get gameHintWord179Findmnt => 'माउंट केलेल्या फाइलसिस्टमची माहिती दाखवणारी Linux कमांड.';

  @override
  String get gameHintWord180Mount => 'फाइलसिस्टम डिरेक्टरी वृक्षाशी जोडतो.';

  @override
  String get gameHintWord181Sigterm => 'प्रक्रिया व्यवस्थित संपवण्याची विनंती करणारा Unix सिग्नल.';

  @override
  String get gameHintWord182Fstab => 'माउंट करायच्या फाइलसिस्टम वर्णन करणारी प्रणाली सारणी.';

  @override
  String get gameHintWord183Swap => 'भौतिक मेमरीला पूरक म्हणून वापरली जाणारी डिस्कवरील जागा.';

  @override
  String get gameHintWord184Tmpfs => 'व्हर्च्युअल मेमरीवर आधारित तात्पुरती फाइलसिस्टम.';

  @override
  String get gameHintWord185Proc => 'प्रक्रिया आणि कर्नल माहिती उघड करणारी Linux व्हर्च्युअल फाइलसिस्टम.';

  @override
  String get gameHintWord186Syslog => 'मानक लॉगिंग प्रोटोकॉल आणि संदेश स्वरूप.';

  @override
  String get gameHintWord187Dmesg => 'कर्नल रिंग बफरमधील संदेश दाखवतो.';

  @override
  String get gameHintWord188Free => 'वापरलेली आणि उपलब्ध प्रणाली मेमरी सांगतो.';

  @override
  String get gameHintWord189Stat => 'फाइलचा सविस्तर मेटाडेटा दाखवतो.';

  @override
  String get gameHintWord190Lsof => 'उघड्या फाइल्स आणि त्या धरणाऱ्या प्रक्रियांची यादी करतो.';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क कनेक्शन्स आणि राउटिंग माहिती दाखवतो.';

  @override
  String get gameHintWord192Checksum => 'डेटामधील बदल किंवा भ्रष्टता शोधण्यासाठी काढलेले मूल्य.';

  @override
  String get gameHintWord193Ping => 'इको विनंत्या वापरून नेटवर्क पोहोच तपासतो.';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क गंतव्याकडे जाणारे मधले हॉप्स दाखवतो.';

  @override
  String get gameHintWord195Resolver => 'नाव क्वेरींची उत्तरे शोधणारा DNS घटक.';

  @override
  String get gameHintWord196Nslookup => 'DNS नावे आणि पत्ते शोधतो.';

  @override
  String get gameHintWord197Telnet => 'जुना, एनक्रिप्ट नसलेला दूरस्थ टर्मिनल प्रोटोकॉल.';

  @override
  String get gameHintWord198Tftp => 'UDP-आधारित साधा फाइल हस्तांतरण प्रोटोकॉल.';

  @override
  String get gameHintWord199Daemon => 'Unix-सदृश प्रणालींवरील पार्श्वभूमी सेवा प्रक्रिया.';

  @override
  String get gameHintWord200Kernel => 'ऑपरेटिंग सिस्टम संसाधने व्यवस्थापित करणारा मुख्य घटक.';

  @override
  String get gameHintWord201Commit => 'आवृत्ती नियंत्रणातील बदलांचा नोंदवलेला स्नॅपशॉट.';

  @override
  String get gameHintWord202Branch => 'विकासाची एक रेषा दर्शवणारा हलवता येणारा संदर्भ.';

  @override
  String get gameHintWord203Merge => 'वेगवेगळ्या विकास रेषांचे इतिहास एकत्र करतो.';

  @override
  String get gameHintWord204Rebase => 'वेगळ्या पायाभूत कमिटवर कमिट्स पुन्हा चालवतो.';

  @override
  String get gameHintWord205Clone => 'दूरस्थ रिपॉझिटरीची स्थानिक प्रत तयार करतो.';

  @override
  String get gameHintWord206Fetch => 'मर्ज न करता दूरस्थ ऑब्जेक्ट्स आणि संदर्भ डाउनलोड करतो.';

  @override
  String get gameHintWord207Pull => 'बदल आणतो आणि सध्याच्या ब्रँचमध्ये समाविष्ट करतो.';

  @override
  String get gameHintWord208Push => 'स्थानिक कमिट्स दूरस्थ रिपॉझिटरीला पाठवतो.';

  @override
  String get gameHintWord209Stash => 'कमिट न केलेले वर्किंग-ट्री बदल तात्पुरते जतन करतो.';

  @override
  String get gameHintWord210Revert => 'दुसऱ्या कमिटला उलट करणारी कमिट तयार करतो.';

  @override
  String get gameHintWord211Reset => 'Git संदर्भ हलवतो आणि इंडेक्स किंवा वर्किंग फाइल्स रीसेट करू शकतो.';

  @override
  String get gameHintWord212Reflog => 'Git संदर्भांच्या अद्यतनांचा स्थानिक इतिहास.';

  @override
  String get gameHintWord213Diff => 'आवृत्त्या किंवा फाइल्समधील फरक दाखवतो.';

  @override
  String get gameHintWord214Status => 'स्टेज केलेल्या, बदललेल्या आणि अट्रॅक्ड फाइल्सची माहिती देतो.';

  @override
  String get gameHintWord215Checkout => 'आवृत्त्या बदलण्यासाठी किंवा फाइल्स पुनर्संचयित करण्यासाठी Git कमांड.';

  @override
  String get gameHintWord216Tag => 'सामान्यतः प्रकाशन दर्शवणारा नामांकित संदर्भ.';

  @override
  String get gameHintWord217Remote => 'दुसऱ्या रिपॉझिटरीशी नामांकित कनेक्शन.';

  @override
  String get gameHintWord218Origin => 'क्लोन केलेल्या रिपॉझिटरी रिमोटला दिलेले डिफॉल्ट नाव.';

  @override
  String get gameHintWord219Upstream => 'स्थानिक ब्रँचशी संबंधित रिमोट ट्रॅकिंग ब्रँच.';

  @override
  String get gameHintWord220Worktree => 'रिपॉझिटरीशी जोडलेली चेक-आउट केलेली कार्यरत डिरेक्टरी.';

  @override
  String get gameHintWord221Registry => 'कंटेनर इमेजेस साठवणारी आणि वितरित करणारी सेवा.';

  @override
  String get gameHintWord222Digest => 'कंटेनर इमेजसाठी सामग्री-आधारित ओळखकर्ता.';

  @override
  String get gameHintWord223Layer => 'कंटेनर इमेजचा भाग बनवणारे फाइलसिस्टम बदल.';

  @override
  String get gameHintWord224Entrypoint => 'मुख्य कंटेनर एक्झिक्युटेबल ठरवणारी Dockerfile सूचना.';

  @override
  String get gameHintWord225Cmd => 'डिफॉल्ट कमांड किंवा आर्ग्युमेंट्स निर्दिष्ट करणारी Dockerfile सूचना.';

  @override
  String get gameHintWord226Workdir => 'कार्यरत डिरेक्टरी ठरवणारी Dockerfile सूचना.';

  @override
  String get gameHintWord227Copy => 'बिल्ड-कॉन्टेक्स्ट फाइल्स इमेजमध्ये कॉपी करणारी Dockerfile सूचना.';

  @override
  String get gameHintWord228Add => 'स्थानिक आर्काइव्ह्ज देखील उलगडू शकणारी Dockerfile सूचना.';

  @override
  String get gameHintWord229Run => 'बिल्ड-वेळी कमांड चालवणारी Dockerfile सूचना.';

  @override
  String get gameHintWord230Env => 'एन्व्हायर्नमेंट व्हेरिएबल्स ठरवणारी Dockerfile सूचना.';

  @override
  String get gameHintWord231Arg => 'बिल्ड-वेळचे व्हेरिएबल घोषित करणारी Dockerfile सूचना.';

  @override
  String get gameHintWord232Expose => 'कंटेनर पोर्ट नोंदवणारी Dockerfile सूचना.';

  @override
  String get gameHintWord233User => 'नंतरच्या कमांडसाठी खाते निवडणारी Dockerfile सूचना.';

  @override
  String get gameHintWord234Healthcheck => 'कंटेनरची आरोग्य तपासणी कशी करायची ते वर्णन करणारी सूचना.';

  @override
  String get gameHintWord235Shebang => 'चालवायचा इंटरप्रेटर ओळखणारी स्क्रिप्टची पहिली ओळ.';

  @override
  String get gameHintWord236Compose => 'बहु-कंटेनर अनुप्रयोग परिभाषित करून चालवण्यासाठी Docker साधन.';

  @override
  String get gameHintWord237Bridge => 'स्थानिक कंटेनर नेटवर्किंगसाठी सामान्य Docker नेटवर्क ड्रायव्हर.';

  @override
  String get gameHintWord238Overlay => 'अनेक होस्ट्सवरील कंटेनर्सना जोडणारे नेटवर्क.';

  @override
  String get gameHintWord239None => 'कंटेनर नेटवर्किंग बंद करणारा Docker नेटवर्क ड्रायव्हर.';

  @override
  String get gameHintWord240Prune => 'न वापरलेली कंटेनर संसाधने काढून टाकतो.';

  @override
  String get gameHintWord241Replicaset => 'इच्छित पॉड संख्या राखणारा Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord242Service => 'पॉड्सपर्यंत स्थिर प्रवेश देणारे Kubernetes अमूर्तीकरण.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सेवेमागील पत्ते.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes संसाधने गटबद्ध करणारे तार्किक क्षेत्र.';

  @override
  String get gameHintWord245Node => 'Kubernetes पॉड्स होस्ट करणारे वर्कर मशीन.';

  @override
  String get gameHintWord246Kubelet => 'पॉड्सची अंमलबजावणी व्यवस्थापित करणारा प्रत्येक नोडवरील एजंट.';

  @override
  String get gameHintWord247Pvc => 'कायमस्वरूपी साठवणीसाठी Kubernetes विनंती.';

  @override
  String get gameHintWord248Apiserver => 'क्लस्टर API उघड करणारा Kubernetes कंट्रोल-प्लेन घटक.';

  @override
  String get gameHintWord249Role => 'भूमिका-आधारित प्रवेश नियंत्रणातील परवानग्यांचा नामांकित संच.';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेसमधील संसाधन वापर मर्यादित करणारा Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord251Selector => 'संसाधनांना त्यांच्या लेबलनुसार जुळवणारी अभिव्यक्ती.';

  @override
  String get gameHintWord252Taint => 'जुळणारी टॉलरेशन नसलेल्या पॉड्सना दूर ठेवणारा नोड गुणधर्म.';

  @override
  String get gameHintWord253Toleration => 'टेंट असलेल्या नोडवर शेड्युलिंगला परवानगी देणारी पॉड सेटिंग.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोडला शेड्युल न करता येणारा म्हणून चिन्हांकित करतो.';

  @override
  String get gameHintWord255Uncordon => 'कॉर्डन केलेला नोड पुन्हा शेड्युल करता येईल असा करतो.';

  @override
  String get gameHintWord256Drain => 'नोड देखभालीपूर्वी वर्कलोड सुरक्षितपणे बाहेर काढतो.';

  @override
  String get gameHintWord257Job => 'काम पूर्ण होईपर्यंत चालणारा Kubernetes वर्कलोड.';

  @override
  String get gameHintWord258Cronjob => 'वेळापत्रकानुसार जॉब्स तयार करणारा Kubernetes वर्कलोड.';

  @override
  String get gameHintWord259Readiness => 'कंटेनर ट्रॅफिक स्वीकारू शकतो का ते दर्शवणारी तपासणी.';

  @override
  String get gameHintWord260Liveness => 'कंटेनर रीस्टार्ट करण्याची गरज आहे का ते दर्शवणारी तपासणी.';

  @override
  String get gameHintWord261Canary => 'नवीन आवृत्ती ट्रॅफिकच्या छोट्या भागाला दाखवणारी प्रकाशन पद्धत.';

  @override
  String get gameHintWord262Rolling => 'चालू इन्स्टन्सेस हळूहळू बदलणारी अद्यतन रणनीती.';

  @override
  String get gameHintWord263Rollback => 'पूर्वीची कार्यरत अनुप्रयोग आवृत्ती पुनर्संचयित करतो.';

  @override
  String get gameHintWord264Rollout => 'नवीन अनुप्रयोग आवृत्तीचे टप्प्याटप्प्याने डिप्लॉयमेंट.';

  @override
  String get gameHintWord265Recreate => 'बदली सुरू करण्यापूर्वी जुने पॉड्स थांबवणारी डिप्लॉयमेंट रणनीती.';

  @override
  String get gameHintWord266Blue => 'ब्लू-ग्रीन प्रकाशनातील दोन वातावरणांपैकी एक.';

  @override
  String get gameHintWord267Green => 'ब्लू-ग्रीन प्रकाशनातील दुसरे वातावरण.';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पाइपलाइनने तयार केलेले आवृत्तीबद्ध आउटपुट.';

  @override
  String get gameHintWord269Staging => 'प्रकाशन पडताळणीसाठी वापरले जाणारे प्री-प्रोडक्शन वातावरण.';

  @override
  String get gameHintWord270Production => 'प्रत्यक्ष अंतिम वापरकर्त्यांना सेवा देणारे वातावरण.';

  @override
  String get gameHintWord271Release => 'वापरासाठी दिलेली सॉफ्टवेअर आवृत्ती.';

  @override
  String get gameHintWord272Version => 'सॉफ्टवेअर सुधारणा वेगळी ओळखणारा ओळखकर्ता.';

  @override
  String get gameHintWord273Revision => 'दस्तऐवज किंवा कोडबेसची ओळखता येणारी आवृत्ती.';

  @override
  String get gameHintWord274Webhook => 'घटना घडल्यावर पाठवली जाणारी HTTP सूचना.';

  @override
  String get gameHintWord275Runbook => 'प्रणाली चालवण्याची किंवा पुनर्प्राप्त करण्याची दस्तऐवजीकृत प्रक्रिया.';

  @override
  String get gameHintWord276Workspace => 'कार्यरत प्रकल्प संसाधने असलेली डिरेक्टरी किंवा क्षेत्र.';

  @override
  String get gameHintWord277Credentials => 'प्रणालीत प्रवेशासाठी वापरले जाणारे प्रमाणीकरण साहित्य.';

  @override
  String get gameHintWord278Trigger => 'पाइपलाइन सुरू करणारी घटना किंवा अट.';

  @override
  String get gameHintWord279Parameter => 'जॉब किंवा फंक्शनला दिलेले नामांकित इनपुट.';

  @override
  String get gameHintWord280Access => 'अधिकृततेच्या अधीन राहून संसाधन वापरण्याची क्षमता.';

  @override
  String get gameHintWord281Module => 'पायाभूत सुविधा व्याख्यांचा पुनर्वापरयोग्य गट.';

  @override
  String get gameHintWord282Provider => 'कॉन्फिगरेशनला बाह्य API शी जोडणारा Terraform प्लगइन.';

  @override
  String get gameHintWord283Resource => 'कॉन्फिगरेशनमध्ये घोषित केलेला व्यवस्थापित पायाभूत सुविधा ऑब्जेक्ट.';

  @override
  String get gameHintWord284Variable => 'कॉन्फिगरेशन किंवा कोडने वापरलेले नामांकित इनपुट मूल्य.';

  @override
  String get gameHintWord285Output => 'पायाभूत सुविधा कॉन्फिगरेशनने परत केलेले उघड मूल्य.';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्टेट स्नॅपशॉटशी संबंधित फाइल प्रत्यय.';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट व्हेरिएबल मूल्यांसाठी वापरला जाणारा फाइल प्रत्यय.';

  @override
  String get gameHintWord288Backend => 'स्टेट साठवणीचे नियंत्रण करणारे Terraform कॉन्फिगरेशन.';

  @override
  String get gameHintWord289Plan => 'प्रस्तावित पायाभूत सुविधा बदलांचे Terraform पूर्वावलोकन.';

  @override
  String get gameHintWord290Apply => 'प्रस्तावित बदल कार्यान्वित करणारी Terraform क्रिया.';

  @override
  String get gameHintWord291Destroy => 'व्यवस्थापित पायाभूत सुविधा काढणारी Terraform क्रिया.';

  @override
  String get gameHintWord292Import => 'विद्यमान संसाधन पायाभूत सुविधा व्यवस्थापनाखाली आणतो.';

  @override
  String get gameHintWord293Refresh => 'नोंदवलेली स्थिती प्रत्यक्ष पायाभूत सुविधेशी समक्रमित करतो.';

  @override
  String get gameHintWord294Validate => 'कॉन्फिगरेशनचे सिंटॅक्स आणि अंतर्गत सुसंगती तपासतो.';

  @override
  String get gameHintWord295Fmt => 'प्रमाणित कॉन्फिगरेशन फॉरमॅटिंग लागू करणारी Terraform कमांड.';

  @override
  String get gameHintWord296Init => 'Terraform प्रोव्हायडर्स आणि कार्यरत डिरेक्टरी सुरू करतो.';

  @override
  String get gameHintWord297Executor => 'बिल्ड चालवू शकणारा Jenkins वर्कर स्लॉट.';

  @override
  String get gameHintWord298Dependencies => 'एका घटकापूर्वी दुसरा आवश्यक असल्याचे संबंध.';

  @override
  String get gameHintWord299Drift => 'घोषित आणि प्रत्यक्ष पायाभूत सुविधा स्थितीतील फरक.';

  @override
  String get gameHintWord300Locking => 'एकाच वेळी लिहिणाऱ्यांना सामायिक स्थिती बदलण्यापासून रोखतो.';

  @override
  String get gameHintWord301Playbook => 'ऑटोमेशन प्ले आणि टास्क वर्णन करणारा Ansible दस्तऐवज.';

  @override
  String get gameHintWord302Inventory => 'व्यवस्थापित होस्ट आणि गटांचा Ansible संग्रह.';

  @override
  String get gameHintWord303Facts => 'व्यवस्थापित होस्टबद्दल गोळा केलेली प्रणाली माहिती.';

  @override
  String get gameHintWord304Task => 'ऑटोमेशनमधील कामाचे एक स्वतंत्र एकक.';

  @override
  String get gameHintWord305Handler => 'बदलाची सूचना मिळाल्यावर चालणारा Ansible टास्क.';

  @override
  String get gameHintWord306Notify => 'बदललेल्या टास्कनंतर हँडलर रांगेत लावणारे Ansible निर्देश.';

  @override
  String get gameHintWord307Become => 'विशेषाधिकार वाढवणे सक्षम करणारी Ansible सेटिंग.';

  @override
  String get gameHintWord308Vault => 'संवेदनशील ऑटोमेशन डेटा एनक्रिप्ट करण्यासाठी Ansible वैशिष्ट्य.';

  @override
  String get gameHintWord309Register => 'टास्कचा निकाल व्हेरिएबलमध्ये जतन करणारे Ansible निर्देश.';

  @override
  String get gameHintWord310When => 'सशर्त टास्क अंमलबजावणी नियंत्रित करणारा Ansible कीवर्ड.';

  @override
  String get gameHintWord311Loop => 'संग्रहावर ऑटोमेशन टास्कची पुनरावृत्ती करतो.';

  @override
  String get gameHintWord312Include => 'पुनर्वापरयोग्य ऑटोमेशन सामग्री गतिमानपणे लोड करतो.';

  @override
  String get gameHintWord313Tags => 'ऑटोमेशन टास्कचे उपसंच निवडण्यासाठी वापरलेली लेबले.';

  @override
  String get gameHintWord314Template => 'डिप्लॉयमेंटपूर्वी व्हेरिएबल्सने रेंडर केलेली फाइल.';

  @override
  String get gameHintWord315Jinja => 'Ansible ने वापरलेली टेम्पलेट भाषा.';

  @override
  String get gameHintWord316Abstraction => 'अंमलबजावणी तपशील सोप्या इंटरफेसमागे लपवणे.';

  @override
  String get gameHintWord317Agile => 'अभिप्रायावर भर देणारा पुनरावृत्तीशील सॉफ्टवेअर वितरण दृष्टिकोन.';

  @override
  String get gameHintWord318Puppet => 'घोषणात्मक मॅनिफेस्ट वापरणारे कॉन्फिगरेशन व्यवस्थापन साधन.';

  @override
  String get gameHintWord319Airflow => 'वर्कफ्लो DAG चे शेड्युलिंग आणि ऑर्केस्ट्रेशन करणारा प्लॅटफॉर्म.';

  @override
  String get gameHintWord320Argo => 'GitOps डिलिव्हरी कंट्रोलरसह क्लाउड-नेटिव्ह प्रकल्प कुटुंब.';

  @override
  String get gameHintWord321Rds => 'AWS च्या व्यवस्थापित रिलेशनल डेटाबेस सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord322Sqs => 'AWS च्या व्यवस्थापित संदेश रांगेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord323Sns => 'AWS च्या पब्लिश-सबस्क्राइब सूचना सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord324Ses => 'AWS च्या ईमेल पाठवण्याच्या सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord325Iam => 'क्लाउड ओळख आणि प्रवेश व्यवस्थापनाचे संक्षिप्त रूप.';

  @override
  String get gameHintWord326Kms => 'AWS च्या एनक्रिप्शन की व्यवस्थापन सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord327Waf => 'अनुप्रयोग-स्तर वेब विनंत्या गाळणारा फायरवॉल.';

  @override
  String get gameHintWord328Eks => 'AWS च्या व्यवस्थापित Kubernetes सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord329Ecs => 'AWS च्या व्यवस्थापित कंटेनर ऑर्केस्ट्रेशन सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord330Ecr => 'AWS च्या कंटेनर इमेज रजिस्ट्रीचे संक्षिप्त रूप.';

  @override
  String get gameHintWord331Aurora => 'MySQL आणि PostgreSQL शी सुसंगत AWS रिलेशनल डेटाबेस.';

  @override
  String get gameHintWord332Redshift => 'AWS विश्लेषण डेटा वेअरहाउस.';

  @override
  String get gameHintWord333Neptune => 'AWS चा व्यवस्थापित ग्राफ डेटाबेस.';

  @override
  String get gameHintWord334Elasticache => 'AWS ची व्यवस्थापित इन-मेमरी कॅशिंग सेवा.';

  @override
  String get gameHintWord335Athena => 'SQL वापरून ऑब्जेक्ट-स्टोरेज डेटा क्वेरी करणारी AWS सेवा.';

  @override
  String get gameHintWord336Glue => 'AWS ची सर्व्हरलेस डेटा एकत्रीकरण आणि ETL सेवा.';

  @override
  String get gameHintWord337Emr => 'व्यवस्थापित बिग-डेटा प्रक्रिया क्लस्टर्ससाठी AWS प्लॅटफॉर्म.';

  @override
  String get gameHintWord338Lambda => 'सर्व्हर व्यवस्थापित न करता फंक्शन्स चालवणारी AWS सेवा.';

  @override
  String get gameHintWord339Cloudfront => 'AWS चे जागतिक सामग्री वितरण नेटवर्क.';

  @override
  String get gameHintWord340Cloudwatch => 'मेट्रिक्स, लॉग आणि अलार्म गोळा करणारी AWS सेवा.';

  @override
  String get gameHintWord341Cloudshell => 'AWS चे ब्राउझर-आधारित शेल वातावरण.';

  @override
  String get gameHintWord342Codecommit => 'AWS ची व्यवस्थापित Git रिपॉझिटरी सेवा.';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कंपाइल करून बिल्ड चाचण्या चालवणारी AWS सेवा.';

  @override
  String get gameHintWord344Codedeploy => 'AWS ची स्वयंचलित अनुप्रयोग डिप्लॉयमेंट सेवा.';

  @override
  String get gameHintWord345Codepipeline => 'AWS ची सतत वितरण पाइपलाइन सेवा.';

  @override
  String get gameHintWord346Guardduty => 'AWS ची बुद्धिमान धोका शोध सेवा.';

  @override
  String get gameHintWord347Inspector => 'वर्कलोडमधील असुरक्षिततांचे मूल्यांकन करणारी AWS सेवा.';

  @override
  String get gameHintWord348Macie => 'ऑब्जेक्ट स्टोरेजमधील संवेदनशील डेटा शोधणारी AWS सेवा.';

  @override
  String get gameHintWord349Shield => 'AWS ची व्यवस्थापित DDoS संरक्षण सेवा.';

  @override
  String get gameHintWord350Snowball => 'मोठ्या डेटा हस्तांतरणासाठी AWS चे भौतिक उपकरण.';

  @override
  String get gameHintWord351Snowcone => 'AWS ऑफलाइन हस्तांतरण कुटुंबातील लहान, मजबूत उपकरण.';

  @override
  String get gameHintWord352Datasync => 'AWS ची स्वयंचलित ऑनलाइन डेटा हस्तांतरण सेवा.';

  @override
  String get gameHintWord353Msk => 'AWS च्या व्यवस्थापित Apache Kafka सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord354Backup => 'पुनर्प्राप्तीसाठी ठेवलेली डेटाची प्रत.';

  @override
  String get gameHintWord355Transcribe => 'भाषणाचे मजकुरात रूपांतर करणारी AWS सेवा.';

  @override
  String get gameHintWord356Translate => 'भाषांमध्ये मजकुराचे भाषांतर करणारी AWS सेवा.';

  @override
  String get gameHintWord357Rekognition => 'प्रतिमा आणि व्हिडिओचे विश्लेषण करणारी AWS सेवा.';

  @override
  String get gameHintWord358Comprehend => 'AWS ची नैसर्गिक-भाषा विश्लेषण सेवा.';

  @override
  String get gameHintWord359Textract => 'दस्तऐवजांमधून मजकूर आणि तक्ते काढणारी AWS सेवा.';

  @override
  String get gameHintWord360Sagemaker => 'मशीन लर्निंग मॉडेल्स बनवण्यासाठी आणि डिप्लॉय करण्यासाठी AWS प्लॅटफॉर्म.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud चा जागतिक स्तरावर वितरित रिलेशनल डेटाबेस.';

  @override
  String get gameHintWord362Pub => 'पब्लिश-सबस्क्राइब मेसेजिंग पॅटर्नचा प्रकाशन करणारा अर्धा भाग.';

  @override
  String get gameHintWord363Sub => 'पब्लिश-सबस्क्राइब मेसेजिंग पॅटर्नचा सदस्य असलेला अर्धा भाग.';

  @override
  String get gameHintWord364Functions => 'सर्व्हरलेस प्लॅटफॉर्म देत असलेली घटना-चालित कोड एकके.';

  @override
  String get gameHintWord365App => 'सॉफ्टवेअर अनुप्रयोगासाठी संक्षिप्त रूप.';

  @override
  String get gameHintWord366Engine => 'Compute Engine सारख्या नावांमधील एक्झिक्युशन घटक.';

  @override
  String get gameHintWord367Compute => 'व्हर्च्युअल मशीन्स किंवा कंटेनर्सनी पुरवलेली प्रक्रिया क्षमता.';

  @override
  String get gameHintWord368Network => 'डेटाची देवाणघेवाण करणाऱ्या जोडलेल्या प्रणाली.';

  @override
  String get gameHintWord369Security => 'धोक्यांपासून प्रणाली आणि माहितीचे संरक्षण.';

  @override
  String get gameHintWord370Identity => 'प्रवेश निर्णयांसाठी वापरले जाणारे वापरकर्ता किंवा सेवेचे प्रतिनिधित्व.';

  @override
  String get gameHintWord371Monitoring => 'प्रणालीच्या आरोग्याचे आणि वर्तनाचे सतत निरीक्षण.';

  @override
  String get gameHintWord372Logging => 'स्वतंत्र अनुप्रयोग आणि प्रणाली घटना नोंदवणे.';

  @override
  String get gameHintWord373Trace => 'सेवा कॉल्समधून विनंतीच्या मार्गाची नोंद.';

  @override
  String get gameHintWord374Metrics => 'कालांतराने प्रणाली वर्तनाची संख्यात्मक मापे.';

  @override
  String get gameHintWord375Alert => 'मॉनिटर केलेल्या स्थितीकडे लक्ष देण्याची गरज असल्याची सूचना.';

  @override
  String get gameHintWord376Billing => 'वापरलेल्या क्लाउड सेवांचा मागोवा घेणे आणि शुल्क आकारणे.';

  @override
  String get gameHintWord377Quota => 'वापरता येणाऱ्या संसाधनाच्या प्रमाणावरील मर्यादा.';

  @override
  String get gameHintWord378Region => 'उपलब्धता झोन असलेले भौगोलिक क्लाउड डिप्लॉयमेंट क्षेत्र.';

  @override
  String get gameHintWord379Tenancy => 'ग्राहक पायाभूत सुविधा कशा सामायिक करतात ते वर्णन करणारी व्यवस्था.';

  @override
  String get gameHintWord380Regional => 'क्लाउड रीजनपुरते मर्यादित संसाधन वर्णन करते.';

  @override
  String get gameHintWord381Cosmos => 'Azure च्या जागतिक स्तरावर वितरित बहु-मॉडेल डेटाबेसचे नाव.';

  @override
  String get gameHintWord382Synapse => 'वेअरहाउसिंग आणि डेटा प्रक्रिया एकत्र करणारा Azure विश्लेषण प्लॅटफॉर्म.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft चा क्लाउड-नेटिव्ह सुरक्षा माहिती आणि घटना प्लॅटफॉर्म.';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोडचे संरक्षण करणारे Microsoft सुरक्षा उत्पादन कुटुंब.';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रँडिंगची जागा घेणारे Microsoft ओळख उत्पादन कुटुंब.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager चे संक्षिप्त रूप.';

  @override
  String get gameHintWord387Arc => 'Azure बाहेरील संसाधनांपर्यंत व्यवस्थापन वाढवणारी Azure सेवा.';

  @override
  String get gameHintWord388Aks => 'Azure च्या व्यवस्थापित Kubernetes सेवेचे संक्षिप्त रूप.';

  @override
  String get gameHintWord389Armor => 'Google Cloud वेब संरक्षण सेवेच्या नावाचा प्रत्यय.';

  @override
  String get gameHintWord390Blob => 'Azure ऑब्जेक्ट-स्टोरेज डेटा प्रकार.';

  @override
  String get gameHintWord391Files => 'व्यवस्थापित नेटवर्क फाइल शेअर्स देणारी Azure सेवा.';

  @override
  String get gameHintWord392Disk => 'व्हर्च्युअल मशीनला जोडलेले ब्लॉक-स्टोरेज उपकरण.';

  @override
  String get gameHintWord393Function => 'निकाल परत करू शकणारा कोडचा कॉल करण्यायोग्य ब्लॉक.';

  @override
  String get gameHintWord394Logic => 'वर्कफ्लो एकत्रीकरणासाठी Azure अॅप सेवा श्रेणी.';

  @override
  String get gameHintWord395Insights => 'Azure अनुप्रयोग टेलिमेट्री उत्पादन नावाचा प्रत्यय.';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क एंडपॉइंट्समध्ये वाहणारा डेटा.';

  @override
  String get gameHintWord397Manager => 'Azure Resource च्या कंट्रोल प्लेनसाठी उत्पादन नावाचा प्रत्यय.';

  @override
  String get gameHintWord398Bastion => 'खाजगी होस्ट प्रवेशासाठी व्यवस्थापित किंवा मजबूत केलेला प्रवेश बिंदू.';

  @override
  String get gameHintWord399Front => 'Azure च्या जागतिक प्रवेश-बिंदू सेवा Front Door मधील पहिला शब्द.';

  @override
  String get gameHintWord400Door => 'Azure च्या जागतिक प्रवेश-बिंदू सेवा Front Door मधील दुसरा शब्द.';

  @override
  String get gameHintWord401Javascript => 'ब्राउझर आणि Node रनटाइममध्ये मोठ्या प्रमाणात वापरली जाणारी प्रोग्रामिंग भाषा.';

  @override
  String get gameHintWord402Perl => 'मजकूर प्रक्रिया आणि रेग्युलर एक्स्प्रेशनसाठी ओळखली जाणारी स्क्रिप्टिंग भाषा.';

  @override
  String get gameHintWord403Powershell => 'Microsoft ची ऑब्जेक्ट-ओरिएंटेड शेल आणि ऑटोमेशन भाषा.';

  @override
  String get gameHintWord404Java => 'Jenkins अंमलात आणण्यासाठी वापरलेली JVM भाषा.';

  @override
  String get gameHintWord405Json => 'ऑब्जेक्ट्स आणि अॅरे असलेले हलके डेटा स्वरूप.';

  @override
  String get gameHintWord406Xml => 'नेस्टेड नामांकित टॅग वापरणारे मार्कअप स्वरूप.';

  @override
  String get gameHintWord407Html => 'वेब पृष्ठांची रचना करण्यासाठी वापरली जाणारी मार्कअप भाषा.';

  @override
  String get gameHintWord408Css => 'वेब सादरीकरण नियंत्रित करणारी स्टाइलशीट भाषा.';

  @override
  String get gameHintWord409String => 'मजकूर अक्षरांचा क्रम.';

  @override
  String get gameHintWord410Array => 'घटकांचा अनुक्रमित संग्रह.';

  @override
  String get gameHintWord411Hash => 'Ruby आणि Perl मधील साहचर्य की-व्हॅल्यू संग्रह.';

  @override
  String get gameHintWord412Object => 'गुणधर्म आणि वर्तन असलेले रनटाइम मूल्य.';

  @override
  String get gameHintWord413Class => 'क्लास-आधारित भाषांमध्ये ऑब्जेक्ट्स बनवण्यासाठी वापरलेली व्याख्या.';

  @override
  String get gameHintWord414Method => 'ऑब्जेक्ट किंवा क्लासशी संबंधित फंक्शन.';

  @override
  String get gameHintWord415Interface => 'घटक कोणत्या क्रिया उघड करतो ते वर्णन करणारा करार.';

  @override
  String get gameHintWord416Subclass => 'दुसऱ्या क्लासमधून व्युत्पन्न केलेला क्लास.';

  @override
  String get gameHintWord417Super => 'पालक-क्लासचे वर्तन वापरण्यासाठीचा कीवर्ड.';

  @override
  String get gameHintWord418Protected => 'प्रवेश क्लास-संबंधित संदर्भांपुरता मर्यादित करणारा दृश्यमानता स्तर.';

  @override
  String get gameHintWord419Exception => 'सामान्य नियंत्रण प्रवाहात व्यत्यय आणणारी रनटाइम स्थिती.';

  @override
  String get gameHintWord420Regex => 'मजकूर जुळवण्यासाठी वापरली जाणारी नमुना नोटेशन.';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोड रचनेनुसार ठरणारे स्कोप वर्णन करते.';

  @override
  String get gameHintWord422Scalar => 'Perl मधील एकल-मूल्य व्हेरिएबल श्रेणी.';

  @override
  String get gameHintWord423Tuple => 'Python मधील अपरिवर्तनीय क्रमबद्ध संग्रह.';

  @override
  String get gameHintWord424List => 'Python मधील परिवर्तनीय क्रमबद्ध संग्रह.';

  @override
  String get gameHintWord425Dict => 'Python चे अंगभूत मॅपिंग प्रकाराचे नाव.';

  @override
  String get gameHintWord426Dictionary => 'की आणि संबंधित मूल्ये जोडणारा संग्रह.';

  @override
  String get gameHintWord427Set => 'वेगवेगळ्या मूल्यांचा संग्रह.';

  @override
  String get gameHintWord428Boolean => 'खरे किंवा खोटे दर्शवणारा डेटा प्रकार.';

  @override
  String get gameHintWord429Integer => 'पूर्ण संख्या दर्शवणारा संख्यात्मक प्रकार.';

  @override
  String get gameHintWord430Float => 'फ्लोटिंग-पॉइंट मूल्ये दर्शवणारा संख्यात्मक प्रकार.';

  @override
  String get gameHintWord431Double => 'दुहेरी-अचूकतेचा फ्लोटिंग-पॉइंट प्रकार.';

  @override
  String get gameHintWord432Null => 'ऑब्जेक्ट किंवा निकालाचा अभाव दर्शवणारे मूल्य.';

  @override
  String get gameHintWord433Undefined => 'नियुक्त मूल्य नसल्याबद्दलचे JavaScript मूल्य.';

  @override
  String get gameHintWord434Promise => 'अंतिम असिंक्रोनस निकाल दर्शवणारा JavaScript ऑब्जेक्ट.';

  @override
  String get gameHintWord435Async => 'असिंक्रोनस फंक्शन चिन्हांकित करणारा कीवर्ड.';

  @override
  String get gameHintWord436Await => 'असिंक्रोनस निकालाची वाट पाहणारा कीवर्ड.';

  @override
  String get gameHintWord437Callback => 'दुसऱ्या क्रियेने बोलावण्यासाठी दिलेले फंक्शन.';

  @override
  String get gameHintWord438Closure => 'आपल्या सभोवतालच्या लेक्सिकल स्कोपमध्ये प्रवेश राखणारे फंक्शन.';

  @override
  String get gameHintWord439Generator => 'yield केलेल्या मूल्यांद्वारे क्रम आळशीपणे तयार करणारे फंक्शन.';

  @override
  String get gameHintWord440Iterator => 'संग्रहातील मूल्यांतून पुढे जाणारा ऑब्जेक्ट.';

  @override
  String get gameHintWord441Print => 'मूल्य आउटपुटवर लिहिणारे सामान्य फंक्शन.';

  @override
  String get gameHintWord442Input => 'स्टँडर्ड इनपुटमधून एक ओळ वाचणारे Python फंक्शन.';

  @override
  String get gameHintWord443Open => 'फाइल हँडल मिळवण्यासाठी वापरले जाणारे फंक्शन.';

  @override
  String get gameHintWord444Close => 'उघडी फाइल किंवा कनेक्शन मुक्त करणारी क्रिया.';

  @override
  String get gameHintWord445Read => 'स्ट्रीम किंवा फाइलमधून डेटा मिळवणारी क्रिया.';

  @override
  String get gameHintWord446Write => 'स्ट्रीम किंवा फाइलमध्ये डेटा पाठवणारी क्रिया.';

  @override
  String get gameHintWord447Append => 'संग्रहाच्या शेवटी एक घटक जोडतो.';

  @override
  String get gameHintWord448Split => 'विभाजक वापरून मजकुराचे उपस्ट्रिंगमध्ये विभाजन करतो.';

  @override
  String get gameHintWord449Join => 'विभाजक वापरून स्ट्रिंग्सचा क्रम एकत्र जोडतो.';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिंगच्या सभोवतालची रिकामी जागा काढतो.';

  @override
  String get gameHintWord451Chomp => 'Perl किंवा Ruby मध्ये शेवटचा रेकॉर्ड विभाजक काढतो.';

  @override
  String get gameHintWord452Map => 'संग्रहातील प्रत्येक घटकावर रूपांतर लागू करतो.';

  @override
  String get gameHintWord453Filter => 'अट पूर्ण करणारे संग्रह घटक ठेवतो.';

  @override
  String get gameHintWord454Reduce => 'संग्रहाला संचित निकालात एकत्र करतो.';

  @override
  String get gameHintWord455Range => 'पूर्णांकांचा अंकगणितीय क्रम दर्शवणारा Python प्रकार.';

  @override
  String get gameHintWord456Length => 'संग्रहाचा आकार परत करणारा गुणधर्म किंवा मेथड.';

  @override
  String get gameHintWord457Len => 'संग्रहाचा आकार परत करणारे Python अंगभूत फंक्शन.';

  @override
  String get gameHintWord458Type => 'ऑब्जेक्टचा प्रकार परत करणारे Python फंक्शन.';

  @override
  String get gameHintWord459Isinstance => 'प्रकार श्रेणीतील सदस्यत्व तपासणारे Python फंक्शन.';

  @override
  String get gameHintWord460Yield => 'जनरेटरमधून मूल्य निर्माण करणारा कीवर्ड.';

  @override
  String get gameHintWord461Saas => 'संपूर्ण सॉफ्टवेअर अनुप्रयोग पुरवणारे क्लाउड मॉडेल.';

  @override
  String get gameHintWord462Paas => 'व्यवस्थापित अनुप्रयोग विकास प्लॅटफॉर्म पुरवणारे क्लाउड मॉडेल.';

  @override
  String get gameHintWord463Iaas => 'व्हर्च्युअल कंप्यूट, स्टोरेज आणि नेटवर्किंग पुरवणारे क्लाउड मॉडेल.';

  @override
  String get gameHintWord464Hybrid => 'खाजगी आणि सार्वजनिक पायाभूत सुविधा एकत्र करणारा क्लाउड दृष्टिकोन.';

  @override
  String get gameHintWord465Archive => 'क्वचित वापरल्या जाणाऱ्या डेटाची दीर्घकालीन साठवण.';

  @override
  String get gameHintWord466Public => 'अनेक ग्राहकांना सेवा देणारे क्लाउड मालकी मॉडेल.';

  @override
  String get gameHintWord467Private => 'एकाच संस्थेसाठी समर्पित क्लाउड मॉडेल.';

  @override
  String get gameHintWord468Scalability => 'संसाधने जोडून वाढता भार हाताळण्याची क्षमता.';

  @override
  String get gameHintWord469Availability => 'सेवा गरज असेल तेव्हा किती प्रमाणात उपलब्ध राहते.';

  @override
  String get gameHintWord470Resilience => 'बिघाडांना तोंड देण्याची आणि त्यातून सावरण्याची क्षमता.';

  @override
  String get gameHintWord471Redundancy => 'एकल बिघाड बिंदू कमी करणारे प्रतिकृती घटक.';

  @override
  String get gameHintWord472Disaster => 'पुनर्प्राप्ती रणनीतीने हाताळला जाणारा मोठा खंड.';

  @override
  String get gameHintWord473Recovery => 'बिघाडानंतर सेवा किंवा डेटा पुनर्संचयित करणे.';

  @override
  String get gameHintWord474Replicate => 'डेटा किंवा वर्कलोड दुसऱ्या ठिकाणी कॉपी करा.';

  @override
  String get gameHintWord475Snapshotting => 'डेटा किंवा प्रणाली स्थितीच्या विशिष्ट क्षणाच्या प्रती घेणे.';

  @override
  String get gameHintWord476Restore => 'जतन केलेल्या प्रतीतून डेटा परत मिळवण्याची क्रिया.';

  @override
  String get gameHintWord477Residency => 'साठवलेल्या डेटाचे भौगोलिक स्थान ठरवणारी आवश्यकता.';

  @override
  String get gameHintWord478Compliance => 'आवश्यक नियम आणि संस्थात्मक नियंत्रणांचे पालन करणे.';

  @override
  String get gameHintWord479Governance => 'तंत्रज्ञान वापर नियंत्रित करणारी धोरणे आणि प्रक्रिया.';

  @override
  String get gameHintWord480Audit => 'नोंदवलेल्या क्रियाकलापांचे आणि अनुपालन पुराव्याचे पुनरावलोकन.';

  @override
  String get gameHintWord481Token => 'अधिकृतता किंवा ओळख दर्शवणारे क्रेडेन्शियल किंवा चिन्ह.';

  @override
  String get gameHintWord482Oauth => 'प्रतिनिधित्व केलेल्या प्रवेशास परवानगी देणारी अधिकृतता चौकट.';

  @override
  String get gameHintWord483Saml => 'एंटरप्राइझ सिंगल साइन-ऑनसाठी सामान्यतः वापरले जाणारे XML-आधारित मानक.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पाइपलाइनमध्ये वापरली जाणारी विशेष कमांड.';

  @override
  String get gameHintWord485Algorithm => 'संगणकीय समस्या सोडवण्यासाठी पायऱ्यांचा निश्चित क्रम.';

  @override
  String get gameHintWord486Key => 'एनक्रिप्शन नियंत्रित करण्यासाठी किंवा साठवलेला डेटा ओळखण्यासाठी वापरलेले मूल्य.';

  @override
  String get gameHintWord487Alias => 'शेल कमांड किंवा संसाधनाचे पर्यायी नाव.';

  @override
  String get gameHintWord488Amend => 'सर्वात अलीकडील कमिट बदलणारा Git कमिट पर्याय.';

  @override
  String get gameHintWord489Allsigned => 'स्वाक्षरीकृत स्क्रिप्ट्स आवश्यक करणारे PowerShell एक्झिक्युशन धोरण.';

  @override
  String get gameHintWord490Remotesigned => 'डाउनलोड केलेल्या स्क्रिप्ट्सवर स्वाक्षरी आवश्यक करणारे PowerShell धोरण.';

  @override
  String get gameHintWord491Acl => 'वापरकर्ते किंवा प्रणालींच्या परवानग्या ठरवणारी यादी.';

  @override
  String get gameHintWord492Uid => 'Unix वापरकर्त्याला दिलेला संख्यात्मक ओळखकर्ता.';

  @override
  String get gameHintWord493Setgid => 'एक्झिक्युशन किंवा वारसादरम्यान गट ओळखीवर परिणाम करणारा परवानगी बिट.';

  @override
  String get gameHintWord494Setfacl => 'फाइल प्रवेश नियंत्रण सूची ठरवणारी Linux कमांड.';

  @override
  String get gameHintWord495Isolation => 'वर्कलोड्सना एकमेकांत व्यत्यय आणण्यापासून रोखणारे विलगीकरण.';

  @override
  String get gameHintWord496Sighup => 'अनेकदा कॉन्फिगरेशन पुन्हा लोड करण्याची विनंती करण्यासाठी वापरला जाणारा Unix हँगअप सिग्नल.';

  @override
  String get gameHintWord497Sigint => 'सामान्यतः Control-C ने निर्माण होणारा Unix इंटरप्ट सिग्नल.';

  @override
  String get gameHintWord498Sigstop => 'प्रक्रिया न संपवता थांबवणारा Unix सिग्नल.';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड आणि प्रवेश की सारखी संवेदनशील मूल्ये.';

  @override
  String get gameHintWord500Secure => 'अनधिकृत प्रवेशापासून संरक्षित कनेक्शनचे वर्णन करते.';

  @override
  String get fontSettingsTitle => 'फॉन्ट';

  @override
  String get fontChangeFont => 'फॉन्ट बदला';

  @override
  String get fontSystemDefault => 'सिस्टम डीफॉल्ट';

  @override
  String get fontPreview => 'पूर्वावलोकन';

  @override
  String get fontPreviewSample => 'एकेका प्रश्नातून DevOps शिका';

  @override
  String get fontSelected => 'निवडलेले';

  @override
  String get fontLatinOnlyNote => 'सानुकूल फॉन्ट लॅटिन अक्षरांना लागू होतात. इतर लिपी तुमच्या डिव्हाइसच्या फॉन्टमध्येच दिसतील.';

  @override
  String get fontDescSystem => 'तुमच्या डिव्हाइसचा अंगभूत फॉन्ट';

  @override
  String get fontDescGeometric => 'भौमितिक सॅन्स-सेरिफ';

  @override
  String get fontDescGeometricRounded => 'भौमितिक गोलाकार सॅन्स-सेरिफ';

  @override
  String get fontDescFriendly => 'मैत्रीपूर्ण सॅन्स-सेरिफ';

  @override
  String get fontDescCondensed => 'संकुचित';

  @override
  String get fontDescRounded => 'गोलाकार सॅन्स-सेरिफ';

  @override
  String get fontDescRoundedDisplay => 'गोलाकार डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
