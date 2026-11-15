// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dogri (`doi`).
class AppLocalizationsDoi extends AppLocalizations {
  AppLocalizationsDoi([String locale = 'doi']) : super(locale);

  @override
  String get appTour => 'ऐप दी सैर';

  @override
  String get skipTour => 'सैर छोड़ो';

  @override
  String get finishTour => 'सैर पूरी करो';

  @override
  String tourStep(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेविगेशन मेनू';

  @override
  String get tourSearch => 'संबंधत क्विज़ श्रेणियां लब्भने लेई इत्थें विषय लिखो।';

  @override
  String get tourCategory => 'मिश्रत क्विज़ लेई DevOps पर टैप करो। होर श्रेणियें च सुआलां दे सेट न। बाद च पढ़ने लेई सुआल बुकमार्क करो।';

  @override
  String get tourMenu => 'नेविगेशन मेनू खोलने लेई इस बटन पर टैप करो।';

  @override
  String get tourLearning => 'कार्ड दिक्खने लेई सिक्खो खोलो। किसे बी दिशा च स्वाइप करो, शफ़ल करो, ऑटो-स्वाइप लाओ जां कार्ड बुकमार्क करो।';

  @override
  String get tourGames => 'खेडां खेड़ियै अंक कमाओ। स्तर आह्ली खेड च हर पूरा स्तर 100 अंक दिंदा ऐ; संकेत लेई 20 अंक लगदे न।';

  @override
  String get tourAchievements => 'अपनियां उपलब्धियां इत्थें दिक्खो। नमियां उपलब्धियां ते उपलब्ध थीम पॉपअप च दस्से जंदे न।';

  @override
  String get tourSettings => 'भाशा, थीम ते अवाज़ चुनो। बुकमार्क लेई सहेजे दा डेटा जां एह् गाइड परतियै दिक्खने लेई ऐप दी सैर खोलो।';

  @override
  String get achievementUnlocked => 'उपलब्धि अनलॉक होई!';

  @override
  String get themeUnlocked => 'नमीं थीम उपलब्ध ऐ!';

  @override
  String get themeUnlockedMessage => 'हून तुस सेटिंग्स > थीम च एह् थीम चुनी सकदे ओ।';

  @override
  String get gameSounds => 'खेड दे अवाज़';

  @override
  String get gameSoundsDescription => 'खेडां ते क्विज़ लेई ध्वनि प्रभाव। डिवाइस दी अवाज़ ते साइलेंट मोड जाँचो।';

  @override
  String get testSound => 'अवाज़ जाँचो';

  @override
  String get soundSettingBusy => 'किरपा करियै उडीको...';

  @override
  String get soundSettingError => 'अवाज़ दी सेटिंग लोड जां सहेजी नेईं जाई सकी। परतियै कोशिश करो।';

  @override
  String get soundPlaybackError => 'अवाज़ नेईं बज्जी। डिवाइस जां ब्राउज़र दी ऑडियो सेटिंग जाँचो।';

  @override
  String get saveData => 'सहेजे दा डेटा';

  @override
  String get learningTranslationUnavailable => 'इस कार्ड दा अजें चुनी दी भाशा च अनुवाद नेईं होआ ऐ।';

  @override
  String get saveQuestion => 'सुआल सहेजो';

  @override
  String defaultPortQuestion(String service) {
    return '$service दा डिफॉल्ट पोर्ट केह् ऐ?';
  }

  @override
  String get removeSavedItem => 'सहेजे दे चा हटाओ';

  @override
  String get noSavedData => 'अजें किश सहेजेआ नेईं ऐ। सिक्खने आह्ले कार्ड जां क्विज़ दे सुआल बुकमार्क करो।';

  @override
  String get savedDataError => 'सहेजे दा डेटा लोड जां अपडेट नेईं होई सकेआ। परतियै कोशिश करो।';

  @override
  String get savedItemUnavailable => 'एह् सहेजी दी चीज हून उपलब्ध नेईं ऐ।';

  @override
  String get correctAnswer => 'स्हेई जवाब';

  @override
  String get retry => 'परतियै कोशिश करो';

  @override
  String get certificates => 'प्रमाणपत्र';

  @override
  String get whatsNew => 'नमां केह् ऐ';

  @override
  String get settings => 'सेटिंगां';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get language => 'भाशा';

  @override
  String get selectLanguage => 'भाशा चुनो';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'क्विज शुरू करो';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'श्रेणी बदलो';

  @override
  String get dailyQuiz => 'रोजाना क्विज';

  @override
  String get dailyQuizCompleted => 'रोजाना क्विज पूरी';

  @override
  String get dailyQuizCompletedMessage => 'तुसें अज्ज दी रोजाना क्विज पूरी करी लैती ऐ। नमीं चुनौती लेई कल आओ!';

  @override
  String get leaderboard => 'लीडरबोर्ड';

  @override
  String get shareApp => 'ऐप सांझी करो';

  @override
  String get rateApp => 'ऐप गी रेट करो';

  @override
  String get about => 'बारे';

  @override
  String get ok => 'ठीक ऐ';

  @override
  String get home => 'मुख्य पन्ना';

  @override
  String get games => 'खेडां';

  @override
  String get referAndEarn => 'सद्दो ते कमाओ';

  @override
  String get themes => 'थीमां';

  @override
  String get version => 'वर्जन';

  @override
  String get developer => 'डेवलपर';

  @override
  String get contact => 'संपर्क';

  @override
  String get learning => 'सिक्खना';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'मेरे कन्नै जुड़ो';

  @override
  String get aboutDescription => 'DevOps Quiz कन्नै Linux, Docker, Kubernetes ते होर DevOps विशे सिक्खियै इंटरव्यू ते प्रमाणपत्रें दी त्यारी करो।';

  @override
  String get quizResult => 'क्विज दा नतीजा';

  @override
  String get outstanding => 'शानदार!';

  @override
  String get greatJob => 'बड़ा चंगा!';

  @override
  String get goodEffort => 'चंगी कोशिश!';

  @override
  String get keepPracticing => 'अभ्यास जारी रक्खो!';

  @override
  String get dontGiveUp => 'हार नेईं मन्नो!';

  @override
  String get shareMessage1 => 'मेरा स्कोर';

  @override
  String get shareMessage2 => 'DevOps क्विज च!';

  @override
  String get downloadApp => 'ऐप डाउनलोड करो:';

  @override
  String get score => 'स्कोर';

  @override
  String get points => 'अंक';

  @override
  String get percentage => 'प्रतिशत';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'पूरे स्कोर दा बोनस';

  @override
  String get shareScore => 'स्कोर सांझा करो';

  @override
  String get restartQuiz => 'क्विज परतियै शुरू करो';

  @override
  String get backToCategories => 'श्रेणियें च वापस जाओ';

  @override
  String get greatProgress => 'बड़ा चंगा! तुस चंगी तरक्की करै करदे ओ।';

  @override
  String get practiceMore => 'चंगी कोशिश! होर अभ्यास कन्नै स्कोर बधग।';

  @override
  String get keepLearning => 'सिक्खदे रवो ते परतियै कोशिश करो।';

  @override
  String get everyExpertStarted => 'हर माहिर शुरू च सिक्खने आह्ला हा। अभ्यास जारी रक्खो!';

  @override
  String get quizInstructions => 'क्विज दियां हिदायतां';

  @override
  String get instruction1 => 'हर सेट च 25 सवाल न।';

  @override
  String get instruction2 => 'हर सवाल लेई 30 सेकंड न।';

  @override
  String get instruction3 => 'हरा = स्हेई जवाब।';

  @override
  String get instruction4 => 'लाल = गलत जवाब।';

  @override
  String get instruction5 => 'जवाब बदली नेईं सकदे।';

  @override
  String get instruction6 => 'पिच्छे बटन सिर्फ समीक्षा लेई ऐ।';

  @override
  String get instruction7 => 'पूरा होने पर स्कोर दस्सेआ जाग।';

  @override
  String get instruction8 => 'हर सही जवाब पर 10 अंक मिलदे न।';

  @override
  String excellentPerformance(Object expert) {
    return 'शानदार प्रदर्शन! तुस इक $expert ओ।';
  }

  @override
  String get selectCategory => 'श्रेणी चुनो';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'सेट चुनो';

  @override
  String get set => 'सेट';

  @override
  String get questions => 'सवाल';

  @override
  String get noScoresYet => 'अजें कोई स्कोर नेईं';

  @override
  String get pointsShort => 'अंक';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz च जी आयां नूं';

  @override
  String hiUser(String name) {
    return 'नमस्ते $name';
  }

  @override
  String get challengeMode => 'चुनौती मोड';

  @override
  String get challenge => 'चुनौती';

  @override
  String get question => 'सवाल';

  @override
  String get reward => 'इनाम';

  @override
  String get survivalMode => 'सर्वाइवल मोड';

  @override
  String get speedChallenge => 'रफ्तार दी चुनौती';

  @override
  String get dailyChallenge => 'रोजाना चुनौती';

  @override
  String get ultimateChallenge => 'आखरी चुनौती';

  @override
  String get timeLeft => 'बाकी समां';

  @override
  String get completed => 'पूरा';

  @override
  String get locked => 'लॉक';

  @override
  String get back => 'पिच्छे';

  @override
  String get next => 'अग्गे';

  @override
  String get submit => 'जमा करो';

  @override
  String get achievements => 'उपलब्धियां';

  @override
  String get streak => 'लगातार दिन';

  @override
  String get days => 'दिन';

  @override
  String get tomorrowsReward => 'कल दा इनाम';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 मेरा स्कोर $score/$totalQuestions #DevOps Quiz!\n\n🏆 अंक: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 प्रतिशत: $percentage%\n\nऐप डाउनलोड करो:';
  }

  @override
  String get gameUiSpinWheel => 'पहिया घुमाओ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'घुमाओ ते बोनस अंक जिततो';

  @override
  String get gameUiScratchCard => 'स्क्रैच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'इनाम दिक्खने लेई खरोचो';

  @override
  String get gameUiLuckySlots => 'लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स घुमाओ ते अंक जिततो';

  @override
  String get gameUiMysteryDeal => 'रहस्यमयी सौदा';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'इक रहस्यमयी डब्बा चुनो ते जवाब देओ';

  @override
  String get gameUiMemoryMatch => 'मेमोरी मैच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोड़ियां मिलाओ';

  @override
  String get gameUiWordGuess => 'शब्द अंदाजा';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'लेवलें च DevOps शब्दें दा अंदाजा लाओ';

  @override
  String get gameUiFindWords => 'शब्द लब्भो';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिड च लुकोए दे DevOps शब्द लब्भो';

  @override
  String get gameUiSpotTheDifference => 'फर्क पछानो';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दो चित्रित दृश्यें दे बीचा पंज बदलाव लब्भो';

  @override
  String get gameUiJigsawPuzzle => 'जिगसॉ पज़ल';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'साझा कीते दे HD जानवर ते कुदरत दे चित्र फिरी जोड़ो';

  @override
  String get gameUiHighOrLow => 'ज्यादा जां घट्ट';

  @override
  String get gameUiBuildAStreak => 'लगातार जीत बनाओ';

  @override
  String get gameUiTrueOrFalseBlitz => 'सच्च जां झूठ ब्लिट्ज';

  @override
  String get gameUiQuickAnswerQuiz => 'फटाफट जवाब क्विज';

  @override
  String get gameUiCommandMatch => 'कमांड मैच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमांडें गी उंदे मतलबें नाल मिलाओ';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'डिफॉल्ट पोर्टें दा अंदाजा लाओ';

  @override
  String get gameUiTicTacToe => 'टिक-टैक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X नॉट्स ऐंड क्रॉसेज कंप्यूटर';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चार डिस्क सुट्टो';

  @override
  String get gameUiLudo => 'लूडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट्स नाल दौड़ लाओ';

  @override
  String get gameUiChess => 'शतरंज';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'शतरंज दा बोर्ड, वैध चालां, दो खिलाड़ी';

  @override
  String get gameUiSnakeAndLadders => 'सांप ते सीढ़ी';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'पासे दा बोर्ड, सांप सीढ़ी, दो खिलाड़ी';

  @override
  String get gameUiGames => 'खेढां 🎮';

  @override
  String get gameUiPlayEarn => 'खेढो ते कमाओ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'खेढां खेढो ते बोनस अंक कमाओ!';

  @override
  String get gameUiSearchGames => 'खेढां लब्भो';

  @override
  String get gameUiClearSearch => 'खोज साफ करो';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'कोई बी खेढ \"$value1\" नाल नेईं मिलदी';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'घुमाओ ते बोनस अंक जिततो।';

  @override
  String get gameUiScratchToRevealYourReward => 'अपना इनाम दिक्खने लेई खरोचो।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स घुमाओ ते अंक जिततो।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'इक रहस्यमयी डब्बा चुनो ते अंक जित्तने लेई सही जवाब देओ।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'अंक कमाने लेई DevOps जोड़ियां मिलाओ।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 कोशशें च DevOps शब्द दा अंदाजा लाओ।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिड च लुकोए दे DevOps शब्द लब्भो।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 लेवलें च DevOps शब्द लब्भने लेई स्वाइप करो।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दो चित्रित दृश्यें दे बीचा पंज बदलाव लब्भो।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'साझा कीते दे HD जानवर ते कुदरत दे चित्र फिरी जोड़ो।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'लगातार जीत बनाओ ते अपने अंक जमा करो।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'फटाफट जवाबें नाल घड़ी गी हराओ।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'सच्च जां झूठ ब्लिट्ज 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमांडें गी उंदे कम्म नाल मिलाओ।';

  @override
  String get gameUiCommandMatch670a76e => 'कमांड मैच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जिंदगियें नाल डिफॉल्ट पोर्टें दा अंदाजा लाओ।';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'कंप्यूटर कन्नै O/X खेढो।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जित्तने लेई इक कतार च चार डिस्क सुट्टो।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'अपनी गोटियें दी तिन्न बॉट्स नाल दौड़ लाओ।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'वैध चालें समेत लोकल दो खिलाड़ियें आला शतरंज।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'वैध दो खिलाड़ियें आला शतरंज दा मैच खेढो।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दो खिलाड़ियें आली पासे दी बोर्ड खेढ।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 तकर दौड़ लाओ। सीढ़ियां चढ़ो ते सांपें थमां बचो।';

  @override
  String get gameUiPlay => 'खेढो';

  @override
  String get gameUiWheelStopped => 'पहिया रुकी गेआ!';

  @override
  String get gameUiYourRewardIs => 'तुंदा इनाम ऐ';

  @override
  String get gameUiPOINTS => 'अंक';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'इस इनाम गी हासल करने लेई क्विज दे 1 सवाल दा सही जवाब देओ।';

  @override
  String get gameUiWrongAnswerRewardLost => 'गलत जवाब = इनाम गुआची गेआ।';

  @override
  String get gameUiAnswerQuestion => 'सवाल दा जवाब देओ';

  @override
  String get gameUiSpinWheele449982 => '🎡 पहिया घुमाओ';

  @override
  String get gameUiDailySpin => 'रोजाना घुमाव';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'पहिया घुमाओ, फी अपना इनाम हासल करने लेई इक सवाल दा जवाब देओ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'तुसें अज्ज दा घुमाव पैहलें थमां इस्तेमाल करी लेआ ऐ।';

  @override
  String get gameUiSpinning => 'घुम्मी दा ऐ...';

