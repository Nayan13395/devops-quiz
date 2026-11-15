// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTour => 'ऐप की सैर';

  @override
  String get skipTour => 'सैर छोड़ें';

  @override
  String get finishTour => 'सैर पूरी करें';

  @override
  String tourStep(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get tourMenuTitle => 'नेविगेशन मेनू';

  @override
  String get tourSearch => 'संबंधित क्विज़ श्रेणियाँ खोजने के लिए यहाँ विषय लिखें।';

  @override
  String get tourCategory => 'मिश्रित क्विज़ के लिए DevOps पर टैप करें। अन्य श्रेणियों में प्रश्न सेट मिलते हैं। बाद में पढ़ने के लिए प्रश्न बुकमार्क करें।';

  @override
  String get tourMenu => 'नेविगेशन मेनू खोलने के लिए इस बटन पर टैप करें।';

  @override
  String get tourLearning => 'कार्ड देखने के लिए सीखें खोलें। किसी भी दिशा में स्वाइप करें, शफ़ल करें, ऑटो-स्वाइप चालू करें या कार्ड बुकमार्क करें।';

  @override
  String get tourGames => 'गेम खेलकर अंक कमाएँ। स्तर वाले गेम में हर पूरा स्तर 100 अंक देता है; संकेत की कीमत 20 अंक है।';

  @override
  String get tourAchievements => 'अपनी उपलब्धियाँ यहाँ देखें। नई उपलब्धियों और उपलब्ध थीम की सूचना पॉपअप में मिलती है।';

  @override
  String get tourSettings => 'भाषा, थीम और आवाज़ चुनें। बुकमार्क देखने के लिए सहेजा गया डेटा या यह गाइड फिर देखने के लिए ऐप की सैर खोलें।';

  @override
  String get achievementUnlocked => 'उपलब्धि अनलॉक हुई!';

  @override
  String get themeUnlocked => 'नई थीम उपलब्ध है!';

  @override
  String get themeUnlockedMessage => 'अब आप सेटिंग्स > थीम में यह थीम चुन सकते हैं।';

  @override
  String get gameSounds => 'गेम की आवाज़ें';

  @override
  String get gameSoundsDescription => 'गेम और क्विज़ के ध्वनि प्रभाव। डिवाइस की आवाज़ और साइलेंट मोड जाँचें।';

  @override
  String get testSound => 'आवाज़ जाँचें';

  @override
  String get soundSettingBusy => 'कृपया प्रतीक्षा करें...';

  @override
  String get soundSettingError => 'आवाज़ की सेटिंग लोड या सहेजी नहीं जा सकी। फिर से कोशिश करें।';

  @override
  String get soundPlaybackError => 'आवाज़ नहीं चल सकी। डिवाइस या ब्राउज़र की ऑडियो सेटिंग जाँचें।';

  @override
  String get saveData => 'सहेजा गया डेटा';

  @override
  String get learningTranslationUnavailable => 'इस कार्ड का अभी चुनी गई भाषा में अनुवाद नहीं हुआ है।';

  @override
  String get saveQuestion => 'प्रश्न सहेजें';

  @override
  String defaultPortQuestion(String service) {
    return '$service का डिफ़ॉल्ट पोर्ट क्या है?';
  }

  @override
  String get removeSavedItem => 'सहेजे गए से हटाएँ';

  @override
  String get noSavedData => 'अभी कुछ सहेजा नहीं गया है। सीखने वाले कार्ड या क्विज़ के प्रश्न बुकमार्क करें।';

  @override
  String get savedDataError => 'सहेजा गया डेटा लोड या अपडेट नहीं हो सका। फिर से कोशिश करें।';

  @override
  String get savedItemUnavailable => 'यह सहेजा गया आइटम अब उपलब्ध नहीं है।';

  @override
  String get correctAnswer => 'सही उत्तर';

  @override
  String get retry => 'फिर से कोशिश करें';

  @override
  String get certificates => 'प्रमाणपत्र';

  @override
  String get whatsNew => 'नया क्या है';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get english => 'अंग्रेज़ी';

  @override
  String get hindi => 'हिन्दी';

  @override
  String get marathi => 'मराठी';

  @override
  String get startQuiz => 'क्विज़ शुरू करें';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'श्रेणी बदलें';

  @override
  String get dailyQuiz => 'दैनिक क्विज़';

  @override
  String get dailyQuizCompleted => 'दैनिक क्विज़ पूर्ण';

  @override
  String get dailyQuizCompletedMessage => 'आप आज का दैनिक क्विज़ पहले ही पूरा कर चुके हैं।\n\nनए चुनौती के लिए कल फिर आएँ!';

  @override
  String get leaderboard => 'लीडरबोर्ड';

  @override
  String get shareApp => 'ऐप साझा करें';

  @override
  String get rateApp => 'ऐप को रेट करें';

  @override
  String get about => 'हमारे बारे में';

  @override
  String get ok => 'ठीक है';

  @override
  String get home => 'होम';

  @override
  String get games => 'गेम्स';

  @override
  String get referAndEarn => 'रेफर करें और कमाएँ';

  @override
  String get themes => 'थीम्स';

  @override
  String get version => 'संस्करण';

  @override
  String get developer => 'डेवलपर';

  @override
  String get contact => 'संपर्क';

  @override
  String get learning => 'सीखें';

  @override
  String get linkedIn => 'लिंक्डइन';

  @override
  String get connectWithMe => 'मुझसे जुड़ें';

  @override
  String get aboutDescription => 'DevOps Quiz शिक्षार्थियों को Linux, Docker, Kubernetes, Networking, Git, Jenkins, Terraform, Ansible और अन्य DevOps तकनीकों पर आधारित हजारों सावधानीपूर्वक चुने गए प्रश्नों के माध्यम से इंटरव्यू और प्रमाणपत्र परीक्षाओं की तैयारी करने में सहायता करता है।';

  @override
  String get quizResult => 'क्विज़ परिणाम';

  @override
  String get outstanding => 'शानदार!';

  @override
  String get greatJob => 'बहुत बढ़िया!';

  @override
  String get goodEffort => 'अच्छा प्रयास!';

  @override
  String get keepPracticing => 'अभ्यास जारी रखें!';

  @override
  String get dontGiveUp => 'हार मत मानिए!';

  @override
  String get shareMessage1 => 'मेरा स्कोर';

  @override
  String get shareMessage2 => 'DevOps क्विज़ में!';

  @override
  String get downloadApp => 'ऐप डाउनलोड करें:';

  @override
  String get score => 'स्कोर';

  @override
  String get points => 'अंक';

  @override
  String get percentage => 'प्रतिशत';

  @override
  String get bonus => 'बोनस';

  @override
  String get perfectScoreBonus => 'पूर्ण अंक बोनस';

  @override
  String get shareScore => 'स्कोर साझा करें';

  @override
  String get restartQuiz => 'क्विज़ पुनः प्रारंभ करें';

  @override
  String get backToCategories => 'श्रेणियों पर वापस जाएँ';

  @override
  String get greatProgress => 'बहुत अच्छा! आप शानदार प्रगति कर रहे हैं।';

  @override
  String get practiceMore => 'अच्छा काम! थोड़ा और अभ्यास करें और बेहतर अंक प्राप्त करें।';

  @override
  String get keepLearning => 'सीखते रहें और फिर से प्रयास करें। अभ्यास से आप बेहतर बनेंगे।';

  @override
  String get everyExpertStarted => 'हर विशेषज्ञ कभी न कभी शुरुआती था। अभ्यास करें और फिर से मजबूत होकर लौटें!';

  @override
  String get quizInstructions => 'क्विज़ निर्देश';

  @override
  String get instruction1 => 'प्रत्येक सेट में 25 प्रश्न होते हैं।';

  @override
  String get instruction2 => 'प्रत्येक प्रश्न के लिए 30 सेकंड मिलेंगे।';

  @override
  String get instruction3 => 'हरा = सही उत्तर।';

  @override
  String get instruction4 => 'लाल = गलत उत्तर।';

  @override
  String get instruction5 => 'उत्तर बदल नहीं सकते।';

  @override
  String get instruction6 => 'बैक बटन केवल समीक्षा के लिए है।';

  @override
  String get instruction7 => 'क्विज़ समाप्त होने पर स्कोर दिखाया जाएगा।';

  @override
  String get instruction8 => 'प्रत्येक सही उत्तर पर 10 अंक मिलते हैं।';

  @override
  String excellentPerformance(Object expert) {
    return 'उत्कृष्ट प्रदर्शन! आप एक $expert हैं।';
  }

  @override
  String get selectCategory => 'श्रेणी चुनें';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'सेट चुनें';

  @override
  String get set => 'सेट';

  @override
  String get questions => 'प्रश्न';

  @override
  String get noScoresYet => 'अभी तक कोई स्कोर नहीं';

  @override
  String get pointsShort => 'अंक';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz में आपका स्वागत है';

  @override
  String hiUser(String name) {
    return 'नमस्ते $name';
  }

  @override
  String get challengeMode => 'चैलेंज मोड';

  @override
  String get challenge => 'चैलेंज';

  @override
  String get question => 'प्रश्न';

  @override
  String get reward => 'इनाम';

  @override
  String get survivalMode => 'सर्वाइवल मोड';

  @override
  String get speedChallenge => 'स्पीड चैलेंज';

  @override
  String get dailyChallenge => 'दैनिक चैलेंज';

  @override
  String get ultimateChallenge => 'अल्टीमेट चैलेंज';

  @override
  String get timeLeft => 'शेष समय';

  @override
  String get completed => 'पूर्ण';

  @override
  String get locked => 'लॉक';

  @override
  String get back => 'वापस';

  @override
  String get next => 'अगला';

  @override
  String get submit => 'जमा करें';

  @override
  String get achievements => 'उपलब्धियाँ';

  @override
  String get streak => 'लगातार दिन';

  @override
  String get days => 'दिन';

  @override
  String get tomorrowsReward => 'कल का पुरस्कार';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 मैंने DevOps Quiz में $score/$totalQuestions अंक प्राप्त किए!\n\n🏆 अंक: $earnedPoints\n🔥 बोनस: $bonusPoints\n📊 प्रतिशत: $percentage%\n\nक्या आप मेरा स्कोर पार कर सकते हैं?';
  }

  @override
  String get gameUiSpinWheel => 'स्पिन व्हील';

  @override
  String get gameUiSpinAndWinBonusPoints => 'घुमाएँ और बोनस पॉइंट्स जीतें';

  @override
  String get gameUiScratchCard => 'स्क्रैच कार्ड';

  @override
  String get gameUiScratchToRevealAReward => 'इनाम देखने के लिए स्क्रैच करें';

  @override
  String get gameUiLuckySlots => 'लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'स्लॉट्स घुमाएँ और पॉइंट्स जीतें';

  @override
  String get gameUiMysteryDeal => 'मिस्ट्री डील';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'एक मिस्ट्री बॉक्स चुनें और उत्तर दें';

  @override
  String get gameUiMemoryMatch => 'मेमोरी मैच';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps जोड़ियाँ मिलाएँ';

  @override
  String get gameUiWordGuess => 'वर्ड गेस';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'लेवल पार करते हुए DevOps शब्द अनुमान लगाएँ';

  @override
  String get gameUiFindWords => 'शब्द खोजें';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ग्रिड में छिपे DevOps शब्द खोजें';

  @override
  String get gameUiSpotTheDifference => 'अंतर पहचानें';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'दो चित्रित दृश्यों के बीच पाँच बदलाव खोजें';

  @override
  String get gameUiJigsawPuzzle => 'जिगसॉ पज़ल';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'साझा किए गए HD जानवरों और प्रकृति के चित्रों को फिर से जोड़ें';

  @override
  String get gameUiHighOrLow => 'हाई या लो';

  @override
  String get gameUiBuildAStreak => 'लगातार जीत की स्ट्रीक बनाएँ';

  @override
  String get gameUiTrueOrFalseBlitz => 'सही या गलत ब्लिट्ज़';

  @override
  String get gameUiQuickAnswerQuiz => 'त्वरित उत्तर क्विज़';

  @override
  String get gameUiCommandMatch => 'कमांड मैच';

  @override
  String get gameUiMatchCommandsToMeanings => 'कमांड को उनके अर्थ से मिलाएँ';

  @override
  String get gameUiPortMaster => 'पोर्ट मास्टर';

  @override
  String get gameUiGuessDefaultPorts => 'डिफ़ॉल्ट पोर्ट का अनुमान लगाएँ';

  @override
  String get gameUiTicTacToe => 'टिक-टैक-टो';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X नॉट्स एंड क्रॉसेस कंप्यूटर के साथ';

  @override
  String get gameUiConnectFour => 'कनेक्ट फोर';

  @override
  String get gameUiDropFourDiscs => 'चार डिस्क गिराएँ';

  @override
  String get gameUiLudo => 'लूडो';

  @override
  String get gameUiRaceAgainstBots => 'बॉट्स के खिलाफ दौड़ लगाएँ';

  @override
  String get gameUiChess => 'शतरंज';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'शतरंज बोर्ड, वैध चालें, दो खिलाड़ी';

  @override
  String get gameUiSnakeAndLadders => 'सांप और सीढ़ी';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'पासा बोर्ड, सांप और सीढ़ी, दो खिलाड़ी';

  @override
  String get gameUiGames => 'गेम्स 🎮';

  @override
  String get gameUiPlayEarn => 'खेलें और कमाएँ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'गेम खेलें और बोनस पॉइंट्स कमाएँ!';

  @override
  String get gameUiSearchGames => 'गेम खोजें';

  @override
  String get gameUiClearSearch => 'खोज साफ़ करें';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" से कोई गेम मेल नहीं खाता';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'घुमाएँ और बोनस पॉइंट्स जीतें।';

  @override
  String get gameUiScratchToRevealYourReward => 'अपना इनाम देखने के लिए स्क्रैच करें।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'स्लॉट्स घुमाएँ और पॉइंट्स जीतें।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'एक मिस्ट्री बॉक्स चुनें और सही उत्तर देकर पॉइंट्स जीतें।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'पॉइंट्स कमाने के लिए DevOps जोड़ियाँ मिलाएँ।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 प्रयासों में DevOps शब्द का अनुमान लगाएँ।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ग्रिड में छिपे DevOps शब्द खोजें।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 लेवल में DevOps शब्द खोजने के लिए स्वाइप करें।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'दो चित्रित दृश्यों के बीच पाँच बदलाव खोजें।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'साझा किए गए HD जानवरों और प्रकृति के चित्रों को फिर से जोड़ें।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'स्ट्रीक बनाएँ और अपने पॉइंट्स सुरक्षित करें।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'त्वरित उत्तरों से समय को हराएँ।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'सही या गलत ब्लिट्ज़ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'कमांड को उनके काम से मिलाएँ।';

  @override
  String get gameUiCommandMatch670a76e => 'कमांड मैच 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 जीवन के साथ डिफ़ॉल्ट पोर्ट का अनुमान लगाएँ।';

  @override
  String get gameUiPortMaster8f5fd42 => 'पोर्ट मास्टर 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'कंप्यूटर के खिलाफ O/X खेलें।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'जीतने के लिए एक पंक्ति में चार डिस्क गिराएँ।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'अपनी गोटियों को तीन बॉट्स के खिलाफ दौड़ाएँ।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'वैध चालों के साथ लोकल दो-खिलाड़ी शतरंज।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'वैध नियमों के साथ दो-खिलाड़ी शतरंज मैच खेलें।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'दो-खिलाड़ी पासा बोर्ड गेम।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 तक की दौड़ लगाएँ। सीढ़ियाँ चढ़ें और सांपों से बचें।';

  @override
  String get gameUiPlay => 'खेलें';

  @override
  String get gameUiWheelStopped => 'व्हील रुक गया!';

  @override
  String get gameUiYourRewardIs => 'आपका इनाम है';

  @override
  String get gameUiPOINTS => 'पॉइंट्स';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'यह इनाम पाने के लिए 1 क्विज़ प्रश्न का सही उत्तर दें।';

  @override
  String get gameUiWrongAnswerRewardLost => 'गलत उत्तर = इनाम खो गया।';

  @override
  String get gameUiAnswerQuestion => 'प्रश्न का उत्तर दें';

  @override
  String get gameUiSpinWheele449982 => '🎡 स्पिन व्हील';

  @override
  String get gameUiDailySpin => 'दैनिक स्पिन';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'व्हील घुमाएँ, फिर अपना इनाम पाने के लिए एक प्रश्न का उत्तर दें!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'आप आज का स्पिन पहले ही इस्तेमाल कर चुके हैं।';

  @override
  String get gameUiSpinning => 'घूम रहा है...';

  @override
  String get gameUiSPINNOW => 'अभी घुमाएँ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'कल फिर आएँ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'आज का इनाम: ⭐ $value1 पॉइंट्स';
  }

  @override
  String get gameUiBackToGames => 'गेम्स पर वापस जाएँ';

  @override
  String get gameUiSPIN => 'घुमाएँ';

  @override
  String get gameUiRewardRevealed => 'इनाम प्रकट हुआ!';

  @override
  String get gameUiYouFound => 'आपको मिला';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ स्क्रैच कार्ड';

  @override
  String get gameUiDailyScratch => 'दैनिक स्क्रैच';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'आज का इनाम देखने के लिए कार्ड स्क्रैच करें!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'आप आज का स्क्रैच कार्ड पहले ही इस्तेमाल कर चुके हैं।';

  @override
  String get gameUiAlreadyScratched => 'पहले ही स्क्रैच किया जा चुका है';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'एक और इनाम के लिए कल फिर आएँ।';

  @override
  String get gameUiYouRevealed => 'आपने प्रकट किया';

  @override
  String get gameUiSCRATCHHERE => 'यहाँ स्क्रैच करें  👆';

  @override
  String get gameUiJACKPOT777 => 'जैकपॉट 777!';

  @override
  String get gameUiLucky777 => 'लकी 777!';

  @override
  String get gameUiYourReward => 'आपका इनाम';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 लकी स्लॉट्स';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'स्लॉट्स घुमाएँ, फिर इनाम पाने के लिए एक प्रश्न का उत्तर दें!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'आप आज पहले ही खेल चुके हैं।';

  @override
  String get gameUiSPINNING => 'घूम रहा है...';

  @override
  String get gameUiROLLNOW => 'अभी रोल करें';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 जैकपॉट! 777 पॉइंट उपलब्ध हैं!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'मिस्ट्री डील की स्थिति जाँची नहीं जा सकी: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'बॉक्स $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 पॉइंट';
  }

  @override
  String get gameUiStartQuestion => 'प्रश्न शुरू करें';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 मिस्ट्री डील';

  @override
  String get gameUiMysteryDealCompleted => 'मिस्ट्री डील पूरी हुई!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'आप आज मिस्ट्री डील पहले ही खेल चुके हैं।';

  @override
  String get gameUiTodayYouWon => 'आज आपने जीता';

  @override
  String get gameUiTodaySReward => 'आज का इनाम';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 पॉइंट';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 पॉइंट गँवाए';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'एक और मिस्ट्री बॉक्स के लिए कल वापस आएँ!';

  @override
  String get gameUiChooseYourMysteryBox => 'अपना मिस्ट्री बॉक्स चुनें';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'हर बॉक्स में 10 से 1000 पॉइंट के बीच एक छिपा हुआ इनाम है।';

  @override
  String get gameUiPickOnlyOneBox => 'केवल एक बॉक्स चुनें!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'सभी $value1 लेवल पूरे हुए!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'लेवल $value1 पूरा हुआ!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 चालों में पूरा किया।\nआपने $value2 पॉइंट कमाए!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 चालों में पूरा किया।\nयह लेवल पहले ही पूरा हो चुका था।';
  }

  @override
  String get gameUiNextLevel => 'अगला लेवल';

  @override
  String get gameUiDone => 'पूरा हुआ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'मेमोरी मैच 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'सभी 100 लेवल पूरे हुए!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'आपने मेमोरी मैच के सभी लेवल पूरे कर लिए। बहुत बढ़िया खेले!';

  @override
  String get gameUiChooseLevel => 'लेवल चुनें';

  @override
  String gameUiMoves(String value1) {
    return 'चालें: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'लेवल $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 जोड़े';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'लेवल $value1 याद करें';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 मिलते-जुलते जोड़े खोजें';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz लोगो';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'अध्याय 1 · बिल्ड पाइपलाइन को बहाल करें';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'अध्याय 2 · क्लाउड प्लेटफ़ॉर्म को स्केल करें';

  @override
  String get gameUiChapter3ProtectProduction => 'अध्याय 3 · प्रोडक्शन की सुरक्षा करें';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'सबमिट करने के लिए बाकी सभी $value1 अक्षरों का उपयोग करें।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'सभी लेवल पूरे हुए!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'लेवल $value1 पूरा हुआ!';
  }

  @override
  String get gameUiTryAgain => 'फिर से कोशिश करें';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'शब्द $value1 था। आपने $value2 पॉइंट कमाए।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'शब्द $value1 था। आपने $value3 संकेत के बाद $value2 पॉइंट कमाए।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'शब्द $value1 था। आपने $value3 संकेतों के बाद $value2 पॉइंट कमाए।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'शब्द $value1 था। लेवल $value2 अभी भी आपका इंतज़ार कर रहा है।';
  }

  @override
  String get gameUiFinish => 'समाप्त करें';

  @override
  String get gameUiNextLevel254fd73 => 'अगला लेवल';

  @override
  String get gameUiRetryLevel => 'लेवल फिर से खेलें';

  @override
  String get gameUiHowToPlay => 'कैसे खेलें';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'हर लेवल में एक DevOps शब्द होता है। पाँच अक्षरों से छोटे शब्दों में कोई अक्षर मुफ़्त नहीं मिलता; लंबे शब्दों में एक अक्षर पहले से दिया जाता है। उत्तर बनाने के लिए अक्षरों के रैक का उपयोग करें और Enter दबाएँ। संकेत एक और अक्षर दिखाते हैं और आपके बैलेंस से 20 पॉइंट घटाते हैं। हर पूरा किया गया लेवल 100 पॉइंट दिलाता है।';

  @override
  String get gameUiGotIt => 'समझ गया';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'सभी $value1 लेवल पूरे हुए!';
  }

  @override
  String get gameUiEasy => 'आसान';

  @override
  String get gameUiMedium => 'मध्यम';

  @override
  String get gameUiHard => 'कठिन';

  @override
  String get gameUiHowToPlay13a6b22 => 'कैसे खेलें';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'लेवल $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'इनाम $value1 पॉइंट · उपयोग किए गए संकेत $value2';
  }

  @override
  String get gameUiHint20Pts => 'संकेत · −20 पॉइंट';

  @override
  String get gameUiEnter => 'एंटर';

  @override
  String get gameUiDelete => 'हटाएँ';

  @override
  String get gameUiDragThroughAWord => 'किसी शब्द पर ड्रैग करें';

  @override
  String get gameUiDragThroughEachWord => 'हर शब्द पर ड्रैग करें';

  @override
  String get gameUiReleaseToSelect => 'चुनने के लिए छोड़ें';

  @override
  String gameUiFound(String value1) {
    return '$value1 मिला';
  }

  @override
  String get gameUiNoWordThere => 'वहाँ कोई शब्द नहीं है';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 पहले ही मिल चुका है';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 खोजें';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'सभी लेवल पूरे हुए!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'आपने हर शब्द खोज लिया और $value1 पॉइंट कमाए।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'आपने हर शब्द खोज लिया। यह लेवल पहले ही पूरा हो चुका था।';

  @override
  String get gameUiAll500LevelsComplete => 'सभी 500 लेवल पूरे हुए!';

  @override
  String get gameUiReviewLevels => 'लेवल देखें';

  @override
  String gameUiLeft(String value1) {
    return '$value1 बाकी';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 पॉइंट';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'प्रगति सहेजी नहीं जा सकी। कृपया फिर से कोशिश करें।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'आपने $value1 पॉइंट कमाए!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'आप यह चित्र पहले ही पूरा कर चुके हैं। दोबारा खेलने पर अतिरिक्त पॉइंट नहीं मिलेंगे।';

  @override
  String get gameUiYouCompletedEveryPicture => 'आपने हर चित्र पूरा कर लिया!';

  @override
  String get gameUiLevels => 'लेवल';

  @override
  String get gameUiPictureB => 'चित्र B';

  @override
  String get gameUiPictureA => 'चित्र A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'चित्र लोड नहीं हो सका। फिर कोशिश करें';

  @override
  String get gameUiResetZoom => 'ज़ूम रीसेट करें';

  @override
  String get gameUiZoomBothPictures => 'दोनों चित्र ज़ूम करें';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'संकेत · प्रति संकेत $value1 पॉइंट';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'प्रगति लोड नहीं हो सकी। फिर कोशिश करें';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'लेवल $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'सभी अंतर मिल गए!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count अंतर खोजें। किसी भी चित्र में हर एक पर टैप करें।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'चूक: $value1  ·  संकेत: $value2 (−$value3 पॉइंट)  ·  $value4 लेवल पूरे';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'अगला लेवल: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'पहेली $value1 पूरी हुई!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'चित्र $value1 चालों में पूरा हुआ। आपने $value2 पॉइंट कमाए।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'चित्र $value1 चालों में पूरा हुआ।';
  }

  @override
  String get gameUiNextPuzzle => 'अगली पहेली';

  @override
  String get gameUiAllPuzzlesComplete => 'सभी पहेलियाँ पूरी हुईं';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'पहेली का टुकड़ा $value1 / $value2, सही जगह पर रखा गया';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'पहेली का टुकड़ा $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'पहेली चुनें';

  @override
  String get gameUiShufflePieces => 'टुकड़े मिलाएँ';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'पहेली की तस्वीर लोड नहीं हो सकी।';

  @override
  String get gameUiPreviousPuzzle => 'पिछली पहेली';

  @override
  String gameUiPuzzle(String value1) {
    return 'पहेली $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 चालें';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'टुकड़ों को अदला-बदली के लिए खींचें, या दो टुकड़ों पर टैप करें।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 पहेलियाँ हल हुईं  ·  प्रत्येक के $value3 अंक';
  }

  @override
  String get gameUiGameOver => 'खेल समाप्त';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'संख्या $value1 थी।\nलगातार जीत: $value2\nआपने $value3 अंक कमाए!\n\nएक और मौके के लिए कल फिर आएँ!';
  }

  @override
  String get gameUiHigherOrLower => 'ऊपर या नीचे 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'आज पहले ही खेल चुके हैं!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'आपने $value1/$value2/$value3 को खेला था।\n\nनई लगातार जीत बनाने के लिए कल फिर आएँ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'आप आज पहले ही खेल चुके हैं।\n\nएक और मौके के लिए कल फिर आएँ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 लगातार जीत: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ अंक: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'क्या अगली संख्या ज़्यादा होगी या कम?';

  @override
  String get gameUiLower => 'कम';

  @override
  String get gameUiHigher => 'ज़्यादा';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'सही या गलत ब्लिट्ज़ ⚡';

  @override
  String get gameUiTimeSUp => 'समय समाप्त!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'सही उत्तर: $value1\nसर्वश्रेष्ठ लगातार जीत: $value2\n$value3आपने $value4 अंक कमाए!\n\nएक और राउंड के लिए कल फिर आएँ!';
  }

  @override
  String get gameUiStreakBonus20 => 'लगातार जीत बोनस: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'क्या दिखाया गया उत्तर सही है या गलत?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 श्रेणियों में $value1 प्रश्न';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'आपके पास $value1 सेकंड हैं। प्रत्येक सही उत्तर पर $value2 अंक मिलते हैं। गलत उत्तर पर $value3 सेकंड कट जाते हैं। लगातार 5 सही उत्तरों पर +20 बोनस पाएँ।';
  }

  @override
  String get gameUiRoundTimer => 'राउंड टाइमर';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 सेकंड';
  }

  @override
  String get gameUiStart => 'शुरू करें';

  @override
  String get gameUiTrue => 'सही';

  @override
  String get gameUiFalse => 'गलत';

  @override
  String get gameUiCommandMatch26b0e70 => 'कमांड मिलान 🔗';

  @override
  String get gameUiAllMatched => 'सभी मिलान हो गए!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'गलतियाँ: $value1\nआपने $value2 अंक कमाए!\n\nनई कमांड के लिए कल फिर आएँ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'राउंड $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'किसी कमांड पर टैप करें, फिर उसके अर्थ पर टैप करें।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'अब मेल खाने वाले अर्थ पर टैप करें।';

  @override
  String get gameUiPortMaster9c730cf => 'पोर्ट मास्टर 🔌';

  @override
  String get gameUiPortMastera796b69 => 'पोर्ट मास्टर!';

  @override
  String get gameUiOutOfLives => 'जीवन समाप्त';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'सही उत्तर: $value1\nआपने $value2 अंक कमाए!\n\nएक और राउंड के लिए कल फिर आएँ!';
  }

  @override
  String get gameUiYouEarned10Points => 'आपने 10 अंक कमाए!';

  @override
  String get gameUiYouWin => 'आप जीत गए!';

  @override
  String gameUiWins(String value1) {
    return '$value1 जीता!';
  }

  @override
  String get gameUiXWins => 'X जीता!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) जीता!';
  }

  @override
  String get gameUiComputerWins => 'कंप्यूटर जीता';

  @override
  String get gameUiOWins => 'O जीता!';

  @override
  String get gameUiPlayer2OWins => 'खिलाड़ी 2 (O) जीता!';

  @override
  String get gameUiItSADraw => 'मुकाबला बराबरी पर रहा';

  @override
  String get gameUiYourTurn => 'आपकी बारी';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 की बारी';
  }

  @override
  String get gameUiComputerIsThinking => 'कंप्यूटर सोच रहा है';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'खिलाड़ी $value1 की चाल';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 की चाल';
  }

  @override
  String get gameUiPlayer2ToMove => 'खिलाड़ी 2 की चाल';

  @override
  String get gameUiNewRound => 'नया राउंड';

  @override
  String get gameUiVsComputer => 'कंप्यूटर के विरुद्ध';

  @override
  String get gameUi2Players => '2 खिलाड़ी';

  @override
  String get gameUiYou => 'आप';

  @override
  String get gameUiDraws => 'बराबरी';

  @override
  String get gameUiPlayer2 => 'खिलाड़ी 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'खाना $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'फिर से खेलें';

  @override
  String get gameUiConnectFourWin20Points => 'कनेक्ट फोर जीत: 20 अंक!';

  @override
  String get gameUiBotWins => 'बॉट जीता!';

  @override
  String get gameUiRed => 'लाल';

  @override
  String get gameUiYellow => 'पीला';

  @override
  String get gameUiBoardFullDraw => 'बोर्ड भर गया — बराबरी';

  @override
  String get gameUiBotIsThinking => 'बॉट सोच रहा है';

  @override
  String get gameUiBotTurn => 'बॉट की बारी';

  @override
  String get gameUiNewGame => 'नया खेल';

  @override
  String get gameUiVsBot => 'बॉट के विरुद्ध';

  @override
  String get gameUi2Player => '2 खिलाड़ी';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'बॉट के विरुद्ध खेलें · डिस्क गिराने के लिए किसी कॉलम पर टैप करें';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'दो खिलाड़ी · डिस्क गिराने के लिए किसी कॉलम पर टैप करें';

  @override
  String gameUiColumn(String value1) {
    return 'कॉलम $value1';
  }

  @override
  String get gameUiYouRed => 'आप · लाल';

  @override
  String get gameUiRedPlayer1 => 'लाल · खिलाड़ी 1';

  @override
  String get gameUiBotYellow => 'बॉट · पीला';

  @override
  String get gameUiYellowPlayer2 => 'पीला · खिलाड़ी 2';

  @override
  String get gameUiLudoMatchStats => 'लूडो मैच आँकड़े';

  @override
  String get gameUiNoCompletedMatchesYet => 'अभी तक कोई मैच पूरा नहीं हुआ।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'खेले $value1  ·  जीते $value2  ·  हारे $value3';
  }

  @override
  String get gameUiClose => 'बंद करें';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'लूडो चैंपियन! आपने 50 अंक कमाए।';

  @override
  String get gameUiNewLudoGame => 'नया लूडो खेल';

  @override
  String get gameUiBotOpponents => 'बॉट प्रतिद्वंद्वी';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'नया मैच शुरू करने पर आपका सहेजा हुआ खेल बदल जाएगा।';

  @override
  String get gameUiCancel => 'रद्द करें';

  @override
  String get gameUiStartGame => 'खेल शुरू करें';

  @override
  String get gameUiPlayerColours => 'खिलाड़ी के रंग';

  @override
  String get gameUiApply => 'लागू करें';

  @override
  String get gameUiMatchStats => 'मैच आँकड़े';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 चेकमेट से जीता';
  }

  @override
  String get gameUiBlack => 'काला';

  @override
  String get gameUiWhite => 'सफ़ेद';

  @override
  String get gameUiComputerWinsByCheckmate => 'कंप्यूटर चेकमेट से जीता';

  @override
  String get gameUiYouWinByCheckmate => 'आप चेकमेट से जीते';

  @override
  String get gameUiDrawByStalemate => 'स्टेलमेट से बराबरी';

  @override
  String get gameUiDraw => 'बराबरी';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · शह';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'शह और मात! आपने 50 अंक कमाए।';

  @override
  String get gameUiStartANewGame => 'नया गेम शुरू करें?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'खिलाड़ी मोड बदलने से सहेजा गया मैच बदल जाएगा।';

  @override
  String get gameUiComputer => 'कंप्यूटर';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · सफ़ेद / खिलाड़ी 2 · काला';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'आप सफ़ेद हैं · कंप्यूटर काला है';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (सफ़ेद) · कंप्यूटर (काला)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'आप काले हैं · कंप्यूटर सफ़ेद है';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (काला) · कंप्यूटर (सफ़ेद)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 पहले पासा फेंकेगा';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 फिर से पासा फेंकेगा';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 को पासा फेंकना है';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'सांप और सीढ़ी में जीत: 100 अंक!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'खिलाड़ी बदलने से सहेजा गया गेम बदल जाएगा।';

  @override
  String get gameUiStartANewLevel => 'नया स्तर शुरू करें?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'स्तर बदलने से सहेजा गया गेम बदल जाएगा।';

  @override
  String get gameUiChangeLevel => 'स्तर बदलें';

  @override
  String get gameUiPlayers => 'खिलाड़ी';

  @override
  String get gameUiPlayAgainstBot => 'बॉट के विरुद्ध खेलें';

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
    return '$value1 · पासा फेंकें';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 पर $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'प्रश्न लोड नहीं हो सका: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'सही उत्तर!';

  @override
  String get gameUiWrongAnswer => 'गलत उत्तर';

  @override
  String get gameUiYouClaimedYourReward => 'आपने अपना पुरस्कार प्राप्त कर लिया!';

  @override
  String get gameUiAddedToYourTotalPoints => 'आपके कुल अंकों में जोड़ दिया गया।';

  @override
  String get gameUiTheCorrectAnswerWas => 'सही उत्तर था:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 अंक का पुरस्कार खो गया।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'आपके मौजूदा अंक नहीं काटे गए।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'कल फिर आएँ और दोबारा प्रयास करें।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'प्रश्न लोड नहीं हो सका।';

  @override
  String get gameUiYourReward677fa6e => 'आपका पुरस्कार';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 अंक';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'इसे पाने के लिए सही उत्तर दें!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'एक और राउंड के लिए कल फिर आएँ।';

  @override
  String get gameUiGreen => 'हरा';

  @override
  String get gameUiBlue => 'नीला';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 सोच रहा है';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: एक मोहरा चुनें';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: पासा फेंकें';
  }

  @override
  String gameUiDice(String value1) {
    return 'पासा $value1';
  }

  @override
  String get gameUiRollDice => 'पासा फेंकें';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 मोहरा $value2';
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
  String get gameUiHintInsufficientPoints => 'संकेत का उपयोग करने के लिए आपको 20 अंक चाहिए।';

  @override
  String get gameUiHintPurchaseFailed => 'संकेत नहीं खरीदा जा सका। कृपया फिर से प्रयास करें।';

  @override
  String get gameUiChessKing => 'राजा';

  @override
  String get gameUiChessQueen => 'रानी';

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
  String get gameSceneLampAndFlowers => 'दीपक और फूल';

  @override
  String get gameSceneGardenFriends => 'बगीचे के दोस्त';

  @override
  String get gameSceneUnderwaterExplorers => 'पानी के नीचे के खोजकर्ता';

  @override
  String get gameSceneOceanOrca => 'समुद्री ओर्का';

  @override
  String get gameSceneFoxInTheMeadow => 'घास के मैदान में लोमड़ी';

  @override
  String get gameSceneYellowSubmarine => 'पीली पनडुब्बी';

  @override
  String get gameSceneTurkeyInTheClearing => 'खुली जगह में टर्की';

  @override
  String get gameSceneSafariWateringHole => 'सफारी जलकुंड';

  @override
  String get gameSceneJungleCompanions => 'जंगल के साथी';

  @override
  String get gameSceneGoldenPuppyGarden => 'सुनहरे पिल्ले का बगीचा';

  @override
  String get gameSceneSeaTurtleReef => 'समुद्री कछुए की चट्टान';

  @override
  String get gameSceneCoralReefFriends => 'प्रवाल भित्ति के दोस्त';

  @override
  String get gameSceneSharedClownfish => 'साझा क्लाउनफ़िश';

  @override
  String get gameSceneLittleDinosaur => 'छोटा डायनासोर';

  @override
  String get gameSceneSafariCompanions => 'सफारी के साथी';

  @override
  String get gameSceneSwirlingFlowers => 'घूमते हुए फूल';

  @override
  String get gameSceneGardenKitten => 'बगीचे का बिल्ली का बच्चा';

  @override
  String get gameSceneBlueOcean => 'नीला समुद्र';

  @override
  String get gameSceneCastlePrincess => 'किले की राजकुमारी';

  @override
  String get gameSceneRedCar => 'लाल कार';

  @override
  String get gameSceneGardenPuppy => 'बगीचे का पिल्ला';

  @override
  String get gameSceneSpaceExplorer => 'अंतरिक्ष खोजकर्ता';

  @override
  String get gameSceneEnchantedReadingForest => 'मंत्रमुग्ध पठन वन';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps इनफिनिटी चक्र';

  @override
  String get gameSceneAnsible => 'अन्सिबल (Ansible)';

  @override
  String get gameSceneAws => 'एडब्ल्यूएस (AWS)';

  @override
  String get gameSceneAzure => 'एज़्योर (Azure)';

  @override
  String get gameSceneBashScripting => 'बैश स्क्रिप्टिंग (Bash Scripting)';

  @override
  String get gameSceneDocker => 'डॉकर (Docker)';

  @override
  String get gameSceneGcp => 'जीसीपी (GCP)';

  @override
  String get gameSceneGit => 'गिट (Git)';

  @override
  String get gameSceneHybridCloud => 'हाइब्रिड क्लाउड (Hybrid Cloud)';

  @override
  String get gameSceneIbmCloud => 'आईबीएम क्लाउड (IBM Cloud)';

  @override
  String get gameSceneJavascript => 'जावास्क्रिप्ट (JavaScript)';

  @override
  String get gameSceneJenkins => 'जेनकिंस (Jenkins)';

  @override
  String get gameSceneKubernetes => 'कुबेरनेट्स (Kubernetes)';

  @override
  String get gameSceneLinux => 'लिनक्स (Linux)';

  @override
  String get gameSceneMultiCloud => 'मल्टी क्लाउड (Multi Cloud)';

  @override
  String get gameSceneNetworking => 'नेटवर्किंग';

  @override
  String get gameSceneOracleCloud => 'ऑरेकल क्लाउड (Oracle Cloud)';

  @override
  String get gameScenePerl => 'पर्ल (Perl)';

  @override
  String get gameScenePowershell => 'पावरशेल (PowerShell)';

  @override
  String get gameScenePython => 'पायथन (Python)';

  @override
  String get gameSceneRuby => 'रूबी (Ruby)';

  @override
  String get gameSceneTerraform => 'टेराफ़ॉर्म (Terraform)';

  @override
  String get gameSceneWinterFestivalFair => 'शीतकालीन उत्सव मेला';

  @override
  String get gameSceneArmoredHeroCloseUp => 'कवचधारी नायक का क्लोज़-अप';

  @override
  String get gameSceneArmoredHeroInCrimson => 'गहरे लाल रंग में कवचधारी नायक';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'गहरे रंग के चंपा के फूल';

  @override
  String get gameSceneMangroveBoardwalk => 'मैंग्रोव बोर्डवॉक';

  @override
  String get gameSceneTropicalPalmReflections => 'उष्णकटिबंधीय ताड़ के प्रतिबिंब';

  @override
  String get gameSceneMaskedFigureInShadow => 'छाया में नकाबपोश आकृति';

  @override
  String get gameSceneElectricCompanionAtSunset => 'सूर्यास्त में इलेक्ट्रिक साथी';

  @override
  String get gameSceneTrainerAndFireDragon => 'प्रशिक्षक और अग्नि ड्रैगन';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'रत्न जड़ा कुश्ती मुखौटा';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'लाल कूची-रेखाओं में पहलवान';

  @override
  String get gameSceneWrestlingChampionSalute => 'कुश्ती चैंपियन का सलाम';

  @override
  String get gameSceneMorningAtTheBakery => 'बेकरी में सुबह';

  @override
  String get gameSceneGreenhousePottingBench => 'ग्रीनहाउस की गमला बेंच';

  @override
  String get gameSceneHarborFishingBoat => 'बंदरगाह की मछली पकड़ने वाली नाव';

  @override
  String get gameSceneAtticObservatory => 'अटारी वेधशाला';

  @override
  String get gameSceneToyMakerSWorkshop => 'खिलौना बनाने वाले की कार्यशाला';

  @override
  String get gameSceneWoodlandCampsite => 'वन शिविर स्थल';

  @override
  String get gameSceneAfternoonMusicRoom => 'दोपहर का संगीत कक्ष';

  @override
  String get gameSceneSeasideIceCreamStand => 'समुद्र तट का आइसक्रीम स्टैंड';

  @override
  String get gameSceneLibraryReadingNook => 'पुस्तकालय का पठन कोना';

  @override
  String get gameSceneSewingStudio => 'सिलाई स्टूडियो';

  @override
  String get gameSceneFruitMarket => 'फल बाज़ार';

  @override
  String get gameSceneKoiCourtyard => 'कोई मछली वाला आँगन';

  @override
  String get gameSceneArtistSAtelier => 'कलाकार का स्टूडियो';

  @override
  String get gameSceneMountainRailway => 'पहाड़ी रेलवे';

  @override
  String get gameSceneCountryKitchen => 'देहाती रसोई';

  @override
  String get gameScenePotteryWorkshop => 'मिट्टी के बर्तनों की कार्यशाला';

  @override
  String get gameSceneBeachPicnic => 'समुद्र तट पिकनिक';

  @override
  String get gameSceneFlowerShop => 'फूलों की दुकान';

  @override
  String get gameSceneClockmakerSWorkshop => 'घड़ीसाज़ की कार्यशाला';

  @override
  String get gameSceneRainyCafeTerrace => 'बारिश वाली कैफ़े छत';

  @override
  String get gameSceneCastleHerbGarden => 'किले का जड़ी-बूटी बगीचा';

  @override
  String get gameSceneClassroomArtCorner => 'कक्षा का कला कोना';

  @override
  String get gameSceneAquariumShop => 'एक्वेरियम की दुकान';

  @override
  String get gameSceneAutumnLeafCollection => 'पतझड़ के पत्तों का संग्रह';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'चाँद के नीचे अकेला पेड़';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'डाली पर पतझड़ का फूल';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'हरी पत्तियों के बीच लोमड़ी';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'कुमुदिनी से ढकी झील पर डोंगी';

  @override
  String get gameSceneDewDropsOnALeaf => 'पत्ते पर ओस की बूँदें';

  @override
  String get gameSceneStagInATurquoiseLake => 'फ़िरोज़ी झील में नर हिरण';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'नारंगी चाँद के नीचे साइकिल';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'घाटी के ऊपर सफ़ेद बाघ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'नीले पानी में दो पेड़';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'वफ़ादार कुत्ते के पास मछली पकड़ना';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'पहाड़ी झील के किनारे लिली के फूल';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'गुलाबी नदी तट पर हिरण';

  @override
  String get gameSceneTropicalHutAtSunset => 'सूर्यास्त के समय उष्णकटिबंधीय झोपड़ी';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'अल्पाइन घाटी को निहारती लोमड़ी';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'मंत्रमुग्ध करने वाले उपवन से दिखता सूर्यास्त';

  @override
  String get learningControlTitle => 'DevOps सीखें';

  @override
  String get learningControlAllCategories => 'सभी श्रेणियाँ';

  @override
  String get learningControlSearchCards => 'कार्ड खोजें';

  @override
  String get learningControlClearSearch => 'खोज मिटाएँ';

  @override
  String get learningControlCategory => 'श्रेणी';

  @override
  String get learningControlShowAll => 'सभी कार्ड दिखाएँ';

  @override
  String learningControlShowSaved(int count) {
    return 'सहेजे गए कार्ड दिखाएँ ($count)';
  }

  @override
  String get learningControlShuffleOff => 'शफ़ल बंद करें';

  @override
  String get learningControlShuffleOn => 'कार्ड शफ़ल करें';

  @override
  String get learningControlAutoOff => 'ऑटो स्वाइप बंद करें';

  @override
  String get learningControlAutoOn => 'हर 10 सेकंड में ऑटो स्वाइप';

  @override
  String get learningControlNoSaved => 'अभी कोई कार्ड सहेजा नहीं गया';

  @override
  String get learningControlNoMatches => 'कोई कार्ड नहीं मिला';

  @override
  String get learningControlResetFilters => 'फ़िल्टर हटाएँ';

  @override
  String get learningControlPrevious => 'पिछला';

  @override
  String get learningControlNext => 'अगला';

  @override
  String get learningControlProgress => 'प्रगति';

  @override
  String get learningControlRemoveSaved => 'सहेजे गए से हटाएँ';

  @override
  String get learningControlSaveCard => 'कार्ड सहेजें';

  @override
  String get learningControlExample => 'उदाहरण';

  @override
  String get learningControlCopyExample => 'उदाहरण कॉपी करें';

  @override
  String get learningControlExampleCopied => 'उदाहरण कॉपी किया गया';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'लेवल $value1 पूरा हुआ';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'लेवल $value1 खेलें';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'अनलॉक करने के लिए लेवल $value1 पूरा करें';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'दैनिक लॉगिन बोनस';

  @override
  String get sharedDialogThanksForComingBack => 'वापस आने के लिए धन्यवाद!';

  @override
  String get sharedDialogDailyRewardAdded => 'आपका दैनिक इनाम आपके कुल पॉइंट्स में जोड़ दिया गया है।';

  @override
  String get sharedDialogAwesome => 'शानदार!';

  @override
  String get accountWelcomeGuest => 'अतिथि';

  @override
  String get accountWelcomeGuestUser => 'अतिथि उपयोगकर्ता';

  @override
  String get accountWelcomeUser => 'उपयोगकर्ता';

  @override
  String get accountWelcomePlayingAsGuest => 'अतिथि के रूप में खेल रहे हैं';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google खाता कनेक्ट करें';

  @override
  String get accountWelcomeGoogleConnected => 'Google खाता सफलतापूर्वक कनेक्ट हो गया! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'साइन-इन रद्द कर दिया गया।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'कनेक्ट करने में विफल: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'साइन आउट करें';

  @override
  String get accountWelcomeSignOutTitle => 'साइन आउट करें?';

  @override
  String get accountWelcomeSignOutMessage => 'क्या आप वाकई साइन आउट करना चाहते हैं? अपनी सहेजी गई प्रगति तक पहुँचने के लिए आपको दोबारा साइन इन करना होगा।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'साइन आउट विफल रहा: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ऐप डेटा रीसेट करें?';

  @override
  String get accountWelcomeResetAppMessage => 'इससे आपके सभी पॉइंट, स्ट्रीक, गेम इतिहास और सेटिंग्स स्थायी रूप से हट जाएँगे। आपको साइन आउट कर दिया जाएगा और स्टार्ट स्क्रीन पर वापस भेज दिया जाएगा। इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String get accountWelcomeResetEverything => 'सब कुछ रीसेट करें';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'रीसेट विफल रहा: $value1';
  }

  @override
  String get accountWelcomeCancel => 'रद्द करें';

  @override
  String get accountWelcomeResetAppData => 'ऐप डेटा रीसेट करें';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'सभी पॉइंट, स्ट्रीक और सेटिंग्स साफ़ करें';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ऐप';

  @override
  String get accountWelcomeTranslationNotAvailable => 'अनुवाद अभी उपलब्ध नहीं है';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google के साथ जारी रखें';

  @override
  String get accountWelcomeSigningIn => 'साइन इन हो रहा है...';

  @override
  String get accountWelcomeOr => 'या';

  @override
  String get accountWelcomeContinueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'आप बाद में अपनी प्रोफ़ाइल से साइन इन कर सकते हैं।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'आप अतिथि के रूप में शुरू कर सकते हैं और बाद में साइन इन कर सकते हैं।';

  @override
  String get accountWelcomeGreetingGuest => 'स्वागत है';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'स्वागत है, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google साइन-इन पूरा हुआ, लेकिन कोई उपयोगकर्ता खाता वापस नहीं मिला।';

  @override
  String get accountWelcomeErrorEmailExists => 'इस ईमेल का खाता पहले से किसी अन्य साइन-इन तरीके से मौजूद है।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'यह Google खाता पहले से किसी अन्य खाते से लिंक है।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google प्रमाणीकरण क्रेडेंशियल अमान्य है या समाप्त हो चुका है।';

  @override
  String get accountWelcomeErrorUserDisabled => 'यह खाता अक्षम कर दिया गया है।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google साइन-इन फ़िलहाल सक्षम नहीं है।';

  @override
  String get accountWelcomeErrorNetwork => 'नेटवर्क त्रुटि। कृपया अपना इंटरनेट कनेक्शन जाँचें और पुनः प्रयास करें।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'साइन-इन के बहुत अधिक प्रयास हुए। कृपया प्रतीक्षा करें और पुनः प्रयास करें।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'कोई अतिरिक्त त्रुटि जानकारी नहीं।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google साइन-इन विफल रहा।\n\nकोड: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google साइन-इन त्रुटि:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'अतिथि के रूप में जारी रखना संभव नहीं है। कृपया पुनः प्रयास करें।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google साइन-इन जल्द ही उपलब्ध होगा।';

  @override
  String get accountWelcomeLoginTagline => 'सीखें • अभ्यास करें • प्रतिस्पर्धा करें • कमाएँ';

  @override
  String get accountWelcomeCountryRegion => 'देश / क्षेत्र';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'देश / क्षेत्र: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'देश खोजें';

  @override
  String get accountWelcomeCountryNotSelected => 'चयनित नहीं';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz क्यों?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ अभ्यास प्रश्न';

  @override
  String get accountWelcomeFeatureLanguages => 'बहु-भाषा समर्थन';

  @override
  String get accountWelcomeFeatureStreaks => 'स्ट्रीक और लीडरबोर्ड';

  @override
  String get accountWelcomeFeatureGames => 'गेम और चैलेंज';

  @override
  String get accountWelcomeFeatureCloud => 'क्लाउड और DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'बोनस और पुरस्कार';

  @override
  String get accountWelcomePracticeOnTheGo => 'कहीं भी अभ्यास करें';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ऐप इंस्टॉल करें और कहीं भी, ऑफ़लाइन सीखें।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play पर पाएँ';

  @override
  String achLocStreakTitle(String days) {
    return '$days दिन की स्ट्रीक';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days दिन की स्ट्रीक बनाए रखें।';
  }

  @override
  String get achLocYearStreakTitle => '1 साल की स्ट्रीक';

  @override
  String get achLocFirstQuizTitle => 'पहला क्विज़';

  @override
  String get achLocFirstQuizDescription => 'अपना पहला क्विज़ पूरा करें।';

  @override
  String get achLocQuiz10Title => 'क्विज़ एक्सप्लोरर';

  @override
  String get achLocQuiz10Description => '10 क्विज़ पूरे करें।';

  @override
  String get achLocPoints1000Title => '1000 पॉइंट';

  @override
  String get achLocPoints1000Description => 'Quiz में कुल 1000 पॉइंट अर्जित करें।';

  @override
  String get achLocPerfectScoreTitle => 'परफेक्ट स्कोर';

  @override
  String get achLocPerfectScoreDescription => 'किसी भी क्विज़ में 100% स्कोर करें।';

  @override
  String get achLocQuiz25Title => 'क्विज़ प्रेमी';

  @override
  String get achLocQuiz25Description => '25 क्विज़ पूरे करें।';

  @override
  String get achLocQuiz50Title => 'क्विज़ मास्टर';

  @override
  String get achLocQuiz50Description => '50 क्विज़ पूरे करें।';

  @override
  String get achLocQuiz100Title => 'सेंचुरी क्लब';

  @override
  String get achLocQuiz100Description => '100 क्विज़ पूरे करें।';

  @override
  String get achLocQuiz250Title => 'क्विज़ लीजेंड';

  @override
  String get achLocQuiz250Description => '250 क्विज़ पूरे करें।';

  @override
  String get achLocPoints5000Title => '5,000 पॉइंट';

  @override
  String get achLocPoints5000Description => 'कुल 5,000 पॉइंट अर्जित करें।';

  @override
  String get achLocPoints10000Title => '10,000 पॉइंट';

  @override
  String get achLocPoints10000Description => 'कुल 10,000 पॉइंट अर्जित करें।';

  @override
  String get achLocPoints50000Title => '50,000 पॉइंट';

  @override
  String get achLocPoints50000Description => 'कुल 50,000 पॉइंट अर्जित करें।';

  @override
  String get achLocPoints100000Title => '100,000 पॉइंट';

  @override
  String get achLocPoints100000Description => 'कुल 100,000 पॉइंट अर्जित करें।';

  @override
  String get achLocDaily1Title => 'डेली स्टार्टर';

  @override
  String get achLocDaily1Description => 'अपना पहला डेली क्विज़ पूरा करें।';

  @override
  String get achLocDaily7Title => 'डेली आदत';

  @override
  String get achLocDaily7Description => '7 डेली क्विज़ पूरे करें।';

  @override
  String get achLocDaily30Title => 'डेली चैंपियन';

  @override
  String get achLocDaily30Description => '30 डेली क्विज़ पूरे करें।';

  @override
  String get achLocSets5Title => 'सेट स्टार्टर';

  @override
  String get achLocSets5Description => '5 क्विज़ सेट पूरे करें।';

  @override
  String get achLocSets25Title => 'सेट कलेक्टर';

  @override
  String get achLocSets25Description => '25 क्विज़ सेट पूरे करें।';

  @override
  String get achLocSets50Title => 'सेट मास्टर';

  @override
  String get achLocSets50Description => '50 क्विज़ सेट पूरे करें।';

  @override
  String get achLocSets100Title => 'सेट लीजेंड';

  @override
  String get achLocSets100Description => '100 क्विज़ सेट पूरे करें।';

  @override
  String get achLocCert1Title => 'पहला प्रमाणपत्र';

  @override
  String get achLocCert1Description => 'अपना पहला श्रेणी प्रमाणपत्र अर्जित करें।';

  @override
  String get achLocCert5Title => 'प्रमाणित प्रो';

  @override
  String get achLocCert5Description => '5 श्रेणी प्रमाणपत्र अर्जित करें।';

  @override
  String get achLocCert21Title => 'पूर्ण प्रमाणित';

  @override
  String get achLocCert21Description => 'सभी 21 श्रेणियों में प्रमाणपत्र अर्जित करें।';

  @override
  String get achLocThemeFreeValentinesWeek => 'हर साल 7-14 फ़रवरी को निःशुल्क';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'हर साल 8-15 मार्च को निःशुल्क';

  @override
  String get achLocThemeLight => 'लाइट';

  @override
  String get achLocThemeDark => 'डार्क';

  @override
  String get achLocThemeSakura => 'सकुरा';

  @override
  String get achLocThemeSunset => 'सनसेट';

  @override
  String get achLocThemeCoffee => 'कॉफ़ी';

  @override
  String get achLocThemeTea => 'टी';

  @override
  String get achLocThemeOcean => 'ओशन';

  @override
  String get achLocThemeSolarFlare => 'सोलर फ्लेयर';

  @override
  String get achLocThemeForest => 'फ़ॉरेस्ट';

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
  String get achLocThemeDarkGrey => 'डार्क ग्रे';

  @override
  String get achLocThemeBarbee => 'बार्बी';

  @override
  String get achLocThemeValentineDay => 'वैलेंटाइन डे';

  @override
  String get achLocThemeDqSpecial => 'DQ स्पेशल';

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
  String get achLocThemeDc => 'DC हीरोज़';

  @override
  String get achLocThemeRainbow => 'रेनबो';

  @override
  String get achLocThemeDiamond => 'डायमंड';

  @override
  String get achLocThemeLegendary => 'लेजेंडरी';

  @override
  String get gameHintCmd001LsLa => 'सभी फ़ाइलों को विवरण के साथ सूचीबद्ध करें';

  @override
  String get gameHintCmd002Grep => 'पैटर्न से टेक्स्ट खोजें';

  @override
  String get gameHintCmd003Chmod => 'फ़ाइल की अनुमतियाँ बदलें';

  @override
  String get gameHintCmd004DfH => 'खाली डिस्क स्थान दिखाएँ';

  @override
  String get gameHintCmd005TailF => 'बढ़ती लॉग फ़ाइल को लगातार देखें';

  @override
  String get gameHintCmd006PsAux => 'चल रही प्रक्रियाओं की सूची दिखाएँ';

  @override
  String get gameHintCmd007GitClone => 'रिमोट रिपॉजिटरी की प्रतिलिपि बनाएँ';

  @override
  String get gameHintCmd008GitStash => 'अकमिट किए गए बदलाव अलग रख दें';

  @override
  String get gameHintCmd009GitRebase => 'कमिट्स को नए बेस पर दोबारा लागू करें';

  @override
  String get gameHintCmd010GitBlame => 'हर पंक्ति किसने बदली, यह दिखाएँ';

  @override
  String get gameHintCmd011DockerPs => 'चल रहे कंटेनरों की सूची दिखाएँ';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile से इमेज बनाएँ';

  @override
  String get gameHintCmd013DockerLogs => 'कंटेनर का आउटपुट दिखाएँ';

  @override
  String get gameHintCmd014DockerExec => 'कंटेनर के अंदर कमांड चलाएँ';

  @override
  String get gameHintCmd015KubectlGetPods => 'नेमस्पेस के पॉड्स की सूची दिखाएँ';

  @override
  String get gameHintCmd016KubectlApply => 'फ़ाइल से संसाधन बनाएँ';

  @override
  String get gameHintCmd017KubectlDescribe => 'संसाधन की विस्तृत जानकारी दिखाएँ';

  @override
  String get gameHintCmd018KubectlScale => 'रेप्लिकाओं की संख्या बदलें';

  @override
  String get gameHintCmd019TerraformInit => 'प्रोवाइडर डाउनलोड करें और सेटअप करें';

  @override
  String get gameHintCmd020TerraformPlan => 'इन्फ्रास्ट्रक्चर बदलावों का पूर्वावलोकन करें';

  @override
  String get gameHintCmd021TerraformApply => 'इन्फ्रास्ट्रक्चर बनाएँ या अपडेट करें';

  @override
  String get gameHintCmd022TerraformDestroy => 'प्रबंधित इन्फ्रास्ट्रक्चर हटाएँ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ऑटोमेशन प्लेबुक चलाएँ';

  @override
  String get gameHintCmd024Ping => 'ICMP से पहुँच की जाँच करें';

  @override
  String get gameHintCmd025Traceroute => 'होस्ट तक का रास्ता दिखाएँ';

  @override
  String get gameHintCmd026Curl => 'URL से डेटा स्थानांतरित करें';

  @override
  String get gameHintCmd027Ssh => 'रिमोट मशीन में सुरक्षित रूप से लॉग इन करें';

  @override
  String get gameHintCmd028CrontabE => 'निर्धारित जॉब्स संपादित करें';

  @override
  String get gameHintCmd029SystemctlStatus => 'सर्विस की स्थिति जाँचें';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes पर चार्ट डिप्लॉय करें';

  @override
  String get gameHintWord001Git => 'सोर्स कोड में बदलावों को ट्रैक करता है।';

  @override
  String get gameHintWord002Aws => 'Amazon का क्लाउड प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord003Api => 'एक अनुबंध जो सॉफ़्टवेयर सिस्टम को आपस में संवाद करने देता है।';

  @override
  String get gameHintWord004Dns => 'डोमेन नामों को IP पतों में बदलता है।';

  @override
  String get gameHintWord005Cli => 'कमांड चलाने के लिए टेक्स्ट-आधारित इंटरफ़ेस।';

  @override
  String get gameHintWord006Cpu => 'निर्देशों को निष्पादित करने वाला प्रोसेसर।';

  @override
  String get gameHintWord007Ram => 'चल रहे प्रोग्रामों द्वारा उपयोग की जाने वाली अस्थायी मेमोरी।';

  @override
  String get gameHintWord008Ssh => 'रिमोट शेल एक्सेस के लिए सुरक्षित प्रोटोकॉल।';

  @override
  String get gameHintWord009Yaml => 'मनुष्य द्वारा पढ़ने योग्य डेटा सीरियलाइज़ेशन फ़ॉर्मैट।';

  @override
  String get gameHintWord010Linux => 'ओपन-सोर्स ऑपरेटिंग सिस्टम कर्नेल और उसका परिवार।';

  @override
  String get gameHintWord011Bash => 'एक लोकप्रिय यूनिक्स कमांड शेल।';

  @override
  String get gameHintWord012Cloud => 'नेटवर्क पर माँग के अनुसार उपलब्ध कंप्यूटिंग।';

  @override
  String get gameHintWord013Docker => 'कंटेनर बनाने और चलाने का प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord014Azure => 'Microsoft का क्लाउड प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord015Python => 'व्यापक रूप से प्रयुक्त स्क्रिप्टिंग और प्रोग्रामिंग भाषा।';

  @override
  String get gameHintWord016Github => 'एक लोकप्रिय होस्टेड Git सहयोग सेवा।';

  @override
  String get gameHintWord017Bgp => 'रूटिंग प्रोटोकॉल जो स्वायत्त सिस्टमों के बीच रूट साझा करता है।';

  @override
  String get gameHintWord018Jenkins => 'CI के लिए अक्सर उपयोग होने वाला ऑटोमेशन सर्वर।';

  @override
  String get gameHintWord019Port => 'नेटवर्क सेवाओं द्वारा उपयोग किया जाने वाला क्रमांकित एंडपॉइंट।';

  @override
  String get gameHintWord020Proxy => 'क्लाइंट की ओर से अनुरोध आगे भेजने वाला सर्वर।';

  @override
  String get gameHintWord021Cache => 'बार-बार उपयोग होने वाले डेटा का तेज़ भंडार।';

  @override
  String get gameHintWord022Cron => 'आवर्ती कमांड के लिए यूनिक्स शेड्यूलर।';

  @override
  String get gameHintWord023Bicep => 'इन्फ्रास्ट्रक्चर एज़ कोड के लिए Azure की घोषणात्मक भाषा।';

  @override
  String get gameHintWord024Apigee => 'केंद्रीकृत API प्रबंधन के लिए Google क्लाउड प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord025Root => 'यूनिक्स जैसे सिस्टमों पर विशेषाधिकार प्राप्त एडमिन खाता।';

  @override
  String get gameHintWord026Nginx => 'वेब सर्वर और रिवर्स प्रॉक्सी।';

  @override
  String get gameHintWord027Redis => 'इन-मेमोरी डेटा स्टोर जो अक्सर कैश के रूप में उपयोग होता है।';

  @override
  String get gameHintWord028Mysql => 'लोकप्रिय रिलेशनल डेटाबेस सिस्टम।';

  @override
  String get gameHintWord029Ruby => 'Chef जैसे टूल द्वारा उपयोग की जाने वाली प्रोग्रामिंग भाषा।';

  @override
  String get gameHintWord030Helm => 'Kubernetes के साथ आम तौर पर उपयोग होने वाला पैकेज मैनेजर।';

  @override
  String get gameHintWord031Pod => 'Kubernetes में डिप्लॉय की जा सकने वाली सबसे छोटी इकाई।';

  @override
  String get gameHintWord032Image => 'कंटेनर बनाने के लिए उपयोग होने वाला रीड-ओनली टेम्पलेट।';

  @override
  String get gameHintWord033Build => 'सोर्स और डिपेंडेंसी से आर्टिफ़ैक्ट बनाता है।';

  @override
  String get gameHintWord034Deploy => 'किसी एप्लिकेशन को परिवेश में जारी करता है।';

  @override
  String get gameHintWord035Terraform => 'इन्फ्रास्ट्रक्चर एज़ कोड के लिए HashiCorp का टूल।';

  @override
  String get gameHintWord036Ansible => 'एजेंट-रहित ऑटोमेशन और कॉन्फ़िगरेशन टूल।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes के लिए कमांड-लाइन क्लाइंट।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform का संक्षिप्त रूप।';

  @override
  String get gameHintWord039Gitops => 'ऑपरेशनल मॉडल जो Git को सत्य के स्रोत के रूप में उपयोग करता है।';

  @override
  String get gameHintWord040Pipeline => 'बिल्ड, टेस्ट और रिलीज़ चरणों का स्वचालित क्रम।';

  @override
  String get gameHintWord041Container => 'अपनी डिपेंडेंसी के साथ पैक की गई अलग-थलग प्रक्रिया।';

  @override
  String get gameHintWord042Cluster => 'साझा सिस्टम के रूप में प्रबंधित मशीनों का समूह।';

  @override
  String get gameHintWord043Ingress => 'बाहरी HTTP रूटिंग के लिए Kubernetes API ऑब्जेक्ट।';

  @override
  String get gameHintWord044Firewall => 'सुरक्षा नियमों के अनुसार नेटवर्क ट्रैफ़िक को फ़िल्टर करता है।';

  @override
  String get gameHintWord045Subnet => 'IP नेटवर्क का तार्किक उपविभाजन।';

  @override
  String get gameHintWord046Gateway => 'अलग-अलग नेटवर्क को जोड़ने वाला नेटवर्क नोड।';

  @override
  String get gameHintWord047Router => 'नेटवर्कों के बीच पैकेट आगे भेजता है।';

  @override
  String get gameHintWord048Switch => 'स्थानीय नेटवर्क में उपकरणों को जोड़ता है।';

  @override
  String get gameHintWord049Repository => 'सोर्स कोड या पैकेजों के लिए प्रबंधित भंडारण।';

  @override
  String get gameHintWord050Systemd => 'Linux इनिट सिस्टम और सर्विस मैनेजर।';

  @override
  String get gameHintWord051Journalctl => 'systemd जर्नल लॉग पढ़ने के लिए उपयोग होने वाली कमांड।';

  @override
  String get gameHintWord052Permission => 'नियम जो तय करता है कि कौन पढ़, लिख या चला सकता है।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud का प्रबंधित PostgreSQL-संगत डेटाबेस।';

  @override
  String get gameHintWord054Configmap => 'गैर-गोपनीय कॉन्फ़िगरेशन के लिए Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord055Secret => 'संवेदनशील डेटा के लिए बना Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord056Persistent => 'ऐसा स्टोरेज जो वर्कलोड के रीस्टार्ट के बाद भी बना रहता है।';

  @override
  String get gameHintWord057Volume => 'कंटेनर में माउंट किया गया फ़ाइलसिस्टम स्टोरेज।';

  @override
  String get gameHintWord058Storage => 'फ़ाइलों, ऑब्जेक्ट या ब्लॉक के लिए स्थायी स्थान।';

  @override
  String get gameHintWord059Replica => 'स्केल या विश्वसनीयता के लिए रखी गई वर्कलोड इंस्टेंस की प्रति।';

  @override
  String get gameHintWord060Deployment => 'स्टेटलेस एप्लिकेशन पॉड्स के लिए Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord061Dockerfile => 'Docker इमेज बनाने के लिए उपयोग होने वाले निर्देश।';

  @override
  String get gameHintWord062Database => 'एप्लिकेशनों द्वारा क्वेरी किया जाने वाला व्यवस्थित भंडार।';

  @override
  String get gameHintWord063Automation => 'बिना मैन्युअल चरणों के दोहराए जाने वाले कार्य सॉफ़्टवेयर से करना।';

  @override
  String get gameHintWord064Anthos => 'विभिन्न परिवेशों में क्लस्टर प्रबंधित करने के लिए Google Cloud प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord065Bigquery => 'बड़े पैमाने के डेटा विश्लेषण के लिए Google Cloud सेवा।';

  @override
  String get gameHintWord066Bigtable => 'विश्लेषण के लिए Google Cloud का वाइड-कॉलम NoSQL डेटाबेस।';

  @override
  String get gameHintWord067Loadbalancer => 'आने वाले ट्रैफ़िक को कई बैकएंड में बाँटता है।';

  @override
  String get gameHintWord068Prometheus => 'टाइम-सीरीज़ मेट्रिक्स संग्रहीत करने वाला मॉनिटरिंग सिस्टम।';

  @override
  String get gameHintWord069Grafana => 'ऑब्ज़र्वेबिलिटी डेटा को क्वेरी और विज़ुअलाइज़ करने का प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud का प्रबंधित NoSQL JSON दस्तावेज़ डेटाबेस।';

  @override
  String get gameHintWord071Cloudtrail => 'ऑडिट के लिए API गतिविधि रिकॉर्ड करने वाली AWS सेवा।';

  @override
  String get gameHintWord072Statefulset => 'स्थिर पहचान चाहने वाले वर्कलोड के लिए Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord073Daemonset => 'चुने हुए नोड्स पर पॉड चलाने वाला Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord074Serviceaccount => 'वर्कलोड या प्रक्रिया द्वारा उपयोग की जाने वाली Kubernetes पहचान।';

  @override
  String get gameHintWord075Networkpolicy => 'पॉड नेटवर्क ट्रैफ़िक को नियंत्रित करने वाला Kubernetes संसाधन।';

  @override
  String get gameHintWord076Certificate => 'TLS में पहचान स्थापित करने वाला डिजिटल दस्तावेज़।';

  @override
  String get gameHintWord077Encryption => 'डेटा को ऐसे बदलता है कि केवल अधिकृत पक्ष ही उसे पढ़ सकें।';

  @override
  String get gameHintWord078Observability => 'सिस्टम के आउटपुट से उसके व्यवहार का अनुमान लगाने की क्षमता।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes क्लस्टरों के अंदर आम तौर पर उपयोग होने वाला DNS सर्वर।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API के ज़रिए क्लाउड संसाधन प्रबंधित करने वाली परियोजना।';

  @override
  String get gameHintWord081Failover => 'विफलता के बाद स्टैंडबाय घटक पर स्विच करना।';

  @override
  String get gameHintWord082Idempotency => 'ऐसा गुण जिसमें किसी ऑपरेशन को दोहराने का प्रभाव एक बार करने जैसा ही रहता है।';

  @override
  String get gameHintWord083Dataflow => 'स्ट्रीम और बैच डेटा प्रोसेसिंग के लिए Google Cloud सेवा।';

  @override
  String get gameHintWord084Orchestration => 'कई स्वचालित वर्कलोड का समन्वित प्रबंधन।';

  @override
  String get gameHintWord085Dataplex => 'एंटरप्राइज़ डेटा खोजने और उसे नियंत्रित करने के लिए Google Cloud सेवा।';

  @override
  String get gameHintWord086Serverless => 'निष्पादन मॉडल जिसमें इन्फ्रास्ट्रक्चर प्रबंधन छिपा रहता है।';

  @override
  String get gameHintWord087Distributed => 'ऐसा सिस्टम जिसके घटक कई नेटवर्क वाली मशीनों पर चलते हैं।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud का प्रबंधित Apache Spark और Hadoop परिवेश।';

  @override
  String get gameHintWord089Dynamodb => 'AWS का NoSQL डेटाबेस, जो अक्सर Terraform स्टेट लॉकिंग के लिए उपयोग होता है।';

  @override
  String get gameHintWord090Provisioning => 'इन्फ्रास्ट्रक्चर या संसाधनों को उपयोग के लिए तैयार करना।';

  @override
  String get gameHintWord091Elasticsearch => 'केंद्रीकृत लॉगिंग के लिए आम तौर पर उपयोग होने वाला सर्च इंजन।';

  @override
  String get gameHintWord092Etcd => 'की-वैल्यू स्टोर जो Kubernetes क्लस्टर की स्थिति रखता है।';

  @override
  String get gameHintWord093Authentication => 'यह सत्यापित करने की प्रक्रिया कि उपयोगकर्ता या सेवा कौन है।';

  @override
  String get gameHintWord094Authorization => 'यह तय करने की प्रक्रिया कि कोई पहचान क्या करने के लिए अनुमत है।';

  @override
  String get gameHintWord095Expressroute => 'डेटा सेंटरों से समर्पित निजी कनेक्टिविटी के लिए Azure सेवा।';

  @override
  String get gameHintWord096Configuration => 'सेटिंग्स जो तय करती हैं कि सॉफ़्टवेयर कैसे व्यवहार करेगा।';

  @override
  String get gameHintWord097Infrastructure => 'एप्लिकेशनों को सहारा देने वाले कंप्यूट, नेटवर्क और स्टोरेज संसाधन।';

  @override
  String get gameHintWord098Fastconnect => 'समर्पित निजी नेटवर्क कनेक्शनों के लिए Oracle Cloud सेवा।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes द्वारा उपयोग किया जाने वाला उद्योग-मानक कंटेनर रनटाइम।';

  @override
  String get gameHintWord100Kubernetes => 'कंटेनर ऑर्केस्ट्रेशन प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord101Http => 'वेब संसाधनों का अनुरोध करने वाला एप्लिकेशन प्रोटोकॉल।';

  @override
  String get gameHintWord102Https => 'वेब अनुरोध प्रोटोकॉल का एन्क्रिप्टेड संस्करण।';

  @override
  String get gameHintWord103Tcp => 'विश्वसनीय क्रमबद्ध डिलीवरी देने वाला ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord104Udp => 'डेटाग्राम के लिए उपयोग होने वाला कनेक्शन-रहित ट्रांसपोर्ट प्रोटोकॉल।';

  @override
  String get gameHintWord105Tls => 'नेटवर्क पर आदान-प्रदान होने वाले डेटा को सुरक्षित करने वाला प्रोटोकॉल।';

  @override
  String get gameHintWord106Ssl => 'आधुनिक ट्रांसपोर्ट सुरक्षा प्रोटोकॉल का पुराना पूर्ववर्ती।';

  @override
  String get gameHintWord107Ftp => 'फ़ाइलें स्थानांतरित करने का पारंपरिक प्रोटोकॉल।';

  @override
  String get gameHintWord108Sftp => 'सुरक्षित शेल कनेक्शन पर चलने वाला फ़ाइल ट्रांसफ़र प्रोटोकॉल।';

  @override
  String get gameHintWord109Smtp => 'सर्वरों के बीच ईमेल भेजने के लिए उपयोग होने वाला प्रोटोकॉल।';

  @override
  String get gameHintWord110Snmp => 'नेटवर्क उपकरणों को प्रबंधित और मॉनिटर करने वाला प्रोटोकॉल।';

  @override
  String get gameHintWord111Icmp => 'नेटवर्क त्रुटियाँ और ping संदेश ले जाने वाला प्रोटोकॉल।';

  @override
  String get gameHintWord112Arp => 'स्थानीय IPv4 पतों को हार्डवेयर पतों में बदलता है।';

  @override
  String get gameHintWord113Dhcp => 'नेटवर्क क्लाइंट को IP कॉन्फ़िगरेशन अपने-आप पट्टे पर देता है।';

  @override
  String get gameHintWord114Nat => 'गेटवे पार करते समय पैकेटों के नेटवर्क पते बदल देता है।';

  @override
  String get gameHintWord115Vpn => 'दूरस्थ नेटवर्कों या उपयोगकर्ताओं को जोड़ने वाली एन्क्रिप्टेड सुरंग।';

  @override
  String get gameHintWord116Vpc => 'पब्लिक क्लाउड में अलग-थलग वर्चुअल नेटवर्क।';

  @override
  String get gameHintWord117Vlan => 'स्विच्ड नेटवर्क का तार्किक विभाजन।';

  @override
  String get gameHintWord118Wan => 'विस्तृत भौगोलिक क्षेत्र में फैला नेटवर्क।';

  @override
  String get gameHintWord119Lan => 'स्थानीय क्षेत्र में उपकरणों को जोड़ने वाला नेटवर्क।';

  @override
  String get gameHintWord120Cdn => 'वितरित एज नेटवर्क जो डिलीवर की गई सामग्री को कैश करता है।';

  @override
  String get gameHintWord121Cidr => 'स्लैश लंबाई के साथ नेटवर्क प्रीफ़िक्स व्यक्त करने की संकेतन पद्धति।';

  @override
  String get gameHintWord122Host => 'नेटवर्क से जुड़ा कंप्यूटर या एंडपॉइंट।';

  @override
  String get gameHintWord123Hostname => 'नेटवर्क वाली मशीन को दिया गया मानव-पठनीय नाम।';

  @override
  String get gameHintWord124Domain => 'इंटरनेट नामकरण प्रणाली में नामित प्रशासनिक क्षेत्र।';

  @override
  String get gameHintWord125Zone => 'DNS नेमस्पेस का प्रशासनिक हिस्सा।';

  @override
  String get gameHintWord126Record => 'DNS डेटाबेस की एक अलग प्रविष्टि।';

  @override
  String get gameHintWord127Aaaa => 'DNS रिकॉर्ड प्रकार जो नाम को IPv6 पते में बदलता है।';

  @override
  String get gameHintWord128Ptr => 'रिवर्स पता लुकअप के लिए उपयोग होने वाला DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord129Txt => 'टेक्स्ट मान संग्रहीत करने वाला DNS रिकॉर्ड प्रकार।';

  @override
  String get gameHintWord130Cname => 'DNS रिकॉर्ड जो एक नाम को दूसरे का उपनाम बनाता है।';

  @override
  String get gameHintWord131Route => 'पैकेटों को गंतव्य की ओर भेजने वाली पथ प्रविष्टि।';

  @override
  String get gameHintWord132Routing => 'नेटवर्कों के बीच ट्रैफ़िक के लिए पथ चुनना।';

  @override
  String get gameHintWord133Packet => 'नेटवर्क पर भेजी जाने वाली डेटा की इकाई।';

  @override
  String get gameHintWord134Protocol => 'सिस्टमों के बीच संचार के लिए सहमत नियम।';

  @override
  String get gameHintWord135Ack => 'डेटा प्राप्ति की पुष्टि करने वाला TCP फ़्लैग।';

  @override
  String get gameHintWord136Bandwidth => 'संचार लिंक की क्षमता।';

  @override
  String get gameHintWord137Latency => 'अनुरोध या पैकेट को उत्तर मिलने से पहले की देरी।';

  @override
  String get gameHintWord138Throughput => 'प्रति इकाई समय में प्रोसेस हुआ उपयोगी कार्य या डेटा।';

  @override
  String get gameHintWord139Mtu => 'वह सबसे बड़ा पैकेट आकार जिसे लिंक बिना विखंडन के भेज सके।';

  @override
  String get gameHintWord140Alpn => 'एप्लिकेशन-लेयर प्रोटोकॉल पर सहमति बनाने वाला TLS एक्सटेंशन।';

  @override
  String get gameHintWord141Grep => 'टेक्स्ट पंक्तियों में मेल खाता पैटर्न खोजता है।';

  @override
  String get gameHintWord142Sed => 'स्ट्रीम एडिटर जो आम तौर पर टेक्स्ट प्रतिस्थापन के लिए उपयोग होता है।';

  @override
  String get gameHintWord143Lscpu => 'प्रोसेसर आर्किटेक्चर और कोर का विवरण दिखाने वाली Linux कमांड।';

  @override
  String get gameHintWord144Find => 'फ़ाइल शर्तों से डायरेक्टरी ट्री में खोज करता है।';

  @override
  String get gameHintWord145Lsblk => 'ब्लॉक उपकरणों और उनके संबंधों को सूचीबद्ध करने वाली Linux कमांड।';

  @override
  String get gameHintWord146Sort => 'टेक्स्ट की पंक्तियों को क्रमबद्ध करता है।';

  @override
  String get gameHintWord147Uniq => 'आसन्न दोहराई गई पंक्तियों को छाँटता है।';

  @override
  String get gameHintWord148Head => 'फ़ाइल की शुरुआत प्रिंट करता है।';

  @override
  String get gameHintWord149Tail => 'फ़ाइल का अंत प्रिंट करता है और जुड़ते लॉग का अनुसरण कर सकता है।';

  @override
  String get gameHintWord150Cat => 'फ़ाइलों को जोड़कर उनकी सामग्री प्रिंट करता है।';

  @override
  String get gameHintWord151Cut => 'पंक्तियों से चुने हुए फ़ील्ड या कैरेक्टर कॉलम निकालता है।';

  @override
  String get gameHintWord152Tee => 'मानक इनपुट को फ़ाइलों और मानक आउटपुट में कॉपी करता है।';

  @override
  String get gameHintWord153Echo => 'अपने आर्ग्युमेंट को मानक आउटपुट पर लिखता है।';

  @override
  String get gameHintWord154Printf => 'शेल या प्रोग्राम से फ़ॉर्मैट किया हुआ टेक्स्ट प्रिंट करता है।';

  @override
  String get gameHintWord155Touch => 'फ़ाइल का टाइमस्टैम्प अपडेट करता है या खाली फ़ाइल बनाता है।';

  @override
  String get gameHintWord156Mkdir => 'डायरेक्टरी बनाता है।';

  @override
  String get gameHintWord157Rmdir => 'खाली डायरेक्टरी हटाता है।';

  @override
  String get gameHintWord158Chmod => 'यूनिक्स फ़ाइल अनुमति बिट बदलता है।';

  @override
  String get gameHintWord159Chown => 'फ़ाइल का स्वामित्व बदलता है।';

  @override
  String get gameHintWord160Chgrp => 'फ़ाइल का समूह स्वामित्व बदलता है।';

  @override
  String get gameHintWord161Pwd => 'वर्तमान कार्यशील डायरेक्टरी प्रिंट करता है।';

  @override
  String get gameHintWord162Apt => 'Debian-आधारित सिस्टमों द्वारा उपयोग किया जाने वाला पैकेज प्रबंधन टूल।';

  @override
  String get gameHintWord163Top => 'प्रक्रियाओं और सिस्टम संसाधन उपयोग का इंटरैक्टिव प्रदर्शन।';

  @override
  String get gameHintWord164Agent => 'होस्ट पर कार्य निष्पादित करने या रिपोर्ट करने वाला सॉफ़्टवेयर घटक।';

  @override
  String get gameHintWord165Kill => 'पहचानकर्ता द्वारा किसी प्रक्रिया को सिग्नल भेजता है।';

  @override
  String get gameHintWord166Signal => 'ऑपरेटिंग सिस्टम द्वारा प्रक्रिया को भेजी गई सूचना।';

  @override
  String get gameHintWord167Sigkill => 'यूनिक्स सिग्नल जो प्रक्रिया को तुरंत समाप्त कर देता है।';

  @override
  String get gameHintWord168Nice => 'समायोजित शेड्यूलिंग प्राथमिकता के साथ प्रक्रिया शुरू करता है।';

  @override
  String get gameHintWord169Renice => 'चल रही प्रक्रिया की शेड्यूलिंग प्राथमिकता बदलता है।';

  @override
  String get gameHintWord170Jobs => 'वर्तमान शेल द्वारा प्रबंधित जॉब्स सूचीबद्ध करता है।';

  @override
  String get gameHintWord171Nohup => 'हैंगअप सिग्नल को अनदेखा करते हुए कमांड चलाता है।';

  @override
  String get gameHintWord172Screen => 'टर्मिनल मल्टीप्लेक्सर जो अलग किए जा सकने वाले सेशन का समर्थन करता है।';

  @override
  String get gameHintWord173Uptime => 'बताता है कि सिस्टम कितनी देर से चल रहा है।';

  @override
  String get gameHintWord174Uname => 'सिस्टम और कर्नेल की जानकारी प्रिंट करता है।';

  @override
  String get gameHintWord175Whoami => 'वर्तमान प्रभावी उपयोगकर्ता का नाम प्रिंट करता है।';

  @override
  String get gameHintWord176Umask => 'फ़ाइलें बनाते समय उपयोग होने वाला अनुमति मास्क सेट करता है।';

  @override
  String get gameHintWord177Usermod => 'मौजूदा उपयोगकर्ता खाते को बदलने वाली Linux कमांड।';

  @override
  String get gameHintWord178Crontab => 'निर्धारित आवर्ती शेल जॉब्स को संपादित या सूचीबद्ध करता है।';

  @override
  String get gameHintWord179Findmnt => 'माउंट किए गए फ़ाइलसिस्टम की जानकारी दिखाने वाली Linux कमांड।';

  @override
  String get gameHintWord180Mount => 'फ़ाइलसिस्टम को डायरेक्टरी ट्री से जोड़ता है।';

  @override
  String get gameHintWord181Sigterm => 'प्रक्रिया को शालीनता से समाप्त करने का अनुरोध करने वाला यूनिक्स सिग्नल।';

  @override
  String get gameHintWord182Fstab => 'माउंट किए जाने वाले फ़ाइलसिस्टम का वर्णन करने वाली सिस्टम तालिका।';

  @override
  String get gameHintWord183Swap => 'भौतिक मेमोरी की पूर्ति के लिए उपयोग होने वाला डिस्क-आधारित स्थान।';

  @override
  String get gameHintWord184Tmpfs => 'वर्चुअल मेमोरी पर आधारित अस्थायी फ़ाइलसिस्टम।';

  @override
  String get gameHintWord185Proc => 'प्रक्रिया और कर्नेल की जानकारी दिखाने वाला Linux वर्चुअल फ़ाइलसिस्टम।';

  @override
  String get gameHintWord186Syslog => 'मानक लॉगिंग प्रोटोकॉल और संदेश प्रारूप।';

  @override
  String get gameHintWord187Dmesg => 'कर्नेल रिंग बफ़र के संदेश दिखाता है।';

  @override
  String get gameHintWord188Free => 'उपयोग की गई और उपलब्ध सिस्टम मेमोरी बताता है।';

  @override
  String get gameHintWord189Stat => 'फ़ाइल का विस्तृत मेटाडेटा दिखाता है।';

  @override
  String get gameHintWord190Lsof => 'खुली फ़ाइलें और उन्हें थामने वाली प्रक्रियाएँ सूचीबद्ध करता है।';

  @override
  String get gameHintWord191Netstat => 'नेटवर्क कनेक्शन और रूटिंग की जानकारी दिखाता है।';

  @override
  String get gameHintWord192Checksum => 'डेटा में बदलाव या भ्रष्टाचार पहचानने के लिए गणना किया गया मान।';

  @override
  String get gameHintWord193Ping => 'इको अनुरोधों से नेटवर्क की पहुँच जाँचता है।';

  @override
  String get gameHintWord194Traceroute => 'नेटवर्क गंतव्य तक के बीच के हॉप दिखाता है।';

  @override
  String get gameHintWord195Resolver => 'DNS घटक जो नाम क्वेरी के उत्तर खोजता है।';

  @override
  String get gameHintWord196Nslookup => 'DNS नाम और पते खोजता है।';

  @override
  String get gameHintWord197Telnet => 'पुराना अन-एन्क्रिप्टेड रिमोट टर्मिनल प्रोटोकॉल।';

  @override
  String get gameHintWord198Tftp => 'सरल UDP-आधारित फ़ाइल ट्रांसफ़र प्रोटोकॉल।';

  @override
  String get gameHintWord199Daemon => 'यूनिक्स जैसे सिस्टमों पर बैकग्राउंड सेवा प्रक्रिया।';

  @override
  String get gameHintWord200Kernel => 'ऑपरेटिंग सिस्टम संसाधनों का प्रबंधन करने वाला मूल घटक।';

  @override
  String get gameHintWord201Commit => 'वर्ज़न कंट्रोल में बदलावों का दर्ज किया गया स्नैपशॉट।';

  @override
  String get gameHintWord202Branch => 'विकास की एक धारा दर्शाने वाला स्थानांतरित किया जा सकने वाला संदर्भ।';

  @override
  String get gameHintWord203Merge => 'अलग-अलग विकास धाराओं के इतिहास को जोड़ता है।';

  @override
  String get gameHintWord204Rebase => 'कमिट्स को किसी दूसरे बेस कमिट के ऊपर दोबारा चलाता है।';

  @override
  String get gameHintWord205Clone => 'रिमोट रिपॉजिटरी की स्थानीय प्रति बनाता है।';

  @override
  String get gameHintWord206Fetch => 'मर्ज किए बिना रिमोट ऑब्जेक्ट और संदर्भ डाउनलोड करता है।';

  @override
  String get gameHintWord207Pull => 'बदलाव लाकर उन्हें वर्तमान ब्रांच में जोड़ता है।';

  @override
  String get gameHintWord208Push => 'स्थानीय कमिट्स को रिमोट रिपॉजिटरी में भेजता है।';

  @override
  String get gameHintWord209Stash => 'अकमिट किए गए वर्किंग-ट्री बदलावों को अस्थायी रूप से सहेजता है।';

  @override
  String get gameHintWord210Revert => 'ऐसा कमिट बनाता है जो किसी दूसरे कमिट को पलट देता है।';

  @override
  String get gameHintWord211Reset => 'Git संदर्भ को खिसकाता है और इंडेक्स या वर्किंग फ़ाइलें रीसेट कर सकता है।';

  @override
  String get gameHintWord212Reflog => 'Git संदर्भों के अपडेट का स्थानीय इतिहास।';

  @override
  String get gameHintWord213Diff => 'संस्करणों या फ़ाइलों के बीच अंतर दिखाता है।';

  @override
  String get gameHintWord214Status => 'स्टेज्ड, संशोधित और अनट्रैक्ड फ़ाइलें बताता है।';

  @override
  String get gameHintWord215Checkout => 'रिविज़न बदलने या फ़ाइलें बहाल करने की Git कमांड।';

  @override
  String get gameHintWord216Tag => 'नामित संदर्भ जो आम तौर पर रिलीज़ को चिह्नित करता है।';

  @override
  String get gameHintWord217Remote => 'किसी अन्य रिपॉजिटरी से नामित कनेक्शन।';

  @override
  String get gameHintWord218Origin => 'क्लोन की गई रिपॉजिटरी के रिमोट को दिया जाने वाला डिफ़ॉल्ट नाम।';

  @override
  String get gameHintWord219Upstream => 'स्थानीय ब्रांच से जुड़ी रिमोट ट्रैकिंग ब्रांच।';

  @override
  String get gameHintWord220Worktree => 'रिपॉजिटरी से जुड़ी चेक-आउट की हुई कार्यशील डायरेक्टरी।';

  @override
  String get gameHintWord221Registry => 'कंटेनर इमेज को संग्रहीत और वितरित करने वाली सेवा।';

  @override
  String get gameHintWord222Digest => 'कंटेनर इमेज के लिए सामग्री-आधारित पहचानकर्ता।';

  @override
  String get gameHintWord223Layer => 'कंटेनर इमेज का हिस्सा बनने वाले फ़ाइलसिस्टम बदलाव।';

  @override
  String get gameHintWord224Entrypoint => 'मुख्य कंटेनर एक्ज़ीक्यूटेबल तय करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord225Cmd => 'डिफ़ॉल्ट कमांड या आर्ग्युमेंट बताने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord226Workdir => 'कार्यशील डायरेक्टरी सेट करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord227Copy => 'बिल्ड-संदर्भ की फ़ाइलें इमेज में कॉपी करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord228Add => 'स्थानीय आर्काइव भी खोल सकने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord229Run => 'बिल्ड के समय कमांड चलाने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord230Env => 'एनवायरनमेंट वेरिएबल परिभाषित करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord231Arg => 'बिल्ड-टाइम वेरिएबल घोषित करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord232Expose => 'कंटेनर पोर्ट का दस्तावेज़ीकरण करने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord233User => 'आगे की कमांड के लिए खाता चुनने वाला Dockerfile निर्देश।';

  @override
  String get gameHintWord234Healthcheck => 'कंटेनर की सेहत जाँचने का तरीका बताने वाला निर्देश।';

  @override
  String get gameHintWord235Shebang => 'स्क्रिप्ट की पहली पंक्ति जो चलाने वाले इंटरप्रेटर को बताती है।';

  @override
  String get gameHintWord236Compose => 'बहु-कंटेनर एप्लिकेशन परिभाषित करने और चलाने का Docker टूल।';

  @override
  String get gameHintWord237Bridge => 'स्थानीय कंटेनर नेटवर्किंग के लिए सामान्य Docker नेटवर्क ड्राइवर।';

  @override
  String get gameHintWord238Overlay => 'कई होस्टों के कंटेनरों में फैला नेटवर्क।';

  @override
  String get gameHintWord239None => 'कंटेनर नेटवर्किंग बंद करने वाला Docker नेटवर्क ड्राइवर।';

  @override
  String get gameHintWord240Prune => 'अनुपयोगी कंटेनर संसाधन हटाता है।';

  @override
  String get gameHintWord241Replicaset => 'वांछित पॉड संख्या बनाए रखने वाला Kubernetes कंट्रोलर।';

  @override
  String get gameHintWord242Service => 'पॉड्स तक स्थिर पहुँच देने वाला Kubernetes एब्स्ट्रैक्शन।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes सर्विस के पीछे के पते।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes संसाधनों को समूहित करने वाला तार्किक दायरा।';

  @override
  String get gameHintWord245Node => 'Kubernetes पॉड्स को होस्ट करने वाली वर्कर मशीन।';

  @override
  String get gameHintWord246Kubelet => 'हर नोड पर मौजूद एजेंट जो पॉड के निष्पादन को प्रबंधित करता है।';

  @override
  String get gameHintWord247Pvc => 'स्थायी स्टोरेज के लिए Kubernetes अनुरोध।';

  @override
  String get gameHintWord248Apiserver => 'क्लस्टर API उपलब्ध कराने वाला Kubernetes कंट्रोल-प्लेन घटक।';

  @override
  String get gameHintWord249Role => 'रोल-आधारित एक्सेस कंट्रोल में अनुमतियों का नामित समूह।';

  @override
  String get gameHintWord250Resourcequota => 'नेमस्पेस में संसाधन खपत सीमित करने वाला Kubernetes ऑब्जेक्ट।';

  @override
  String get gameHintWord251Selector => 'लेबल के आधार पर संसाधनों का मिलान करने वाला एक्सप्रेशन।';

  @override
  String get gameHintWord252Taint => 'नोड का गुण जो मेल खाती टॉलरेशन रहित पॉड्स को दूर रखता है।';

  @override
  String get gameHintWord253Toleration => 'पॉड की सेटिंग जो टेंटेड नोड पर शेड्यूल होने देती है।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes नोड को शेड्यूल न होने योग्य चिह्नित करता है।';

  @override
  String get gameHintWord255Uncordon => 'कॉर्डन किए गए नोड को फिर से शेड्यूल योग्य बनाता है।';

  @override
  String get gameHintWord256Drain => 'नोड रखरखाव से पहले वर्कलोड को सुरक्षित रूप से हटाता है।';

  @override
  String get gameHintWord257Job => 'कार्य को पूरा होने तक चलाने वाला Kubernetes वर्कलोड।';

  @override
  String get gameHintWord258Cronjob => 'समय-सारणी पर जॉब बनाने वाला Kubernetes वर्कलोड।';

  @override
  String get gameHintWord259Readiness => 'प्रोब जो बताता है कि कंटेनर ट्रैफ़िक ले सकता है या नहीं।';

  @override
  String get gameHintWord260Liveness => 'प्रोब जो बताता है कि कंटेनर को रीस्टार्ट करना है या नहीं।';

  @override
  String get gameHintWord261Canary => 'रिलीज़ तरीका जिसमें नया संस्करण ट्रैफ़िक के छोटे हिस्से को दिखाया जाता है।';

  @override
  String get gameHintWord262Rolling => 'अपडेट रणनीति जो चल रही इंस्टेंस को धीरे-धीरे बदलती है।';

  @override
  String get gameHintWord263Rollback => 'पहले के काम करने वाले एप्लिकेशन संस्करण को बहाल करता है।';

  @override
  String get gameHintWord264Rollout => 'नए एप्लिकेशन संस्करण का क्रमिक डिप्लॉयमेंट।';

  @override
  String get gameHintWord265Recreate => 'डिप्लॉयमेंट रणनीति जो नए पॉड शुरू करने से पहले पुराने रोकती है।';

  @override
  String get gameHintWord266Blue => 'ब्लू-ग्रीन रिलीज़ के दो परिवेशों में से एक।';

  @override
  String get gameHintWord267Green => 'ब्लू-ग्रीन रिलीज़ का दूसरा परिवेश।';

  @override
  String get gameHintWord268Artifact => 'बिल्ड पाइपलाइन द्वारा बनाया गया संस्करणित आउटपुट।';

  @override
  String get gameHintWord269Staging => 'रिलीज़ सत्यापन के लिए उपयोग होने वाला प्री-प्रोडक्शन परिवेश।';

  @override
  String get gameHintWord270Production => 'वास्तविक अंतिम उपयोगकर्ताओं को सेवा देने वाला परिवेश।';

  @override
  String get gameHintWord271Release => 'उपयोग के लिए उपलब्ध कराया गया सॉफ़्टवेयर संस्करण।';

  @override
  String get gameHintWord272Version => 'सॉफ़्टवेयर रिविज़न को अलग पहचानने वाला पहचानकर्ता।';

  @override
  String get gameHintWord273Revision => 'दस्तावेज़ या कोडबेस का पहचाना जा सकने वाला संस्करण।';

  @override
  String get gameHintWord274Webhook => 'घटना होने पर भेजी जाने वाली HTTP सूचना।';

  @override
  String get gameHintWord275Runbook => 'सिस्टम चलाने या पुनर्प्राप्त करने की प्रलेखित प्रक्रिया।';

  @override
  String get gameHintWord276Workspace => 'कार्यरत प्रोजेक्ट संसाधनों वाली डायरेक्टरी या दायरा।';

  @override
  String get gameHintWord277Credentials => 'सिस्टम तक पहुँचने के लिए उपयोग होने वाली प्रमाणीकरण सामग्री।';

  @override
  String get gameHintWord278Trigger => 'घटना या शर्त जो पाइपलाइन शुरू करती है।';

  @override
  String get gameHintWord279Parameter => 'जॉब या फ़ंक्शन को दिया जाने वाला नामित इनपुट।';

  @override
  String get gameHintWord280Access => 'प्राधिकरण के अधीन किसी संसाधन का उपयोग करने की क्षमता।';

  @override
  String get gameHintWord281Module => 'इन्फ्रास्ट्रक्चर परिभाषाओं का पुनः उपयोग योग्य समूह।';

  @override
  String get gameHintWord282Provider => 'कॉन्फ़िगरेशन को बाहरी API से जोड़ने वाला Terraform प्लगइन।';

  @override
  String get gameHintWord283Resource => 'कॉन्फ़िगरेशन में घोषित प्रबंधित इन्फ्रास्ट्रक्चर ऑब्जेक्ट।';

  @override
  String get gameHintWord284Variable => 'कॉन्फ़िगरेशन या कोड द्वारा उपयोग किया जाने वाला नामित इनपुट मान।';

  @override
  String get gameHintWord285Output => 'इन्फ्रास्ट्रक्चर कॉन्फ़िगरेशन द्वारा लौटाया गया उपलब्ध मान।';

  @override
  String get gameHintWord286Tfstate => 'Terraform स्टेट स्नैपशॉट से जुड़ा फ़ाइल प्रत्यय।';

  @override
  String get gameHintWord287Tfvars => 'Terraform इनपुट वेरिएबल मानों के लिए उपयोग होने वाला फ़ाइल प्रत्यय।';

  @override
  String get gameHintWord288Backend => 'स्टेट स्टोरेज को नियंत्रित करने वाला Terraform कॉन्फ़िगरेशन।';

  @override
  String get gameHintWord289Plan => 'प्रस्तावित इन्फ्रास्ट्रक्चर बदलावों का Terraform पूर्वावलोकन।';

  @override
  String get gameHintWord290Apply => 'प्रस्तावित बदलावों को निष्पादित करने वाला Terraform ऑपरेशन।';

  @override
  String get gameHintWord291Destroy => 'प्रबंधित इन्फ्रास्ट्रक्चर हटाने वाला Terraform ऑपरेशन।';

  @override
  String get gameHintWord292Import => 'मौजूदा संसाधन को इन्फ्रास्ट्रक्चर प्रबंधन के अंतर्गत लाता है।';

  @override
  String get gameHintWord293Refresh => 'दर्ज स्टेट को वास्तविक इन्फ्रास्ट्रक्चर के साथ सिंक करता है।';

  @override
  String get gameHintWord294Validate => 'कॉन्फ़िगरेशन के सिंटैक्स और आंतरिक संगति की जाँच करता है।';

  @override
  String get gameHintWord295Fmt => 'मानक कॉन्फ़िगरेशन फ़ॉर्मैटिंग लागू करने वाली Terraform कमांड।';

  @override
  String get gameHintWord296Init => 'Terraform प्रोवाइडर और कार्यशील डायरेक्टरी को इनिशियलाइज़ करता है।';

  @override
  String get gameHintWord297Executor => 'Jenkins का वर्कर स्लॉट जो बिल्ड चला सकता है।';

  @override
  String get gameHintWord298Dependencies => 'ऐसे संबंध जिनमें एक घटक के लिए दूसरा पहले चाहिए।';

  @override
  String get gameHintWord299Drift => 'घोषित और वास्तविक इन्फ्रास्ट्रक्चर स्थिति के बीच अंतर।';

  @override
  String get gameHintWord300Locking => 'समवर्ती लेखकों को साझा स्टेट बदलने से रोकता है।';

  @override
  String get gameHintWord301Playbook => 'ऑटोमेशन प्ले और टास्क का वर्णन करने वाला Ansible दस्तावेज़।';

  @override
  String get gameHintWord302Inventory => 'प्रबंधित होस्ट और समूहों का Ansible संग्रह।';

  @override
  String get gameHintWord303Facts => 'प्रबंधित होस्टों के बारे में एकत्र की गई सिस्टम जानकारी।';

  @override
  String get gameHintWord304Task => 'ऑटोमेशन में कार्य की एक अलग इकाई।';

  @override
  String get gameHintWord305Handler => 'बदलाव की सूचना मिलने पर चलने वाला Ansible टास्क।';

  @override
  String get gameHintWord306Notify => 'बदले हुए टास्क के बाद हैंडलर को कतार में लगाने वाला Ansible निर्देश।';

  @override
  String get gameHintWord307Become => 'विशेषाधिकार वृद्धि सक्षम करने वाली Ansible सेटिंग।';

  @override
  String get gameHintWord308Vault => 'संवेदनशील ऑटोमेशन डेटा को एन्क्रिप्ट करने की Ansible सुविधा।';

  @override
  String get gameHintWord309Register => 'टास्क का परिणाम वेरिएबल में सहेजने वाला Ansible निर्देश।';

  @override
  String get gameHintWord310When => 'टास्क के सशर्त निष्पादन को नियंत्रित करने वाला Ansible कीवर्ड।';

  @override
  String get gameHintWord311Loop => 'संग्रह पर ऑटोमेशन टास्क को दोहराता है।';

  @override
  String get gameHintWord312Include => 'पुनः उपयोग योग्य ऑटोमेशन सामग्री को डायनामिक रूप से लोड करता है।';

  @override
  String get gameHintWord313Tags => 'ऑटोमेशन टास्क के उपसमूह चुनने के लिए उपयोग होने वाले लेबल।';

  @override
  String get gameHintWord314Template => 'डिप्लॉयमेंट से पहले वेरिएबल के साथ रेंडर की जाने वाली फ़ाइल।';

  @override
  String get gameHintWord315Jinja => 'Ansible द्वारा उपयोग की जाने वाली टेम्पलेट भाषा।';

  @override
  String get gameHintWord316Abstraction => 'कार्यान्वयन विवरण को सरल इंटरफ़ेस के पीछे छिपाना।';

  @override
  String get gameHintWord317Agile => 'फ़ीडबैक पर ज़ोर देने वाला पुनरावृत्त सॉफ़्टवेयर डिलीवरी तरीका।';

  @override
  String get gameHintWord318Puppet => 'घोषणात्मक मैनिफ़ेस्ट का उपयोग करने वाला कॉन्फ़िगरेशन प्रबंधन टूल।';

  @override
  String get gameHintWord319Airflow => 'वर्कफ़्लो DAG को शेड्यूल और ऑर्केस्ट्रेट करने का प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord320Argo => 'क्लाउड-नेटिव परियोजना परिवार जिसमें GitOps डिलीवरी कंट्रोलर शामिल है।';

  @override
  String get gameHintWord321Rds => 'AWS की प्रबंधित रिलेशनल डेटाबेस सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord322Sqs => 'AWS की प्रबंधित संदेश कतार का संक्षिप्त रूप।';

  @override
  String get gameHintWord323Sns => 'AWS की पब्लिश-सब्सक्राइब सूचना सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord324Ses => 'AWS की ईमेल भेजने वाली सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord325Iam => 'क्लाउड पहचान और एक्सेस प्रबंधन का संक्षिप्त रूप।';

  @override
  String get gameHintWord326Kms => 'AWS की एन्क्रिप्शन कुंजी प्रबंधन सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord327Waf => 'एप्लिकेशन-लेयर वेब अनुरोधों को फ़िल्टर करने वाला फ़ायरवॉल।';

  @override
  String get gameHintWord328Eks => 'AWS की प्रबंधित Kubernetes सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord329Ecs => 'AWS की प्रबंधित कंटेनर ऑर्केस्ट्रेशन सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord330Ecr => 'AWS कंटेनर इमेज रजिस्ट्री का संक्षिप्त रूप।';

  @override
  String get gameHintWord331Aurora => 'MySQL और PostgreSQL के संगत AWS रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord332Redshift => 'AWS का विश्लेषण डेटा वेयरहाउस।';

  @override
  String get gameHintWord333Neptune => 'AWS का प्रबंधित ग्राफ़ डेटाबेस।';

  @override
  String get gameHintWord334Elasticache => 'AWS की प्रबंधित इन-मेमोरी कैशिंग सेवा।';

  @override
  String get gameHintWord335Athena => 'SQL से ऑब्जेक्ट-स्टोरेज डेटा क्वेरी करने वाली AWS सेवा।';

  @override
  String get gameHintWord336Glue => 'AWS की सर्वरलेस डेटा इंटीग्रेशन और ETL सेवा।';

  @override
  String get gameHintWord337Emr => 'प्रबंधित बिग-डेटा प्रोसेसिंग क्लस्टरों के लिए AWS प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord338Lambda => 'सर्वर प्रबंधित किए बिना फ़ंक्शन चलाने वाली AWS सेवा।';

  @override
  String get gameHintWord339Cloudfront => 'AWS का वैश्विक कंटेंट डिलीवरी नेटवर्क।';

  @override
  String get gameHintWord340Cloudwatch => 'मेट्रिक्स, लॉग और अलार्म एकत्र करने वाली AWS सेवा।';

  @override
  String get gameHintWord341Cloudshell => 'AWS का ब्राउज़र-आधारित शेल परिवेश।';

  @override
  String get gameHintWord342Codecommit => 'AWS की प्रबंधित Git रिपॉजिटरी सेवा।';

  @override
  String get gameHintWord343Codebuild => 'सोर्स कंपाइल करने और बिल्ड टेस्ट चलाने वाली AWS सेवा।';

  @override
  String get gameHintWord344Codedeploy => 'AWS की स्वचालित एप्लिकेशन डिप्लॉयमेंट सेवा।';

  @override
  String get gameHintWord345Codepipeline => 'AWS की निरंतर डिलीवरी पाइपलाइन सेवा।';

  @override
  String get gameHintWord346Guardduty => 'AWS की बुद्धिमान खतरा पहचान सेवा।';

  @override
  String get gameHintWord347Inspector => 'वर्कलोड में कमज़ोरियों का आकलन करने वाली AWS सेवा।';

  @override
  String get gameHintWord348Macie => 'ऑब्जेक्ट स्टोरेज में संवेदनशील डेटा खोजने वाली AWS सेवा।';

  @override
  String get gameHintWord349Shield => 'AWS की प्रबंधित DDoS सुरक्षा सेवा।';

  @override
  String get gameHintWord350Snowball => 'बड़े डेटा ट्रांसफ़र के लिए AWS का भौतिक उपकरण।';

  @override
  String get gameHintWord351Snowcone => 'AWS ऑफ़लाइन ट्रांसफ़र परिवार का छोटा मज़बूत उपकरण।';

  @override
  String get gameHintWord352Datasync => 'AWS की स्वचालित ऑनलाइन डेटा ट्रांसफ़र सेवा।';

  @override
  String get gameHintWord353Msk => 'AWS की प्रबंधित Apache Kafka सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord354Backup => 'पुनर्प्राप्ति के लिए रखी गई डेटा की प्रति।';

  @override
  String get gameHintWord355Transcribe => 'वाणी को टेक्स्ट में बदलने वाली AWS सेवा।';

  @override
  String get gameHintWord356Translate => 'भाषाओं के बीच टेक्स्ट अनुवाद करने वाली AWS सेवा।';

  @override
  String get gameHintWord357Rekognition => 'छवियों और वीडियो का विश्लेषण करने वाली AWS सेवा।';

  @override
  String get gameHintWord358Comprehend => 'AWS की प्राकृतिक-भाषा विश्लेषण सेवा।';

  @override
  String get gameHintWord359Textract => 'दस्तावेज़ों से टेक्स्ट और तालिकाएँ निकालने वाली AWS सेवा।';

  @override
  String get gameHintWord360Sagemaker => 'मशीन लर्निंग मॉडल बनाने और डिप्लॉय करने का AWS प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud का वैश्विक रूप से वितरित रिलेशनल डेटाबेस।';

  @override
  String get gameHintWord362Pub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्न का प्रकाशन वाला भाग।';

  @override
  String get gameHintWord363Sub => 'पब्लिश-सब्सक्राइब मैसेजिंग पैटर्न का सब्सक्राइबर वाला भाग।';

  @override
  String get gameHintWord364Functions => 'सर्वरलेस प्लेटफ़ॉर्म द्वारा दी जाने वाली घटना-संचालित कोड इकाइयाँ।';

  @override
  String get gameHintWord365App => 'सॉफ़्टवेयर एप्लिकेशन का संक्षिप्त रूप।';

  @override
  String get gameHintWord366Engine => 'Compute Engine जैसे नामों में निष्पादन घटक।';

  @override
  String get gameHintWord367Compute => 'वर्चुअल मशीनों या कंटेनरों द्वारा दी जाने वाली प्रोसेसिंग क्षमता।';

  @override
  String get gameHintWord368Network => 'डेटा का आदान-प्रदान करने वाले जुड़े हुए सिस्टम।';

  @override
  String get gameHintWord369Security => 'सिस्टम और जानकारी को खतरों से बचाना।';

  @override
  String get gameHintWord370Identity => 'पहुँच संबंधी निर्णयों के लिए उपयोगकर्ता या सेवा का प्रतिनिधित्व।';

  @override
  String get gameHintWord371Monitoring => 'सिस्टम की सेहत और व्यवहार का सतत अवलोकन।';

  @override
  String get gameHintWord372Logging => 'अलग-अलग एप्लिकेशन और सिस्टम घटनाओं को दर्ज करना।';

  @override
  String get gameHintWord373Trace => 'सेवा कॉलों में अनुरोध के मार्ग का रिकॉर्ड।';

  @override
  String get gameHintWord374Metrics => 'समय के साथ सिस्टम व्यवहार के संख्यात्मक माप।';

  @override
  String get gameHintWord375Alert => 'सूचना कि निगरानी की गई स्थिति पर ध्यान देने की ज़रूरत है।';

  @override
  String get gameHintWord376Billing => 'उपयोग की गई क्लाउड सेवाओं का ट्रैक रखना और शुल्क लेना।';

  @override
  String get gameHintWord377Quota => 'किसी संसाधन की उपयोग की जा सकने वाली मात्रा की सीमा।';

  @override
  String get gameHintWord378Region => 'उपलब्धता क्षेत्रों वाला भौगोलिक क्लाउड डिप्लॉयमेंट क्षेत्र।';

  @override
  String get gameHintWord379Tenancy => 'व्यवस्था जो बताती है कि ग्राहक इन्फ्रास्ट्रक्चर कैसे साझा करते हैं।';

  @override
  String get gameHintWord380Regional => 'क्लाउड रीजन तक सीमित संसाधन का वर्णन करता है।';

  @override
  String get gameHintWord381Cosmos => 'Azure के वैश्विक रूप से वितरित बहु-मॉडल डेटाबेस का नाम।';

  @override
  String get gameHintWord382Synapse => 'वेयरहाउसिंग और डेटा प्रोसेसिंग को जोड़ने वाला Azure विश्लेषण प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft का क्लाउड-नेटिव सुरक्षा सूचना और घटना प्लेटफ़ॉर्म।';

  @override
  String get gameHintWord384Defender => 'क्लाउड वर्कलोड की रक्षा करने वाला Microsoft सुरक्षा उत्पाद परिवार।';

  @override
  String get gameHintWord385Entra => 'Azure AD ब्रांडिंग की जगह लेने वाला Microsoft पहचान उत्पाद परिवार।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager का संक्षिप्त रूप।';

  @override
  String get gameHintWord387Arc => 'Azure के बाहर के संसाधनों तक प्रबंधन बढ़ाने वाली Azure सेवा।';

  @override
  String get gameHintWord388Aks => 'Azure की प्रबंधित Kubernetes सेवा का संक्षिप्त रूप।';

  @override
  String get gameHintWord389Armor => 'Google Cloud की वेब सुरक्षा सेवा के नाम का अंतिम भाग।';

  @override
  String get gameHintWord390Blob => 'Azure का ऑब्जेक्ट-स्टोरेज डेटा प्रकार।';

  @override
  String get gameHintWord391Files => 'प्रबंधित नेटवर्क फ़ाइल शेयर देने वाली Azure सेवा।';

  @override
  String get gameHintWord392Disk => 'वर्चुअल मशीन से जुड़ा ब्लॉक-स्टोरेज उपकरण।';

  @override
  String get gameHintWord393Function => 'कोड का कॉल किया जा सकने वाला ब्लॉक जो परिणाम लौटा सकता है।';

  @override
  String get gameHintWord394Logic => 'वर्कफ़्लो इंटीग्रेशन के लिए Azure ऐप सर्विस श्रेणी।';

  @override
  String get gameHintWord395Insights => 'Azure एप्लिकेशन टेलीमेट्री उत्पाद के नाम का अंतिम भाग।';

  @override
  String get gameHintWord396Traffic => 'नेटवर्क एंडपॉइंटों के बीच बहता डेटा।';

  @override
  String get gameHintWord397Manager => 'Azure Resource उत्पाद के कंट्रोल प्लेन का नाम-प्रत्यय।';

  @override
  String get gameHintWord398Bastion => 'निजी होस्ट तक पहुँच के लिए प्रबंधित या सुदृढ़ प्रवेश बिंदु।';

  @override
  String get gameHintWord399Front => 'Azure की वैश्विक प्रवेश-बिंदु सेवा Front Door का पहला शब्द।';

  @override
  String get gameHintWord400Door => 'Azure की वैश्विक प्रवेश-बिंदु सेवा Front Door का दूसरा शब्द।';

  @override
  String get gameHintWord401Javascript => 'ब्राउज़रों और Node रनटाइम में व्यापक रूप से उपयोग होने वाली प्रोग्रामिंग भाषा।';

  @override
  String get gameHintWord402Perl => 'टेक्स्ट प्रोसेसिंग और रेगुलर एक्सप्रेशन के लिए जानी जाने वाली स्क्रिप्टिंग भाषा।';

  @override
  String get gameHintWord403Powershell => 'Microsoft का ऑब्जेक्ट-ओरिएंटेड शेल और ऑटोमेशन भाषा।';

  @override
  String get gameHintWord404Java => 'Jenkins को बनाने में उपयोग हुई JVM भाषा।';

  @override
  String get gameHintWord405Json => 'ऑब्जेक्ट और ऐरे वाला हल्का डेटा फ़ॉर्मैट।';

  @override
  String get gameHintWord406Xml => 'नेस्टेड नामित टैग वाला मार्कअप फ़ॉर्मैट।';

  @override
  String get gameHintWord407Html => 'वेब पेजों की संरचना बनाने वाली मार्कअप भाषा।';

  @override
  String get gameHintWord408Css => 'वेब प्रस्तुति को नियंत्रित करने वाली स्टाइलशीट भाषा।';

  @override
  String get gameHintWord409String => 'टेक्स्ट अक्षरों का अनुक्रम।';

  @override
  String get gameHintWord410Array => 'तत्वों का इंडेक्स वाला संग्रह।';

  @override
  String get gameHintWord411Hash => 'Ruby और Perl में साहचर्य की-वैल्यू संग्रह।';

  @override
  String get gameHintWord412Object => 'गुण और व्यवहार वाला रनटाइम मान।';

  @override
  String get gameHintWord413Class => 'क्लास-आधारित भाषाओं में ऑब्जेक्ट बनाने की परिभाषा।';

  @override
  String get gameHintWord414Method => 'ऑब्जेक्ट या क्लास से जुड़ा फ़ंक्शन।';

  @override
  String get gameHintWord415Interface => 'घटक द्वारा उपलब्ध कराए गए ऑपरेशनों का वर्णन करने वाला अनुबंध।';

  @override
  String get gameHintWord416Subclass => 'किसी अन्य क्लास से व्युत्पन्न क्लास।';

  @override
  String get gameHintWord417Super => 'पैरेंट-क्लास का व्यवहार कॉल करने वाला कीवर्ड।';

  @override
  String get gameHintWord418Protected => 'दृश्यता स्तर जो क्लास-संबंधी संदर्भों तक पहुँच सीमित करता है।';

  @override
  String get gameHintWord419Exception => 'रनटाइम स्थिति जो सामान्य नियंत्रण प्रवाह को बाधित करती है।';

  @override
  String get gameHintWord420Regex => 'टेक्स्ट मिलान के लिए उपयोग होने वाला पैटर्न संकेतन।';

  @override
  String get gameHintWord421Lexical => 'सोर्स-कोड संरचना से तय होने वाले स्कोप का वर्णन करता है।';

  @override
  String get gameHintWord422Scalar => 'Perl में एकल-मान वाली वेरिएबल श्रेणी।';

  @override
  String get gameHintWord423Tuple => 'Python में अपरिवर्तनीय क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord424List => 'Python में परिवर्तनीय क्रमबद्ध संग्रह।';

  @override
  String get gameHintWord425Dict => 'Python का बिल्ट-इन मैपिंग प्रकार नाम।';

  @override
  String get gameHintWord426Dictionary => 'कुंजियों को संबद्ध मानों से जोड़ने वाला संग्रह।';

  @override
  String get gameHintWord427Set => 'भिन्न मानों का संग्रह।';

  @override
  String get gameHintWord428Boolean => 'सही या गलत दर्शाने वाला डेटा प्रकार।';

  @override
  String get gameHintWord429Integer => 'पूर्ण संख्याएँ दर्शाने वाला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord430Float => 'फ़्लोटिंग-पॉइंट मान दर्शाने वाला संख्यात्मक प्रकार।';

  @override
  String get gameHintWord431Double => 'डबल-प्रिसिज़न फ़्लोटिंग-पॉइंट प्रकार।';

  @override
  String get gameHintWord432Null => 'ऑब्जेक्ट या परिणाम की अनुपस्थिति दर्शाने वाला मान।';

  @override
  String get gameHintWord433Undefined => 'असाइन किए गए मान के अभाव के लिए JavaScript मान।';

  @override
  String get gameHintWord434Promise => 'भविष्य के अतुल्यकालिक परिणाम को दर्शाने वाला JavaScript ऑब्जेक्ट।';

  @override
  String get gameHintWord435Async => 'अतुल्यकालिक फ़ंक्शन को चिह्नित करने वाला कीवर्ड।';

  @override
  String get gameHintWord436Await => 'अतुल्यकालिक परिणाम की प्रतीक्षा करने वाला कीवर्ड।';

  @override
  String get gameHintWord437Callback => 'दूसरे ऑपरेशन द्वारा बुलाए जाने के लिए दिया गया फ़ंक्शन।';

  @override
  String get gameHintWord438Closure => 'अपने आसपास के लेक्सिकल स्कोप तक पहुँच बनाए रखने वाला फ़ंक्शन।';

  @override
  String get gameHintWord439Generator => 'यील्ड किए गए मानों से अनुक्रम को आलसी ढंग से बनाने वाला फ़ंक्शन।';

  @override
  String get gameHintWord440Iterator => 'संग्रह के मानों में आगे बढ़ने वाला ऑब्जेक्ट।';

  @override
  String get gameHintWord441Print => 'मान को आउटपुट पर लिखने वाला सामान्य फ़ंक्शन।';

  @override
  String get gameHintWord442Input => 'मानक इनपुट से एक पंक्ति पढ़ने वाला Python फ़ंक्शन।';

  @override
  String get gameHintWord443Open => 'फ़ाइल हैंडल पाने के लिए उपयोग होने वाला फ़ंक्शन।';

  @override
  String get gameHintWord444Close => 'खुली फ़ाइल या कनेक्शन को मुक्त करने वाला ऑपरेशन।';

  @override
  String get gameHintWord445Read => 'स्ट्रीम या फ़ाइल से डेटा प्राप्त करने वाला ऑपरेशन।';

  @override
  String get gameHintWord446Write => 'स्ट्रीम या फ़ाइल में डेटा भेजने वाला ऑपरेशन।';

  @override
  String get gameHintWord447Append => 'संग्रह के अंत में आइटम जोड़ता है।';

  @override
  String get gameHintWord448Split => 'डिलिमिटर से टेक्स्ट को सबस्ट्रिंग में तोड़ता है।';

  @override
  String get gameHintWord449Join => 'विभाजक से स्ट्रिंग के अनुक्रम को जोड़ता है।';

  @override
  String get gameHintWord450Strip => 'Python स्ट्रिंग के आसपास की खाली जगह हटाता है।';

  @override
  String get gameHintWord451Chomp => 'Perl या Ruby में अंत का रिकॉर्ड विभाजक हटाता है।';

  @override
  String get gameHintWord452Map => 'संग्रह के हर आइटम पर रूपांतरण लागू करता है।';

  @override
  String get gameHintWord453Filter => 'शर्त पूरी करने वाले संग्रह आइटम रखता है।';

  @override
  String get gameHintWord454Reduce => 'संग्रह को एक संचित परिणाम में जोड़ता है।';

  @override
  String get gameHintWord455Range => 'पूर्णांकों के अंकगणितीय अनुक्रम को दर्शाने वाला Python प्रकार।';

  @override
  String get gameHintWord456Length => 'संग्रह का आकार लौटाने वाला गुण या मेथड।';

  @override
  String get gameHintWord457Len => 'संग्रह का आकार लौटाने वाला Python बिल्ट-इन फ़ंक्शन।';

  @override
  String get gameHintWord458Type => 'ऑब्जेक्ट का प्रकार लौटाने वाला Python फ़ंक्शन।';

  @override
  String get gameHintWord459Isinstance => 'प्रकार पदानुक्रम में सदस्यता जाँचने वाला Python फ़ंक्शन।';

  @override
  String get gameHintWord460Yield => 'जनरेटर से मान उत्पन्न करने वाला कीवर्ड।';

  @override
  String get gameHintWord461Saas => 'पूर्ण सॉफ़्टवेयर एप्लिकेशन उपलब्ध कराने वाला क्लाउड मॉडल।';

  @override
  String get gameHintWord462Paas => 'प्रबंधित एप्लिकेशन विकास प्लेटफ़ॉर्म देने वाला क्लाउड मॉडल।';

  @override
  String get gameHintWord463Iaas => 'वर्चुअल कंप्यूट, स्टोरेज और नेटवर्किंग देने वाला क्लाउड मॉडल।';

  @override
  String get gameHintWord464Hybrid => 'निजी और सार्वजनिक इन्फ्रास्ट्रक्चर को मिलाने वाला क्लाउड तरीका।';

  @override
  String get gameHintWord465Archive => 'कम उपयोग होने वाले डेटा का दीर्घकालिक भंडारण।';

  @override
  String get gameHintWord466Public => 'कई ग्राहकों को सेवाएँ देने वाला क्लाउड स्वामित्व मॉडल।';

  @override
  String get gameHintWord467Private => 'एक ही संगठन के लिए समर्पित क्लाउड मॉडल।';

  @override
  String get gameHintWord468Scalability => 'संसाधन जोड़कर बढ़ते लोड को संभालने की क्षमता।';

  @override
  String get gameHintWord469Availability => 'जरूरत पड़ने पर सेवा के सुलभ रहने की सीमा।';

  @override
  String get gameHintWord470Resilience => 'विफलताओं को सहने और उनसे उबरने की क्षमता।';

  @override
  String get gameHintWord471Redundancy => 'एकल विफलता बिंदु घटाने वाले दोहरे घटक।';

  @override
  String get gameHintWord472Disaster => 'बड़ा आउटेज जिसे पुनर्प्राप्ति रणनीति से संभाला जाता है।';

  @override
  String get gameHintWord473Recovery => 'विफलता के बाद सेवा या डेटा को बहाल करना।';

  @override
  String get gameHintWord474Replicate => 'डेटा या वर्कलोड को किसी अन्य स्थान पर कॉपी करना।';

  @override
  String get gameHintWord475Snapshotting => 'डेटा या सिस्टम स्थिति की किसी समय-बिंदु की प्रतियाँ लेना।';

  @override
  String get gameHintWord476Restore => 'सहेजी गई प्रति से डेटा पुनर्प्राप्त करने वाला ऑपरेशन।';

  @override
  String get gameHintWord477Residency => 'संग्रहीत डेटा का भौगोलिक स्थान तय करने वाली आवश्यकता।';

  @override
  String get gameHintWord478Compliance => 'आवश्यक विनियमों और संगठनात्मक नियंत्रणों का पालन करना।';

  @override
  String get gameHintWord479Governance => 'प्रौद्योगिकी उपयोग को नियंत्रित करने वाली नीतियाँ और प्रक्रियाएँ।';

  @override
  String get gameHintWord480Audit => 'दर्ज गतिविधियों और अनुपालन प्रमाणों की समीक्षा।';

  @override
  String get gameHintWord481Token => 'प्राधिकरण या पहचान दर्शाने वाला क्रेडेंशियल या प्रतीक।';

  @override
  String get gameHintWord482Oauth => 'प्रत्यायोजित पहुँच की अनुमति देने वाला प्राधिकरण फ़्रेमवर्क।';

  @override
  String get gameHintWord483Saml => 'एंटरप्राइज़ सिंगल साइन-ऑन के लिए आम तौर पर उपयोग होने वाला XML-आधारित मानक।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell पाइपलाइनों में उपयोग होने वाली विशेष कमांड।';

  @override
  String get gameHintWord485Algorithm => 'कंप्यूटेशनल समस्या हल करने के चरणों का परिभाषित अनुक्रम।';

  @override
  String get gameHintWord486Key => 'एन्क्रिप्शन नियंत्रित करने या संग्रहीत डेटा पहचानने वाला मान।';

  @override
  String get gameHintWord487Alias => 'शेल कमांड या संसाधन का वैकल्पिक नाम।';

  @override
  String get gameHintWord488Amend => 'सबसे हाल के कमिट को बदलने वाला Git कमिट विकल्प।';

  @override
  String get gameHintWord489Allsigned => 'हस्ताक्षरित स्क्रिप्ट आवश्यक करने वाली PowerShell निष्पादन नीति।';

  @override
  String get gameHintWord490Remotesigned => 'डाउनलोड की गई स्क्रिप्ट पर हस्ताक्षर आवश्यक करने वाली PowerShell नीति।';

  @override
  String get gameHintWord491Acl => 'उपयोगकर्ताओं या सिस्टमों की अनुमतियाँ परिभाषित करने वाली सूची।';

  @override
  String get gameHintWord492Uid => 'यूनिक्स उपयोगकर्ता को दिया गया संख्यात्मक पहचानकर्ता।';

  @override
  String get gameHintWord493Setgid => 'निष्पादन या वंशानुक्रम के दौरान समूह पहचान को प्रभावित करने वाला अनुमति बिट।';

  @override
  String get gameHintWord494Setfacl => 'फ़ाइल एक्सेस कंट्रोल सूचियाँ सेट करने वाली Linux कमांड।';

  @override
  String get gameHintWord495Isolation => 'वर्कलोड को एक-दूसरे में दखल देने से रोकने वाला अलगाव।';

  @override
  String get gameHintWord496Sighup => 'यूनिक्स हैंगअप सिग्नल जो अक्सर कॉन्फ़िगरेशन रीलोड के अनुरोध के लिए उपयोग होता है।';

  @override
  String get gameHintWord497Sigint => 'यूनिक्स इंटरप्ट सिग्नल जो आम तौर पर Control-C से उत्पन्न होता है।';

  @override
  String get gameHintWord498Sigstop => 'प्रक्रिया को समाप्त किए बिना रोकने वाला यूनिक्स सिग्नल।';

  @override
  String get gameHintWord499Secrets => 'पासवर्ड और एक्सेस कुंजियों जैसे संवेदनशील मान।';

  @override
  String get gameHintWord500Secure => 'अनधिकृत पहुँच से सुरक्षित कनेक्शन का वर्णन करता है।';

  @override
  String get fontSettingsTitle => 'फ़ॉन्ट';

  @override
  String get fontChangeFont => 'फ़ॉन्ट बदलें';

  @override
  String get fontSystemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get fontPreview => 'पूर्वावलोकन';

  @override
  String get fontPreviewSample => 'एक-एक प्रश्न से DevOps सीखें';

  @override
  String get fontSelected => 'चयनित';

  @override
  String get fontLatinOnlyNote => 'कस्टम फ़ॉन्ट लैटिन अक्षरों पर लागू होते हैं। अन्य लिपियाँ आपके डिवाइस के फ़ॉन्ट में ही दिखेंगी।';

  @override
  String get fontDescSystem => 'आपके डिवाइस का अंतर्निहित फ़ॉन्ट';

  @override
  String get fontDescGeometric => 'ज्यामितीय सैंस-सेरिफ़';

  @override
  String get fontDescGeometricRounded => 'ज्यामितीय गोलाकार सैंस-सेरिफ़';

  @override
  String get fontDescFriendly => 'सहज सैंस-सेरिफ़';

  @override
  String get fontDescCondensed => 'संकुचित';

  @override
  String get fontDescRounded => 'गोलाकार सैंस-सेरिफ़';

  @override
  String get fontDescRoundedDisplay => 'गोलाकार डिस्प्ले';

  @override
  String gameScene3dScene(String value1) {
    return '3D दृश्य $value1';
  }
}
