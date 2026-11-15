// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTour => 'செயலி வழிகாட்டி';

  @override
  String get skipTour => 'வழிகாட்டியைத் தவிர்';

  @override
  String get finishTour => 'வழிகாட்டியை முடி';

  @override
  String tourStep(int current, int total) {
    return 'படி $current / $total';
  }

  @override
  String get tourMenuTitle => 'வழிசெலுத்தல் பட்டி';

  @override
  String get tourSearch => 'தொடர்புடைய வினாடி வினா வகைகளைக் கண்டறிய இங்கே தலைப்பை உள்ளிடுங்கள்.';

  @override
  String get tourCategory => 'கலப்பு வினாடி வினாவுக்கு DevOps-ஐத் தட்டுங்கள். மற்ற வகைகளில் கேள்வித் தொகுப்புகள் உள்ளன. பிறகு படிக்கக் கேள்விகளைக் குறியிடுங்கள்.';

  @override
  String get tourMenu => 'வழிசெலுத்தல் பட்டியைத் திறக்க இந்தப் பொத்தானைத் தட்டுங்கள்.';

  @override
  String get tourLearning => 'அட்டைகளுக்குக் கற்றலைத் திறக்கவும். எந்தத் திசையிலும் ஸ்வைப் செய்யலாம், கலக்கலாம், தானாக மாற்றலாம் அல்லது அட்டையைக் குறியிடலாம்.';

  @override
  String get tourGames => 'விளையாடிப் புள்ளிகளைப் பெறுங்கள். நிலைகள் உள்ள விளையாட்டுகளில் ஒரு நிலையை முடித்தால் 100 புள்ளிகள்; குறிப்புக்கு 20 புள்ளிகள் செலவாகும்.';

  @override
  String get tourAchievements => 'உங்கள் சாதனைகளை இங்கே காணலாம். புதிய சாதனைகள் மற்றும் கிடைக்கும் தீம்கள் பாப்அப்பில் அறிவிக்கப்படும்.';

  @override
  String get tourSettings => 'மொழி, தீம், ஒலி ஆகியவற்றைத் தேர்ந்தெடுக்கவும். குறிப்புகளுக்குச் சேமித்த தரவை அல்லது மீண்டும் இந்த வழிகாட்டியைப் பார்க்கச் செயலி வழிகாட்டியைத் திறக்கவும்.';

  @override
  String get achievementUnlocked => 'சாதனை திறக்கப்பட்டது!';

  @override
  String get themeUnlocked => 'புதிய தீம் கிடைக்கிறது!';

  @override
  String get themeUnlockedMessage => 'இப்போது அமைப்புகள் > தீம்களில் இந்த தீமைத் தேர்ந்தெடுக்கலாம்.';

  @override
  String get gameSounds => 'விளையாட்டு ஒலிகள்';

  @override
  String get gameSoundsDescription => 'விளையாட்டுகள் மற்றும் வினாடி வினாக்களுக்கான ஒலி விளைவுகள். சாதனத்தின் ஒலியளவையும் அமைதி நிலையையும் சரிபார்க்கவும்.';

  @override
  String get testSound => 'ஒலியைச் சோதிக்கவும்';

  @override
  String get soundSettingBusy => 'காத்திருக்கவும்...';

  @override
  String get soundSettingError => 'ஒலி அமைப்பை ஏற்றவோ சேமிக்கவோ முடியவில்லை. மீண்டும் முயலுங்கள்.';

  @override
  String get soundPlaybackError => 'ஒலியை இயக்க முடியவில்லை. சாதனம் அல்லது உலாவியின் ஒலி அமைப்புகளைச் சரிபார்க்கவும்.';

  @override
  String get saveData => 'சேமித்த தரவு';

  @override
  String get learningTranslationUnavailable => 'இந்த அட்டை தேர்ந்தெடுத்த மொழியில் இன்னும் மொழிபெயர்க்கப்படவில்லை.';

  @override
  String get saveQuestion => 'கேள்வியைச் சேமி';

  @override
  String defaultPortQuestion(String service) {
    return '$service இன் இயல்புநிலை போர்ட் எது?';
  }

  @override
  String get removeSavedItem => 'சேமித்தவற்றிலிருந்து நீக்கு';

  @override
  String get noSavedData => 'இன்னும் எதுவும் சேமிக்கப்படவில்லை. கற்றல் அட்டைகள் அல்லது வினாடி வினா கேள்விகளைக் குறியிடுங்கள்.';

  @override
  String get savedDataError => 'சேமித்த தரவை ஏற்றவோ புதுப்பிக்கவோ முடியவில்லை. மீண்டும் முயலுங்கள்.';

  @override
  String get savedItemUnavailable => 'சேமித்த இந்த உருப்படி இப்போது கிடைக்கவில்லை.';

  @override
  String get correctAnswer => 'சரியான பதில்';

  @override
  String get retry => 'மீண்டும் முயல்';

  @override
  String get certificates => 'சான்றிதழ்கள்';

  @override
  String get whatsNew => 'புதியவை';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get darkMode => 'இருண்ட பயன்முறை';

  @override
  String get lightMode => 'வெளிர் பயன்முறை';

  @override
  String get language => 'மொழி';

  @override
  String get selectLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'வினாடி வினாவைத் தொடங்கவும்';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'வகையை மாற்றவும்';

  @override
  String get dailyQuiz => 'தினசரி வினாடி வினா';

  @override
  String get dailyQuizCompleted => 'தினசரி வினாடி வினா முடிந்தது';

  @override
  String get dailyQuizCompletedMessage => 'இன்றைய தினசரி வினாடி வினாவை முடித்துவிட்டீர்கள். புதிய சவாலுக்காக நாளை வாருங்கள்!';

  @override
  String get leaderboard => 'முன்னிலைப் பட்டியல்';

  @override
  String get shareApp => 'செயலியைப் பகிரவும்';

  @override
  String get rateApp => 'செயலியை மதிப்பிடவும்';

  @override
  String get about => 'பற்றி';

  @override
  String get ok => 'சரி';

  @override
  String get home => 'முகப்பு';

  @override
  String get games => 'விளையாட்டுகள்';

  @override
  String get referAndEarn => 'பரிந்துரைத்து சம்பாதிக்கவும்';

  @override
  String get themes => 'தீம்கள்';

  @override
  String get version => 'பதிப்பு';

  @override
  String get developer => 'உருவாக்குநர்';

  @override
  String get contact => 'தொடர்பு';

  @override
  String get learning => 'கற்றல்';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'என்னுடன் இணையுங்கள்';

  @override
  String get aboutDescription => 'DevOps Quiz மூலம் Linux, Docker, Kubernetes மற்றும் பிற DevOps தலைப்புகளைக் கற்று நேர்காணல்கள் மற்றும் சான்றிதழ்களுக்குத் தயாராகுங்கள்.';

  @override
  String get quizResult => 'வினாடி வினா முடிவு';

  @override
  String get outstanding => 'அருமை!';

  @override
  String get greatJob => 'நன்றாகச் செய்தீர்கள்!';

  @override
  String get goodEffort => 'நல்ல முயற்சி!';

  @override
  String get keepPracticing => 'தொடர்ந்து பயிற்சி செய்யுங்கள்!';

  @override
  String get dontGiveUp => 'முயற்சியைக் கைவிடாதீர்கள்!';

  @override
  String get shareMessage1 => 'எனது மதிப்பெண்';

  @override
  String get shareMessage2 => 'DevOps வினாடி வினாவில்!';

  @override
  String get downloadApp => 'செயலியைப் பதிவிறக்கவும்:';

  @override
  String get score => 'மதிப்பெண்';

  @override
  String get points => 'புள்ளிகள்';

  @override
  String get percentage => 'சதவீதம்';

  @override
  String get bonus => 'போனஸ்';

  @override
  String get perfectScoreBonus => 'முழு மதிப்பெண் போனஸ்';

  @override
  String get shareScore => 'மதிப்பெண்ணைப் பகிரவும்';

  @override
  String get restartQuiz => 'வினாடி வினாவை மீண்டும் தொடங்கவும்';

  @override
  String get backToCategories => 'வகைகளுக்குத் திரும்பவும்';

  @override
  String get greatProgress => 'நன்றாகச் செய்தீர்கள்! உங்கள் முன்னேற்றம் சிறப்பாக உள்ளது.';

  @override
  String get practiceMore => 'நல்ல முயற்சி! கூடுதல் பயிற்சியால் உங்கள் மதிப்பெண் உயரும்.';

  @override
  String get keepLearning => 'தொடர்ந்து கற்றுக்கொண்டு மீண்டும் முயலுங்கள்.';

  @override
  String get everyExpertStarted => 'ஒவ்வொரு நிபுணரும் தொடக்கநிலையிலிருந்தே தொடங்கினார். தொடர்ந்து பயிற்சி செய்யுங்கள்!';

  @override
  String get quizInstructions => 'வினாடி வினா வழிமுறைகள்';

  @override
  String get instruction1 => 'ஒவ்வொரு தொகுப்பிலும் 25 கேள்விகள் உள்ளன.';

  @override
  String get instruction2 => 'ஒவ்வொரு கேள்விக்கும் 30 வினாடிகள் உள்ளன.';

  @override
  String get instruction3 => 'பச்சை = சரியான பதில்.';

  @override
  String get instruction4 => 'சிவப்பு = தவறான பதில்.';

  @override
  String get instruction5 => 'பதிலை மாற்ற முடியாது.';

  @override
  String get instruction6 => 'பின்செல் பொத்தான் மறுபார்வைக்கு மட்டுமே.';

  @override
  String get instruction7 => 'முடித்த பிறகு மதிப்பெண் காட்டப்படும்.';

  @override
  String get instruction8 => 'ஒவ்வொரு சரியான பதிலுக்கும் 10 புள்ளிகள் கிடைக்கும்.';

  @override
  String excellentPerformance(Object expert) {
    return 'சிறப்பான செயல்திறன்! நீங்கள் ஒரு $expert.';
  }

  @override
  String get selectCategory => 'வகையைத் தேர்ந்தெடுக்கவும்';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'தொகுப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get set => 'தொகுப்பு';

  @override
  String get questions => 'கேள்விகள்';

  @override
  String get noScoresYet => 'இன்னும் மதிப்பெண்கள் இல்லை';

  @override
  String get pointsShort => 'புள்ளி';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizக்கு வரவேற்கிறோம்';

  @override
  String hiUser(String name) {
    return 'வணக்கம் $name';
  }

  @override
  String get challengeMode => 'சவால் பயன்முறை';

  @override
  String get challenge => 'சவால்';

  @override
  String get question => 'கேள்வி';

  @override
  String get reward => 'வெகுமதி';

  @override
  String get survivalMode => 'உயிர்வாழும் பயன்முறை';

  @override
  String get speedChallenge => 'வேகச் சவால்';

  @override
  String get dailyChallenge => 'தினசரி சவால்';

  @override
  String get ultimateChallenge => 'இறுதிச் சவால்';

  @override
  String get timeLeft => 'மீதமுள்ள நேரம்';

  @override
  String get completed => 'முடிந்தது';

  @override
  String get locked => 'பூட்டப்பட்டது';

  @override
  String get back => 'பின்செல்';

  @override
  String get next => 'அடுத்து';

  @override
  String get submit => 'சமர்ப்பிக்கவும்';

  @override
  String get achievements => 'சாதனைகள்';

  @override
  String get streak => 'தொடர்ச்சி';

  @override
  String get days => 'நாட்கள்';

  @override
  String get tomorrowsReward => 'நாளைய வெகுமதி';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 எனது மதிப்பெண் $score/$totalQuestions #DevOps Quiz!\n\n🏆 புள்ளிகள்: $earnedPoints\n🔥 போனஸ்: $bonusPoints\n📊 சதவீதம்: $percentage%\n\nசெயலியைப் பதிவிறக்கவும்:';
  }

  @override
  String get gameUiSpinWheel => 'சக்கரத்தைச் சுழற்று';

  @override
  String get gameUiSpinAndWinBonusPoints => 'சுழற்றி போனஸ் புள்ளிகளை வெல்லுங்கள்';

  @override
  String get gameUiScratchCard => 'ஸ்கிராட்ச் கார்டு';

  @override
  String get gameUiScratchToRevealAReward => 'பரிசைக் காண கீறுங்கள்';

  @override
  String get gameUiLuckySlots => 'அதிர்ஷ்ட ஸ்லாட்கள்';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'ஸ்லாட்களைச் சுழற்றி புள்ளிகளை வெல்லுங்கள்';

  @override
  String get gameUiMysteryDeal => 'மர்ம டீல்';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ஒரு மர்மப் பெட்டியைத் தேர்ந்தெடுத்து பதிலளியுங்கள்';

  @override
  String get gameUiMemoryMatch => 'நினைவாற்றல் பொருத்தம்';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps ஜோடிகளைப் பொருத்துங்கள்';

  @override
  String get gameUiWordGuess => 'சொல் ஊகம்';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'நிலைகள் வழியாக DevOps சொற்களை ஊகியுங்கள்';

  @override
  String get gameUiFindWords => 'சொற்களைக் கண்டுபிடி';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'மறைந்துள்ள DevOps சொற்களை கட்டத்தில் தேடுங்கள்';

  @override
  String get gameUiSpotTheDifference => 'வேறுபாட்டைக் கண்டுபிடி';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'இரண்டு படக் காட்சிகளுக்கு இடையிலான ஐந்து மாற்றங்களைக் கண்டுபிடியுங்கள்';

  @override
  String get gameUiJigsawPuzzle => 'ஜிக்சா புதிர்';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'பகிரப்பட்ட HD விலங்கு மற்றும் இயற்கைப் படங்களை மீண்டும் உருவாக்குங்கள்';

  @override
  String get gameUiHighOrLow => 'அதிகமா குறைவா';

  @override
  String get gameUiBuildAStreak => 'தொடர் வெற்றியை உருவாக்குங்கள்';

  @override
  String get gameUiTrueOrFalseBlitz => 'சரியா தவறா பிளிட்ஸ்';

  @override
  String get gameUiQuickAnswerQuiz => 'விரைவு பதில் வினாடி வினா';

  @override
  String get gameUiCommandMatch => 'கமாண்ட் பொருத்தம்';

  @override
  String get gameUiMatchCommandsToMeanings => 'கமாண்ட்களை அவற்றின் பொருளுடன் பொருத்துங்கள்';

  @override
  String get gameUiPortMaster => 'போர்ட் மாஸ்டர்';

  @override
  String get gameUiGuessDefaultPorts => 'இயல்புநிலை போர்ட்களை ஊகியுங்கள்';

  @override
  String get gameUiTicTacToe => 'டிக்-டாக்-டோ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X பூஜ்ஜியங்களும் சிலுவைகளும் கணினியுடன்';

  @override
  String get gameUiConnectFour => 'கனெக்ட் ஃபோர்';

  @override
  String get gameUiDropFourDiscs => 'நான்கு வட்டுகளைப் போடுங்கள்';

  @override
  String get gameUiLudo => 'லூடோ';

  @override
  String get gameUiRaceAgainstBots => 'பாட்களுடன் பந்தயம்';

  @override
  String get gameUiChess => 'சதுரங்கம்';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'சதுரங்கப் பலகை, விதிப்படியான நகர்வுகள், இரண்டு வீரர்கள்';

  @override
  String get gameUiSnakeAndLadders => 'பாம்பும் ஏணியும்';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'பகடை பலகை, பாம்புகள், ஏணிகள், இரண்டு வீரர்கள்';

  @override
  String get gameUiGames => 'விளையாட்டுகள் 🎮';

  @override
  String get gameUiPlayEarn => 'விளையாடி சம்பாதியுங்கள்';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'விளையாட்டுகளை விளையாடி போனஸ் புள்ளிகளைப் பெறுங்கள்!';

  @override
  String get gameUiSearchGames => 'விளையாட்டுகளைத் தேடு';

  @override
  String get gameUiClearSearch => 'தேடலை அழி';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" உடன் பொருந்தும் விளையாட்டுகள் இல்லை';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'சுழற்றி போனஸ் புள்ளிகளை வெல்லுங்கள்.';

  @override
  String get gameUiScratchToRevealYourReward => 'உங்கள் பரிசைக் காண கீறுங்கள்.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'ஸ்லாட்களைச் சுழற்றி புள்ளிகளை வெல்லுங்கள்.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ஒரு மர்மப் பெட்டியைத் தேர்ந்தெடுத்து சரியாகப் பதிலளித்து புள்ளிகளை வெல்லுங்கள்.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'DevOps ஜோடிகளைப் பொருத்தி புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 முயற்சிகளில் DevOps சொல்லை ஊகியுங்கள்.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'மறைந்துள்ள DevOps சொற்களை கட்டத்தில் தேடுங்கள்.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 நிலைகளில் DevOps சொற்களைக் கண்டறிய ஸ்வைப் செய்யுங்கள்.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'இரண்டு படக் காட்சிகளுக்கு இடையிலான ஐந்து மாற்றங்களைக் கண்டுபிடியுங்கள்.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'பகிரப்பட்ட HD விலங்கு மற்றும் இயற்கைப் படங்களை மீண்டும் உருவாக்குங்கள்.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'தொடர் வெற்றியை உருவாக்கி உங்கள் புள்ளிகளைச் சேமியுங்கள்.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'விரைவான பதில்களால் நேரத்தை வெல்லுங்கள்.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'சரியா தவறா பிளிட்ஸ் 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'கமாண்ட்களை அவை செய்யும் செயலுடன் பொருத்துங்கள்.';

  @override
  String get gameUiCommandMatch670a76e => 'கமாண்ட் பொருத்தம் 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 உயிர்களுடன் இயல்புநிலை போர்ட்களை ஊகியுங்கள்.';

  @override
  String get gameUiPortMaster8f5fd42 => 'போர்ட் மாஸ்டர் 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'கணினிக்கு எதிராக O/X விளையாடுங்கள்.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'வெல்ல நான்கு வட்டுகளை ஒரே வரிசையில் போடுங்கள்.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'உங்கள் காய்களை மூன்று பாட்களுக்கு எதிராக ஓட்டுங்கள்.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'விதிப்படியான நகர்வுகளுடன் உள்ளூர் இரண்டு வீரர் சதுரங்கம்.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'விதிப்படியான இரண்டு வீரர் சதுரங்கப் போட்டியை விளையாடுங்கள்.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'இரண்டு வீரர் பகடை பலகை விளையாட்டு.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100-ஐ நோக்கி ஓடுங்கள். ஏணிகளில் ஏறி பாம்புகளைத் தவிருங்கள்.';

  @override
  String get gameUiPlay => 'விளையாடு';

  @override
  String get gameUiWheelStopped => 'சக்கரம் நின்றது!';

  @override
  String get gameUiYourRewardIs => 'உங்கள் பரிசு';

  @override
  String get gameUiPOINTS => 'புள்ளிகள்';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'இந்தப் பரிசைப் பெற 1 வினாடி வினா கேள்விக்கு சரியாகப் பதிலளியுங்கள்.';

  @override
  String get gameUiWrongAnswerRewardLost => 'தவறான பதில் = பரிசு இழப்பு.';

  @override
  String get gameUiAnswerQuestion => 'கேள்விக்குப் பதிலளி';

  @override
  String get gameUiSpinWheele449982 => '🎡 சக்கரத்தைச் சுழற்று';

  @override
  String get gameUiDailySpin => 'தினசரி சுழற்சி';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'சக்கரத்தைச் சுழற்றி, பின்னர் ஒரு கேள்விக்குப் பதிலளித்து உங்கள் பரிசைப் பெறுங்கள்!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'இன்றைய சுழற்சியை நீங்கள் ஏற்கனவே பயன்படுத்திவிட்டீர்கள்.';

  @override
  String get gameUiSpinning => 'சுழல்கிறது...';

  @override
  String get gameUiSPINNOW => 'இப்போது சுழற்று';

  @override
  String get gameUiCOMEBACKTOMORROW => 'நாளை மீண்டும் வாருங்கள்';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'இன்றைய பரிசு: ⭐ $value1 புள்ளிகள்';
  }

  @override
  String get gameUiBackToGames => 'விளையாட்டுகளுக்குத் திரும்பு';

  @override
  String get gameUiSPIN => 'சுழற்று';

  @override
  String get gameUiRewardRevealed => 'பரிசு வெளிப்பட்டது!';

  @override
  String get gameUiYouFound => 'நீங்கள் கண்டுபிடித்தது';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ ஸ்கிராட்ச் கார்டு';

  @override
  String get gameUiDailyScratch => 'தினசரி ஸ்கிராட்ச்';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'இன்றைய பரிசைக் காண கார்டைக் கீறுங்கள்!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'இன்றைய ஸ்கிராட்ச் கார்டை நீங்கள் ஏற்கனவே பயன்படுத்திவிட்டீர்கள்.';

  @override
  String get gameUiAlreadyScratched => 'ஏற்கனவே கீறப்பட்டது';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'மற்றொரு பரிசுக்கு நாளை மீண்டும் வாருங்கள்.';

  @override
  String get gameUiYouRevealed => 'நீங்கள் வெளிப்படுத்தியது';

  @override
  String get gameUiSCRATCHHERE => 'இங்கே கீறுங்கள்  👆';

  @override
  String get gameUiJACKPOT777 => 'ஜாக்பாட் 777!';

  @override
  String get gameUiLucky777 => 'அதிர்ஷ்ட 777!';

  @override
  String get gameUiYourReward => 'உங்கள் பரிசு';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 அதிர்ஷ்ட ஸ்லாட்கள்';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'ஸ்லாட்களைச் சுழற்றி, பின்னர் ஒரு கேள்விக்குப் பதிலளித்து பரிசைப் பெறுங்கள்!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'நீங்கள் இன்று ஏற்கனவே விளையாடிவிட்டீர்கள்.';

  @override
  String get gameUiSPINNING => 'சுழல்கிறது...';

  @override
  String get gameUiROLLNOW => 'இப்போதே உருட்டு';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ஜாக்பாட்! 777 புள்ளிகள் கிடைக்கின்றன!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'மர்ம ஒப்பந்த நிலையைச் சரிபார்க்க முடியவில்லை: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'பெட்டி $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 புள்ளிகள்';
  }

  @override
  String get gameUiStartQuestion => 'கேள்வியைத் தொடங்கு';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 மர்ம ஒப்பந்தம்';

  @override
  String get gameUiMysteryDealCompleted => 'மர்ம ஒப்பந்தம் நிறைவடைந்தது!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'இன்று நீங்கள் ஏற்கனவே மர்ம ஒப்பந்தத்தை விளையாடிவிட்டீர்கள்.';

  @override
  String get gameUiTodayYouWon => 'இன்று நீங்கள் வென்றது';

  @override
  String get gameUiTodaySReward => 'இன்றைய பரிசு';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 புள்ளிகள்';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 புள்ளிகள் இழப்பு';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'இன்னொரு மர்மப் பெட்டிக்கு நாளை மீண்டும் வாருங்கள்!';

  @override
  String get gameUiChooseYourMysteryBox => 'உங்கள் மர்மப் பெட்டியைத் தேர்ந்தெடுங்கள்';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ஒவ்வொரு பெட்டியிலும் 10 முதல் 1000 புள்ளிகள் வரையிலான மறைக்கப்பட்ட பரிசு உள்ளது.';

  @override
  String get gameUiPickOnlyOneBox => 'ஒரே ஒரு பெட்டியை மட்டும் தேர்ந்தெடுங்கள்!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'அனைத்து $value1 நிலைகளும் நிறைவடைந்தன!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'நிலை $value1 நிறைவடைந்தது!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 நகர்வுகளில் முடித்தீர்கள்.\nநீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 நகர்வுகளில் முடித்தீர்கள்.\nஇந்த நிலை ஏற்கனவே முடிக்கப்பட்டுவிட்டது.';
  }

  @override
  String get gameUiNextLevel => 'அடுத்த நிலை';

  @override
  String get gameUiDone => 'முடிந்தது';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'நினைவு பொருத்தம் 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'அனைத்து 100 நிலைகளும் நிறைவடைந்தன!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'நினைவு பொருத்தத்தின் அனைத்து நிலைகளையும் முடித்துவிட்டீர்கள். சிறப்பாக விளையாடினீர்கள்!';

  @override
  String get gameUiChooseLevel => 'நிலையைத் தேர்ந்தெடுங்கள்';

  @override
  String gameUiMoves(String value1) {
    return 'நகர்வுகள்: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'நிலை $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 ஜோடிகள்';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'நிலை $value1 ஐ மனப்பாடம் செய்யுங்கள்';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 பொருந்தும் ஜோடிகளைக் கண்டறியுங்கள்';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz லோகோ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'அத்தியாயம் 1 · பில்ட் பைப்லைனை மீட்டெடுங்கள்';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'அத்தியாயம் 2 · கிளவுட் தளத்தை விரிவாக்குங்கள்';

  @override
  String get gameUiChapter3ProtectProduction => 'அத்தியாயம் 3 · புரொடக்ஷனைப் பாதுகாருங்கள்';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'சமர்ப்பிக்க மீதமுள்ள $value1 எழுத்துகளையும் பயன்படுத்துங்கள்.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'அனைத்து நிலைகளும் நிறைவடைந்தன!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'நிலை $value1 நிறைவடைந்தது!';
  }

  @override
  String get gameUiTryAgain => 'மீண்டும் முயற்சி செய்';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'சொல் $value1. நீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'சொல் $value1. $value3 குறிப்புக்குப் பிறகு நீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'சொல் $value1. $value3 குறிப்புகளுக்குப் பிறகு நீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'சொல் $value1. நிலை $value2 இன்னும் உங்களுக்காகக் காத்திருக்கிறது.';
  }

  @override
  String get gameUiFinish => 'முடி';

  @override
  String get gameUiNextLevel254fd73 => 'அடுத்த நிலை';

  @override
  String get gameUiRetryLevel => 'நிலையை மீண்டும் முயற்சி செய்';

  @override
  String get gameUiHowToPlay => 'விளையாடுவது எப்படி';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ஒவ்வொரு நிலையிலும் ஒரு DevOps சொல் இருக்கும். ஐந்து எழுத்துகளுக்குக் குறைவான சொற்கள் இலவச எழுத்துகள் இல்லாமல் தொடங்கும்; நீளமான சொற்கள் ஒரு எழுத்துடன் தொடங்கும். பதிலை உருவாக்க எழுத்துத் தட்டைப் பயன்படுத்தி Enter ஐ அழுத்துங்கள். குறிப்புகள் மற்றொரு எழுத்தை வெளிப்படுத்தும்; அவை உங்கள் இருப்பிலிருந்து 20 புள்ளிகளைக் கழிக்கும். முடிக்கப்பட்ட ஒவ்வொரு நிலைக்கும் 100 புள்ளிகள் கிடைக்கும்.';

  @override
  String get gameUiGotIt => 'புரிந்தது';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'அனைத்து $value1 நிலைகளும் நிறைவடைந்தன!';
  }

  @override
  String get gameUiEasy => 'எளிது';

  @override
  String get gameUiMedium => 'நடுத்தரம்';

  @override
  String get gameUiHard => 'கடினம்';

  @override
  String get gameUiHowToPlay13a6b22 => 'விளையாடுவது எப்படி';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'நிலை $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'பரிசு $value1 புள்ளிகள் · பயன்படுத்திய குறிப்புகள் $value2';
  }

  @override
  String get gameUiHint20Pts => 'குறிப்பு · −20 புள்ளிகள்';

  @override
  String get gameUiEnter => 'உள்ளிடு';

  @override
  String get gameUiDelete => 'அழி';

  @override
  String get gameUiDragThroughAWord => 'ஒரு சொல் வழியாக இழுக்கவும்';

  @override
  String get gameUiDragThroughEachWord => 'ஒவ்வொரு சொல் வழியாகவும் இழுக்கவும்';

  @override
  String get gameUiReleaseToSelect => 'தேர்ந்தெடுக்க விடுவிக்கவும்';

  @override
  String gameUiFound(String value1) {
    return '$value1 கண்டறியப்பட்டது';
  }

  @override
  String get gameUiNoWordThere => 'அங்கு சொல் எதுவும் இல்லை';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ஏற்கனவே கண்டறியப்பட்டது';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 ஐத் தேடுங்கள்';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'அனைத்து நிலைகளும் நிறைவடைந்தன!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'அனைத்துச் சொற்களையும் கண்டறிந்து $value1 புள்ளிகள் பெற்றீர்கள்.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'அனைத்துச் சொற்களையும் கண்டறிந்தீர்கள். இந்த நிலை ஏற்கனவே முடிக்கப்பட்டுவிட்டது.';

  @override
  String get gameUiAll500LevelsComplete => 'அனைத்து 500 நிலைகளும் நிறைவடைந்தன!';

  @override
  String get gameUiReviewLevels => 'நிலைகளை மதிப்பாய்வு செய்';

  @override
  String gameUiLeft(String value1) {
    return '$value1 மீதம்';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 புள்ளிகள்';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'முன்னேற்றத்தைச் சேமிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'நீங்கள் $value1 புள்ளிகள் பெற்றீர்கள்!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'இந்தப் படத்தை ஏற்கனவே முடித்துவிட்டீர்கள். மீண்டும் விளையாடினால் கூடுதல் புள்ளிகள் இல்லை.';

  @override
  String get gameUiYouCompletedEveryPicture => 'அனைத்துப் படங்களையும் முடித்துவிட்டீர்கள்!';

  @override
  String get gameUiLevels => 'நிலைகள்';

  @override
  String get gameUiPictureB => 'படம் B';

  @override
  String get gameUiPictureA => 'படம் A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'படத்தை ஏற்ற முடியவில்லை. மீண்டும் முயற்சி';

  @override
  String get gameUiResetZoom => 'பெரிதாக்கலை மீட்டமை';

  @override
  String get gameUiZoomBothPictures => 'இரு படங்களையும் பெரிதாக்கு';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'குறிப்பு · ஒரு குறிப்புக்கு $value1 புள்ளிகள்';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'முன்னேற்றத்தை ஏற்ற முடியவில்லை. மீண்டும் முயற்சி';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'நிலை $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'அனைத்து வேறுபாடுகளும் கண்டறியப்பட்டன!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count வேறுபாடுகளைக் கண்டறியுங்கள். ஏதேனும் ஒரு படத்தில் ஒவ்வொன்றையும் தட்டுங்கள்.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'தவறுகள்: $value1  ·  குறிப்புகள்: $value2 (−$value3 புள்ளிகள்)  ·  $value4 நிலைகள் நிறைவு';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'அடுத்த நிலை: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'புதிர் $value1 நிறைவடைந்தது!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'படம் $value1 நகர்வுகளில் நிறைவடைந்தது. நீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'படம் $value1 நகர்வுகளில் நிறைவடைந்தது.';
  }

  @override
  String get gameUiNextPuzzle => 'அடுத்த புதிர்';

  @override
  String get gameUiAllPuzzlesComplete => 'அனைத்துப் புதிர்களும் நிறைவடைந்தன';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'புதிர் துண்டு $value1 / $value2, சரியாக வைக்கப்பட்டுள்ளது';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'புதிர் துண்டு $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'புதிரைத் தேர்ந்தெடுங்கள்';

  @override
  String get gameUiShufflePieces => 'துண்டுகளைக் கலக்கு';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'புதிர் படத்தை ஏற்ற முடியவில்லை.';

  @override
  String get gameUiPreviousPuzzle => 'முந்தைய புதிர்';

  @override
  String gameUiPuzzle(String value1) {
    return 'புதிர் $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 நகர்வுகள்';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'துண்டுகளை இழுத்து இடமாற்றவும், அல்லது இரண்டு துண்டுகளைத் தட்டவும்.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 புதிர்கள் தீர்க்கப்பட்டன  ·  ஒவ்வொன்றுக்கும் $value3 புள்ளிகள்';
  }

  @override
  String get gameUiGameOver => 'ஆட்டம் முடிந்தது';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'எண் $value1 ஆக இருந்தது.\nதொடர்: $value2\nநீங்கள் $value3 புள்ளிகள் பெற்றீர்கள்!\n\nமற்றொரு வாய்ப்புக்கு நாளை வாருங்கள்!';
  }

  @override
  String get gameUiHigherOrLower => 'அதிகமா அல்லது குறைவா 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'இன்று ஏற்கனவே விளையாடிவிட்டீர்கள்!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'நீங்கள் $value1/$value2/$value3 அன்று விளையாடினீர்கள்.\n\nபுதிய தொடரை உருவாக்க நாளை வாருங்கள்!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'நீங்கள் இன்று ஏற்கனவே விளையாடிவிட்டீர்கள்.\n\nமற்றொரு வாய்ப்புக்கு நாளை வாருங்கள்!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 தொடர்: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ புள்ளிகள்: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'அடுத்த எண் அதிகமாக இருக்குமா அல்லது குறைவாக இருக்குமா?';

  @override
  String get gameUiLower => 'குறைவு';

  @override
  String get gameUiHigher => 'அதிகம்';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'சரி அல்லது தவறு அதிரடி ⚡';

  @override
  String get gameUiTimeSUp => 'நேரம் முடிந்தது!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'சரியான பதில்கள்: $value1\nசிறந்த தொடர்: $value2\n$value3நீங்கள் $value4 புள்ளிகள் பெற்றீர்கள்!\n\nமற்றொரு சுற்றுக்கு நாளை வாருங்கள்!';
  }

  @override
  String get gameUiStreakBonus20 => 'தொடர் போனஸ்: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'காட்டப்பட்ட பதில் சரியா அல்லது தவறா?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 வகைகளில் $value1 கேள்விகள்';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'உங்களுக்கு $value1 வினாடிகள் உள்ளன. ஒவ்வொரு சரியான பதிலுக்கும் $value2 புள்ளிகள் கிடைக்கும். தவறான பதில் $value3 வினாடிகளைக் குறைக்கும். 5 தொடர் அடைந்தால் +20 போனஸ் கிடைக்கும்.';
  }

  @override
  String get gameUiRoundTimer => 'சுற்று நேரமானி';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 வினாடிகள்';
  }

  @override
  String get gameUiStart => 'தொடங்கு';

  @override
  String get gameUiTrue => 'சரி';

  @override
  String get gameUiFalse => 'தவறு';

  @override
  String get gameUiCommandMatch26b0e70 => 'கட்டளை பொருத்தம் 🔗';

  @override
  String get gameUiAllMatched => 'அனைத்தும் பொருந்தின!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'தவறுகள்: $value1\nநீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்!\n\nபுதிய கட்டளைகளுக்கு நாளை வாருங்கள்!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'சுற்று $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ஒரு கட்டளையைத் தட்டவும், பிறகு அதன் பொருளைத் தட்டவும்.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'இப்போது பொருந்தும் பொருளைத் தட்டவும்.';

  @override
  String get gameUiPortMaster9c730cf => 'போர்ட் மாஸ்டர் 🔌';

  @override
  String get gameUiPortMastera796b69 => 'போர்ட் மாஸ்டர்!';

  @override
  String get gameUiOutOfLives => 'உயிர்கள் தீர்ந்துவிட்டன';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'சரியான பதில்கள்: $value1\nநீங்கள் $value2 புள்ளிகள் பெற்றீர்கள்!\n\nமற்றொரு சுற்றுக்கு நாளை வாருங்கள்!';
  }

  @override
  String get gameUiYouEarned10Points => 'நீங்கள் 10 புள்ளிகள் பெற்றீர்கள்!';

  @override
  String get gameUiYouWin => 'நீங்கள் வென்றீர்கள்!';

  @override
  String gameUiWins(String value1) {
    return '$value1 வென்றார்!';
  }

  @override
  String get gameUiXWins => 'X வென்றது!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) வென்றார்!';
  }

  @override
  String get gameUiComputerWins => 'கணினி வென்றது';

  @override
  String get gameUiOWins => 'O வென்றது!';

  @override
  String get gameUiPlayer2OWins => 'வீரர் 2 (O) வென்றார்!';

  @override
  String get gameUiItSADraw => 'ஆட்டம் சமன்';

  @override
  String get gameUiYourTurn => 'உங்கள் முறை';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 முறை';
  }

  @override
  String get gameUiComputerIsThinking => 'கணினி யோசிக்கிறது';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'வீரர் $value1 நகர்த்த வேண்டும்';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 நகர்த்த வேண்டும்';
  }

  @override
  String get gameUiPlayer2ToMove => 'வீரர் 2 நகர்த்த வேண்டும்';

  @override
  String get gameUiNewRound => 'புதிய சுற்று';

  @override
  String get gameUiVsComputer => 'கணினிக்கு எதிராக';

  @override
  String get gameUi2Players => '2 வீரர்கள்';

  @override
  String get gameUiYou => 'நீங்கள்';

  @override
  String get gameUiDraws => 'சமன்கள்';

  @override
  String get gameUiPlayer2 => 'வீரர் 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'கட்டம் $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'மீண்டும் விளையாடு';

  @override
  String get gameUiConnectFourWin20Points => 'கனெக்ட் ஃபோர் வெற்றி: 20 புள்ளிகள்!';

  @override
  String get gameUiBotWins => 'பாட் வென்றது!';

  @override
  String get gameUiRed => 'சிவப்பு';

  @override
  String get gameUiYellow => 'மஞ்சள்';

  @override
  String get gameUiBoardFullDraw => 'பலகை நிரம்பியது — சமன்';

  @override
  String get gameUiBotIsThinking => 'பாட் யோசிக்கிறது';

  @override
  String get gameUiBotTurn => 'பாட் முறை';

  @override
  String get gameUiNewGame => 'புதிய ஆட்டம்';

  @override
  String get gameUiVsBot => 'பாட்டுக்கு எதிராக';

  @override
  String get gameUi2Player => '2 வீரர்';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'பாட்டுக்கு எதிராக விளையாடுங்கள் · வட்டைப் போட ஒரு நெடுவரிசையைத் தட்டவும்';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'இரண்டு வீரர்கள் · வட்டைப் போட ஒரு நெடுவரிசையைத் தட்டவும்';

  @override
  String gameUiColumn(String value1) {
    return 'நெடுவரிசை $value1';
  }

  @override
  String get gameUiYouRed => 'நீங்கள் · சிவப்பு';

  @override
  String get gameUiRedPlayer1 => 'சிவப்பு · வீரர் 1';

  @override
  String get gameUiBotYellow => 'பாட் · மஞ்சள்';

  @override
  String get gameUiYellowPlayer2 => 'மஞ்சள் · வீரர் 2';

  @override
  String get gameUiLudoMatchStats => 'லூடோ ஆட்ட புள்ளிவிவரங்கள்';

  @override
  String get gameUiNoCompletedMatchesYet => 'இன்னும் முடிந்த ஆட்டங்கள் இல்லை.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'விளையாடியது $value1  ·  வென்றது $value2  ·  தோற்றது $value3';
  }

  @override
  String get gameUiClose => 'மூடு';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'லூடோ சாம்பியன்! நீங்கள் 50 புள்ளிகள் பெற்றீர்கள்.';

  @override
  String get gameUiNewLudoGame => 'புதிய லூடோ ஆட்டம்';

  @override
  String get gameUiBotOpponents => 'பாட் எதிரிகள்';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'புதிய ஆட்டத்தைத் தொடங்கினால் சேமித்த ஆட்டம் மாற்றப்படும்.';

  @override
  String get gameUiCancel => 'ரத்துசெய்';

  @override
  String get gameUiStartGame => 'ஆட்டத்தைத் தொடங்கு';

  @override
  String get gameUiPlayerColours => 'வீரர் நிறங்கள்';

  @override
  String get gameUiApply => 'பயன்படுத்து';

  @override
  String get gameUiMatchStats => 'ஆட்ட புள்ளிவிவரங்கள்';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 செக்மேட் மூலம் வென்றது';
  }

  @override
  String get gameUiBlack => 'கருப்பு';

  @override
  String get gameUiWhite => 'வெள்ளை';

  @override
  String get gameUiComputerWinsByCheckmate => 'கணினி செக்மேட் மூலம் வென்றது';

  @override
  String get gameUiYouWinByCheckmate => 'நீங்கள் செக்மேட் மூலம் வென்றீர்கள்';

  @override
  String get gameUiDrawByStalemate => 'ஸ்டேல்மேட் மூலம் சமன்';

  @override
  String get gameUiDraw => 'சமன்';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · செக்';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'செக்மேட்! நீங்கள் 50 புள்ளிகள் பெற்றீர்கள்.';

  @override
  String get gameUiStartANewGame => 'புதிய ஆட்டத்தைத் தொடங்கவா?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'வீரர் முறையை மாற்றினால் சேமிக்கப்பட்ட ஆட்டம் மாற்றப்படும்.';

  @override
  String get gameUiComputer => 'கணினி';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · வெள்ளை / வீரர் 2 · கருப்பு';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'நீங்கள் வெள்ளை · கணினி கருப்பு';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (வெள்ளை) · கணினி (கருப்பு)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'நீங்கள் கருப்பு · கணினி வெள்ளை';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (கருப்பு) · கணினி (வெள்ளை)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 முதலில் உருட்டுகிறார்';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 மீண்டும் உருட்டுகிறார்';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 உருட்ட வேண்டும்';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'பாம்பும் ஏணியும் வெற்றி: 100 புள்ளிகள்!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'வீரர்களை மாற்றினால் சேமிக்கப்பட்ட ஆட்டம் மாற்றப்படும்.';

  @override
  String get gameUiStartANewLevel => 'புதிய நிலையைத் தொடங்கவா?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'நிலைகளை மாற்றினால் சேமிக்கப்பட்ட ஆட்டம் மாற்றப்படும்.';

  @override
  String get gameUiChangeLevel => 'நிலையை மாற்று';

  @override
  String get gameUiPlayers => 'வீரர்கள்';

  @override
  String get gameUiPlayAgainstBot => 'பாட்டுக்கு எதிராக விளையாடு';

  @override
  String get gameUi3Players => '3 வீரர்கள்';

  @override
  String get gameUi4Players => '4 வீரர்கள்';

  @override
  String get gameUiLevel1709305 => 'நிலை';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'நிலை $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 வீரர்கள் · நிலை $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · உருட்டு';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 இல் $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'கேள்வியை ஏற்ற முடியவில்லை: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'சரியான பதில்!';

  @override
  String get gameUiWrongAnswer => 'தவறான பதில்';

  @override
  String get gameUiYouClaimedYourReward => 'உங்கள் வெகுமதியைப் பெற்றுவிட்டீர்கள்!';

  @override
  String get gameUiAddedToYourTotalPoints => 'உங்கள் மொத்த புள்ளிகளில் சேர்க்கப்பட்டது.';

  @override
  String get gameUiTheCorrectAnswerWas => 'சரியான பதில்:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 புள்ளி வெகுமதி இழந்தது.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'உங்களிடம் உள்ள புள்ளிகள் கழிக்கப்படவில்லை.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'நாளை மீண்டும் வந்து முயற்சிக்கவும்.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'கேள்வியை ஏற்ற முடியவில்லை.';

  @override
  String get gameUiYourReward677fa6e => 'உங்கள் வெகுமதி';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 புள்ளிகள்';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'பெற சரியாகப் பதிலளிக்கவும்!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'மற்றொரு சுற்றுக்கு நாளை மீண்டும் வாருங்கள்.';

  @override
  String get gameUiGreen => 'பச்சை';

  @override
  String get gameUiBlue => 'நீலம்';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 யோசிக்கிறார்';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ஒரு காயைத் தேர்ந்தெடுக்கவும்';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: பகடையை உருட்டவும்';
  }

  @override
  String gameUiDice(String value1) {
    return 'பகடை $value1';
  }

  @override
  String get gameUiRollDice => 'பகடையை உருட்டு';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 காய் $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'வீரர் $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'பாட் $value1';
  }

  @override
  String get gameUiBot => 'பாட்';

  @override
  String get gameUiHintInsufficientPoints => 'குறிப்பைப் பயன்படுத்த 20 புள்ளிகள் தேவை.';

  @override
  String get gameUiHintPurchaseFailed => 'குறிப்பை வாங்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get gameUiChessKing => 'ராஜா';

  @override
  String get gameUiChessQueen => 'ராணி';

  @override
  String get gameUiChessRook => 'கோட்டை';

  @override
  String get gameUiChessBishop => 'மந்திரி';

  @override
  String get gameUiChessKnight => 'குதிரை';

  @override
  String get gameUiChessPawn => 'சிப்பாய்';

  @override
  String get gameUiChessEmpty => 'காலி';

  @override
  String get gameSceneLampAndFlowers => 'விளக்கும் பூக்களும்';

  @override
  String get gameSceneGardenFriends => 'தோட்ட நண்பர்கள்';

  @override
  String get gameSceneUnderwaterExplorers => 'நீருக்கடியில் ஆராய்பவர்கள்';

  @override
  String get gameSceneOceanOrca => 'கடல் ஓர்கா';

  @override
  String get gameSceneFoxInTheMeadow => 'புல்வெளியில் நரி';

  @override
  String get gameSceneYellowSubmarine => 'மஞ்சள் நீர்மூழ்கிக் கப்பல்';

  @override
  String get gameSceneTurkeyInTheClearing => 'வெட்டவெளியில் வான்கோழி';

  @override
  String get gameSceneSafariWateringHole => 'சஃபாரி நீர்நிலை';

  @override
  String get gameSceneJungleCompanions => 'காட்டுத் தோழர்கள்';

  @override
  String get gameSceneGoldenPuppyGarden => 'தங்க நாய்க்குட்டி தோட்டம்';

  @override
  String get gameSceneSeaTurtleReef => 'கடல் ஆமை பவளப்பாறை';

  @override
  String get gameSceneCoralReefFriends => 'பவளப்பாறை நண்பர்கள்';

  @override
  String get gameSceneSharedClownfish => 'பகிரப்பட்ட கோமாளி மீன்';

  @override
  String get gameSceneLittleDinosaur => 'குட்டி டைனோசர்';

  @override
  String get gameSceneSafariCompanions => 'சஃபாரி தோழர்கள்';

  @override
  String get gameSceneSwirlingFlowers => 'சுழலும் பூக்கள்';

  @override
  String get gameSceneGardenKitten => 'தோட்டப் பூனைக்குட்டி';

  @override
  String get gameSceneBlueOcean => 'நீலக் கடல்';

  @override
  String get gameSceneCastlePrincess => 'கோட்டை இளவரசி';

  @override
  String get gameSceneRedCar => 'சிவப்பு கார்';

  @override
  String get gameSceneGardenPuppy => 'தோட்ட நாய்க்குட்டி';

  @override
  String get gameSceneSpaceExplorer => 'விண்வெளி ஆய்வாளர்';

  @override
  String get gameSceneEnchantedReadingForest => 'மாய வாசிப்புக் காடு';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps முடிவிலிச் சுழற்சி';

  @override
  String get gameSceneAnsible => 'Ansible (ஆன்சிபிள்)';

  @override
  String get gameSceneAws => 'AWS (ஏடபிள்யூஎஸ்)';

  @override
  String get gameSceneAzure => 'Azure (அஸூர்)';

  @override
  String get gameSceneBashScripting => 'Bash Scripting (பேஷ் ஸ்கிரிப்டிங்)';

  @override
  String get gameSceneDocker => 'Docker (டாக்கர்)';

  @override
  String get gameSceneGcp => 'GCP (ஜிசிபி)';

  @override
  String get gameSceneGit => 'Git (கிட்)';

  @override
  String get gameSceneHybridCloud => 'Hybrid Cloud (ஹைபிரிட் கிளவுடு)';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud (ஐபிஎம் கிளவுடு)';

  @override
  String get gameSceneJavascript => 'JavaScript (ஜாவாஸ்கிரிப்ட்)';

  @override
  String get gameSceneJenkins => 'Jenkins (ஜென்கின்ஸ்)';

  @override
  String get gameSceneKubernetes => 'Kubernetes (குபெர்னெட்டிஸ்)';

  @override
  String get gameSceneLinux => 'Linux (லினக்ஸ்)';

  @override
  String get gameSceneMultiCloud => 'Multi Cloud (மல்டி கிளவுடு)';

  @override
  String get gameSceneNetworking => 'நெட்வொர்க்கிங்';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud (ஆரக்கிள் கிளவுடு)';

  @override
  String get gameScenePerl => 'Perl (பெர்ல்)';

  @override
  String get gameScenePowershell => 'PowerShell (பவர்ஷெல்)';

  @override
  String get gameScenePython => 'Python (பைதான்)';

  @override
  String get gameSceneRuby => 'Ruby (ரூபி)';

  @override
  String get gameSceneTerraform => 'Terraform (டெர்ராபார்ம்)';

  @override
  String get gameSceneWinterFestivalFair => 'குளிர்கால விழா கண்காட்சி';

  @override
  String get gameSceneArmoredHeroCloseUp => 'கவச வீரரின் நெருக்கமான காட்சி';

  @override
  String get gameSceneArmoredHeroInCrimson => 'செந்நிறத்தில் கவச வீரர்';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'கரும் பிளூமேரியா மலர்கள்';

  @override
  String get gameSceneMangroveBoardwalk => 'சதுப்புநிலக் காட்டு நடைபாதை';

  @override
  String get gameSceneTropicalPalmReflections => 'வெப்பமண்டலப் பனை பிரதிபலிப்புகள்';

  @override
  String get gameSceneMaskedFigureInShadow => 'நிழலில் முகமூடி உருவம்';

  @override
  String get gameSceneElectricCompanionAtSunset => 'சூரிய அஸ்தமனத்தில் மின்சாரத் தோழன்';

  @override
  String get gameSceneTrainerAndFireDragon => 'பயிற்சியாளரும் நெருப்பு டிராகனும்';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'ரத்தினம் பதித்த மல்யுத்த முகமூடி';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'சிவப்புத் தூரிகைத் தீட்டல்களில் மல்யுத்த வீரர்';

  @override
  String get gameSceneWrestlingChampionSalute => 'மல்யுத்த சாம்பியனின் வணக்கம்';

  @override
  String get gameSceneMorningAtTheBakery => 'பேக்கரியில் காலைப்பொழுது';

  @override
  String get gameSceneGreenhousePottingBench => 'பசுமைக் குடிலின் தொட்டி நடும் மேசை';

  @override
  String get gameSceneHarborFishingBoat => 'துறைமுக மீன்பிடிப் படகு';

  @override
  String get gameSceneAtticObservatory => 'மாடி வானிலை ஆய்வகம்';

  @override
  String get gameSceneToyMakerSWorkshop => 'பொம்மை செய்பவரின் பட்டறை';

  @override
  String get gameSceneWoodlandCampsite => 'வனப்பகுதி முகாம் இடம்';

  @override
  String get gameSceneAfternoonMusicRoom => 'மதிய இசை அறை';

  @override
  String get gameSceneSeasideIceCreamStand => 'கடற்கரை ஐஸ்கிரீம் கடை';

  @override
  String get gameSceneLibraryReadingNook => 'நூலக வாசிப்பு மூலை';

  @override
  String get gameSceneSewingStudio => 'தையல் கூடம்';

  @override
  String get gameSceneFruitMarket => 'பழச் சந்தை';

  @override
  String get gameSceneKoiCourtyard => 'கோய் மீன் முற்றம்';

  @override
  String get gameSceneArtistSAtelier => 'கலைஞரின் ஓவியக் கூடம்';

  @override
  String get gameSceneMountainRailway => 'மலை ரயில்பாதை';

  @override
  String get gameSceneCountryKitchen => 'கிராமப்புறச் சமையலறை';

  @override
  String get gameScenePotteryWorkshop => 'மட்பாண்டப் பட்டறை';

  @override
  String get gameSceneBeachPicnic => 'கடற்கரை உல்லாசப் பயணம்';

  @override
  String get gameSceneFlowerShop => 'பூக்கடை';

  @override
  String get gameSceneClockmakerSWorkshop => 'கடிகாரம் செய்பவரின் பட்டறை';

  @override
  String get gameSceneRainyCafeTerrace => 'மழை பெய்யும் ஓட்டல் மொட்டைமாடி';

  @override
  String get gameSceneCastleHerbGarden => 'கோட்டை மூலிகைத் தோட்டம்';

  @override
  String get gameSceneClassroomArtCorner => 'வகுப்பறை ஓவிய மூலை';

  @override
  String get gameSceneAquariumShop => 'மீன்தொட்டி கடை';

  @override
  String get gameSceneAutumnLeafCollection => 'இலையுதிர்கால இலைகளின் சேகரிப்பு';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'நிலவின் கீழ் தனி மரம்';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'கிளையில் இலையுதிர்கால மலர்';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'பச்சை இலைகளுக்கிடையே நரி';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'அல்லி மூடிய ஏரியில் படகு';

  @override
  String get gameSceneDewDropsOnALeaf => 'இலையில் பனித்துளிகள்';

  @override
  String get gameSceneStagInATurquoiseLake => 'நீலப்பச்சை ஏரியில் ஆண் மான்';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'ஆரஞ்சு நிலவின் கீழ் மிதிவண்டி';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'பள்ளத்தாக்கின் மேலே வெள்ளைப் புலி';

  @override
  String get gameSceneTwoTreesInBlueWater => 'நீல நீரில் இரண்டு மரங்கள்';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'நம்பிக்கையான நாயின் அருகே மீன்பிடித்தல்';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'மலை ஏரியின் அருகே அல்லிகள்';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'இளஞ்சிவப்பு ஆற்றங்கரையில் மான்';

  @override
  String get gameSceneTropicalHutAtSunset => 'சூரிய அஸ்தமனத்தில் வெப்பமண்டலக் குடிசை';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ஆல்பைன் பள்ளத்தாக்கைக் கண்காணிக்கும் நரி';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'மாயாஜாலத் தோப்பின் வழியே சூரிய அஸ்தமனம்';

  @override
  String get learningControlTitle => 'DevOps கற்றல்';

  @override
  String get learningControlAllCategories => 'அனைத்து வகைகள்';

  @override
  String get learningControlSearchCards => 'அட்டைகளைத் தேடு';

  @override
  String get learningControlClearSearch => 'தேடலை அழி';

  @override
  String get learningControlCategory => 'வகை';

  @override
  String get learningControlShowAll => 'அனைத்து அட்டைகளையும் காட்டு';

  @override
  String learningControlShowSaved(int count) {
    return 'சேமித்த அட்டைகளைக் காட்டு ($count)';
  }

  @override
  String get learningControlShuffleOff => 'கலக்குவதை நிறுத்து';

  @override
  String get learningControlShuffleOn => 'அட்டைகளைக் கலக்கு';

  @override
  String get learningControlAutoOff => 'தானியங்கி மாற்றத்தை நிறுத்து';

  @override
  String get learningControlAutoOn => 'ஒவ்வொரு 10 வினாடிக்கும் தானியங்கி மாற்றம்';

  @override
  String get learningControlNoSaved => 'இன்னும் சேமித்த அட்டைகள் இல்லை';

  @override
  String get learningControlNoMatches => 'பொருந்தும் அட்டைகள் இல்லை';

  @override
  String get learningControlResetFilters => 'வடிகட்டிகளை மீட்டமை';

  @override
  String get learningControlPrevious => 'முந்தையது';

  @override
  String get learningControlNext => 'அடுத்தது';

  @override
  String get learningControlProgress => 'முன்னேற்றம்';

  @override
  String get learningControlRemoveSaved => 'சேமித்தவற்றிலிருந்து நீக்கு';

  @override
  String get learningControlSaveCard => 'அட்டையைச் சேமி';

  @override
  String get learningControlExample => 'எடுத்துக்காட்டு';

  @override
  String get learningControlCopyExample => 'எடுத்துக்காட்டை நகலெடு';

  @override
  String get learningControlExampleCopied => 'எடுத்துக்காட்டு நகலெடுக்கப்பட்டது';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'நிலை $value1 முடிந்தது';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'நிலை $value1 விளையாடு';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'திறக்க நிலை $value1 ஐ முடிக்கவும்';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'தினசரி உள்நுழைவு போனஸ்';

  @override
  String get sharedDialogThanksForComingBack => 'மீண்டும் வந்ததற்கு நன்றி!';

  @override
  String get sharedDialogDailyRewardAdded => 'உங்கள் தினசரி வெகுமதி உங்கள் மொத்த புள்ளிகளில் சேர்க்கப்பட்டது.';

  @override
  String get sharedDialogAwesome => 'அருமை!';

  @override
  String get accountWelcomeGuest => 'விருந்தினர்';

  @override
  String get accountWelcomeGuestUser => 'விருந்தினர் பயனர்';

  @override
  String get accountWelcomeUser => 'பயனர்';

  @override
  String get accountWelcomePlayingAsGuest => 'விருந்தினராக விளையாடுகிறீர்கள்';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google கணக்கை இணைக்கவும்';

  @override
  String get accountWelcomeGoogleConnected => 'Google கணக்கு வெற்றிகரமாக இணைக்கப்பட்டது! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'உள்நுழைவு ரத்து செய்யப்பட்டது.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'இணைக்க முடியவில்லை: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'வெளியேறு';

  @override
  String get accountWelcomeSignOutTitle => 'வெளியேறவா?';

  @override
  String get accountWelcomeSignOutMessage => 'நிச்சயமாக வெளியேற விரும்புகிறீர்களா? சேமிக்கப்பட்ட முன்னேற்றத்தை அணுக மீண்டும் உள்நுழைய வேண்டும்.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'வெளியேற முடியவில்லை: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ஆப் தரவை மீட்டமைக்கவா?';

  @override
  String get accountWelcomeResetAppMessage => 'இது உங்கள் அனைத்து புள்ளிகள், தொடர்ச்சிகள், விளையாட்டு வரலாறு மற்றும் அமைப்புகளை நிரந்தரமாக நீக்கும். நீங்கள் வெளியேற்றப்பட்டு தொடக்கத் திரைக்குத் திரும்புவீர்கள். இதைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get accountWelcomeResetEverything => 'அனைத்தையும் மீட்டமை';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'மீட்டமைக்க முடியவில்லை: $value1';
  }

  @override
  String get accountWelcomeCancel => 'ரத்து செய்';

  @override
  String get accountWelcomeResetAppData => 'ஆப் தரவை மீட்டமை';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'அனைத்து புள்ளிகள், தொடர்ச்சிகள் மற்றும் அமைப்புகளை அழிக்கவும்';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz App';

  @override
  String get accountWelcomeTranslationNotAvailable => 'மொழிபெயர்ப்பு இன்னும் கிடைக்கவில்லை';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google மூலம் தொடரவும்';

  @override
  String get accountWelcomeSigningIn => 'உள்நுழைகிறது...';

  @override
  String get accountWelcomeOr => 'அல்லது';

  @override
  String get accountWelcomeContinueAsGuest => 'விருந்தினராகத் தொடரவும்';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'பிறகு உங்கள் சுயவிவரத்திலிருந்து உள்நுழையலாம்.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'விருந்தினராகத் தொடங்கி பிறகு உள்நுழையலாம்.';

  @override
  String get accountWelcomeGreetingGuest => 'வரவேற்கிறோம்';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'வரவேற்கிறோம், $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google உள்நுழைவு முடிந்தது, ஆனால் பயனர் கணக்கு எதுவும் திருப்பி அனுப்பப்படவில்லை.';

  @override
  String get accountWelcomeErrorEmailExists => 'இந்த மின்னஞ்சலுக்கு வேறொரு உள்நுழைவு முறையைப் பயன்படுத்தும் கணக்கு ஏற்கனவே உள்ளது.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'இந்த Google கணக்கு ஏற்கனவே வேறொரு கணக்குடன் இணைக்கப்பட்டுள்ளது.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google அங்கீகரிப்பு சான்று செல்லாதது அல்லது காலாவதியானது.';

  @override
  String get accountWelcomeErrorUserDisabled => 'இந்தக் கணக்கு முடக்கப்பட்டுள்ளது.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google உள்நுழைவு தற்போது இயக்கப்படவில்லை.';

  @override
  String get accountWelcomeErrorNetwork => 'நெட்வொர்க் பிழை. உங்கள் இணைய இணைப்பைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'அதிகமான உள்நுழைவு முயற்சிகள். சிறிது காத்திருந்து மீண்டும் முயலவும்.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'கூடுதல் பிழைத் தகவல் இல்லை.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google உள்நுழைவு தோல்வியடைந்தது.\n\nகுறியீடு: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google உள்நுழைவு பிழை:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'விருந்தினராகத் தொடர முடியவில்லை. மீண்டும் முயலவும்.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google உள்நுழைவு விரைவில் கிடைக்கும்.';

  @override
  String get accountWelcomeLoginTagline => 'கற்றுக்கொள் • பயிற்சி செய் • போட்டியிடு • சம்பாதி';

  @override
  String get accountWelcomeCountryRegion => 'நாடு / பிராந்தியம்';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'நாடு / பிராந்தியம்: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'நாட்டைத் தேடுங்கள்';

  @override
  String get accountWelcomeCountryNotSelected => 'தேர்ந்தெடுக்கப்படவில்லை';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'ஏன் DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ பயிற்சி கேள்விகள்';

  @override
  String get accountWelcomeFeatureLanguages => 'பல மொழி ஆதரவு';

  @override
  String get accountWelcomeFeatureStreaks => 'தொடர்ச்சிகள் & முன்னணிப் பலகைகள்';

  @override
  String get accountWelcomeFeatureGames => 'விளையாட்டுகள் & சவால்கள்';

  @override
  String get accountWelcomeFeatureCloud => 'கிளவுட் & DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'போனஸ் & வெகுமதிகள்';

  @override
  String get accountWelcomePracticeOnTheGo => 'எங்கும் பயிற்சி செய்யுங்கள்';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ஆப்பை நிறுவி, எங்கும் ஆஃப்லைனில் கற்றுக்கொள்ளுங்கள்.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play-இல் பெறுங்கள்';

  @override
  String achLocStreakTitle(String days) {
    return '$days நாள் தொடர்ச்சி';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days நாள் தொடர்ச்சியைப் பராமரிக்கவும்.';
  }

  @override
  String get achLocYearStreakTitle => '1 ஆண்டு தொடர்ச்சி';

  @override
  String get achLocFirstQuizTitle => 'முதல் வினாடி வினா';

  @override
  String get achLocFirstQuizDescription => 'உங்கள் முதல் வினாடி வினாவை முடிக்கவும்.';

  @override
  String get achLocQuiz10Title => 'வினாடி வினா ஆய்வாளர்';

  @override
  String get achLocQuiz10Description => '10 வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocPoints1000Title => '1000 புள்ளிகள்';

  @override
  String get achLocPoints1000Description => 'Quiz இல் மொத்தம் 1000 புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get achLocPerfectScoreTitle => 'முழு மதிப்பெண்';

  @override
  String get achLocPerfectScoreDescription => 'எந்த வினாடி வினாவிலும் 100% மதிப்பெண் பெறுங்கள்.';

  @override
  String get achLocQuiz25Title => 'வினாடி வினா ஆர்வலர்';

  @override
  String get achLocQuiz25Description => '25 வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocQuiz50Title => 'வினாடி வினா மாஸ்டர்';

  @override
  String get achLocQuiz50Description => '50 வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocQuiz100Title => 'நூறு கிளப்';

  @override
  String get achLocQuiz100Description => '100 வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocQuiz250Title => 'வினாடி வினா ஜாம்பவான்';

  @override
  String get achLocQuiz250Description => '250 வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocPoints5000Title => '5,000 புள்ளிகள்';

  @override
  String get achLocPoints5000Description => 'மொத்தம் 5,000 புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get achLocPoints10000Title => '10,000 புள்ளிகள்';

  @override
  String get achLocPoints10000Description => 'மொத்தம் 10,000 புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get achLocPoints50000Title => '50,000 புள்ளிகள்';

  @override
  String get achLocPoints50000Description => 'மொத்தம் 50,000 புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get achLocPoints100000Title => '100,000 புள்ளிகள்';

  @override
  String get achLocPoints100000Description => 'மொத்தம் 100,000 புள்ளிகளைப் பெறுங்கள்.';

  @override
  String get achLocDaily1Title => 'தினசரி தொடக்கம்';

  @override
  String get achLocDaily1Description => 'உங்கள் முதல் தினசரி வினாடி வினாவை முடிக்கவும்.';

  @override
  String get achLocDaily7Title => 'தினசரி பழக்கம்';

  @override
  String get achLocDaily7Description => '7 தினசரி வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocDaily30Title => 'தினசரி சாம்பியன்';

  @override
  String get achLocDaily30Description => '30 தினசரி வினாடி வினாக்களை முடிக்கவும்.';

  @override
  String get achLocSets5Title => 'செட் தொடக்கம்';

  @override
  String get achLocSets5Description => '5 வினாடி வினா செட்களை முடிக்கவும்.';

  @override
  String get achLocSets25Title => 'செட் சேகரிப்பாளர்';

  @override
  String get achLocSets25Description => '25 வினாடி வினா செட்களை முடிக்கவும்.';

  @override
  String get achLocSets50Title => 'செட் மாஸ்டர்';

  @override
  String get achLocSets50Description => '50 வினாடி வினா செட்களை முடிக்கவும்.';

  @override
  String get achLocSets100Title => 'செட் ஜாம்பவான்';

  @override
  String get achLocSets100Description => '100 வினாடி வினா செட்களை முடிக்கவும்.';

  @override
  String get achLocCert1Title => 'முதல் சான்றிதழ்';

  @override
  String get achLocCert1Description => 'உங்கள் முதல் வகைப் பிரிவு சான்றிதழைப் பெறுங்கள்.';

  @override
  String get achLocCert5Title => 'சான்றளிக்கப்பட்ட நிபுணர்';

  @override
  String get achLocCert5Description => '5 வகைப் பிரிவு சான்றிதழ்களைப் பெறுங்கள்.';

  @override
  String get achLocCert21Title => 'முழுமையாகச் சான்றளிக்கப்பட்டவர்';

  @override
  String get achLocCert21Description => 'அனைத்து 21 வகைப் பிரிவுகளிலும் சான்றிதழைப் பெறுங்கள்.';

  @override
  String get achLocThemeFreeValentinesWeek => 'ஒவ்வொரு ஆண்டும் பிப். 7-14 வரை இலவசம்';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ஒவ்வொரு ஆண்டும் மார்ச் 8-15 வரை இலவசம்';

  @override
  String get achLocThemeLight => 'ஒளி';

  @override
  String get achLocThemeDark => 'இருண்ட';

  @override
  String get achLocThemeSakura => 'சகுரா';

  @override
  String get achLocThemeSunset => 'சூரிய அஸ்தமனம்';

  @override
  String get achLocThemeCoffee => 'காபி';

  @override
  String get achLocThemeTea => 'தேநீர்';

  @override
  String get achLocThemeOcean => 'கடல்';

  @override
  String get achLocThemeSolarFlare => 'சூரிய ஒளிப்பிழம்பு';

  @override
  String get achLocThemeForest => 'காடு';

  @override
  String get achLocThemeAurora => 'அரோரா';

  @override
  String get achLocThemeMatrix => 'மேட்ரிக்ஸ்';

  @override
  String get achLocThemeCyberPurple => 'சைபர் ஊதா';

  @override
  String get achLocThemeInferno => 'இன்ஃபெர்னோ';

  @override
  String get achLocThemeMidnight => 'நள்ளிரவு';

  @override
  String get achLocThemeDarkGrey => 'அடர் சாம்பல்';

  @override
  String get achLocThemeBarbee => 'பார்பி';

  @override
  String get achLocThemeValentineDay => 'காதலர் தினம்';

  @override
  String get achLocThemeDqSpecial => 'DQ சிறப்பு';

  @override
  String get achLocThemeArmy => 'ராணுவம்';

  @override
  String get achLocThemeSpiderMan => 'ஸ்பைடர்-மேன்';

  @override
  String get achLocThemeKrrish => 'கிரிஷ்';

  @override
  String get achLocThemeIronMan => 'அயர்ன் மேன்';

  @override
  String get achLocThemeCaptainAmerica => 'கேப்டன் அமெரிக்கா';

  @override
  String get achLocThemeThor => 'தோர்';

  @override
  String get achLocThemeHulk => 'ஹல்க்';

  @override
  String get achLocThemeBlackWidow => 'பிளாக் விடோ';

  @override
  String get achLocThemeHawkeye => 'ஹாக்கை';

  @override
  String get achLocThemeBlackPanther => 'பிளாக் பாந்தர்';

  @override
  String get achLocThemeScarletWitch => 'ஸ்கார்லெட் விட்ச்';

  @override
  String get achLocThemeVision => 'விஷன்';

  @override
  String get achLocThemeAntMan => 'ஆன்ட்-மேன்';

  @override
  String get achLocThemeCaptainMarvel => 'கேப்டன் மார்வெல்';

  @override
  String get achLocThemeDoctorStrange => 'டாக்டர் ஸ்ட்ரேஞ்ச்';

  @override
  String get achLocThemeAvengers => 'அவெஞ்சர்ஸ்';

  @override
  String get achLocThemeBatman => 'பேட்மேன்';

  @override
  String get achLocThemeSuperman => 'சூப்பர்மேன்';

  @override
  String get achLocThemeWonderWoman => 'வொண்டர் வுமன்';

  @override
  String get achLocThemeFlash => 'ஃப்ளாஷ்';

  @override
  String get achLocThemeAquaman => 'அக்வாமேன்';

  @override
  String get achLocThemeGreenLantern => 'கிரீன் லான்டர்ன்';

  @override
  String get achLocThemeCyborg => 'சைபோர்க்';

  @override
  String get achLocThemeSupergirl => 'சூப்பர்கேர்ள்';

  @override
  String get achLocThemeDc => 'DC ஹீரோக்கள்';

  @override
  String get achLocThemeRainbow => 'வானவில்';

  @override
  String get achLocThemeDiamond => 'வைரம்';

  @override
  String get achLocThemeLegendary => 'புகழ்பெற்ற';

  @override
  String get gameHintCmd001LsLa => 'அனைத்து கோப்புகளையும் விவரங்களுடன் பட்டியலிடு';

  @override
  String get gameHintCmd002Grep => 'ஒரு வடிவத்தைக் கொண்டு உரையைத் தேடு';

  @override
  String get gameHintCmd003Chmod => 'கோப்பு அனுமதிகளை மாற்று';

  @override
  String get gameHintCmd004DfH => 'மீதமுள்ள வட்டு இடத்தைக் காட்டு';

  @override
  String get gameHintCmd005TailF => 'வளரும் பதிவுக் கோப்பைத் தொடர்ந்து கவனி';

  @override
  String get gameHintCmd006PsAux => 'இயங்கும் செயலாக்கங்களைப் பட்டியலிடு';

  @override
  String get gameHintCmd007GitClone => 'தொலைநிலை களஞ்சியத்தை நகலெடு';

  @override
  String get gameHintCmd008GitStash => 'சமர்ப்பிக்கப்படாத மாற்றங்களை ஒதுக்கி வை';

  @override
  String get gameHintCmd009GitRebase => 'புதிய அடித்தளத்தில் கமிட்களை மீண்டும் பயன்படுத்து';

  @override
  String get gameHintCmd010GitBlame => 'ஒவ்வொரு வரியையும் யார் மாற்றினார் என்பதைக் காட்டு';

  @override
  String get gameHintCmd011DockerPs => 'இயங்கும் கண்டெய்னர்களைப் பட்டியலிடு';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile இலிருந்து ஒரு இமேஜை உருவாக்கு';

  @override
  String get gameHintCmd013DockerLogs => 'கண்டெய்னரின் வெளியீட்டைக் காட்டு';

  @override
  String get gameHintCmd014DockerExec => 'கண்டெய்னருக்குள் ஒரு கட்டளையை இயக்கு';

  @override
  String get gameHintCmd015KubectlGetPods => 'நேம்ஸ்பேஸில் உள்ள பாட்களைப் பட்டியலிடு';

  @override
  String get gameHintCmd016KubectlApply => 'கோப்பிலிருந்து வளங்களை உருவாக்கு';

  @override
  String get gameHintCmd017KubectlDescribe => 'வளத்தின் விரிவான தகவலைக் காட்டு';

  @override
  String get gameHintCmd018KubectlScale => 'ரெப்ளிகாக்களின் எண்ணிக்கையை மாற்று';

  @override
  String get gameHintCmd019TerraformInit => 'வழங்குநர்களைப் பதிவிறக்கி அமைவு செய்';

  @override
  String get gameHintCmd020TerraformPlan => 'உள்கட்டமைப்பு மாற்றங்களை முன்னோட்டமிடு';

  @override
  String get gameHintCmd021TerraformApply => 'உள்கட்டமைப்பை உருவாக்கு அல்லது புதுப்பி';

  @override
  String get gameHintCmd022TerraformDestroy => 'நிர்வகிக்கப்படும் உள்கட்டமைப்பை அகற்று';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'தானியக்க பிளேபுக்கை இயக்கு';

  @override
  String get gameHintCmd024Ping => 'ICMP மூலம் அணுகலைச் சோதி';

  @override
  String get gameHintCmd025Traceroute => 'ஹோஸ்டுக்கான பாதையைக் காட்டு';

  @override
  String get gameHintCmd026Curl => 'URL இலிருந்து தரவை மாற்று';

  @override
  String get gameHintCmd027Ssh => 'தொலைநிலை கணினியில் பாதுகாப்பாக உள்நுழை';

  @override
  String get gameHintCmd028CrontabE => 'திட்டமிட்ட பணிகளைத் திருத்து';

  @override
  String get gameHintCmd029SystemctlStatus => 'சேவையின் நிலையைச் சரிபார்';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes இல் ஒரு சார்ட்டை வெளியிடு';

  @override
  String get gameHintWord001Git => 'மூலக் குறியீட்டில் மாற்றங்களைக் கண்காணிக்கிறது.';

  @override
  String get gameHintWord002Aws => 'Amazon இன் கிளவுட் தளம்.';

  @override
  String get gameHintWord003Api => 'மென்பொருள் அமைப்புகள் தொடர்பு கொள்ள உதவும் ஒப்பந்தம்.';

  @override
  String get gameHintWord004Dns => 'டொமைன் பெயர்களை IP முகவரிகளாக மாற்றுகிறது.';

  @override
  String get gameHintWord005Cli => 'கட்டளைகளை இயக்குவதற்கான உரை அடிப்படையிலான இடைமுகம்.';

  @override
  String get gameHintWord006Cpu => 'அறிவுறுத்தல்களை நிறைவேற்றும் செயலி.';

  @override
  String get gameHintWord007Ram => 'இயங்கும் நிரல்கள் பயன்படுத்தும் தற்காலிக நினைவகம்.';

  @override
  String get gameHintWord008Ssh => 'தொலைநிலை ஷெல் அணுகலுக்கான பாதுகாப்பான நெறிமுறை.';

  @override
  String get gameHintWord009Yaml => 'மனிதர்கள் படிக்கக்கூடிய தரவு வரிசைப்படுத்தல் வடிவம்.';

  @override
  String get gameHintWord010Linux => 'திறந்த மூல இயக்க முறைமை கெர்னலும் அதன் குடும்பமும்.';

  @override
  String get gameHintWord011Bash => 'பிரபலமான Unix கட்டளை ஷெல்.';

  @override
  String get gameHintWord012Cloud => 'நெட்வொர்க் வழியாக தேவைக்கேற்ப வழங்கப்படும் கணினி சேவை.';

  @override
  String get gameHintWord013Docker => 'கண்டெய்னர்களை உருவாக்கி இயக்குவதற்கான தளம்.';

  @override
  String get gameHintWord014Azure => 'Microsoft இன் கிளவுட் தளம்.';

  @override
  String get gameHintWord015Python => 'பரவலாகப் பயன்படும் ஸ்கிரிப்டிங் மற்றும் நிரலாக்க மொழி.';

  @override
  String get gameHintWord016Github => 'பிரபலமான Git ஒத்துழைப்பு ஹோஸ்டிங் சேவை.';

  @override
  String get gameHintWord017Bgp => 'தன்னாட்சி அமைப்புகளுக்கு இடையே வழிகளைப் பரிமாறும் வழித்தட நெறிமுறை.';

  @override
  String get gameHintWord018Jenkins => 'CI க்கு அடிக்கடி பயன்படும் தானியக்க சேவையகம்.';

  @override
  String get gameHintWord019Port => 'நெட்வொர்க் சேவைகள் பயன்படுத்தும் எண்ணிடப்பட்ட முனை.';

  @override
  String get gameHintWord020Proxy => 'கிளையண்டுகளுக்காக கோரிக்கைகளை அனுப்பும் சேவையகம்.';

  @override
  String get gameHintWord021Cache => 'அடிக்கடி பயன்படும் தரவுக்கான வேகமான சேமிப்பு.';

  @override
  String get gameHintWord022Cron => 'மீண்டும் நிகழும் கட்டளைகளுக்கான Unix திட்டமிடுபவர்.';

  @override
  String get gameHintWord023Bicep => 'குறியீடாக உள்கட்டமைப்புக்கான Azure இன் அறிவிப்பு மொழி.';

  @override
  String get gameHintWord024Apigee => 'மையப்படுத்தப்பட்ட API மேலாண்மைக்கான Google Cloud தளம்.';

  @override
  String get gameHintWord025Root => 'Unix போன்ற அமைப்புகளில் சிறப்புரிமை கொண்ட நிர்வாகி கணக்கு.';

  @override
  String get gameHintWord026Nginx => 'வலை சேவையகம் மற்றும் ரிவர்ஸ் ப்ராக்ஸி.';

  @override
  String get gameHintWord027Redis => 'கேஷாக அடிக்கடி பயன்படும் நினைவகத் தரவு சேமிப்பு.';

  @override
  String get gameHintWord028Mysql => 'பிரபலமான தொடர்புடைய தரவுத்தள அமைப்பு.';

  @override
  String get gameHintWord029Ruby => 'Chef போன்ற கருவிகள் பயன்படுத்தும் நிரலாக்க மொழி.';

  @override
  String get gameHintWord030Helm => 'Kubernetes உடன் பொதுவாகப் பயன்படும் தொகுப்பு மேலாளர்.';

  @override
  String get gameHintWord031Pod => 'Kubernetes இல் வெளியிடக்கூடிய மிகச் சிறிய அலகு.';

  @override
  String get gameHintWord032Image => 'கண்டெய்னரை உருவாக்கப் பயன்படும் படிக்க மட்டுமான வார்ப்புரு.';

  @override
  String get gameHintWord033Build => 'மூலத்திலிருந்தும் சார்புகளிலிருந்தும் ஒரு ஆர்ட்டிஃபேக்டை உருவாக்குகிறது.';

  @override
  String get gameHintWord034Deploy => 'பயன்பாட்டை ஒரு சூழலில் வெளியிடுகிறது.';

  @override
  String get gameHintWord035Terraform => 'குறியீடாக உள்கட்டமைப்புக்கான HashiCorp கருவி.';

  @override
  String get gameHintWord036Ansible => 'ஏஜென்ட் தேவையற்ற தானியக்க மற்றும் உள்ளமைவு கருவி.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes க்கான கட்டளை வரி கிளையண்ட்.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform இன் சுருக்கம்.';

  @override
  String get gameHintWord039Gitops => 'Git ஐ உண்மையின் மூலமாகப் பயன்படுத்தும் செயல்பாட்டு மாதிரி.';

  @override
  String get gameHintWord040Pipeline => 'உருவாக்கம், சோதனை, வெளியீடு நிலைகளின் தானியங்கி தொடர்.';

  @override
  String get gameHintWord041Container => 'தன் சார்புகளுடன் தொகுக்கப்பட்ட தனிமைப்படுத்தப்பட்ட செயலாக்கம்.';

  @override
  String get gameHintWord042Cluster => 'பகிரப்பட்ட அமைப்பாக நிர்வகிக்கப்படும் கணினிகளின் குழு.';

  @override
  String get gameHintWord043Ingress => 'வெளிப்புற HTTP வழித்தடத்திற்கான Kubernetes API பொருள்.';

  @override
  String get gameHintWord044Firewall => 'பாதுகாப்பு விதிகளின்படி நெட்வொர்க் போக்குவரத்தை வடிகட்டுகிறது.';

  @override
  String get gameHintWord045Subnet => 'IP நெட்வொர்க்கின் தர்க்கரீதியான உட்பிரிவு.';

  @override
  String get gameHintWord046Gateway => 'வெவ்வேறு நெட்வொர்க்குகளை இணைக்கும் நெட்வொர்க் முனை.';

  @override
  String get gameHintWord047Router => 'நெட்வொர்க்குகளுக்கு இடையே பாக்கெட்டுகளை அனுப்புகிறது.';

  @override
  String get gameHintWord048Switch => 'உள்ளூர் நெட்வொர்க்கில் சாதனங்களை இணைக்கிறது.';

  @override
  String get gameHintWord049Repository => 'மூலக் குறியீடு அல்லது தொகுப்புகளுக்கான நிர்வகிக்கப்படும் சேமிப்பு.';

  @override
  String get gameHintWord050Systemd => 'Linux இன் தொடக்க அமைப்பு மற்றும் சேவை மேலாளர்.';

  @override
  String get gameHintWord051Journalctl => 'systemd ஜர்னல் பதிவுகளைப் படிக்கும் கட்டளை.';

  @override
  String get gameHintWord052Permission => 'யார் படிக்கலாம், எழுதலாம், இயக்கலாம் என்பதைக் கட்டுப்படுத்தும் விதி.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud இன் நிர்வகிக்கப்படும் PostgreSQL இணக்கமான தரவுத்தளம்.';

  @override
  String get gameHintWord054Configmap => 'ரகசியமற்ற உள்ளமைவுக்கான Kubernetes பொருள்.';

  @override
  String get gameHintWord055Secret => 'உணர்திறன் வாய்ந்த தரவுக்கான Kubernetes பொருள்.';

  @override
  String get gameHintWord056Persistent => 'பணிச்சுமை மறுதொடக்கத்திற்குப் பின்னும் நிலைக்கும் சேமிப்பை விவரிக்கிறது.';

  @override
  String get gameHintWord057Volume => 'கண்டெய்னருக்குள் பொருத்தப்படும் கோப்பு முறைமை சேமிப்பு.';

  @override
  String get gameHintWord058Storage => 'கோப்புகள், பொருள்கள் அல்லது பிளாக்குகளுக்கான நிலையான இடம்.';

  @override
  String get gameHintWord059Replica => 'அளவீடு அல்லது நம்பகத்தன்மைக்காக பராமரிக்கப்படும் பணிச்சுமை நகல்.';

  @override
  String get gameHintWord060Deployment => 'நிலையற்ற பயன்பாட்டு பாட்களுக்கான Kubernetes கட்டுப்படுத்தி.';

  @override
  String get gameHintWord061Dockerfile => 'Docker இமேஜை உருவாக்கப் பயன்படும் அறிவுறுத்தல்கள்.';

  @override
  String get gameHintWord062Database => 'பயன்பாடுகள் வினவும் ஒழுங்கமைக்கப்பட்ட சேமிப்பு.';

  @override
  String get gameHintWord063Automation => 'கைமுறை படிகள் இன்றி மீண்டும் செய்யக்கூடிய பணிகளை மென்பொருளால் செய்தல்.';

  @override
  String get gameHintWord064Anthos => 'சூழல்கள் முழுவதும் கிளஸ்டர்களை நிர்வகிக்கும் Google Cloud தளம்.';

  @override
  String get gameHintWord065Bigquery => 'பெரிய அளவிலான தரவு பகுப்பாய்விற்கான Google Cloud சேவை.';

  @override
  String get gameHintWord066Bigtable => 'பகுப்பாய்விற்கான Google Cloud அகன்ற நெடுவரிசை NoSQL தரவுத்தளம்.';

  @override
  String get gameHintWord067Loadbalancer => 'வரும் போக்குவரத்தை பல பின்தளங்களிடையே பகிர்ந்தளிக்கிறது.';

  @override
  String get gameHintWord068Prometheus => 'கால-தொடர் அளவீடுகளைச் சேமிக்கும் கண்காணிப்பு அமைப்பு.';

  @override
  String get gameHintWord069Grafana => 'கவனிப்புத் தரவை வினவி காட்சிப்படுத்தும் தளம்.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud இன் நிர்வகிக்கப்படும் NoSQL JSON ஆவணத் தரவுத்தளம்.';

  @override
  String get gameHintWord071Cloudtrail => 'தணிக்கைக்காக API செயல்பாட்டைப் பதிவு செய்யும் AWS சேவை.';

  @override
  String get gameHintWord072Statefulset => 'நிலையான அடையாளம் தேவைப்படும் பணிச்சுமைகளுக்கான Kubernetes கட்டுப்படுத்தி.';

  @override
  String get gameHintWord073Daemonset => 'தேர்ந்தெடுத்த நோடுகளில் ஒரு பாடை இயக்கும் Kubernetes கட்டுப்படுத்தி.';

  @override
  String get gameHintWord074Serviceaccount => 'பணிச்சுமை அல்லது செயலாக்கம் பயன்படுத்தும் Kubernetes அடையாளம்.';

  @override
  String get gameHintWord075Networkpolicy => 'பாட் நெட்வொர்க் போக்குவரத்தைக் கட்டுப்படுத்தும் Kubernetes வளம்.';

  @override
  String get gameHintWord076Certificate => 'TLS இல் அடையாளத்தை நிறுவப் பயன்படும் டிஜிட்டல் ஆவணம்.';

  @override
  String get gameHintWord077Encryption => 'அனுமதிக்கப்பட்டவர்கள் மட்டும் படிக்கும்படி தரவை மாற்றுகிறது.';

  @override
  String get gameHintWord078Observability => 'வெளியீடுகளிலிருந்து அமைப்பின் நடத்தையை அறியும் திறன்.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes கிளஸ்டர்களுக்குள் பொதுவாகப் பயன்படும் DNS சேவையகம்.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API கள் மூலம் கிளவுட் வளங்களை நிர்வகிக்கும் திட்டம்.';

  @override
  String get gameHintWord081Failover => 'தோல்விக்குப் பிறகு காத்திருப்பு கூறுக்கு மாறுதல்.';

  @override
  String get gameHintWord082Idempotency => 'ஒரு செயலை மீண்டும் செய்தாலும் ஒருமுறை செய்த அதே விளைவு தரும் பண்பு.';

  @override
  String get gameHintWord083Dataflow => 'ஸ்ட்ரீம் மற்றும் தொகுதி தரவு செயலாக்கத்திற்கான Google Cloud சேவை.';

  @override
  String get gameHintWord084Orchestration => 'பல தானியங்கி பணிச்சுமைகளின் ஒருங்கிணைந்த மேலாண்மை.';

  @override
  String get gameHintWord085Dataplex => 'நிறுவனத் தரவைக் கண்டறிந்து நிர்வகிக்கும் Google Cloud சேவை.';

  @override
  String get gameHintWord086Serverless => 'உள்கட்டமைப்பு மேலாண்மை மறைக்கப்படும் செயல்பாட்டு மாதிரி.';

  @override
  String get gameHintWord087Distributed => 'கூறுகள் நெட்வொர்க்கில் இணைந்த பல கணினிகளில் இயங்கும் அமைப்பு.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud இன் நிர்வகிக்கப்படும் Apache Spark மற்றும் Hadoop சூழல்.';

  @override
  String get gameHintWord089Dynamodb => 'Terraform நிலைப் பூட்டுதலுக்கு அடிக்கடி பயன்படும் AWS NoSQL தரவுத்தளம்.';

  @override
  String get gameHintWord090Provisioning => 'உள்கட்டமைப்பு அல்லது வளங்களைப் பயன்பாட்டிற்குத் தயார் செய்தல்.';

  @override
  String get gameHintWord091Elasticsearch => 'மையப்படுத்தப்பட்ட பதிவுக்கு பொதுவாகப் பயன்படும் தேடுபொறி.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes கிளஸ்டர் நிலையைக் கொண்டிருக்கும் விசை-மதிப்பு சேமிப்பு.';

  @override
  String get gameHintWord093Authentication => 'பயனர் அல்லது சேவை யார் என்பதைச் சரிபார்க்கும் செயல்முறை.';

  @override
  String get gameHintWord094Authorization => 'ஓர் அடையாளம் எதைச் செய்யலாம் என்பதை முடிவு செய்யும் செயல்முறை.';

  @override
  String get gameHintWord095Expressroute => 'தரவு மையங்களுக்கான பிரத்யேக தனிப்பட்ட இணைப்புக்கான Azure சேவை.';

  @override
  String get gameHintWord096Configuration => 'மென்பொருள் எப்படி நடந்துகொள்ளும் என்பதை நிர்ணயிக்கும் அமைப்புகள்.';

  @override
  String get gameHintWord097Infrastructure => 'பயன்பாடுகளை ஆதரிக்கும் கணினி, நெட்வொர்க், சேமிப்பு வளங்கள்.';

  @override
  String get gameHintWord098Fastconnect => 'பிரத்யேக தனிப்பட்ட நெட்வொர்க் இணைப்புகளுக்கான Oracle Cloud சேவை.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes பயன்படுத்தும் தொழில்துறை தரநிலை கண்டெய்னர் இயக்க சூழல்.';

  @override
  String get gameHintWord100Kubernetes => 'கண்டெய்னர் ஒருங்கிணைப்பு தளம்.';

  @override
  String get gameHintWord101Http => 'வலை வளங்களைக் கோர பயன்படும் பயன்பாட்டு நெறிமுறை.';

  @override
  String get gameHintWord102Https => 'வலை கோரிக்கை நெறிமுறையின் குறியாக்கப்பட்ட பதிப்பு.';

  @override
  String get gameHintWord103Tcp => 'நம்பகமான வரிசைப்படி விநியோகம் வழங்கும் போக்குவரத்து நெறிமுறை.';

  @override
  String get gameHintWord104Udp => 'டேட்டாகிராம்களுக்குப் பயன்படும் இணைப்பற்ற போக்குவரத்து நெறிமுறை.';

  @override
  String get gameHintWord105Tls => 'நெட்வொர்க்கில் பரிமாறப்படும் தரவைப் பாதுகாக்கும் நெறிமுறை.';

  @override
  String get gameHintWord106Ssl => 'நவீன போக்குவரத்து பாதுகாப்பு நெறிமுறையின் பழைய முன்னோடி.';

  @override
  String get gameHintWord107Ftp => 'கோப்புகளை மாற்றுவதற்கான பாரம்பரிய நெறிமுறை.';

  @override
  String get gameHintWord108Sftp => 'பாதுகாப்பான ஷெல் இணைப்பு வழியே செல்லும் கோப்பு பரிமாற்ற நெறிமுறை.';

  @override
  String get gameHintWord109Smtp => 'சேவையகங்களுக்கு இடையே மின்னஞ்சல் அனுப்பப் பயன்படும் நெறிமுறை.';

  @override
  String get gameHintWord110Snmp => 'நெட்வொர்க் சாதனங்களை நிர்வகிக்கவும் கண்காணிக்கவும் பயன்படும் நெறிமுறை.';

  @override
  String get gameHintWord111Icmp => 'நெட்வொர்க் பிழைகளையும் ping செய்திகளையும் கொண்டு செல்லும் நெறிமுறை.';

  @override
  String get gameHintWord112Arp => 'உள்ளூர் IPv4 முகவரிகளை வன்பொருள் முகவரிகளாகத் தீர்க்கிறது.';

  @override
  String get gameHintWord113Dhcp => 'நெட்வொர்க் கிளையண்டுகளுக்கு IP உள்ளமைவை தானாக வழங்குகிறது.';

  @override
  String get gameHintWord114Nat => 'பாக்கெட்டுகள் கேட்வேயைக் கடக்கும்போது நெட்வொர்க் முகவரிகளை மாற்றி எழுதுகிறது.';

  @override
  String get gameHintWord115Vpn => 'தொலைநிலை நெட்வொர்க்குகள் அல்லது பயனர்களை இணைக்கும் குறியாக்கப்பட்ட சுரங்கம்.';

  @override
  String get gameHintWord116Vpc => 'பொது கிளவுடில் தனிமைப்படுத்தப்பட்ட மெய்நிகர் நெட்வொர்க்.';

  @override
  String get gameHintWord117Vlan => 'ஸ்விட்ச் செய்யப்பட்ட நெட்வொர்க்கின் தர்க்கரீதியான பிரிப்பு.';

  @override
  String get gameHintWord118Wan => 'பரந்த புவியியல் பகுதியில் பரவியுள்ள நெட்வொர்க்.';

  @override
  String get gameHintWord119Lan => 'உள்ளூர் பகுதியில் சாதனங்களை இணைக்கும் நெட்வொர்க்.';

  @override
  String get gameHintWord120Cdn => 'வழங்கப்படும் உள்ளடக்கத்தை கேஷ் செய்யும் பகிர்ந்தளிக்கப்பட்ட எட்ஜ் நெட்வொர்க்.';

  @override
  String get gameHintWord121Cidr => 'ஸ்லாஷ் நீளத்துடன் நெட்வொர்க் முன்னொட்டைக் குறிக்கும் குறியீடு.';

  @override
  String get gameHintWord122Host => 'நெட்வொர்க்குடன் இணைக்கப்பட்ட கணினி அல்லது முனை.';

  @override
  String get gameHintWord123Hostname => 'நெட்வொர்க் கணினிக்கு வழங்கப்படும் மனிதர் படிக்கக்கூடிய பெயர்.';

  @override
  String get gameHintWord124Domain => 'இணைய பெயரிடல் அமைப்பில் பெயரிடப்பட்ட நிர்வாகப் பகுதி.';

  @override
  String get gameHintWord125Zone => 'DNS பெயர்வெளியின் நிர்வாகப் பகுதி.';

  @override
  String get gameHintWord126Record => 'DNS தரவுத்தளத்தின் ஒரு தனி உள்ளீடு.';

  @override
  String get gameHintWord127Aaaa => 'பெயரை IPv6 முகவரியாகத் தீர்க்கும் DNS பதிவு வகை.';

  @override
  String get gameHintWord128Ptr => 'தலைகீழ் முகவரி தேடலுக்குப் பயன்படும் DNS பதிவு வகை.';

  @override
  String get gameHintWord129Txt => 'உரை மதிப்புகளைச் சேமிக்கும் DNS பதிவு வகை.';

  @override
  String get gameHintWord130Cname => 'ஒரு பெயரை மற்றொன்றின் மாற்றுப்பெயராக்கும் DNS பதிவு.';

  @override
  String get gameHintWord131Route => 'பாக்கெட்டுகளை இலக்கு நோக்கி செலுத்தும் பாதை உள்ளீடு.';

  @override
  String get gameHintWord132Routing => 'நெட்வொர்க்குகளுக்கு இடையிலான போக்குவரத்துக்கு பாதைகளைத் தேர்ந்தெடுத்தல்.';

  @override
  String get gameHintWord133Packet => 'நெட்வொர்க் வழியாக அனுப்பப்படும் தரவின் ஓர் அலகு.';

  @override
  String get gameHintWord134Protocol => 'அமைப்புகளுக்கு இடையிலான தொடர்புக்கு ஒப்புக்கொள்ளப்பட்ட விதிகள்.';

  @override
  String get gameHintWord135Ack => 'தரவு பெறப்பட்டதை ஒப்புக்கொள்ளும் TCP கொடி.';

  @override
  String get gameHintWord136Bandwidth => 'தொடர்பு இணைப்பின் கொள்ளளவு.';

  @override
  String get gameHintWord137Latency => 'கோரிக்கை அல்லது பாக்கெட்டுக்கு பதில் கிடைக்கும் முன் ஏற்படும் தாமதம்.';

  @override
  String get gameHintWord138Throughput => 'ஒரு அலகு நேரத்தில் செயலாக்கப்படும் பயனுள்ள வேலை அல்லது தரவின் அளவு.';

  @override
  String get gameHintWord139Mtu => 'துண்டாக்கம் இல்லாமல் இணைப்பு அனுப்பக்கூடிய மிகப்பெரிய பாக்கெட் அளவு.';

  @override
  String get gameHintWord140Alpn => 'பயன்பாட்டு அடுக்கு நெறிமுறையை பேசித் தீர்மானிக்கும் TLS நீட்டிப்பு.';

  @override
  String get gameHintWord141Grep => 'பொருந்தும் வடிவத்திற்காக உரை வரிகளைத் தேடுகிறது.';

  @override
  String get gameHintWord142Sed => 'உரை மாற்றீடுகளுக்கு பொதுவாகப் பயன்படும் ஸ்ட்ரீம் எடிட்டர்.';

  @override
  String get gameHintWord143Lscpu => 'செயலி கட்டமைப்பு மற்றும் கோர் விவரங்களைக் காட்டும் Linux கட்டளை.';

  @override
  String get gameHintWord144Find => 'கோப்பு நிபந்தனைகளைக் கொண்டு அடைவு மரத்தில் தேடுகிறது.';

  @override
  String get gameHintWord145Lsblk => 'பிளாக் சாதனங்களையும் அவற்றின் தொடர்புகளையும் பட்டியலிடும் Linux கட்டளை.';

  @override
  String get gameHintWord146Sort => 'உரை வரிகளை வரிசைப்படுத்துகிறது.';

  @override
  String get gameHintWord147Uniq => 'அடுத்தடுத்த நகல் வரிகளை வடிகட்டுகிறது.';

  @override
  String get gameHintWord148Head => 'கோப்பின் தொடக்கத்தை அச்சிடுகிறது.';

  @override
  String get gameHintWord149Tail => 'கோப்பின் முடிவை அச்சிடுகிறது; சேர்க்கப்படும் பதிவுகளைத் தொடரலாம்.';

  @override
  String get gameHintWord150Cat => 'கோப்புகளை இணைத்து அவற்றின் உள்ளடக்கத்தை அச்சிடுகிறது.';

  @override
  String get gameHintWord151Cut => 'வரிகளிலிருந்து தேர்ந்தெடுத்த புலங்கள் அல்லது எழுத்து நெடுவரிசைகளை எடுக்கிறது.';

  @override
  String get gameHintWord152Tee => 'நிலையான உள்ளீட்டை கோப்புகளுக்கும் நிலையான வெளியீட்டுக்கும் நகலெடுக்கிறது.';

  @override
  String get gameHintWord153Echo => 'தன் வாதங்களை நிலையான வெளியீட்டில் எழுதுகிறது.';

  @override
  String get gameHintWord154Printf => 'ஷெல் அல்லது நிரலிலிருந்து வடிவமைக்கப்பட்ட உரையை அச்சிடுகிறது.';

  @override
  String get gameHintWord155Touch => 'கோப்பு நேரமுத்திரைகளைப் புதுப்பிக்கிறது அல்லது வெற்றுக் கோப்பை உருவாக்குகிறது.';

  @override
  String get gameHintWord156Mkdir => 'அடைவுகளை உருவாக்குகிறது.';

  @override
  String get gameHintWord157Rmdir => 'வெற்று அடைவுகளை அகற்றுகிறது.';

  @override
  String get gameHintWord158Chmod => 'Unix கோப்பு அனுமதி பிட்களை மாற்றுகிறது.';

  @override
  String get gameHintWord159Chown => 'கோப்பு உரிமையை மாற்றுகிறது.';

  @override
  String get gameHintWord160Chgrp => 'கோப்பின் குழு உரிமையை மாற்றுகிறது.';

  @override
  String get gameHintWord161Pwd => 'தற்போதைய பணி அடைவை அச்சிடுகிறது.';

  @override
  String get gameHintWord162Apt => 'Debian அடிப்படையிலான அமைப்புகள் பயன்படுத்தும் தொகுப்பு மேலாண்மை கருவி.';

  @override
  String get gameHintWord163Top => 'செயலாக்கங்கள் மற்றும் அமைப்பு வள பயன்பாட்டின் ஊடாடும் காட்சி.';

  @override
  String get gameHintWord164Agent => 'ஹோஸ்டில் வேலையை இயக்கும் அல்லது அறிக்கையிடும் மென்பொருள் கூறு.';

  @override
  String get gameHintWord165Kill => 'செயலாக்கத்தின் அடையாளங்காட்டி மூலம் அதற்கு சிக்னல் அனுப்புகிறது.';

  @override
  String get gameHintWord166Signal => 'இயக்க முறைமை ஒரு செயலாக்கத்திற்கு வழங்கும் அறிவிப்பு.';

  @override
  String get gameHintWord167Sigkill => 'செயலாக்கத்தை உடனடியாக நிறுத்தும் Unix சிக்னல்.';

  @override
  String get gameHintWord168Nice => 'சரிசெய்யப்பட்ட திட்டமிடல் முன்னுரிமையுடன் செயலாக்கத்தைத் தொடங்குகிறது.';

  @override
  String get gameHintWord169Renice => 'இயங்கும் செயலாக்கத்தின் திட்டமிடல் முன்னுரிமையை மாற்றுகிறது.';

  @override
  String get gameHintWord170Jobs => 'தற்போதைய ஷெல் நிர்வகிக்கும் பணிகளைப் பட்டியலிடுகிறது.';

  @override
  String get gameHintWord171Nohup => 'hangup சிக்னல்களைப் புறக்கணித்து கட்டளையை இயக்குகிறது.';

  @override
  String get gameHintWord172Screen => 'பிரிக்கக்கூடிய அமர்வுகளை ஆதரிக்கும் டெர்மினல் மல்டிபிளெக்சர்.';

  @override
  String get gameHintWord173Uptime => 'அமைப்பு எவ்வளவு நேரம் இயங்குகிறது என்பதைத் தெரிவிக்கிறது.';

  @override
  String get gameHintWord174Uname => 'அமைப்பு மற்றும் கெர்னல் தகவலை அச்சிடுகிறது.';

  @override
  String get gameHintWord175Whoami => 'செயல்திறன் மிக்க தற்போதைய பயனர் பெயரை அச்சிடுகிறது.';

  @override
  String get gameHintWord176Umask => 'கோப்புகளை உருவாக்கும்போது பயன்படும் அனுமதி முகமூடியை அமைக்கிறது.';

  @override
  String get gameHintWord177Usermod => 'ஏற்கனவே உள்ள பயனர் கணக்கை மாற்றும் Linux கட்டளை.';

  @override
  String get gameHintWord178Crontab => 'திட்டமிடப்பட்ட மீண்டும் நிகழும் ஷெல் பணிகளைத் திருத்துகிறது அல்லது பட்டியலிடுகிறது.';

  @override
  String get gameHintWord179Findmnt => 'பொருத்தப்பட்ட கோப்பு முறைமை தகவலைக் காட்டும் Linux கட்டளை.';

  @override
  String get gameHintWord180Mount => 'கோப்பு முறைமையை அடைவு மரத்துடன் இணைக்கிறது.';

  @override
  String get gameHintWord181Sigterm => 'செயலாக்கத்தை மென்மையாக நிறுத்தக் கோரும் Unix சிக்னல்.';

  @override
  String get gameHintWord182Fstab => 'பொருத்த வேண்டிய கோப்பு முறைமைகளை விவரிக்கும் அமைப்பு அட்டவணை.';

  @override
  String get gameHintWord183Swap => 'இயற்பியல் நினைவகத்திற்குத் துணையாகப் பயன்படும் வட்டு சார்ந்த இடம்.';

  @override
  String get gameHintWord184Tmpfs => 'மெய்நிகர் நினைவகத்தால் ஆதரிக்கப்படும் தற்காலிக கோப்பு முறைமை.';

  @override
  String get gameHintWord185Proc => 'செயலாக்கம் மற்றும் கெர்னல் தகவலை வெளிப்படுத்தும் Linux மெய்நிகர் கோப்பு முறைமை.';

  @override
  String get gameHintWord186Syslog => 'நிலையான பதிவு நெறிமுறை மற்றும் செய்தி வடிவம்.';

  @override
  String get gameHintWord187Dmesg => 'கெர்னல் ரிங் பஃபரிலிருந்து செய்திகளைக் காட்டுகிறது.';

  @override
  String get gameHintWord188Free => 'பயன்படுத்தப்பட்ட மற்றும் கிடைக்கும் அமைப்பு நினைவகத்தைத் தெரிவிக்கிறது.';

  @override
  String get gameHintWord189Stat => 'விரிவான கோப்பு மெட்டாடேட்டாவைக் காட்டுகிறது.';

  @override
  String get gameHintWord190Lsof => 'திறந்த கோப்புகளையும் அவற்றை வைத்திருக்கும் செயலாக்கங்களையும் பட்டியலிடுகிறது.';

  @override
  String get gameHintWord191Netstat => 'நெட்வொர்க் இணைப்புகளையும் வழித்தடத் தகவலையும் காட்டுகிறது.';

  @override
  String get gameHintWord192Checksum => 'தரவில் மாற்றம் அல்லது சிதைவைக் கண்டறியப் பயன்படும் கணக்கிடப்பட்ட மதிப்பு.';

  @override
  String get gameHintWord193Ping => 'echo கோரிக்கைகள் மூலம் நெட்வொர்க் அணுகலைச் சோதிக்கிறது.';

  @override
  String get gameHintWord194Traceroute => 'நெட்வொர்க் இலக்கை நோக்கிய இடைநிலை ஹாப்களைக் காட்டுகிறது.';

  @override
  String get gameHintWord195Resolver => 'பெயர் வினவல்களுக்கான பதில்களைத் தேடும் DNS கூறு.';

  @override
  String get gameHintWord196Nslookup => 'DNS பெயர்களையும் முகவரிகளையும் தேடுகிறது.';

  @override
  String get gameHintWord197Telnet => 'குறியாக்கமற்ற பழைய தொலைநிலை டெர்மினல் நெறிமுறை.';

  @override
  String get gameHintWord198Tftp => 'UDP அடிப்படையிலான எளிய கோப்பு பரிமாற்ற நெறிமுறை.';

  @override
  String get gameHintWord199Daemon => 'Unix போன்ற அமைப்புகளில் பின்னணி சேவை செயலாக்கம்.';

  @override
  String get gameHintWord200Kernel => 'இயக்க முறைமை வளங்களை நிர்வகிக்கும் மைய கூறு.';

  @override
  String get gameHintWord201Commit => 'பதிப்புக் கட்டுப்பாட்டில் பதிவு செய்யப்பட்ட மாற்றங்களின் நிலைப்படம்.';

  @override
  String get gameHintWord202Branch => 'ஒரு மேம்பாட்டு வரிசையைக் குறிக்கும் நகர்த்தக்கூடிய குறிப்பு.';

  @override
  String get gameHintWord203Merge => 'வெவ்வேறு மேம்பாட்டு வரிசைகளின் வரலாறுகளை இணைக்கிறது.';

  @override
  String get gameHintWord204Rebase => 'வேறு அடிப்படை கமிட்டின் மேல் கமிட்களை மீண்டும் இயக்குகிறது.';

  @override
  String get gameHintWord205Clone => 'தொலைநிலை களஞ்சியத்தின் உள்ளூர் நகலை உருவாக்குகிறது.';

  @override
  String get gameHintWord206Fetch => 'இணைக்காமல் தொலைநிலை பொருள்களையும் குறிப்புகளையும் பதிவிறக்குகிறது.';

  @override
  String get gameHintWord207Pull => 'மாற்றங்களைப் பெற்று தற்போதைய கிளையில் ஒருங்கிணைக்கிறது.';

  @override
  String get gameHintWord208Push => 'உள்ளூர் கமிட்களை தொலைநிலை களஞ்சியத்திற்கு அனுப்புகிறது.';

  @override
  String get gameHintWord209Stash => 'சமர்ப்பிக்கப்படாத பணி-மர மாற்றங்களைத் தற்காலிகமாகச் சேமிக்கிறது.';

  @override
  String get gameHintWord210Revert => 'மற்றொரு கமிட்டை செயல்தவிர்க்கும் கமிட்டை உருவாக்குகிறது.';

  @override
  String get gameHintWord211Reset => 'Git குறிப்பை நகர்த்துகிறது; இன்டெக்ஸ் அல்லது பணிக் கோப்புகளையும் மீட்டமைக்கலாம்.';

  @override
  String get gameHintWord212Reflog => 'Git குறிப்புகளின் புதுப்பிப்புகளின் உள்ளூர் வரலாறு.';

  @override
  String get gameHintWord213Diff => 'பதிப்புகள் அல்லது கோப்புகளுக்கு இடையிலான வேறுபாடுகளைக் காட்டுகிறது.';

  @override
  String get gameHintWord214Status => 'ஸ்டேஜ் செய்த, மாற்றிய, கண்காணிக்கப்படாத கோப்புகளைத் தெரிவிக்கிறது.';

  @override
  String get gameHintWord215Checkout => 'திருத்தங்களுக்கு மாற அல்லது கோப்புகளை மீட்டெடுக்கும் Git கட்டளை.';

  @override
  String get gameHintWord216Tag => 'பொதுவாக வெளியீட்டைக் குறிக்கும் பெயரிட்ட குறிப்பு.';

  @override
  String get gameHintWord217Remote => 'மற்றொரு களஞ்சியத்துடனான பெயரிட்ட இணைப்பு.';

  @override
  String get gameHintWord218Origin => 'குளோன் செய்த களஞ்சிய ரிமோட்டுக்கு வழங்கப்படும் இயல்புநிலை பெயர்.';

  @override
  String get gameHintWord219Upstream => 'உள்ளூர் கிளையுடன் தொடர்புடைய தொலைநிலை கண்காணிப்பு கிளை.';

  @override
  String get gameHintWord220Worktree => 'களஞ்சியத்துடன் இணைக்கப்பட்ட செக்அவுட் செய்த பணி அடைவு.';

  @override
  String get gameHintWord221Registry => 'கண்டெய்னர் இமேஜ்களைச் சேமித்து விநியோகிக்கும் சேவை.';

  @override
  String get gameHintWord222Digest => 'கண்டெய்னர் இமேஜின் உள்ளடக்க அடிப்படையிலான அடையாளங்காட்டி.';

  @override
  String get gameHintWord223Layer => 'கண்டெய்னர் இமேஜின் பகுதியாக அமையும் கோப்பு முறைமை மாற்றங்கள்.';

  @override
  String get gameHintWord224Entrypoint => 'கண்டெய்னரின் முதன்மை இயக்கக்கூடியதை வரையறுக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord225Cmd => 'இயல்புநிலை கட்டளை அல்லது வாதங்களைக் குறிப்பிடும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord226Workdir => 'பணி அடைவை அமைக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord227Copy => 'பில்ட் சூழல் கோப்புகளை இமேஜில் நகலெடுக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord228Add => 'உள்ளூர் காப்பகங்களையும் பிரிக்கக்கூடிய Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord229Run => 'உருவாக்க நேரக் கட்டளையை இயக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord230Env => 'சூழல் மாறிகளை வரையறுக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord231Arg => 'உருவாக்க நேர மாறியை அறிவிக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord232Expose => 'கண்டெய்னர் போர்ட்டை ஆவணப்படுத்தும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord233User => 'பின்வரும் கட்டளைகளுக்கான கணக்கைத் தேர்ந்தெடுக்கும் Dockerfile அறிவுறுத்தல்.';

  @override
  String get gameHintWord234Healthcheck => 'கண்டெய்னர் நலனை எப்படிச் சோதிப்பது என்பதை விவரிக்கும் அறிவுறுத்தல்.';

  @override
  String get gameHintWord235Shebang => 'இயக்க வேண்டிய இன்டர்ப்ரெட்டரை அடையாளம் காட்டும் ஸ்கிரிப்டின் முதல் வரி.';

  @override
  String get gameHintWord236Compose => 'பல-கண்டெய்னர் பயன்பாடுகளை வரையறுத்து இயக்கும் Docker கருவி.';

  @override
  String get gameHintWord237Bridge => 'உள்ளூர் கண்டெய்னர் நெட்வொர்க்கிற்கான பொதுவான Docker நெட்வொர்க் டிரைவர்.';

  @override
  String get gameHintWord238Overlay => 'பல ஹோஸ்ட்களில் உள்ள கண்டெய்னர்களை இணைக்கும் நெட்வொர்க்.';

  @override
  String get gameHintWord239None => 'கண்டெய்னர் நெட்வொர்க்கிங்கை முடக்கும் Docker நெட்வொர்க் டிரைவர்.';

  @override
  String get gameHintWord240Prune => 'பயன்படுத்தப்படாத கண்டெய்னர் வளங்களை அகற்றுகிறது.';

  @override
  String get gameHintWord241Replicaset => 'விரும்பிய பாட் எண்ணிக்கையைப் பராமரிக்கும் Kubernetes கட்டுப்படுத்தி.';

  @override
  String get gameHintWord242Service => 'பாட்களுக்கு நிலையான அணுகலை வழங்கும் Kubernetes சுருக்கம்.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes சேவைக்கு ஆதரவாக உள்ள முகவரிகள்.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes வளங்களைத் தொகுக்கும் தர்க்கரீதியான வரம்பு.';

  @override
  String get gameHintWord245Node => 'Kubernetes பாட்களை இயக்கும் பணி கணினி.';

  @override
  String get gameHintWord246Kubelet => 'பாட் இயக்கத்தை நிர்வகிக்கும் ஒவ்வொரு நோடிலும் உள்ள ஏஜென்ட்.';

  @override
  String get gameHintWord247Pvc => 'நிலையான சேமிப்பிற்கான Kubernetes கோரிக்கை.';

  @override
  String get gameHintWord248Apiserver => 'கிளஸ்டர் API ஐ வெளிப்படுத்தும் Kubernetes கட்டுப்பாட்டுத் தள கூறு.';

  @override
  String get gameHintWord249Role => 'பங்கு அடிப்படையிலான அணுகல் கட்டுப்பாட்டில் பெயரிட்ட அனுமதிகளின் தொகுப்பு.';

  @override
  String get gameHintWord250Resourcequota => 'நேம்ஸ்பேஸில் வள நுகர்வை வரம்பிடும் Kubernetes பொருள்.';

  @override
  String get gameHintWord251Selector => 'லேபிள்கள் மூலம் வளங்களைப் பொருத்தும் வெளிப்பாடு.';

  @override
  String get gameHintWord252Taint => 'பொருந்தும் சகிப்புத்தன்மை இல்லாத பாட்களை விலக்கும் நோட் பண்பு.';

  @override
  String get gameHintWord253Toleration => 'taint செய்யப்பட்ட நோடில் திட்டமிட அனுமதிக்கும் பாட் அமைப்பு.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes நோடை திட்டமிட இயலாததாகக் குறிக்கிறது.';

  @override
  String get gameHintWord255Uncordon => 'cordon செய்த நோடை மீண்டும் திட்டமிடக்கூடியதாக்குகிறது.';

  @override
  String get gameHintWord256Drain => 'நோட் பராமரிப்புக்கு முன் பணிச்சுமைகளைப் பாதுகாப்பாக வெளியேற்றுகிறது.';

  @override
  String get gameHintWord257Job => 'ஒரு பணியை முடியும் வரை இயக்கும் Kubernetes பணிச்சுமை.';

  @override
  String get gameHintWord258Cronjob => 'அட்டவணைப்படி ஜாப்களை உருவாக்கும் Kubernetes பணிச்சுமை.';

  @override
  String get gameHintWord259Readiness => 'கண்டெய்னர் போக்குவரத்தைப் பெற முடியுமா என்பதைக் காட்டும் ஆய்வு.';

  @override
  String get gameHintWord260Liveness => 'கண்டெய்னரை மறுதொடக்கம் செய்ய வேண்டுமா என்பதைக் காட்டும் ஆய்வு.';

  @override
  String get gameHintWord261Canary => 'புதிய பதிப்பை சிறிய அளவு போக்குவரத்துக்கு வெளிப்படுத்தும் வெளியீட்டு அணுகுமுறை.';

  @override
  String get gameHintWord262Rolling => 'இயங்கும் நிகழ்வுகளை படிப்படியாக மாற்றும் புதுப்பிப்பு உத்தி.';

  @override
  String get gameHintWord263Rollback => 'முன்பு சரியாக வேலை செய்த பயன்பாட்டுப் பதிப்பை மீட்டெடுக்கிறது.';

  @override
  String get gameHintWord264Rollout => 'பயன்பாட்டின் புதிய பதிப்பை படிப்படியாக வெளியிடுதல்.';

  @override
  String get gameHintWord265Recreate => 'மாற்றுகளைத் தொடங்கும் முன் பழைய பாட்களை நிறுத்தும் வெளியீட்டு உத்தி.';

  @override
  String get gameHintWord266Blue => 'blue-green வெளியீட்டில் உள்ள இரு சூழல்களில் ஒன்று.';

  @override
  String get gameHintWord267Green => 'blue-green வெளியீட்டில் உள்ள மற்றொரு சூழல்.';

  @override
  String get gameHintWord268Artifact => 'பில்ட் பைப்லைன் உருவாக்கும் பதிப்பிடப்பட்ட வெளியீடு.';

  @override
  String get gameHintWord269Staging => 'வெளியீட்டைச் சரிபார்க்கப் பயன்படும் உற்பத்திக்கு முந்தைய சூழல்.';

  @override
  String get gameHintWord270Production => 'உண்மையான இறுதிப் பயனர்களுக்குச் சேவை செய்யும் சூழல்.';

  @override
  String get gameHintWord271Release => 'பயன்பாட்டிற்கு வழங்கப்படும் மென்பொருள் பதிப்பு.';

  @override
  String get gameHintWord272Version => 'மென்பொருள் திருத்தத்தை வேறுபடுத்தும் அடையாளங்காட்டி.';

  @override
  String get gameHintWord273Revision => 'ஆவணம் அல்லது குறியீட்டுத் தளத்தின் அடையாளம் காணக்கூடிய பதிப்பு.';

  @override
  String get gameHintWord274Webhook => 'நிகழ்வு நடக்கும்போது அனுப்பப்படும் HTTP அறிவிப்பு.';

  @override
  String get gameHintWord275Runbook => 'அமைப்பை இயக்க அல்லது மீட்டெடுக்க ஆவணப்படுத்தப்பட்ட நடைமுறை.';

  @override
  String get gameHintWord276Workspace => 'செயல்படும் திட்ட வளங்களைக் கொண்ட அடைவு அல்லது வரம்பு.';

  @override
  String get gameHintWord277Credentials => 'அமைப்பை அணுகப் பயன்படும் அங்கீகாரப் பொருள்.';

  @override
  String get gameHintWord278Trigger => 'பைப்லைனைத் தொடங்கும் நிகழ்வு அல்லது நிபந்தனை.';

  @override
  String get gameHintWord279Parameter => 'ஜாப் அல்லது செயல்பாட்டிற்கு வழங்கப்படும் பெயரிட்ட உள்ளீடு.';

  @override
  String get gameHintWord280Access => 'அங்கீகாரத்திற்கு உட்பட்டு வளத்தைப் பயன்படுத்தும் திறன்.';

  @override
  String get gameHintWord281Module => 'மீண்டும் பயன்படுத்தக்கூடிய உள்கட்டமைப்பு வரையறைகளின் குழு.';

  @override
  String get gameHintWord282Provider => 'உள்ளமைவை வெளிப்புற API உடன் இணைக்கும் Terraform செருகுநிரல்.';

  @override
  String get gameHintWord283Resource => 'உள்ளமைவில் அறிவிக்கப்பட்ட நிர்வகிக்கப்படும் உள்கட்டமைப்புப் பொருள்.';

  @override
  String get gameHintWord284Variable => 'உள்ளமைவு அல்லது குறியீடு பயன்படுத்தும் பெயரிட்ட உள்ளீட்டு மதிப்பு.';

  @override
  String get gameHintWord285Output => 'உள்கட்டமைப்பு உள்ளமைவு திருப்பித் தரும் வெளிப்படுத்தப்பட்ட மதிப்பு.';

  @override
  String get gameHintWord286Tfstate => 'Terraform நிலை நிலைப்படங்களுடன் தொடர்புடைய கோப்பு பின்னொட்டு.';

  @override
  String get gameHintWord287Tfvars => 'Terraform உள்ளீட்டு மாறி மதிப்புகளுக்குப் பயன்படும் கோப்பு பின்னொட்டு.';

  @override
  String get gameHintWord288Backend => 'நிலை சேமிப்பைக் கட்டுப்படுத்தும் Terraform உள்ளமைவு.';

  @override
  String get gameHintWord289Plan => 'முன்மொழியப்பட்ட உள்கட்டமைப்பு மாற்றங்களின் Terraform முன்னோட்டம்.';

  @override
  String get gameHintWord290Apply => 'முன்மொழியப்பட்ட மாற்றங்களை நிறைவேற்றும் Terraform செயல்பாடு.';

  @override
  String get gameHintWord291Destroy => 'நிர்வகிக்கப்படும் உள்கட்டமைப்பை அகற்றும் Terraform செயல்பாடு.';

  @override
  String get gameHintWord292Import => 'ஏற்கனவே உள்ள வளத்தை உள்கட்டமைப்பு நிர்வாகத்தின் கீழ் கொண்டுவருகிறது.';

  @override
  String get gameHintWord293Refresh => 'பதிவு செய்யப்பட்ட நிலையை உண்மையான உள்கட்டமைப்புடன் ஒத்திசைக்கிறது.';

  @override
  String get gameHintWord294Validate => 'உள்ளமைவின் தொடரியலையும் உள் இசைவையும் சரிபார்க்கிறது.';

  @override
  String get gameHintWord295Fmt => 'நியமன உள்ளமைவு வடிவமைப்பைப் பயன்படுத்தும் Terraform கட்டளை.';

  @override
  String get gameHintWord296Init => 'Terraform வழங்குநர்களையும் பணி அடைவையும் தொடக்குகிறது.';

  @override
  String get gameHintWord297Executor => 'பில்டை இயக்கக்கூடிய Jenkins பணியாளர் இடம்.';

  @override
  String get gameHintWord298Dependencies => 'ஒரு கூறு மற்றொன்றுக்கு முன் தேவைப்படும் தொடர்புகள்.';

  @override
  String get gameHintWord299Drift => 'அறிவிக்கப்பட்ட மற்றும் உண்மையான உள்கட்டமைப்பு நிலைக்கு இடையிலான வேறுபாடு.';

  @override
  String get gameHintWord300Locking => 'ஒரே நேரத்தில் பலர் பகிரப்பட்ட நிலையை மாற்றுவதைத் தடுக்கிறது.';

  @override
  String get gameHintWord301Playbook => 'தானியக்க ப்ளேக்களையும் பணிகளையும் விவரிக்கும் Ansible ஆவணம்.';

  @override
  String get gameHintWord302Inventory => 'நிர்வகிக்கப்படும் ஹோஸ்ட்கள் மற்றும் குழுக்களின் Ansible தொகுப்பு.';

  @override
  String get gameHintWord303Facts => 'நிர்வகிக்கப்படும் ஹோஸ்ட்கள் பற்றி சேகரிக்கப்பட்ட அமைப்புத் தகவல்.';

  @override
  String get gameHintWord304Task => 'தானியக்கத்தில் ஒரு தனி வேலை அலகு.';

  @override
  String get gameHintWord305Handler => 'மாற்றத்தால் அறிவிக்கப்படும்போது இயங்கும் Ansible பணி.';

  @override
  String get gameHintWord306Notify => 'மாற்றிய பணிக்குப் பின் ஹேண்ட்லரை வரிசைப்படுத்தும் Ansible கட்டளை.';

  @override
  String get gameHintWord307Become => 'சிறப்புரிமை உயர்வை இயக்கும் Ansible அமைப்பு.';

  @override
  String get gameHintWord308Vault => 'உணர்திறன் தானியக்கத் தரவை குறியாக்கும் Ansible அம்சம்.';

  @override
  String get gameHintWord309Register => 'பணி முடிவை மாறியில் சேமிக்கும் Ansible கட்டளை.';

  @override
  String get gameHintWord310When => 'நிபந்தனைக்குட்பட்ட பணி இயக்கத்தைக் கட்டுப்படுத்தும் Ansible திறவுச்சொல்.';

  @override
  String get gameHintWord311Loop => 'தொகுப்பின் மீது தானியக்கப் பணியை மீண்டும் செய்கிறது.';

  @override
  String get gameHintWord312Include => 'மீண்டும் பயன்படுத்தக்கூடிய தானியக்க உள்ளடக்கத்தை இயக்கநேரத்தில் ஏற்றுகிறது.';

  @override
  String get gameHintWord313Tags => 'தானியக்கப் பணிகளின் உட்தொகுப்புகளைத் தேர்ந்தெடுக்கப் பயன்படும் லேபிள்கள்.';

  @override
  String get gameHintWord314Template => 'வெளியிடும் முன் மாறிகளுடன் உருவாக்கப்படும் கோப்பு.';

  @override
  String get gameHintWord315Jinja => 'Ansible பயன்படுத்தும் வார்ப்புரு மொழி.';

  @override
  String get gameHintWord316Abstraction => 'செயலாக்க விவரங்களை எளிய இடைமுகத்தின் பின் மறைத்தல்.';

  @override
  String get gameHintWord317Agile => 'கருத்துக்களை வலியுறுத்தும் மீண்டும் மீண்டும் செய்யும் மென்பொருள் வழங்கல் அணுகுமுறை.';

  @override
  String get gameHintWord318Puppet => 'அறிவிப்பு மேனிஃபெஸ்ட்களைப் பயன்படுத்தும் உள்ளமைவு மேலாண்மை கருவி.';

  @override
  String get gameHintWord319Airflow => 'பணிப்பாய்வு DAG களைத் திட்டமிட்டு ஒருங்கிணைக்கும் தளம்.';

  @override
  String get gameHintWord320Argo => 'GitOps வெளியீட்டுக் கட்டுப்படுத்தியை உள்ளடக்கிய கிளவுட்-நேட்டிவ் திட்டக் குடும்பம்.';

  @override
  String get gameHintWord321Rds => 'AWS நிர்வகிக்கப்படும் தொடர்புடைய தரவுத்தள சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord322Sqs => 'AWS நிர்வகிக்கப்படும் செய்தி வரிசையின் சுருக்கம்.';

  @override
  String get gameHintWord323Sns => 'AWS வெளியிடு-சந்தா அறிவிப்பு சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord324Ses => 'AWS மின்னஞ்சல் அனுப்பும் சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord325Iam => 'கிளவுட் அடையாள மற்றும் அணுகல் மேலாண்மையின் சுருக்கம்.';

  @override
  String get gameHintWord326Kms => 'AWS குறியாக்க விசை மேலாண்மை சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord327Waf => 'பயன்பாட்டு அடுக்கு வலை கோரிக்கைகளை வடிகட்டும் ஃபயர்வால்.';

  @override
  String get gameHintWord328Eks => 'AWS நிர்வகிக்கப்படும் Kubernetes சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord329Ecs => 'AWS நிர்வகிக்கப்படும் கண்டெய்னர் ஒருங்கிணைப்பு சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord330Ecr => 'AWS கண்டெய்னர் இமேஜ் பதிவகத்தின் சுருக்கம்.';

  @override
  String get gameHintWord331Aurora => 'MySQL மற்றும் PostgreSQL உடன் இணக்கமான AWS தொடர்புடைய தரவுத்தளம்.';

  @override
  String get gameHintWord332Redshift => 'AWS பகுப்பாய்வு தரவுக் கிடங்கு.';

  @override
  String get gameHintWord333Neptune => 'AWS நிர்வகிக்கப்படும் வரைபடத் தரவுத்தளம்.';

  @override
  String get gameHintWord334Elasticache => 'AWS நிர்வகிக்கப்படும் நினைவக கேஷ் சேவை.';

  @override
  String get gameHintWord335Athena => 'பொருள் சேமிப்புத் தரவை SQL மூலம் வினவும் AWS சேவை.';

  @override
  String get gameHintWord336Glue => 'AWS சர்வர்லெஸ் தரவு ஒருங்கிணைப்பு மற்றும் ETL சேவை.';

  @override
  String get gameHintWord337Emr => 'நிர்வகிக்கப்படும் பெருந்தரவு செயலாக்க கிளஸ்டர்களுக்கான AWS தளம்.';

  @override
  String get gameHintWord338Lambda => 'சர்வர்களை நிர்வகிக்காமல் செயல்பாடுகளை இயக்கும் AWS சேவை.';

  @override
  String get gameHintWord339Cloudfront => 'AWS உலகளாவிய உள்ளடக்க விநியோக நெட்வொர்க்.';

  @override
  String get gameHintWord340Cloudwatch => 'அளவீடுகள், பதிவுகள், எச்சரிக்கைகளைச் சேகரிக்கும் AWS சேவை.';

  @override
  String get gameHintWord341Cloudshell => 'AWS உலாவி அடிப்படையிலான ஷெல் சூழல்.';

  @override
  String get gameHintWord342Codecommit => 'AWS நிர்வகிக்கப்படும் Git களஞ்சிய சேவை.';

  @override
  String get gameHintWord343Codebuild => 'மூலத்தைத் தொகுத்து பில்ட் சோதனைகளை இயக்கும் AWS சேவை.';

  @override
  String get gameHintWord344Codedeploy => 'AWS தானியங்கி பயன்பாட்டு வெளியீட்டு சேவை.';

  @override
  String get gameHintWord345Codepipeline => 'AWS தொடர் விநியோக பைப்லைன் சேவை.';

  @override
  String get gameHintWord346Guardduty => 'AWS அறிவார்ந்த அச்சுறுத்தல் கண்டறிதல் சேவை.';

  @override
  String get gameHintWord347Inspector => 'பணிச்சுமைகளில் பாதிப்புகளை மதிப்பிடும் AWS சேவை.';

  @override
  String get gameHintWord348Macie => 'பொருள் சேமிப்பில் உணர்திறன் தரவைக் கண்டறியும் AWS சேவை.';

  @override
  String get gameHintWord349Shield => 'AWS நிர்வகிக்கப்படும் DDoS பாதுகாப்பு சேவை.';

  @override
  String get gameHintWord350Snowball => 'பெரிய தரவு பரிமாற்றங்களுக்கான AWS இயற்பியல் சாதனம்.';

  @override
  String get gameHintWord351Snowcone => 'AWS ஆஃப்லைன் பரிமாற்றக் குடும்பத்தின் சிறிய உறுதியான சாதனம்.';

  @override
  String get gameHintWord352Datasync => 'AWS தானியங்கி ஆன்லைன் தரவு பரிமாற்ற சேவை.';

  @override
  String get gameHintWord353Msk => 'AWS நிர்வகிக்கப்படும் Apache Kafka சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord354Backup => 'மீட்புக்காக வைத்திருக்கும் தரவின் நகல்.';

  @override
  String get gameHintWord355Transcribe => 'பேச்சை உரையாக மாற்றும் AWS சேவை.';

  @override
  String get gameHintWord356Translate => 'மொழிகளுக்கிடையே உரையை மொழிபெயர்க்கும் AWS சேவை.';

  @override
  String get gameHintWord357Rekognition => 'படங்களையும் வீடியோவையும் பகுப்பாயும் AWS சேவை.';

  @override
  String get gameHintWord358Comprehend => 'AWS இயற்கை மொழி பகுப்பாய்வு சேவை.';

  @override
  String get gameHintWord359Textract => 'ஆவணங்களிலிருந்து உரையையும் அட்டவணைகளையும் எடுக்கும் AWS சேவை.';

  @override
  String get gameHintWord360Sagemaker => 'இயந்திரக் கற்றல் மாதிரிகளை உருவாக்கி வெளியிடும் AWS தளம்.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud உலகளாவிய பகிர்ந்தளிக்கப்பட்ட தொடர்புடைய தரவுத்தளம்.';

  @override
  String get gameHintWord362Pub => 'வெளியிடு-சந்தா செய்தி முறையின் வெளியிடும் பாதி.';

  @override
  String get gameHintWord363Sub => 'வெளியிடு-சந்தா செய்தி முறையின் சந்தாதாரர் பாதி.';

  @override
  String get gameHintWord364Functions => 'சர்வர்லெஸ் தளங்கள் வழங்கும் நிகழ்வு சார்ந்த குறியீட்டு அலகுகள்.';

  @override
  String get gameHintWord365App => 'மென்பொருள் பயன்பாட்டின் சுருக்க வடிவம்.';

  @override
  String get gameHintWord366Engine => 'Compute Engine போன்ற பெயர்களில் உள்ள செயல்படுத்தும் கூறு.';

  @override
  String get gameHintWord367Compute => 'மெய்நிகர் கணினிகள் அல்லது கண்டெய்னர்கள் வழங்கும் செயலாக்கத் திறன்.';

  @override
  String get gameHintWord368Network => 'தரவைப் பரிமாறும் இணைக்கப்பட்ட அமைப்புகள்.';

  @override
  String get gameHintWord369Security => 'அச்சுறுத்தல்களிலிருந்து அமைப்புகளையும் தகவலையும் பாதுகாத்தல்.';

  @override
  String get gameHintWord370Identity => 'அணுகல் முடிவுகளுக்குப் பயன்படும் பயனர் அல்லது சேவையின் பிரதிநிதித்துவம்.';

  @override
  String get gameHintWord371Monitoring => 'அமைப்பின் நலனையும் நடத்தையையும் தொடர்ந்து கவனித்தல்.';

  @override
  String get gameHintWord372Logging => 'தனித்தனி பயன்பாடு மற்றும் அமைப்பு நிகழ்வுகளைப் பதிவு செய்தல்.';

  @override
  String get gameHintWord373Trace => 'சேவை அழைப்புகள் முழுவதும் கோரிக்கையின் பாதைப் பதிவு.';

  @override
  String get gameHintWord374Metrics => 'காலப்போக்கில் அமைப்பின் நடத்தையின் எண் அளவீடுகள்.';

  @override
  String get gameHintWord375Alert => 'கண்காணிக்கப்படும் நிலைக்கு கவனம் தேவை என்ற அறிவிப்பு.';

  @override
  String get gameHintWord376Billing => 'பயன்படுத்தப்பட்ட கிளவுட் சேவைகளுக்கு கட்டணம் கண்காணித்து வசூலித்தல்.';

  @override
  String get gameHintWord377Quota => 'பயன்படுத்தக்கூடிய வளத்தின் அளவுக்கான வரம்பு.';

  @override
  String get gameHintWord378Region => 'கிடைக்கும் மண்டலங்களைக் கொண்ட புவியியல் கிளவுட் வெளியீட்டுப் பகுதி.';

  @override
  String get gameHintWord379Tenancy => 'வாடிக்கையாளர்கள் உள்கட்டமைப்பை எப்படிப் பகிர்கிறார்கள் என்பதை விவரிக்கும் ஏற்பாடு.';

  @override
  String get gameHintWord380Regional => 'கிளவுட் பிராந்தியத்திற்கு வரம்பிடப்பட்ட வளத்தை விவரிக்கிறது.';

  @override
  String get gameHintWord381Cosmos => 'Azure உலகளாவிய பகிர்ந்தளிக்கப்பட்ட பல-மாதிரி தரவுத்தளத்தின் பெயர்.';

  @override
  String get gameHintWord382Synapse => 'கிடங்கையும் தரவு செயலாக்கத்தையும் இணைக்கும் Azure பகுப்பாய்வு தளம்.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft இன் கிளவுட்-நேட்டிவ் பாதுகாப்புத் தகவல் மற்றும் நிகழ்வு தளம்.';

  @override
  String get gameHintWord384Defender => 'கிளவுட் பணிச்சுமைகளைப் பாதுகாக்கும் Microsoft பாதுகாப்பு தயாரிப்புக் குடும்பம்.';

  @override
  String get gameHintWord385Entra => 'Azure AD பெயரிடலை மாற்றும் Microsoft அடையாள தயாரிப்புக் குடும்பம்.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager இன் சுருக்கம்.';

  @override
  String get gameHintWord387Arc => 'Azure க்கு வெளியே உள்ள வளங்களுக்கும் மேலாண்மையை நீட்டிக்கும் Azure சேவை.';

  @override
  String get gameHintWord388Aks => 'Azure நிர்வகிக்கப்படும் Kubernetes சேவையின் சுருக்கம்.';

  @override
  String get gameHintWord389Armor => 'Google Cloud வலைப் பாதுகாப்பு சேவைப் பெயரின் பின்னொட்டு.';

  @override
  String get gameHintWord390Blob => 'Azure பொருள் சேமிப்பு தரவு வகை.';

  @override
  String get gameHintWord391Files => 'நிர்வகிக்கப்படும் நெட்வொர்க் கோப்புப் பகிர்வுகளை வழங்கும் Azure சேவை.';

  @override
  String get gameHintWord392Disk => 'மெய்நிகர் கணினியுடன் இணைக்கப்பட்ட பிளாக் சேமிப்பு சாதனம்.';

  @override
  String get gameHintWord393Function => 'முடிவைத் திருப்பித் தரக்கூடிய அழைக்கக்கூடிய குறியீடு தொகுதி.';

  @override
  String get gameHintWord394Logic => 'பணிப்பாய்வு ஒருங்கிணைப்புக்கான Azure பயன்பாட்டுச் சேவை வகை.';

  @override
  String get gameHintWord395Insights => 'Azure பயன்பாட்டு டெலிமெட்ரி தயாரிப்புப் பெயரின் பின்னொட்டு.';

  @override
  String get gameHintWord396Traffic => 'நெட்வொர்க் முனைகளுக்கு இடையே பாயும் தரவு.';

  @override
  String get gameHintWord397Manager => 'Azure Resource இன் கட்டுப்பாட்டுத் தளத்திற்கான தயாரிப்புப் பெயரின் பின்னொட்டு.';

  @override
  String get gameHintWord398Bastion => 'தனிப்பட்ட ஹோஸ்ட் அணுகலுக்கான நிர்வகிக்கப்படும் அல்லது வலுப்படுத்திய நுழைவுப் புள்ளி.';

  @override
  String get gameHintWord399Front => 'Azure உலகளாவிய நுழைவுப் புள்ளி சேவையான Front Door இன் முதல் சொல்.';

  @override
  String get gameHintWord400Door => 'Azure உலகளாவிய நுழைவுப் புள்ளி சேவையான Front Door இன் இரண்டாம் சொல்.';

  @override
  String get gameHintWord401Javascript => 'உலாவிகளிலும் Node இயக்க சூழல்களிலும் பரவலாகப் பயன்படும் நிரலாக்க மொழி.';

  @override
  String get gameHintWord402Perl => 'உரை செயலாக்கம் மற்றும் ஒழுங்கு கோவைகளுக்குப் பெயர்பெற்ற ஸ்கிரிப்டிங் மொழி.';

  @override
  String get gameHintWord403Powershell => 'Microsoft இன் பொருள் சார்ந்த ஷெல் மற்றும் தானியக்க மொழி.';

  @override
  String get gameHintWord404Java => 'Jenkins ஐ செயல்படுத்தப் பயன்படும் JVM மொழி.';

  @override
  String get gameHintWord405Json => 'பொருள்களும் வரிசைகளும் கொண்ட இலகுரக தரவு வடிவம்.';

  @override
  String get gameHintWord406Xml => 'உள்ளமைந்த பெயரிட்ட டேக்குகளைப் பயன்படுத்தும் மார்க்அப் வடிவம்.';

  @override
  String get gameHintWord407Html => 'வலைப்பக்கங்களை கட்டமைக்கப் பயன்படும் மார்க்அப் மொழி.';

  @override
  String get gameHintWord408Css => 'வலைத் தோற்றத்தைக் கட்டுப்படுத்தும் ஸ்டைல்ஷீட் மொழி.';

  @override
  String get gameHintWord409String => 'உரை எழுத்துகளின் வரிசை.';

  @override
  String get gameHintWord410Array => 'குறியீட்டு எண்ணிடப்பட்ட கூறுகளின் தொகுப்பு.';

  @override
  String get gameHintWord411Hash => 'Ruby மற்றும் Perl இல் உள்ள இணைப்பு விசை-மதிப்புத் தொகுப்பு.';

  @override
  String get gameHintWord412Object => 'பண்புகளும் நடத்தையும் கொண்ட இயக்கநேர மதிப்பு.';

  @override
  String get gameHintWord413Class => 'வகுப்பு அடிப்படையிலான மொழிகளில் பொருள்களை உருவாக்கப் பயன்படும் வரையறை.';

  @override
  String get gameHintWord414Method => 'பொருள் அல்லது வகுப்புடன் தொடர்புடைய செயல்பாடு.';

  @override
  String get gameHintWord415Interface => 'ஒரு கூறு வெளிப்படுத்தும் செயல்பாடுகளை விவரிக்கும் ஒப்பந்தம்.';

  @override
  String get gameHintWord416Subclass => 'மற்றொரு வகுப்பிலிருந்து பெறப்பட்ட வகுப்பு.';

  @override
  String get gameHintWord417Super => 'பெற்றோர் வகுப்பின் நடத்தையை அழைக்கப் பயன்படும் திறவுச்சொல்.';

  @override
  String get gameHintWord418Protected => 'அணுகலை வகுப்பு சார்ந்த சூழல்களுக்கு மட்டுப்படுத்தும் தெரிவுநிலை நிலை.';

  @override
  String get gameHintWord419Exception => 'இயல்பான கட்டுப்பாட்டு ஓட்டத்தை இடைமறிக்கும் இயக்கநேர நிலை.';

  @override
  String get gameHintWord420Regex => 'உரையைப் பொருத்தப் பயன்படும் வடிவக் குறியீடு.';

  @override
  String get gameHintWord421Lexical => 'மூலக் குறியீட்டு அமைப்பால் தீர்மானிக்கப்படும் வரம்பை விவரிக்கிறது.';

  @override
  String get gameHintWord422Scalar => 'Perl இல் ஒற்றை மதிப்புள்ள மாறி வகை.';

  @override
  String get gameHintWord423Tuple => 'Python இல் மாற்ற இயலாத வரிசைப்படுத்தப்பட்ட தொகுப்பு.';

  @override
  String get gameHintWord424List => 'Python இல் மாற்றக்கூடிய வரிசைப்படுத்தப்பட்ட தொகுப்பு.';

  @override
  String get gameHintWord425Dict => 'Python இன் உள்ளமைந்த மேப்பிங் வகையின் பெயர்.';

  @override
  String get gameHintWord426Dictionary => 'விசைகளை தொடர்புடைய மதிப்புகளுடன் இணைக்கும் தொகுப்பு.';

  @override
  String get gameHintWord427Set => 'தனித்துவமான மதிப்புகளின் தொகுப்பு.';

  @override
  String get gameHintWord428Boolean => 'உண்மை அல்லது பொய்யைக் குறிக்கும் தரவு வகை.';

  @override
  String get gameHintWord429Integer => 'முழு எண்களைக் குறிக்கும் எண் வகை.';

  @override
  String get gameHintWord430Float => 'மிதக்கும் புள்ளி மதிப்புகளைக் குறிக்கும் எண் வகை.';

  @override
  String get gameHintWord431Double => 'இரட்டைத் துல்லிய மிதக்கும் புள்ளி வகை.';

  @override
  String get gameHintWord432Null => 'பொருள் அல்லது முடிவு இல்லாததைக் குறிக்கும் மதிப்பு.';

  @override
  String get gameHintWord433Undefined => 'ஒதுக்கப்பட்ட மதிப்பு இல்லாததற்கான JavaScript மதிப்பு.';

  @override
  String get gameHintWord434Promise => 'இறுதியில் வரும் ஒத்திசைவற்ற முடிவைக் குறிக்கும் JavaScript பொருள்.';

  @override
  String get gameHintWord435Async => 'ஒத்திசைவற்ற செயல்பாட்டைக் குறிக்கும் திறவுச்சொல்.';

  @override
  String get gameHintWord436Await => 'ஒத்திசைவற்ற முடிவுக்காகக் காத்திருக்கும் திறவுச்சொல்.';

  @override
  String get gameHintWord437Callback => 'மற்றொரு செயல்பாடு அழைக்கும்படி வழங்கப்படும் செயல்பாடு.';

  @override
  String get gameHintWord438Closure => 'தன்னைச் சூழ்ந்த லெக்சிகல் வரம்புக்கான அணுகலைத் தக்கவைக்கும் செயல்பாடு.';

  @override
  String get gameHintWord439Generator => 'yield செய்யப்பட்ட மதிப்புகள் மூலம் தொடரை சோம்பலாக உருவாக்கும் செயல்பாடு.';

  @override
  String get gameHintWord440Iterator => 'தொகுப்பில் உள்ள மதிப்புகள் வழியாக முன்னேறும் பொருள்.';

  @override
  String get gameHintWord441Print => 'மதிப்பை வெளியீட்டில் எழுதும் பொதுவான செயல்பாடு.';

  @override
  String get gameHintWord442Input => 'நிலையான உள்ளீட்டிலிருந்து ஒரு வரியைப் படிக்கும் Python செயல்பாடு.';

  @override
  String get gameHintWord443Open => 'கோப்பு கைப்பிடியைப் பெறப் பயன்படும் செயல்பாடு.';

  @override
  String get gameHintWord444Close => 'திறந்த கோப்பு அல்லது இணைப்பை விடுவிக்கும் செயல்பாடு.';

  @override
  String get gameHintWord445Read => 'ஸ்ட்ரீம் அல்லது கோப்பிலிருந்து தரவைப் பெறும் செயல்பாடு.';

  @override
  String get gameHintWord446Write => 'ஸ்ட்ரீம் அல்லது கோப்பிற்கு தரவை அனுப்பும் செயல்பாடு.';

  @override
  String get gameHintWord447Append => 'தொகுப்பின் இறுதியில் ஒரு உருப்படியைச் சேர்க்கிறது.';

  @override
  String get gameHintWord448Split => 'பிரிப்பானைக் கொண்டு உரையை துணைச் சரங்களாகப் பிரிக்கிறது.';

  @override
  String get gameHintWord449Join => 'பிரிப்பானைக் கொண்டு சரங்களின் வரிசையை இணைக்கிறது.';

  @override
  String get gameHintWord450Strip => 'Python சரத்தைச் சுற்றியுள்ள வெற்றிடங்களை நீக்குகிறது.';

  @override
  String get gameHintWord451Chomp => 'Perl அல்லது Ruby இல் இறுதிப் பதிவுப் பிரிப்பானை நீக்குகிறது.';

  @override
  String get gameHintWord452Map => 'தொகுப்பின் ஒவ்வொரு உருப்படிக்கும் ஒரு மாற்றத்தைப் பயன்படுத்துகிறது.';

  @override
  String get gameHintWord453Filter => 'நிபந்தனையை நிறைவு செய்யும் தொகுப்பு உருப்படிகளை மட்டும் வைத்திருக்கிறது.';

  @override
  String get gameHintWord454Reduce => 'தொகுப்பை திரட்டப்பட்ட ஒரே முடிவாக இணைக்கிறது.';

  @override
  String get gameHintWord455Range => 'முழு எண்களின் கூட்டுத் தொடரைக் குறிக்கும் Python வகை.';

  @override
  String get gameHintWord456Length => 'தொகுப்பின் அளவைத் திருப்பித் தரும் பண்பு அல்லது முறை.';

  @override
  String get gameHintWord457Len => 'தொகுப்பின் அளவைத் திருப்பித் தரும் Python உள்ளமைந்த செயல்பாடு.';

  @override
  String get gameHintWord458Type => 'பொருளின் வகையைத் திருப்பித் தரும் Python செயல்பாடு.';

  @override
  String get gameHintWord459Isinstance => 'வகை படிநிலையில் உறுப்பினரா எனச் சரிபார்க்கும் Python செயல்பாடு.';

  @override
  String get gameHintWord460Yield => 'ஜெனரேட்டரிலிருந்து மதிப்பை உருவாக்கும் திறவுச்சொல்.';

  @override
  String get gameHintWord461Saas => 'முழுமையான மென்பொருள் பயன்பாடுகளை வழங்கும் கிளவுட் மாதிரி.';

  @override
  String get gameHintWord462Paas => 'நிர்வகிக்கப்படும் பயன்பாட்டு மேம்பாட்டு தளத்தை வழங்கும் கிளவுட் மாதிரி.';

  @override
  String get gameHintWord463Iaas => 'மெய்நிகர் கணினி, சேமிப்பு, நெட்வொர்க்கிங் வழங்கும் கிளவுட் மாதிரி.';

  @override
  String get gameHintWord464Hybrid => 'தனியார் மற்றும் பொது உள்கட்டமைப்பை இணைக்கும் கிளவுட் அணுகுமுறை.';

  @override
  String get gameHintWord465Archive => 'அரிதாக அணுகப்படும் தரவின் நீண்டகால சேமிப்பு.';

  @override
  String get gameHintWord466Public => 'பல வாடிக்கையாளர்களுக்கு சேவைகளை வழங்கும் கிளவுட் உரிமை மாதிரி.';

  @override
  String get gameHintWord467Private => 'ஒரே நிறுவனத்திற்கு அர்ப்பணிக்கப்பட்ட கிளவுட் மாதிரி.';

  @override
  String get gameHintWord468Scalability => 'வளங்களைச் சேர்த்து அதிகரிக்கும் சுமையைக் கையாளும் திறன்.';

  @override
  String get gameHintWord469Availability => 'தேவைப்படும்போது சேவை அணுகக்கூடியதாக இருக்கும் அளவு.';

  @override
  String get gameHintWord470Resilience => 'தோல்விகளைத் தாங்கி மீளும் திறன்.';

  @override
  String get gameHintWord471Redundancy => 'ஒற்றைத் தோல்விப் புள்ளிகளைக் குறைக்கும் நகல் கூறுகள்.';

  @override
  String get gameHintWord472Disaster => 'மீட்பு உத்தியால் எதிர்கொள்ளப்படும் பெரிய செயலிழப்பு.';

  @override
  String get gameHintWord473Recovery => 'தோல்விக்குப் பிறகு சேவை அல்லது தரவை மீட்டெடுத்தல்.';

  @override
  String get gameHintWord474Replicate => 'தரவு அல்லது பணிச்சுமைகளை வேறு இடத்திற்கு நகலெடு.';

  @override
  String get gameHintWord475Snapshotting => 'தரவு அல்லது அமைப்பு நிலையின் குறிப்பிட்ட நேர நகல்களை எடுத்தல்.';

  @override
  String get gameHintWord476Restore => 'சேமித்த நகலிலிருந்து தரவை மீட்டெடுக்கும் செயல்பாடு.';

  @override
  String get gameHintWord477Residency => 'சேமிக்கப்பட்ட தரவின் புவியியல் இருப்பிடத்தை வரையறுக்கும் தேவை.';

  @override
  String get gameHintWord478Compliance => 'தேவையான விதிமுறைகளையும் நிறுவனக் கட்டுப்பாடுகளையும் பூர்த்தி செய்தல்.';

  @override
  String get gameHintWord479Governance => 'தொழில்நுட்பப் பயன்பாட்டைக் கட்டுப்படுத்தும் கொள்கைகளும் செயல்முறைகளும்.';

  @override
  String get gameHintWord480Audit => 'பதிவு செய்யப்பட்ட செயல்பாடுகள் மற்றும் இணக்கச் சான்றுகளின் மதிப்பாய்வு.';

  @override
  String get gameHintWord481Token => 'அங்கீகாரம் அல்லது அடையாளத்தைக் குறிக்கும் சான்று அல்லது குறியீடு.';

  @override
  String get gameHintWord482Oauth => 'பிரதிநிதித்துவ அணுகலை அனுமதிக்கும் அங்கீகார கட்டமைப்பு.';

  @override
  String get gameHintWord483Saml => 'நிறுவன ஒற்றை உள்நுழைவுக்கு பொதுவாகப் பயன்படும் XML அடிப்படையிலான தரநிலை.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell பைப்லைன்களில் பயன்படும் சிறப்புக் கட்டளை.';

  @override
  String get gameHintWord485Algorithm => 'கணினிச் சிக்கலைத் தீர்க்க வரையறுக்கப்பட்ட படிகளின் வரிசை.';

  @override
  String get gameHintWord486Key => 'குறியாக்கத்தைக் கட்டுப்படுத்த அல்லது சேமித்த தரவை அடையாளம் காணப் பயன்படும் மதிப்பு.';

  @override
  String get gameHintWord487Alias => 'ஷெல் கட்டளை அல்லது வளத்திற்கான மாற்றுப் பெயர்.';

  @override
  String get gameHintWord488Amend => 'மிகச் சமீபத்திய கமிட்டை மாற்றும் Git கமிட் விருப்பம்.';

  @override
  String get gameHintWord489Allsigned => 'கையொப்பமிட்ட ஸ்கிரிப்ட்களைத் தேவைப்படுத்தும் PowerShell இயக்கக் கொள்கை.';

  @override
  String get gameHintWord490Remotesigned => 'பதிவிறக்கிய ஸ்கிரிப்ட்களுக்கு கையொப்பம் தேவைப்படுத்தும் PowerShell கொள்கை.';

  @override
  String get gameHintWord491Acl => 'பயனர்கள் அல்லது அமைப்புகளுக்கான அனுமதிகளை வரையறுக்கும் பட்டியல்.';

  @override
  String get gameHintWord492Uid => 'Unix பயனருக்கு ஒதுக்கப்படும் எண் அடையாளங்காட்டி.';

  @override
  String get gameHintWord493Setgid => 'இயக்கம் அல்லது மரபுரிமையின்போது குழு அடையாளத்தைப் பாதிக்கும் அனுமதி பிட்.';

  @override
  String get gameHintWord494Setfacl => 'கோப்பு அணுகல் கட்டுப்பாட்டுப் பட்டியல்களை அமைக்கும் Linux கட்டளை.';

  @override
  String get gameHintWord495Isolation => 'பணிச்சுமைகள் ஒன்றையொன்று பாதிக்காதவாறு செய்யும் பிரிப்பு.';

  @override
  String get gameHintWord496Sighup => 'உள்ளமைவு மறுஏற்றத்தைக் கோரப் பயன்படும் Unix hangup சிக்னல்.';

  @override
  String get gameHintWord497Sigint => 'பொதுவாக Control-C மூலம் உருவாகும் Unix குறுக்கீட்டு சிக்னல்.';

  @override
  String get gameHintWord498Sigstop => 'செயலாக்கத்தை நிறுத்தாமல் இடைநிறுத்தும் Unix சிக்னல்.';

  @override
  String get gameHintWord499Secrets => 'கடவுச்சொற்கள், அணுகல் விசைகள் போன்ற உணர்திறன் மதிப்புகள்.';

  @override
  String get gameHintWord500Secure => 'அங்கீகாரமற்ற அணுகலுக்கு எதிராகப் பாதுகாக்கப்பட்ட இணைப்பை விவரிக்கிறது.';

  @override
  String get fontSettingsTitle => 'எழுத்துரு';

  @override
  String get fontChangeFont => 'எழுத்துருவை மாற்று';

  @override
  String get fontSystemDefault => 'சிஸ்டம் இயல்புநிலை';

  @override
  String get fontPreview => 'முன்னோட்டம்';

  @override
  String get fontPreviewSample => 'ஒவ்வொரு கேள்வியாக DevOps கற்றுக்கொள்ளுங்கள்';

  @override
  String get fontSelected => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get fontLatinOnlyNote => 'தனிப்பயன் எழுத்துருக்கள் லத்தீன் எழுத்துகளுக்குப் பொருந்தும். பிற எழுத்துமுறைகள் உங்கள் சாதனத்தின் எழுத்துருவிலேயே இருக்கும்.';

  @override
  String get fontDescSystem => 'உங்கள் சாதனத்தின் உள்ளமைந்த எழுத்துரு';

  @override
  String get fontDescGeometric => 'ஜியோமெட்ரிக் சான்ஸ்-செரிஃப்';

  @override
  String get fontDescGeometricRounded => 'வட்டமான ஜியோமெட்ரிக் சான்ஸ்-செரிஃப்';

  @override
  String get fontDescFriendly => 'நட்பான சான்ஸ்-செரிஃப்';

  @override
  String get fontDescCondensed => 'குறுகிய';

  @override
  String get fontDescRounded => 'வட்டமான சான்ஸ்-செரிஃப்';

  @override
  String get fontDescRoundedDisplay => 'வட்டமான டிஸ்ப்ளே';

  @override
  String gameScene3dScene(String value1) {
    return '3D காட்சி $value1';
  }
}
