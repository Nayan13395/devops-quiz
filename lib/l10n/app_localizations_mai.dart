// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get appTour => 'ऐपक परिचय';

  @override
  String get skipTour => 'परिचय छोड़ू';

  @override
  String get finishTour => 'परिचय पूरा करू';

  @override
  String tourStep(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेविगेशन मेनू';

  @override
  String get tourSearch => 'संबंधित क्विजक श्रेणी खोजबाक लेल एतय विषय लिखू।';

  @override
  String get tourCategory => 'मिश्रित क्विजक लेल DevOps पर टैप करू। आन श्रेणीमे प्रश्नक सेट अछि। बादमे पढ़बाक लेल प्रश्न बुकमार्क करू।';

  @override
  String get tourMenu => 'नेविगेशन मेनू खोलबाक लेल एहि बटन पर टैप करू।';

  @override
  String get tourLearning => 'कार्डक लेल सीखू खोलू। कोनो दिशामे स्वाइप करू, शफल करू, ऑटो-स्वाइप चलाउ वा कार्ड बुकमार्क करू।';

  @override
  String get tourGames => 'खेल खेलि अंक कमाउ। स्तरबला खेलमे प्रत्येक पूरा स्तर 100 अंक दैत अछि; संकेतक मूल्य 20 अंक अछि।';

  @override
  String get tourAchievements => 'अपन उपलब्धि एतय देखू। नव उपलब्धि आ उपलब्ध थीम पॉपअपमे देखाओल जाइत अछि।';

  @override
  String get tourSettings => 'भाषा, थीम आ आवाज चुनू। बुकमार्कक लेल सहेजल डेटा वा ई गाइड फेर देखबाक लेल ऐपक परिचय खोलू।';

  @override
  String get achievementUnlocked => 'उपलब्धि अनलॉक भेल!';

  @override
  String get themeUnlocked => 'नव थीम उपलब्ध अछि!';

  @override
  String get themeUnlockedMessage => 'आब अहाँ सेटिंग्स > थीम मे ई थीम चुनि सकैत छी।';

  @override
  String get gameSounds => 'खेलक आवाज';

  @override
  String get gameSoundsDescription => 'खेल आ क्विजक ध्वनि प्रभाव। उपकरणक आवाज आ साइलेंट मोड जाँचू।';

  @override
  String get testSound => 'आवाज जाँचू';

  @override
  String get soundSettingBusy => 'कृपया प्रतीक्षा करू...';

  @override
  String get soundSettingError => 'आवाजक सेटिंग लोड वा सहेजल नहि जा सकल। फेर प्रयास करू।';

  @override
  String get soundPlaybackError => 'आवाज नहि बाजि सकल। उपकरण वा ब्राउज़रक ऑडियो सेटिंग जाँचू।';

  @override
  String get saveData => 'सहेजल डेटा';

  @override
  String get learningTranslationUnavailable => 'एहि कार्डक चुनल भाषामे एखन धरि अनुवाद नहि भेल अछि।';

  @override
  String get saveQuestion => 'प्रश्न सहेजू';

  @override
  String defaultPortQuestion(String service) {
    return '$service क डिफॉल्ट पोर्ट की अछि?';
  }

  @override
  String get removeSavedItem => 'सहेजल सूची सँ हटाउ';

  @override
  String get noSavedData => 'एखन धरि किछु सहेजल नहि अछि। सीखबाक कार्ड वा क्विजक प्रश्न बुकमार्क करू।';

  @override
  String get savedDataError => 'सहेजल डेटा लोड वा अपडेट नहि भऽ सकल। फेर प्रयास करू।';

  @override
  String get savedItemUnavailable => 'ई सहेजल वस्तु आब उपलब्ध नहि अछि।';

  @override
  String get correctAnswer => 'सही उत्तर';

  @override
  String get retry => 'फेर प्रयास करू';

  @override
  String get certificates => 'प्रमाणपत्र';

  @override
  String get whatsNew => 'नव की अछि';

  @override
  String get settings => 'सेटिंग';

  @override
  String get darkMode => 'गाढ़ रंग मोड';

  @override
  String get lightMode => 'उज्जर मोड';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनू';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'क्विज शुरू करू';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'वर्ग बदलू';

  @override
  String get dailyQuiz => 'दैनिक क्विज';

  @override
  String get dailyQuizCompleted => 'दैनिक क्विज पूरा';

  @override
  String get dailyQuizCompletedMessage => 'अहाँ आइक दैनिक क्विज पूरा कऽ चुकल छी। नव चुनौती लेल काल्हि आउ!';

  @override
  String get leaderboard => 'अग्रसूची';

  @override
  String get shareApp => 'एप साझा करू';

  @override
  String get rateApp => 'एपक मूल्याङ्कन करू';

  @override
  String get about => 'परिचय';

  @override
  String get ok => 'ठीक अछि';

  @override
  String get home => 'मुख्य पृष्ठ';

  @override
  String get games => 'खेल';

  @override
  String get referAndEarn => 'आमंत्रण दऽ कमाउ';

  @override
  String get themes => 'थीम';

  @override
  String get version => 'संस्करण';

  @override
  String get developer => 'विकासकर्ता';

  @override
  String get contact => 'सम्पर्क';

  @override
  String get learning => 'सीखब';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'हमरा सँ जुड़ू';

  @override
  String get aboutDescription => 'DevOps Quiz सँ Linux, Docker, Kubernetes आ दोसर DevOps विषय सीखि साक्षात्कार आ प्रमाणपत्र लेल तैयारी करू।';

  @override
  String get quizResult => 'क्विजक परिणाम';

  @override
  String get outstanding => 'उत्कृष्ट!';

  @override
  String get greatJob => 'बहुत नीक!';

  @override
  String get goodEffort => 'नीक प्रयास!';

  @override
  String get keepPracticing => 'अभ्यास जारी राखू!';

  @override
  String get dontGiveUp => 'हार नहि मानू!';

  @override
  String get shareMessage1 => 'हमर स्कोर';

  @override
  String get shareMessage2 => 'DevOps क्विज मे!';

  @override
  String get downloadApp => 'एप डाउनलोड करू:';

  @override
  String get score => 'स्कोर';

  @override
  String get points => 'अंक';

  @override
  String get percentage => 'प्रतिशत';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'पूर्ण स्कोर बोनस';

  @override
  String get shareScore => 'स्कोर साझा करू';

  @override
  String get restartQuiz => 'क्विज फेर शुरू करू';

  @override
  String get backToCategories => 'वर्ग सभ मे वापस जाउ';

  @override
  String get greatProgress => 'बहुत नीक! अहाँ नीक प्रगति कऽ रहल छी।';

  @override
  String get practiceMore => 'नीक प्रयास! बेसी अभ्यास सँ स्कोर बढ़त।';

  @override
  String get keepLearning => 'सीखैत रहू आ फेर प्रयास करू।';

  @override
  String get everyExpertStarted => 'प्रत्येक विशेषज्ञ शुरू मे शिक्षार्थी छल। अभ्यास जारी राखू!';

  @override
  String get quizInstructions => 'क्विजक निर्देश';

  @override
  String get instruction1 => 'प्रत्येक सेट मे 25 प्रश्न अछि।';

  @override
  String get instruction2 => 'प्रत्येक प्रश्न लेल 30 सेकंड अछि।';

  @override
  String get instruction3 => 'हरियर = सही उत्तर।';

  @override
  String get instruction4 => 'लाल = गलत उत्तर।';

  @override
  String get instruction5 => 'उत्तर बदलल नहि जा सकैत अछि।';

  @override
  String get instruction6 => 'पाछाँ बटन केवल समीक्षा लेल अछि।';

  @override
  String get instruction7 => 'पूरा भेलाक बाद स्कोर देखाओल जाइत अछि।';

  @override
  String get instruction8 => 'प्रत्येक सही उत्तर पर 10 अंक भेटैत अछि।';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्ट प्रदर्शन! अहाँ एकटा $expert छी।';
  }

  @override
  String get selectCategory => 'वर्ग चुनू';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'सेट चुनू';

  @override
  String get set => 'सेट';

  @override
  String get questions => 'प्रश्न';

  @override
  String get noScoresYet => 'एखन कोनो स्कोर नहि';

  @override
  String get pointsShort => 'अंक';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz मे स्वागत अछि';

  @override
  String hiUser(String name) {
    return 'प्रणाम $name';
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
  String get survivalMode => 'सर्वाइवल मोड';

  @override
  String get speedChallenge => 'गतिक चुनौती';

  @override
  String get dailyChallenge => 'दैनिक चुनौती';

  @override
  String get ultimateChallenge => 'अंतिम चुनौती';

  @override
  String get timeLeft => 'बाँकी समय';

  @override
  String get completed => 'पूरा';

  @override
  String get locked => 'बंद';

  @override
  String get back => 'पाछाँ';

  @override
  String get next => 'अगिला';

  @override
  String get submit => 'जमा करू';

  @override
  String get achievements => 'उपलब्धि';

  @override
  String get streak => 'निरंतरता';

  @override
  String get days => 'दिन';

  @override
  String get tomorrowsReward => 'काल्हिक पुरस्कार';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 हमर स्कोर $score/$totalQuestions #DevOps Quiz!\n\n🏆 अंक: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 प्रतिशत: $percentage%\n\nएप डाउनलोड करू:';
  }

  @override
  String get gameUiSpinWheel => 'चक्का घुमाउ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'घुमाउ आ बोनस पॉइंट जीतू';

  @override
  String get gameUiScratchCard => 'स्क्रैच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'इनाम देखबा लेल खरोंचू';

  @override
  String get gameUiLuckySlots => 'लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स घुमाउ आ पॉइंट जीतू';

  @override
  String get gameUiMysteryDeal => 'रहस्यमय डील';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'एकटा रहस्यमय बॉक्स चुनू आ उत्तर दिअ';

  @override
  String get gameUiMemoryMatch => 'मेमोरी मैच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोड़ी मिलाउ';

  @override
  String get gameUiWordGuess => 'शब्द अनुमान';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'स्तर-दर-स्तर DevOps शब्दक अनुमान लगाउ';

  @override
  String get gameUiFindWords => 'शब्द ताकू';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिड मे नुकाएल DevOps शब्द ताकू';

  @override
  String get gameUiSpotTheDifference => 'अंतर चिन्हू';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दू चित्रित दृश्यक बीच पाँच बदलाव ताकू';

  @override
  String get gameUiJigsawPuzzle => 'जिगसॉ पहेली';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'साझा कएल गेल HD पशु आ प्रकृतिक चित्र फेर सँ बनाउ';

  @override
  String get gameUiHighOrLow => 'हाई या लो';

  @override
  String get gameUiBuildAStreak => 'लगातार जीतक स्ट्रीक बनाउ';

  @override
  String get gameUiTrueOrFalseBlitz => 'सही या गलत ब्लिट्ज';

  @override
  String get gameUiQuickAnswerQuiz => 'तुरंत उत्तर वला क्विज';

  @override
  String get gameUiCommandMatch => 'कमांड मैच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमांड केँ अर्थ सँ मिलाउ';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'डिफ़ॉल्ट पोर्टक अनुमान लगाउ';

  @override
  String get gameUiTicTacToe => 'टिक-टैक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X शून्य आ क्रॉस कंप्यूटर संग';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चारि डिस्क खसाउ';

  @override
  String get gameUiLudo => 'लूडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट सभक विरुद्ध दौड़ू';

  @override
  String get gameUiChess => 'शतरंज';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'शतरंज बोर्ड, वैध चाल, दू खिलाड़ी';

  @override
  String get gameUiSnakeAndLadders => 'साँप आ सीढ़ी';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'पासा बोर्ड, साँप-सीढ़ी, दू खिलाड़ी';

  @override
  String get gameUiGames => 'खेल 🎮';

  @override
  String get gameUiPlayEarn => 'खेलू आ कमाउ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'खेल खेलू आ बोनस पॉइंट कमाउ!';

  @override
  String get gameUiSearchGames => 'खेल खोजू';

  @override
  String get gameUiClearSearch => 'खोज साफ करू';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" सँ कोनो खेल नहि मिलैत अछि';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'घुमाउ आ बोनस पॉइंट जीतू।';

  @override
  String get gameUiScratchToRevealYourReward => 'अपन इनाम देखबा लेल खरोंचू।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स घुमाउ आ पॉइंट जीतू।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'एकटा रहस्यमय बॉक्स चुनू आ पॉइंट जीतबा लेल सही उत्तर दिअ।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'पॉइंट कमाबक लेल DevOps जोड़ी मिलाउ।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 प्रयास मे DevOps शब्दक अनुमान लगाउ।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिड मे नुकाएल DevOps शब्द ताकू।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 स्तर मे DevOps शब्द ताकबाक लेल स्वाइप करू।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दू चित्रित दृश्यक बीच पाँच बदलाव ताकू।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'साझा कएल गेल HD पशु आ प्रकृतिक चित्र फेर सँ बनाउ।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'स्ट्रीक बनाउ आ अपन पॉइंट सुरक्षित करू।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'तुरंत उत्तर दऽ कए घड़ी केँ हराउ।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'सही या गलत ब्लिट्ज 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमांड केँ ओकर काज सँ मिलाउ।';

  @override
  String get gameUiCommandMatch670a76e => 'कमांड मैच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जान संग डिफ़ॉल्ट पोर्टक अनुमान लगाउ।';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'कंप्यूटरक विरुद्ध O/X खेलू।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जीतबाक लेल एके पाँति मे चारि डिस्क खसाउ।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'अपन गोटी केँ तीन बॉटक विरुद्ध दौड़ाउ।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'वैध चाल संग स्थानीय दू-खिलाड़ी शतरंज।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'वैध नियमक संग दू-खिलाड़ी शतरंज मैच खेलू।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दू-खिलाड़ी पासा बोर्ड खेल।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 धरि दौड़ू। सीढ़ी चढ़ू आ साँप सँ बचू।';

  @override
  String get gameUiPlay => 'खेलू';

  @override
  String get gameUiWheelStopped => 'चक्का रुकि गेल!';

  @override
  String get gameUiYourRewardIs => 'अहाँक इनाम अछि';

  @override
  String get gameUiPOINTS => 'पॉइंट';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ई इनाम पाबक लेल 1 क्विज प्रश्नक सही उत्तर दिअ।';

  @override
  String get gameUiWrongAnswerRewardLost => 'गलत उत्तर = इनाम गेल।';

  @override
  String get gameUiAnswerQuestion => 'प्रश्नक उत्तर दिअ';

  @override
  String get gameUiSpinWheele449982 => '🎡 चक्का घुमाउ';

  @override
  String get gameUiDailySpin => 'दैनिक स्पिन';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'चक्का घुमाउ, फेर अपन इनाम पाबक लेल एकटा प्रश्नक उत्तर दिअ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'अहाँ आजुक स्पिन पहिनहि प्रयोग कऽ चुकल छी।';

  @override
  String get gameUiSpinning => 'घुमि रहल अछि...';

  @override
  String get gameUiSPINNOW => 'अखने घुमाउ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'काल्हि फेर आउ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'आजुक इनाम: ⭐ $value1 पॉइंट';
  }

  @override
  String get gameUiBackToGames => 'खेल पर वापस जाउ';

  @override
  String get gameUiSPIN => 'घुमाउ';

  @override
  String get gameUiRewardRevealed => 'इनाम प्रकट भेल!';

  @override
  String get gameUiYouFound => 'अहाँ पेलहुँ';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्रैच कार्ड';

  @override
  String get gameUiDailyScratch => 'दैनिक स्क्रैच';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'आजुक इनाम देखबा लेल कार्ड खरोंचू!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'अहाँ आजुक स्क्रैच कार्ड पहिनहि प्रयोग कऽ चुकल छी।';

  @override
  String get gameUiAlreadyScratched => 'पहिनहि खरोंचल गेल';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'दोसर इनाम लेल काल्हि फेर आउ।';

  @override
  String get gameUiYouRevealed => 'अहाँ प्रकट कएलहुँ';

  @override
  String get gameUiSCRATCHHERE => 'एतय खरोंचू  👆';

  @override
  String get gameUiJACKPOT777 => 'जैकपॉट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'अहाँक इनाम';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स घुमाउ, फेर इनाम पाबक लेल एकटा प्रश्नक उत्तर दिअ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'अहाँ आइ पहिनहि खेलि चुकल छी।';

  @override
  String get gameUiSPINNING => 'घुमि रहल अछि...';

  @override
  String get gameUiROLLNOW => 'आब रोल करू';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जैकपॉट! 777 अंक उपलब्ध अछि!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'मिस्ट्री डीलक स्थिति जाँच करबामे असमर्थ: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'बॉक्स $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 अंक';
  }

  @override
  String get gameUiStartQuestion => 'प्रश्न शुरू करू';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 मिस्ट्री डील';

  @override
  String get gameUiMysteryDealCompleted => 'मिस्ट्री डील पूरा भेल!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'अहाँ आइ मिस्ट्री डील पहिनहि खेलि चुकल छी।';

  @override
  String get gameUiTodayYouWon => 'आइ अहाँ जीतलहुँ';

  @override
  String get gameUiTodaySReward => 'आइक इनाम';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 अंक';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 अंक गेल';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'दोसर मिस्ट्री बॉक्सक लेल काल्हि घुरि आउ!';

  @override
  String get gameUiChooseYourMysteryBox => 'अपन मिस्ट्री बॉक्स चुनू';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'प्रत्येक बॉक्समे 10 सँ 1000 अंकक बीच एकटा नुकायल इनाम अछि।';

  @override
  String get gameUiPickOnlyOneBox => 'मात्र एकटा बॉक्स चुनू!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सभ $value1 लेवल पूरा भेल!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'लेवल $value1 पूरा भेल!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालिमे पूरा भेल।\nअहाँ $value2 अंक कमेलहुँ!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालिमे पूरा भेल।\nई लेवल पहिनहि पूरा कएल जा चुकल छल।';
  }

  @override
  String get gameUiNextLevel => 'अगिला लेवल';

  @override
  String get gameUiDone => 'भ गेल';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमोरी मैच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सभ 100 लेवल पूरा भेल!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'अहाँ मेमोरी मैचक प्रत्येक लेवल पूरा कएलहुँ। बहुत बढ़ियाँ खेलल!';

  @override
  String get gameUiChooseLevel => 'लेवल चुनू';

  @override
  String gameUiMoves(String value1) {
    return 'चाल: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'लेवल $value1, कुल $value2 मे सँ';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोड़ी';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'लेवल $value1 याद करू';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 मेल खाइत जोड़ी ताकू';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'अध्याय 1 · बिल्ड पाइपलाइन फेरसँ चालू करू';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'अध्याय 2 · क्लाउड प्लेटफॉर्मक स्केल बढ़ाउ';

  @override
  String get gameUiChapter3ProtectProduction => 'अध्याय 3 · प्रोडक्शनक सुरक्षा करू';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'जमा करबाक लेल बाँचल सभ $value1 अक्षरक प्रयोग करू।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सभ लेवल पूरा भेल!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'लेवल $value1 पूरा भेल!';
  }

  @override
  String get gameUiTryAgain => 'फेरसँ प्रयास करू';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्द छल $value1। अहाँ $value2 अंक कमेलहुँ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्द छल $value1। $value3 संकेतक बाद अहाँ $value2 अंक कमेलहुँ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्द छल $value1। $value3 संकेतक बाद अहाँ $value2 अंक कमेलहुँ।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्द छल $value1। लेवल $value2 एखनो अहाँक प्रतीक्षा क रहल अछि।';
  }

  @override
  String get gameUiFinish => 'समाप्त करू';

  @override
  String get gameUiNextLevel254fd73 => 'अगिला लेवल';

  @override
  String get gameUiRetryLevel => 'लेवल फेरसँ खेलू';

  @override
  String get gameUiHowToPlay => 'कोना खेलब';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'प्रत्येक लेवलमे एकटा DevOps शब्द अछि। पाँच अक्षरसँ छोट शब्द बिना कोनो मुफ्त अक्षरक शुरू होइत अछि; लम्बा शब्द एकटा अक्षरक संग शुरू होइत अछि। उत्तर बनाबक लेल अक्षर रैकक प्रयोग करू आ Enter दबाउ। संकेत आओर एकटा अक्षर देखबैत अछि आ अहाँक बैलेंससँ 20 अंक कटैत अछि। प्रत्येक पूरा कएल लेवलसँ 100 अंक भेटैत अछि।';

  @override
  String get gameUiGotIt => 'बुझि गेलहुँ';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सभ $value1 लेवल पूरा भेल!';
  }

  @override
  String get gameUiEasy => 'सरल';

  @override
  String get gameUiMedium => 'मध्यम';

  @override
  String get gameUiHard => 'कठिन';

  @override
  String get gameUiHowToPlay13a6b22 => 'कोना खेलब';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'लेवल $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'इनाम $value1 अंक · प्रयोग कएल संकेत $value2';
  }

  @override
  String get gameUiHint20Pts => 'संकेत · −20 अंक';

  @override
  String get gameUiEnter => 'एंटर';

  @override
  String get gameUiDelete => 'मेटाउ';

  @override
  String get gameUiDragThroughAWord => 'कोनो शब्दक ऊपरसँ ड्रैग करू';

  @override
  String get gameUiDragThroughEachWord => 'प्रत्येक शब्दक ऊपरसँ ड्रैग करू';

  @override
  String get gameUiReleaseToSelect => 'चुनबाक लेल छोड़ू';

  @override
  String gameUiFound(String value1) {
    return '$value1 भेटल';
  }

  @override
  String get gameUiNoWordThere => 'ओतय कोनो शब्द नहि अछि';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 पहिनहि भेटि चुकल अछि';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 ताकू';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सभ लेवल पूरा भेल!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'अहाँ प्रत्येक शब्द ताकि लेलहुँ आ $value1 अंक कमेलहुँ।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'अहाँ प्रत्येक शब्द ताकि लेलहुँ। ई लेवल पहिनहि पूरा कएल जा चुकल छल।';

  @override
  String get gameUiAll500LevelsComplete => 'सभ 500 लेवल पूरा भेल!';

  @override
  String get gameUiReviewLevels => 'लेवल देखू';

  @override
  String gameUiLeft(String value1) {
    return '$value1 बाँचल';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 अंक';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगति सहेजि नहि सकल। कृपया फेरसँ प्रयास करू।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'अहाँ $value1 अंक कमेलहुँ!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'अहाँ ई चित्र पहिनहि पूरा कएने छी। फेरसँ खेलबा पर कोनो अतिरिक्त अंक नहि भेटत।';

  @override
  String get gameUiYouCompletedEveryPicture => 'अहाँ प्रत्येक चित्र पूरा कएलहुँ!';

  @override
  String get gameUiLevels => 'लेवल';

  @override
  String get gameUiPictureB => 'चित्र B';

  @override
  String get gameUiPictureA => 'चित्र A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'चित्र लोड नहि भ सकल। फेरसँ प्रयास करू';

  @override
  String get gameUiResetZoom => 'जूम रीसेट करू';

  @override
  String get gameUiZoomBothPictures => 'दुनू चित्र जूम करू';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'संकेत · प्रति संकेत $value1 अंक';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगति लोड नहि भ सकल। फेरसँ प्रयास करू';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'लेवल $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सभ अंतर भेटि गेल!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count अंतर ताकू। कोनो एक चित्रमे प्रत्येक अंतर पर टैप करू।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'चूक: $value1  ·  संकेत: $value2 (−$value3 अंक)  ·  $value4 लेवल पूरा भेल';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'अगिला लेवल: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'पज़ल $value1 पूरा भेल!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'चित्र $value1 चालिमे पूरा भेल। अहाँ $value2 अंक कमेलहुँ।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'चित्र $value1 चालिमे पूरा भेल।';
  }

  @override
  String get gameUiNextPuzzle => 'अगिला पज़ल';

  @override
  String get gameUiAllPuzzlesComplete => 'सभ पज़ल पूरा भेल';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'पज़लक टुकड़ा $value1, कुल $value2 मे सँ, सही जगह पर राखल';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'पज़लक टुकड़ा $value1, कुल $value2 मे सँ';
  }

  @override
  String get gameUiChoosePuzzle => 'पज़ल चुनू';

  @override
  String get gameUiShufflePieces => 'टुकड़ा सभ फेंटू';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'पहेलीक चित्र लोड करबामे असमर्थ।';

  @override
  String get gameUiPreviousPuzzle => 'पछिला पहेली';

  @override
  String gameUiPuzzle(String value1) {
    return 'पहेली $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चाल';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'टुकड़ा सभकेँ बदलबाक लेल खिंचू, वा दू टा टुकड़ा पर टैप करू।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 पहेली सुलझल  ·  प्रत्येकक $value3 अंक';
  }

  @override
  String get gameUiGameOver => 'खेल समाप्त';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'संख्या छल $value1।\nलगातार जीत: $value2\nअहाँ $value3 अंक कमेलहुँ!\n\nएक आर मौकाक लेल काल्हि फेर आउ!';
  }

  @override
  String get gameUiHigherOrLower => 'बेसी वा कम 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'आइ पहिनहि खेलि चुकल छी!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'अहाँ $value1/$value2/$value3 केँ खेलने रही।\n\nनव लगातार जीत बनेबाक लेल काल्हि फेर आउ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'अहाँ आइ पहिनहि खेलि चुकल छी।\n\nएक आर मौकाक लेल काल्हि फेर आउ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 लगातार जीत: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ अंक: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'की अगिला संख्या बेसी हेतैक वा कम?';

  @override
  String get gameUiLower => 'कम';

  @override
  String get gameUiHigher => 'बेसी';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'सही वा गलत ब्लिट्ज ⚡';

  @override
  String get gameUiTimeSUp => 'समय समाप्त!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'सही उत्तर: $value1\nसर्वश्रेष्ठ लगातार जीत: $value2\n$value3अहाँ $value4 अंक कमेलहुँ!\n\nएक आर राउंडक लेल काल्हि फेर आउ!';
  }

  @override
  String get gameUiStreakBonus20 => 'लगातार जीतक बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'की देखाओल गेल उत्तर सही अछि वा गलत?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 श्रेणीमे $value1 प्रश्न';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'अहाँक लग $value1 सेकंड अछि। प्रत्येक सही उत्तरसँ $value2 अंक भेटैत अछि। गलत उत्तरसँ $value3 सेकंड घटि जाइत अछि। लगातार 5 सही उत्तर पर +20 बोनस भेटैत अछि।';
  }

  @override
  String get gameUiRoundTimer => 'राउंड टाइमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सेकंड';
  }

  @override
  String get gameUiStart => 'शुरू करू';

  @override
  String get gameUiTrue => 'सही';

  @override
  String get gameUiFalse => 'गलत';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमांड मिलान 🔗';

  @override
  String get gameUiAllMatched => 'सभ मिलि गेल!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'गलती: $value1\nअहाँ $value2 अंक कमेलहुँ!\n\nनव कमांडक लेल काल्हि फेर आउ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'राउंड $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'एकटा कमांड पर टैप करू, फेर ओकर अर्थ पर टैप करू।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'आब मेल खाइत अर्थ पर टैप करू।';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जीवन समाप्त';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'सही उत्तर: $value1\nअहाँ $value2 अंक कमेलहुँ!\n\nएक आर राउंडक लेल काल्हि फेर आउ!';
  }

  @override
  String get gameUiYouEarned10Points => 'अहाँ 10 अंक कमेलहुँ!';

  @override
  String get gameUiYouWin => 'अहाँ जीति गेलहुँ!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जीतल!';
  }

  @override
  String get gameUiXWins => 'X जीतल!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जीतल!';
  }

  @override
  String get gameUiComputerWins => 'कंप्यूटर जीतल';

  @override
  String get gameUiOWins => 'O जीतल!';

  @override
  String get gameUiPlayer2OWins => 'खिलाड़ी 2 (O) जीतल!';

  @override
  String get gameUiItSADraw => 'ई बराबरी अछि';

  @override
  String get gameUiYourTurn => 'अहाँक बारी';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 क बारी';
  }

  @override
  String get gameUiComputerIsThinking => 'कंप्यूटर सोचि रहल अछि';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खिलाड़ी $value1 केँ चाल चलबाक अछि';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 केँ चाल चलबाक अछि';
  }

  @override
  String get gameUiPlayer2ToMove => 'खिलाड़ी 2 केँ चाल चलबाक अछि';

  @override
  String get gameUiNewRound => 'नव राउंड';

  @override
  String get gameUiVsComputer => 'कंप्यूटरक विरुद्ध';

  @override
  String get gameUi2Players => '2 खिलाड़ी';

  @override
  String get gameUiYou => 'अहाँ';

  @override
  String get gameUiDraws => 'बराबरी';

  @override
  String get gameUiPlayer2 => 'खिलाड़ी 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'खाना $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'फेर खेलू';

  @override
  String get gameUiConnectFourWin20Points => 'कनेक्ट फोर जीत: 20 अंक!';

  @override
  String get gameUiBotWins => 'बॉट जीतल!';

  @override
  String get gameUiRed => 'लाल';

  @override
  String get gameUiYellow => 'पीयर';

  @override
  String get gameUiBoardFullDraw => 'बोर्ड भरि गेल — बराबरी';

  @override
  String get gameUiBotIsThinking => 'बॉट सोचि रहल अछि';

  @override
  String get gameUiBotTurn => 'बॉटक बारी';

  @override
  String get gameUiNewGame => 'नव खेल';

  @override
  String get gameUiVsBot => 'बॉटक विरुद्ध';

  @override
  String get gameUi2Player => '2 खिलाड़ी';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बॉटक विरुद्ध खेलू · डिस्क खसेबाक लेल कॉलम पर टैप करू';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दू खिलाड़ी · डिस्क खसेबाक लेल कॉलम पर टैप करू';

  @override
  String gameUiColumn(String value1) {
    return 'कॉलम $value1';
  }

  @override
  String get gameUiYouRed => 'अहाँ · लाल';

  @override
  String get gameUiRedPlayer1 => 'लाल · खिलाड़ी 1';

  @override
  String get gameUiBotYellow => 'बॉट · पीयर';

  @override
  String get gameUiYellowPlayer2 => 'पीयर · खिलाड़ी 2';

  @override
  String get gameUiLudoMatchStats => 'लूडो मैचक आँकड़ा';

  @override
  String get gameUiNoCompletedMatchesYet => 'एखन धरि कोनो मैच पूरा नहि भेल अछि।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेलल $value1  ·  जीतल $value2  ·  हारल $value3';
  }

  @override
  String get gameUiClose => 'बंद करू';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लूडो चैंपियन! अहाँ 50 अंक कमेलहुँ।';

  @override
  String get gameUiNewLudoGame => 'नव लूडो खेल';

  @override
  String get gameUiBotOpponents => 'बॉट विरोधी';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नव मैच शुरू केला सँ अहाँक सहेजल खेल बदलि जाएत।';

  @override
  String get gameUiCancel => 'रद्द करू';

  @override
  String get gameUiStartGame => 'खेल शुरू करू';

  @override
  String get gameUiPlayerColours => 'खिलाड़ीक रंग';

  @override
  String get gameUiApply => 'लागू करू';

  @override
  String get gameUiMatchStats => 'मैचक आँकड़ा';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेट सँ जीतल';
  }

  @override
  String get gameUiBlack => 'कारी';

  @override
  String get gameUiWhite => 'उज्जर';

  @override
  String get gameUiComputerWinsByCheckmate => 'कंप्यूटर चेकमेट सँ जीतल';

  @override
  String get gameUiYouWinByCheckmate => 'अहाँ चेकमेट सँ जीतलहुँ';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेट सँ बराबरी';

  @override
  String get gameUiDraw => 'बराबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · चेक';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'चेकमेट! अहाँ 50 अंक अर्जित कयलहुँ।';

  @override
  String get gameUiStartANewGame => 'नव खेल शुरू करी?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खिलाड़ी मोड बदलला सँ सहेजल मैच बदलि जाइत अछि।';

  @override
  String get gameUiComputer => 'कम्प्युटर';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · उज्जर / खिलाड़ी 2 · कारी';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'अहाँ उज्जर छी · कम्प्युटर कारी अछि';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (उज्जर) · कम्प्युटर (कारी)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'अहाँ कारी छी · कम्प्युटर उज्जर अछि';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (कारी) · कम्प्युटर (उज्जर)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 पहिने पासा फेकत';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 फेर पासा फेकत';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 केँ पासा फेकबाक अछि';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'साँप आ सीढ़ी मे जीत: 100 अंक!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खिलाड़ी बदलला सँ सहेजल खेल बदलि जाइत अछि।';

  @override
  String get gameUiStartANewLevel => 'नव स्तर शुरू करी?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'स्तर बदलला सँ सहेजल खेल बदलि जाइत अछि।';

  @override
  String get gameUiChangeLevel => 'स्तर बदलू';

  @override
  String get gameUiPlayers => 'खिलाड़ी';

  @override
  String get gameUiPlayAgainstBot => 'बॉट विरुद्ध खेलू';

  @override
  String get gameUi3Players => '3 खिलाड़ी';

  @override
  String get gameUi4Players => '4 खिलाड़ी';

  @override
  String get gameUiLevel1709305 => 'स्तर';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'स्तर $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 खिलाड़ी · स्तर $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · पासा फेकू';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 पर $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रश्न लोड करबा मे असमर्थ: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'सही उत्तर!';

  @override
  String get gameUiWrongAnswer => 'गलत उत्तर';

  @override
  String get gameUiYouClaimedYourReward => 'अहाँ अपन पुरस्कार प्राप्त कयलहुँ!';

  @override
  String get gameUiAddedToYourTotalPoints => 'अहाँक कुल अंक मे जोड़ल गेल।';

  @override
  String get gameUiTheCorrectAnswerWas => 'सही उत्तर छल:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 अंकक पुरस्कार हरा गेल।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'अहाँक मौजूदा अंक नहि घटाओल गेल।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'काल्हि घुरि कऽ आउ आ फेर प्रयास करू।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रश्न लोड करबा मे असमर्थ।';

  @override
  String get gameUiYourReward677fa6e => 'अहाँक पुरस्कार';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 अंक';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'एकरा प्राप्त करबाक लेल सही उत्तर दिअ!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'एक आर राउंडक लेल काल्हि घुरि कऽ आउ।';

  @override
  String get gameUiGreen => 'हरियर';

  @override
  String get gameUiBlue => 'नीला';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 सोचि रहल अछि';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: एकटा गोटी चुनू';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: पासा फेकू';
  }

  @override
  String gameUiDice(String value1) {
    return 'पासा $value1';
  }

  @override
  String get gameUiRollDice => 'पासा फेकू';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 गोटी $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'खेलाड़ी $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'बॉट $value1';
  }

  @override
  String get gameUiBot => 'बॉट';

  @override
  String get gameUiHintInsufficientPoints => 'संकेत प्रयोग करबाक लेल अहाँकेँ 20 अंक चाही।';

  @override
  String get gameUiHintPurchaseFailed => 'संकेत नहि कीनल जा सकल। कृपया फेर प्रयास करू।';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'वजीर';

  @override
  String get gameUiChessRook => 'हाथी';

  @override
  String get gameUiChessBishop => 'ऊँट';

  @override
  String get gameUiChessKnight => 'घोड़ा';

  @override
  String get gameUiChessPawn => 'प्यादा';

  @override
  String get gameUiChessEmpty => 'खाली';

  @override
  String get gameSceneLampAndFlowers => 'दीप आ फूल';

  @override
  String get gameSceneGardenFriends => 'बगीचाक संगी';

  @override
  String get gameSceneUnderwaterExplorers => 'पानिक नीचाँक अन्वेषक';

  @override
  String get gameSceneOceanOrca => 'समुद्री ओर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'चारागाहमे लोमड़ी';

  @override
  String get gameSceneYellowSubmarine => 'पीयर पनडुब्बी';

  @override
  String get gameSceneTurkeyInTheClearing => 'खाली जगहमे टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारीक पानि पीबाक ठाम';

  @override
  String get gameSceneJungleCompanions => 'जंगलक साथी';

  @override
  String get gameSceneGoldenPuppyGarden => 'सुनहरा कुकुरक बच्चाक बगीचा';

  @override
  String get gameSceneSeaTurtleReef => 'समुद्री कछुआक चट्टान';

  @override
  String get gameSceneCoralReefFriends => 'मूंगा चट्टानक संगी';

  @override
  String get gameSceneSharedClownfish => 'साझा क्लाउनफिश';

  @override
  String get gameSceneLittleDinosaur => 'छोट डायनासोर';

  @override
  String get gameSceneSafariCompanions => 'सफारीक साथी';

  @override
  String get gameSceneSwirlingFlowers => 'घुमैत फूल';

  @override
  String get gameSceneGardenKitten => 'बगीचाक बिलाड़िक बच्चा';

  @override
  String get gameSceneBlueOcean => 'नील समुद्र';

  @override
  String get gameSceneCastlePrincess => 'किलाक राजकुमारी';

  @override
  String get gameSceneRedCar => 'लाल गाड़ी';

  @override
  String get gameSceneGardenPuppy => 'बगीचाक कुकुरक बच्चा';

  @override
  String get gameSceneSpaceExplorer => 'अंतरिक्ष अन्वेषक';

  @override
  String get gameSceneEnchantedReadingForest => 'मंत्रमुग्ध पठन वन';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनंत चक्र';

  @override
  String get gameSceneAnsible => 'एन्सिबल';

  @override
  String get gameSceneAws => 'एडब्ल्यूएस';

  @override
  String get gameSceneAzure => 'एज़्योर';

  @override
  String get gameSceneBashScripting => 'बैश स्क्रिप्टिंग';

  @override
  String get gameSceneDocker => 'डॉकर';

  @override
  String get gameSceneGcp => 'जीसीपी';

  @override
  String get gameSceneGit => 'गिट';

  @override
  String get gameSceneHybridCloud => 'हाइब्रिड क्लाउड';

  @override
  String get gameSceneIbmCloud => 'आईबीएम क्लाउड';

  @override
  String get gameSceneJavascript => 'जावास्क्रिप्ट';

  @override
  String get gameSceneJenkins => 'जेनकिन्स';

  @override
  String get gameSceneKubernetes => 'कुबेरनेट्स';

  @override
  String get gameSceneLinux => 'लिनक्स';

  @override
  String get gameSceneMultiCloud => 'मल्टी क्लाउड';

  @override
  String get gameSceneNetworking => 'नेटवर्किंग';

  @override
  String get gameSceneOracleCloud => 'ओरेकल क्लाउड';

  @override
  String get gameScenePerl => 'पर्ल';

  @override
  String get gameScenePowershell => 'पावरशेल';

  @override
  String get gameScenePython => 'पाइथन';

  @override
  String get gameSceneRuby => 'रूबी';

  @override
  String get gameSceneTerraform => 'टेराफॉर्म';

  @override
  String get gameSceneWinterFestivalFair => 'शीतकालीन उत्सव मेला';

  @override
  String get gameSceneArmoredHeroCloseUp => 'कवचधारी नायकक नजदीकी दृश्य';

  @override
  String get gameSceneArmoredHeroInCrimson => 'गाढ़ लाल रंगमे कवचधारी नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गाढ़ चम्पाक फूल';

  @override
  String get gameSceneMangroveBoardwalk => 'मैंग्रोव काठक रस्ता';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबंधीय ताड़क प्रतिबिंब';

  @override
  String get gameSceneMaskedFigureInShadow => 'छाँहमे नकाबपोश आकृति';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूर्यास्तक समय बिजलीवला साथी';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक आ आगिक ड्रैगन';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्नजड़ित कुश्तीक नकाब';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'लाल कूचीक रेखामे पहलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुश्तीक विजेताक सलामी';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरीमे भोर';

  @override
  String get gameSceneGreenhousePottingBench => 'ग्रीनहाउसक गमला लगेबाक मेज';

  @override
  String get gameSceneHarborFishingBoat => 'बंदरगाहक माछ पकड़बाक नाह';

  @override
  String get gameSceneAtticObservatory => 'अटारीक वेधशाला';

  @override
  String get gameSceneToyMakerSWorkshop => 'खिलौना बनौनिहारक कार्यशाला';

  @override
  String get gameSceneWoodlandCampsite => 'जंगलक शिविर स्थल';

  @override
  String get gameSceneAfternoonMusicRoom => 'दुपहरिया संगीत कक्ष';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुद्र तटक आइसक्रीम स्टैंड';

  @override
  String get gameSceneLibraryReadingNook => 'पुस्तकालयक पढ़बाक कोन';

  @override
  String get gameSceneSewingStudio => 'सिलाइ स्टूडियो';

  @override
  String get gameSceneFruitMarket => 'फलक बजार';

  @override
  String get gameSceneKoiCourtyard => 'कोई माछक आँगन';

  @override
  String get gameSceneArtistSAtelier => 'कलाकारक कार्यशाला';

  @override
  String get gameSceneMountainRailway => 'पहाड़ी रेलवे';

  @override
  String get gameSceneCountryKitchen => 'देहाती रसोई';

  @override
  String get gameScenePotteryWorkshop => 'मिट्टीक बर्तन बनेबाक कार्यशाला';

  @override
  String get gameSceneBeachPicnic => 'समुद्र तटपर पिकनिक';

  @override
  String get gameSceneFlowerShop => 'फूलक दोकान';

  @override
  String get gameSceneClockmakerSWorkshop => 'घड़ी बनौनिहारक कार्यशाला';

  @override
  String get gameSceneRainyCafeTerrace => 'बरखा बला कैफे छत';

  @override
  String get gameSceneCastleHerbGarden => 'किलाक जड़ी-बूटीक बगीचा';

  @override
  String get gameSceneClassroomArtCorner => 'कक्षाक कला कोन';

  @override
  String get gameSceneAquariumShop => 'एक्वेरियमक दोकान';

  @override
  String get gameSceneAutumnLeafCollection => 'शरद ऋतुक पातक संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चान्दक नीचाँ एकसर गाछ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'डारिपर शरद ऋतुक फूल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हरियर पातक बीच लोमड़ी';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कुमुदिनीसँ ढाकल झीलपर डोंगी';

  @override
  String get gameSceneDewDropsOnALeaf => 'पातपर ओसक बूँद';

  @override
  String get gameSceneStagInATurquoiseLake => 'फिरोजी झीलमे हरिण';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'नारंगी चान्दक नीचाँ साइकिल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'घाटीक ऊपर सफेद बाघ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'नील जलमे दू टा गाछ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'वफादार कुकुरक कात माछ मारब';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'पहाड़ी झीलक कात कुमुदिनी';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदी तटपर हरिण';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूर्यास्तक समय उष्णकटिबंधीय झोपड़ी';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'अल्पाइन घाटीकेँ निहारैत लोमड़ी';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मंत्रमुग्ध करयबला उपवनसँ सूर्यास्त';

  @override
  String get learningControlTitle => 'DevOps सीखू';

  @override
  String get learningControlAllCategories => 'सभ श्रेणी';

  @override
  String get learningControlSearchCards => 'कार्ड खोजू';

  @override
  String get learningControlClearSearch => 'खोज मेटाउ';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सभ कार्ड देखाउ';

  @override
  String learningControlShowSaved(int count) {
    return 'सहेजल कार्ड देखाउ ($count)';
  }

  @override
  String get learningControlShuffleOff => 'शफल बंद करू';

  @override
  String get learningControlShuffleOn => 'कार्ड शफल करू';

  @override
  String get learningControlAutoOff => 'ऑटो स्वाइप बंद करू';

  @override
  String get learningControlAutoOn => 'हर 10 सेकेंडपर ऑटो स्वाइप';

  @override
  String get learningControlNoSaved => 'एखन धरि कोनो कार्ड सहेजल नहि गेल अछि';

  @override
  String get learningControlNoMatches => 'कोनो मिलैत कार्ड नहि भेटल';

  @override
  String get learningControlResetFilters => 'फिल्टर रीसेट करू';

  @override
  String get learningControlPrevious => 'पछिला';

  @override
  String get learningControlNext => 'अगिला';

  @override
  String get learningControlProgress => 'प्रगति';

  @override
  String get learningControlRemoveSaved => 'सहेजलसँ हटाउ';

  @override
  String get learningControlSaveCard => 'कार्ड सहेजू';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कॉपी करू';

  @override
  String get learningControlExampleCopied => 'उदाहरण कॉपी भेल';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'लेवल $value1 पूरा भेल';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'लेवल $value1 खेलू';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलॉक करबाक लेल लेवल $value1 पूरा करू';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दैनिक लॉगिन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'घुरि कऽ अएबाक लेल धन्यवाद!';

  @override
  String get sharedDialogDailyRewardAdded => 'अहाँक दैनिक पुरस्कार अहाँक कुल प्वाइंट मे जोड़ि देल गेल अछि।';

  @override
  String get sharedDialogAwesome => 'शानदार!';

  @override
  String get accountWelcomeGuest => 'अतिथि';

  @override
  String get accountWelcomeGuestUser => 'अतिथि उपयोगकर्ता';

  @override
  String get accountWelcomeUser => 'उपयोगकर्ता';

  @override
  String get accountWelcomePlayingAsGuest => 'अतिथिक रूप मे खेलि रहल छी';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खाता जोड़ू';

  @override
  String get accountWelcomeGoogleConnected => 'Google खाता सफलतापूर्वक जुड़ि गेल! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द कएल गेल।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'जोड़बा मे विफल: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट करू';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट करी?';

  @override
  String get accountWelcomeSignOutMessage => 'की अहाँ सचमुच साइन आउट करय चाहैत छी? अपन सहेजल प्रगति धरि पहुँचबाक लेल अहाँ केँ फेर सँ साइन इन करय पड़त।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट विफल रहल: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ऐप डेटा रीसेट करी?';

  @override
  String get accountWelcomeResetAppMessage => 'एहि सँ अहाँक सभ अंक, स्ट्रीक, गेम इतिहास आ सेटिंग्स स्थायी रूप सँ मेटा जाएत। अहाँ साइन आउट भऽ जाएब आ प्रारंभ स्क्रीन पर वापस चल जाएब। एकरा वापस नहि कएल जा सकैत अछि।';

  @override
  String get accountWelcomeResetEverything => 'सभ किछु रीसेट करू';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रीसेट विफल रहल: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द करू';

  @override
  String get accountWelcomeResetAppData => 'ऐप डेटा रीसेट करू';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सभ अंक, स्ट्रीक आ सेटिंग्स साफ करू';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ऐप';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अनुवाद एखन उपलब्ध नहि अछि';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google केर संग जारी राखू';

  @override
  String get accountWelcomeSigningIn => 'साइन इन भऽ रहल अछि...';

  @override
  String get accountWelcomeOr => 'वा';

  @override
  String get accountWelcomeContinueAsGuest => 'अतिथिक रूप मे जारी राखू';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'अहाँ बाद मे अपन प्रोफाइल सँ साइन इन कऽ सकैत छी।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'अहाँ अतिथिक रूप मे शुरू कऽ सकैत छी आ बाद मे साइन इन कऽ सकैत छी।';

  @override
  String get accountWelcomeGreetingGuest => 'स्वागत अछि';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'स्वागत अछि, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूरा भेल, मुदा कोनो उपयोगकर्ता खाता वापस नहि भेटल।';

  @override
  String get accountWelcomeErrorEmailExists => 'एहि ईमेल मे पहिने सँ दोसर साइन-इन तरीका सँ खाता अछि।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ई Google खाता पहिने सँ दोसर खाता सँ जुड़ल अछि।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण क्रेडेंशियल अमान्य अछि वा समाप्त भऽ गेल अछि।';

  @override
  String get accountWelcomeErrorUserDisabled => 'ई खाता निष्क्रिय कऽ देल गेल अछि।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन एखन सक्षम नहि अछि।';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क त्रुटि। कृपया अपन इंटरनेट कनेक्शन जाँचू आ पुनः प्रयास करू।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'बहुत बेसी साइन-इन प्रयास। कृपया प्रतीक्षा करू आ पुनः प्रयास करू।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'कोनो अतिरिक्त त्रुटि जानकारी नहि।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन विफल रहल।\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन त्रुटि:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'अतिथिक रूप मे जारी राखब मे असमर्थ। कृपया पुनः प्रयास करू।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन शीघ्र उपलब्ध होएत।';

  @override
  String get accountWelcomeLoginTagline => 'सीखू • अभ्यास करू • प्रतिस्पर्धा करू • कमाउ';

  @override
  String get accountWelcomeCountryRegion => 'देश / क्षेत्र';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / क्षेत्र: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश खोजू';

  @override
  String get accountWelcomeCountryNotSelected => 'चयनित नहि';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz किएक?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ अभ्यास प्रश्न';

  @override
  String get accountWelcomeFeatureLanguages => 'बहु-भाषा समर्थन';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रीक आ लीडरबोर्ड';

  @override
  String get accountWelcomeFeatureGames => 'गेम आ चुनौती';

  @override
  String get accountWelcomeFeatureCloud => 'क्लाउड आ DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस आ पुरस्कार';

  @override
  String get accountWelcomePracticeOnTheGo => 'कतहु अभ्यास करू';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ऐप इंस्टॉल करू आ कतहु ऑफलाइन सीखू।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play पर पाबू';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिनक स्ट्रीक';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days-दिनक स्ट्रीक बनाए राखू।';
  }

  @override
  String get achLocYearStreakTitle => '1 वर्षक स्ट्रीक';

  @override
  String get achLocFirstQuizTitle => 'पहिल क्विज';

  @override
  String get achLocFirstQuizDescription => 'अपन पहिल क्विज पूरा करू।';

  @override
  String get achLocQuiz10Title => 'क्विज एक्सप्लोरर';

  @override
  String get achLocQuiz10Description => '10 टा क्विज पूरा करू।';

  @override
  String get achLocPoints1000Title => '1000 अंक';

  @override
  String get achLocPoints1000Description => 'क्विज मे कुल 1000 अंक अर्जित करू।';

  @override
  String get achLocPerfectScoreTitle => 'पूर्ण स्कोर';

  @override
  String get achLocPerfectScoreDescription => 'कोनो क्विज मे 100% स्कोर करू।';

  @override
  String get achLocQuiz25Title => 'क्विज उत्साही';

  @override
  String get achLocQuiz25Description => '25 टा क्विज पूरा करू।';

  @override
  String get achLocQuiz50Title => 'क्विज मास्टर';

  @override
  String get achLocQuiz50Description => '50 टा क्विज पूरा करू।';

  @override
  String get achLocQuiz100Title => 'सेंचुरी क्लब';

  @override
  String get achLocQuiz100Description => '100 टा क्विज पूरा करू।';

  @override
  String get achLocQuiz250Title => 'क्विज लेजेंड';

  @override
  String get achLocQuiz250Description => '250 टा क्विज पूरा करू।';

  @override
  String get achLocPoints5000Title => '5,000 अंक';

  @override
  String get achLocPoints5000Description => 'कुल 5,000 अंक अर्जित करू।';

  @override
  String get achLocPoints10000Title => '10,000 अंक';

  @override
  String get achLocPoints10000Description => 'कुल 10,000 अंक अर्जित करू।';

  @override
  String get achLocPoints50000Title => '50,000 अंक';

  @override
  String get achLocPoints50000Description => 'कुल 50,000 अंक अर्जित करू।';

  @override
  String get achLocPoints100000Title => '100,000 अंक';

  @override
  String get achLocPoints100000Description => 'कुल 100,000 अंक अर्जित करू।';

  @override
  String get achLocDaily1Title => 'डेली स्टार्टर';

  @override
  String get achLocDaily1Description => 'अपन पहिल डेली क्विज पूरा करू।';

  @override
  String get achLocDaily7Title => 'डेली आदति';

  @override
  String get achLocDaily7Description => '7 टा डेली क्विज पूरा करू।';

  @override
  String get achLocDaily30Title => 'डेली चैंपियन';

  @override
  String get achLocDaily30Description => '30 टा डेली क्विज पूरा करू।';

  @override
  String get achLocSets5Title => 'सेट स्टार्टर';

  @override
  String get achLocSets5Description => '5 टा क्विज सेट पूरा करू।';

  @override
  String get achLocSets25Title => 'सेट कलेक्टर';

  @override
  String get achLocSets25Description => '25 टा क्विज सेट पूरा करू।';

  @override
  String get achLocSets50Title => 'सेट मास्टर';

  @override
  String get achLocSets50Description => '50 टा क्विज सेट पूरा करू।';

  @override
  String get achLocSets100Title => 'सेट लेजेंड';

  @override
  String get achLocSets100Description => '100 टा क्विज सेट पूरा करू।';

  @override
  String get achLocCert1Title => 'पहिल प्रमाणपत्र';

  @override
  String get achLocCert1Description => 'अपन पहिल श्रेणी प्रमाणपत्र अर्जित करू।';

  @override
  String get achLocCert5Title => 'प्रमाणित प्रो';

  @override
  String get achLocCert5Description => '5 टा श्रेणी प्रमाणपत्र अर्जित करू।';

  @override
  String get achLocCert21Title => 'पूर्ण प्रमाणित';

  @override
  String get achLocCert21Description => 'सभ 21 श्रेणी मे प्रमाणपत्र अर्जित करू।';

  @override
  String get achLocThemeFreeValentinesWeek => 'प्रत्येक वर्ष Feb 7-14 केँ निःशुल्क';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'प्रत्येक वर्ष Mar 8-15 केँ निःशुल्क';

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
  String get achLocThemeTea => 'चाह';

  @override
  String get achLocThemeOcean => 'ओशन';

  @override
  String get achLocThemeSolarFlare => 'सोलर फ्लेयर';

  @override
  String get achLocThemeForest => 'फॉरेस्ट';

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
  String get achLocThemeDarkGrey => 'गहींर धूसर';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'वैलेंटाइन डे';

  @override
  String get achLocThemeDqSpecial => 'डीक्यू स्पेशल';

  @override
  String get achLocThemeArmy => 'आर्मी';

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
  String get achLocThemeScarletWitch => 'स्कारलेट विच';

  @override
  String get achLocThemeVision => 'विज़न';

  @override
  String get achLocThemeAntMan => 'एंट-मैन';

  @override
  String get achLocThemeCaptainMarvel => 'कैप्टन मार्वल';

  @override
  String get achLocThemeDoctorStrange => 'डॉक्टर स्ट्रेंज';

  @override
  String get achLocThemeAvengers => 'एवेंजर्स';

  @override
  String get achLocThemeBatman => 'बैटमैन';

  @override
  String get achLocThemeSuperman => 'सुपरमैन';

  @override
  String get achLocThemeWonderWoman => 'वंडर वूमन';

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
  String get achLocThemeDc => 'डीसी हीरोज';

  @override
  String get achLocThemeRainbow => 'इन्द्रधनुष';

  @override
  String get achLocThemeDiamond => 'हीरा';

  @override
  String get achLocThemeLegendary => 'महान गाथा-योग्य';

  @override
  String get gameHintCmd001LsLa => 'सभ फाइल विवरणक संग सूचीबद्ध करू';

  @override
  String get gameHintCmd002Grep => 'पैटर्न सँ पाठ तकू';

  @override
  String get gameHintCmd003Chmod => 'फाइलक अनुमति बदलू';

  @override
  String get gameHintCmd004DfH => 'खाली डिस्क स्थान देखाउ';

  @override
  String get gameHintCmd005TailF => 'बढ़ैत लॉग फाइलक अनुसरण करू';

  @override
  String get gameHintCmd006PsAux => 'चलि रहल प्रक्रिया सूचीबद्ध करू';

  @override
  String get gameHintCmd007GitClone => 'दूरस्थ रिपॉजिटरीक प्रतिलिपि बनाउ';

  @override
  String get gameHintCmd008GitStash => 'बिना कमिट कएल बदलाव अलग राखू';

  @override
  String get gameHintCmd009GitRebase => 'नव आधार पर कमिट फेर लागू करू';

  @override
  String get gameHintCmd010GitBlame => 'देखाउ जे प्रत्येक पंक्ति के बदलने अछि';

  @override
  String get gameHintCmd011DockerPs => 'चलि रहल कंटेनर सूचीबद्ध करू';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile सँ इमेज बनाउ';

  @override
  String get gameHintCmd013DockerLogs => 'कंटेनरक आउटपुट देखाउ';

  @override
  String get gameHintCmd014DockerExec => 'कंटेनरक भीतर कमांड चलाउ';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेसक पॉड सूचीबद्ध करू';

  @override
  String get gameHintCmd016KubectlApply => 'फाइल सँ संसाधन बनाउ';

  @override
  String get gameHintCmd017KubectlDescribe => 'संसाधनक विस्तृत जानकारी देखाउ';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिकाक संख्या बदलू';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोवाइडर डाउनलोड करू आ सेटअप करू';

  @override
  String get gameHintCmd020TerraformPlan => 'इन्फ्रास्ट्रक्चर बदलावक पूर्वावलोकन करू';

  @override
  String get gameHintCmd021TerraformApply => 'इन्फ्रास्ट्रक्चर बनाउ वा अपडेट करू';

  @override
  String get gameHintCmd022TerraformDestroy => 'प्रबंधित इन्फ्रास्ट्रक्चर हटाउ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ऑटोमेशन प्लेबुक चलाउ';

  @override
  String get gameHintCmd024Ping => 'ICMP सँ पहुँच जाँचू';

  @override
  String get gameHintCmd025Traceroute => 'होस्ट तक जाइबला रास्ता देखाउ';

  @override
  String get gameHintCmd026Curl => 'URL सँ डेटा स्थानांतरित करू';

  @override
  String get gameHintCmd027Ssh => 'दूरस्थ मशीन मे सुरक्षित रूप सँ लॉग इन करू';

  @override
  String get gameHintCmd028CrontabE => 'निर्धारित काज सभ संपादित करू';

  @override
  String get gameHintCmd029SystemctlStatus => 'सेवाक स्थिति जाँचू';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes मे चार्ट तैनात करू';

  @override
  String get gameHintWord001Git => 'सोर्स कोड मे बदलाव केँ ट्रैक करैत अछि।';

  @override
  String get gameHintWord002Aws => 'Amazon क क्लाउड प्लेटफॉर्म।';

  @override
  String get gameHintWord003Api => 'एकटा समझौता जे सॉफ्टवेयर प्रणाली सभ केँ आपस मे संवाद करऽ दैत अछि।';

  @override
  String get gameHintWord004Dns => 'डोमेन नाम केँ IP पता मे बदलैत अछि।';

  @override
  String get gameHintWord005Cli => 'कमांड चलाबए लेल पाठ-आधारित इंटरफेस।';

  @override
  String get gameHintWord006Cpu => 'निर्देश निष्पादित करएबला प्रोसेसर।';

  @override
  String get gameHintWord007Ram => 'चलि रहल प्रोग्राम द्वारा प्रयुक्त अस्थायी मेमोरी।';

  @override
  String get gameHintWord008Ssh => 'दूरस्थ शेल पहुँच लेल सुरक्षित प्रोटोकॉल।';

  @override
  String get gameHintWord009Yaml => 'मनुष्य द्वारा पढ़’ योग्य डेटा सीरियलाइजेशन फॉर्मेट।';

  @override
  String get gameHintWord010Linux => 'ओपन-सोर्स ऑपरेटिंग सिस्टम कर्नेल आ ओकर परिवार।';

  @override
  String get gameHintWord011Bash => 'एकटा लोकप्रिय Unix कमांड शेल।';

  @override
  String get gameHintWord012Cloud => 'नेटवर्क पर माँग अनुसार उपलब्ध कंप्यूटिंग।';

  @override
  String get gameHintWord013Docker => 'कंटेनर बनाबए आ चलाबए लेल प्लेटफॉर्म।';

  @override
  String get gameHintWord014Azure => 'Microsoft क क्लाउड प्लेटफॉर्म।';

  @override
  String get gameHintWord015Python => 'व्यापक रूप सँ प्रयुक्त स्क्रिप्टिंग आ प्रोग्रामिंग भाषा।';

  @override
  String get gameHintWord016Github => 'एकटा लोकप्रिय होस्टेड Git सहयोग सेवा।';

  @override
  String get gameHintWord017Bgp => 'रूटिंग प्रोटोकॉल जे स्वायत्त प्रणाली सभक बीच रूट आदान-प्रदान करैत अछि।';

  @override
  String get gameHintWord018Jenkins => 'ऑटोमेशन सर्वर जे प्रायः CI लेल प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord019Port => 'नेटवर्क सेवा द्वारा प्रयुक्त क्रमांकित अंतिम बिंदु।';

  @override
  String get gameHintWord020Proxy => 'सर्वर जे क्लाइंट लेल अनुरोध आगू पठबैत अछि।';

  @override
  String get gameHintWord021Cache => 'बेर-बेर प्रयुक्त डेटा लेल तेज भंडार।';

  @override
  String get gameHintWord022Cron => 'बेर-बेर चलएबला कमांड लेल Unix शेड्यूलर।';

  @override
  String get gameHintWord023Bicep => 'इन्फ्रास्ट्रक्चर एज कोड लेल Azure क घोषणात्मक भाषा।';

  @override
  String get gameHintWord024Apigee => 'केंद्रीकृत API प्रबंधन लेल Google Cloud प्लेटफॉर्म।';

  @override
  String get gameHintWord025Root => 'Unix-जकाँ प्रणाली पर विशेषाधिकार प्राप्त प्रशासक खाता।';

  @override
  String get gameHintWord026Nginx => 'वेब सर्वर आ रिवर्स प्रॉक्सी।';

  @override
  String get gameHintWord027Redis => 'इन-मेमोरी डेटा भंडार जे प्रायः कैश रूप मे प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेशनल डेटाबेस प्रणाली।';

  @override
  String get gameHintWord029Ruby => 'प्रोग्रामिंग भाषा जे Chef जकाँ उपकरण मे प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord030Helm => 'पैकेज मैनेजर जे सामान्यतः Kubernetes संग प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord031Pod => 'Kubernetes मे सभ सँ छोट तैनात करबा योग्य इकाई।';

  @override
  String get gameHintWord032Image => 'कंटेनर बनाबए लेल प्रयुक्त मात्र-पठनीय टेम्पलेट।';

  @override
  String get gameHintWord033Build => 'सोर्स आ निर्भरता सँ आर्टिफैक्ट बनबैत अछि।';

  @override
  String get gameHintWord034Deploy => 'एप्लिकेशन केँ कोनो परिवेश मे जारी करैत अछि।';

  @override
  String get gameHintWord035Terraform => 'इन्फ्रास्ट्रक्चर एज कोड लेल HashiCorp क उपकरण।';

  @override
  String get gameHintWord036Ansible => 'एजेंट-रहित ऑटोमेशन आ कॉन्फ़िगरेशन उपकरण।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes लेल कमांड-लाइन क्लाइंट।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform क संक्षिप्त रूप।';

  @override
  String get gameHintWord039Gitops => 'संचालन मॉडल जे Git केँ सत्यक स्रोत मानैत अछि।';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, टेस्ट आ रिलीज चरण सभक स्वचालित क्रम।';

  @override
  String get gameHintWord041Container => 'निर्भरता सहित पैकेज कएल गेल पृथक प्रक्रिया।';

  @override
  String get gameHintWord042Cluster => 'साझा प्रणाली रूप मे प्रबंधित मशीन सभक समूह।';

  @override
  String get gameHintWord043Ingress => 'बाहरी HTTP रूटिंग लेल Kubernetes API ऑब्जेक्ट।';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नियम अनुसार नेटवर्क ट्रैफिक केँ छानैत अछि।';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्कक तार्किक उपविभाजन।';

  @override
  String get gameHintWord046Gateway => 'नेटवर्क नोड जे भिन्न नेटवर्क केँ जोड़ैत अछि।';

  @override
  String get gameHintWord047Router => 'नेटवर्क सभक बीच पैकेट आगू पठबैत अछि।';

  @override
  String get gameHintWord048Switch => 'स्थानीय नेटवर्क मे उपकरण सभ केँ जोड़ैत अछि।';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड वा पैकेज लेल प्रबंधित भंडारण।';

  @override
  String get gameHintWord050Systemd => 'Linux init प्रणाली आ सेवा प्रबंधक।';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लॉग पढ़’ लेल प्रयुक्त कमांड।';

  @override
  String get gameHintWord052Permission => 'नियम जे तय करैत अछि जे के पढ़ि, लिखि वा चला सकैत अछि।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud क प्रबंधित PostgreSQL-संगत डेटाबेस।';

  @override
  String get gameHintWord054Configmap => 'गैर-गोपनीय कॉन्फ़िगरेशन लेल Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटा लेल बनल Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord056Persistent => 'एहन भंडारण जे वर्कलोड रीस्टार्ट भेलो पर बनल रहैत अछि।';

  @override
  String get gameHintWord057Volume => 'कंटेनर मे माउंट कएल गेल फाइलसिस्टम भंडारण।';

  @override
  String get gameHintWord058Storage => 'फाइल, ऑब्जेक्ट वा ब्लॉक लेल स्थायी स्थान।';

  @override
  String get gameHintWord059Replica => 'स्केल वा विश्वसनीयता लेल राखल वर्कलोड इंस्टेंसक प्रति।';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस एप्लिकेशन पॉड लेल Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज बनाबए लेल प्रयुक्त निर्देश।';

  @override
  String get gameHintWord062Database => 'संगठित भंडार जकरा एप्लिकेशन क्वेरी करैत अछि।';

  @override
  String get gameHintWord063Automation => 'बिना हाथक चरण केँ दोहराबऽ योग्य काज सॉफ्टवेयर सँ करब।';

  @override
  String get gameHintWord064Anthos => 'परिवेश सभ मे क्लस्टर प्रबंधन लेल Google Cloud प्लेटफॉर्म।';

  @override
  String get gameHintWord065Bigquery => 'बड़का पैमानाक डेटा विश्लेषण लेल Google Cloud सेवा।';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषण लेल Google Cloud क वाइड-कॉलम NoSQL डेटाबेस।';

  @override
  String get gameHintWord067Loadbalancer => 'आबि रहल ट्रैफिक केँ कएक बैकएंड मे बाँटैत अछि।';

  @override
  String get gameHintWord068Prometheus => 'निगरानी प्रणाली जे टाइम-सीरीज मेट्रिक्स सहेजैत अछि।';

  @override
  String get gameHintWord069Grafana => 'ऑब्जर्वेबिलिटी डेटा केँ क्वेरी आ विज़ुअलाइज करबाक प्लेटफॉर्म।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud क प्रबंधित NoSQL JSON डॉक्यूमेंट डेटाबेस।';

  @override
  String get gameHintWord071Cloudtrail => 'AWS सेवा जे ऑडिट लेल API गतिविधि दर्ज करैत अछि।';

  @override
  String get gameHintWord072Statefulset => 'स्थिर पहचान चाहएबला वर्कलोड लेल Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes कंट्रोलर जे चुनल नोड पर पॉड चलबैत अछि।';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड वा प्रक्रिया द्वारा प्रयुक्त Kubernetes पहचान।';

  @override
  String get gameHintWord075Networkpolicy => 'पॉड नेटवर्क ट्रैफिक केँ नियंत्रित करएबला Kubernetes संसाधन।';

  @override
  String get gameHintWord076Certificate => 'TLS मे पहचान स्थापित करबाक डिजिटल दस्तावेज।';

  @override
  String get gameHintWord077Encryption => 'डेटा केँ एहन बदलैत अछि जे मात्र अधिकृत पक्ष पढ़ि सकए।';

  @override
  String get gameHintWord078Observability => 'प्रणालीक आउटपुट सँ ओकर व्यवहार बुझबाक क्षमता।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes क्लस्टर भीतर सामान्यतः प्रयुक्त DNS सर्वर।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API सँ क्लाउड संसाधन प्रबंधित करबाक परियोजना।';

  @override
  String get gameHintWord081Failover => 'विफलताक बाद स्टैंडबाय घटक पर स्विच करब।';

  @override
  String get gameHintWord082Idempotency => 'गुण जाहि मे कोनो ऑपरेशन बेर-बेर करब एक बेर करबाक समान प्रभाव दैत अछि।';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रीम आ बैच डेटा प्रोसेसिंग लेल Google Cloud सेवा।';

  @override
  String get gameHintWord084Orchestration => 'कएक स्वचालित वर्कलोड सभक समन्वित प्रबंधन।';

  @override
  String get gameHintWord085Dataplex => 'उद्यम डेटा खोजबाक आ शासित करबाक Google Cloud सेवा।';

  @override
  String get gameHintWord086Serverless => 'निष्पादन मॉडल जाहि मे इन्फ्रास्ट्रक्चर प्रबंधन छिपल रहैत अछि।';

  @override
  String get gameHintWord087Distributed => 'एहन प्रणाली जकर घटक कएक नेटवर्क वाला मशीन पर चलैत अछि।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud क प्रबंधित Apache Spark आ Hadoop परिवेश।';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL डेटाबेस जे प्रायः Terraform स्टेट लॉकिंग लेल प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord090Provisioning => 'इन्फ्रास्ट्रक्चर वा संसाधन केँ प्रयोग लेल तैयार करब।';

  @override
  String get gameHintWord091Elasticsearch => 'सर्च इंजन जे सामान्यतः केंद्रीकृत लॉगिंग लेल प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord092Etcd => 'की-वैल्यू भंडार जे Kubernetes क्लस्टरक स्थिति रखैत अछि।';

  @override
  String get gameHintWord093Authentication => 'उपयोगकर्ता वा सेवा के अछि से सत्यापित करबाक प्रक्रिया।';

  @override
  String get gameHintWord094Authorization => 'पहचान केँ की करबाक अनुमति अछि से तय करबाक प्रक्रिया।';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेंटर सँ समर्पित निजी कनेक्टिविटी लेल Azure सेवा।';

  @override
  String get gameHintWord096Configuration => 'सेटिंग जे सॉफ्टवेयरक व्यवहार तय करैत अछि।';

  @override
  String get gameHintWord097Infrastructure => 'एप्लिकेशन केँ सहारा दैबला कंप्यूट, नेटवर्क आ भंडारण संसाधन।';

  @override
  String get gameHintWord098Fastconnect => 'समर्पित निजी नेटवर्क कनेक्शन लेल Oracle Cloud सेवा।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes द्वारा प्रयुक्त उद्योग-मानक कंटेनर रनटाइम।';

  @override
  String get gameHintWord100Kubernetes => 'कंटेनर ऑर्केस्ट्रेशन प्लेटफॉर्म।';

  @override
  String get gameHintWord101Http => 'वेब संसाधन माँगबाक एप्लिकेशन प्रोटोकॉल।';

  @override
  String get gameHintWord102Https => 'वेब अनुरोध प्रोटोकॉलक एन्क्रिप्टेड संस्करण।';

  @override
  String get gameHintWord103Tcp => 'भरोसेमंद क्रमबद्ध डिलीवरी देबएबला ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord104Udp => 'डेटाग्राम लेल प्रयुक्त कनेक्शन-रहित ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord105Tls => 'नेटवर्क पर आदान-प्रदान कएल डेटा केँ सुरक्षित करएबला प्रोटोकॉल।';

  @override
  String get gameHintWord106Ssl => 'आधुनिक ट्रांसपोर्ट सुरक्षा प्रोटोकॉलक पुरान पूर्ववर्ती।';

  @override
  String get gameHintWord107Ftp => 'फाइल स्थानांतरणक पारंपरिक प्रोटोकॉल।';

  @override
  String get gameHintWord108Sftp => 'सुरक्षित शेल कनेक्शन पर चलएबला फाइल स्थानांतरण प्रोटोकॉल।';

  @override
  String get gameHintWord109Smtp => 'सर्वर सभक बीच ईमेल पठाबए लेल प्रयुक्त प्रोटोकॉल।';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क उपकरण प्रबंधित आ निगरानी करबाक प्रोटोकॉल।';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क त्रुटि आ ping संदेश वहन करएबला प्रोटोकॉल।';

  @override
  String get gameHintWord112Arp => 'स्थानीय IPv4 पता केँ हार्डवेयर पता मे बदलैत अछि।';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लाइंट केँ स्वतः IP कॉन्फ़िगरेशन पट्टा पर दैत अछि।';

  @override
  String get gameHintWord114Nat => 'गेटवे पार करैत काल पैकेटक नेटवर्क पता बदलैत अछि।';

  @override
  String get gameHintWord115Vpn => 'दूरस्थ नेटवर्क वा उपयोगकर्ता केँ जोड़एबला एन्क्रिप्टेड सुरंग।';

  @override
  String get gameHintWord116Vpc => 'सार्वजनिक क्लाउड मे पृथक वर्चुअल नेटवर्क।';

  @override
  String get gameHintWord117Vlan => 'स्विच कएल नेटवर्कक तार्किक पृथक्करण।';

  @override
  String get gameHintWord118Wan => 'व्यापक भौगोलिक क्षेत्र मे पसरल नेटवर्क।';

  @override
  String get gameHintWord119Lan => 'स्थानीय क्षेत्र मे उपकरण केँ जोड़एबला नेटवर्क।';

  @override
  String get gameHintWord120Cdn => 'वितरित एज नेटवर्क जे डिलीवर कएल सामग्री केँ कैश करैत अछि।';

  @override
  String get gameHintWord121Cidr => 'स्लैश लंबाई सँ नेटवर्क उपसर्ग व्यक्त करबाक संकेतन।';

  @override
  String get gameHintWord122Host => 'नेटवर्क सँ जुड़ल कंप्यूटर वा अंतिम बिंदु।';

  @override
  String get gameHintWord123Hostname => 'नेटवर्क वाला मशीन केँ देल गेल मनुष्य-पठनीय नाम।';

  @override
  String get gameHintWord124Domain => 'इंटरनेट नामकरण प्रणाली मे नामित प्रशासनिक क्षेत्र।';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेसक प्रशासनिक भाग।';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेसक एकटा व्यक्तिगत प्रविष्टि।';

  @override
  String get gameHintWord127Aaaa => 'DNS रिकॉर्ड प्रकार जे नाम केँ IPv6 पता मे बदलैत अछि।';

  @override
  String get gameHintWord128Ptr => 'उलटा पता खोजबाक लेल प्रयुक्त DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord129Txt => 'पाठ मान सहेजएबला DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord130Cname => 'DNS रिकॉर्ड जे एक नाम केँ दोसरक उपनाम बनबैत अछि।';

  @override
  String get gameHintWord131Route => 'पैकेट केँ गंतव्य दिस निर्देशित करएबला पथ प्रविष्टि।';

  @override
  String get gameHintWord132Routing => 'नेटवर्क सभक बीच ट्रैफिक लेल पथ चुनब।';

  @override
  String get gameHintWord133Packet => 'नेटवर्क पर पठाओल गेल डेटाक एकटा इकाई।';

  @override
  String get gameHintWord134Protocol => 'प्रणाली सभक बीच संवाद लेल सहमत नियम।';

  @override
  String get gameHintWord135Ack => 'डेटा प्राप्तिक पुष्टि करएबला TCP फ्लैग।';

  @override
  String get gameHintWord136Bandwidth => 'संचार लिंकक क्षमता।';

  @override
  String get gameHintWord137Latency => 'अनुरोध वा पैकेट केँ उत्तर मिलबा सँ पहिनेक विलंब।';

  @override
  String get gameHintWord138Throughput => 'प्रति इकाई समय मे प्रोसेस कएल उपयोगी काज वा डेटाक मात्रा।';

  @override
  String get gameHintWord139Mtu => 'सब सँ पैघ पैकेट आकार जे लिंक बिना खंडित कएने पठा सकैत अछि।';

  @override
  String get gameHintWord140Alpn => 'TLS विस्तार जे एप्लिकेशन-लेयर प्रोटोकॉल पर सहमति करैत अछि।';

  @override
  String get gameHintWord141Grep => 'पाठक पंक्ति मे मेल खाइत पैटर्न तकैत अछि।';

  @override
  String get gameHintWord142Sed => 'स्ट्रीम एडिटर जे सामान्यतः पाठ प्रतिस्थापन लेल प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord143Lscpu => 'Linux कमांड जे प्रोसेसर आर्किटेक्चर आ कोरक विवरण देखबैत अछि।';

  @override
  String get gameHintWord144Find => 'फाइल शर्त सँ डायरेक्टरी वृक्ष मे तकैत अछि।';

  @override
  String get gameHintWord145Lsblk => 'Linux कमांड जे ब्लॉक उपकरण आ ओकर संबंध सूचीबद्ध करैत अछि।';

  @override
  String get gameHintWord146Sort => 'पाठक पंक्ति केँ क्रमबद्ध करैत अछि।';

  @override
  String get gameHintWord147Uniq => 'सटल दोहराओल पंक्ति केँ छानैत अछि।';

  @override
  String get gameHintWord148Head => 'फाइलक शुरूक भाग छापैत अछि।';

  @override
  String get gameHintWord149Tail => 'फाइलक अंतिम भाग छापैत अछि आ जुड़ैत लॉगक अनुसरण कऽ सकैत अछि।';

  @override
  String get gameHintWord150Cat => 'फाइल सभ केँ जोड़ि कऽ ओकर सामग्री छापैत अछि।';

  @override
  String get gameHintWord151Cut => 'पंक्ति सँ चुनल फील्ड वा अक्षर कॉलम निकालैत अछि।';

  @override
  String get gameHintWord152Tee => 'मानक इनपुट केँ फाइल आ मानक आउटपुट मे प्रतिलिपि करैत अछि।';

  @override
  String get gameHintWord153Echo => 'अपन तर्क सभ केँ मानक आउटपुट पर लिखैत अछि।';

  @override
  String get gameHintWord154Printf => 'शेल वा प्रोग्राम सँ स्वरूपित पाठ छापैत अछि।';

  @override
  String get gameHintWord155Touch => 'फाइलक टाइमस्टैम्प अपडेट करैत अछि वा खाली फाइल बनबैत अछि।';

  @override
  String get gameHintWord156Mkdir => 'डायरेक्टरी बनबैत अछि।';

  @override
  String get gameHintWord157Rmdir => 'खाली डायरेक्टरी हटबैत अछि।';

  @override
  String get gameHintWord158Chmod => 'Unix फाइल अनुमति बिट बदलैत अछि।';

  @override
  String get gameHintWord159Chown => 'फाइलक स्वामित्व बदलैत अछि।';

  @override
  String get gameHintWord160Chgrp => 'फाइलक समूह स्वामित्व बदलैत अछि।';

  @override
  String get gameHintWord161Pwd => 'वर्तमान कार्य डायरेक्टरी छापैत अछि।';

  @override
  String get gameHintWord162Apt => 'Debian-आधारित प्रणाली द्वारा प्रयुक्त पैकेज प्रबंधन उपकरण।';

  @override
  String get gameHintWord163Top => 'प्रक्रिया आ प्रणाली संसाधन उपयोगक इंटरैक्टिव प्रदर्शन।';

  @override
  String get gameHintWord164Agent => 'सॉफ्टवेयर घटक जे होस्ट पर काज चलबैत वा रिपोर्ट करैत अछि।';

  @override
  String get gameHintWord165Kill => 'प्रक्रिया केँ ओकर पहचानकर्ता सँ सिग्नल पठबैत अछि।';

  @override
  String get gameHintWord166Signal => 'ऑपरेटिंग सिस्टम द्वारा प्रक्रिया केँ पठाओल गेल सूचना।';

  @override
  String get gameHintWord167Sigkill => 'Unix सिग्नल जे प्रक्रिया केँ तुरंत समाप्त करैत अछि।';

  @override
  String get gameHintWord168Nice => 'समायोजित शेड्यूलिंग प्राथमिकता संग प्रक्रिया शुरू करैत अछि।';

  @override
  String get gameHintWord169Renice => 'चलि रहल प्रक्रियाक शेड्यूलिंग प्राथमिकता बदलैत अछि।';

  @override
  String get gameHintWord170Jobs => 'वर्तमान शेल द्वारा प्रबंधित जॉब सूचीबद्ध करैत अछि।';

  @override
  String get gameHintWord171Nohup => 'हैंगअप सिग्नल केँ अनदेखा करैत कमांड चलबैत अछि।';

  @override
  String get gameHintWord172Screen => 'टर्मिनल मल्टीप्लेक्सर जे अलग कएल जाए योग्य सत्र केँ सहारा दैत अछि।';

  @override
  String get gameHintWord173Uptime => 'बतबैत अछि जे प्रणाली कतेक काल सँ चलि रहल अछि।';

  @override
  String get gameHintWord174Uname => 'प्रणाली आ कर्नेल जानकारी छापैत अछि।';

  @override
  String get gameHintWord175Whoami => 'प्रभावी वर्तमान उपयोगकर्ता नाम छापैत अछि।';

  @override
  String get gameHintWord176Umask => 'फाइल बनाबैत काल प्रयुक्त अनुमति मास्क सेट करैत अछि।';

  @override
  String get gameHintWord177Usermod => 'Linux कमांड जे मौजूदा उपयोगकर्ता खाता बदलैत अछि।';

  @override
  String get gameHintWord178Crontab => 'निर्धारित बेर-बेर चलएबला शेल जॉब संपादित वा सूचीबद्ध करैत अछि।';

  @override
  String get gameHintWord179Findmnt => 'Linux कमांड जे माउंट कएल फाइलसिस्टमक जानकारी देखबैत अछि।';

  @override
  String get gameHintWord180Mount => 'फाइलसिस्टम केँ डायरेक्टरी वृक्ष सँ जोड़ैत अछि।';

  @override
  String get gameHintWord181Sigterm => 'Unix सिग्नल जे प्रक्रिया केँ शालीनता सँ समाप्त करबाक अनुरोध करैत अछि।';

  @override
  String get gameHintWord182Fstab => 'माउंट करबाक फाइलसिस्टम बतएबला प्रणाली तालिका।';

  @override
  String get gameHintWord183Swap => 'भौतिक मेमोरी केँ पूरक करबाक लेल डिस्क-आधारित स्थान।';

  @override
  String get gameHintWord184Tmpfs => 'वर्चुअल मेमोरी आधारित अस्थायी फाइलसिस्टम।';

  @override
  String get gameHintWord185Proc => 'Linux वर्चुअल फाइलसिस्टम जे प्रक्रिया आ कर्नेल जानकारी देखबैत अछि।';

  @override
  String get gameHintWord186Syslog => 'मानक लॉगिंग प्रोटोकॉल आ संदेश फॉर्मेट।';

  @override
  String get gameHintWord187Dmesg => 'कर्नेल रिंग बफर सँ संदेश देखबैत अछि।';

  @override
  String get gameHintWord188Free => 'प्रयुक्त आ उपलब्ध प्रणाली मेमोरी बतबैत अछि।';

  @override
  String get gameHintWord189Stat => 'फाइलक विस्तृत मेटाडेटा देखबैत अछि।';

  @override
  String get gameHintWord190Lsof => 'खुजल फाइल आ ओकरा धएने प्रक्रिया सूचीबद्ध करैत अछि।';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क कनेक्शन आ रूटिंग जानकारी देखबैत अछि।';

  @override
  String get gameHintWord192Checksum => 'डेटा मे बदलाव वा भ्रष्टाचार पकड़बाक लेल गणना कएल मान।';

  @override
  String get gameHintWord193Ping => 'इको अनुरोध सँ नेटवर्क पहुँच जाँचैत अछि।';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क गंतव्य दिस बीचक हॉप देखबैत अछि।';

  @override
  String get gameHintWord195Resolver => 'DNS घटक जे नाम क्वेरीक उत्तर तकैत अछि।';

  @override
  String get gameHintWord196Nslookup => 'DNS नाम आ पता तकैत अछि।';

  @override
  String get gameHintWord197Telnet => 'पुरान अएन्क्रिप्टेड दूरस्थ टर्मिनल प्रोटोकॉल।';

  @override
  String get gameHintWord198Tftp => 'सरल UDP-आधारित फाइल स्थानांतरण प्रोटोकॉल।';

  @override
  String get gameHintWord199Daemon => 'Unix-जकाँ प्रणाली पर पृष्ठभूमि सेवा प्रक्रिया।';

  @override
  String get gameHintWord200Kernel => 'ऑपरेटिंग सिस्टम संसाधन प्रबंधित करएबला मूल घटक।';

  @override
  String get gameHintWord201Commit => 'वर्जन कंट्रोल मे बदलावक दर्ज कएल स्नैपशॉट।';

  @override
  String get gameHintWord202Branch => 'विकासक एक धारा केँ दर्शाबएबला चलाओल जा सकएबला संदर्भ।';

  @override
  String get gameHintWord203Merge => 'भिन्न विकास धारा सभक इतिहास केँ जोड़ैत अछि।';

  @override
  String get gameHintWord204Rebase => 'कमिट सभ केँ दोसर आधार कमिट पर फेर चलबैत अछि।';

  @override
  String get gameHintWord205Clone => 'दूरस्थ रिपॉजिटरीक स्थानीय प्रतिलिपि बनबैत अछि।';

  @override
  String get gameHintWord206Fetch => 'बिना मर्ज कएने दूरस्थ ऑब्जेक्ट आ संदर्भ डाउनलोड करैत अछि।';

  @override
  String get gameHintWord207Pull => 'बदलाव आनैत अछि आ वर्तमान ब्रांच मे जोड़ैत अछि।';

  @override
  String get gameHintWord208Push => 'स्थानीय कमिट केँ दूरस्थ रिपॉजिटरी मे पठबैत अछि।';

  @override
  String get gameHintWord209Stash => 'बिना कमिट कएल कार्य-वृक्षक बदलाव अस्थायी रूप सँ सहेजैत अछि।';

  @override
  String get gameHintWord210Revert => 'एहन कमिट बनबैत अछि जे दोसर कमिट केँ पूर्ववत करैत अछि।';

  @override
  String get gameHintWord211Reset => 'Git संदर्भ केँ हटबैत अछि आ इंडेक्स वा कार्य फाइल केँ रीसेट कऽ सकैत अछि।';

  @override
  String get gameHintWord212Reflog => 'Git संदर्भक अपडेटक स्थानीय इतिहास।';

  @override
  String get gameHintWord213Diff => 'संस्करण वा फाइल सभक बीच अंतर देखबैत अछि।';

  @override
  String get gameHintWord214Status => 'स्टेज कएल, बदलल आ अट्रैक फाइलक रिपोर्ट दैत अछि।';

  @override
  String get gameHintWord215Checkout => 'रिवीजन बदलबाक वा फाइल पुनर्स्थापित करबाक Git कमांड।';

  @override
  String get gameHintWord216Tag => 'नामित संदर्भ जे सामान्यतः रिलीज चिह्नित करैत अछि।';

  @override
  String get gameHintWord217Remote => 'दोसर रिपॉजिटरी सँ नामित कनेक्शन।';

  @override
  String get gameHintWord218Origin => 'क्लोन कएल रिपॉजिटरी रिमोट केँ देल गेल डिफ़ॉल्ट नाम।';

  @override
  String get gameHintWord219Upstream => 'स्थानीय ब्रांच सँ जुड़ल रिमोट ट्रैकिंग ब्रांच।';

  @override
  String get gameHintWord220Worktree => 'रिपॉजिटरी सँ जुड़ल चेक-आउट कएल कार्य डायरेक्टरी।';

  @override
  String get gameHintWord221Registry => 'कंटेनर इमेज सहेजएबला आ बाँटएबला सेवा।';

  @override
  String get gameHintWord222Digest => 'कंटेनर इमेजक सामग्री-आधारित पहचानकर्ता।';

  @override
  String get gameHintWord223Layer => 'कंटेनर इमेजक हिस्सा बनएबला फाइलसिस्टम बदलाव।';

  @override
  String get gameHintWord224Entrypoint => 'मुख्य कंटेनर निष्पादन योग्य निर्धारित करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord225Cmd => 'डिफ़ॉल्ट कमांड वा तर्क निर्दिष्ट करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord226Workdir => 'कार्य डायरेक्टरी सेट करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord227Copy => 'बिल्ड-संदर्भ फाइल केँ इमेज मे प्रतिलिपि करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord228Add => 'Dockerfile निर्देश जे स्थानीय आर्काइव केँ खोलियो सकैत अछि।';

  @override
  String get gameHintWord229Run => 'बिल्ड-काल मे कमांड चलाबएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord230Env => 'एनवायरनमेंट वेरिएबल परिभाषित करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord231Arg => 'बिल्ड-काल वेरिएबल घोषित करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord232Expose => 'कंटेनर पोर्ट केँ दस्तावेज करएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord233User => 'बादक कमांड लेल खाता चुनएबला Dockerfile निर्देश।';

  @override
  String get gameHintWord234Healthcheck => 'कंटेनरक स्वास्थ्य कोना जाँचब से बतएबला निर्देश।';

  @override
  String get gameHintWord235Shebang => 'स्क्रिप्टक पहिल पंक्ति जे चलाबए योग्य इंटरप्रेटर बतबैत अछि।';

  @override
  String get gameHintWord236Compose => 'बहु-कंटेनर एप्लिकेशन परिभाषित आ चलाबए लेल Docker उपकरण।';

  @override
  String get gameHintWord237Bridge => 'स्थानीय कंटेनर नेटवर्किंग लेल सामान्य Docker नेटवर्क ड्राइवर।';

  @override
  String get gameHintWord238Overlay => 'कएक होस्ट पर कंटेनर सभ केँ जोड़एबला नेटवर्क।';

  @override
  String get gameHintWord239None => 'Docker नेटवर्क ड्राइवर जे कंटेनर नेटवर्किंग बंद करैत अछि।';

  @override
  String get gameHintWord240Prune => 'अप्रयुक्त कंटेनर संसाधन हटबैत अछि।';

  @override
  String get gameHintWord241Replicaset => 'इच्छित पॉड संख्या बनाए रखएबला Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord242Service => 'पॉड तक स्थिर पहुँच देबएबला Kubernetes अमूर्तन।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सेवा केँ सहारा दैबला पता।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes संसाधन सभ केँ समूहित करएबला तार्किक दायरा।';

  @override
  String get gameHintWord245Node => 'Kubernetes पॉड केँ होस्ट करएबला वर्कर मशीन।';

  @override
  String get gameHintWord246Kubelet => 'प्रत्येक नोड पर एजेंट जे पॉड निष्पादन प्रबंधित करैत अछि।';

  @override
  String get gameHintWord247Pvc => 'स्थायी भंडारण लेल Kubernetes अनुरोध।';

  @override
  String get gameHintWord248Apiserver => 'क्लस्टर API उजागर करएबला Kubernetes कंट्रोल-प्लेन घटक।';

  @override
  String get gameHintWord249Role => 'भूमिका-आधारित पहुँच नियंत्रण मे अनुमति सभक नामित समूह।';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेस मे संसाधन खपत सीमित करएबला Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord251Selector => 'लेबल सँ संसाधन केँ मिलाबएबला अभिव्यक्ति।';

  @override
  String get gameHintWord252Taint => 'नोडक गुण जे मेल खाइबला टॉलरेशन बिनु पॉड केँ दूर करैत अछि।';

  @override
  String get gameHintWord253Toleration => 'पॉड सेटिंग जे टेंटेड नोड पर शेड्यूल हेबाक अनुमति दैत अछि।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोड केँ शेड्यूल नहि होमए योग्य चिह्नित करैत अछि।';

  @override
  String get gameHintWord255Uncordon => 'कॉर्डन कएल नोड केँ फेर शेड्यूल होमए योग्य बनबैत अछि।';

  @override
  String get gameHintWord256Drain => 'नोड रखरखाव सँ पहिने वर्कलोड केँ सुरक्षित रूप सँ हटबैत अछि।';

  @override
  String get gameHintWord257Job => 'Kubernetes वर्कलोड जे कोनो काज केँ पूरा होमए धरि चलबैत अछि।';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes वर्कलोड जे समय-सारणी पर जॉब बनबैत अछि।';

  @override
  String get gameHintWord259Readiness => 'प्रोब जे बतबैत अछि जे कंटेनर ट्रैफिक पाबि सकैत अछि कि नहि।';

  @override
  String get gameHintWord260Liveness => 'प्रोब जे बतबैत अछि जे कंटेनर केँ रीस्टार्ट चाही कि नहि।';

  @override
  String get gameHintWord261Canary => 'रिलीज तरीका जे नव संस्करण केँ थोड़ ट्रैफिक हिस्सा पर देखबैत अछि।';

  @override
  String get gameHintWord262Rolling => 'अपडेट रणनीति जे चलि रहल इंस्टेंस केँ धीरे-धीरे बदलैत अछि।';

  @override
  String get gameHintWord263Rollback => 'पहिनेक काज करएबला एप्लिकेशन संस्करण केँ पुनर्स्थापित करैत अछि।';

  @override
  String get gameHintWord264Rollout => 'एप्लिकेशनक नव संस्करणक क्रमिक तैनाती।';

  @override
  String get gameHintWord265Recreate => 'डिप्लॉयमेंट रणनीति जे बदली पॉड शुरू करबा सँ पहिने पुरान पॉड रोकैत अछि।';

  @override
  String get gameHintWord266Blue => 'ब्लू-ग्रीन रिलीज मे दू परिवेश मे सँ एक।';

  @override
  String get gameHintWord267Green => 'ब्लू-ग्रीन रिलीज मे दोसर परिवेश।';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पाइपलाइन द्वारा बनाओल संस्करणयुक्त आउटपुट।';

  @override
  String get gameHintWord269Staging => 'रिलीज सत्यापन लेल प्रयुक्त प्री-प्रोडक्शन परिवेश।';

  @override
  String get gameHintWord270Production => 'वास्तविक अंतिम उपयोगकर्ता केँ सेवा दैबला परिवेश।';

  @override
  String get gameHintWord271Release => 'उपयोग लेल देल गेल सॉफ्टवेयर संस्करण।';

  @override
  String get gameHintWord272Version => 'सॉफ्टवेयर संशोधन केँ अलग करएबला पहचानकर्ता।';

  @override
  String get gameHintWord273Revision => 'दस्तावेज वा कोडबेसक पहचानए योग्य संस्करण।';

  @override
  String get gameHintWord274Webhook => 'घटना घटला पर पठाओल गेल HTTP सूचना।';

  @override
  String get gameHintWord275Runbook => 'प्रणाली चलाबए वा पुनर्प्राप्त करबाक दस्तावेजित प्रक्रिया।';

  @override
  String get gameHintWord276Workspace => 'कार्यरत परियोजना संसाधन सभक डायरेक्टरी वा दायरा।';

  @override
  String get gameHintWord277Credentials => 'प्रणाली तक पहुँच लेल प्रयुक्त प्रमाणीकरण सामग्री।';

  @override
  String get gameHintWord278Trigger => 'घटना वा शर्त जे पाइपलाइन शुरू करैत अछि।';

  @override
  String get gameHintWord279Parameter => 'जॉब वा फंक्शन केँ देल गेल नामित इनपुट।';

  @override
  String get gameHintWord280Access => 'प्राधिकरणक अधीन संसाधन प्रयोग करबाक क्षमता।';

  @override
  String get gameHintWord281Module => 'इन्फ्रास्ट्रक्चर परिभाषाक पुनः प्रयोज्य समूह।';

  @override
  String get gameHintWord282Provider => 'Terraform प्लगइन जे कॉन्फ़िगरेशन केँ बाहरी API सँ जोड़ैत अछि।';

  @override
  String get gameHintWord283Resource => 'कॉन्फ़िगरेशन मे घोषित प्रबंधित इन्फ्रास्ट्रक्चर ऑब्जेक्ट।';

  @override
  String get gameHintWord284Variable => 'कॉन्फ़िगरेशन वा कोड द्वारा प्रयुक्त नामित इनपुट मान।';

  @override
  String get gameHintWord285Output => 'इन्फ्रास्ट्रक्चर कॉन्फ़िगरेशन सँ लौटाओल उजागर मान।';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्टेट स्नैपशॉट सँ जुड़ल फाइल प्रत्यय।';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट वेरिएबल मान लेल प्रयुक्त फाइल प्रत्यय।';

  @override
  String get gameHintWord288Backend => 'स्टेट भंडारण नियंत्रित करएबला Terraform कॉन्फ़िगरेशन।';

  @override
  String get gameHintWord289Plan => 'प्रस्तावित इन्फ्रास्ट्रक्चर बदलावक Terraform पूर्वावलोकन।';

  @override
  String get gameHintWord290Apply => 'Terraform ऑपरेशन जे प्रस्तावित बदलाव केँ लागू करैत अछि।';

  @override
  String get gameHintWord291Destroy => 'Terraform ऑपरेशन जे प्रबंधित इन्फ्रास्ट्रक्चर हटबैत अछि।';

  @override
  String get gameHintWord292Import => 'मौजूदा संसाधन केँ इन्फ्रास्ट्रक्चर प्रबंधन मे अनैत अछि।';

  @override
  String get gameHintWord293Refresh => 'दर्ज कएल स्थिति केँ वास्तविक इन्फ्रास्ट्रक्चर सँ मिलबैत अछि।';

  @override
  String get gameHintWord294Validate => 'कॉन्फ़िगरेशनक सिंटैक्स आ आंतरिक संगति जाँचैत अछि।';

  @override
  String get gameHintWord295Fmt => 'Terraform कमांड जे मानक कॉन्फ़िगरेशन फॉर्मेटिंग लागू करैत अछि।';

  @override
  String get gameHintWord296Init => 'Terraform प्रोवाइडर आ कार्य डायरेक्टरी आरंभ करैत अछि।';

  @override
  String get gameHintWord297Executor => 'Jenkins वर्कर स्लॉट जे बिल्ड चला सकैत अछि।';

  @override
  String get gameHintWord298Dependencies => 'संबंध जे एक घटक केँ दोसर सँ पहिने चाहैत अछि।';

  @override
  String get gameHintWord299Drift => 'घोषित आ वास्तविक इन्फ्रास्ट्रक्चर स्थितिक बीच अंतर।';

  @override
  String get gameHintWord300Locking => 'साझा स्थिति बदलबा सँ एक संग लिखएबला केँ रोकैत अछि।';

  @override
  String get gameHintWord301Playbook => 'Ansible दस्तावेज जे ऑटोमेशन प्ले आ टास्क बतबैत अछि।';

  @override
  String get gameHintWord302Inventory => 'प्रबंधित होस्ट आ समूहक Ansible संग्रह।';

  @override
  String get gameHintWord303Facts => 'प्रबंधित होस्टक विषय मे जमा कएल प्रणाली जानकारी।';

  @override
  String get gameHintWord304Task => 'ऑटोमेशन मे काजक एक व्यक्तिगत इकाई।';

  @override
  String get gameHintWord305Handler => 'Ansible टास्क जे बदलावक सूचना भेटला पर चलैत अछि।';

  @override
  String get gameHintWord306Notify => 'Ansible निर्देश जे बदलल टास्कक बाद हैंडलर केँ पंक्ति मे लगबैत अछि।';

  @override
  String get gameHintWord307Become => 'Ansible सेटिंग जे विशेषाधिकार वृद्धि सक्षम करैत अछि।';

  @override
  String get gameHintWord308Vault => 'संवेदनशील ऑटोमेशन डेटा केँ एन्क्रिप्ट करबाक Ansible सुविधा।';

  @override
  String get gameHintWord309Register => 'Ansible निर्देश जे टास्कक परिणाम केँ वेरिएबल मे सहेजैत अछि।';

  @override
  String get gameHintWord310When => 'सशर्त टास्क निष्पादन नियंत्रित करएबला Ansible कीवर्ड।';

  @override
  String get gameHintWord311Loop => 'संग्रह पर ऑटोमेशन टास्क केँ दोहराबैत अछि।';

  @override
  String get gameHintWord312Include => 'पुनः प्रयोज्य ऑटोमेशन सामग्री केँ गतिशील रूप सँ लोड करैत अछि।';

  @override
  String get gameHintWord313Tags => 'ऑटोमेशन टास्कक उपसमूह चुनबाक लेल प्रयुक्त लेबल।';

  @override
  String get gameHintWord314Template => 'तैनाती सँ पहिने वेरिएबल सँ रेंडर कएल फाइल।';

  @override
  String get gameHintWord315Jinja => 'Ansible द्वारा प्रयुक्त टेम्पलेट भाषा।';

  @override
  String get gameHintWord316Abstraction => 'कार्यान्वयनक विवरण केँ सरल इंटरफेसक पाछू नुकाएब।';

  @override
  String get gameHintWord317Agile => 'फीडबैक पर जोर दैबला पुनरावृत्त सॉफ्टवेयर डिलीवरी तरीका।';

  @override
  String get gameHintWord318Puppet => 'घोषणात्मक मैनिफेस्ट प्रयोग करएबला कॉन्फ़िगरेशन प्रबंधन उपकरण।';

  @override
  String get gameHintWord319Airflow => 'वर्कफ़्लो DAG केँ शेड्यूल आ ऑर्केस्ट्रेट करबाक प्लेटफॉर्म।';

  @override
  String get gameHintWord320Argo => 'क्लाउड-नेटिव परियोजना परिवार जाहि मे GitOps डिलीवरी कंट्रोलर शामिल अछि।';

  @override
  String get gameHintWord321Rds => 'AWS प्रबंधित रिलेशनल डेटाबेस सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord322Sqs => 'AWS प्रबंधित मैसेज क्यू क संक्षिप्त रूप।';

  @override
  String get gameHintWord323Sns => 'AWS पब्लिश-सब्सक्राइब सूचना सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord324Ses => 'AWS ईमेल पठाबए बला सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord325Iam => 'क्लाउड पहचान आ पहुँच प्रबंधनक संक्षिप्त रूप।';

  @override
  String get gameHintWord326Kms => 'AWS एन्क्रिप्शन की प्रबंधन सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord327Waf => 'फायरवॉल जे एप्लिकेशन-लेयर वेब अनुरोध केँ छानैत अछि।';

  @override
  String get gameHintWord328Eks => 'AWS प्रबंधित Kubernetes सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord329Ecs => 'AWS प्रबंधित कंटेनर ऑर्केस्ट्रेशन सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord330Ecr => 'AWS कंटेनर इमेज रजिस्ट्रीक संक्षिप्त रूप।';

  @override
  String get gameHintWord331Aurora => 'MySQL आ PostgreSQL सँ संगत AWS रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord332Redshift => 'AWS विश्लेषण डेटा वेयरहाउस।';

  @override
  String get gameHintWord333Neptune => 'AWS प्रबंधित ग्राफ डेटाबेस।';

  @override
  String get gameHintWord334Elasticache => 'AWS प्रबंधित इन-मेमोरी कैशिंग सेवा।';

  @override
  String get gameHintWord335Athena => 'SQL सँ ऑब्जेक्ट-स्टोरेज डेटा क्वेरी करएबला AWS सेवा।';

  @override
  String get gameHintWord336Glue => 'AWS सर्वरलेस डेटा एकीकरण आ ETL सेवा।';

  @override
  String get gameHintWord337Emr => 'प्रबंधित बिग-डेटा प्रोसेसिंग क्लस्टर लेल AWS प्लेटफॉर्म।';

  @override
  String get gameHintWord338Lambda => 'सर्वर प्रबंधित कएने बिना फंक्शन चलाबएबला AWS सेवा।';

  @override
  String get gameHintWord339Cloudfront => 'AWS वैश्विक कंटेंट डिलीवरी नेटवर्क।';

  @override
  String get gameHintWord340Cloudwatch => 'मेट्रिक्स, लॉग आ अलार्म जमा करएबला AWS सेवा।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ब्राउज़र-आधारित शेल परिवेश।';

  @override
  String get gameHintWord342Codecommit => 'AWS प्रबंधित Git रिपॉजिटरी सेवा।';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कंपाइल करएबला आ बिल्ड टेस्ट चलाबएबला AWS सेवा।';

  @override
  String get gameHintWord344Codedeploy => 'AWS स्वचालित एप्लिकेशन तैनाती सेवा।';

  @override
  String get gameHintWord345Codepipeline => 'AWS निरंतर डिलीवरी पाइपलाइन सेवा।';

  @override
  String get gameHintWord346Guardduty => 'AWS बुद्धिमान खतरा पहचान सेवा।';

  @override
  String get gameHintWord347Inspector => 'कमजोरी लेल वर्कलोडक आकलन करएबला AWS सेवा।';

  @override
  String get gameHintWord348Macie => 'ऑब्जेक्ट स्टोरेज मे संवेदनशील डेटा खोजएबला AWS सेवा।';

  @override
  String get gameHintWord349Shield => 'AWS प्रबंधित DDoS सुरक्षा सेवा।';

  @override
  String get gameHintWord350Snowball => 'पैघ डेटा स्थानांतरण लेल AWS भौतिक उपकरण।';

  @override
  String get gameHintWord351Snowcone => 'AWS ऑफलाइन स्थानांतरण परिवारक छोट मजबूत उपकरण।';

  @override
  String get gameHintWord352Datasync => 'AWS स्वचालित ऑनलाइन डेटा स्थानांतरण सेवा।';

  @override
  String get gameHintWord353Msk => 'AWS प्रबंधित Apache Kafka सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord354Backup => 'पुनर्प्राप्ति लेल राखल डेटाक प्रति।';

  @override
  String get gameHintWord355Transcribe => 'बोली केँ पाठ मे बदलएबला AWS सेवा।';

  @override
  String get gameHintWord356Translate => 'भाषा सभक बीच पाठ अनुवाद करएबला AWS सेवा।';

  @override
  String get gameHintWord357Rekognition => 'इमेज आ वीडियो विश्लेषित करएबला AWS सेवा।';

  @override
  String get gameHintWord358Comprehend => 'AWS प्राकृतिक-भाषा विश्लेषण सेवा।';

  @override
  String get gameHintWord359Textract => 'दस्तावेज सँ पाठ आ तालिका निकालएबला AWS सेवा।';

  @override
  String get gameHintWord360Sagemaker => 'मशीन लर्निंग मॉडल बनाबए आ तैनात करबाक AWS प्लेटफॉर्म।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud क वैश्विक रूप सँ वितरित रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord362Pub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्नक प्रकाशक भाग।';

  @override
  String get gameHintWord363Sub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्नक ग्राहक भाग।';

  @override
  String get gameHintWord364Functions => 'सर्वरलेस प्लेटफॉर्म द्वारा देल गेल घटना-चालित कोड इकाई।';

  @override
  String get gameHintWord365App => 'सॉफ्टवेयर एप्लिकेशनक संक्षिप्त रूप।';

  @override
  String get gameHintWord366Engine => 'Compute Engine जकाँ नाम मे निष्पादन घटक।';

  @override
  String get gameHintWord367Compute => 'वर्चुअल मशीन वा कंटेनर द्वारा देल गेल प्रोसेसिंग क्षमता।';

  @override
  String get gameHintWord368Network => 'आपस मे डेटा आदान-प्रदान करएबला जुड़ल प्रणाली।';

  @override
  String get gameHintWord369Security => 'खतरा सँ प्रणाली आ सूचनाक सुरक्षा।';

  @override
  String get gameHintWord370Identity => 'पहुँच निर्णय लेल प्रयुक्त उपयोगकर्ता वा सेवाक प्रतिनिधित्व।';

  @override
  String get gameHintWord371Monitoring => 'प्रणालीक स्वास्थ्य आ व्यवहारक निरंतर निगरानी।';

  @override
  String get gameHintWord372Logging => 'अलग-अलग एप्लिकेशन आ प्रणाली घटना दर्ज करब।';

  @override
  String get gameHintWord373Trace => 'सेवा कॉल सभ मे अनुरोधक पथक रिकॉर्ड।';

  @override
  String get gameHintWord374Metrics => 'समय संग प्रणाली व्यवहारक संख्यात्मक माप।';

  @override
  String get gameHintWord375Alert => 'सूचना जे निगरानी कएल शर्त पर ध्यान चाही से बतबैत अछि।';

  @override
  String get gameHintWord376Billing => 'प्रयुक्त क्लाउड सेवा सभक ट्रैकिंग आ शुल्क लेब।';

  @override
  String get gameHintWord377Quota => 'संसाधनक कतेक मात्रा खपत कएल जा सकैत अछि तकर सीमा।';

  @override
  String get gameHintWord378Region => 'उपलब्धता क्षेत्र समाहित करएबला भौगोलिक क्लाउड तैनाती क्षेत्र।';

  @override
  String get gameHintWord379Tenancy => 'व्यवस्था जे बतबैत अछि ग्राहक इन्फ्रास्ट्रक्चर केँ कोना साझा करैत अछि।';

  @override
  String get gameHintWord380Regional => 'क्लाउड रीजन तक सीमित संसाधनक वर्णन करैत अछि।';

  @override
  String get gameHintWord381Cosmos => 'Azure क वैश्विक रूप सँ वितरित बहु-मॉडल डेटाबेसक नाम।';

  @override
  String get gameHintWord382Synapse => 'वेयरहाउसिंग आ डेटा प्रोसेसिंग जोड़एबला Azure विश्लेषण प्लेटफॉर्म।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft क क्लाउड-नेटिव सुरक्षा सूचना आ घटना प्लेटफॉर्म।';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोड केँ सुरक्षित करएबला Microsoft सुरक्षा उत्पाद परिवार।';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रांडिंग केँ बदलएबला Microsoft पहचान उत्पाद परिवार।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Managerक संक्षिप्त रूप।';

  @override
  String get gameHintWord387Arc => 'Azure सँ बाहरक संसाधन तक प्रबंधन बढ़ाबएबला Azure सेवा।';

  @override
  String get gameHintWord388Aks => 'Azure प्रबंधित Kubernetes सेवाक संक्षिप्त रूप।';

  @override
  String get gameHintWord389Armor => 'Google Cloud वेब सुरक्षा सेवा नामक प्रत्यय।';

  @override
  String get gameHintWord390Blob => 'Azure ऑब्जेक्ट-स्टोरेज डेटा प्रकार।';

  @override
  String get gameHintWord391Files => 'प्रबंधित नेटवर्क फाइल साझा देबएबला Azure सेवा।';

  @override
  String get gameHintWord392Disk => 'वर्चुअल मशीन सँ जुड़ल ब्लॉक-स्टोरेज उपकरण।';

  @override
  String get gameHintWord393Function => 'कोडक बुलाबए योग्य खंड जे परिणाम लौटा सकैत अछि।';

  @override
  String get gameHintWord394Logic => 'वर्कफ़्लो एकीकरण लेल Azure एप सेवा श्रेणी।';

  @override
  String get gameHintWord395Insights => 'Azure एप्लिकेशन टेलीमेट्री उत्पाद नामक प्रत्यय।';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क अंतिम बिंदु सभक बीच बहैत डेटा।';

  @override
  String get gameHintWord397Manager => 'Azure Resource उत्पाद नामक प्रत्यय जे ओकर कंट्रोल प्लेन अछि।';

  @override
  String get gameHintWord398Bastion => 'निजी होस्ट पहुँच लेल प्रबंधित वा सुदृढ़ प्रवेश बिंदु।';

  @override
  String get gameHintWord399Front => 'Azure वैश्विक प्रवेश-बिंदु सेवा Front Doorक पहिल शब्द।';

  @override
  String get gameHintWord400Door => 'Azure वैश्विक प्रवेश-बिंदु सेवा Front Doorक दोसर शब्द।';

  @override
  String get gameHintWord401Javascript => 'ब्राउज़र आ Node रनटाइम मे व्यापक रूप सँ प्रयुक्त प्रोग्रामिंग भाषा।';

  @override
  String get gameHintWord402Perl => 'पाठ प्रोसेसिंग आ रेगुलर एक्सप्रेशनक लेल प्रसिद्ध स्क्रिप्टिंग भाषा।';

  @override
  String get gameHintWord403Powershell => 'Microsoft क ऑब्जेक्ट-उन्मुख शेल आ ऑटोमेशन भाषा।';

  @override
  String get gameHintWord404Java => 'Jenkins लागू करबा मे प्रयुक्त JVM भाषा।';

  @override
  String get gameHintWord405Json => 'ऑब्जेक्ट आ ऐरे वाला हल्लुक डेटा फॉर्मेट।';

  @override
  String get gameHintWord406Xml => 'नेस्टेड नामित टैग प्रयोग करएबला मार्कअप फॉर्मेट।';

  @override
  String get gameHintWord407Html => 'वेब पेज केँ संरचित करबाक मार्कअप भाषा।';

  @override
  String get gameHintWord408Css => 'वेब प्रस्तुति नियंत्रित करएबला स्टाइलशीट भाषा।';

  @override
  String get gameHintWord409String => 'पाठ अक्षर सभक क्रम।';

  @override
  String get gameHintWord410Array => 'तत्व सभक अनुक्रमित संग्रह।';

  @override
  String get gameHintWord411Hash => 'Ruby आ Perl मे साहचर्य की-वैल्यू संग्रह।';

  @override
  String get gameHintWord412Object => 'गुण आ व्यवहार वाला रनटाइम मान।';

  @override
  String get gameHintWord413Class => 'क्लास-आधारित भाषा मे ऑब्जेक्ट बनाबए लेल प्रयुक्त परिभाषा।';

  @override
  String get gameHintWord414Method => 'ऑब्जेक्ट वा क्लास सँ जुड़ल फंक्शन।';

  @override
  String get gameHintWord415Interface => 'घटक द्वारा उजागर कएल ऑपरेशन सभक वर्णन करएबला अनुबंध।';

  @override
  String get gameHintWord416Subclass => 'दोसर क्लास सँ निकालल गेल क्लास।';

  @override
  String get gameHintWord417Super => 'अभिभावक-क्लासक व्यवहार केँ बजाबए बला कीवर्ड।';

  @override
  String get gameHintWord418Protected => 'दृश्यता स्तर जे क्लास-संबंधित संदर्भ तक पहुँच सीमित करैत अछि।';

  @override
  String get gameHintWord419Exception => 'रनटाइम स्थिति जे सामान्य नियंत्रण प्रवाह केँ बाधित करैत अछि।';

  @override
  String get gameHintWord420Regex => 'पाठ मिलाबए लेल प्रयुक्त पैटर्न संकेतन।';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोडक संरचना सँ तय दायराक वर्णन करैत अछि।';

  @override
  String get gameHintWord422Scalar => 'Perl मे एकल-मान वेरिएबल श्रेणी।';

  @override
  String get gameHintWord423Tuple => 'Python मे अपरिवर्तनीय क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord424List => 'Python मे परिवर्तनीय क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord425Dict => 'Python क बिल्ट-इन मैपिंग प्रकारक नाम।';

  @override
  String get gameHintWord426Dictionary => 'की सभ केँ संबंधित मान सँ जोड़एबला संग्रह।';

  @override
  String get gameHintWord427Set => 'विशिष्ट मान सभक संग्रह।';

  @override
  String get gameHintWord428Boolean => 'सत्य वा असत्य केँ दर्शाबएबला डेटा प्रकार।';

  @override
  String get gameHintWord429Integer => 'पूर्ण संख्या केँ दर्शाबएबला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord430Float => 'फ्लोटिंग-पॉइंट मान केँ दर्शाबएबला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord431Double => 'दोहरी-सटीकता फ्लोटिंग-पॉइंट प्रकार।';

  @override
  String get gameHintWord432Null => 'ऑब्जेक्ट वा परिणामक अनुपस्थिति केँ दर्शाबएबला मान।';

  @override
  String get gameHintWord433Undefined => 'छूटल असाइन कएल मान लेल JavaScript मान।';

  @override
  String get gameHintWord434Promise => 'अंततः आबएबला असिंक्रोनस परिणाम केँ दर्शाबएबला JavaScript ऑब्जेक्ट।';

  @override
  String get gameHintWord435Async => 'असिंक्रोनस फंक्शन केँ चिह्नित करएबला कीवर्ड।';

  @override
  String get gameHintWord436Await => 'कीवर्ड जे असिंक्रोनस परिणामक प्रतीक्षा करैत अछि।';

  @override
  String get gameHintWord437Callback => 'फंक्शन जे दोसर ऑपरेशन द्वारा बजाओल जाइत अछि।';

  @override
  String get gameHintWord438Closure => 'फंक्शन जे अपन आसपासक लेक्सिकल दायरा तक पहुँच बनाए रखैत अछि।';

  @override
  String get gameHintWord439Generator => 'फंक्शन जे yield कएल मान द्वारा क्रम केँ आलस्य सँ बनबैत अछि।';

  @override
  String get gameHintWord440Iterator => 'ऑब्जेक्ट जे संग्रहक मान सभ मे आगू बढ़ैत अछि।';

  @override
  String get gameHintWord441Print => 'मान केँ आउटपुट पर लिखएबला सामान्य फंक्शन।';

  @override
  String get gameHintWord442Input => 'मानक इनपुट सँ एक पंक्ति पढ़एबला Python फंक्शन।';

  @override
  String get gameHintWord443Open => 'फाइल हैंडल पाबए लेल प्रयुक्त फंक्शन।';

  @override
  String get gameHintWord444Close => 'खुजल फाइल वा कनेक्शन केँ मुक्त करबाक ऑपरेशन।';

  @override
  String get gameHintWord445Read => 'स्ट्रीम वा फाइल सँ डेटा पाबए बला ऑपरेशन।';

  @override
  String get gameHintWord446Write => 'स्ट्रीम वा फाइल मे डेटा पठाबए बला ऑपरेशन।';

  @override
  String get gameHintWord447Append => 'संग्रहक अंत मे एकटा वस्तु जोड़ैत अछि।';

  @override
  String get gameHintWord448Split => 'डेलिमिटर सँ पाठ केँ उपस्ट्रिंग मे तोड़ैत अछि।';

  @override
  String get gameHintWord449Join => 'विभाजक सँ स्ट्रिंग सभक क्रम केँ जोड़ैत अछि।';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिंग सँ चारू कात क खाली स्थान हटबैत अछि।';

  @override
  String get gameHintWord451Chomp => 'Perl वा Ruby मे अंतिम रिकॉर्ड विभाजक हटबैत अछि।';

  @override
  String get gameHintWord452Map => 'संग्रहक प्रत्येक वस्तु पर रूपांतरण लागू करैत अछि।';

  @override
  String get gameHintWord453Filter => 'शर्त पूरा करएबला संग्रह वस्तु केँ राखैत अछि।';

  @override
  String get gameHintWord454Reduce => 'संग्रह केँ संचित परिणाम मे जोड़ैत अछि।';

  @override
  String get gameHintWord455Range => 'पूर्णांकक अंकगणितीय क्रम केँ दर्शाबएबला Python प्रकार।';

  @override
  String get gameHintWord456Length => 'संग्रहक आकार लौटाबएबला गुण वा मेथड।';

  @override
  String get gameHintWord457Len => 'संग्रहक आकार लौटाबएबला Python बिल्ट-इन फंक्शन।';

  @override
  String get gameHintWord458Type => 'ऑब्जेक्टक प्रकार लौटाबएबला Python फंक्शन।';

  @override
  String get gameHintWord459Isinstance => 'प्रकार पदानुक्रम मे सदस्यता जाँचएबला Python फंक्शन।';

  @override
  String get gameHintWord460Yield => 'जेनरेटर सँ मान उत्पन्न करएबला कीवर्ड।';

  @override
  String get gameHintWord461Saas => 'पूर्ण सॉफ्टवेयर एप्लिकेशन देबएबला क्लाउड मॉडल।';

  @override
  String get gameHintWord462Paas => 'प्रबंधित एप्लिकेशन विकास प्लेटफॉर्म देबएबला क्लाउड मॉडल।';

  @override
  String get gameHintWord463Iaas => 'वर्चुअल कंप्यूट, भंडारण आ नेटवर्किंग देबएबला क्लाउड मॉडल।';

  @override
  String get gameHintWord464Hybrid => 'निजी आ सार्वजनिक इन्फ्रास्ट्रक्चर केँ जोड़एबला क्लाउड तरीका।';

  @override
  String get gameHintWord465Archive => 'कम प्रयुक्त डेटाक दीर्घकालिक भंडारण।';

  @override
  String get gameHintWord466Public => 'कएक ग्राहक केँ सेवा देबएबला क्लाउड स्वामित्व मॉडल।';

  @override
  String get gameHintWord467Private => 'एकल संगठन लेल समर्पित क्लाउड मॉडल।';

  @override
  String get gameHintWord468Scalability => 'संसाधन जोड़ि कऽ बढ़ैत भार सँभारबाक क्षमता।';

  @override
  String get gameHintWord469Availability => 'कतेक हद तक सेवा आवश्यकता पर पहुँच योग्य रहैत अछि।';

  @override
  String get gameHintWord470Resilience => 'विफलता सहबाक आ ओहि सँ उबरबाक क्षमता।';

  @override
  String get gameHintWord471Redundancy => 'दोहराओल घटक जे एकल विफलता बिंदु घटबैत अछि।';

  @override
  String get gameHintWord472Disaster => 'प्रमुख आउटेज जकरा पुनर्प्राप्ति रणनीति सँ सँभालल जाइत अछि।';

  @override
  String get gameHintWord473Recovery => 'विफलताक बाद सेवा वा डेटा बहाल करब।';

  @override
  String get gameHintWord474Replicate => 'डेटा वा वर्कलोड केँ दोसर स्थान पर प्रतिलिपि करू।';

  @override
  String get gameHintWord475Snapshotting => 'डेटा वा प्रणाली स्थितिक निश्चित समयक प्रति बनाएब।';

  @override
  String get gameHintWord476Restore => 'सहेजल प्रति सँ डेटा पुनर्प्राप्त करबाक ऑपरेशन।';

  @override
  String get gameHintWord477Residency => 'आवश्यकता जे सहेजल डेटाक भौगोलिक स्थान निर्धारित करैत अछि।';

  @override
  String get gameHintWord478Compliance => 'आवश्यक नियम आ संगठनात्मक नियंत्रण पूरा करब।';

  @override
  String get gameHintWord479Governance => 'प्रौद्योगिकी प्रयोग नियंत्रित करएबला नीति आ प्रक्रिया।';

  @override
  String get gameHintWord480Audit => 'दर्ज गतिविधि आ अनुपालन प्रमाणक समीक्षा।';

  @override
  String get gameHintWord481Token => 'प्राधिकरण वा पहचान केँ दर्शाबएबला क्रेडेंशियल वा प्रतीक।';

  @override
  String get gameHintWord482Oauth => 'प्रतिनिधित्व कएल पहुँच केँ अनुमति देबएबला प्राधिकरण फ्रेमवर्क।';

  @override
  String get gameHintWord483Saml => 'XML-आधारित मानक जे सामान्यतः उद्यम सिंगल साइन-ऑन लेल प्रयुक्त होइत अछि।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पाइपलाइन मे प्रयुक्त विशेष कमांड।';

  @override
  String get gameHintWord485Algorithm => 'संगणकीय समस्या सुलझाबए लेल चरण सभक परिभाषित क्रम।';

  @override
  String get gameHintWord486Key => 'एन्क्रिप्शन नियंत्रित करबाक वा सहेजल डेटा पहचानबाक मान।';

  @override
  String get gameHintWord487Alias => 'शेल कमांड वा संसाधनक वैकल्पिक नाम।';

  @override
  String get gameHintWord488Amend => 'Git कमिट विकल्प जे सभ सँ नवका कमिट केँ बदलैत अछि।';

  @override
  String get gameHintWord489Allsigned => 'PowerShell निष्पादन नीति जे हस्ताक्षरित स्क्रिप्ट आवश्यक करैत अछि।';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell नीति जे डाउनलोड कएल स्क्रिप्ट पर हस्ताक्षर आवश्यक करैत अछि।';

  @override
  String get gameHintWord491Acl => 'सूची जे उपयोगकर्ता वा प्रणाली लेल अनुमति परिभाषित करैत अछि।';

  @override
  String get gameHintWord492Uid => 'Unix उपयोगकर्ता केँ देल गेल संख्यात्मक पहचानकर्ता।';

  @override
  String get gameHintWord493Setgid => 'अनुमति बिट जे निष्पादन वा विरासत काल समूह पहचान केँ प्रभावित करैत अछि।';

  @override
  String get gameHintWord494Setfacl => 'फाइल एक्सेस कंट्रोल लिस्ट सेट करएबला Linux कमांड।';

  @override
  String get gameHintWord495Isolation => 'पृथक्करण जे वर्कलोड सभ केँ एक-दोसर मे बाधा करबा सँ रोकैत अछि।';

  @override
  String get gameHintWord496Sighup => 'Unix हैंगअप सिग्नल जे प्रायः कॉन्फ़िगरेशन पुनः लोड करबाक अनुरोध करैत अछि।';

  @override
  String get gameHintWord497Sigint => 'Unix इंटरप्ट सिग्नल जे सामान्यतः Control-C सँ बनैत अछि।';

  @override
  String get gameHintWord498Sigstop => 'Unix सिग्नल जे प्रक्रिया केँ समाप्त कएने बिना रोकैत अछि।';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड आ एक्सेस की जकाँ संवेदनशील मान।';

  @override
  String get gameHintWord500Secure => 'अनधिकृत पहुँच सँ सुरक्षित कनेक्शनक वर्णन करैत अछि।';

  @override
  String get fontSettingsTitle => 'फॉन्ट';

  @override
  String get fontChangeFont => 'फॉन्ट बदलू';

  @override
  String get fontSystemDefault => 'सिस्टम डिफॉल्ट';

  @override
  String get fontPreview => 'पूर्वावलोकन';

  @override
  String get fontPreviewSample => 'एक-एक प्रश्नसँ DevOps सीखू';

  @override
  String get fontSelected => 'चयनित';

  @override
  String get fontLatinOnlyNote => 'कस्टम फॉन्ट लैटिन अक्षर पर लागू होइत अछि। आन लिपि अहाँक डिवाइसक फॉन्टमे रहत।';

  @override
  String get fontDescSystem => 'अहाँक डिवाइसक अंतर्निर्मित फॉन्ट';

  @override
  String get fontDescGeometric => 'ज्यामितीय सैन्स-सेरिफ';

  @override
  String get fontDescGeometricRounded => 'ज्यामितीय गोलाकार सैन्स-सेरिफ';

  @override
  String get fontDescFriendly => 'सहज सैन्स-सेरिफ';

  @override
  String get fontDescCondensed => 'संकुचित';

  @override
  String get fontDescRounded => 'गोलाकार सैन्स-सेरिफ';

  @override
  String get fontDescRoundedDisplay => 'गोलाकार डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