  @override
  String get gameUiSPINNOW => 'हुण घुमाओ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'कल्ल फिरी आओ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'अज्ज दा इनाम: ⭐ $value1 अंक';
  }

  @override
  String get gameUiBackToGames => 'खेढां पर वापस';

  @override
  String get gameUiSPIN => 'घुमाओ';

  @override
  String get gameUiRewardRevealed => 'इनाम सामने आई गेआ!';

  @override
  String get gameUiYouFound => 'तुसें लब्भेआ';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्रैच कार्ड';

  @override
  String get gameUiDailyScratch => 'रोजाना स्क्रैच';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'अज्ज दा इनाम दिक्खने लेई कार्ड खरोचो!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'तुसें अज्ज दा स्क्रैच कार्ड पैहलें थमां इस्तेमाल करी लेआ ऐ।';

  @override
  String get gameUiAlreadyScratched => 'पैहलें थमां खरोचेआ गेआ';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'इक होर इनाम लेई कल्ल फिरी आओ।';

  @override
  String get gameUiYouRevealed => 'तुसें दिक्खेआ';

  @override
  String get gameUiSCRATCHHERE => 'इत्थें खरोचो  👆';

  @override
  String get gameUiJACKPOT777 => 'जैकपॉट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'तुंदा इनाम';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स घुमाओ, फी इनाम हासल करने लेई इक सवाल दा जवाब देओ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'तुस अज्ज पैहलें थमां खेढी चुके ओ।';

  @override
  String get gameUiSPINNING => 'घुम्मी दा ऐ...';

  @override
  String get gameUiROLLNOW => 'हून रोल करो';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जैकपॉट! 777 अंक उपलब्ध न!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'मिस्ट्री डील दी स्थिति जाँची नेईं सकी: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'डिब्बा $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 अंक';
  }

  @override
  String get gameUiStartQuestion => 'सवाल शुरू करो';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 मिस्ट्री डील';

  @override
  String get gameUiMysteryDealCompleted => 'मिस्ट्री डील पूरी होई गेई!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'तुसें अज्ज मिस्ट्री डील पैहले थमां खेढी लेदी ऐ।';

  @override
  String get gameUiTodayYouWon => 'अज्ज तुसें जित्ता';

  @override
  String get gameUiTodaySReward => 'अज्ज दा इनाम';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 अंक';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 अंक गुआची गे';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'इक होर मिस्ट्री डिब्बे आस्तै कल्ल फिरी औओ!';

  @override
  String get gameUiChooseYourMysteryBox => 'अपना मिस्ट्री डिब्बा चुनो';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'हर डिब्बे च 10 थमां 1000 अंकें दे बिच्च इक लुकेआ दा इनाम ऐ।';

  @override
  String get gameUiPickOnlyOneBox => 'सिर्फ इक डिब्बा चुनो!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सारे $value1 लेवल पूरे होई गे!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'लेवल $value1 पूरा होई गेआ!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालें च पूरा कित्ता।\nतुसें $value2 अंक कमाए!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालें च पूरा कित्ता।\nएह लेवल पैहले थमां पूरा होई चुके दा हा।';
  }

  @override
  String get gameUiNextLevel => 'अगला लेवल';

  @override
  String get gameUiDone => 'होई गेआ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमोरी मैच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सारे 100 लेवल पूरे होई गे!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'तुसें मेमोरी मैच दा हर लेवल पूरा करी लेआ। बड़ा बधिया खेढेआ!';

  @override
  String get gameUiChooseLevel => 'लेवल चुनो';

  @override
  String gameUiMoves(String value1) {
    return 'चालां: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return '$value2 च लेवल $value1';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोड़े';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'लेवल $value1 याद करो';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 मेल खांदे जोड़े लब्भो';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'अध्याय 1 · बिल्ड पाइपलाइन फिरी बहाल करो';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'अध्याय 2 · क्लाउड प्लेटफार्म दा पैमाना बधाओ';

  @override
  String get gameUiChapter3ProtectProduction => 'अध्याय 3 · प्रोडक्शन दी हिफाजत करो';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'जमा करने आस्तै बचे दे सारे $value1 अक्खर बरतो।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सारे लेवल पूरे होई गे!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'लेवल $value1 पूरा होई गेआ!';
  }

  @override
  String get gameUiTryAgain => 'फिरी कोशश करो';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्द $value1 हा। तुसें $value2 अंक कमाए।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्द $value1 हा। तुसें $value3 संकेत दे बाद $value2 अंक कमाए।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्द $value1 हा। तुसें $value3 संकेतें दे बाद $value2 अंक कमाए।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्द $value1 हा। लेवल $value2 अजें बी तुंदी उडीक करा दा ऐ।';
  }

  @override
  String get gameUiFinish => 'खत्म करो';

  @override
  String get gameUiNextLevel254fd73 => 'अगला लेवल';

  @override
  String get gameUiRetryLevel => 'लेवल फिरी खेढो';

  @override
  String get gameUiHowToPlay => 'खेढने दा तरीका';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'हर लेवल च इक DevOps शब्द ऐ। पंज अक्खरें थमां छोटे शब्द बिना कुसै मुफ्त अक्खर दे शुरू होंदे न; लम्मे शब्द इक अक्खर कन्नै शुरू होंदे न। जवाब बनाने आस्तै अक्खरें दे रैक दा इस्तेमाल करो ते Enter दबाओ। संकेत इक होर अक्खर दस्सदे न ते तुंदे बकाए चा 20 अंक कटदे न। हर पूरा कित्ते दे लेवल आस्तै 100 अंक मिलदे न।';

  @override
  String get gameUiGotIt => 'समझ गेआ';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सारे $value1 लेवल पूरे होई गे!';
  }

  @override
  String get gameUiEasy => 'सौखा';

  @override
  String get gameUiMedium => 'दरम्याना';

  @override
  String get gameUiHard => 'औखा';

  @override
  String get gameUiHowToPlay13a6b22 => 'खेढने दा तरीका';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'लेवल $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'इनाम $value1 अंक · बरते दे संकेत $value2';
  }

  @override
  String get gameUiHint20Pts => 'संकेत · −20 अंक';

  @override
  String get gameUiEnter => 'एंटर';

  @override
  String get gameUiDelete => 'मटाओ';

  @override
  String get gameUiDragThroughAWord => 'शब्द उप्परा खिच्चो';

  @override
  String get gameUiDragThroughEachWord => 'हर शब्द उप्परा खिच्चो';

  @override
  String get gameUiReleaseToSelect => 'चुनने आस्तै छोड़ो';

  @override
  String gameUiFound(String value1) {
    return '$value1 लब्भेआ';
  }

  @override
  String get gameUiNoWordThere => 'उत्थें कोई शब्द नेईं';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 पैहले थमां लब्भी चुके दा ऐ';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 लब्भो';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सारे लेवल पूरे होई गे!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'तुसें हर शब्द लब्भेआ ते $value1 अंक कमाए।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'तुसें हर शब्द लब्भेआ। एह लेवल पैहले थमां पूरा होई चुके दा हा।';

  @override
  String get gameUiAll500LevelsComplete => 'सारे 500 लेवल पूरे होई गे!';

  @override
  String get gameUiReviewLevels => 'लेवलें दी समीक्षा करो';

  @override
  String gameUiLeft(String value1) {
    return '$value1 बाकी';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 अंक';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगति सेव नेईं होई सकी। मेहरबानी करियै फिरी कोशश करो।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'तुसें $value1 अंक कमाए!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'तुसें एह तस्वीर पैहले थमां पूरी करी लेदी ऐ। दुबारा खेढने उप्पर कोई होर अंक नेईं मिलदे।';

  @override
  String get gameUiYouCompletedEveryPicture => 'तुसें हर तस्वीर पूरी करी लेई!';

  @override
  String get gameUiLevels => 'लेवल';

  @override
  String get gameUiPictureB => 'तस्वीर B';

  @override
  String get gameUiPictureA => 'तस्वीर A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'तस्वीर लोड नेईं होई सकी। फिरी कोशश करो';

  @override
  String get gameUiResetZoom => 'जूम रीसेट करो';

  @override
  String get gameUiZoomBothPictures => 'दोऐ तस्वीरें जूम करो';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'संकेत · हर संकेत दे $value1 अंक';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगति लोड नेईं होई सकी। फिरी कोशश करो';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'लेवल $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सारे फर्क लब्भी गे!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count फर्क लब्भो। कुसै बी तस्वीर च हर इक उप्पर टैप करो।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'चूकां: $value1  ·  संकेत: $value2 (−$value3 अंक)  ·  $value4 लेवल पूरे';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'अगला लेवल: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'पहेली $value1 पूरी होई गेई!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'तस्वीर $value1 चालें च पूरी होई। तुसें $value2 अंक कमाए।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'तस्वीर $value1 चालें च पूरी होई।';
  }

  @override
  String get gameUiNextPuzzle => 'अगली पहेली';

  @override
  String get gameUiAllPuzzlesComplete => 'सारियां पहेलियां पूरियां होई गेइयां';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'पहेली दा टुकड़ा $value1/$value2, सई थाहरै रक्खेआ दा';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'पहेली दा टुकड़ा $value1/$value2';
  }

  @override
  String get gameUiChoosePuzzle => 'पहेली चुनो';

  @override
  String get gameUiShufflePieces => 'टुकड़े फैंटो';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'पहेली दी तस्वीर लोड नेईं कीती जाई सकी।';

  @override
  String get gameUiPreviousPuzzle => 'पिछली पहेली';

  @override
  String gameUiPuzzle(String value1) {
    return 'पहेली $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चालां';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'टुकड़ें गी बदलने लेई घसीटो, जां दो टुकड़ें पर टैप करो।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 पहेलियां हल होइयां  ·  हर इक दे $value3 अंक';
  }

  @override
  String get gameUiGameOver => 'खेढ खत्म';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'संख्या $value1 ही।\nलगातार जित: $value2\nतुसें $value3 अंक कमाए!\n\nइक होर मौके लेई कल मुड़ियै आओ!';
  }

  @override
  String get gameUiHigherOrLower => 'ऊपर जां थल्ले 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'अज्ज पैहले खेढी लेआ!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'तुसें $value1/$value2/$value3 गी खेढेआ हा।\n\nनमीं लगातार जित बनाने लेई कल मुड़ियै आओ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'तुस अज्ज पैहले खेढी चुके ओ।\n\nइक होर मौके लेई कल मुड़ियै आओ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 लगातार जित: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ अंक: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'अगली संख्या ऊपर होग जां थल्ले?';

  @override
  String get gameUiLower => 'थल्ले';

  @override
  String get gameUiHigher => 'ऊपर';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'सच जां झूठ ब्लिट्ज ⚡';

  @override
  String get gameUiTimeSUp => 'समां खत्म!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'सही जवाब: $value1\nसभनें शा बधिया लगातार जित: $value2\n$value3तुसें $value4 अंक कमाए!\n\nइक होर दौर लेई कल मुड़ियै आओ!';
  }

  @override
  String get gameUiStreakBonus20 => 'लगातार जित बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'की दस्सेआ गेदा जवाब सच ऐ जां झूठ?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 श्रेणियें च $value1 सवाल';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'तुंदे कोल $value1 सकिंट न। हर सही जवाब दे $value2 अंक मिलदे न। गलत जवाब नाल $value3 सकिंट घटी जंदे न। 5 दी लगातार जित पर +20 बोनस मिलदा ऐ।';
  }

  @override
  String get gameUiRoundTimer => 'दौर टाइमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सकिंट';
  }

  @override
  String get gameUiStart => 'शुरू करो';

  @override
  String get gameUiTrue => 'सच';

  @override
  String get gameUiFalse => 'झूठ';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमांड मिलान 🔗';

  @override
  String get gameUiAllMatched => 'सारे मिलाई गे!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'गलतियां: $value1\nतुसें $value2 अंक कमाए!\n\nनमीं कमांडें लेई कल मुड़ियै आओ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'दौर $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'इक कमांड पर टैप करो, फिरी उदे मतलब पर टैप करो।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'हून मेल खांदे मतलब पर टैप करो।';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जिंदां खत्म';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'सही जवाब: $value1\nतुसें $value2 अंक कमाए!\n\nइक होर दौर लेई कल मुड़ियै आओ!';
  }

  @override
  String get gameUiYouEarned10Points => 'तुसें 10 अंक कमाए!';

  @override
  String get gameUiYouWin => 'तुस जिती गे!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जिती गेआ!';
  }

  @override
  String get gameUiXWins => 'X जिती गेआ!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जिती गेआ!';
  }

  @override
  String get gameUiComputerWins => 'कंप्यूटर जिती गेआ';

  @override
  String get gameUiOWins => 'O जिती गेआ!';

  @override
  String get gameUiPlayer2OWins => 'खिलाड़ी 2 (O) जिती गेआ!';

  @override
  String get gameUiItSADraw => 'ए बराबरी ऐ';

  @override
  String get gameUiYourTurn => 'तुंदी बारी';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 दी बारी';
  }

  @override
  String get gameUiComputerIsThinking => 'कंप्यूटर सोची रेहा ऐ';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खिलाड़ी $value1 दी चाल';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 दी चाल';
  }

  @override
  String get gameUiPlayer2ToMove => 'खिलाड़ी 2 दी चाल';

  @override
  String get gameUiNewRound => 'नमां दौर';

  @override
  String get gameUiVsComputer => 'कंप्यूटर बनाम';

  @override
  String get gameUi2Players => '2 खिलाड़ी';

  @override
  String get gameUiYou => 'तुस';

  @override
  String get gameUiDraws => 'बराबरियां';

  @override
  String get gameUiPlayer2 => 'खिलाड़ी 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'खाना $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'फिरी खेढो';

  @override
  String get gameUiConnectFourWin20Points => 'कनेक्ट फोर जित: 20 अंक!';

  @override
  String get gameUiBotWins => 'बॉट जिती गेआ!';

  @override
  String get gameUiRed => 'लाल';

  @override
  String get gameUiYellow => 'पीला';

  @override
  String get gameUiBoardFullDraw => 'बोर्ड भरी गेआ — बराबरी';

  @override
  String get gameUiBotIsThinking => 'बॉट सोची रेहा ऐ';

  @override
  String get gameUiBotTurn => 'बॉट दी बारी';

  @override
  String get gameUiNewGame => 'नमीं खेढ';

  @override
  String get gameUiVsBot => 'बॉट बनाम';

  @override
  String get gameUi2Player => '2 खिलाड़ी';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बॉट दे खलाफ खेढो · डिस्क सुट्टने लेई कॉलम पर टैप करो';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दो खिलाड़ी · डिस्क सुट्टने लेई कॉलम पर टैप करो';

  @override
  String gameUiColumn(String value1) {
    return 'कॉलम $value1';
  }

  @override
  String get gameUiYouRed => 'तुस · लाल';

  @override
  String get gameUiRedPlayer1 => 'लाल · खिलाड़ी 1';

  @override
  String get gameUiBotYellow => 'बॉट · पीला';

  @override
  String get gameUiYellowPlayer2 => 'पीला · खिलाड़ी 2';

  @override
  String get gameUiLudoMatchStats => 'लूडो मैच आंकड़े';

  @override
  String get gameUiNoCompletedMatchesYet => 'हून तगर कोई मैच पूरा नेईं होआ।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेढे $value1  ·  जिते $value2  ·  हारे $value3';
  }

  @override
  String get gameUiClose => 'बंद करो';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लूडो चैंपियन! तुसें 50 अंक कमाए।';

  @override
  String get gameUiNewLudoGame => 'नमीं लूडो खेढ';

  @override
  String get gameUiBotOpponents => 'बॉट विरोधी';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नमां मैच शुरू करने नाल तुंदी सेव कीती दी खेढ बदली जाग।';

  @override
  String get gameUiCancel => 'रद्द करो';

  @override
  String get gameUiStartGame => 'खेढ शुरू करो';

  @override
  String get gameUiPlayerColours => 'खिलाड़ी रंग';

  @override
  String get gameUiApply => 'लागू करो';

  @override
  String get gameUiMatchStats => 'मैच आंकड़े';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेट नाल जिती गेआ';
  }

  @override
  String get gameUiBlack => 'काला';

  @override
  String get gameUiWhite => 'सफेद';

  @override
  String get gameUiComputerWinsByCheckmate => 'कंप्यूटर चेकमेट नाल जिती गेआ';

  @override
  String get gameUiYouWinByCheckmate => 'तुस चेकमेट नाल जिती गे';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेट नाल बराबरी';

  @override
  String get gameUiDraw => 'बराबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · शह';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'शह-मात! तुसें 50 अंक कमाए।';

  @override
  String get gameUiStartANewGame => 'नमीं खेढ शुरू कीती जा?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खिलाड़ी मोड बदलने कन्नै सेव कीती दी मैच बदली जंदी ऐ।';

  @override
  String get gameUiComputer => 'कंप्यूटर';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · सफेद / खिलाड़ी 2 · काला';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'तुसें सफेद ओ · कंप्यूटर काला ऐ';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (सफेद) · कंप्यूटर (काला)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'तुसें काले ओ · कंप्यूटर सफेद ऐ';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (काला) · कंप्यूटर (सफेद)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 पैहले पांसा सुट्टग';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 फिरी पांसा सुट्टग';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 दी पांसा सुट्टने दी बारी';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सांप ते सीढ़ी च जित: 100 अंक!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खिलाड़ी बदलने कन्नै सेव कीती दी खेढ बदली जंदी ऐ।';

  @override
  String get gameUiStartANewLevel => 'नमां लेवल शुरू कीता जा?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'लेवल बदलने कन्नै सेव कीती दी खेढ बदली जंदी ऐ।';

  @override
  String get gameUiChangeLevel => 'लेवल बदलो';

  @override
  String get gameUiPlayers => 'खिलाड़ी';

  @override
  String get gameUiPlayAgainstBot => 'बॉट दे खिलाफ खेढो';

  @override
  String get gameUi3Players => '3 खिलाड़ी';

  @override
  String get gameUi4Players => '4 खिलाड़ी';

  @override
  String get gameUiLevel1709305 => 'लेवल';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'लेवल $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 खिलाड़ी · लेवल $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · पांसा सुट्टो';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 उप्पर $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'सुआल लोड नेईं कीता जाई सकेआ: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'सही जवाब!';

  @override
  String get gameUiWrongAnswer => 'गलत जवाब';

  @override
  String get gameUiYouClaimedYourReward => 'तुसें अपना इनाम हासल करी लेआ!';

  @override
  String get gameUiAddedToYourTotalPoints => 'तुंदे कुल अंकें च जोड़े गेदे न।';

  @override
  String get gameUiTheCorrectAnswerWas => 'सही जवाब हा:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 अंकें दा इनाम गुआची गेआ।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'तुंदे मौजूदा अंक नेईं कटे गे।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'कल्ल फिरी आओ ते कोशश करो।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'सुआल लोड नेईं कीता जाई सकेआ।';

  @override
  String get gameUiYourReward677fa6e => 'तुंदा इनाम';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 अंक';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'इसगी हासल करने आस्तै सही जवाब देयो!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'इक होर दौर आस्तै कल्ल फिरी आओ।';

  @override
  String get gameUiGreen => 'हरा';

  @override
  String get gameUiBlue => 'नीला';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 सोची करदा ऐ';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: इक गोटी चुनो';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: पांसा सुट्टो';
  }

  @override
  String gameUiDice(String value1) {
    return 'पांसा $value1';
  }

  @override
  String get gameUiRollDice => 'पांसा सुट्टो';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 गोटी $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'खिलाड़ी $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'बॉट $value1';
  }

  @override
  String get gameUiBot => 'बॉट';

  @override
  String get gameUiHintInsufficientPoints => 'संकेत दा इस्तेमाल करने लेई तुसेंगी 20 अंक चाहिदे न।';

  @override
  String get gameUiHintPurchaseFailed => 'संकेत नेईं खरीदी जाई सकेआ। मेहरबानी करियै फही कोशश करो।';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'रानी';

  @override
  String get gameUiChessRook => 'हाथी';

  @override
  String get gameUiChessBishop => 'ऊट';

  @override
  String get gameUiChessKnight => 'घोड़ा';

  @override
  String get gameUiChessPawn => 'प्यादा';

  @override
  String get gameUiChessEmpty => 'खाली';

  @override
  String get gameSceneLampAndFlowers => 'दीवा ते फुल्ल';

  @override
  String get gameSceneGardenFriends => 'बाग दे साथी';

  @override
  String get gameSceneUnderwaterExplorers => 'पानी दे हेठ खोज करने आले';

  @override
  String get gameSceneOceanOrca => 'समुंदरी ऑर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'चरागाह च लोमड़';

  @override
  String get gameSceneYellowSubmarine => 'पीली पनडुब्बी';

  @override
  String get gameSceneTurkeyInTheClearing => 'खुल्ली जगह च टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारी दा पानी पीने दा थाह्र';

  @override
  String get gameSceneJungleCompanions => 'जंगल दे साथी';

  @override
  String get gameSceneGoldenPuppyGarden => 'सुनहरी कुतरू दा बाग';

  @override
  String get gameSceneSeaTurtleReef => 'समुंदरी कछुए दी चट्टान';

  @override
  String get gameSceneCoralReefFriends => 'मूंगे दी चट्टान दे साथी';

  @override
  String get gameSceneSharedClownfish => 'सांझी क्लाउनफिश';

  @override
  String get gameSceneLittleDinosaur => 'नन्हां डायनासोर';

  @override
  String get gameSceneSafariCompanions => 'सफारी दे साथी';

  @override
  String get gameSceneSwirlingFlowers => 'घुमदे फुल्ल';

  @override
  String get gameSceneGardenKitten => 'बाग दा बिल्ली दा बच्चा';

  @override
  String get gameSceneBlueOcean => 'नीला समुंदर';

  @override
  String get gameSceneCastlePrincess => 'किले दी राजकुमारी';

  @override
  String get gameSceneRedCar => 'लाल गड्डी';

  @override
  String get gameSceneGardenPuppy => 'बाग दा कुतरू';

  @override
  String get gameSceneSpaceExplorer => 'अंतरिक्ष खोजकर्ता';

  @override
  String get gameSceneEnchantedReadingForest => 'जादुई पढ़ने आला जंगल';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps अनंत चक्कर';

  @override
  String get gameSceneAnsible => 'Ansible (ऐंसिबल)';

  @override
  String get gameSceneAws => 'ए.डब्ल्यू.एस.';

  @override
  String get gameSceneAzure => 'एज़्योर';

  @override
  String get gameSceneBashScripting => 'बैश स्क्रिप्टिंग';

  @override
  String get gameSceneDocker => 'डॉकर';

  @override
  String get gameSceneGcp => 'जी.सी.पी.';

  @override
  String get gameSceneGit => 'गिट';

  @override
  String get gameSceneHybridCloud => 'हाइब्रिड क्लाउड';

  @override
  String get gameSceneIbmCloud => 'आई.बी.एम. क्लाउड';

  @override
  String get gameSceneJavascript => 'जावास्क्रिप्ट';

  @override
  String get gameSceneJenkins => 'जेंकिंस';

  @override
  String get gameSceneKubernetes => 'कुबेरनेटीज़';

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
  String get gameScenePython => 'पायथन';

  @override
  String get gameSceneRuby => 'रूबी';

  @override
  String get gameSceneTerraform => 'टैराफॉर्म';

  @override
  String get gameSceneWinterFestivalFair => 'सर्दी दे तैहार दा मेला';

  @override
  String get gameSceneArmoredHeroCloseUp => 'कवचधारी नायक दा क्लोज-अप';

  @override
  String get gameSceneArmoredHeroInCrimson => 'गहरे लाल रंग च कवचधारी नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गहरे रंग दे चंपा दे फुल्ल';

  @override
  String get gameSceneMangroveBoardwalk => 'मैंग्रोव दा लकड़ी आला रस्ता';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबंधी खजूर दे प्रतिबिंब';

  @override
  String get gameSceneMaskedFigureInShadow => 'छां च नकाबपोश आकृति';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूरज छिपने बेल्लै बिजली आला साथी';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक ते अग्नि अजदहा';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्न जड़ेआ कुश्ती दा नकाब';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'लाल कूची दे निशानें च पहलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुश्ती दे चैंपियन दा सलाम';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरी च सवेर';

  @override
  String get gameSceneGreenhousePottingBench => 'ग्रीनहाउस दा गमले लाने आला बेंच';

  @override
  String get gameSceneHarborFishingBoat => 'बंदरगाह दी मछी फड़ने आली किश्ती';

  @override
  String get gameSceneAtticObservatory => 'अटारी दी वेधशाला';

  @override
  String get gameSceneToyMakerSWorkshop => 'खिडौने बनाने आले दी कार्यशाला';

  @override
  String get gameSceneWoodlandCampsite => 'जंगल दा डेरा';

  @override
  String get gameSceneAfternoonMusicRoom => 'दपैहर बाद दा संगीत कमरा';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुंदर कंढे आईसक्रीम दी ठेली';

  @override
  String get gameSceneLibraryReadingNook => 'पुस्तकालय दा पढ़ने आला कोना';

  @override
  String get gameSceneSewingStudio => 'सिलाई दा स्टूडियो';

  @override
  String get gameSceneFruitMarket => 'फलें दी मंडी';

  @override
  String get gameSceneKoiCourtyard => 'कोई मछियें आला आंगन';

  @override
  String get gameSceneArtistSAtelier => 'कलाकार दा स्टूडियो';

  @override
  String get gameSceneMountainRailway => 'पहाड़ी रेलगड्डी';

  @override
  String get gameSceneCountryKitchen => 'देहाती रसोई';

  @override
  String get gameScenePotteryWorkshop => 'कुम्हार दी कार्यशाला';

  @override
  String get gameSceneBeachPicnic => 'समुंदर कंढे पिकनिक';

  @override
  String get gameSceneFlowerShop => 'फुल्लें दी दुकान';

  @override
  String get gameSceneClockmakerSWorkshop => 'घड़ीसाज़ दी कार्यशाला';

  @override
  String get gameSceneRainyCafeTerrace => 'बरखा आली कैफे दी छत';

  @override
  String get gameSceneCastleHerbGarden => 'किले दा जड़ी-बूटियें दा बाग';

  @override
  String get gameSceneClassroomArtCorner => 'कक्षा दा कला कोना';

  @override
  String get gameSceneAquariumShop => 'एक्वेरियम दी दुकान';

  @override
  String get gameSceneAutumnLeafCollection => 'पतझड़ दे पत्तें दा संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चांद दे हेठ इकल्ला रुक्ख';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'टैहनी उप्पर पतझड़ दा फुल्ल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हरे पत्तें च लोमड़';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कुमुदनी कन्नै ढकोई दी झील उप्पर डोंगी';

  @override
  String get gameSceneDewDropsOnALeaf => 'पत्ते उप्पर ओस दी बूंदां';

  @override
  String get gameSceneStagInATurquoiseLake => 'फिरोज़ी झील च नर हिरन';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'संतरी चांद दे हेठ साइकल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'घाटी दे उप्पर सफेद बघेरा';

  @override
  String get gameSceneTwoTreesInBlueWater => 'नीले पानी च दो रुक्ख';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'वफादार कुत्ते कन्नै मच्छी फड़ना';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'पहाड़ी झील दे कंडे कुमुदनियां';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदी दे कंडे हिरन';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूरज छिपदे वेले उष्णकटिबंधी कुटिया';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'अल्पाइन घाटी गी दिखदी लोमड़ी';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मंत्रमुग्ध बाग़ थमां सूरज छिपना';

  @override
  String get learningControlTitle => 'DevOps सिक्खो';

  @override
  String get learningControlAllCategories => 'सारियां श्रेणियां';

  @override
  String get learningControlSearchCards => 'कार्ड खोजो';

  @override
  String get learningControlClearSearch => 'खोज मटाओ';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सारे कार्ड दस्सो';

  @override
  String learningControlShowSaved(int count) {
    return 'सहेजे दे कार्ड दस्सो ($count)';
  }

  @override
  String get learningControlShuffleOff => 'शफल बंद करो';

  @override
  String get learningControlShuffleOn => 'कार्ड शफल करो';

  @override
  String get learningControlAutoOff => 'ऑटो स्वाइप बंद करो';

  @override
  String get learningControlAutoOn => 'हर 10 सकिंटें बाद ऑटो स्वाइप';

  @override
  String get learningControlNoSaved => 'हाली तकर कोई कार्ड सहेजे दा नेईं';

  @override
  String get learningControlNoMatches => 'कोई कार्ड नेईं मिलेआ';

  @override
  String get learningControlResetFilters => 'फिल्टर हटाओ';

  @override
  String get learningControlPrevious => 'पिछला';

  @override
  String get learningControlNext => 'अगला';

  @override
  String get learningControlProgress => 'प्रगति';

  @override
  String get learningControlRemoveSaved => 'सहेजे दे चा हटाओ';

  @override
  String get learningControlSaveCard => 'कार्ड सहेजो';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कॉपी करो';

  @override
  String get learningControlExampleCopied => 'उदाहरण कॉपी कीता गेआ';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'लेवल $value1 पूरा होई गेया';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'लेवल $value1 खेढो';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलॉक करने आस्तै लेवल $value1 पूरा करो';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'रोजाना लॉगिन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'बापस आवने दा धन्नवाद!';

  @override
  String get sharedDialogDailyRewardAdded => 'तुंदा रोजाना इनाम तुंदे कुल प्वाइंटें च जोड़ी दित्ता गेदा ऐ।';

  @override
  String get sharedDialogAwesome => 'बड़ा बधिया!';

  @override
  String get accountWelcomeGuest => 'मेहमान';

  @override
  String get accountWelcomeGuestUser => 'मेहमान यूजर';

  @override
  String get accountWelcomeUser => 'यूजर';

  @override
  String get accountWelcomePlayingAsGuest => 'मेहमान दे तौर पर खेडा करदे ओ';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खाता जोड़ो';

  @override
  String get accountWelcomeGoogleConnected => 'Google खाता सफलतापूर्वक जुड़ी गेया! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द करी दित्ता गेया।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'जोड़ने च नाकाम: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट करो';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट करना ऐ?';

  @override
  String get accountWelcomeSignOutMessage => 'के तुस पक्का साइन आउट करना चांदे ओ? अपनी सेव कीती दी प्रगति तगर पुजने आस्ते तुसेंगी फी साइन इन करना पौग।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट नाकाम: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ऐप डेटा रीसेट करना ऐ?';

  @override
  String get accountWelcomeResetAppMessage => 'इस कन्नै तुंदे सारे पॉइंट, स्ट्रीक, खेढ दा इतिहास ते सेटिंग्ज हमेशा आस्ते मिटी जाङन। तुसेंगी साइन आउट करी ओड़ेगा ते शुरुआती स्क्रीन उप्पर परतोआ जाग। इसेंगी पूर्ववत नेईं कीता जाई सकदा।';

  @override
  String get accountWelcomeResetEverything => 'सब किश रीसेट करो';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रीसेट नाकाम: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द करो';

  @override
  String get accountWelcomeResetAppData => 'ऐप डेटा रीसेट करो';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सारे पॉइंट, स्ट्रीक ते सेटिंग्ज साफ करो';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz App';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अनुवाद हाली उपलब्ध नेईं ऐ';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google कन्नै जारी रक्खो';

  @override
  String get accountWelcomeSigningIn => 'साइन इन होआ करदा ऐ...';

  @override
  String get accountWelcomeOr => 'जां';

  @override
  String get accountWelcomeContinueAsGuest => 'मेहमान दे तौर पर जारी रक्खो';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'तुस बाद च अपनी प्रोफाइल थमां साइन इन करी सकदे ओ।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'तुस मेहमान दे तौर पर शुरू करी सकदे ओ ते बाद च साइन इन करी सकदे ओ।';

  @override
  String get accountWelcomeGreetingGuest => 'सुआगत';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'सुआगत, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूरा होई गेया, पर कोई यूजर खाता नेईं मिलेया।';

  @override
  String get accountWelcomeErrorEmailExists => 'इस ईमेल दा पैहले थमां इक होर साइन-इन तरीके कन्नै खाता ऐ।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ए Google खाता पैहले थमां इक होर खाते कन्नै जुड़ेदा ऐ।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण क्रेडेंशियल अमान्य जां समाप्त होई चुकेदा ऐ।';

  @override
  String get accountWelcomeErrorUserDisabled => 'ए खाता बंद करी दित्ता गेदा ऐ।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन अजें चालू नेईं ऐ।';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क च गलती। कृपा करी अपना इंटरनेट कनेक्शन चेक करो ते फी कोशश करो।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'साइन-इन दी बड़ी मर्तबा कोशश होई गेई ऐ। कृपा करी थोड़ा इंतजार करो ते फी कोशश करो।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'गलती बारे कोई होर जानकारी नेईं ऐ।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन नाकाम होई गेआ।\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन च गलती:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'मेहमान दे तौर पर जारी नेईं रक्खी सकदे। कृपा करी फी कोशश करो।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन जल्दी उपलब्ध होग।';

  @override
  String get accountWelcomeLoginTagline => 'सिक्खो • अभ्यास करो • मुकाबला करो • कमाओ';

  @override
  String get accountWelcomeCountryRegion => 'देश / क्षेत्तर';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / क्षेत्तर: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश खोजो';

  @override
  String get accountWelcomeCountryNotSelected => 'चुनेआ नेईं गेदा';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz क्यों?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ अभ्यास सुआल';

  @override
  String get accountWelcomeFeatureLanguages => 'मती भाषाएं दा समर्थन';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रीक ते लीडरबोर्ड';

  @override
  String get accountWelcomeFeatureGames => 'खेढां ते चुनौतियां';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud ते DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस ते इनाम';

  @override
  String get accountWelcomePracticeOnTheGo => 'चलदे-फिरदे अभ्यास करो';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ऐप इंस्टॉल करो ते कुत्थै बी ऑफलाइन सिक्खो।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play उप्पर पाओ';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिनें दी लगातार स्ट्रीक';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिनें दी स्ट्रीक बनाई रक्खो।';
  }

  @override
  String get achLocYearStreakTitle => '1 साल दी स्ट्रीक';

  @override
  String get achLocFirstQuizTitle => 'पैहला क्विज़';

  @override
  String get achLocFirstQuizDescription => 'अपना पैहला क्विज़ पूरा करो।';

  @override
  String get achLocQuiz10Title => 'क्विज़ खोजी';

  @override
  String get achLocQuiz10Description => '10 क्विज़ पूरे करो।';

  @override
  String get achLocPoints1000Title => '1000 अंक';

  @override
  String get achLocPoints1000Description => 'क्विज़ च कुल 1000 अंक हासल करो।';

  @override
  String get achLocPerfectScoreTitle => 'पूरा स्कोर';

  @override
  String get achLocPerfectScoreDescription => 'कुसै बी क्विज़ च 100% स्कोर करो।';

  @override
  String get achLocQuiz25Title => 'क्विज़ शौकीन';

  @override
  String get achLocQuiz25Description => '25 क्विज़ पूरे करो।';

  @override
  String get achLocQuiz50Title => 'क्विज़ उस्ताद';

  @override
  String get achLocQuiz50Description => '50 क्विज़ पूरे करो।';

  @override
  String get achLocQuiz100Title => 'सैंकड़ा क्लब';

  @override
  String get achLocQuiz100Description => '100 क्विज़ पूरे करो।';

  @override
  String get achLocQuiz250Title => 'क्विज़ लीजेंड';

  @override
  String get achLocQuiz250Description => '250 क्विज़ पूरे करो।';

  @override
  String get achLocPoints5000Title => '5,000 अंक';

  @override
  String get achLocPoints5000Description => 'कुल 5,000 अंक हासल करो।';

  @override
  String get achLocPoints10000Title => '10,000 अंक';

  @override
  String get achLocPoints10000Description => 'कुल 10,000 अंक हासल करो।';

  @override
  String get achLocPoints50000Title => '50,000 अंक';

  @override
  String get achLocPoints50000Description => 'कुल 50,000 अंक हासल करो।';

  @override
  String get achLocPoints100000Title => '100,000 अंक';

  @override
  String get achLocPoints100000Description => 'कुल 100,000 अंक हासल करो।';

  @override
  String get achLocDaily1Title => 'रोजाना शुरुआत';

  @override
  String get achLocDaily1Description => 'अपना पैहला रोजाना क्विज़ पूरा करो।';

  @override
  String get achLocDaily7Title => 'रोजाना आदत';

  @override
  String get achLocDaily7Description => '7 रोजाना क्विज़ पूरे करो।';

  @override
  String get achLocDaily30Title => 'रोजाना चैंपियन';

  @override
  String get achLocDaily30Description => '30 रोजाना क्विज़ पूरे करो।';

  @override
  String get achLocSets5Title => 'सेट शुरुआती';

  @override
  String get achLocSets5Description => '5 क्विज़ सेट खत्म करो।';

  @override
  String get achLocSets25Title => 'सेट संग्रहकर्ता';

  @override
  String get achLocSets25Description => '25 क्विज़ सेट खत्म करो।';

  @override
  String get achLocSets50Title => 'सेट उस्ताद';

  @override
  String get achLocSets50Description => '50 क्विज़ सेट खत्म करो।';

  @override
  String get achLocSets100Title => 'सेट लीजेंड';

  @override
  String get achLocSets100Description => '100 क्विज़ सेट खत्म करो।';

  @override
  String get achLocCert1Title => 'पैहला सर्टिफिकेट';

  @override
  String get achLocCert1Description => 'अपना पैहला श्रेणी सर्टिफिकेट हासल करो।';

  @override
  String get achLocCert5Title => 'सर्टिफाइड प्रो';

  @override
  String get achLocCert5Description => '5 श्रेणी सर्टिफिकेट हासल करो।';

  @override
  String get achLocCert21Title => 'पूरी चाल्ली सर्टिफाइड';

  @override
  String get achLocCert21Description => 'सारी 21 श्रेणियें च सर्टिफिकेट हासल करो।';

  @override
  String get achLocThemeFreeValentinesWeek => 'हर साल Feb 7-14 मुफ्त';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'हर साल Mar 8-15 मुफ्त';

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
  String get achLocThemeTea => 'चा';

  @override
  String get achLocThemeOcean => 'ओशन';

  @override
  String get achLocThemeSolarFlare => 'सोलर फ्लेयर';

  @override
  String get achLocThemeForest => 'फॉरेस्ट';

  @override
  String get achLocThemeAurora => 'अरोरा';

  @override
  String get achLocThemeMatrix => 'मैट्रिक्स';

  @override
  String get achLocThemeCyberPurple => 'साइबर पर्पल';

  @override
  String get achLocThemeInferno => 'इन्फर्नो';

  @override
  String get achLocThemeMidnight => 'मिडनाइट';

  @override
  String get achLocThemeDarkGrey => 'डार्क ग्रे';

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
  String get achLocThemeVision => 'विजन';

  @override
  String get achLocThemeAntMan => 'ऐंट-मैन';

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
  String get achLocThemeDc => 'डीसी हीरोज़';

  @override
  String get achLocThemeRainbow => 'इंद्रधनुष';

  @override
  String get achLocThemeDiamond => 'हीरा';

  @override
  String get achLocThemeLegendary => 'महान';

  @override
  String get gameHintCmd001LsLa => 'सारे फाइलें ब्यौरे सौंगी दस्सो';

  @override
  String get gameHintCmd002Grep => 'पैटर्न दे जरिए टेक्स्ट खोजो';

  @override
  String get gameHintCmd003Chmod => 'फाइल दियां अनुमतियां बदलो';

  @override
  String get gameHintCmd004DfH => 'खाली डिस्क जगह दस्सो';

  @override
  String get gameHintCmd005TailF => 'बधदी जा करदी लॉग फाइल दा पिच्छा करो';

  @override
  String get gameHintCmd006PsAux => 'चलदियां प्रोसेसां दी लिस्ट दस्सो';

  @override
  String get gameHintCmd007GitClone => 'रिमोट रिपॉजिटरी दी कापी बनाओ';

  @override
  String get gameHintCmd008GitStash => 'बिना कमिट कीते बदलाव अलग रक्खो';

  @override
  String get gameHintCmd009GitRebase => 'कमिटां गी नएं आधार उप्पर दुबारा लाओ';

  @override
  String get gameHintCmd010GitBlame => 'दस्सो हर लकीर कुस बदली';

  @override
  String get gameHintCmd011DockerPs => 'चलदे कंटेनरें दी लिस्ट दस्सो';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile थमां इमेज बनाओ';

  @override
  String get gameHintCmd013DockerLogs => 'कंटेनर दा आउटपुट दस्सो';

  @override
  String get gameHintCmd014DockerExec => 'कंटेनर दे अंदर कमांड चलाओ';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेस च पॉडें दी लिस्ट दस्सो';

  @override
  String get gameHintCmd016KubectlApply => 'फाइल थमां रिसोर्स बनाओ';

  @override
  String get gameHintCmd017KubectlDescribe => 'रिसोर्स दी पूरी जानकारी दस्सो';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिका दी गिनतरी बदलो';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोवाइडर डाउनलोड करो ते सेटअप करो';

  @override
  String get gameHintCmd020TerraformPlan => 'इंफ्रास्ट्रक्चर दे बदलावें दा पूर्वावलोकन करो';

  @override
  String get gameHintCmd021TerraformApply => 'इंफ्रास्ट्रक्चर बनाओ जां अपडेट करो';

  @override
  String get gameHintCmd022TerraformDestroy => 'प्रबंधत इंफ्रास्ट्रक्चर हटाओ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ऑटोमेशन प्लेबुक चलाओ';

  @override
  String get gameHintCmd024Ping => 'ICMP कन्नै पहुंच जांचो';

  @override
  String get gameHintCmd025Traceroute => 'होस्ट तगर रस्ता दस्सो';

  @override
  String get gameHintCmd026Curl => 'URL थमां डेटा ट्रांसफर करो';

  @override
  String get gameHintCmd027Ssh => 'रिमोट मशीन च सुरक्षत तरीके कन्नै लॉग इन करो';

  @override
  String get gameHintCmd028CrontabE => 'निर्धारत कम्म सुधारो';

  @override
  String get gameHintCmd029SystemctlStatus => 'सर्विस दी स्थिति जांचो';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes उप्पर चार्ट डिप्लॉय करो';

  @override
  String get gameHintWord001Git => 'सोर्स कोड च बदलावें दा हिसाब रखदा ऐ।';

  @override
  String get gameHintWord002Aws => 'Amazon दा क्लाउड प्लेटफॉर्म।';

  @override
  String get gameHintWord003Api => 'इक समझौता जेह्ड़ा सॉफ्टवेयर सिस्टमें गी आपसी गल्लबात करने दिंदा ऐ।';

  @override
  String get gameHintWord004Dns => 'डोमेन नामें गी IP पतें च बदलदा ऐ।';

  @override
  String get gameHintWord005Cli => 'कमांड चलाने आस्ते टेक्स्ट आधारत इंटरफेस।';

  @override
  String get gameHintWord006Cpu => 'निर्देशें गी चलाने आला प्रोसेसर।';

  @override
  String get gameHintWord007Ram => 'चलदे प्रोग्रामें आस्ते अस्थाई मेमोरी।';

  @override
  String get gameHintWord008Ssh => 'रिमोट शेल पहुंच आस्ते सुरक्षत प्रोटोकॉल।';

  @override
  String get gameHintWord009Yaml => 'मनुक्खें दे पढ़ने जोग डेटा सीरियलाइजेशन फॉर्मेट।';

  @override
  String get gameHintWord010Linux => 'ओपन-सोर्स ऑपरेटिंग सिस्टम कर्नल ते परिवार।';

  @override
  String get gameHintWord011Bash => 'इक लोकप्रिय Unix कमांड शेल।';

  @override
  String get gameHintWord012Cloud => 'नेटवर्क राहें मंग उप्पर मिलदी कंप्यूटिंग।';

  @override
  String get gameHintWord013Docker => 'कंटेनर बनाने ते चलाने आस्ते प्लेटफॉर्म।';

  @override
  String get gameHintWord014Azure => 'Microsoft दा क्लाउड प्लेटफॉर्म।';

  @override
  String get gameHintWord015Python => 'बड़े पैमाने उप्पर इस्तेमाल होने आली स्क्रिप्टिंग ते प्रोग्रामिंग भाशा।';

  @override
  String get gameHintWord016Github => 'इक लोकप्रिय होस्टेड Git सहयोग सर्विस।';

  @override
  String get gameHintWord017Bgp => 'रूटिंग प्रोटोकॉल जेह्ड़ा स्वायत्त सिस्टमें बश्कार रूट बदलदा ऐ।';

  @override
  String get gameHintWord018Jenkins => 'ऑटोमेशन सर्वर जेह्ड़ा अक्सर CI आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord019Port => 'नेटवर्क सर्विसें दा इस्तेमाल कीता जाने आला नंबर आला सिरा।';

  @override
  String get gameHintWord020Proxy => 'सर्वर जेह्ड़ा क्लाइंटें आस्ते अनुरोध अग्गें भेजदा ऐ।';

  @override
  String get gameHintWord021Cache => 'बार-बार इस्तेमाल होने आले डेटा आस्ते तेज़ भंडार।';

  @override
  String get gameHintWord022Cron => 'बार-बार चलने आली कमांडें आस्ते Unix शेड्यूलर।';

  @override
  String get gameHintWord023Bicep => 'इंफ्रास्ट्रक्चर एज़ कोड आस्ते Azure दी घोशणात्मक भाशा।';

  @override
  String get gameHintWord024Apigee => 'केंद्रीकृत API प्रबंधन आस्ते Google Cloud प्लेटफॉर्म।';

  @override
  String get gameHintWord025Root => 'Unix-जनेह् सिस्टमें उप्पर विशेषाधिकार आला प्रशासक खाता।';

  @override
  String get gameHintWord026Nginx => 'वेब सर्वर ते रिवर्स प्रॉक्सी।';

  @override
  String get gameHintWord027Redis => 'इन-मेमोरी डेटा स्टोर जेह्ड़ा अक्सर कैश आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेशनल डेटाबेस सिस्टम।';

  @override
  String get gameHintWord029Ruby => 'प्रोग्रामिंग भाशा जेह्ड़ी Chef जनेह् टूलें च इस्तेमाल होंदी ऐ।';

  @override
  String get gameHintWord030Helm => 'पैकेज मैनेजर जेह्ड़ा आमतौर उप्पर Kubernetes कन्नै इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord031Pod => 'Kubernetes च सभ थमां नूं डिप्लॉय होने जोग इकाई।';

  @override
  String get gameHintWord032Image => 'कंटेनर बनाने आस्ते सिर्फ-पढ़ने आला टेम्पलेट।';

  @override
  String get gameHintWord033Build => 'सोर्स ते निर्भरताएं थमां आर्टिफैक्ट बनांदा ऐ।';

  @override
  String get gameHintWord034Deploy => 'ऐप्लीकेशन गी माहौल च जारी करदा ऐ।';

  @override
  String get gameHintWord035Terraform => 'इंफ्रास्ट्रक्चर एज़ कोड आस्ते HashiCorp दा टूल।';

  @override
  String get gameHintWord036Ansible => 'एजेंट-रहित ऑटोमेशन ते कॉन्फिगरेशन टूल।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes आस्ते कमांड-लाइन क्लाइंट।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform दा संक्षेप।';

  @override
  String get gameHintWord039Gitops => 'संचालन मॉडल जेह्ड़ा Git गी सच्चाई दा स्रोत मनदा ऐ।';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, टेस्ट ते रिलीज चरणें दा स्वचालत क्रम।';

  @override
  String get gameHintWord041Container => 'अपनी निर्भरताएं कन्नै पैक कीती गेदी अलग प्रोसेस।';

  @override
  String get gameHintWord042Cluster => 'साझे सिस्टम दे रूप च प्रबंधत मशीनें दा समूह।';

  @override
  String get gameHintWord043Ingress => 'बाहरी HTTP रूटिंग आस्ते Kubernetes API ऑब्जेक्ट।';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नियमें मताबक नेटवर्क ट्रैफिक छानदा ऐ।';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्क दा तार्किक उप-विभाजन।';

  @override
  String get gameHintWord046Gateway => 'नेटवर्क नोड जेह्ड़ा भिन्न-भिन्न नेटवर्कें गी जोड़दा ऐ।';

  @override
  String get gameHintWord047Router => 'नेटवर्कें बश्कार पैकेट अग्गें भेजदा ऐ।';

  @override
  String get gameHintWord048Switch => 'लोकल नेटवर्क अंदर डिवाइसें गी जोड़दा ऐ।';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड जां पैकेजें आस्ते प्रबंधत भंडारण।';

  @override
  String get gameHintWord050Systemd => 'Linux init सिस्टम ते सर्विस मैनेजर।';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लॉग पढ़ने आस्ते कमांड।';

  @override
  String get gameHintWord052Permission => 'नियम जेह्ड़ा तय करदा ऐ जे कुन पढ़ी, लिखी जां चलाई सकदा ऐ।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud दा प्रबंधत PostgreSQL-संगत डेटाबेस।';

  @override
  String get gameHintWord054Configmap => 'गैर-गुप्त कॉन्फिगरेशन आस्ते Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटा आस्ते बनाया गेदा Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord056Persistent => 'उस भंडारण दा वर्णन जेह्ड़ा वर्कलोड रीस्टार्ट बाद बी बचदा ऐ।';

  @override
  String get gameHintWord057Volume => 'कंटेनर च माउंट कीता गेदा फाइलसिस्टम भंडारण।';

  @override
  String get gameHintWord058Storage => 'फाइलें, ऑब्जेक्टें जां ब्लॉकें आस्ते स्थायी जगह।';

  @override
  String get gameHintWord059Replica => 'स्केल जां भरोसेमंदी आस्ते रक्खी गेदी वर्कलोड इंस्टेंस दी कापी।';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस ऐप्लीकेशन पॉडें आस्ते Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज बनाने आस्ते इस्तेमाल होने आले निर्देश।';

  @override
  String get gameHintWord062Database => 'संगठत भंडार जिसी ऐप्लीकेशन क्वेरी करदियां न।';

  @override
  String get gameHintWord063Automation => 'बिना हत्थें कीते दोहराए जाने जोग कम्में आस्ते सॉफ्टवेयर दा इस्तेमाल।';

  @override
  String get gameHintWord064Anthos => 'माहौलें च क्लस्टर प्रबंधत करने आस्ते Google Cloud प्लेटफॉर्म।';

  @override
  String get gameHintWord065Bigquery => 'बड़े पैमाने दे डेटा विश्लेषण आस्ते Google Cloud सर्विस।';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषण आस्ते Google Cloud दा वाइड-कॉलम NoSQL डेटाबेस।';

  @override
  String get gameHintWord067Loadbalancer => 'औने आले ट्रैफिक गी कई बैकएंडें च बंडदा ऐ।';

  @override
  String get gameHintWord068Prometheus => 'निगरानी सिस्टम जेह्ड़ा टाइम-सीरीज मीट्रिक जमा करदा ऐ।';

  @override
  String get gameHintWord069Grafana => 'ऑब्जर्वेबिलिटी डेटा गी क्वेरी ते विज़ुअलाइज़ करने आस्ते प्लेटफॉर्म।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud दा प्रबंधत NoSQL JSON डॉक्यूमेंट डेटाबेस।';

  @override
  String get gameHintWord071Cloudtrail => 'AWS सर्विस जेह्ड़ी ऑडिट आस्ते API गतिविधि दर्ज करदी ऐ।';

  @override
  String get gameHintWord072Statefulset => 'स्थिर पन्छान आली वर्कलोडें आस्ते Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes कंट्रोलर जेह्ड़ा चुनिंदे नोडें उप्पर पॉड चलांदा ऐ।';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड जां प्रोसेस दी इस्तेमाल कीती जाने आली Kubernetes पन्छान।';

  @override
  String get gameHintWord075Networkpolicy => 'Kubernetes रिसोर्स जेह्ड़ा पॉड नेटवर्क ट्रैफिक गी काबू करदा ऐ।';

  @override
  String get gameHintWord076Certificate => 'TLS च पन्छान स्थापत करने आस्ते डिजिटल दस्तावेज।';

  @override
  String get gameHintWord077Encryption => 'डेटा गी इय्यां बदलदा ऐ जे सिर्फ अधिकृत पक्ख पढ़ी सकन।';

  @override
  String get gameHintWord078Observability => 'सिस्टम दे आउटपुट थमां उस दे व्यवहार दा अंदाजा लाने दी क्षमता।';

  @override
  String get gameHintWord079Coredns => 'DNS सर्वर जेह्ड़ा आमतौर उप्पर Kubernetes क्लस्टरें अंदर इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes APIs राहें क्लाउड रिसोर्स प्रबंधत करने आस्ते प्रोजेक्ट।';

  @override
  String get gameHintWord081Failover => 'नाकामी बाद स्टैंडबाई कंपोनेंट उप्पर बदलना।';

  @override
  String get gameHintWord082Idempotency => 'गुण जिस च कुसै कार्रवाई गी दोहराने दा असर इक बारी करने आला ई होंदा ऐ।';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रीम ते बैच डेटा प्रोसेसिंग आस्ते Google Cloud सर्विस।';

  @override
  String get gameHintWord084Orchestration => 'कई स्वचालत वर्कलोडें दा समन्वित प्रबंधन।';

  @override
  String get gameHintWord085Dataplex => 'उद्यम डेटा गी खोजने ते संचालत करने आस्ते Google Cloud सर्विस।';

  @override
  String get gameHintWord086Serverless => 'निश्पादन मॉडल जिस च इंफ्रास्ट्रक्चर प्रबंधन छप्पी जंदा ऐ।';

  @override
  String get gameHintWord087Distributed => 'सिस्टम जिसदे घटक कई नेटवर्क आली मशीनें उप्पर चलदे न।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud दा प्रबंधत Apache Spark ते Hadoop माहौल।';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL डेटाबेस जेह्ड़ा अक्सर Terraform स्टेट लॉकिंग आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord090Provisioning => 'इंफ्रास्ट्रक्चर जां रिसोर्सें गी इस्तेमाल आस्ते तैयार करना।';

  @override
  String get gameHintWord091Elasticsearch => 'सर्च इंजन जेह्ड़ा आमतौर उप्पर केंद्रीकृत लॉगिंग आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord092Etcd => 'की-वैल्यू स्टोर जेह्ड़ा Kubernetes क्लस्टर दी स्थिति रखदा ऐ।';

  @override
  String get gameHintWord093Authentication => 'एह् जांचने दी प्रक्रिया जे यूज़र जां सर्विस कुन ऐ।';

  @override
  String get gameHintWord094Authorization => 'एह् तय करने दी प्रक्रिया जे कुसै पन्छान गी की करने दी इजाजत ऐ।';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेंटरें तगर समर्पत निजी कनेक्टिविटी आस्ते Azure सर्विस।';

  @override
  String get gameHintWord096Configuration => 'सेटिंगां जेह्ड़ियां तय करदियां न जे सॉफ्टवेयर किय्यां बरतांव करग।';

  @override
  String get gameHintWord097Infrastructure => 'ऐप्लीकेशनें गी सहारा देने आले कंप्यूट, नेटवर्क ते स्टोरेज रिसोर्स।';

  @override
  String get gameHintWord098Fastconnect => 'समर्पत निजी नेटवर्क कनेक्शनें आस्ते Oracle Cloud सर्विस।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes दुआरा इस्तेमाल होने आला उद्योग-मानक कंटेनर रनटाइम।';

  @override
  String get gameHintWord100Kubernetes => 'कंटेनर ऑर्केस्ट्रेशन प्लेटफॉर्म।';

  @override
  String get gameHintWord101Http => 'वेब रिसोर्स मंगने आस्ते इस्तेमाल होने आला ऐप्लीकेशन प्रोटोकॉल।';

  @override
  String get gameHintWord102Https => 'वेब अनुरोध प्रोटोकॉल दा एन्क्रिप्टेड रूप।';

  @override
  String get gameHintWord103Tcp => 'भरोसेमंद ते क्रमबद्ध डिलीवरी देने आला ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord104Udp => 'डेटाग्राम आस्ते इस्तेमाल होने आला कनेक्शन-रहित ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord105Tls => 'नेटवर्क उप्पर आदान-प्रदान होने आले डेटा गी सुरक्षत करने आला प्रोटोकॉल।';

  @override
  String get gameHintWord106Ssl => 'आधुनिक ट्रांसपोर्ट सुरक्षा प्रोटोकॉल दा पुराना पूर्ववर्ती।';

  @override
  String get gameHintWord107Ftp => 'फाइलां ट्रांसफर करने आस्ते पारंपरिक प्रोटोकॉल।';

  @override
  String get gameHintWord108Sftp => 'सुरक्षत शेल कनेक्शन उप्पर चलने आला फाइल ट्रांसफर प्रोटोकॉल।';

  @override
  String get gameHintWord109Smtp => 'सर्वरें बश्कार ईमेल भेजने आस्ते इस्तेमाल होने आला प्रोटोकॉल।';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क डिवाइसें गी प्रबंधत ते मॉनिटर करने आला प्रोटोकॉल।';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क गलतियां ते ping संदेश लेई जाने आला प्रोटोकॉल।';

  @override
  String get gameHintWord112Arp => 'लोकल IPv4 पतें गी हार्डवेयर पतें च बदलदा ऐ।';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लाइंटें गी अपने-आप IP कॉन्फिगरेशन दिंदा ऐ।';

  @override
  String get gameHintWord114Nat => 'गेटवे थमां पैकेट गुजरने उप्पर नेटवर्क पते बदलदा ऐ।';

  @override
  String get gameHintWord115Vpn => 'दूरदराजे नेटवर्कें जां यूज़रें गी जोड़ने आली एन्क्रिप्टेड सुरंग।';

  @override
  String get gameHintWord116Vpc => 'पब्लिक क्लाउड च अलग कीता गेदा वर्चुअल नेटवर्क।';

  @override
  String get gameHintWord117Vlan => 'स्विच कीते गेदे नेटवर्क दा तार्किक बंटवारा।';

  @override
  String get gameHintWord118Wan => 'बड़े भौगोलिक इलाके च फैला नेटवर्क।';

  @override
  String get gameHintWord119Lan => 'इक लोकल इलाके अंदर डिवाइसें गी जोड़ने आला नेटवर्क।';

  @override
  String get gameHintWord120Cdn => 'वितरत एज नेटवर्क जेह्ड़ा पुजाई जाने आली सामग्री गी कैश करदा ऐ।';

  @override
  String get gameHintWord121Cidr => 'स्लैश लंबाई कन्नै नेटवर्क प्रीफिक्स दस्सने आली संकेतन विधि।';

  @override
  String get gameHintWord122Host => 'नेटवर्क कन्नै जुड़ेदा कंप्यूटर जां एंडपॉइंट।';

  @override
  String get gameHintWord123Hostname => 'नेटवर्क आली मशीन गी दित्ता गेदा मनुक्खें दे पढ़ने जोग नां।';

  @override
  String get gameHintWord124Domain => 'इंटरनेट नामकरण सिस्टम च नामजद प्रशासनिक इलाका।';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेस दा प्रशासनिक हिस्सा।';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेस दी इक इकलौती एंट्री।';

  @override
  String get gameHintWord127Aaaa => 'DNS रिकॉर्ड प्रकार जेह्ड़ा नां गी IPv6 पते च हल करदा ऐ।';

  @override
  String get gameHintWord128Ptr => 'उलटे पते खोजने आस्ते इस्तेमाल होने आला DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord129Txt => 'टेक्स्ट मान जमा करने आला DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord130Cname => 'DNS रिकॉर्ड जेह्ड़ा इक नां गी दूए दा उपनां बनांदा ऐ।';

  @override
  String get gameHintWord131Route => 'पैकेटें गी मंजिल पासै भेजने आली रस्ते दी एंट्री।';

  @override
  String get gameHintWord132Routing => 'नेटवर्कें बश्कार ट्रैफिक आस्ते रस्ते चुनना।';

  @override
  String get gameHintWord133Packet => 'नेटवर्क राहें भेजे जाने आले डेटा दी इकाई।';

  @override
  String get gameHintWord134Protocol => 'सिस्टमें बश्कार संचार आस्ते सहमत नियम।';

  @override
  String get gameHintWord135Ack => 'डेटा मिलने दी पुष्टि करने आला TCP फ्लैग।';

  @override
  String get gameHintWord136Bandwidth => 'संचार लिंक दी क्षमता।';

  @override
  String get gameHintWord137Latency => 'अनुरोध जां पैकेट गी जवाब मिलने थमां पैहलें दी देर।';

  @override
  String get gameHintWord138Throughput => 'प्रति इकाई समें च होई गेदी उपयोगी कम्म जां प्रोसेस कीते डेटा दी मात्रा।';

  @override
  String get gameHintWord139Mtu => 'सभ थमां बड्डा पैकेट आकार जेह्ड़ा लिंक बिना टुकड़े कीते भेजी सकदा ऐ।';

  @override
  String get gameHintWord140Alpn => 'TLS एक्सटेंशन जेह्ड़ा ऐप्लीकेशन-लेयर प्रोटोकॉल उप्पर सहमति बनांदा ऐ।';

  @override
  String get gameHintWord141Grep => 'मेल खांदे पैटर्न आस्ते टेक्स्ट दियां लकीरां खोजदा ऐ।';

  @override
  String get gameHintWord142Sed => 'स्ट्रीम एडिटर जेह्ड़ा आमतौर उप्पर टेक्स्ट बदलने आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord143Lscpu => 'Linux कमांड जेह्ड़ी प्रोसेसर आर्किटेक्चर ते कोर ब्यौरे दस्सदी ऐ।';

  @override
  String get gameHintWord144Find => 'फाइल शर्तें कन्नै डायरेक्टरी ट्री खोजदा ऐ।';

  @override
  String get gameHintWord145Lsblk => 'Linux कमांड जेह्ड़ी ब्लॉक डिवाइसें ते उंदे रिश्ते दस्सदी ऐ।';

  @override
  String get gameHintWord146Sort => 'टेक्स्ट दी लकीरें गी क्रम च लांदा ऐ।';

  @override
  String get gameHintWord147Uniq => 'नेहड़ले दोहराए गेदे लकीरें गी छानदा ऐ।';

  @override
  String get gameHintWord148Head => 'फाइल दी शुरुआत छापदा ऐ।';

  @override
  String get gameHintWord149Tail => 'फाइल दा अंत छापदा ऐ ते जुड़दे लॉगें दा पिच्छा करी सकदा ऐ।';

  @override
  String get gameHintWord150Cat => 'फाइलें गी जोड़दा ऐ ते उंदी सामग्री छापदा ऐ।';

  @override
  String get gameHintWord151Cut => 'लकीरें थमां चुनिंदे फील्ड जां अक्षर कॉलम कड्ढदा ऐ।';

  @override
  String get gameHintWord152Tee => 'स्टैंडर्ड इनपुट गी फाइलें ते स्टैंडर्ड आउटपुट च कापी करदा ऐ।';

  @override
  String get gameHintWord153Echo => 'अपने आर्ग्युमेंट स्टैंडर्ड आउटपुट च लिखदा ऐ।';

  @override
  String get gameHintWord154Printf => 'शेल जां प्रोग्राम थमां फॉर्मेट कीता टेक्स्ट छापदा ऐ।';

  @override
  String get gameHintWord155Touch => 'फाइल टाइमस्टैंप अपडेट करदा ऐ जां खाली फाइल बनांदा ऐ।';

  @override
  String get gameHintWord156Mkdir => 'डायरेक्टरियां बनांदा ऐ।';

  @override
  String get gameHintWord157Rmdir => 'खाली डायरेक्टरियां हटांदा ऐ।';

  @override
  String get gameHintWord158Chmod => 'Unix फाइल अनुमति बिट बदलदा ऐ।';

  @override
  String get gameHintWord159Chown => 'फाइल दी मल्कियत बदलदा ऐ।';

  @override
  String get gameHintWord160Chgrp => 'फाइल दी ग्रुप मल्कियत बदलदा ऐ।';

  @override
  String get gameHintWord161Pwd => 'मौजूदा कम्म करने आली डायरेक्टरी छापदा ऐ।';

  @override
  String get gameHintWord162Apt => 'Debian-आधारत सिस्टमें दुआरा इस्तेमाल होने आला पैकेज प्रबंधन टूल।';

  @override
  String get gameHintWord163Top => 'प्रोसेसें ते सिस्टम रिसोर्स इस्तेमाल दा इंटरैक्टिव प्रदर्शन।';

  @override
  String get gameHintWord164Agent => 'सॉफ्टवेयर घटक जेह्ड़ा होस्ट उप्पर कम्म करदा जां रिपोर्ट करदा ऐ।';

  @override
  String get gameHintWord165Kill => 'प्रोसेस गी उदे पन्छानकर्ता राहें सिग्नल भेजदा ऐ।';

  @override
  String get gameHintWord166Signal => 'ऑपरेटिंग सिस्टम दुआरा प्रोसेस गी पुजाई जाने आली सूचना।';

  @override
  String get gameHintWord167Sigkill => 'Unix सिग्नल जेह्ड़ा प्रोसेस गी फौरन खत्म करदा ऐ।';

  @override
  String get gameHintWord168Nice => 'बदली गेदी शेड्यूलिंग प्राथमिकता कन्नै प्रोसेस शुरू करदा ऐ।';

  @override
  String get gameHintWord169Renice => 'चलदी प्रोसेस आस्ते शेड्यूलिंग प्राथमिकता बदलदा ऐ।';

  @override
  String get gameHintWord170Jobs => 'मौजूदा शेल दुआरा प्रबंधत जॉब लिस्ट करदा ऐ।';

  @override
  String get gameHintWord171Nohup => 'हैंगअप सिग्नलें गी अनदेखा करदे होई कमांड चलांदा ऐ।';

  @override
  String get gameHintWord172Screen => 'टर्मिनल मल्टीप्लेक्सर जेह्ड़ा अलग होने जोग सेशनें गी सहारा दिंदा ऐ।';

  @override
  String get gameHintWord173Uptime => 'दस्सदा ऐ जे सिस्टम किन्नी देर थमां चली रेहा ऐ।';

  @override
  String get gameHintWord174Uname => 'सिस्टम ते कर्नल दी जानकारी छापदा ऐ।';

  @override
  String get gameHintWord175Whoami => 'प्रभावी मौजूदा यूज़र नां छापदा ऐ।';

  @override
  String get gameHintWord176Umask => 'फाइलां बनाने बेल्लै इस्तेमाल होने आला अनुमति मास्क सेट करदा ऐ।';

  @override
  String get gameHintWord177Usermod => 'Linux कमांड जेह्ड़ी मौजूदा यूज़र खाते गी बदलदी ऐ।';

  @override
  String get gameHintWord178Crontab => 'निर्धारत बार-बार चलने आले शेल जॉब सुधारदा जां लिस्ट करदा ऐ।';

  @override
  String get gameHintWord179Findmnt => 'Linux कमांड जेह्ड़ी माउंट कीते गेदे फाइलसिस्टम दी जानकारी दस्सदी ऐ।';

  @override
  String get gameHintWord180Mount => 'फाइलसिस्टम गी डायरेक्टरी ट्री कन्नै जोड़दा ऐ।';

  @override
  String get gameHintWord181Sigterm => 'प्रोसेस गी शालीनता कन्नै खत्म करने आस्ते Unix सिग्नल।';

  @override
  String get gameHintWord182Fstab => 'माउंट होने आले फाइलसिस्टमें दा वर्णन करने आली सिस्टम सारणी।';

  @override
  String get gameHintWord183Swap => 'भौतिक मेमोरी गी पूरा करने आस्ते डिस्क-आधारत जगह।';

  @override
  String get gameHintWord184Tmpfs => 'वर्चुअल मेमोरी आधारत अस्थाई फाइलसिस्टम।';

  @override
  String get gameHintWord185Proc => 'Linux वर्चुअल फाइलसिस्टम जेह्ड़ा प्रोसेस ते कर्नल जानकारी दस्सदा ऐ।';

  @override
  String get gameHintWord186Syslog => 'मानक लॉगिंग प्रोटोकॉल ते संदेश फॉर्मेट।';

  @override
  String get gameHintWord187Dmesg => 'कर्नल रिंग बफर थमां संदेश दस्सदा ऐ।';

  @override
  String get gameHintWord188Free => 'इस्तेमाल होई गेदी ते उपलब्ध सिस्टम मेमोरी दस्सदा ऐ।';

  @override
  String get gameHintWord189Stat => 'फाइल दा विस्तृत मेटाडेटा दस्सदा ऐ।';

  @override
  String get gameHintWord190Lsof => 'खुल्ली फाइलें ते उनेंगी पकड़ने आली प्रोसेसें दी लिस्ट दिंदा ऐ।';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क कनेक्शन ते रूटिंग जानकारी दस्सदा ऐ।';

  @override
  String get gameHintWord192Checksum => 'डेटा च बदलाव जां खराबी पकड़ने आस्ते गिनी गेदा मान।';

  @override
  String get gameHintWord193Ping => 'echo अनुरोधें कन्नै नेटवर्क पहुंच जांचदा ऐ।';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क मंजिल तगर दे बश्कारले हॉप दस्सदा ऐ।';

  @override
  String get gameHintWord195Resolver => 'DNS घटक जेह्ड़ा नां क्वेरी दे जवाब खोजदा ऐ।';

  @override
  String get gameHintWord196Nslookup => 'DNS नां ते पते खोजदा ऐ।';

  @override
  String get gameHintWord197Telnet => 'पुराना बिना एन्क्रिप्शन आला रिमोट टर्मिनल प्रोटोकॉल।';

  @override
  String get gameHintWord198Tftp => 'सादा UDP-आधारत फाइल ट्रांसफर प्रोटोकॉल।';

  @override
  String get gameHintWord199Daemon => 'Unix-जनेह् सिस्टमें उप्पर बैकग्राउंड सर्विस प्रोसेस।';

  @override
  String get gameHintWord200Kernel => 'ऑपरेटिंग सिस्टम रिसोर्सें गी संभालने आला मुक्ख घटक।';

  @override
  String get gameHintWord201Commit => 'वर्जन कंट्रोल च बदलावें दा दर्ज कीता गेदा स्नैपशॉट।';

  @override
  String get gameHintWord202Branch => 'विकास दी लकीर गी दस्सने आला हिलाने जोग संदर्भ।';

  @override
  String get gameHintWord203Merge => 'भिन्न-भिन्न विकास लकीरें दे इतिहास गी जोड़दा ऐ।';

  @override
  String get gameHintWord204Rebase => 'कमिटें गी दूए आधार कमिट दे उप्पर दुबारा चलांदा ऐ।';

  @override
  String get gameHintWord205Clone => 'रिमोट रिपॉजिटरी दी लोकल कापी बनांदा ऐ।';

  @override
  String get gameHintWord206Fetch => 'बिना मर्ज कीते रिमोट ऑब्जेक्ट ते संदर्भ डाउनलोड करदा ऐ।';

  @override
  String get gameHintWord207Pull => 'बदलाव लेई औंदा ऐ ते उनेंगी मौजूदा ब्रांच च मिलांदा ऐ।';

  @override
  String get gameHintWord208Push => 'लोकल कमिटें गी रिमोट रिपॉजिटरी च भेजदा ऐ।';

  @override
  String get gameHintWord209Stash => 'बिना कमिट कीते वर्किंग-ट्री बदलावें गी अस्थाई तौर उप्पर सहेजदा ऐ।';

  @override
  String get gameHintWord210Revert => 'इक कमिट बनांदा ऐ जेह्ड़ा दूए कमिट गी पुट्ठा करदा ऐ।';

  @override
  String get gameHintWord211Reset => 'Git संदर्भ गी हिलांदा ऐ ते इंडेक्स जां वर्किंग फाइलें गी रीसेट करी सकदा ऐ।';

  @override
  String get gameHintWord212Reflog => 'Git संदर्भें दे अपडेटें दा लोकल इतिहास।';

  @override
  String get gameHintWord213Diff => 'वर्जनें जां फाइलें बश्कार फर्क दस्सदा ऐ।';

  @override
  String get gameHintWord214Status => 'स्टेज कीतियां, बदलियां ते अनट्रैक फाइलां दस्सदा ऐ।';

  @override
  String get gameHintWord215Checkout => 'रिविजन बदलने जां फाइलां बहाल करने आस्ते Git कमांड।';

  @override
  String get gameHintWord216Tag => 'नामजद संदर्भ जेह्ड़ा आमतौर उप्पर रिलीज गी चिन्हत करदा ऐ।';

  @override
  String get gameHintWord217Remote => 'दूई रिपॉजिटरी कन्नै नामजद कनेक्शन।';

  @override
  String get gameHintWord218Origin => 'क्लोन कीती गेदी रिपॉजिटरी दे रिमोट गी दित्ता जाने आला डिफॉल्ट नां।';

  @override
  String get gameHintWord219Upstream => 'लोकल ब्रांच कन्नै जुड़ी गेदी रिमोट ट्रैकिंग ब्रांच।';

  @override
  String get gameHintWord220Worktree => 'रिपॉजिटरी कन्नै जुड़ी गेदी चेकआउट कीती गेदी वर्किंग डायरेक्टरी।';

  @override
  String get gameHintWord221Registry => 'कंटेनर इमेजें गी जमा ते वितरत करने आली सर्विस।';

  @override
  String get gameHintWord222Digest => 'कंटेनर इमेज दा सामग्री-आधारत पन्छानकर्ता।';

  @override
  String get gameHintWord223Layer => 'फाइलसिस्टम बदलाव जेह्ड़े कंटेनर इमेज दा हिस्सा बनदे न।';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile निर्देश जेह्ड़ा कंटेनर दी मुक्ख executable तय करदा ऐ।';

  @override
  String get gameHintWord225Cmd => 'डिफॉल्ट कमांड जां आर्ग्युमेंट दस्सने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord226Workdir => 'वर्किंग डायरेक्टरी सेट करने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord227Copy => 'बिल्ड-कॉन्टेक्स्ट फाइलें गी इमेज च कापी करने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord228Add => 'Dockerfile निर्देश जेह्ड़ा लोकल आर्काइव बी खोल्ली सकदा ऐ।';

  @override
  String get gameHintWord229Run => 'बिल्ड-टाइम कमांड चलाने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord230Env => 'एनवायरनमेंट वेरिएबल तय करने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord231Arg => 'बिल्ड-टाइम वेरिएबल घोशत करने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord232Expose => 'कंटेनर पोर्ट दा दस्तावेज बनाने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord233User => 'बाद दी कमांडें आस्ते खाता चुनने आला Dockerfile निर्देश।';

  @override
  String get gameHintWord234Healthcheck => 'कंटेनर दी सेहत जांचने दा तरीका दस्सने आला निर्देश।';

  @override
  String get gameHintWord235Shebang => 'स्क्रिप्ट दी पैहली लकीर जेह्ड़ी चलाने आला इंटरप्रेटर दस्सदी ऐ।';

  @override
  String get gameHintWord236Compose => 'मल्टी-कंटेनर ऐप्लीकेशनें गी परिभाशत ते चलाने आला Docker टूल।';

  @override
  String get gameHintWord237Bridge => 'लोकल कंटेनर नेटवर्किंग आस्ते आम Docker नेटवर्क ड्राइवर।';

  @override
  String get gameHintWord238Overlay => 'कई होस्टें उप्पर कंटेनरें गी जोड़ने आला नेटवर्क।';

  @override
  String get gameHintWord239None => 'Docker नेटवर्क ड्राइवर जेह्ड़ा कंटेनर नेटवर्किंग बंद करदा ऐ।';

  @override
  String get gameHintWord240Prune => 'इस्तेमाल नेईं होने आले कंटेनर रिसोर्स हटांदा ऐ।';

  @override
  String get gameHintWord241Replicaset => 'मनचाही पॉड गिनतरी बनाई रक्खने आला Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord242Service => 'पॉडें तगर स्थिर पहुंच देने आला Kubernetes अमूर्तन।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सर्विस दे पिच्छें खड़ोते पते।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes रिसोर्सें गी समूहबद्ध करने आला तार्किक दायरा।';

  @override
  String get gameHintWord245Node => 'कम्म करने आली मशीन जेह्ड़ी Kubernetes पॉडें गी होस्ट करदी ऐ।';

  @override
  String get gameHintWord246Kubelet => 'हर नोड उप्पर एजेंट जेह्ड़ा पॉड निश्पादन गी संभालदा ऐ।';

  @override
  String get gameHintWord247Pvc => 'स्थायी भंडारण आस्ते Kubernetes अनुरोध।';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes कंट्रोल-प्लेन घटक जेह्ड़ा क्लस्टर API उपलब्ध करांदा ऐ।';

  @override
  String get gameHintWord249Role => 'भूमिका-आधारत पहुंच नियंत्रण च अनुमतियें दा नामजद सेट।';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेस च रिसोर्स खपत गी सीमत करने आला Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord251Selector => 'लेबलें दे आधार उप्पर रिसोर्सें गी मेल करने आली अभिव्यक्ति।';

  @override
  String get gameHintWord252Taint => 'नोड गुण जेह्ड़ा मेल खांदी टॉलरेशन आले बगैर पॉडें गी दूर रखदा ऐ।';

  @override
  String get gameHintWord253Toleration => 'पॉड सेटिंग जेह्ड़ी taint कीते गेदे नोड उप्पर शेड्यूल होने दी इजाजत दिंदी ऐ।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोड गी शेड्यूल नेईं होने जोग चिन्हत करदा ऐ।';

  @override
  String get gameHintWord255Uncordon => 'cordon कीते गेदे नोड गी फिरी शेड्यूल होने जोग बनांदा ऐ।';

  @override
  String get gameHintWord256Drain => 'नोड रखरखाव थमां पैहलें वर्कलोडें गी सुरक्षत तरीके कन्नै हटांदा ऐ।';

  @override
  String get gameHintWord257Job => 'Kubernetes वर्कलोड जेह्ड़ा कम्म गी पूरा होने तगर चलांदा ऐ।';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes वर्कलोड जेह्ड़ा शेड्यूल मताबक जॉब बनांदा ऐ।';

  @override
  String get gameHintWord259Readiness => 'प्रोब जेह्ड़ा दस्सदा ऐ जे कंटेनर ट्रैफिक लेई सकदा ऐ जां नेईं।';

  @override
  String get gameHintWord260Liveness => 'प्रोब जेह्ड़ा दस्सदा ऐ जे कंटेनर गी रीस्टार्ट करने दी लोड़ ऐ जां नेईं।';

  @override
  String get gameHintWord261Canary => 'रिलीज दा तरीका जिस च नमां वर्जन ट्रैफिक दे छोटे हिस्से गी दस्सेआ जंदा ऐ।';

  @override
  String get gameHintWord262Rolling => 'अपडेट रणनीति जेह्ड़ी चलदे इंस्टेंसें गी धीरे-धीरे बदलदी ऐ।';

  @override
  String get gameHintWord263Rollback => 'पैहले चलदे ऐप्लीकेशन वर्जन गी बहाल करदा ऐ।';

  @override
  String get gameHintWord264Rollout => 'नमें ऐप्लीकेशन वर्जन दी क्रमिक डिप्लॉयमेंट।';

  @override
  String get gameHintWord265Recreate => 'डिप्लॉयमेंट रणनीति जेह्ड़ी बदले शुरू करने थमां पैहलें पुराने पॉड बंद करदी ऐ।';

  @override
  String get gameHintWord266Blue => 'blue-green रिलीज दे दो माहौलें चों इक।';

  @override
  String get gameHintWord267Green => 'blue-green रिलीज दा दूआ माहौल।';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पाइपलाइन दुआरा बनाया गेदा वर्जन आला आउटपुट।';

  @override
  String get gameHintWord269Staging => 'रिलीज दी जांच आस्ते इस्तेमाल होने आला प्री-प्रोडक्शन माहौल।';

  @override
  String get gameHintWord270Production => 'असली अंतिम यूज़रें गी सर्विस देने आला माहौल।';

  @override
  String get gameHintWord271Release => 'इस्तेमाल आस्ते पुजाया गेदा सॉफ्टवेयर वर्जन।';

  @override
  String get gameHintWord272Version => 'सॉफ्टवेयर रिविजन गी बक्खरा करने आला पन्छानकर्ता।';

  @override
  String get gameHintWord273Revision => 'दस्तावेज जां कोडबेस दा पन्छानने जोग वर्जन।';

  @override
  String get gameHintWord274Webhook => 'घटना होने उप्पर भेजी जाने आली HTTP सूचना।';

  @override
  String get gameHintWord275Runbook => 'सिस्टम गी चलाने जां बहाल करने दी दस्तावेजी प्रक्रिया।';

  @override
  String get gameHintWord276Workspace => 'कम्म करने आले प्रोजेक्ट रिसोर्सें आली डायरेक्टरी जां दायरा।';

  @override
  String get gameHintWord277Credentials => 'सिस्टम तगर पहुंचने आस्ते इस्तेमाल होने आली प्रमाणीकरण सामग्री।';

  @override
  String get gameHintWord278Trigger => 'घटना जां शर्त जेह्ड़ी पाइपलाइन शुरू करदी ऐ।';

  @override
  String get gameHintWord279Parameter => 'जॉब जां फंक्शन गी दित्ता गेदा नामजद इनपुट।';

  @override
  String get gameHintWord280Access => 'अनुमति दे अधीन रिसोर्स इस्तेमाल करने दी क्षमता।';

  @override
  String get gameHintWord281Module => 'इंफ्रास्ट्रक्चर परिभाशाएं दा दोबारा इस्तेमाल होने जोग समूह।';

  @override
  String get gameHintWord282Provider => 'Terraform प्लगइन जेह्ड़ा कॉन्फिगरेशन गी बाहरी API कन्नै जोड़दा ऐ।';

  @override
  String get gameHintWord283Resource => 'कॉन्फिगरेशन च घोशत कीता गेदा प्रबंधत इंफ्रास्ट्रक्चर ऑब्जेक्ट।';

  @override
  String get gameHintWord284Variable => 'कॉन्फिगरेशन जां कोड दुआरा इस्तेमाल कीता जाने आला नामजद इनपुट मान।';

  @override
  String get gameHintWord285Output => 'इंफ्रास्ट्रक्चर कॉन्फिगरेशन दुआरा लौटाया गेदा उजागर मान।';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्टेट स्नैपशॉट कन्नै जुड़ेदा फाइल प्रत्यय।';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट वेरिएबल मानें आस्ते इस्तेमाल होने आला फाइल प्रत्यय।';

  @override
  String get gameHintWord288Backend => 'स्टेट भंडारण गी काबू करने आली Terraform कॉन्फिगरेशन।';

  @override
  String get gameHintWord289Plan => 'प्रस्तावत इंफ्रास्ट्रक्चर बदलावें दा Terraform पूर्वावलोकन।';

  @override
  String get gameHintWord290Apply => 'प्रस्तावत बदलावें गी लागू करने आला Terraform संचालन।';

  @override
  String get gameHintWord291Destroy => 'प्रबंधत इंफ्रास्ट्रक्चर गी हटाने आला Terraform संचालन।';

  @override
  String get gameHintWord292Import => 'मौजूदा रिसोर्स गी इंफ्रास्ट्रक्चर प्रबंधन दे अधीन ल्यौंदा ऐ।';

  @override
  String get gameHintWord293Refresh => 'दर्ज कीती गेदी स्थिति गी असली इंफ्रास्ट्रक्चर कन्नै मेल करदा ऐ।';

  @override
  String get gameHintWord294Validate => 'कॉन्फिगरेशन दे सिंटैक्स ते अंदरूनी संगति दी जांच करदा ऐ।';

  @override
  String get gameHintWord295Fmt => 'मानक कॉन्फिगरेशन फॉर्मेटिंग लागू करने आली Terraform कमांड।';

  @override
  String get gameHintWord296Init => 'Terraform प्रोवाइडरें ते वर्किंग डायरेक्टरी गी शुरू करदा ऐ।';

  @override
  String get gameHintWord297Executor => 'Jenkins दा वर्कर स्लॉट जेह्ड़ा बिल्ड चलाई सकदा ऐ।';

  @override
  String get gameHintWord298Dependencies => 'रिश्ते जिंदे च इक घटक दी दूए थमां पैहलें लोड़ होंदी ऐ।';

  @override
  String get gameHintWord299Drift => 'घोशत ते असली इंफ्रास्ट्रक्चर स्थिति बश्कार फर्क।';

  @override
  String get gameHintWord300Locking => 'इक्कै बेल्लै कई लिखने आलें गी साझी स्थिति बदलने थमां रोकदा ऐ।';

  @override
  String get gameHintWord301Playbook => 'ऑटोमेशन प्ले ते टास्कें दा वर्णन करने आला Ansible दस्तावेज।';

  @override
  String get gameHintWord302Inventory => 'प्रबंधत होस्टें ते समूहें दा Ansible संग्रह।';

  @override
  String get gameHintWord303Facts => 'प्रबंधत होस्टें बारे जमा कीती गेदी सिस्टम जानकारी।';

  @override
  String get gameHintWord304Task => 'ऑटोमेशन च कम्म दी इक इकलौती इकाई।';

  @override
  String get gameHintWord305Handler => 'Ansible टास्क जेह्ड़ा बदलाव दी सूचना मिलने उप्पर चलदा ऐ।';

  @override
  String get gameHintWord306Notify => 'Ansible निर्देश जेह्ड़ा बदले गेदे टास्क बाद हैंडलर गी कतार च लांदा ऐ।';

  @override
  String get gameHintWord307Become => 'विशेषाधिकार बधाने गी चालू करने आली Ansible सेटिंग।';

  @override
  String get gameHintWord308Vault => 'संवेदनशील ऑटोमेशन डेटा गी एन्क्रिप्ट करने आली Ansible सुविधा।';

  @override
  String get gameHintWord309Register => 'टास्क दे नतीजे गी वेरिएबल च सहेजने आला Ansible निर्देश।';

  @override
  String get gameHintWord310When => 'शर्तिया टास्क निश्पादन गी काबू करने आला Ansible कीवर्ड।';

  @override
  String get gameHintWord311Loop => 'ऑटोमेशन टास्क गी संग्रह उप्पर दोहरांदा ऐ।';

  @override
  String get gameHintWord312Include => 'दोबारा इस्तेमाल होने जोग ऑटोमेशन सामग्री गतिशील तौर उप्पर लोड करदा ऐ।';

  @override
  String get gameHintWord313Tags => 'ऑटोमेशन टास्कें दे उप-समूह चुनने आस्ते इस्तेमाल होने आले लेबल।';

  @override
  String get gameHintWord314Template => 'फाइल जेह्ड़ी डिप्लॉयमेंट थमां पैहलें वेरिएबलें कन्नै तैयार कीती जंदी ऐ।';

  @override
  String get gameHintWord315Jinja => 'Ansible दुआरा इस्तेमाल कीती जाने आली टेम्पलेट भाशा।';

  @override
  String get gameHintWord316Abstraction => 'लागू करने दे ब्यौरे सौखे इंटरफेस दे पिच्छें छपाना।';

  @override
  String get gameHintWord317Agile => 'फीडबैक उप्पर जोर देने आला दोहराव आला सॉफ्टवेयर डिलीवरी तरीका।';

  @override
  String get gameHintWord318Puppet => 'घोशणात्मक मैनिफेस्ट बरतने आला कॉन्फिगरेशन प्रबंधन टूल।';

  @override
  String get gameHintWord319Airflow => 'वर्कफ्लो DAG गी शेड्यूल ते ऑर्केस्ट्रेट करने आस्ते प्लेटफॉर्म।';

  @override
  String get gameHintWord320Argo => 'क्लाउड-नेटिव प्रोजेक्ट परिवार जिस च GitOps डिलीवरी कंट्रोलर बी ऐ।';

  @override
  String get gameHintWord321Rds => 'AWS प्रबंधत रिलेशनल डेटाबेस सर्विस दा संक्षेप।';

  @override
  String get gameHintWord322Sqs => 'AWS प्रबंधत मैसेज कतार दा संक्षेप।';

  @override
  String get gameHintWord323Sns => 'AWS पब्लिश-सब्सक्राइब सूचना सर्विस दा संक्षेप।';

  @override
  String get gameHintWord324Ses => 'AWS ईमेल भेजने आली सर्विस दा संक्षेप।';

  @override
  String get gameHintWord325Iam => 'क्लाउड पन्छान ते पहुंच प्रबंधन दा संक्षेप।';

  @override
  String get gameHintWord326Kms => 'AWS एन्क्रिप्शन की प्रबंधन सर्विस दा संक्षेप।';

  @override
  String get gameHintWord327Waf => 'ऐप्लीकेशन-लेयर वेब अनुरोधें गी छानने आला फायरवॉल।';

  @override
  String get gameHintWord328Eks => 'AWS प्रबंधत Kubernetes सर्विस दा संक्षेप।';

  @override
  String get gameHintWord329Ecs => 'AWS प्रबंधत कंटेनर ऑर्केस्ट्रेशन सर्विस दा संक्षेप।';

  @override
  String get gameHintWord330Ecr => 'AWS कंटेनर इमेज रजिस्ट्री दा संक्षेप।';

  @override
  String get gameHintWord331Aurora => 'MySQL ते PostgreSQL कन्नै संगत AWS रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord332Redshift => 'AWS विश्लेषण डेटा वेयरहाउस।';

  @override
  String get gameHintWord333Neptune => 'AWS प्रबंधत ग्राफ डेटाबेस।';

  @override
  String get gameHintWord334Elasticache => 'AWS प्रबंधत इन-मेमोरी कैशिंग सर्विस।';

  @override
  String get gameHintWord335Athena => 'SQL कन्नै ऑब्जेक्ट-स्टोरेज डेटा क्वेरी करने आली AWS सर्विस।';

  @override
  String get gameHintWord336Glue => 'AWS सर्वरलेस डेटा एकीकरण ते ETL सर्विस।';

  @override
  String get gameHintWord337Emr => 'प्रबंधत बिग-डेटा प्रोसेसिंग क्लस्टरें आस्ते AWS प्लेटफॉर्म।';

  @override
  String get gameHintWord338Lambda => 'सर्वर प्रबंधत कीते बगैर फंक्शन चलाने आली AWS सर्विस।';

  @override
  String get gameHintWord339Cloudfront => 'AWS वैश्विक सामग्री वितरण नेटवर्क।';

  @override
  String get gameHintWord340Cloudwatch => 'मीट्रिक, लॉग ते अलार्म जमा करने आली AWS सर्विस।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ब्राउज़र-आधारत शेल माहौल।';

  @override
  String get gameHintWord342Codecommit => 'AWS प्रबंधत Git रिपॉजिटरी सर्विस।';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कंपाइल करने ते बिल्ड टेस्ट चलाने आली AWS सर्विस।';

  @override
  String get gameHintWord344Codedeploy => 'AWS स्वचालत ऐप्लीकेशन डिप्लॉयमेंट सर्विस।';

  @override
  String get gameHintWord345Codepipeline => 'AWS निरंतर डिलीवरी पाइपलाइन सर्विस।';

  @override
  String get gameHintWord346Guardduty => 'AWS बुद्धिमान खतरा पन्छान सर्विस।';

  @override
  String get gameHintWord347Inspector => 'वर्कलोडें दी कमजोरियें आस्ते जांच करने आली AWS सर्विस।';

  @override
  String get gameHintWord348Macie => 'ऑब्जेक्ट स्टोरेज च संवेदनशील डेटा खोजने आली AWS सर्विस।';

  @override
  String get gameHintWord349Shield => 'AWS प्रबंधत DDoS सुरक्षा सर्विस।';

  @override
  String get gameHintWord350Snowball => 'बड़े डेटा ट्रांसफर आस्ते AWS भौतिक उपकरण।';

  @override
  String get gameHintWord351Snowcone => 'AWS ऑफलाइन ट्रांसफर परिवार दा छोटा मजबूत डिवाइस।';

  @override
  String get gameHintWord352Datasync => 'AWS स्वचालत ऑनलाइन डेटा ट्रांसफर सर्विस।';

  @override
  String get gameHintWord353Msk => 'AWS प्रबंधत Apache Kafka सर्विस दा संक्षेप।';

  @override
  String get gameHintWord354Backup => 'बहाली आस्ते रक्खी गेदी डेटा दी कापी।';

  @override
  String get gameHintWord355Transcribe => 'बोली गी टेक्स्ट च बदलने आली AWS सर्विस।';

  @override
  String get gameHintWord356Translate => 'भाशाएं बश्कार टेक्स्ट दा अनुवाद करने आली AWS सर्विस।';

  @override
  String get gameHintWord357Rekognition => 'तस्वीरें ते वीडियो दा विश्लेषण करने आली AWS सर्विस।';

  @override
  String get gameHintWord358Comprehend => 'AWS प्राकृतिक-भाशा विश्लेषण सर्विस।';

  @override
  String get gameHintWord359Textract => 'दस्तावेजें थमां टेक्स्ट ते सारणियां कड्ढने आली AWS सर्विस।';

  @override
  String get gameHintWord360Sagemaker => 'मशीन लर्निंग मॉडल बनाने ते डिप्लॉय करने आस्ते AWS प्लेटफॉर्म।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud दा वैश्विक तौर उप्पर वितरत रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord362Pub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्न दा पब्लिश करने आला हिस्सा।';

  @override
  String get gameHintWord363Sub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्न दा सब्सक्राइबर हिस्सा।';

  @override
  String get gameHintWord364Functions => 'सर्वरलेस प्लेटफॉर्में दुआरा दित्ते जाने आले घटना-आधारत कोड दे टुकड़े।';

  @override
  String get gameHintWord365App => 'सॉफ्टवेयर ऐप्लीकेशन दा छोटा रूप।';

  @override
  String get gameHintWord366Engine => 'Compute Engine जनेह् नामें च निश्पादन घटक।';

  @override
  String get gameHintWord367Compute => 'वर्चुअल मशीनें जां कंटेनरें दुआरा दित्ती जाने आली प्रोसेसिंग क्षमता।';

  @override
  String get gameHintWord368Network => 'डेटा दा आदान-प्रदान करने आले जुड़े गेदे सिस्टम।';

  @override
  String get gameHintWord369Security => 'खतरें थमां सिस्टमें ते जानकारी दी हिफाजत।';

  @override
  String get gameHintWord370Identity => 'पहुंच फैसलें आस्ते इस्तेमाल होने आला यूज़र जां सर्विस दा प्रतिनिधित्व।';

  @override
  String get gameHintWord371Monitoring => 'सिस्टम दी सेहत ते व्यवहार दी लगातार निगरानी।';

  @override
  String get gameHintWord372Logging => 'ऐप्लीकेशन ते सिस्टम दी अलग-अलग घटनाएं गी दर्ज करना।';

  @override
  String get gameHintWord373Trace => 'सर्विस कॉलें च अनुरोध दे रस्ते दा रिकॉर्ड।';

  @override
  String get gameHintWord374Metrics => 'समें कन्नै सिस्टम व्यवहार दे संख्यात्मक माप।';

  @override
  String get gameHintWord375Alert => 'सूचना जे निगरानी कीती गेदी शर्त उप्पर ध्यान देना लोड़चदा ऐ।';

  @override
  String get gameHintWord376Billing => 'इस्तेमाल कीतियां क्लाउड सर्विसें दा हिसाब रखना ते चार्ज करना।';

  @override
  String get gameHintWord377Quota => 'रिसोर्स दी इस्तेमाल होई सकने आली मात्रा उप्पर सीमा।';

  @override
  String get gameHintWord378Region => 'भौगोलिक क्लाउड डिप्लॉयमेंट इलाका जिस च उपलब्धता जोन होंदे न।';

  @override
  String get gameHintWord379Tenancy => 'ब्यवस्था जेह्ड़ी दस्सदी ऐ जे ग्राहक इंफ्रास्ट्रक्चर किय्यां साझा करदे न।';

  @override
  String get gameHintWord380Regional => 'क्लाउड रीजन तगर सीमत रिसोर्स दा वर्णन करदा ऐ।';

  @override
  String get gameHintWord381Cosmos => 'Azure दे वैश्विक तौर उप्पर वितरत मल्टी-मॉडल डेटाबेस दा नां।';

  @override
  String get gameHintWord382Synapse => 'वेयरहाउसिंग ते डेटा प्रोसेसिंग गी मेलने आला Azure विश्लेषण प्लेटफॉर्म।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft दा क्लाउड-नेटिव सुरक्षा जानकारी ते घटना प्लेटफॉर्म।';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोडें गी बचाने आला Microsoft सुरक्षा उत्पाद परिवार।';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रांडिंग दी थाह् लैने आला Microsoft पन्छान उत्पाद परिवार।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager दा संक्षेप।';

  @override
  String get gameHintWord387Arc => 'Azure दे बाहर दे रिसोर्सें तगर प्रबंधन फैलाने आली Azure सर्विस।';

  @override
  String get gameHintWord388Aks => 'Azure प्रबंधत Kubernetes सर्विस दा संक्षेप।';

  @override
  String get gameHintWord389Armor => 'Google Cloud वेब सुरक्षा सर्विस दे नां दा अंतिम हिस्सा।';

  @override
  String get gameHintWord390Blob => 'Azure ऑब्जेक्ट-स्टोरेज डेटा प्रकार।';

  @override
  String get gameHintWord391Files => 'प्रबंधत नेटवर्क फाइल साझेदारी देने आली Azure सर्विस।';

  @override
  String get gameHintWord392Disk => 'वर्चुअल मशीन कन्नै जुड़ेदा ब्लॉक-स्टोरेज डिवाइस।';

  @override
  String get gameHintWord393Function => 'कोड दा बुलाया जाने जोग ब्लॉक जेह्ड़ा नतीजा लौटाई सकदा ऐ।';

  @override
  String get gameHintWord394Logic => 'वर्कफ्लो एकीकरण आस्ते Azure ऐप सर्विस श्रेणी।';

  @override
  String get gameHintWord395Insights => 'Azure ऐप्लीकेशन टेलीमेट्री उत्पाद नां दा अंतिम हिस्सा।';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क एंडपॉइंटें बश्कार बगदा डेटा।';

  @override
  String get gameHintWord397Manager => 'Azure Resource दे कंट्रोल प्लेन आस्ते उत्पाद नां दा अंतिम हिस्सा।';

  @override
  String get gameHintWord398Bastion => 'निजी होस्ट पहुंच आस्ते प्रबंधत जां मजबूत कीता गेदा प्रवेश बिंदु।';

  @override
  String get gameHintWord399Front => 'Azure वैश्विक प्रवेश-बिंदु सर्विस Front Door दा पैहला शब्द।';

  @override
  String get gameHintWord400Door => 'Azure वैश्विक प्रवेश-बिंदु सर्विस Front Door दा दूआ शब्द।';

  @override
  String get gameHintWord401Javascript => 'ब्राउज़रें ते Node रनटाइमें च बड़े पैमाने उप्पर इस्तेमाल होने आली प्रोग्रामिंग भाशा।';

  @override
  String get gameHintWord402Perl => 'टेक्स्ट प्रोसेसिंग ते रेगुलर एक्सप्रेशन आस्ते जानी जाने आली स्क्रिप्टिंग भाशा।';

  @override
  String get gameHintWord403Powershell => 'Microsoft दी ऑब्जेक्ट-उन्मुख शेल ते ऑटोमेशन भाशा।';

  @override
  String get gameHintWord404Java => 'Jenkins गी लागू करने आस्ते इस्तेमाल होई गेदी JVM भाशा।';

  @override
  String get gameHintWord405Json => 'ऑब्जेक्टें ते ऐरे आला हल्का डेटा फॉर्मेट।';

  @override
  String get gameHintWord406Xml => 'नेस्टेड नामजद टैग बरतने आला मार्कअप फॉर्मेट।';

  @override
  String get gameHintWord407Html => 'वेब पन्नें दा ढांचा बनाने आली मार्कअप भाशा।';

  @override
  String get gameHintWord408Css => 'वेब प्रस्तुति गी काबू करने आली स्टाइलशीट भाशा।';

  @override
  String get gameHintWord409String => 'टेक्स्ट अक्षरें दा क्रम।';

  @override
  String get gameHintWord410Array => 'तत्वें दा इंडेक्स कीता गेदा संग्रह।';

  @override
  String get gameHintWord411Hash => 'Ruby ते Perl च साहचर्य की-वैल्यू संग्रह।';

  @override
  String get gameHintWord412Object => 'गुणें ते व्यवहार आला रनटाइम मान।';

  @override
  String get gameHintWord413Class => 'क्लास-आधारत भाशाएं च ऑब्जेक्ट बनाने आस्ते इस्तेमाल होने आली परिभाशा।';

  @override
  String get gameHintWord414Method => 'ऑब्जेक्ट जां क्लास कन्नै जुड़ेदा फंक्शन।';

  @override
  String get gameHintWord415Interface => 'घटक दुआरा उपलब्ध कराई जाने आली कार्रवाइयें दा वर्णन करने आला समझौता।';

  @override
  String get gameHintWord416Subclass => 'दूई क्लास थमां निकली गेदी क्लास।';

  @override
  String get gameHintWord417Super => 'पैरेंट-क्लास दे व्यवहार गी बुलाने आस्ते इस्तेमाल होने आला कीवर्ड।';

  @override
  String get gameHintWord418Protected => 'पहुंच गी क्लास-संबंधत संदर्भें तगर सीमत करने आला दृश्यता स्तर।';

  @override
  String get gameHintWord419Exception => 'रनटाइम स्थिति जेह्ड़ी सामान्य कंट्रोल फ्लो गी रोकदी ऐ।';

  @override
  String get gameHintWord420Regex => 'टेक्स्ट गी मेलने आस्ते इस्तेमाल होने आला पैटर्न संकेतन।';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोड दे ढांचे थमां तय होने आले दायरे दा वर्णन करदा ऐ।';

  @override
  String get gameHintWord422Scalar => 'Perl च इक-मान आली वेरिएबल श्रेणी।';

  @override
  String get gameHintWord423Tuple => 'Python च बदलने जोग नेईं होने आला क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord424List => 'Python च बदलने जोग क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord425Dict => 'Python दे अंतर्निहित मैपिंग प्रकार दा नां।';

  @override
  String get gameHintWord426Dictionary => 'की गी जुड़े गेदे मानें कन्नै मेलने आला संग्रह।';

  @override
  String get gameHintWord427Set => 'अलग-अलग मानें दा संग्रह।';

  @override
  String get gameHintWord428Boolean => 'सच जां झूठ दस्सने आला डेटा प्रकार।';

  @override
  String get gameHintWord429Integer => 'पूरे अंकें गी दस्सने आला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord430Float => 'फ्लोटिंग-पॉइंट मानें गी दस्सने आला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord431Double => 'दुगनी-शुद्धता आला फ्लोटिंग-पॉइंट प्रकार।';

  @override
  String get gameHintWord432Null => 'ऑब्जेक्ट जां नतीजे दी गैर-मौजूदगी दस्सने आला मान।';

  @override
  String get gameHintWord433Undefined => 'गैर-दित्ते गेदे मान आस्ते JavaScript दा मान।';

  @override
  String get gameHintWord434Promise => 'अंत च मिलने आले असिंक्रोनस नतीजे गी दस्सने आला JavaScript ऑब्जेक्ट।';

  @override
  String get gameHintWord435Async => 'असिंक्रोनस फंक्शन गी चिन्हत करने आला कीवर्ड।';

  @override
  String get gameHintWord436Await => 'असिंक्रोनस नतीजे दी उड़ीक करने आला कीवर्ड।';

  @override
  String get gameHintWord437Callback => 'दूई कार्रवाई दुआरा बुलाने आस्ते दित्ता गेदा फंक्शन।';

  @override
  String get gameHintWord438Closure => 'फंक्शन जेह्ड़ा अपने आसपास दे लेक्सिकल दायरे तगर पहुंच बनाई रखदा ऐ।';

  @override
  String get gameHintWord439Generator => 'yield कीते गेदे मानें राहें क्रम गी आलसी तरीके कन्नै बनाने आला फंक्शन।';

  @override
  String get gameHintWord440Iterator => 'संग्रह च मानें गी इक-इक करी अग्गें बधने आला ऑब्जेक्ट।';

  @override
  String get gameHintWord441Print => 'मान गी आउटपुट च लिखने आला आम फंक्शन।';

  @override
  String get gameHintWord442Input => 'स्टैंडर्ड इनपुट थमां इक लकीर पढ़ने आला Python फंक्शन।';

  @override
  String get gameHintWord443Open => 'फाइल हैंडल हासल करने आस्ते इस्तेमाल होने आला फंक्शन।';

  @override
  String get gameHintWord444Close => 'खुल्ली फाइल जां कनेक्शन गी छोड़ने आली कार्रवाई।';

  @override
  String get gameHintWord445Read => 'स्ट्रीम जां फाइल थमां डेटा हासल करने आली कार्रवाई।';

  @override
  String get gameHintWord446Write => 'स्ट्रीम जां फाइल च डेटा भेजने आली कार्रवाई।';

  @override
  String get gameHintWord447Append => 'संग्रह दे अंत च इक आइटम जोड़दा ऐ।';

  @override
  String get gameHintWord448Split => 'सीमांकक बरतियै टेक्स्ट गी उप-स्ट्रिंगें च तोड़दा ऐ।';

  @override
  String get gameHintWord449Join => 'विभाजक बरतियै स्ट्रिंगें दे क्रम गी जोड़दा ऐ।';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिंग थमां आसपास दी खाली जगह हटांदा ऐ।';

  @override
  String get gameHintWord451Chomp => 'Perl जां Ruby च पिच्छले रिकॉर्ड विभाजक गी हटांदा ऐ।';

  @override
  String get gameHintWord452Map => 'संग्रह दे हर आइटम उप्पर बदलाव लागू करदा ऐ।';

  @override
  String get gameHintWord453Filter => 'शर्त पूरी करने आले संग्रह दे आइटम रक्खदा ऐ।';

  @override
  String get gameHintWord454Reduce => 'संग्रह गी जमा कीते गेदे नतीजे च मेलदा ऐ।';

  @override
  String get gameHintWord455Range => 'पूरे अंकें दे गणितीय क्रम गी दस्सने आला Python प्रकार।';

  @override
  String get gameHintWord456Length => 'संग्रह दा आकार लौटाने आला गुण जां मेथड।';

  @override
  String get gameHintWord457Len => 'संग्रह दा आकार लौटाने आला Python अंतर्निहित फंक्शन।';

  @override
  String get gameHintWord458Type => 'ऑब्जेक्ट दा प्रकार लौटाने आला Python फंक्शन।';

  @override
  String get gameHintWord459Isinstance => 'प्रकार पदानुक्रम च सदस्यता जांचने आला Python फंक्शन।';

  @override
  String get gameHintWord460Yield => 'जनरेटर थमां मान पैदा करने आला कीवर्ड।';

  @override
  String get gameHintWord461Saas => 'पूरे सॉफ्टवेयर ऐप्लीकेशन उपलब्ध कराने आला क्लाउड मॉडल।';

  @override
  String get gameHintWord462Paas => 'प्रबंधत ऐप्लीकेशन विकास प्लेटफॉर्म देने आला क्लाउड मॉडल।';

  @override
  String get gameHintWord463Iaas => 'वर्चुअल कंप्यूट, स्टोरेज ते नेटवर्किंग देने आला क्लाउड मॉडल।';

  @override
  String get gameHintWord464Hybrid => 'निजी ते सार्वजनिक इंफ्रास्ट्रक्चर गी मेलने आला क्लाउड तरीका।';

  @override
  String get gameHintWord465Archive => 'घट्ट इस्तेमाल होने आले डेटा दा लंबे समें आस्ते भंडारण।';

  @override
  String get gameHintWord466Public => 'क्लाउड मल्कियत मॉडल जेह्ड़ा कई ग्राहकें गी सर्विस दिंदा ऐ।';

  @override
  String get gameHintWord467Private => 'इक्क संगठन आस्ते समर्पत क्लाउड मॉडल।';

  @override
  String get gameHintWord468Scalability => 'रिसोर्स जोड़ियै बधदे भार गी संभालने दी क्षमता।';

  @override
  String get gameHintWord469Availability => 'लोड़ पौने उप्पर सर्विस किन्नी हद तगर पहुंच च रेहंदी ऐ।';

  @override
  String get gameHintWord470Resilience => 'नाकामियें गी सैहने ते उंदे थमां उबरने दी क्षमता।';

  @override
  String get gameHintWord471Redundancy => 'दोहरे घटक जेह्ड़े इकलौते नाकामी बिंदुएं गी घटांदे न।';

  @override
  String get gameHintWord472Disaster => 'बड़ी रुकावट जिसदा हल बहाली रणनीति दुआरा कीता जंदा ऐ।';

  @override
  String get gameHintWord473Recovery => 'नाकामी बाद सर्विस जां डेटा गी बहाल करना।';

  @override
  String get gameHintWord474Replicate => 'डेटा जां वर्कलोडें गी दूई जगह कापी करो।';

  @override
  String get gameHintWord475Snapshotting => 'डेटा जां सिस्टम स्थिति दियां किसे खास पलें दियां कापियां लैना।';

  @override
  String get gameHintWord476Restore => 'सहेजी गेदी कापी थमां डेटा बहाल करने आली कार्रवाई।';

  @override
  String get gameHintWord477Residency => 'जरूरत जेह्ड़ी जमा कीते गेदे डेटा दी भौगोलिक जगह तय करदी ऐ।';

  @override
  String get gameHintWord478Compliance => 'लोड़ींदे नियमें ते संगठनात्मक नियंत्रणें दा पालन करना।';

  @override
  String get gameHintWord479Governance => 'नीतियां ते प्रक्रियाएं जेह्ड़ियां तकनीक दे इस्तेमाल गी काबू करदियां न।';

  @override
  String get gameHintWord480Audit => 'दर्ज गतिविधियें ते अनुपालन सबूतें दी समीक्षा।';

  @override
  String get gameHintWord481Token => 'प्रमाणीकरण जां पन्छान दस्सने आला क्रेडेंशियल जां प्रतीक।';

  @override
  String get gameHintWord482Oauth => 'प्रतिनिधत पहुंच देने आला प्रमाणीकरण फ्रेमवर्क।';

  @override
  String get gameHintWord483Saml => 'XML-आधारत मानक जेह्ड़ा आमतौर उप्पर उद्यम सिंगल साइन-ऑन आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पाइपलाइनें च इस्तेमाल होने आली विशेश कमांड।';

  @override
  String get gameHintWord485Algorithm => 'संगणनात्मक समस्या दा हल करने आस्ते कदमें दा परिभाशत क्रम।';

  @override
  String get gameHintWord486Key => 'एन्क्रिप्शन गी काबू करने जां जमा कीते डेटा गी पन्छानने आस्ते इस्तेमाल होने आला मान।';

  @override
  String get gameHintWord487Alias => 'शेल कमांड जां रिसोर्स दा दूआ नां।';

  @override
  String get gameHintWord488Amend => 'Git कमिट विकल्प जेह्ड़ा सभ थमां नमें कमिट गी बदली दिंदा ऐ।';

  @override
  String get gameHintWord489Allsigned => 'PowerShell निश्पादन नीति जिस च दस्तखत कीतियां स्क्रिप्टां लोड़चदियां न।';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell नीति जिस च डाउनलोड कीतियां स्क्रिप्टां उप्पर दस्तखत लोड़चदे न।';

  @override
  String get gameHintWord491Acl => 'यूज़रें जां सिस्टमें आस्ते अनुमतियां तय करने आली लिस्ट।';

  @override
  String get gameHintWord492Uid => 'Unix यूज़र गी दित्ता गेदा संख्यात्मक पन्छानकर्ता।';

  @override
  String get gameHintWord493Setgid => 'अनुमति बिट जेह्ड़ी निश्पादन जां विरासत दौरान ग्रुप पन्छान गी प्रभावत करदी ऐ।';

  @override
  String get gameHintWord494Setfacl => 'फाइल पहुंच नियंत्रण सूचियां सेट करने आली Linux कमांड।';

  @override
  String get gameHintWord495Isolation => 'अलगाव जेह्ड़ा वर्कलोडें गी इक-दूए च दखल देने थमां रोकदा ऐ।';

  @override
  String get gameHintWord496Sighup => 'Unix हैंगअप सिग्नल जेह्ड़ा अक्सर कॉन्फिगरेशन रीलोड मंगने आस्ते इस्तेमाल होंदा ऐ।';

  @override
  String get gameHintWord497Sigint => 'Unix इंटरप्ट सिग्नल जेह्ड़ा आमतौर उप्पर Control-C कन्नै बनदा ऐ।';

  @override
  String get gameHintWord498Sigstop => 'Unix सिग्नल जेह्ड़ा प्रोसेस गी खत्म कीते बगैर रोकदा ऐ।';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड ते पहुंच कुंजियां जनेह् संवेदनशील मान।';

  @override
  String get gameHintWord500Secure => 'अनधिकृत पहुंच थमां सुरक्षत कनेक्शन दा वर्णन करदा ऐ।';

  @override
  String get fontSettingsTitle => 'फॉन्ट';

  @override
  String get fontChangeFont => 'फॉन्ट बदलो';

  @override
  String get fontSystemDefault => 'सिस्टम डिफॉल्ट';

  @override
  String get fontPreview => 'झलक';

  @override
  String get fontPreviewSample => 'इक-इक सुआल कन्नै DevOps सिक्खो';

  @override
  String get fontSelected => 'चुने दा';

  @override
  String get fontLatinOnlyNote => 'कस्टम फॉन्ट लैटिन अक्खरें पर लागू होंदे न। दूइयां लिपियां तुंदे डिवाइस दे फॉन्ट च गै रौंह्दियां न।';

  @override
  String get fontDescSystem => 'तुंदे डिवाइस दा अपना फॉन्ट';

  @override
  String get fontDescGeometric => 'ज्यामितीय सैन्स-सेरिफ';

  @override
  String get fontDescGeometricRounded => 'ज्यामितीय गोल सैन्स-सेरिफ';

  @override
  String get fontDescFriendly => 'सौखा सैन्स-सेरिफ';

  @override
  String get fontDescCondensed => 'संकुचित';

  @override
  String get fontDescRounded => 'गोल सैन्स-सेरिफ';

  @override
  String get fontDescRoundedDisplay => 'गोल डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
