// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Goan Konkani (`gom`).
class AppLocalizationsGom extends AppLocalizations {
  AppLocalizationsGom([String locale = 'gom']) : super(locale);

  @override
  String get appTour => 'ऍपाची वळख';

  @override
  String get skipTour => 'वळख सोडात';

  @override
  String get finishTour => 'वळख पुराय करात';

  @override
  String tourStep(int current, int total) {
    return 'पांवडो $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेव्हिगेशन मेनू';

  @override
  String get tourSearch => 'संबंधीत क्विझ श्रेणी सोदपाक हांगा विषय बरयात.';

  @override
  String get tourCategory => 'मिश्र क्विझ खातीर DevOps चेर टॅप करात. हेर श्रेणींनी प्रस्नसंच आसात. उपरांत पळोवपाक प्रस्न बुकमार्क करात.';

  @override
  String get tourMenu => 'नेव्हिगेशन मेनू उगडपाक ह्या बटणाचेर टॅप करात.';

  @override
  String get tourLearning => 'कार्डां खातीर शिकप उगडात. खंयच्याय दिशेन स्वाइप करात, शफल करात, आपोआप बदल वापरात वा कार्ड बुकमार्क करात.';

  @override
  String get tourGames => 'खेळ खेळून गुण मेळयात. पातळीच्या खेळांनी दर पुराय पातळेक 100 गुण मेळटात; संकेताक 20 गुण लागतात.';

  @override
  String get tourAchievements => 'तुमच्यो उपलब्धी हांगा पळयात. नव्यो उपलब्धी आनी उपलब्ध थीम पॉपअपांत दिसतात.';

  @override
  String get tourSettings => 'भास, थीम आनी आवाज वेंचात. बुकमार्क खातीर जतन केल्लो डेटा वा हो मार्गदर्शक परत पळोवपाक ऍपाची वळख उगडात.';

  @override
  String get achievementUnlocked => 'उपलब्धी अनलॉक जाली!';

  @override
  String get themeUnlocked => 'नवी थीम उपलब्ध आसा!';

  @override
  String get themeUnlockedMessage => 'आतां तुमी सेटिंग्ज > थीम हांगा ही थीम वेंचूंक शकतात.';

  @override
  String get gameSounds => 'खेळाचे आवाज';

  @override
  String get gameSoundsDescription => 'खेळ आनी क्विझ खातीर ध्वनी परिणाम. उपकरणाचो आवाज आनी सायलेंट मोड तपासात.';

  @override
  String get testSound => 'आवाज तपासात';

  @override
  String get soundSettingBusy => 'उपकार करून वाट पळयात...';

  @override
  String get soundSettingError => 'आवाजाची सेटिंग लोड वा जतन करपाक मेळ्ळी ना. परत यत्न करात.';

  @override
  String get soundPlaybackError => 'आवाज वाजोवपाक मेळ्ळो ना. उपकरण वा ब्राउझराची ऑडिओ सेटिंग तपासात.';

  @override
  String get saveData => 'जतन केल्लो डेटा';

  @override
  String get learningTranslationUnavailable => 'ह्या कार्डाचो वेंचिल्ल्या भाशेंत अजून अणकार जावंक ना.';

  @override
  String get saveQuestion => 'प्रस्न जतन करात';

  @override
  String defaultPortQuestion(String service) {
    return '$service चो डिफॉल्ट पोर्ट खंयचो?';
  }

  @override
  String get removeSavedItem => 'जतन केल्ल्यांतल्यान काडात';

  @override
  String get noSavedData => 'अजून कांयच जतन केल्लें ना. शिकपाचीं कार्डां वा क्विझचे प्रस्न बुकमार्क करात.';

  @override
  String get savedDataError => 'जतन केल्लो डेटा लोड वा अपडेट करपाक मेळ्ळो ना. परत यत्न करात.';

  @override
  String get savedItemUnavailable => 'ही जतन केल्ली वस्त आतां उपलब्ध ना.';

  @override
  String get correctAnswer => 'बरोबर जाप';

  @override
  String get retry => 'परत यत्न करात';

  @override
  String get certificates => 'प्रमाणपत्रां';

  @override
  String get whatsNew => 'नवें कितें';

  @override
  String get settings => 'मांडावळ';

  @override
  String get darkMode => 'काळो मोड';

  @override
  String get lightMode => 'उजवाडाचो मोड';

  @override
  String get language => 'भास';

  @override
  String get selectLanguage => 'भास निवडात';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'क्विझ सुरू करात';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'वर्ग बदलात';

  @override
  String get dailyQuiz => 'दिसपट्टी क्विझ';

  @override
  String get dailyQuizCompleted => 'दिसपट्टी क्विझ पुराय';

  @override
  String get dailyQuizCompletedMessage => 'तुमी आयची दिसपट्टी क्विझ पुराय केल्या। नव्या आव्हानाखातीर फाल्यां येयात!';

  @override
  String get leaderboard => 'लीडरबोर्ड';

  @override
  String get shareApp => 'ॲप वांटात';

  @override
  String get rateApp => 'ॲपाक गुण दिवचे';

  @override
  String get about => 'विशीं';

  @override
  String get ok => 'बरें';

  @override
  String get home => 'मुखेल पान';

  @override
  String get games => 'खेळ';

  @override
  String get referAndEarn => 'आमंत्रण दिवन मेळयात';

  @override
  String get themes => 'थीम';

  @override
  String get version => 'आवृत्ती';

  @override
  String get developer => 'विकासक';

  @override
  String get contact => 'संपर्क';

  @override
  String get learning => 'शिकप';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'म्हजे कडेन जोडात';

  @override
  String get aboutDescription => 'DevOps Quiz वरवीं Linux, Docker, Kubernetes आनी हेर DevOps विशय शिकून मुलाखती आनी प्रमाणपत्रांखातीर तयारी करात।';

  @override
  String get quizResult => 'क्विझ निकाल';

  @override
  String get outstanding => 'उत्कृष्ट!';

  @override
  String get greatJob => 'खूब बरें!';

  @override
  String get goodEffort => 'बरो यत्न!';

  @override
  String get keepPracticing => 'सराव चालू दवरात!';

  @override
  String get dontGiveUp => 'हार मानूं नाकात!';

  @override
  String get shareMessage1 => 'म्हजो स्कोर';

  @override
  String get shareMessage2 => 'DevOps क्विझांत!';

  @override
  String get downloadApp => 'ॲप डाउनलोड करात:';

  @override
  String get score => 'स्कोर';

  @override
  String get points => 'गुण';

  @override
  String get percentage => 'टक्केवारी';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'पुराय स्कोर बोनस';

  @override
  String get shareScore => 'स्कोर वांटात';

  @override
  String get restartQuiz => 'क्विझ परत सुरू करात';

  @override
  String get backToCategories => 'वर्गांक परत वचात';

  @override
  String get greatProgress => 'खूब बरें! तुमची बरी प्रगती जाता।';

  @override
  String get practiceMore => 'बरो यत्न! चड सरावान स्कोर वाडटलो।';

  @override
  String get keepLearning => 'शिकत रावात आनी परत यत्न करात।';

  @override
  String get everyExpertStarted => 'दर एक जाणकार पयलीं शिकपी आशिल्लो। सराव चालू दवरात!';

  @override
  String get quizInstructions => 'क्विझ सुचोवण्यो';

  @override
  String get instruction1 => 'दर संचांत 25 प्रस्न आसात।';

  @override
  String get instruction2 => 'दर प्रस्नाक 30 सेकंद आसात।';

  @override
  String get instruction3 => 'पाचवो = बरो जाप।';

  @override
  String get instruction4 => 'तांबडो = चुकीचो जाप।';

  @override
  String get instruction5 => 'जाप बदलूंक मेळना।';

  @override
  String get instruction6 => 'फाटीं बटण फकत पळोवपाखातीर।';

  @override
  String get instruction7 => 'पुराय जाल्यार स्कोर दाखयतले।';

  @override
  String get instruction8 => 'दर योग्य जापाक 10 पॉइंट मेळटात।';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्ट कामगिरी! तुमी एक $expert आसात।';
  }

  @override
  String get selectCategory => 'वर्ग निवडात';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'संच निवडात';

  @override
  String get set => 'संच';

  @override
  String get questions => 'प्रस्न';

  @override
  String get noScoresYet => 'अजून स्कोर ना';

  @override
  String get pointsShort => 'गुण';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz कडेन येवकार';

  @override
  String hiUser(String name) {
    return 'नमस्कार $name';
  }

  @override
  String get challengeMode => 'आव्हान मोड';

  @override
  String get challenge => 'आव्हान';

  @override
  String get question => 'प्रस्न';

  @override
  String get reward => 'इनाम';

  @override
  String get survivalMode => 'सर्वायव्हल मोड';

  @override
  String get speedChallenge => 'वेगाचें आव्हान';

  @override
  String get dailyChallenge => 'दिसपट्टें आव्हान';

  @override
  String get ultimateChallenge => 'अंतिम आव्हान';

  @override
  String get timeLeft => 'उरिल्लो वेळ';

  @override
  String get completed => 'पुराय';

  @override
  String get locked => 'बंद';

  @override
  String get back => 'फाटीं';

  @override
  String get next => 'फुडें';

  @override
  String get submit => 'सादर करात';

  @override
  String get achievements => 'यश';

  @override
  String get streak => 'सलग दीस';

  @override
  String get days => 'दीस';

  @override
  String get tomorrowsReward => 'फाल्यांचें इनाम';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 म्हजो स्कोर $score/$totalQuestions #DevOps Quiz!\n\n🏆 गुण: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 टक्केवारी: $percentage%\n\nॲप डाउनलोड करात:';
  }

  @override
  String get gameUiSpinWheel => 'स्पिन चाक';

  @override
  String get gameUiSpinAndWinBonusPoints => 'फिरयात आनी बोनस पॉईंट जिखात';

  @override
  String get gameUiScratchCard => 'स्क्रॅच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'इनाम उक्तें करपाक खरडात';

  @override
  String get gameUiLuckySlots => 'लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स फिरयात आनी पॉईंट जिखात';

  @override
  String get gameUiMysteryDeal => 'मिस्ट्री डील';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'एक मिस्ट्री बॉक्स निवडात आनी जाप दियात';

  @override
  String get gameUiMemoryMatch => 'मेमरी मॅच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोड्यो जुळयात';

  @override
  String get gameUiWordGuess => 'उतराचो अंदाज';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'थरांमधल्यान DevOps उतरांचो अंदाज करात';

  @override
  String get gameUiFindWords => 'उतरां सोदात';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिडांत लिपिल्यो DevOps संज्ञा सोदात';

  @override
  String get gameUiSpotTheDifference => 'फरक वळखात';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दोन चित्रांतल्या दृश्यांमधले पांच बदल सोदात';

  @override
  String get gameUiJigsawPuzzle => 'जिगसॉ पझल';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'वांटून घेतिल्ल्यो HD जनावरां आनी निसर्गाच्यो चित्रां परत जुळयात';

  @override
  String get gameUiHighOrLow => 'चड वा उणें';

  @override
  String get gameUiBuildAStreak => 'सलग जैत मेळयात';

  @override
  String get gameUiTrueOrFalseBlitz => 'खरें वा खोटें ब्लिट्झ';

  @override
  String get gameUiQuickAnswerQuiz => 'जलद जापेची क्विझ';

  @override
  String get gameUiCommandMatch => 'कमांड मॅच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमांड्स तांच्या अर्थांक जुळयात';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'डिफॉल्ट पोर्ट्सांचो अंदाज करात';

  @override
  String get gameUiTicTacToe => 'टिक-टॅक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X शून्य आनी फुली कंप्युटर';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चार डिस्क सोडात';

  @override
  String get gameUiLudo => 'लुडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट्सा आड शर्यत करात';

  @override
  String get gameUiChess => 'बुद्धिबळ';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'बुद्धिबळाचो पट, कायदेशीर चाली, दोन खेळगी';

  @override
  String get gameUiSnakeAndLadders => 'साप आनी शिडी';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'फांसे पट, साप शिड्यो, दोन खेळगी';

  @override
  String get gameUiGames => 'खेळ 🎮';

  @override
  String get gameUiPlayEarn => 'खेळात आनी कमायात';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'खेळ खेळात आनी बोनस पॉईंट कमायात!';

  @override
  String get gameUiSearchGames => 'खेळ सोदात';

  @override
  String get gameUiClearSearch => 'सोद पुसून उडयात';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" ल्या जुळपाचो एकूय खेळ ना';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'फिरयात आनी बोनस पॉईंट जिखात.';

  @override
  String get gameUiScratchToRevealYourReward => 'तुमचें इनाम उक्तें करपाक खरडात.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स फिरयात आनी पॉईंट जिखात.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'एक मिस्ट्री बॉक्स निवडात आनी पॉईंट जिखपाक बरोबर जाप दियात.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'पॉईंट कमावपाक DevOps जोड्यो जुळयात.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 यत्नांनी DevOps संज्ञेचो अंदाज करात.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिडांत लिपिल्यो DevOps संज्ञा सोदात.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 थरांनी DevOps उतरां सोदपाक स्वाइप करात.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दोन चित्रांतल्या दृश्यांमधले पांच बदल सोदात.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'वांटून घेतिल्ल्यो HD जनावरां आनी निसर्गाच्यो चित्रां परत जुळयात.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'सलग जैत मेळयात आनी तुमचे पॉईंट सांबाळून दवरात.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'जलद जापांनी घड्याळाक हारयात.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'खरें वा खोटें ब्लिट्झ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमांड्स तीं कितें करतात तातूंत जुळयात.';

  @override
  String get gameUiCommandMatch670a76e => 'कमांड मॅच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जीवांनी डिफॉल्ट पोर्ट्सांचो अंदाज करात.';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'कंप्युटरा आड O/X खेळात.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जिखपाक चार डिस्क एके ओळींत सोडात.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'तुमच्यो सोंगट्यो तीन बॉट्सा आड धांवयात.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'कायदेशीर चालींनी स्थानीक दोन खेळग्यांचें बुद्धिबळ.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'कायदेशीर दोन खेळग्यांचो बुद्धिबळ सामनो खेळात.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दोन खेळग्यांचो फांसे पटाचो खेळ.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 मेरेन शर्यत. शिड्यो चडात आनी सापां पसून वांचात.';

  @override
  String get gameUiPlay => 'खेळात';

  @override
  String get gameUiWheelStopped => 'चाक थांबलें!';

  @override
  String get gameUiYourRewardIs => 'तुमचें इनाम आसा';

  @override
  String get gameUiPOINTS => 'पॉईंट';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'हें इनाम मेळोवपाक 1 क्विझ प्रस्नाक बरोबर जाप दियात.';

  @override
  String get gameUiWrongAnswerRewardLost => 'चुकीची जाप = इनाम गेलें.';

  @override
  String get gameUiAnswerQuestion => 'प्रस्नाक जाप दियात';

  @override
  String get gameUiSpinWheele449982 => '🎡 स्पिन चाक';

  @override
  String get gameUiDailySpin => 'दिसाची फिर';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'चाक फिरयात, मागीर तुमचें इनाम मेळोवपाक एका प्रस्नाक जाप दियात!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'तुमी आयजची फिर आदींच वापरल्ली आसा.';

  @override
  String get gameUiSpinning => 'फिरता...';

  @override
  String get gameUiSPINNOW => 'आतां फिरयात';

  @override
  String get gameUiCOMEBACKTOMORROW => 'फाल्यां परत येयात';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'आयजचें इनाम: ⭐ $value1 पॉईंट';
  }

  @override
  String get gameUiBackToGames => 'खेळांक परत';

  @override
  String get gameUiSPIN => 'फिरयात';

  @override
  String get gameUiRewardRevealed => 'इनाम उक्तें जालें!';

  @override
  String get gameUiYouFound => 'तुमकां मेळ्ळें';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्रॅच कार्ड';

  @override
  String get gameUiDailyScratch => 'दिसाची खरड';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'आयजचें इनाम उक्तें करपाक कार्ड खरडात!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'तुमी आयजचें स्क्रॅच कार्ड आदींच वापरलां.';

  @override
  String get gameUiAlreadyScratched => 'आदींच खरडलां';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'दुसऱ्या इनामाखातीर फाल्यां परत येयात.';

  @override
  String get gameUiYouRevealed => 'तुमी उक्तें केलें';

  @override
  String get gameUiSCRATCHHERE => 'हांगा खरडात  👆';

  @override
  String get gameUiJACKPOT777 => 'जॅकपॉट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'तुमचें इनाम';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स फिरयात, मागीर इनाम मेळोवपाक एका प्रस्नाक जाप दियात!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'तुमी आयज आदींच खेळ्ळां.';

  @override
  String get gameUiSPINNING => 'फिरता...';

  @override
  String get gameUiROLLNOW => 'आतां रोल करात';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जॅकपॉट! 777 गुण मेळटात!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'मिस्टरी डीलची स्थिती तपासूंक जायना: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'खोको $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 गुण';
  }

  @override
  String get gameUiStartQuestion => 'प्रस्न सुरू करात';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 मिस्टरी डील';

  @override
  String get gameUiMysteryDealCompleted => 'मिस्टरी डील पुराय जालो!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'तुवें आज मिस्टरी डील आदींच खेळ्ळां.';

  @override
  String get gameUiTodayYouWon => 'आज तुवें जिखिल्लें';

  @override
  String get gameUiTodaySReward => 'आयजें इनाम';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 गुण';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 गुण गेले';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'आनीक एका मिस्टरी खोक्या खातीर फाल्यां परत ये!';

  @override
  String get gameUiChooseYourMysteryBox => 'तुजो मिस्टरी खोको निवडात';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'दरेक खोक्यांत 10 आनी 1000 गुणां मदली एक लिपयिल्ली इनाम आसता.';

  @override
  String get gameUiPickOnlyOneBox => 'फकत एकूच खोको निवडात!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सगळ्यो $value1 पातळ्यो पुराय जाल्यो!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'पातळी $value1 पुराय जाली!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालींनी पुराय केलें.\nतुका $value2 गुण मेळ्ळे!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालींनी पुराय केलें.\nही पातळी आदींच पुराय जाल्ली.';
  }

  @override
  String get gameUiNextLevel => 'फुडली पातळी';

  @override
  String get gameUiDone => 'जालें';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमरी मॅच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सगळ्यो 100 पातळ्यो पुराय जाल्यो!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'तुवें दरेक मेमरी मॅच पातळी पुराय केली. बरें खेळ्ळात!';

  @override
  String get gameUiChooseLevel => 'पातळी निवडात';

  @override
  String gameUiMoves(String value1) {
    return 'चाली: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'पातळी $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोडयो';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'पातळी $value1 लक्षांत दवरात';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 जुळपी जोडयो सोदात';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'प्रकरण 1 · बिल्ड पायपलायन परत सुरू करात';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'प्रकरण 2 · क्लाउड प्लॅटफॉर्म वाडयात';

  @override
  String get gameUiChapter3ProtectProduction => 'प्रकरण 3 · प्रॉडक्शनाचें रक्षण करात';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'सादर करपाक उरिल्लीं सगळीं $value1 अक्षरां वापरात.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सगळ्यो पातळ्यो पुराय जाल्यो!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'पातळी $value1 पुराय जाली!';
  }

  @override
  String get gameUiTryAgain => 'परत यत्न करात';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'उतर $value1 आशिल्लें. तुका $value2 गुण मेळ्ळे.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'उतर $value1 आशिल्लें. $value3 सुचवणी उपरांत तुका $value2 गुण मेळ्ळे.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'उतर $value1 आशिल्लें. $value3 सुचवण्यो उपरांत तुका $value2 गुण मेळ्ळे.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'उतर $value1 आशिल्लें. पातळी $value2 अजून तुजी वाट पळयता.';
  }

  @override
  String get gameUiFinish => 'सोंपयात';

  @override
  String get gameUiNextLevel254fd73 => 'फुडली पातळी';

  @override
  String get gameUiRetryLevel => 'पातळी परत खेळात';

  @override
  String get gameUiHowToPlay => 'कशें खेळपाचें';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'दरेक पातळींत एक DevOps उतर आसता. पांच अक्षरां परस उणीं अक्षरां आशिल्लीं उतरां फुकट अक्षरां नासतना सुरू जातात; लांब उतरां एका अक्षरासयत सुरू जातात. जाप तयार करपाक अक्षर-रॅक वापरात आनी Enter दाबात. सुचवण्यो आनीक एक अक्षर उक्तें करतात आनी तुज्या शिल्लकेंतल्यान 20 गुण कमी करतात. दरेक पुराय जाल्ल्या पातळी खातीर 100 गुण मेळटात.';

  @override
  String get gameUiGotIt => 'कळ्ळें';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सगळ्यो $value1 पातळ्यो पुराय जाल्यो!';
  }

  @override
  String get gameUiEasy => 'सोंपें';

  @override
  String get gameUiMedium => 'मध्यम';

  @override
  String get gameUiHard => 'कठीण';

  @override
  String get gameUiHowToPlay13a6b22 => 'कशें खेळपाचें';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'पातळी $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'इनाम $value1 गुण · वापरिल्ल्यो सुचवण्यो $value2';
  }

  @override
  String get gameUiHint20Pts => 'सुचवणी · −20 गुण';

  @override
  String get gameUiEnter => 'एंटर';

  @override
  String get gameUiDelete => 'काडून उडयात';

  @override
  String get gameUiDragThroughAWord => 'उतरा वयल्यान ओडात';

  @override
  String get gameUiDragThroughEachWord => 'दरेक उतरा वयल्यान ओडात';

  @override
  String get gameUiReleaseToSelect => 'निवडपाक सोडात';

  @override
  String gameUiFound(String value1) {
    return '$value1 सांपडलें';
  }

  @override
  String get gameUiNoWordThere => 'थंय उतर ना';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 आदींच सांपडलें';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 सोदात';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सगळ्यो पातळ्यो पुराय जाल्यो!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'तुका दरेक उतर सांपडलें आनी $value1 गुण मेळ्ळे.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'तुका दरेक उतर सांपडलें. ही पातळी आदींच पुराय जाल्ली.';

  @override
  String get gameUiAll500LevelsComplete => 'सगळ्यो 500 पातळ्यो पुराय जाल्यो!';

  @override
  String get gameUiReviewLevels => 'पातळ्यो परतून पळयात';

  @override
  String gameUiLeft(String value1) {
    return '$value1 उरले';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 गुण';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगती सांठोवंक जाली ना. मेहरबानी करून परत यत्न करात.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'तुका $value1 गुण मेळ्ळे!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'तुवें हें चित्र आदींच पुराय केलां. परतून खेळल्यार चड गुण मेळनात.';

  @override
  String get gameUiYouCompletedEveryPicture => 'तुवें दरेक चित्र पुराय केलें!';

  @override
  String get gameUiLevels => 'पातळ्यो';

  @override
  String get gameUiPictureB => 'चित्र B';

  @override
  String get gameUiPictureA => 'चित्र A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'चित्र लोड जालें ना. परत यत्न करात';

  @override
  String get gameUiResetZoom => 'झूम परत सुरवातीक करात';

  @override
  String get gameUiZoomBothPictures => 'दोनूय चित्रां झूम करात';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'सुचवणी · दर सुचवणी $value1 गुण';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगती लोड जाली ना. परत यत्न करात';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'पातळी $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सगळे फरक सांपडले!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count फरक सोदात. दरेक फरक कोणत्याय चित्रांत टॅप करात.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'चुकलें: $value1  ·  सुचवण्यो: $value2 (−$value3 गुण)  ·  $value4 पातळ्यो पुराय';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'फुडली पातळी: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'कोडें $value1 पुराय जालें!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'चित्र $value1 चालींनी पुराय जालें. तुका $value2 गुण मेळ्ळे.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'चित्र $value1 चालींनी पुराय जालें.';
  }

  @override
  String get gameUiNextPuzzle => 'फुडलें कोडें';

  @override
  String get gameUiAllPuzzlesComplete => 'सगळीं कोडीं पुराय जालीं';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'कोड्याचो तुकडो $value1 / $value2, बरोबर थारायिल्लो';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'कोड्याचो तुकडो $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'कोडें निवडात';

  @override
  String get gameUiShufflePieces => 'तुकडे घुसळात';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'कोडेंचें चित्र लोड करूंक जालें ना.';

  @override
  String get gameUiPreviousPuzzle => 'फाटलें कोडें';

  @override
  String gameUiPuzzle(String value1) {
    return 'कोडें $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चाली';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'तुकडे बदलपाक ओडून व्हरात, वा दोन तुकड्यांचेर टॅप करात.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 कोडीं सोडयलीं  ·  दरेकल्या कोड्याक $value3 गुण';
  }

  @override
  String get gameUiGameOver => 'खेळ सोंपलो';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'अंक $value1 आशिल्लो.\nसलग: $value2\nतुवें $value3 गुण जोडले!\n\nनवी संद घेवपाक फाल्यां परत येयात!';
  }

  @override
  String get gameUiHigherOrLower => 'चड वा उणें 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'आयज आदींच खेळ्ळां!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'तूं $value1/$value2/$value3 दिसा खेळ्ळो.\n\nनवी सलग मालिका घडोवपाक फाल्यां परत येयात!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'तूं आयज आदींच खेळ्ळां.\n\nनवी संद घेवपाक फाल्यां परत येयात!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 सलग: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ गुण: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'फुडलो अंक चड आसतलो वा उणो?';

  @override
  String get gameUiLower => 'उणें';

  @override
  String get gameUiHigher => 'चड';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'खरें वा खोटें ब्लिट्झ ⚡';

  @override
  String get gameUiTimeSUp => 'वेळ सोंपलो!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'बरीं जाप: $value1\nसगळ्यांत बरी सलग मालिका: $value2\n$value3तुवें $value4 गुण जोडले!\n\nनव्या फेरीक फाल्यां परत येयात!';
  }

  @override
  String get gameUiStreakBonus20 => 'सलग बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'दाखयल्ली जाप खरी का खोटी?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 वर्गांनी $value1 प्रस्न';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'तुका $value1 सेकंद आसात. दरेक बरी जाप $value2 गुण दिता. चुकीची जाप $value3 सेकंद उणीं करता. सलग 5 बऱ्यो जापो दिल्यार +20 बोनस मेळटा.';
  }

  @override
  String get gameUiRoundTimer => 'फेरीचो टायमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सेकंद';
  }

  @override
  String get gameUiStart => 'सुरू करात';

  @override
  String get gameUiTrue => 'खरें';

  @override
  String get gameUiFalse => 'खोटें';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमांड जुळणी 🔗';

  @override
  String get gameUiAllMatched => 'सगळें जुळ्ळें!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'चुकी: $value1\nतुवें $value2 गुण जोडले!\n\nनव्या कमांडांक फाल्यां परत येयात!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'फेरी $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'एका कमांडाचेर टॅप करात, मागीर ताचेर अर्थाचेर टॅप करात.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'आतां जुळपी अर्थाचेर टॅप करात.';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जीव सोंपले';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'बरीं जाप: $value1\nतुवें $value2 गुण जोडले!\n\nनव्या फेरीक फाल्यां परत येयात!';
  }

  @override
  String get gameUiYouEarned10Points => 'तुवें 10 गुण जोडले!';

  @override
  String get gameUiYouWin => 'तूं जिखलो!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जिखलो!';
  }

  @override
  String get gameUiXWins => 'X जिखलो!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जिखलो!';
  }

  @override
  String get gameUiComputerWins => 'कॉम्प्युटर जिखलो';

  @override
  String get gameUiOWins => 'O जिखलो!';

  @override
  String get gameUiPlayer2OWins => 'खेळगो 2 (O) जिखलो!';

  @override
  String get gameUiItSADraw => 'बरोबरी जाली';

  @override
  String get gameUiYourTurn => 'तुजी पाळी';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 हाची पाळी';
  }

  @override
  String get gameUiComputerIsThinking => 'कॉम्प्युटर विचार करता';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खेळगो $value1 हाणें चाल करची';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 हाणें चाल करची';
  }

  @override
  String get gameUiPlayer2ToMove => 'खेळगो 2 हाणें चाल करची';

  @override
  String get gameUiNewRound => 'नवी फेरी';

  @override
  String get gameUiVsComputer => 'कॉम्प्युटर आड';

  @override
  String get gameUi2Players => '2 खेळगे';

  @override
  String get gameUiYou => 'तूं';

  @override
  String get gameUiDraws => 'बरोबरी';

  @override
  String get gameUiPlayer2 => 'खेळगो 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'घर $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'परत खेळात';

  @override
  String get gameUiConnectFourWin20Points => 'कनेक्ट फोर जिणें: 20 गुण!';

  @override
  String get gameUiBotWins => 'बॉट जिखलो!';

  @override
  String get gameUiRed => 'तांबडो';

  @override
  String get gameUiYellow => 'पिवळो';

  @override
  String get gameUiBoardFullDraw => 'पाट भरलो — बरोबरी';

  @override
  String get gameUiBotIsThinking => 'बॉट विचार करता';

  @override
  String get gameUiBotTurn => 'बॉटाची पाळी';

  @override
  String get gameUiNewGame => 'नवो खेळ';

  @override
  String get gameUiVsBot => 'बॉट आड';

  @override
  String get gameUi2Player => '2 खेळगे';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बॉटा आड खेळात · चकती सोडपाक स्तंभाचेर टॅप करात';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दोन खेळगे · चकती सोडपाक स्तंभाचेर टॅप करात';

  @override
  String gameUiColumn(String value1) {
    return 'स्तंभ $value1';
  }

  @override
  String get gameUiYouRed => 'तूं · तांबडो';

  @override
  String get gameUiRedPlayer1 => 'तांबडो · खेळगो 1';

  @override
  String get gameUiBotYellow => 'बॉट · पिवळो';

  @override
  String get gameUiYellowPlayer2 => 'पिवळो · खेळगो 2';

  @override
  String get gameUiLudoMatchStats => 'लुडो सामन्याची आकडेवारी';

  @override
  String get gameUiNoCompletedMatchesYet => 'अजून सामने पुरे जाल्ले ना.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेळ्ळे $value1  ·  जिखले $value2  ·  हारले $value3';
  }

  @override
  String get gameUiClose => 'बंद करात';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लुडो विजेतो! तुवें 50 गुण जोडले.';

  @override
  String get gameUiNewLudoGame => 'नवो लुडो खेळ';

  @override
  String get gameUiBotOpponents => 'बॉट विरोधक';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नवो सामनो सुरू केल्यार तुजो सेव्ह केल्लो खेळ बदलतलो.';

  @override
  String get gameUiCancel => 'रद्द करात';

  @override
  String get gameUiStartGame => 'खेळ सुरू करात';

  @override
  String get gameUiPlayerColours => 'खेळग्यांचे रंग';

  @override
  String get gameUiApply => 'लागू करात';

  @override
  String get gameUiMatchStats => 'सामन्याची आकडेवारी';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेटान जिखलो';
  }

  @override
  String get gameUiBlack => 'काळो';

  @override
  String get gameUiWhite => 'धवो';

  @override
  String get gameUiComputerWinsByCheckmate => 'कॉम्प्युटर चेकमेटान जिखलो';

  @override
  String get gameUiYouWinByCheckmate => 'तूं चेकमेटान जिखलो';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेटान बरोबरी';

  @override
  String get gameUiDraw => 'बरोबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · चेक';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'चेकमेट! तुमकां 50 पॉईंट मेळ्ळे.';

  @override
  String get gameUiStartANewGame => 'नवो खेळ सुरू करचो?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खेळगड्यांचो मोड बदलल्यार सेव्ह केल्लो सामनो बदलतलो.';

  @override
  String get gameUiComputer => 'कॉम्प्युटर';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · धवो / खेळगडी 2 · काळो';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'तुमी धवे · कॉम्प्युटर काळो';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (धवो) · कॉम्प्युटर (काळो)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'तुमी काळे · कॉम्प्युटर धवो';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (काळो) · कॉम्प्युटर (धवो)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 पयली फांसो उडयता';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 परत फांसो उडयता';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 फांसो उडोवपाची पाळी';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सर्प आनी शिडी जैत: 100 पॉईंट!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खेळगडी बदलल्यार सेव्ह केल्लो खेळ बदलतलो.';

  @override
  String get gameUiStartANewLevel => 'नवो लेवल सुरू करचो?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'लेवल बदलल्यार सेव्ह केल्लो खेळ बदलतलो.';

  @override
  String get gameUiChangeLevel => 'लेवल बदलात';

  @override
  String get gameUiPlayers => 'खेळगडी';

  @override
  String get gameUiPlayAgainstBot => 'बॉटा आड खेळात';

  @override
  String get gameUi3Players => '3 खेळगडी';

  @override
  String get gameUi4Players => '4 खेळगडी';

  @override
  String get gameUiLevel1709305 => 'लेवल';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'लेवल $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 खेळगडी · लेवल $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · फांसो उडयात';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 $value2 वयल्यार';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रस्न लोड करपाक जालें ना: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'बरोबर जाप!';

  @override
  String get gameUiWrongAnswer => 'चुकीची जाप';

  @override
  String get gameUiYouClaimedYourReward => 'तुमी तुमचें इनाम घेतलें!';

  @override
  String get gameUiAddedToYourTotalPoints => 'तुमच्या एकूण पॉईंटांक जोडलें.';

  @override
  String get gameUiTheCorrectAnswerWas => 'बरोबर जाप आशिल्ली:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 पॉईंटांचें इनाम गेलें.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'तुमचे सध्याचे पॉईंट वजा केले ना.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'फाल्यां परत येयात आनी परत यत्न करात.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रस्न लोड करपाक जालें ना.';

  @override
  String get gameUiYourReward677fa6e => 'तुमचें इनाम';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 पॉईंट';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'तें घेवपाक बरोबर जाप दिवची!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'आनीक एका फेरीखातीर फाल्यां परत येयात.';

  @override
  String get gameUiGreen => 'हिरवो';

  @override
  String get gameUiBlue => 'निळो';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 विचार करता';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: एक सोंगटी वेंचात';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: फांसो उडयात';
  }

  @override
  String gameUiDice(String value1) {
    return 'फांसो $value1';
  }

  @override
  String get gameUiRollDice => 'फांसो उडयात';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 सोंगटी $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'खेळगो $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'बॉट $value1';
  }

  @override
  String get gameUiBot => 'बॉट';

  @override
  String get gameUiHintInsufficientPoints => 'सुगावो वापरपाक तुमकां 20 गुण जाय.';

  @override
  String get gameUiHintPurchaseFailed => 'सुगावो घेवपाक जालो ना. कृपा करून परतुन यत्न करात.';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'राणी';

  @override
  String get gameUiChessRook => 'हत्ती';

  @override
  String get gameUiChessBishop => 'उंट';

  @override
  String get gameUiChessKnight => 'घोडो';

  @override
  String get gameUiChessPawn => 'प्यादो';

  @override
  String get gameUiChessEmpty => 'रिकामें';

  @override
  String get gameSceneLampAndFlowers => 'दिवो आनी फुलां';

  @override
  String get gameSceneGardenFriends => 'बागेंतले इश्ट';

  @override
  String get gameSceneUnderwaterExplorers => 'उदकां सकयल शोध घेवपी';

  @override
  String get gameSceneOceanOrca => 'दर्याचो ओर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'कुरणांतलो कोल्हो';

  @override
  String get gameSceneYellowSubmarine => 'पिवळी पाणबुडी';

  @override
  String get gameSceneTurkeyInTheClearing => 'मोकळ्या जागेंतलो टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारी उदकाचें तळें';

  @override
  String get gameSceneJungleCompanions => 'रानांतले सोबती';

  @override
  String get gameSceneGoldenPuppyGarden => 'सोनेरी पिलांचो बाग';

  @override
  String get gameSceneSeaTurtleReef => 'दर्याचो कासव खडप';

  @override
  String get gameSceneCoralReefFriends => 'प्रवाळ खडपांतले इश्ट';

  @override
  String get gameSceneSharedClownfish => 'वांटिल्लो क्लाउनफिश';

  @override
  String get gameSceneLittleDinosaur => 'ल्हान डायनासोर';

  @override
  String get gameSceneSafariCompanions => 'सफारी सोबती';

  @override
  String get gameSceneSwirlingFlowers => 'घुमपी फुलां';

  @override
  String get gameSceneGardenKitten => 'बागेंतलें मांजराचें पिल्लू';

  @override
  String get gameSceneBlueOcean => 'निळो दर्यो';

  @override
  String get gameSceneCastlePrincess => 'किल्ल्यांतली राजकुंवरी';

  @override
  String get gameSceneRedCar => 'तांबडी गाडी';

  @override
  String get gameSceneGardenPuppy => 'बागेंतलें कुत्र्याचें पिल्लू';

  @override
  String get gameSceneSpaceExplorer => 'अंतराळ शोधक';

  @override
  String get gameSceneEnchantedReadingForest => 'जादूचें वाचन रान';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनंत चक्र';

  @override
  String get gameSceneAnsible => 'Ansible (अँसिबल)';

  @override
  String get gameSceneAws => 'AWS (एडब्ल्यूएस)';

  @override
  String get gameSceneAzure => 'Azure (अझूर)';

  @override
  String get gameSceneBashScripting => 'Bash (बॅश) स्क्रिप्टिंग';

  @override
  String get gameSceneDocker => 'Docker (डॉकर)';

  @override
  String get gameSceneGcp => 'GCP (जीसीपी)';

  @override
  String get gameSceneGit => 'Git (गिट)';

  @override
  String get gameSceneHybridCloud => 'हायब्रीड क्लाउड';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud (आयबीएम क्लाउड)';

  @override
  String get gameSceneJavascript => 'JavaScript (जावास्क्रिप्ट)';

  @override
  String get gameSceneJenkins => 'Jenkins (जेनकिन्स)';

  @override
  String get gameSceneKubernetes => 'Kubernetes (कुबर्नेटीस)';

  @override
  String get gameSceneLinux => 'Linux (लिनक्स)';

  @override
  String get gameSceneMultiCloud => 'मल्टी क्लाउड';

  @override
  String get gameSceneNetworking => 'नेटवर्किंग';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud (ओरॅकल क्लाउड)';

  @override
  String get gameScenePerl => 'Perl (पर्ल)';

  @override
  String get gameScenePowershell => 'PowerShell (पावरशेल)';

  @override
  String get gameScenePython => 'Python (पायथन)';

  @override
  String get gameSceneRuby => 'Ruby (रुबी)';

  @override
  String get gameSceneTerraform => 'Terraform (टेराफॉर्म)';

  @override
  String get gameSceneWinterFestivalFair => 'हिंवाळ्यांतली परब जत्रा';

  @override
  String get gameSceneArmoredHeroCloseUp => 'चिलखती नायकाचें लागींचें दृश्य';

  @override
  String get gameSceneArmoredHeroInCrimson => 'किरमिजी रंगांतलो चिलखती नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गाड प्लुमेरिया फुलां';

  @override
  String get gameSceneMangroveBoardwalk => 'खारफुटींतली फळयांची वाट';

  @override
  String get gameSceneTropicalPalmReflections => 'उश्ण कटिबंधांतल्या माडांचें प्रतिबिंब';

  @override
  String get gameSceneMaskedFigureInShadow => 'सावळेंत मुखवटो घाल्लो आकार';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सुर्यास्ताक विजेचो सोबती';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक आनी उजो सोडपी ड्रॅगन';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्नां जडयिल्लो कुस्तीचो मुखवटो';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'तांबड्या कुंचल्याच्या फटकाऱ्यांतलो पैलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुस्ती विजेत्याची सलामी';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरेंतली सकाळ';

  @override
  String get gameSceneGreenhousePottingBench => 'हरितगृहांतलो कुंड्यांचो बाक';

  @override
  String get gameSceneHarborFishingBoat => 'बंदरांतली मासळी धरपी नाव';

  @override
  String get gameSceneAtticObservatory => 'माळ्यावयली वेधशाळा';

  @override
  String get gameSceneToyMakerSWorkshop => 'खेळणीं तयार करपाऱ्याची कार्यशाळा';

  @override
  String get gameSceneWoodlandCampsite => 'रानांतली तांबडी जागा';

  @override
  String get gameSceneAfternoonMusicRoom => 'दनपारचो संगीत खोलो';

  @override
  String get gameSceneSeasideIceCreamStand => 'दर्याकांठचें आइस्क्रीम दुकान';

  @override
  String get gameSceneLibraryReadingNook => 'ग्रंथालयांतलो वाचन कोन';

  @override
  String get gameSceneSewingStudio => 'शिवणकामाची कार्यशाळा';

  @override
  String get gameSceneFruitMarket => 'फळांची बाजार';

  @override
  String get gameSceneKoiCourtyard => 'कोय माशांचें अंगण';

  @override
  String get gameSceneArtistSAtelier => 'कलाकाराचो स्टुडिओ';

  @override
  String get gameSceneMountainRailway => 'दोंगरांतली रेल्वे';

  @override
  String get gameSceneCountryKitchen => 'गांवाकडलें स्वयंपाकघर';

  @override
  String get gameScenePotteryWorkshop => 'मातयेच्या भांड्यांची कार्यशाळा';

  @override
  String get gameSceneBeachPicnic => 'दर्यावेळार सहल';

  @override
  String get gameSceneFlowerShop => 'फुलांचें दुकान';

  @override
  String get gameSceneClockmakerSWorkshop => 'घडयाळ तयार करपाऱ्याची कार्यशाळा';

  @override
  String get gameSceneRainyCafeTerrace => 'पावसाळी कॅफेची गच्ची';

  @override
  String get gameSceneCastleHerbGarden => 'किल्ल्यांतलो औशध वनस्पतींचो बाग';

  @override
  String get gameSceneClassroomArtCorner => 'वर्गांतलो कला कोन';

  @override
  String get gameSceneAquariumShop => 'मत्स्यालयाचें दुकान';

  @override
  String get gameSceneAutumnLeafCollection => 'शरद ऋतूंतल्या पानांचो संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चंद्राच्या सकयल एकलें झाड';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'फांटेयेर शरद ऋतूंतलें फूल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हिरव्या पानांमदलो कोल्हो';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कमळांनी भरिल्ल्या तळ्यावयली नाव';

  @override
  String get gameSceneDewDropsOnALeaf => 'पानाचेर दंवाचे थेंब';

  @override
  String get gameSceneStagInATurquoiseLake => 'फिक्या निळ्या तळ्यांतलो हरण';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'नारंगी चंद्राच्या सकयल सायकल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'खोऱ्यावयलो धवो वाघ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'निळ्या उदकांत दोन झाडां';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'इमानी काणाच्या कुशीक मासळी धरप';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'दोंगरांतल्या तळ्याच्या कुशीक लिलीची फुलां';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदीकाठार हरीण';

  @override
  String get gameSceneTropicalHutAtSunset => 'सुर्यास्तावेळार उष्ण कटिबंधांतली झोंपडी';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'आल्पाइन खोऱ्याचेर नजर दवरपी कोल्हो';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मंत्रमुग्ध वनराये भितल्यान दिसपी सुर्यास्त';

  @override
  String get learningControlTitle => 'DevOps शिकात';

  @override
  String get learningControlAllCategories => 'सगळ्यो वर्गवारी';

  @override
  String get learningControlSearchCards => 'कार्ड सोदात';

  @override
  String get learningControlClearSearch => 'सोद पुसात';

  @override
  String get learningControlCategory => 'वर्गवारी';

  @override
  String get learningControlShowAll => 'सगळे कार्ड दाखयात';

  @override
  String learningControlShowSaved(int count) {
    return 'जतन केल्ले कार्ड दाखयात ($count)';
  }

  @override
  String get learningControlShuffleOff => 'शफल बंद करात';

  @override
  String get learningControlShuffleOn => 'कार्ड शफल करात';

  @override
  String get learningControlAutoOff => 'ऑटो स्वाईप बंद करात';

  @override
  String get learningControlAutoOn => 'दर 10 सेकंदांनी ऑटो स्वाईप';

  @override
  String get learningControlNoSaved => 'अजून कसलेच कार्ड जतन केल्लें ना';

  @override
  String get learningControlNoMatches => 'जुळपी कार्ड ना';

  @override
  String get learningControlResetFilters => 'फिल्टर परत सुरवेक करात';

  @override
  String get learningControlPrevious => 'फाटलें';

  @override
  String get learningControlNext => 'फुडलें';

  @override
  String get learningControlProgress => 'प्रगती';

  @override
  String get learningControlRemoveSaved => 'जतन केल्ल्यांतल्यान काडून उडयात';

  @override
  String get learningControlSaveCard => 'कार्ड जतन करात';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कॉपी करात';

  @override
  String get learningControlExampleCopied => 'उदाहरण कॉपी केलें';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'लेवल $value1 पुराय जाले';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'लेवल $value1 खेळ';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलॉक करपाक लेवल $value1 पुराय करात';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दिसाचो लॉगिन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'परत आयिल्ल्याबद्दल उपकार!';

  @override
  String get sharedDialogDailyRewardAdded => 'तुमचें दिसाचें इनाम तुमच्या एकूण गुणांक जोडलां.';

  @override
  String get sharedDialogAwesome => 'विलक्षण!';

  @override
  String get accountWelcomeGuest => 'सोयरो';

  @override
  String get accountWelcomeGuestUser => 'सोयरो वापरपी';

  @override
  String get accountWelcomeUser => 'वापरपी';

  @override
  String get accountWelcomePlayingAsGuest => 'सोयरो म्हणून खेळटा';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खातें जोडात';

  @override
  String get accountWelcomeGoogleConnected => 'Google खातें येसस्वीपणान जोडलां! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द केलां.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'जोडपाक अपेस आयलें: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट करात';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट करपाचें?';

  @override
  String get accountWelcomeSignOutMessage => 'तुमकां खरेंच साइन आउट करपाचें आसा? तुमची साठयल्ली प्रगती मेळोवपाक तुमकां परतून साइन इन करचें पडटलें.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट अपेस आयलें: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ॲप डेटा रिसेट करपाचो?';

  @override
  String get accountWelcomeResetAppMessage => 'हाका लागून तुमचे सगळे गूण, स्ट्रीक, गेम इतिहास आनी सेटिंग्ज कायमचे ना जातले. तुमकां साइन आउट करतले आनी सुरवातीच्या पड्ड्यार परतून धाडटले. हें परतून बदलूंक मेळना.';

  @override
  String get accountWelcomeResetEverything => 'सगळें रिसेट करात';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रिसेट करपाक अपेस आयलें: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द करात';

  @override
  String get accountWelcomeResetAppData => 'ॲप डेटा रिसेट करात';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सगळे गूण, स्ट्रीक आनी सेटिंग्ज निवळ करात';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ॲप';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अणकार अजून उपलब्ध ना';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google वरवीं चालू दवरात';

  @override
  String get accountWelcomeSigningIn => 'साइन इन जाता...';

  @override
  String get accountWelcomeOr => 'वा';

  @override
  String get accountWelcomeContinueAsGuest => 'सोयरो म्हणून चालू दवरात';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'तुमी मागीर तुमच्या प्रोफायलांतल्यान साइन इन करूंक शकतात.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'तुमी सोयरो म्हणून सुरवात करून मागीर साइन इन करूंक शकतात.';

  @override
  String get accountWelcomeGreetingGuest => 'येवकार';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'येवकार, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूर्ण जालें, पूण खंयचेंय वापरपी खातें परत मेळ्ळें ना.';

  @override
  String get accountWelcomeErrorEmailExists => 'ह्या ईमेलाचेर पयलींच दुसरी साइन-इन पद्दत वापरपी खातें आसा.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'हें Google खातें पयलींच दुसऱ्या खात्याकडेन जोडिल्लें आसा.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण प्रमाणपत्र अमान्य आसा वा ताची मुदत सोंपल्या.';

  @override
  String get accountWelcomeErrorUserDisabled => 'हें खातें बंद केलां.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन सद्या चालू करपांत येवंक ना.';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क चूक. उपकार करून तुमचें इंटरनेट कनेक्शन तपासात आनी परतून यत्न करात.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'खूब साइन-इन यत्न जाले. उपकार करून वाट पळयात आनी परतून यत्न करात.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'अदीक चुकीची म्हायती ना.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन अपेस आयलें.\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन चूक:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'सोयरो म्हणून चालू दवरपाक जमना. उपकार करून परतून यत्न करात.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन बेगीनूच उपलब्ध जातलें.';

  @override
  String get accountWelcomeLoginTagline => 'शिकात • सराव करात • सर्त करात • जोडयात';

  @override
  String get accountWelcomeCountryRegion => 'देश / वाठार';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / वाठार: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश सोदात';

  @override
  String get accountWelcomeCountryNotSelected => 'वेंचूंक ना';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz कित्याक?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ सराव प्रस्न';

  @override
  String get accountWelcomeFeatureLanguages => 'भोव-भाशीक आदार';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रीक आनी लीडरबोर्ड';

  @override
  String get accountWelcomeFeatureGames => 'खेळ आनी आव्हानां';

  @override
  String get accountWelcomeFeatureCloud => 'क्लाउड आनी DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस आनी इनामां';

  @override
  String get accountWelcomePracticeOnTheGo => 'खंयसरूय सराव करात';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ॲप इन्स्टॉल करात आनी खंयसरूय ऑफलायन शिकात.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play चेर मेळयात';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिसांची सलग मालिका';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिसांची सलग मालिका सांबाळ.';
  }

  @override
  String get achLocYearStreakTitle => '1 वर्साची सलग मालिका';

  @override
  String get achLocFirstQuizTitle => 'पयली क्विझ';

  @override
  String get achLocFirstQuizDescription => 'तुजी पयली क्विझ पुराय कर.';

  @override
  String get achLocQuiz10Title => 'क्विझ एक्सप्लोरर';

  @override
  String get achLocQuiz10Description => '10 क्विझ पुराय कर.';

  @override
  String get achLocPoints1000Title => '1000 गुण';

  @override
  String get achLocPoints1000Description => 'क्विझांत एकूण 1000 गुण मेळय.';

  @override
  String get achLocPerfectScoreTitle => 'परिपूर्ण गुण';

  @override
  String get achLocPerfectScoreDescription => 'खंयच्याय क्विझांत 100% गुण मेळय.';

  @override
  String get achLocQuiz25Title => 'क्विझ उत्साही';

  @override
  String get achLocQuiz25Description => '25 क्विझ पुराय कर.';

  @override
  String get achLocQuiz50Title => 'क्विझ मास्टर';

  @override
  String get achLocQuiz50Description => '50 क्विझ पुराय कर.';

  @override
  String get achLocQuiz100Title => 'सेंच्युरी क्लब';

  @override
  String get achLocQuiz100Description => '100 क्विझ पुराय कर.';

  @override
  String get achLocQuiz250Title => 'क्विझ लेजंड';

  @override
  String get achLocQuiz250Description => '250 क्विझ पुराय कर.';

  @override
  String get achLocPoints5000Title => '5,000 गुण';

  @override
  String get achLocPoints5000Description => 'एकूण 5,000 गुण मेळय.';

  @override
  String get achLocPoints10000Title => '10,000 गुण';

  @override
  String get achLocPoints10000Description => 'एकूण 10,000 गुण मेळय.';

  @override
  String get achLocPoints50000Title => '50,000 गुण';

  @override
  String get achLocPoints50000Description => 'एकूण 50,000 गुण मेळय.';

  @override
  String get achLocPoints100000Title => '100,000 गुण';

  @override
  String get achLocPoints100000Description => 'एकूण 100,000 गुण मेळय.';

  @override
  String get achLocDaily1Title => 'दिसाळें सुरवातदार';

  @override
  String get achLocDaily1Description => 'तुजी पयली दिसाळी क्विझ पुराय कर.';

  @override
  String get achLocDaily7Title => 'दिसाळी सवय';

  @override
  String get achLocDaily7Description => '7 दिसाळी क्विझ पुराय कर.';

  @override
  String get achLocDaily30Title => 'दिसाळो चॅम्पियन';

  @override
  String get achLocDaily30Description => '30 दिसाळी क्विझ पुराय कर.';

  @override
  String get achLocSets5Title => 'सेट सुरवातदार';

  @override
  String get achLocSets5Description => '5 क्विझ सेट संपय.';

  @override
  String get achLocSets25Title => 'सेट संग्राहक';

  @override
  String get achLocSets25Description => '25 क्विझ सेट संपय.';

  @override
  String get achLocSets50Title => 'सेट मास्टर';

  @override
  String get achLocSets50Description => '50 क्विझ सेट संपय.';

  @override
  String get achLocSets100Title => 'सेट लेजंड';

  @override
  String get achLocSets100Description => '100 क्विझ सेट संपय.';

  @override
  String get achLocCert1Title => 'पयलें प्रमाणपत्र';

  @override
  String get achLocCert1Description => 'तुजें पयलें वर्ग प्रमाणपत्र मेळय.';

  @override
  String get achLocCert5Title => 'प्रमाणित प्रो';

  @override
  String get achLocCert5Description => '5 वर्ग प्रमाणपत्रां मेळय.';

  @override
  String get achLocCert21Title => 'पुरायपणान प्रमाणित';

  @override
  String get achLocCert21Description => 'सगळ्या 21 वर्गांनी प्रमाणपत्र मेळय.';

  @override
  String get achLocThemeFreeValentinesWeek => 'दर वर्सा फेब्रुवारी 7-14 फुकट';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'दर वर्सा मार्च 8-15 फुकट';

  @override
  String get achLocThemeLight => 'उजवाड';

  @override
  String get achLocThemeDark => 'काळोख';

  @override
  String get achLocThemeSakura => 'साकुरा';

  @override
  String get achLocThemeSunset => 'सनसेट';

  @override
  String get achLocThemeCoffee => 'कॉफी';

  @override
  String get achLocThemeTea => 'चा';

  @override
  String get achLocThemeOcean => 'ओशन';

  @override
  String get achLocThemeSolarFlare => 'सोलर फ्लेअर';

  @override
  String get achLocThemeForest => 'फॉरेस्ट';

  @override
  String get achLocThemeAurora => 'ऑरोरा';

  @override
  String get achLocThemeMatrix => 'मॅट्रिक्स';

  @override
  String get achLocThemeCyberPurple => 'सायबर पर्पल';

  @override
  String get achLocThemeInferno => 'इन्फर्नो';

  @override
  String get achLocThemeMidnight => 'मिडनाईट';

  @override
  String get achLocThemeDarkGrey => 'गाढ ग्रे';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'वॅलेंटाईन डे';

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
  String get achLocThemeThor => 'थोर';

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
  String get achLocThemeCaptainMarvel => 'कॅप्टन मार्व्हल';

  @override
  String get achLocThemeDoctorStrange => 'डॉक्टर स्ट्रेंज';

  @override
  String get achLocThemeAvengers => 'अॅव्हेंजर्स';

  @override
  String get achLocThemeBatman => 'बॅटमॅन';

  @override
  String get achLocThemeSuperman => 'सुपरमॅन';

  @override
  String get achLocThemeWonderWoman => 'वंडर वुमन';

  @override
  String get achLocThemeFlash => 'फ्लॅश';

  @override
  String get achLocThemeAquaman => 'अक्वामॅन';

  @override
  String get achLocThemeGreenLantern => 'ग्रीन लँटर्न';

  @override
  String get achLocThemeCyborg => 'सायबॉर्ग';

  @override
  String get achLocThemeSupergirl => 'सुपरगर्ल';

  @override
  String get achLocThemeDc => 'DC हिरोज';

  @override
  String get achLocThemeRainbow => 'इंद्रधनुष';

  @override
  String get achLocThemeDiamond => 'हिरो';

  @override
  String get achLocThemeLegendary => 'दंतकथेंतलो';

  @override
  String get gameHintCmd001LsLa => 'सगळ्यो फायली तपशिलांसयत दाखय';

  @override
  String get gameHintCmd002Grep => 'नमुन्याच्या आदारान मजकूर सोद';

  @override
  String get gameHintCmd003Chmod => 'फायलीच्यो परवानग्यो बदल';

  @override
  String get gameHintCmd004DfH => 'उरिल्ली डिस्क जागा दाखय';

  @override
  String get gameHintCmd005TailF => 'वाडपी लॉग फायल फाटोफाट पळय';

  @override
  String get gameHintCmd006PsAux => 'चालू आशिल्ल्यो प्रोसेस्स दाखय';

  @override
  String get gameHintCmd007GitClone => 'रिमोट रिपॉझिटरीची प्रत काड';

  @override
  String get gameHintCmd008GitStash => 'कमिट ना केल्ले बदल कडेन दवर';

  @override
  String get gameHintCmd009GitRebase => 'कमिट नव्या बेसार परत लाव';

  @override
  String get gameHintCmd010GitBlame => 'दर वळींत कोणें बदल केलो तें दाखय';

  @override
  String get gameHintCmd011DockerPs => 'चालू आशिल्ले कंटेनर दाखय';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile थावन इमेज तयार कर';

  @override
  String get gameHintCmd013DockerLogs => 'कंटेनरची आउटपुट दाखय';

  @override
  String get gameHintCmd014DockerExec => 'कंटेनराभितर कमांड चलय';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेसांतले पॉड दाखय';

  @override
  String get gameHintCmd016KubectlApply => 'फायलींतल्यान रिसोर्सीस तयार कर';

  @override
  String get gameHintCmd017KubectlDescribe => 'रिसोर्साची तपशीलवार म्हायती दाखय';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिकांची संख्या बदल';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोव्हायडर डाउनलोड करून सेटअप कर';

  @override
  String get gameHintCmd020TerraformPlan => 'इन्फ्रास्ट्रक्चरच्या बदलांचें पूर्वावलोकन कर';

  @override
  String get gameHintCmd021TerraformApply => 'इन्फ्रास्ट्रक्चर तयार कर वा अपडेट कर';

  @override
  String get gameHintCmd022TerraformDestroy => 'व्यवस्थापीत इन्फ्रास्ट्रक्चर काडून उडय';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ऑटोमेशन प्लेबुक चलय';

  @override
  String get gameHintCmd024Ping => 'ICMP वरवीं पावपाची तपासणी कर';

  @override
  String get gameHintCmd025Traceroute => 'होस्टाक वचपाचो मार्ग दाखय';

  @override
  String get gameHintCmd026Curl => 'URL वयल्यान डेटा हाड';

  @override
  String get gameHintCmd027Ssh => 'रिमोट मशिनांत सुरक्षीतपणान लॉग इन कर';

  @override
  String get gameHintCmd028CrontabE => 'नेमिल्लीं कामां संपादीत कर';

  @override
  String get gameHintCmd029SystemctlStatus => 'सर्विसची स्थिती तपास';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes वयर चार्ट तैनात कर';

  @override
  String get gameHintWord001Git => 'सोर्स कोडांतले बदल मागोवो घेता.';

  @override
  String get gameHintWord002Aws => 'Amazon चें क्लाउड प्लॅटफॉर्म.';

  @override
  String get gameHintWord003Api => 'सॉफ्टवेअर यंत्रणांक एकामेकांकडेन संवाद सादपाक दिवपी करार.';

  @override
  String get gameHintWord004Dns => 'डोमेन नांवांक IP पत्त्यांत रुपांतरीत करता.';

  @override
  String get gameHintWord005Cli => 'कमांड चलोवपा खातीर मजकूरावयलो इंटरफेस.';

  @override
  String get gameHintWord006Cpu => 'सुचोवण्यो चलोवपी प्रोसेसर.';

  @override
  String get gameHintWord007Ram => 'चालू प्रोग्रामांनी वापरिल्ली तात्पुरती मेमरी.';

  @override
  String get gameHintWord008Ssh => 'रिमोट शेल प्रवेशा खातीर सुरक्षीत प्रोटोकॉल.';

  @override
  String get gameHintWord009Yaml => 'मनशांक वाचपाक सोपो डेटा सिरियलायझेशन स्वरूप.';

  @override
  String get gameHintWord010Linux => 'मुक्त-स्रोत ऑपरेटिंग सिस्टीम कर्नल आनी कुटुंब.';

  @override
  String get gameHintWord011Bash => 'लोकप्रिय Unix कमांड शेल.';

  @override
  String get gameHintWord012Cloud => 'नेटवर्कांतल्यान मागणे प्रमाण मेळपी कंप्युटिंग.';

  @override
  String get gameHintWord013Docker => 'कंटेनर तयार करपाक आनी चलोवपाक प्लॅटफॉर्म.';

  @override
  String get gameHintWord014Azure => 'Microsoft चें क्लाउड प्लॅटफॉर्म.';

  @override
  String get gameHintWord015Python => 'चड वापरतात अशी स्क्रिप्टिंग आनी प्रोग्रामिंग भास.';

  @override
  String get gameHintWord016Github => 'लोकप्रिय होस्टेड Git सहकार्य सेवा.';

  @override
  String get gameHintWord017Bgp => 'स्वायत्त यंत्रणां मदीं मार्गांची देवघेव करपी रुटिंग प्रोटोकॉल.';

  @override
  String get gameHintWord018Jenkins => 'CI खातीर चड वापरतात तो ऑटोमेशन सर्व्हर.';

  @override
  String get gameHintWord019Port => 'नेटवर्क सेवांनी वापरिल्लो क्रमांक आशिल्लो एंडपॉइंट.';

  @override
  String get gameHintWord020Proxy => 'क्लायंटां खातीर विनंत्यो फॉरवर्ड करपी सर्व्हर.';

  @override
  String get gameHintWord021Cache => 'वरचेवर वापरपी डेटा खातीर जलद साठवण.';

  @override
  String get gameHintWord022Cron => 'परत परत चलपी कमांडां खातीर Unix शेड्युलर.';

  @override
  String get gameHintWord023Bicep => 'इन्फ्रास्ट्रक्चर अॅज कोड खातीर Azure ची डिक्लरेटिव्ह भास.';

  @override
  String get gameHintWord024Apigee => 'केंद्रीकृत API व्यवस्थापना खातीर Google Cloud प्लॅटफॉर्म.';

  @override
  String get gameHintWord025Root => 'Unix-सारक्या यंत्रणांतलें विशेषाधिकार आशिल्लें प्रशासक खातें.';

  @override
  String get gameHintWord026Nginx => 'वेब सर्व्हर आनी रिव्हर्स प्रॉक्सी.';

  @override
  String get gameHintWord027Redis => 'कॅश म्हणून चड वापरतात तो इन-मेमरी डेटा स्टोअर.';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेशनल डेटाबेस प्रणाली.';

  @override
  String get gameHintWord029Ruby => 'Chef सारकीं साधनां वापरतात ती प्रोग्रामिंग भास.';

  @override
  String get gameHintWord030Helm => 'Kubernetes वांगडा चड वापरतात तो पॅकेज मॅनेजर.';

  @override
  String get gameHintWord031Pod => 'Kubernetes ांतलें सगळ्यांत नेटें तैनात करपाजोगें एकक.';

  @override
  String get gameHintWord032Image => 'कंटेनर तयार करपाक वापरतात तो फकत-वाचपाजोगो साचो.';

  @override
  String get gameHintWord033Build => 'सोर्स आनी अवलंबित्वां थावन आर्टिफॅक्ट तयार करता.';

  @override
  String get gameHintWord034Deploy => 'अॅप्लिकेशन एका वातावरणांत सोडटा.';

  @override
  String get gameHintWord035Terraform => 'इन्फ्रास्ट्रक्चर अॅज कोड खातीर HashiCorp चें साधन.';

  @override
  String get gameHintWord036Ansible => 'एजंट नाशिल्लें ऑटोमेशन आनी कॉन्फिगरेशन साधन.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes खातीर कमांड-लाइन क्लायंट.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform चें संक्षिप्त रूप.';

  @override
  String get gameHintWord039Gitops => 'Git ाक सत्याचो स्रोत म्हणून वापरपी कार्यपद्धत.';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, टेस्ट आनी रिलीज टप्प्यांची स्वयंचलीत मालिका.';

  @override
  String get gameHintWord041Container => 'आपल्या अवलंबित्वां सयत पॅक केल्लो वेगळो प्रोसेस.';

  @override
  String get gameHintWord042Cluster => 'सामायीक यंत्रणा म्हणून व्यवस्थापीत केल्ल्या मशिनांचो गट.';

  @override
  String get gameHintWord043Ingress => 'भायल्या HTTP रुटिंग खातीर Kubernetes API ऑब्जेक्ट.';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नेमा प्रमाण नेटवर्क ट्रॅफिक गाळटा.';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्काची तर्कशुध्द उपविभागणी.';

  @override
  String get gameHintWord046Gateway => 'वेगवेगळीं नेटवर्कां जोडपी नेटवर्क नोड.';

  @override
  String get gameHintWord047Router => 'नेटवर्कां मदीं पॅकेट फॉरवर्ड करता.';

  @override
  String get gameHintWord048Switch => 'स्थानीक नेटवर्काभितर उपकरणां जोडटा.';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड वा पॅकेजां खातीर व्यवस्थापीत साठवण.';

  @override
  String get gameHintWord050Systemd => 'Linux init प्रणाली आनी सेवा व्यवस्थापक.';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लॉग वाचपाक वापरपी कमांड.';

  @override
  String get gameHintWord052Permission => 'कोण वाचूं, बरोवं वा चलोवं शकता तें थारायपी नेम.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud चो व्यवस्थापीत PostgreSQL-सुसंगत डेटाबेस.';

  @override
  String get gameHintWord054Configmap => 'गुपीत नाशिल्ल्या कॉन्फिगरेशन खातीर Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटा खातीर आशिल्लो Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord056Persistent => 'वर्कलोड रिस्टार्ट जाल्लो तरी टिकपी साठवण वर्णन करता.';

  @override
  String get gameHintWord057Volume => 'कंटेनराभितर माउंट केल्ली फायलसिस्टीम साठवण.';

  @override
  String get gameHintWord058Storage => 'फायली, ऑब्जेक्ट वा ब्लॉक खातीर कायमची जागा.';

  @override
  String get gameHintWord059Replica => 'स्केल वा विश्वासार्हते खातीर सांबाळिल्ली वर्कलोड इन्स्टन्सची प्रत.';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस अॅप्लिकेशन पॉड खातीर Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज तयार करपाक वापरतात त्यो सुचोवण्यो.';

  @override
  String get gameHintWord062Database => 'अॅप्लिकेशनांनी विचारपाक वापरिल्लो संघटीत साठो.';

  @override
  String get gameHintWord063Automation => 'मनशाच्या पावलां बगर परत परत करपाचीं कामां सॉफ्टवेअरान करप.';

  @override
  String get gameHintWord064Anthos => 'वेगवेगळ्या वातावरणांतले क्लस्टर व्यवस्थापनाक Google Cloud प्लॅटफॉर्म.';

  @override
  String get gameHintWord065Bigquery => 'व्हडल्या प्रमाणावयल्या डेटा विश्लेषणा खातीर Google Cloud सेवा.';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषणा खातीर Google Cloud चो वाइड-कॉलम NoSQL डेटाबेस.';

  @override
  String get gameHintWord067Loadbalancer => 'येवपी ट्रॅफिक चड बॅकएंडांमदीं वाटून दिता.';

  @override
  String get gameHintWord068Prometheus => 'टायम-सिरीज मेट्रिक्स साठोवपी मॉनिटरिंग प्रणाली.';

  @override
  String get gameHintWord069Grafana => 'ऑब्झर्वेबिलिटी डेटा विचारपा आनी दृश्य रूपांत दाखोवपा खातीर प्लॅटफॉर्म.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud चो व्यवस्थापीत NoSQL JSON डॉक्युमेंट डेटाबेस.';

  @override
  String get gameHintWord071Cloudtrail => 'लेखापरीक्षणा खातीर API कृतीची नोंद करपी AWS सेवा.';

  @override
  String get gameHintWord072Statefulset => 'स्थिर ओळख जाय आशिल्ल्या वर्कलोड खातीर Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord073Daemonset => 'वेचून घेतिल्ल्या नोडांवयर पॉड चलोवपी Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड वा प्रोसेसान वापरिली Kubernetes ओळख.';

  @override
  String get gameHintWord075Networkpolicy => 'पॉड नेटवर्क ट्रॅफिक नियंत्रीत करपी Kubernetes रिसोर्स.';

  @override
  String get gameHintWord076Certificate => 'TLS ांत ओळख थारावपा खातीर वापरतात तो डिजिटल दस्तावेज.';

  @override
  String get gameHintWord077Encryption => 'फकत अधिकृत लोकांक वाचूं येता अशें डेटा बदलता.';

  @override
  String get gameHintWord078Observability => 'यंत्रणेच्या आउटपुटांतल्यान तिची वागणूक वळखपाची क्षमता.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes क्लस्टरांभितर चड वापरतात तो DNS सर्व्हर.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API वरवीं क्लाउड रिसोर्सीस व्यवस्थापीत करपी प्रकल्प.';

  @override
  String get gameHintWord081Failover => 'बिघाडा उपरांत राखीव घटकाचेर वचप.';

  @override
  String get gameHintWord082Idempotency => 'एक कृती परत परत केली तरी ती एकदां केल्ल्या सारकोच परिणाम दिता असो गुणधर्म.';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रीम आनी बॅच डेटा प्रक्रियेखातीर Google Cloud सेवा.';

  @override
  String get gameHintWord084Orchestration => 'चड स्वयंचलीत वर्कलोडांचें समन्वयीत व्यवस्थापन.';

  @override
  String get gameHintWord085Dataplex => 'संस्थेचो डेटा सोदपाक आनी नियंत्रणाखातीर Google Cloud सेवा.';

  @override
  String get gameHintWord086Serverless => 'इन्फ्रास्ट्रक्चर व्यवस्थापन आड दवरिल्लें अशें कार्यान्वयन मॉडेल.';

  @override
  String get gameHintWord087Distributed => 'जाचे घटक नेटवर्कांतल्या चड मशिनांचेर चलतात अशी यंत्रणा.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud चें व्यवस्थापीत Apache Spark आनी Hadoop वातावरण.';

  @override
  String get gameHintWord089Dynamodb => 'Terraform स्टेट लॉकिंगाक चड वापरतात तो AWS NoSQL डेटाबेस.';

  @override
  String get gameHintWord090Provisioning => 'वापरा खातीर इन्फ्रास्ट्रक्चर वा रिसोर्सीस तयार करप.';

  @override
  String get gameHintWord091Elasticsearch => 'केंद्रीकृत लॉगिंगाक चड वापरतात तें सोद इंजिन.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes क्लस्टरची स्थिती सांबाळपी की-व्हॅल्यू स्टोअर.';

  @override
  String get gameHintWord093Authentication => 'वापरपी वा सेवा कोण आसा तें पडताळपाची प्रक्रिया.';

  @override
  String get gameHintWord094Authorization => 'ओळखीक कितें करपाक मेळटा तें थारावपाची प्रक्रिया.';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेंटरांक खाजगी जोड दिवपी Azure सेवा.';

  @override
  String get gameHintWord096Configuration => 'सॉफ्टवेअर कशें वागता तें थारायपी सेटिंग्स.';

  @override
  String get gameHintWord097Infrastructure => 'अॅप्लिकेशनांक आदार दिवपी कंप्युट, नेटवर्क आनी साठवण रिसोर्सीस.';

  @override
  String get gameHintWord098Fastconnect => 'खाजगी नेटवर्क जोडणी खातीर Oracle Cloud सेवा.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ान वापरिल्लो उद्योग-मानक कंटेनर रनटायम.';

  @override
  String get gameHintWord100Kubernetes => 'कंटेनर ऑर्केस्ट्रेशन प्लॅटफॉर्म.';

  @override
  String get gameHintWord101Http => 'वेब रिसोर्सीस मागपा खातीर वापरपी अॅप्लिकेशन प्रोटोकॉल.';

  @override
  String get gameHintWord102Https => 'वेब विनंती प्रोटोकॉलाची कूटबद्ध आवृत्ती.';

  @override
  String get gameHintWord103Tcp => 'विश्वासार्ह आनी क्रमान पावोवपी ट्रान्सपोर्ट प्रोटोकॉल.';

  @override
  String get gameHintWord104Udp => 'डेटाग्रामा खातीर वापरपी जोडणी नाशिल्लो ट्रान्सपोर्ट प्रोटोकॉल.';

  @override
  String get gameHintWord105Tls => 'नेटवर्कावयल्या डेटाची सुरक्षा करपी प्रोटोकॉल.';

  @override
  String get gameHintWord106Ssl => 'आदुनिक ट्रान्सपोर्ट सुरक्षा प्रोटोकॉलाचो जुनो पूर्वज.';

  @override
  String get gameHintWord107Ftp => 'फायली हस्तांतरीत करपाचो पारंपरीक प्रोटोकॉल.';

  @override
  String get gameHintWord108Sftp => 'सुरक्षीत शेल जोडणेवयल्यान चलपी फायल हस्तांतरण प्रोटोकॉल.';

  @override
  String get gameHintWord109Smtp => 'सर्व्हरां मदीं ईमेल धाडपाक वापरपी प्रोटोकॉल.';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क उपकरणां व्यवस्थापीत आनी मॉनिटर करपाचो प्रोटोकॉल.';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क त्रुटी आनी ping संदेश व्हरपी प्रोटोकॉल.';

  @override
  String get gameHintWord112Arp => 'स्थानीक IPv4 पत्ते हार्डवेअर पत्त्यांत रुपांतरीत करता.';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लायंटांक IP कॉन्फिगरेशन आपोआप दिता.';

  @override
  String get gameHintWord114Nat => 'पॅकेट गेटवे ओलांडटना नेटवर्क पत्ते बदलता.';

  @override
  String get gameHintWord115Vpn => 'दूरचीं नेटवर्कां वा वापरपी जोडपी कूटबद्ध बोगदो.';

  @override
  String get gameHintWord116Vpc => 'सार्वजनीक क्लाउडांतलें वेगळें व्हर्च्युअल नेटवर्क.';

  @override
  String get gameHintWord117Vlan => 'स्विच्ड नेटवर्काची तर्कशुध्द वेगळीक.';

  @override
  String get gameHintWord118Wan => 'व्हडल्या भौगोलीक क्षेत्रांत पातळिल्लें नेटवर्क.';

  @override
  String get gameHintWord119Lan => 'स्थानीक क्षेत्रांतलीं उपकरणां जोडपी नेटवर्क.';

  @override
  String get gameHintWord120Cdn => 'पोंचयिल्लो मजकूर कॅश करपी वितरीत एज नेटवर्क.';

  @override
  String get gameHintWord121Cidr => 'स्लॅश लांबयेन नेटवर्क प्रीफिक्स दाखोवपी नोंद.';

  @override
  String get gameHintWord122Host => 'नेटवर्काक जोडिल्लो कंप्युटर वा एंडपॉइंट.';

  @override
  String get gameHintWord123Hostname => 'नेटवर्कांतल्या मशिनाक दिल्लें मनशाक वाचपाजोगें नांव.';

  @override
  String get gameHintWord124Domain => 'इंटरनेट नामकरण प्रणालींतलें नांवाचें प्रशासकीय क्षेत्र.';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेसाचो प्रशासकीय भाग.';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेसांतली एक वेगळी नोंद.';

  @override
  String get gameHintWord127Aaaa => 'नांव IPv6 पत्त्यांत सोडोवपी DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord128Ptr => 'उलट्या पत्ता शोधा खातीर वापरपी DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord129Txt => 'मजकूर मोल साठोवपी DNS रेकॉर्ड प्रकार.';

  @override
  String get gameHintWord130Cname => 'एक नांव दुसऱ्याचें अलियास करपी DNS रेकॉर्ड.';

  @override
  String get gameHintWord131Route => 'पॅकेट गंतव्य दिशेन दवरपी मार्ग नोंद.';

  @override
  String get gameHintWord132Routing => 'नेटवर्कां मदल्या ट्रॅफिकाखातीर मार्ग वेचप.';

  @override
  String get gameHintWord133Packet => 'नेटवर्कांतल्यान धाडिल्लें डेटाचें एकक.';

  @override
  String get gameHintWord134Protocol => 'यंत्रणां मदल्या संवादाखातीर मान्य केल्ले नेम.';

  @override
  String get gameHintWord135Ack => 'डेटा मेळ्ळ्याची पोच दिवपी TCP फ्लॅग.';

  @override
  String get gameHintWord136Bandwidth => 'संवाद दुव्याची क्षमता.';

  @override
  String get gameHintWord137Latency => 'विनंती वा पॅकेटाक प्रतिसाद मेळ्ळ्या आदीं जावपी विलंब.';

  @override
  String get gameHintWord138Throughput => 'दर एकक वेळार प्रक्रिया केल्लें उपयुक्त काम वा डेटा.';

  @override
  String get gameHintWord139Mtu => 'तुकडे केल्ल्या बगर दुवो धाडूं शकता तो सगळ्यांत व्हडलो पॅकेट आकार.';

  @override
  String get gameHintWord140Alpn => 'अॅप्लिकेशन-स्तर प्रोटोकॉलाची वाटाघाट करपी TLS विस्तार.';

  @override
  String get gameHintWord141Grep => 'जुळपी नमुन्या खातीर मजकुराच्यो वळी सोदता.';

  @override
  String get gameHintWord142Sed => 'मजकूर बदलांखातीर चड वापरतात तो स्ट्रीम एडिटर.';

  @override
  String get gameHintWord143Lscpu => 'प्रोसेसर आर्किटेक्चर आनी कोअर तपशील दाखोवपी Linux कमांड.';

  @override
  String get gameHintWord144Find => 'फायल अटींच्या आदारान डायरेक्टरी झाड सोदता.';

  @override
  String get gameHintWord145Lsblk => 'ब्लॉक उपकरणां आनी तांचे संबंद दाखोवपी Linux कमांड.';

  @override
  String get gameHintWord146Sort => 'मजकुराच्यो वळी क्रमान लायता.';

  @override
  String get gameHintWord147Uniq => 'लागींच्यो दुबारो वळी गाळटा.';

  @override
  String get gameHintWord148Head => 'फायलीची सुरवात छापता.';

  @override
  String get gameHintWord149Tail => 'फायलीचो शेवट छापता आनी वाडपी लॉग फाटोफाट पळयता.';

  @override
  String get gameHintWord150Cat => 'फायली जोडून तांचो मजकूर छापता.';

  @override
  String get gameHintWord151Cut => 'वळींतले वेचिल्ले फील्ड वा अक्षर स्तंभ काडटा.';

  @override
  String get gameHintWord152Tee => 'स्टँडर्ड इनपुट फायलींनी आनी स्टँडर्ड आउटपुटांत कॉपी करता.';

  @override
  String get gameHintWord153Echo => 'आपले आर्ग्युमेंट स्टँडर्ड आउटपुटांत बरयता.';

  @override
  String get gameHintWord154Printf => 'शेल वा प्रोग्रामांतल्यान फॉरमॅट केल्लो मजकूर छापता.';

  @override
  String get gameHintWord155Touch => 'फायलीचे टायमस्टँप अपडेट करता वा रिकामी फायल तयार करता.';

  @override
  String get gameHintWord156Mkdir => 'डायरेक्टरी तयार करता.';

  @override
  String get gameHintWord157Rmdir => 'रिकाम्यो डायरेक्टरी काडटा.';

  @override
  String get gameHintWord158Chmod => 'Unix फायल परवानगी बिट बदलता.';

  @override
  String get gameHintWord159Chown => 'फायलीची मालकी बदलता.';

  @override
  String get gameHintWord160Chgrp => 'फायलीची गट मालकी बदलता.';

  @override
  String get gameHintWord161Pwd => 'सद्याची कामाची डायरेक्टरी छापता.';

  @override
  String get gameHintWord162Apt => 'Debian-आदारीत यंत्रणांनी वापरिल्लें पॅकेज व्यवस्थापन साधन.';

  @override
  String get gameHintWord163Top => 'प्रोसेस्स आनी यंत्रणा रिसोर्स वापराचें संवादी प्रदर्शन.';

  @override
  String get gameHintWord164Agent => 'होस्टाचेर काम चलोवपी वा कळोवपी सॉफ्टवेअर घटक.';

  @override
  String get gameHintWord165Kill => 'प्रोसेसाक ताच्या आयडी वरवीं सिग्नल धाडटा.';

  @override
  String get gameHintWord166Signal => 'ऑपरेटिंग सिस्टीमान प्रोसेसाक दिल्ली सुचोवणी.';

  @override
  String get gameHintWord167Sigkill => 'प्रोसेस लगेच बंद करपी Unix सिग्नल.';

  @override
  String get gameHintWord168Nice => 'बदललेल्या शेड्युलिंग प्राधान्यान प्रोसेस सुरू करता.';

  @override
  String get gameHintWord169Renice => 'चालू प्रोसेसाचें शेड्युलिंग प्राधान्य बदलता.';

  @override
  String get gameHintWord170Jobs => 'सद्याच्या शेलान व्यवस्थापीत केल्लीं कामां दाखयता.';

  @override
  String get gameHintWord171Nohup => 'हँगअप सिग्नलांक दुर्लक्ष करून कमांड चलयता.';

  @override
  String get gameHintWord172Screen => 'वेगळ्यो करपाजोग्यो सेशन्स आधार दिवपी टर्मिनल मल्टिप्लेक्सर.';

  @override
  String get gameHintWord173Uptime => 'यंत्रणा खूब वेळ चालू आसा तें सांगता.';

  @override
  String get gameHintWord174Uname => 'यंत्रणा आनी कर्नलाची म्हायती छापता.';

  @override
  String get gameHintWord175Whoami => 'सद्याच्या प्रभावी वापरपी नांव छापता.';

  @override
  String get gameHintWord176Umask => 'फायली तयार करतना वापरपी परवानगी मास्क थारायता.';

  @override
  String get gameHintWord177Usermod => 'आसपी वापरपी खातें बदलपी Linux कमांड.';

  @override
  String get gameHintWord178Crontab => 'नेमिल्लीं परत चलपीं शेल कामां संपादीत करता वा दाखयता.';

  @override
  String get gameHintWord179Findmnt => 'माउंट केल्ल्या फायलसिस्टीमांची म्हायती दाखोवपी Linux कमांड.';

  @override
  String get gameHintWord180Mount => 'फायलसिस्टीम डायरेक्टरी झाडाक जोडटा.';

  @override
  String get gameHintWord181Sigterm => 'प्रोसेस सौम्यपणान बंद करपाची विनंती करपी Unix सिग्नल.';

  @override
  String get gameHintWord182Fstab => 'माउंट करपाच्या फायलसिस्टीमांचें वर्णन करपी यंत्रणा तक्तो.';

  @override
  String get gameHintWord183Swap => 'भौतीक मेमरीक पुरवण दिवपी डिस्क-आदारीत जागा.';

  @override
  String get gameHintWord184Tmpfs => 'व्हर्च्युअल मेमरीन आदार दिल्ली तात्पुरती फायलसिस्टीम.';

  @override
  String get gameHintWord185Proc => 'प्रोसेस आनी कर्नलाची म्हायती दाखोवपी Linux व्हर्च्युअल फायलसिस्टीम.';

  @override
  String get gameHintWord186Syslog => 'मानक लॉगिंग प्रोटोकॉल आनी संदेश स्वरूप.';

  @override
  String get gameHintWord187Dmesg => 'कर्नल रिंग बफरांतले संदेश दाखयता.';

  @override
  String get gameHintWord188Free => 'वापरिल्ली आनी उपलब्ध यंत्रणा मेमरी सांगता.';

  @override
  String get gameHintWord189Stat => 'फायलीची तपशीलवार मेटाडेटा दाखयता.';

  @override
  String get gameHintWord190Lsof => 'उगडल्यो फायली आनी तांकां धरपी प्रोसेस्स दाखयता.';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क जोडण्यो आनी रुटिंग म्हायती दाखयता.';

  @override
  String get gameHintWord192Checksum => 'डेटांतले बदल वा बिघाड वळखपाक काडिल्लें मोल.';

  @override
  String get gameHintWord193Ping => 'इको विनंत्यांनी नेटवर्क पावपाची तपासणी करता.';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क गंतव्याकडेन वचपाचे मदले हॉप दाखयता.';

  @override
  String get gameHintWord195Resolver => 'नांव विचारपांचीं जाप सोदपी DNS घटक.';

  @override
  String get gameHintWord196Nslookup => 'DNS नांवां आनी पत्ते सोदता.';

  @override
  String get gameHintWord197Telnet => 'जुनो कूटबद्ध नाशिल्लो रिमोट टर्मिनल प्रोटोकॉल.';

  @override
  String get gameHintWord198Tftp => 'सादो UDP-आदारीत फायल हस्तांतरण प्रोटोकॉल.';

  @override
  String get gameHintWord199Daemon => 'Unix-सारक्या यंत्रणांतली फाटभूंयेची सेवा प्रोसेस.';

  @override
  String get gameHintWord200Kernel => 'ऑपरेटिंग सिस्टीम रिसोर्सीस व्यवस्थापीत करपी मुखेल घटक.';

  @override
  String get gameHintWord201Commit => 'व्हर्जन कंट्रोलांतल्या बदलांचो नोंद केल्लो स्नॅपशॉट.';

  @override
  String get gameHintWord202Branch => 'विकासाची एक वळ दाखोवपी हलोवपाजोगी संदर्भ.';

  @override
  String get gameHintWord203Merge => 'वेगळ्या विकास वळींचो इतिहास एकठांय करता.';

  @override
  String get gameHintWord204Rebase => 'कमिट वेगळ्या बेस कमिटाचेर परत चलयता.';

  @override
  String get gameHintWord205Clone => 'रिमोट रिपॉझिटरीची स्थानीक प्रत तयार करता.';

  @override
  String get gameHintWord206Fetch => 'मर्ज करणा बगर रिमोट ऑब्जेक्ट आनी संदर्भ डाउनलोड करता.';

  @override
  String get gameHintWord207Pull => 'बदल हाडटा आनी सद्याच्या ब्रॅन्चांत एकठांय करता.';

  @override
  String get gameHintWord208Push => 'स्थानीक कमिट रिमोट रिपॉझिटरींत धाडटा.';

  @override
  String get gameHintWord209Stash => 'कमिट ना केल्ले वर्किंग-ट्री बदल तात्पुरते सांबाळटा.';

  @override
  String get gameHintWord210Revert => 'दुसरो कमिट उलटो करपी कमिट तयार करता.';

  @override
  String get gameHintWord211Reset => 'Git संदर्भ हलयता आनी इंडेक्स वा कामाच्यो फायली रिसेट करूं येता.';

  @override
  String get gameHintWord212Reflog => 'Git संदर्भांच्या अपडेटांचो स्थानीक इतिहास.';

  @override
  String get gameHintWord213Diff => 'आवृत्यो वा फायलींमदलो फरक दाखयता.';

  @override
  String get gameHintWord214Status => 'स्टेज केल्ल्यो, बदलिल्ल्यो आनी ट्रॅक ना केल्ल्यो फायली सांगता.';

  @override
  String get gameHintWord215Checkout => 'रिव्हिजन बदलपाक वा फायली परत मेळोवपाक Git कमांड.';

  @override
  String get gameHintWord216Tag => 'चड करून रिलीज दाखोवपी नांव दिल्लो संदर्भ.';

  @override
  String get gameHintWord217Remote => 'दुसऱ्या रिपॉझिटरीकडेन नांव दिल्लें जोडण.';

  @override
  String get gameHintWord218Origin => 'क्लोन केल्ल्या रिपॉझिटरी रिमोटाक दिल्लें डिफॉल्ट नांव.';

  @override
  String get gameHintWord219Upstream => 'स्थानीक ब्रॅन्चाकडेन संबंदीत रिमोट ट्रॅकिंग ब्रॅन्च.';

  @override
  String get gameHintWord220Worktree => 'रिपॉझिटरीकडेन जोडिल्ली चेकआउट केल्ली कामाची डायरेक्टरी.';

  @override
  String get gameHintWord221Registry => 'कंटेनर इमेज साठोवपी आनी वितरीत करपी सेवा.';

  @override
  String get gameHintWord222Digest => 'कंटेनर इमेजीचो मजकुरा-आदारीत वळखपत्र.';

  @override
  String get gameHintWord223Layer => 'कंटेनर इमेजीचो भाग जावपी फायलसिस्टीम बदल.';

  @override
  String get gameHintWord224Entrypoint => 'कंटेनराची मुखेल एक्झिक्युटेबल थारावपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord225Cmd => 'डिफॉल्ट कमांड वा आर्ग्युमेंट थारावपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord226Workdir => 'कामाची डायरेक्टरी थारावपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord227Copy => 'बिल्ड-कॉन्टेक्स्ट फायली इमेजींत कॉपी करपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord228Add => 'स्थानीक आर्काइव्हय उकलूं शकपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord229Run => 'बिल्ड-वेळार कमांड चलोवपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord230Env => 'एन्व्हायरनमेंट व्हेरिएबल थारावपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord231Arg => 'बिल्ड-वेळचें व्हेरिएबल जाहीर करपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord232Expose => 'कंटेनर पोर्ट नमूद करपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord233User => 'फुडल्या कमांडां खातीर खातें वेचपी Dockerfile सुचोवणी.';

  @override
  String get gameHintWord234Healthcheck => 'कंटेनराची तंदुरुस्ती कशी तपासची तें सांगपी सुचोवणी.';

  @override
  String get gameHintWord235Shebang => 'चलोवपी इंटरप्रिटर वळखपी स्क्रिप्टची पयली वळ.';

  @override
  String get gameHintWord236Compose => 'चड-कंटेनर अॅप्लिकेशन थारावपाक आनी चलोवपाक Docker साधन.';

  @override
  String get gameHintWord237Bridge => 'स्थानीक कंटेनर नेटवर्किंगा खातीर सामान्य Docker नेटवर्क ड्रायव्हर.';

  @override
  String get gameHintWord238Overlay => 'चड होस्टांवयल्या कंटेनरांक पातळपी नेटवर्क.';

  @override
  String get gameHintWord239None => 'कंटेनर नेटवर्किंग बंद करपी Docker नेटवर्क ड्रायव्हर.';

  @override
  String get gameHintWord240Prune => 'न वापरिल्ले कंटेनर रिसोर्सीस काडटा.';

  @override
  String get gameHintWord241Replicaset => 'थारायिल्ली पॉड संख्या सांबाळपी Kubernetes कंट्रोलर.';

  @override
  String get gameHintWord242Service => 'पॉडांक स्थिर प्रवेश दिवपी Kubernetes अमूर्तताय.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सेवेक आदार दिवपी पत्ते.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes रिसोर्सीस एकठांय करपी तर्कशुध्द व्याप्ती.';

  @override
  String get gameHintWord245Node => 'Kubernetes पॉड चलोवपी कामगार मशीन.';

  @override
  String get gameHintWord246Kubelet => 'पॉड चलोवपाचें व्यवस्थापन करपी दर नोडांवयलो एजंट.';

  @override
  String get gameHintWord247Pvc => 'कायमच्या साठवणे खातीर Kubernetes विनंती.';

  @override
  String get gameHintWord248Apiserver => 'क्लस्टर API उक्तो करपी Kubernetes कंट्रोल-प्लेन घटक.';

  @override
  String get gameHintWord249Role => 'भूमिका-आदारीत प्रवेश नियंत्रणांतलो परवानग्यांचो नांव दिल्लो संच.';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेसांतलो रिसोर्स वापर मर्यादीत करपी Kubernetes ऑब्जेक्ट.';

  @override
  String get gameHintWord251Selector => 'रिसोर्सीस तांच्या लेबलांनी जुळोवपी अभिव्यक्ती.';

  @override
  String get gameHintWord252Taint => 'जुळपी टॉलरेशन ना आशिल्ल्या पॉडांक पयस धाडपी नोडाचो गुणधर्म.';

  @override
  String get gameHintWord253Toleration => 'टेंट आशिल्ल्या नोडाचेर शेड्युल करपाक मुभा दिवपी पॉड सेटिंग.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोड शेड्युल करपाजोगो ना अशें खूण करता.';

  @override
  String get gameHintWord255Uncordon => 'कॉर्डन केल्लो नोड परत शेड्युल करपाजोगो करता.';

  @override
  String get gameHintWord256Drain => 'नोड देखभाली आदीं वर्कलोड सुरक्षीतपणान भायर काडटा.';

  @override
  String get gameHintWord257Job => 'काम पुराय जायसर चलपी Kubernetes वर्कलोड.';

  @override
  String get gameHintWord258Cronjob => 'वेळापत्रका प्रमाण जॉब तयार करपी Kubernetes वर्कलोड.';

  @override
  String get gameHintWord259Readiness => 'कंटेनर ट्रॅफिक घेवंक सज्ज आसा काय तें सांगपी प्रोब.';

  @override
  String get gameHintWord260Liveness => 'कंटेनर परत सुरू करपाची गरज आसा काय तें सांगपी प्रोब.';

  @override
  String get gameHintWord261Canary => 'नवी आवृत्त थोड्या ट्रॅफिकाक उक्ती करपी रिलीज पद्दत.';

  @override
  String get gameHintWord262Rolling => 'चालू इन्स्टन्स हळूहळू बदलपी अपडेट रणनिती.';

  @override
  String get gameHintWord263Rollback => 'आदीची चलतली अॅप्लिकेशन आवृत्त परत हाडटा.';

  @override
  String get gameHintWord264Rollout => 'नव्या अॅप्लिकेशन आवृत्तीची टप्प्या-टप्प्यान तैनाती.';

  @override
  String get gameHintWord265Recreate => 'बदली सुरू करपा आदीं जुने पॉड बंद करपी तैनाती रणनिती.';

  @override
  String get gameHintWord266Blue => 'ब्लू-ग्रीन रिलीजांतलें एक वातावरण.';

  @override
  String get gameHintWord267Green => 'ब्लू-ग्रीन रिलीजांतलें दुसरें वातावरण.';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पायपलायनान तयार केल्लें आवृत्ती आशिल्लें आउटपुट.';

  @override
  String get gameHintWord269Staging => 'रिलीज पडताळपाक वापरपी प्रॉडक्शना आदलें वातावरण.';

  @override
  String get gameHintWord270Production => 'खऱ्या वापरपींक सेवा दिवपी वातावरण.';

  @override
  String get gameHintWord271Release => 'वापरा खातीर दिल्ली सॉफ्टवेअर आवृत्त.';

  @override
  String get gameHintWord272Version => 'सॉफ्टवेअर पुनरावृत्ती वेगळी करपी वळखपत्र.';

  @override
  String get gameHintWord273Revision => 'दस्तावेज वा कोडबेसाची वळखपाजोगी आवृत्त.';

  @override
  String get gameHintWord274Webhook => 'घटना घडटना धाडिल्ली HTTP सुचोवणी.';

  @override
  String get gameHintWord275Runbook => 'यंत्रणा चलोवपाची वा पुनर्प्राप्तीची नोंद केल्ली कार्यपद्दत.';

  @override
  String get gameHintWord276Workspace => 'कामाचे प्रकल्प रिसोर्सीस आशिल्ली डायरेक्टरी वा व्याप्ती.';

  @override
  String get gameHintWord277Credentials => 'यंत्रणेंत प्रवेशा खातीर वापरपी प्रमाणीकरण साहित्य.';

  @override
  String get gameHintWord278Trigger => 'पायपलायन सुरू करपी घटना वा अट.';

  @override
  String get gameHintWord279Parameter => 'जॉब वा फंक्शनाक दिल्लें नांव दिल्लें इनपुट.';

  @override
  String get gameHintWord280Access => 'अधिकृततेच्या अधीन रिसोर्स वापरपाची क्षमता.';

  @override
  String get gameHintWord281Module => 'परत वापरपाजोगो इन्फ्रास्ट्रक्चर व्याख्यांचो गट.';

  @override
  String get gameHintWord282Provider => 'कॉन्फिगरेशन भायल्या API कडेन जोडपी Terraform प्लगइन.';

  @override
  String get gameHintWord283Resource => 'कॉन्फिगरेशनांत जाहीर केल्लो व्यवस्थापीत इन्फ्रास्ट्रक्चर ऑब्जेक्ट.';

  @override
  String get gameHintWord284Variable => 'कॉन्फिगरेशन वा कोडान वापरिल्लें नांव दिल्लें इनपुट मोल.';

  @override
  String get gameHintWord285Output => 'इन्फ्रास्ट्रक्चर कॉन्फिगरेशनान परत दिल्लें उक्तें मोल.';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्टेट स्नॅपशॉटांकडेन संबंदीत फायल प्रत्यय.';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट व्हेरिएबल मोलां खातीर वापरपी फायल प्रत्यय.';

  @override
  String get gameHintWord288Backend => 'स्टेट साठवण नियंत्रीत करपी Terraform कॉन्फिगरेशन.';

  @override
  String get gameHintWord289Plan => 'सुचयिल्ल्या इन्फ्रास्ट्रक्चर बदलांचें Terraform पूर्वावलोकन.';

  @override
  String get gameHintWord290Apply => 'सुचयिले बदल अमलांत हाडपी Terraform कृती.';

  @override
  String get gameHintWord291Destroy => 'व्यवस्थापीत इन्फ्रास्ट्रक्चर काडपी Terraform कृती.';

  @override
  String get gameHintWord292Import => 'आसपी रिसोर्स इन्फ्रास्ट्रक्चर व्यवस्थापनाखाला हाडटा.';

  @override
  String get gameHintWord293Refresh => 'नोंद केल्ली स्थिती खऱ्या इन्फ्रास्ट्रक्चराकडेन समक्रमीत करता.';

  @override
  String get gameHintWord294Validate => 'कॉन्फिगरेशन सिंटॅक्स आनी अंतर्गत सुसंगती तपासता.';

  @override
  String get gameHintWord295Fmt => 'प्रमाणीत कॉन्फिगरेशन फॉरमॅटिंग लावपी Terraform कमांड.';

  @override
  String get gameHintWord296Init => 'Terraform प्रोव्हायडर आनी कामाची डायरेक्टरी सुरू करता.';

  @override
  String get gameHintWord297Executor => 'बिल्ड चलोवपाक शकपी Jenkins कामगार स्लॉट.';

  @override
  String get gameHintWord298Dependencies => 'एक घटक दुसऱ्या आदीं जाय जावपी संबंद.';

  @override
  String get gameHintWord299Drift => 'जाहीर केल्ली आनी खरी इन्फ्रास्ट्रक्चर स्थिती हांचेमदलो फरक.';

  @override
  String get gameHintWord300Locking => 'एके वेळार चड बरोवपींक सामायीक स्थिती बदलपा पासून आडायता.';

  @override
  String get gameHintWord301Playbook => 'ऑटोमेशन प्ले आनी टास्क वर्णन करपी Ansible दस्तावेज.';

  @override
  String get gameHintWord302Inventory => 'व्यवस्थापीत होस्ट आनी गटांचो Ansible संग्रह.';

  @override
  String get gameHintWord303Facts => 'व्यवस्थापीत होस्टां विशीं गोळा केल्ली यंत्रणा म्हायती.';

  @override
  String get gameHintWord304Task => 'ऑटोमेशनांतलें एक वेगळें कामाचें एकक.';

  @override
  String get gameHintWord305Handler => 'बदलाची सुचोवणी मेळटकूच चलपी Ansible टास्क.';

  @override
  String get gameHintWord306Notify => 'बदल जाल्ल्या टास्का उपरांत हँडलर रांगेंत दवरपी Ansible निर्देश.';

  @override
  String get gameHintWord307Become => 'विशेषाधिकार वाढवप सुरू करपी Ansible सेटिंग.';

  @override
  String get gameHintWord308Vault => 'संवेदनशील ऑटोमेशन डेटा कूटबद्ध करपाचें Ansible वैशिष्ट्य.';

  @override
  String get gameHintWord309Register => 'टास्काचो परिणाम व्हेरिएबलांत सांबाळपी Ansible निर्देश.';

  @override
  String get gameHintWord310When => 'अटीदार टास्क कार्यान्वयन नियंत्रीत करपी Ansible कीवर्ड.';

  @override
  String get gameHintWord311Loop => 'संग्रहावयल्यान ऑटोमेशन टास्क परत परत करता.';

  @override
  String get gameHintWord312Include => 'परत वापरपाजोगो ऑटोमेशन मजकूर गतीमानपणान लोड करता.';

  @override
  String get gameHintWord313Tags => 'ऑटोमेशन टास्कांचे उपसंच वेचपाक वापरपी लेबलां.';

  @override
  String get gameHintWord314Template => 'तैनाती आदीं व्हेरिएबलांनी रेंडर केल्ली फायल.';

  @override
  String get gameHintWord315Jinja => 'Ansible ान वापरिली टेम्प्लेट भास.';

  @override
  String get gameHintWord316Abstraction => 'अंमलबजावणीचे तपशील सोप्या इंटरफेसा फाटल लिपोवप.';

  @override
  String get gameHintWord317Agile => 'फीडबॅकाचेर भर दिवपी पुनरावृत्त सॉफ्टवेअर वितरण पद्दत.';

  @override
  String get gameHintWord318Puppet => 'डिक्लरेटिव्ह मॅनिफेस्ट वापरपी कॉन्फिगरेशन व्यवस्थापन साधन.';

  @override
  String get gameHintWord319Airflow => 'वर्कफ्लो DAG शेड्युल आनी ऑर्केस्ट्रेट करपाचें प्लॅटफॉर्म.';

  @override
  String get gameHintWord320Argo => 'GitOps डिलिव्हरी कंट्रोलर आशिल्लें क्लाउड-नेटिव्ह प्रकल्प कुटुंब.';

  @override
  String get gameHintWord321Rds => 'AWS व्यवस्थापीत रिलेशनल डेटाबेस सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord322Sqs => 'AWS व्यवस्थापीत संदेश रांगेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord323Sns => 'AWS पब्लिश-सबस्क्राइब सुचोवणी सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord324Ses => 'AWS ईमेल धाडपी सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord325Iam => 'क्लाउड ओळख आनी प्रवेश व्यवस्थापनाचें संक्षिप्त रूप.';

  @override
  String get gameHintWord326Kms => 'AWS कूटबद्धीकरण की व्यवस्थापन सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord327Waf => 'अॅप्लिकेशन-स्तर वेब विनंत्यो गाळपी फायरवॉल.';

  @override
  String get gameHintWord328Eks => 'AWS व्यवस्थापीत Kubernetes सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord329Ecs => 'AWS व्यवस्थापीत कंटेनर ऑर्केस्ट्रेशन सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord330Ecr => 'AWS कंटेनर इमेज रजिस्ट्रीचें संक्षिप्त रूप.';

  @override
  String get gameHintWord331Aurora => 'MySQL आनी PostgreSQL कडेन सुसंगत AWS रिलेशनल डेटाबेस.';

  @override
  String get gameHintWord332Redshift => 'AWS विश्लेषण डेटा वेअरहाउस.';

  @override
  String get gameHintWord333Neptune => 'AWS व्यवस्थापीत ग्राफ डेटाबेस.';

  @override
  String get gameHintWord334Elasticache => 'AWS व्यवस्थापीत इन-मेमरी कॅशिंग सेवा.';

  @override
  String get gameHintWord335Athena => 'SQL वरवीं ऑब्जेक्ट-स्टोरेज डेटा विचारपी AWS सेवा.';

  @override
  String get gameHintWord336Glue => 'AWS सर्व्हरलेस डेटा एकात्मीकरण आनी ETL सेवा.';

  @override
  String get gameHintWord337Emr => 'व्यवस्थापीत बिग-डेटा प्रक्रिया क्लस्टरांचें AWS प्लॅटफॉर्म.';

  @override
  String get gameHintWord338Lambda => 'सर्व्हर व्यवस्थापन नासतना फंक्शन चलोवपी AWS सेवा.';

  @override
  String get gameHintWord339Cloudfront => 'AWS जागतीक कंटेंट डिलिव्हरी नेटवर्क.';

  @override
  String get gameHintWord340Cloudwatch => 'मेट्रिक्स, लॉग आनी अलार्म गोळा करपी AWS सेवा.';

  @override
  String get gameHintWord341Cloudshell => 'AWS ब्राउझर-आदारीत शेल वातावरण.';

  @override
  String get gameHintWord342Codecommit => 'AWS व्यवस्थापीत Git रिपॉझिटरी सेवा.';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कंपाइल करपी आनी बिल्ड टेस्ट चलोवपी AWS सेवा.';

  @override
  String get gameHintWord344Codedeploy => 'AWS स्वयंचलीत अॅप्लिकेशन तैनाती सेवा.';

  @override
  String get gameHintWord345Codepipeline => 'AWS सातत्यपूर्ण वितरण पायपलायन सेवा.';

  @override
  String get gameHintWord346Guardduty => 'AWS बुद्धीमान धोको सोद सेवा.';

  @override
  String get gameHintWord347Inspector => 'वर्कलोडांतले दोश तपासपी AWS सेवा.';

  @override
  String get gameHintWord348Macie => 'ऑब्जेक्ट स्टोरेजांतलो संवेदनशील डेटा सोदपी AWS सेवा.';

  @override
  String get gameHintWord349Shield => 'AWS व्यवस्थापीत DDoS संरक्षण सेवा.';

  @override
  String get gameHintWord350Snowball => 'व्हडल्या डेटा हस्तांतरणा खातीर AWS भौतीक उपकरण.';

  @override
  String get gameHintWord351Snowcone => 'AWS ऑफलाइन हस्तांतरण कुटुंबांतलें नेटकें मजबूत उपकरण.';

  @override
  String get gameHintWord352Datasync => 'AWS स्वयंचलीत ऑनलाइन डेटा हस्तांतरण सेवा.';

  @override
  String get gameHintWord353Msk => 'AWS व्यवस्थापीत Apache Kafka सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord354Backup => 'पुनर्प्राप्ती खातीर दवरिल्ली डेटाची प्रत.';

  @override
  String get gameHintWord355Transcribe => 'उतरां मजकुरांत बदलपी AWS सेवा.';

  @override
  String get gameHintWord356Translate => 'भासां मदीं मजकुराचें भाशांतर करपी AWS सेवा.';

  @override
  String get gameHintWord357Rekognition => 'प्रतिमा आनी व्हिडिओ विश्लेषण करपी AWS सेवा.';

  @override
  String get gameHintWord358Comprehend => 'AWS नैसर्गीक-भाशा विश्लेषण सेवा.';

  @override
  String get gameHintWord359Textract => 'दस्तावेजांतल्यान मजकूर आनी तक्ते काडपी AWS सेवा.';

  @override
  String get gameHintWord360Sagemaker => 'मशीन लर्निंग मॉडेल तयार आनी तैनात करपाचें AWS प्लॅटफॉर्म.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud चो जागतीक वितरीत रिलेशनल डेटाबेस.';

  @override
  String get gameHintWord362Pub => 'पब्लिश-सबस्क्राइब संदेश नमुन्याचो पब्लिश करपी अर्द्धो भाग.';

  @override
  String get gameHintWord363Sub => 'पब्लिश-सबस्क्राइब संदेश नमुन्याचो सबस्क्राइबर अर्द्धो भाग.';

  @override
  String get gameHintWord364Functions => 'सर्व्हरलेस प्लॅटफॉर्मांनी दिल्ले घटना-चालीत कोडाचे एकक.';

  @override
  String get gameHintWord365App => 'सॉफ्टवेअर अॅप्लिकेशनाचें लघुरूप.';

  @override
  String get gameHintWord366Engine => 'Compute Engine सारक्या नांवांतलो कार्यान्वयन घटक.';

  @override
  String get gameHintWord367Compute => 'व्हर्च्युअल मशीन वा कंटेनरांनी पुरवपी प्रक्रिया क्षमता.';

  @override
  String get gameHintWord368Network => 'डेटाची देवघेव करपीं जोडिल्लीं यंत्रणा.';

  @override
  String get gameHintWord369Security => 'धोक्यां पासून यंत्रणा आनी म्हायतेचें संरक्षण.';

  @override
  String get gameHintWord370Identity => 'प्रवेश निर्णयां खातीर वापरिल्लें वापरपी वा सेवेचें प्रतिनिधित्व.';

  @override
  String get gameHintWord371Monitoring => 'यंत्रणेची तंदुरुस्ती आनी वागणूक सतत पाळप.';

  @override
  String get gameHintWord372Logging => 'वेगवेगळ्या अॅप्लिकेशन आनी यंत्रणा घटनांची नोंद करप.';

  @override
  String get gameHintWord373Trace => 'सेवा कॉलांतल्यान विनंतीच्या मार्गाची नोंद.';

  @override
  String get gameHintWord374Metrics => 'वेळा प्रमाण यंत्रणा वागणुकेचीं संख्यात्मक मापां.';

  @override
  String get gameHintWord375Alert => 'मॉनिटर केल्ल्या अटीक लक्ष दिवपाची गरज आसा अशी सुचोवणी.';

  @override
  String get gameHintWord376Billing => 'वापरिल्ल्या क्लाउड सेवांचो मागोवो आनी शुल्क.';

  @override
  String get gameHintWord377Quota => 'वापरपाक मेळपी रिसोर्साच्या प्रमाणाची मर्यादा.';

  @override
  String get gameHintWord378Region => 'उपलब्धताय झोन आशिल्लें भौगोलीक क्लाउड तैनाती क्षेत्र.';

  @override
  String get gameHintWord379Tenancy => 'ग्राहक इन्फ्रास्ट्रक्चर कशें वांटून घेतात तें सांगपी व्यवस्था.';

  @override
  String get gameHintWord380Regional => 'क्लाउड प्रदेशा पुरतो मर्यादीत रिसोर्स वर्णन करता.';

  @override
  String get gameHintWord381Cosmos => 'Azure च्या जागतीक वितरीत बहु-मॉडेल डेटाबेसाचें नांव.';

  @override
  String get gameHintWord382Synapse => 'वेअरहाउसिंग आनी डेटा प्रक्रिया एकठांय करपी Azure विश्लेषण प्लॅटफॉर्म.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft चें क्लाउड-नेटिव्ह सुरक्षा म्हायती आनी घटना प्लॅटफॉर्म.';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोडांक संरक्षण दिवपी Microsoft सुरक्षा उत्पादन कुटुंब.';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रँडिंगाची जागा घेवपी Microsoft ओळख उत्पादन कुटुंब.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager चें संक्षिप्त रूप.';

  @override
  String get gameHintWord387Arc => 'Azure भायल्या रिसोर्सांपर्यंत व्यवस्थापन वाडोवपी Azure सेवा.';

  @override
  String get gameHintWord388Aks => 'Azure व्यवस्थापीत Kubernetes सेवेचें संक्षिप्त रूप.';

  @override
  String get gameHintWord389Armor => 'Google Cloud वेब संरक्षण सेवा नांवाचो प्रत्यय.';

  @override
  String get gameHintWord390Blob => 'Azure ऑब्जेक्ट-स्टोरेज डेटा प्रकार.';

  @override
  String get gameHintWord391Files => 'व्यवस्थापीत नेटवर्क फायल शेअर दिवपी Azure सेवा.';

  @override
  String get gameHintWord392Disk => 'व्हर्च्युअल मशिनाक जोडिल्लें ब्लॉक-स्टोरेज उपकरण.';

  @override
  String get gameHintWord393Function => 'परिणाम परत दिवपाजोगो कोडाचो कॉल करपाजोगो ब्लॉक.';

  @override
  String get gameHintWord394Logic => 'वर्कफ्लो एकात्मीकरणा खातीर Azure अॅप सेवा वर्ग.';

  @override
  String get gameHintWord395Insights => 'Azure अॅप्लिकेशन टेलिमेट्री उत्पादन नांवाचो प्रत्यय.';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क एंडपॉइंटां मदीं व्हांवपी डेटा.';

  @override
  String get gameHintWord397Manager => 'Azure Resource च्या कंट्रोल प्लेनाचो उत्पादन नांवाचो प्रत्यय.';

  @override
  String get gameHintWord398Bastion => 'खाजगी होस्ट प्रवेशा खातीर व्यवस्थापीत वा बळगें केल्लें प्रवेशद्वार.';

  @override
  String get gameHintWord399Front => 'Azure जागतीक प्रवेशद्वार सेवा Front Door ांतलें पयलें उतर.';

  @override
  String get gameHintWord400Door => 'Azure जागतीक प्रवेशद्वार सेवा Front Door ांतलें दुसरें उतर.';

  @override
  String get gameHintWord401Javascript => 'ब्राउझर आनी Node रनटायमांत चड वापरतात अशी प्रोग्रामिंग भास.';

  @override
  String get gameHintWord402Perl => 'मजकूर प्रक्रिया आनी रेग्युलर एक्सप्रेशन खातीर नामनेची स्क्रिप्टिंग भास.';

  @override
  String get gameHintWord403Powershell => 'Microsoft ची ऑब्जेक्ट-आदारीत शेल आनी ऑटोमेशन भास.';

  @override
  String get gameHintWord404Java => 'Jenkins अमलांत हाडपाक वापरिल्ली JVM भास.';

  @override
  String get gameHintWord405Json => 'ऑब्जेक्ट आनी अॅरे आशिल्लें हलकें डेटा स्वरूप.';

  @override
  String get gameHintWord406Xml => 'आंत आंत नांव दिल्ले टॅग वापरपी मार्कअप स्वरूप.';

  @override
  String get gameHintWord407Html => 'वेब पानांची रचना करपाक वापरपी मार्कअप भास.';

  @override
  String get gameHintWord408Css => 'वेब सादरीकरण नियंत्रीत करपी स्टायलशीट भास.';

  @override
  String get gameHintWord409String => 'मजकूर अक्षरांचो क्रम.';

  @override
  String get gameHintWord410Array => 'इंडेक्स केल्ल्या घटकांचो संग्रह.';

  @override
  String get gameHintWord411Hash => 'Ruby आनी Perl ांतलो सहयोगी की-व्हॅल्यू संग्रह.';

  @override
  String get gameHintWord412Object => 'गुणधर्म आनी वागणूक आशिल्लें रनटायम मोल.';

  @override
  String get gameHintWord413Class => 'क्लास-आदारीत भासांनी ऑब्जेक्ट तयार करपाक वापरपी व्याख्या.';

  @override
  String get gameHintWord414Method => 'ऑब्जेक्ट वा क्लासाकडेन संबंदीत फंक्शन.';

  @override
  String get gameHintWord415Interface => 'घटक उक्तीं करपी कृती सांगपी करार.';

  @override
  String get gameHintWord416Subclass => 'दुसऱ्या क्लासांतल्यान घेतिल्लो क्लास.';

  @override
  String get gameHintWord417Super => 'मूळ-क्लासाची वागणूक आपोवपाक वापरपी कीवर्ड.';

  @override
  String get gameHintWord418Protected => 'क्लास-संबंदीत संदर्भांक प्रवेश मर्यादीत करपी दृश्यताय पातळी.';

  @override
  String get gameHintWord419Exception => 'सामान्य नियंत्रण प्रवाह खंडीत करपी रनटायम अट.';

  @override
  String get gameHintWord420Regex => 'मजकूर जुळोवपाक वापरपी नमुना नोंद.';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोड रचनेन थारायिल्ली व्याप्ती वर्णन करता.';

  @override
  String get gameHintWord422Scalar => 'Perl ांतलो एकल-मोलाचो व्हेरिएबल वर्ग.';

  @override
  String get gameHintWord423Tuple => 'Python ांतलो न बदलपाजोगो क्रमबद्ध संग्रह.';

  @override
  String get gameHintWord424List => 'Python ांतलो बदलपाजोगो क्रमबद्ध संग्रह.';

  @override
  String get gameHintWord425Dict => 'Python ाचें अंतर्भूत मॅपिंग प्रकार नांव.';

  @override
  String get gameHintWord426Dictionary => 'कीज संबंदीत मोलांकडेन जोडपी संग्रह.';

  @override
  String get gameHintWord427Set => 'वेगळ्या मोलांचो संग्रह.';

  @override
  String get gameHintWord428Boolean => 'खरें वा खोटें दाखोवपी डेटा प्रकार.';

  @override
  String get gameHintWord429Integer => 'पुराय संख्या दाखोवपी संख्यात्मक प्रकार.';

  @override
  String get gameHintWord430Float => 'फ्लोटिंग-पॉइंट मोलां दाखोवपी संख्यात्मक प्रकार.';

  @override
  String get gameHintWord431Double => 'दुप्पट-अचूकतायेचो फ्लोटिंग-पॉइंट प्रकार.';

  @override
  String get gameHintWord432Null => 'ऑब्जेक्ट वा परिणामाचो अभाव दाखोवपी मोल.';

  @override
  String get gameHintWord433Undefined => 'दिल्ल्या मोलाचो अभाव दाखोवपी JavaScript मोल.';

  @override
  String get gameHintWord434Promise => 'आसिंक्रोनस परिणाम फुडें मेळटलो अशें दाखोवपी JavaScript ऑब्जेक्ट.';

  @override
  String get gameHintWord435Async => 'आसिंक्रोनस फंक्शन दाखोवपी कीवर्ड.';

  @override
  String get gameHintWord436Await => 'आसिंक्रोनस परिणामाची वाट पळोवपी कीवर्ड.';

  @override
  String get gameHintWord437Callback => 'दुसऱ्या कृतीन आपोवपाक दिल्लें फंक्शन.';

  @override
  String get gameHintWord438Closure => 'भोवतणच्या लेक्सिकल व्याप्तीचो प्रवेश दवरपी फंक्शन.';

  @override
  String get gameHintWord439Generator => 'यील्ड केल्ल्या मोलांवरवीं क्रम आळसान तयार करपी फंक्शन.';

  @override
  String get gameHintWord440Iterator => 'संग्रहांतल्या मोलांतल्यान फुडें वचपी ऑब्जेक्ट.';

  @override
  String get gameHintWord441Print => 'मोल आउटपुटांत बरोवपी सामान्य फंक्शन.';

  @override
  String get gameHintWord442Input => 'स्टँडर्ड इनपुटांतल्यान एक वळ वाचपी Python फंक्शन.';

  @override
  String get gameHintWord443Open => 'फायल हँडल मेळोवपाक वापरपी फंक्शन.';

  @override
  String get gameHintWord444Close => 'उगडिल्ली फायल वा जोडण सोडपी कृती.';

  @override
  String get gameHintWord445Read => 'स्ट्रीम वा फायलींतल्यान डेटा मेळोवपी कृती.';

  @override
  String get gameHintWord446Write => 'स्ट्रीम वा फायलींत डेटा धाडपी कृती.';

  @override
  String get gameHintWord447Append => 'संग्रहाच्या शेवटाक एक घटक जोडटा.';

  @override
  String get gameHintWord448Split => 'डिलिमिटर वापरून मजकूर उपस्ट्रिंगांनी फोडटा.';

  @override
  String get gameHintWord449Join => 'विभाजक वापरून स्ट्रिंगांचो क्रम एकठांय करता.';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिंगांतले भोवतणचे रिकामे अंतर काडटा.';

  @override
  String get gameHintWord451Chomp => 'Perl वा Ruby ांतलो फाटलो रेकॉर्ड विभाजक काडटा.';

  @override
  String get gameHintWord452Map => 'संग्रहांतल्या दर घटकाचेर रुपांतर लायता.';

  @override
  String get gameHintWord453Filter => 'अट पुराय करपी संग्रह घटक दवरता.';

  @override
  String get gameHintWord454Reduce => 'संग्रह एकठांय करून जमा परिणाम दिता.';

  @override
  String get gameHintWord455Range => 'पुरायांकांचो अंकगणीत क्रम दाखोवपी Python प्रकार.';

  @override
  String get gameHintWord456Length => 'संग्रहाचो आकार परत दिवपी गुणधर्म वा मेथड.';

  @override
  String get gameHintWord457Len => 'संग्रहाचो आकार परत दिवपी Python अंतर्भूत फंक्शन.';

  @override
  String get gameHintWord458Type => 'ऑब्जेक्टाचो प्रकार परत दिवपी Python फंक्शन.';

  @override
  String get gameHintWord459Isinstance => 'प्रकार पदानुक्रमांतलें सदस्यत्व तपासपी Python फंक्शन.';

  @override
  String get gameHintWord460Yield => 'जनरेटरांतल्यान मोल तयार करपी कीवर्ड.';

  @override
  String get gameHintWord461Saas => 'पुराय सॉफ्टवेअर अॅप्लिकेशन पोंचोवपी क्लाउड मॉडेल.';

  @override
  String get gameHintWord462Paas => 'व्यवस्थापीत अॅप्लिकेशन विकास प्लॅटफॉर्म पुरवपी क्लाउड मॉडेल.';

  @override
  String get gameHintWord463Iaas => 'व्हर्च्युअल कंप्युट, साठवण आनी नेटवर्किंग पुरवपी क्लाउड मॉडेल.';

  @override
  String get gameHintWord464Hybrid => 'खाजगी आनी सार्वजनीक इन्फ्रास्ट्रक्चर एकठांय करपी क्लाउड पद्दत.';

  @override
  String get gameHintWord465Archive => 'क्वचीत वापरपी डेटाची दीर्घकालीन साठवण.';

  @override
  String get gameHintWord466Public => 'चड ग्राहकांक सेवा दिवपी क्लाउड मालकी मॉडेल.';

  @override
  String get gameHintWord467Private => 'एका संस्थे खातीर समर्पीत क्लाउड मॉडेल.';

  @override
  String get gameHintWord468Scalability => 'रिसोर्सीस जोडून वाडपी भार हाताळपाची क्षमता.';

  @override
  String get gameHintWord469Availability => 'गरजेवेळार सेवा किती प्रमाणांत मेळटा ताचें माप.';

  @override
  String get gameHintWord470Resilience => 'बिघाडांक तोंड दिवपाची आनी तातूंतल्यान सावरपाची क्षमता.';

  @override
  String get gameHintWord471Redundancy => 'एकल बिघाड बिंदू उणे करपी दुबारे घटक.';

  @override
  String get gameHintWord472Disaster => 'पुनर्प्राप्ती रणनितीन हाताळपी व्हडलो खंड.';

  @override
  String get gameHintWord473Recovery => 'बिघाडा उपरांत सेवा वा डेटा परत मेळोवप.';

  @override
  String get gameHintWord474Replicate => 'डेटा वा वर्कलोड दुसऱ्या जाग्यार कॉपी करप.';

  @override
  String get gameHintWord475Snapshotting => 'डेटा वा यंत्रणा स्थितीच्यो विशिश्ट वेळेच्यो प्रती घेवप.';

  @override
  String get gameHintWord476Restore => 'सांबाळिल्ल्या प्रतींतल्यान डेटा परत मेळोवपी कृती.';

  @override
  String get gameHintWord477Residency => 'सांठयल्या डेटाचें भौगोलीक स्थान थारायपी गरज.';

  @override
  String get gameHintWord478Compliance => 'गरजेचे नियम आनी संस्थात्मक नियंत्रणां पाळप.';

  @override
  String get gameHintWord479Governance => 'तंत्रज्ञान वापर नियंत्रीत करपी धोरणां आनी प्रक्रिया.';

  @override
  String get gameHintWord480Audit => 'नोंद केल्ल्या कृती आनी अनुपालन पुराव्याची तपासणी.';

  @override
  String get gameHintWord481Token => 'अधिकृतताय वा ओळख दाखोवपी क्रेडेन्शियल वा चिन्न.';

  @override
  String get gameHintWord482Oauth => 'प्रतिनिधीत प्रवेशाक मुभा दिवपी अधिकृतताय चौकट.';

  @override
  String get gameHintWord483Saml => 'उद्योग सिंगल साइन-ऑन खातीर चड वापरपी XML-आदारीत मानक.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पायपलायनांत वापरपी खास कमांड.';

  @override
  String get gameHintWord485Algorithm => 'संगणकीय समस्या सोडोवपाच्या पावलांचो थारायिल्लो क्रम.';

  @override
  String get gameHintWord486Key => 'कूटबद्धीकरण नियंत्रीत करपाक वा सांठयलो डेटा वळखपाक वापरपी मोल.';

  @override
  String get gameHintWord487Alias => 'शेल कमांड वा रिसोर्साक दिल्लें पर्यायी नांव.';

  @override
  String get gameHintWord488Amend => 'सगळ्यांत ताजो कमिट बदलपी Git कमिट पर्याय.';

  @override
  String get gameHintWord489Allsigned => 'सही केल्ल्या स्क्रिप्टांची गरज आशिल्लें PowerShell एक्झिक्युशन धोरण.';

  @override
  String get gameHintWord490Remotesigned => 'डाउनलोड केल्ल्या स्क्रिप्टांक सही जाय आशिल्लें PowerShell धोरण.';

  @override
  String get gameHintWord491Acl => 'वापरपी वा यंत्रणांच्यो परवानग्यो थारायपी यादी.';

  @override
  String get gameHintWord492Uid => 'Unix वापरपीक दिल्लो संख्यात्मक वळखपत्र.';

  @override
  String get gameHintWord493Setgid => 'कार्यान्वयन वा वारसा वेळार गट ओळखीचेर परिणाम करपी परवानगी बिट.';

  @override
  String get gameHintWord494Setfacl => 'फायल प्रवेश नियंत्रण यादी थारायपी Linux कमांड.';

  @override
  String get gameHintWord495Isolation => 'वर्कलोड एकामेकांक आडखळ करनात अशी वेगळीक.';

  @override
  String get gameHintWord496Sighup => 'कॉन्फिगरेशन परत लोड करपाची विनंती करपाक चड वापरपी Unix हँगअप सिग्नल.';

  @override
  String get gameHintWord497Sigint => 'चड करून Control-C नी तयार जावपी Unix इंटरप्ट सिग्नल.';

  @override
  String get gameHintWord498Sigstop => 'प्रोसेस बंद ना करता थांबोवपी Unix सिग्नल.';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड आनी प्रवेश की सारकीं संवेदनशील मोलां.';

  @override
  String get gameHintWord500Secure => 'अनधिकृत प्रवेशा पासून संरक्षीत जोडण वर्णन करता.';

  @override
  String get fontSettingsTitle => 'फॉन्ट';

  @override
  String get fontChangeFont => 'फॉन्ट बदलात';

  @override
  String get fontSystemDefault => 'सिस्टम डिफॉल्ट';

  @override
  String get fontPreview => 'पूर्वावलोकन';

  @override
  String get fontPreviewSample => 'एकेक प्रस्नान DevOps शिकात';

  @override
  String get fontSelected => 'वेंचिल्लें';

  @override
  String get fontLatinOnlyNote => 'कस्टम फॉन्ट लॅटिन अक्षरांक लागू जातात. हेर लिपी तुमच्या डिव्हायसाच्या फॉन्टांतूच उरतात.';

  @override
  String get fontDescSystem => 'तुमच्या डिव्हायसाचो भितरलो फॉन्ट';

  @override
  String get fontDescGeometric => 'भौमितीक सॅन्स-सेरिफ';

  @override
  String get fontDescGeometricRounded => 'भौमितीक वाटकुळो सॅन्स-सेरिफ';

  @override
  String get fontDescFriendly => 'इश्टागतीचो सॅन्स-सेरिफ';

  @override
  String get fontDescCondensed => 'संकुचित';

  @override
  String get fontDescRounded => 'वाटकुळो सॅन्स-सेरिफ';

  @override
  String get fontDescRoundedDisplay => 'वाटकुळो डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
