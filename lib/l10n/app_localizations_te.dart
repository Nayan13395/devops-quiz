// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTour => 'యాప్ పరిచయం';

  @override
  String get skipTour => 'పరిచయాన్ని దాటవేయండి';

  @override
  String get finishTour => 'పరిచయాన్ని ముగించండి';

  @override
  String tourStep(int current, int total) {
    return 'దశ $current / $total';
  }

  @override
  String get tourMenuTitle => 'నావిగేషన్ మెను';

  @override
  String get tourSearch => 'సంబంధిత క్విజ్ వర్గాలను కనుగొనడానికి ఇక్కడ అంశాన్ని టైప్ చేయండి.';

  @override
  String get tourCategory => 'మిశ్రమ క్విజ్ కోసం DevOps నొక్కండి. ఇతర వర్గాల్లో ప్రశ్నల సెట్లు ఉన్నాయి. తర్వాత చదవడానికి ప్రశ్నలను బుక్‌మార్క్ చేయండి.';

  @override
  String get tourMenu => 'నావిగేషన్ మెను తెరవడానికి ఈ బటన్ నొక్కండి.';

  @override
  String get tourLearning => 'కార్డుల కోసం నేర్చుకోవడం తెరవండి. ఏ దిశలోనైనా స్వైప్ చేయండి, షఫుల్ చేయండి, ఆటో-స్వాప్ వాడండి లేదా కార్డును బుక్‌మార్క్ చేయండి.';

  @override
  String get tourGames => 'ఆటలు ఆడి పాయింట్లు సంపాదించండి. లెవల్‌లున్న ఆటల్లో ప్రతి పూర్తి లెవల్‌కు 100 పాయింట్లు వస్తాయి; సూచనకు 20 పాయింట్లు ఖర్చవుతాయి.';

  @override
  String get tourAchievements => 'మీ విజయాలను ఇక్కడ చూడండి. కొత్త విజయాలు మరియు అందుబాటులో ఉన్న థీమ్‌లను పాప్‌అప్‌లు తెలియజేస్తాయి.';

  @override
  String get tourSettings => 'భాష, థీమ్ మరియు శబ్దాన్ని ఎంచుకోండి. బుక్‌మార్క్‌లకు సేవ్ చేసిన డేటా లేదా ఈ గైడ్‌ను మళ్లీ చూడటానికి యాప్ పరిచయం తెరవండి.';

  @override
  String get achievementUnlocked => 'విజయం అన్‌లాక్ అయింది!';

  @override
  String get themeUnlocked => 'కొత్త థీమ్ అందుబాటులో ఉంది!';

  @override
  String get themeUnlockedMessage => 'ఇప్పుడు సెట్టింగ్‌లు > థీమ్‌లలో ఈ థీమ్‌ను ఎంచుకోవచ్చు.';

  @override
  String get gameSounds => 'ఆట శబ్దాలు';

  @override
  String get gameSoundsDescription => 'ఆటలు మరియు క్విజ్‌ల కోసం ధ్వని ప్రభావాలు. పరికరం వాల్యూమ్ మరియు సైలెంట్ మోడ్‌ను తనిఖీ చేయండి.';

  @override
  String get testSound => 'శబ్దాన్ని పరీక్షించండి';

  @override
  String get soundSettingBusy => 'దయచేసి వేచి ఉండండి...';

  @override
  String get soundSettingError => 'శబ్దం సెట్టింగ్‌ను లోడ్ లేదా సేవ్ చేయలేకపోయాము. మళ్లీ ప్రయత్నించండి.';

  @override
  String get soundPlaybackError => 'శబ్దాన్ని ప్లే చేయలేకపోయాము. పరికరం లేదా బ్రౌజర్ ఆడియో సెట్టింగ్‌లను తనిఖీ చేయండి.';

  @override
  String get saveData => 'సేవ్ చేసిన డేటా';

  @override
  String get learningTranslationUnavailable => 'ఈ కార్డు ఎంచుకున్న భాషలోకి ఇంకా అనువదించబడలేదు.';

  @override
  String get saveQuestion => 'ప్రశ్నను సేవ్ చేయండి';

  @override
  String defaultPortQuestion(String service) {
    return '$service యొక్క డిఫాల్ట్ పోర్ట్ ఏది?';
  }

  @override
  String get removeSavedItem => 'సేవ్ చేసిన వాటి నుండి తీసివేయండి';

  @override
  String get noSavedData => 'ఇంకా ఏమీ సేవ్ చేయలేదు. నేర్చుకునే కార్డులు లేదా క్విజ్ ప్రశ్నలను బుక్‌మార్క్ చేయండి.';

  @override
  String get savedDataError => 'సేవ్ చేసిన డేటాను లోడ్ లేదా అప్‌డేట్ చేయలేకపోయాము. మళ్లీ ప్రయత్నించండి.';

  @override
  String get savedItemUnavailable => 'సేవ్ చేసిన ఈ అంశం ఇప్పుడు అందుబాటులో లేదు.';

  @override
  String get correctAnswer => 'సరైన సమాధానం';

  @override
  String get retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get certificates => 'ధృవపత్రాలు';

  @override
  String get whatsNew => 'కొత్తవి ఏమిటి';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get darkMode => 'డార్క్ మోడ్';

  @override
  String get lightMode => 'లైట్ మోడ్';

  @override
  String get language => 'భాష';

  @override
  String get selectLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'క్విజ్ ప్రారంభించండి';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'వర్గాన్ని మార్చండి';

  @override
  String get dailyQuiz => 'రోజువారీ క్విజ్';

  @override
  String get dailyQuizCompleted => 'రోజువారీ క్విజ్ పూర్తయింది';

  @override
  String get dailyQuizCompletedMessage => 'మీరు నేటి రోజువారీ క్విజ్‌ను పూర్తి చేశారు. కొత్త సవాలు కోసం రేపు రండి!';

  @override
  String get leaderboard => 'లీడర్‌బోర్డ్';

  @override
  String get shareApp => 'యాప్‌ను పంచుకోండి';

  @override
  String get rateApp => 'యాప్‌కు రేటింగ్ ఇవ్వండి';

  @override
  String get about => 'గురించి';

  @override
  String get ok => 'సరే';

  @override
  String get home => 'హోమ్';

  @override
  String get games => 'ఆటలు';

  @override
  String get referAndEarn => 'సూచించి సంపాదించండి';

  @override
  String get themes => 'థీమ్‌లు';

  @override
  String get version => 'వెర్షన్';

  @override
  String get developer => 'డెవలపర్';

  @override
  String get contact => 'సంప్రదించండి';

  @override
  String get learning => 'అభ్యాసం';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'నాతో కనెక్ట్ అవ్వండి';

  @override
  String get aboutDescription => 'DevOps Quizతో Linux, Docker, Kubernetes మరియు ఇతర DevOps అంశాలను నేర్చుకొని ఇంటర్వ్యూలు, ధృవపత్రాల కోసం సిద్ధం అవ్వండి.';

  @override
  String get quizResult => 'క్విజ్ ఫలితం';

  @override
  String get outstanding => 'అద్భుతం!';

  @override
  String get greatJob => 'చాలా బాగా చేశారు!';

  @override
  String get goodEffort => 'మంచి ప్రయత్నం!';

  @override
  String get keepPracticing => 'సాధన కొనసాగించండి!';

  @override
  String get dontGiveUp => 'ప్రయత్నం మానకండి!';

  @override
  String get shareMessage1 => 'నా స్కోరు';

  @override
  String get shareMessage2 => 'DevOps క్విజ్‌లో!';

  @override
  String get downloadApp => 'యాప్‌ను డౌన్‌లోడ్ చేయండి:';

  @override
  String get score => 'స్కోరు';

  @override
  String get points => 'పాయింట్లు';

  @override
  String get percentage => 'శాతం';

  @override
  String get bonus => 'బోనస్';

  @override
  String get perfectScoreBonus => 'పూర్తి స్కోరు బోనస్';

  @override
  String get shareScore => 'స్కోరును పంచుకోండి';

  @override
  String get restartQuiz => 'క్విజ్‌ను మళ్లీ ప్రారంభించండి';

  @override
  String get backToCategories => 'వర్గాలకు తిరిగి వెళ్లండి';

  @override
  String get greatProgress => 'బాగా చేశారు! మీరు మంచి పురోగతి సాధిస్తున్నారు.';

  @override
  String get practiceMore => 'మంచి ప్రయత్నం! మరింత సాధనతో మీ స్కోరు పెరుగుతుంది.';

  @override
  String get keepLearning => 'నేర్చుకోవడం కొనసాగించి మళ్లీ ప్రయత్నించండి.';

  @override
  String get everyExpertStarted => 'ప్రతి నిపుణుడు ప్రారంభంలో నేర్చుకునేవాడే. సాధన కొనసాగించండి!';

  @override
  String get quizInstructions => 'క్విజ్ సూచనలు';

  @override
  String get instruction1 => 'ప్రతి సెట్‌లో 25 ప్రశ్నలు ఉంటాయి.';

  @override
  String get instruction2 => 'ప్రతి ప్రశ్నకు 30 సెకన్లు ఉంటాయి.';

  @override
  String get instruction3 => 'ఆకుపచ్చ = సరైన సమాధానం.';

  @override
  String get instruction4 => 'ఎరుపు = తప్పు సమాధానం.';

  @override
  String get instruction5 => 'సమాధానాన్ని మార్చలేరు.';

  @override
  String get instruction6 => 'వెనుకకు బటన్ సమీక్ష కోసం మాత్రమే.';

  @override
  String get instruction7 => 'పూర్తయిన తర్వాత స్కోరు చూపబడుతుంది.';

  @override
  String get instruction8 => 'ప్రతి సరైన సమాధానానికి 10 పాయింట్లు లభిస్తాయి.';

  @override
  String excellentPerformance(Object expert) {
    return 'అద్భుతమైన ప్రదర్శన! మీరు ఒక $expert.';
  }

  @override
  String get selectCategory => 'వర్గాన్ని ఎంచుకోండి';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'సెట్‌ను ఎంచుకోండి';

  @override
  String get set => 'సెట్';

  @override
  String get questions => 'ప్రశ్నలు';

  @override
  String get noScoresYet => 'ఇంకా స్కోర్లు లేవు';

  @override
  String get pointsShort => 'పాయింట్లు';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizకు స్వాగతం';

  @override
  String hiUser(String name) {
    return 'నమస్కారం $name';
  }

  @override
  String get challengeMode => 'సవాలు మోడ్';

  @override
  String get challenge => 'సవాలు';

  @override
  String get question => 'ప్రశ్న';

  @override
  String get reward => 'బహుమతి';

  @override
  String get survivalMode => 'సర్వైవల్ మోడ్';

  @override
  String get speedChallenge => 'వేగ సవాలు';

  @override
  String get dailyChallenge => 'రోజువారీ సవాలు';

  @override
  String get ultimateChallenge => 'అంతిమ సవాలు';

  @override
  String get timeLeft => 'మిగిలిన సమయం';

  @override
  String get completed => 'పూర్తయింది';

  @override
  String get locked => 'లాక్ చేయబడింది';

  @override
  String get back => 'వెనుకకు';

  @override
  String get next => 'తదుపరి';

  @override
  String get submit => 'సమర్పించండి';

  @override
  String get achievements => 'విజయాలు';

  @override
  String get streak => 'వరుస రోజులు';

  @override
  String get days => 'రోజులు';

  @override
  String get tomorrowsReward => 'రేపటి బహుమతి';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 నా స్కోరు $score/$totalQuestions #DevOps Quiz!\n\n🏆 పాయింట్లు: $earnedPoints\n🔥 బోనస్: $bonusPoints\n📊 శాతం: $percentage%\n\nయాప్‌ను డౌన్‌లోడ్ చేయండి:';
  }

  @override
  String get gameUiSpinWheel => 'స్పిన్ వీల్';

  @override
  String get gameUiSpinAndWinBonusPoints => 'తిప్పి బోనస్ పాయింట్లు గెలవండి';

  @override
  String get gameUiScratchCard => 'స్క్రాచ్ కార్డ్';

  @override
  String get gameUiScratchToRevealAReward => 'స్క్రాచ్ చేసి బహుమతిని వెల్లడించండి';

  @override
  String get gameUiLuckySlots => 'లక్కీ స్లాట్స్';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'స్లాట్లను తిప్పి పాయింట్లు గెలవండి';

  @override
  String get gameUiMysteryDeal => 'మిస్టరీ డీల్';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'మిస్టరీ బాక్స్ ఎంచుకుని సమాధానం ఇవ్వండి';

  @override
  String get gameUiMemoryMatch => 'మెమరీ మ్యాచ్';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps జతలను సరిపోల్చండి';

  @override
  String get gameUiWordGuess => 'వర్డ్ గెస్';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'లెవెల్స్ ద్వారా DevOps పదాలను ఊహించండి';

  @override
  String get gameUiFindWords => 'పదాలను కనుగొనండి';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'గ్రిడ్‌లో దాగి ఉన్న DevOps పదాల కోసం వెతకండి';

  @override
  String get gameUiSpotTheDifference => 'తేడాలను గుర్తించండి';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'రెండు చిత్ర దృశ్యాల మధ్య ఐదు మార్పులను కనుగొనండి';

  @override
  String get gameUiJigsawPuzzle => 'జిగ్సా పజిల్';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'షేర్ చేసిన HD జంతు మరియు ప్రకృతి చిత్రాలను తిరిగి నిర్మించండి';

  @override
  String get gameUiHighOrLow => 'హై ఆర్ లో';

  @override
  String get gameUiBuildAStreak => 'వరుస విజయాలను సాధించండి';

  @override
  String get gameUiTrueOrFalseBlitz => 'ట్రూ ఆర్ ఫాల్స్ బ్లిట్జ్';

  @override
  String get gameUiQuickAnswerQuiz => 'త్వరిత సమాధాన క్విజ్';

  @override
  String get gameUiCommandMatch => 'కమాండ్ మ్యాచ్';

  @override
  String get gameUiMatchCommandsToMeanings => 'కమాండ్‌లను వాటి అర్థాలతో సరిపోల్చండి';

  @override
  String get gameUiPortMaster => 'పోర్ట్ మాస్టర్';

  @override
  String get gameUiGuessDefaultPorts => 'డిఫాల్ట్ పోర్ట్‌లను ఊహించండి';

  @override
  String get gameUiTicTacToe => 'టిక్-టాక్-టో';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X నాట్స్ అండ్ క్రాసెస్ కంప్యూటర్‌తో';

  @override
  String get gameUiConnectFour => 'కనెక్ట్ ఫోర్';

  @override
  String get gameUiDropFourDiscs => 'నాలుగు డిస్క్‌లను వేయండి';

  @override
  String get gameUiLudo => 'లూడో';

  @override
  String get gameUiRaceAgainstBots => 'బాట్‌లతో పోటీ పడండి';

  @override
  String get gameUiChess => 'చదరంగం';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'చదరంగం బోర్డు, చట్టబద్ధమైన ఎత్తులు, ఇద్దరు ఆటగాళ్లు';

  @override
  String get gameUiSnakeAndLadders => 'పాములు నిచ్చెనలు';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'పాచికల బోర్డు, పాములు నిచ్చెనలు, ఇద్దరు ఆటగాళ్లు';

  @override
  String get gameUiGames => 'ఆటలు 🎮';

  @override
  String get gameUiPlayEarn => 'ఆడండి & సంపాదించండి';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ఆటలు ఆడి బోనస్ పాయింట్లు సంపాదించండి!';

  @override
  String get gameUiSearchGames => 'ఆటలను వెతకండి';

  @override
  String get gameUiClearSearch => 'శోధనను క్లియర్ చేయండి';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\"కు సరిపోలే ఆటలు లేవు';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'తిప్పండి & బోనస్ పాయింట్లు గెలవండి.';

  @override
  String get gameUiScratchToRevealYourReward => 'స్క్రాచ్ చేసి మీ బహుమతిని వెల్లడించండి.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'స్లాట్లను తిప్పండి & పాయింట్లు గెలవండి.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'మిస్టరీ బాక్స్ ఎంచుకుని సరైన సమాధానం ఇచ్చి పాయింట్లు గెలవండి.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'పాయింట్లు సంపాదించడానికి DevOps జతలను సరిపోల్చండి.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ప్రయత్నాలలో DevOps పదాన్ని ఊహించండి.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'గ్రిడ్‌లో దాగి ఉన్న DevOps పదాల కోసం వెతకండి.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 లెవెల్స్‌లో DevOps పదాలను కనుగొనడానికి స్వైప్ చేయండి.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'రెండు చిత్ర దృశ్యాల మధ్య ఐదు మార్పులను కనుగొనండి.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'షేర్ చేసిన HD జంతు మరియు ప్రకృతి చిత్రాలను తిరిగి నిర్మించండి.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'వరుస విజయాలను సాధించి మీ పాయింట్లను భద్రపరచుకోండి.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'త్వరిత సమాధానాలతో సమయాన్ని ఓడించండి.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'ట్రూ ఆర్ ఫాల్స్ బ్లిట్జ్ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'కమాండ్‌లను అవి చేసే పనితో సరిపోల్చండి.';

  @override
  String get gameUiCommandMatch670a76e => 'కమాండ్ మ్యాచ్ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 ప్రాణాలతో డిఫాల్ట్ పోర్ట్‌లను ఊహించండి.';

  @override
  String get gameUiPortMaster8f5fd42 => 'పోర్ట్ మాస్టర్ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'కంప్యూటర్‌తో O/X ఆడండి.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'గెలవడానికి వరుసగా నాలుగు డిస్క్‌లను వేయండి.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'మీ పావులను మూడు బాట్‌లతో పోటీ పెట్టండి.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'చట్టబద్ధమైన ఎత్తులతో స్థానిక ఇద్దరు ఆటగాళ్ల చదరంగం.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'చట్టబద్ధమైన ఇద్దరు ఆటగాళ్ల చదరంగం మ్యాచ్ ఆడండి.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'ఇద్దరు ఆటగాళ్ల పాచికల బోర్డ్ ఆట.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100కు చేరుకోవడానికి పోటీ పడండి. నిచ్చెనలు ఎక్కండి, పాముల నుండి తప్పించుకోండి.';

  @override
  String get gameUiPlay => 'ఆడండి';

  @override
  String get gameUiWheelStopped => 'వీల్ ఆగింది!';

  @override
  String get gameUiYourRewardIs => 'మీ బహుమతి';

  @override
  String get gameUiPOINTS => 'పాయింట్లు';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ఈ బహుమతిని పొందడానికి 1 క్విజ్ ప్రశ్నకు సరిగ్గా సమాధానం ఇవ్వండి.';

  @override
  String get gameUiWrongAnswerRewardLost => 'తప్పు సమాధానం = బహుమతి కోల్పోతారు.';

  @override
  String get gameUiAnswerQuestion => 'ప్రశ్నకు సమాధానం ఇవ్వండి';

  @override
  String get gameUiSpinWheele449982 => '🎡 స్పిన్ వీల్';

  @override
  String get gameUiDailySpin => 'రోజువారీ స్పిన్';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'వీల్ తిప్పండి, ఆపై మీ బహుమతిని పొందడానికి ఒక ప్రశ్నకు సమాధానం ఇవ్వండి!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'మీరు ఇప్పటికే ఈ రోజు స్పిన్‌ను ఉపయోగించారు.';

  @override
  String get gameUiSpinning => 'తిరుగుతోంది...';

  @override
  String get gameUiSPINNOW => 'ఇప్పుడే తిప్పండి';

  @override
  String get gameUiCOMEBACKTOMORROW => 'రేపు మళ్లీ రండి';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'ఈ రోజు బహుమతి: ⭐ $value1 పాయింట్లు';
  }

  @override
  String get gameUiBackToGames => 'ఆటలకు తిరిగి వెళ్లండి';

  @override
  String get gameUiSPIN => 'తిప్పండి';

  @override
  String get gameUiRewardRevealed => 'బహుమతి వెల్లడైంది!';

  @override
  String get gameUiYouFound => 'మీరు కనుగొన్నారు';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ స్క్రాచ్ కార్డ్';

  @override
  String get gameUiDailyScratch => 'రోజువారీ స్క్రాచ్';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'ఈ రోజు బహుమతిని వెల్లడించడానికి కార్డ్‌ను స్క్రాచ్ చేయండి!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'మీరు ఇప్పటికే ఈ రోజు స్క్రాచ్ కార్డ్‌ను ఉపయోగించారు.';

  @override
  String get gameUiAlreadyScratched => 'ఇప్పటికే స్క్రాచ్ చేశారు';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'మరో బహుమతి కోసం రేపు మళ్లీ రండి.';

  @override
  String get gameUiYouRevealed => 'మీరు వెల్లడించారు';

  @override
  String get gameUiSCRATCHHERE => 'ఇక్కడ స్క్రాచ్ చేయండి  👆';

  @override
  String get gameUiJACKPOT777 => 'జాక్‌పాట్ 777!';

  @override
  String get gameUiLucky777 => 'లక్కీ 777!';

  @override
  String get gameUiYourReward => 'మీ బహుమతి';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 లక్కీ స్లాట్స్';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'స్లాట్లను తిప్పండి, ఆపై బహుమతిని పొందడానికి ఒక ప్రశ్నకు సమాధానం ఇవ్వండి!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'మీరు ఇప్పటికే ఈ రోజు ఆడారు.';

  @override
  String get gameUiSPINNING => 'తిరుగుతోంది...';

  @override
  String get gameUiROLLNOW => 'ఇప్పుడే రోల్ చేయండి';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 జాక్‌పాట్! 777 పాయింట్లు అందుబాటులో ఉన్నాయి!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'మిస్టరీ డీల్ స్థితిని తనిఖీ చేయడం సాధ్యం కాలేదు: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'బాక్స్ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 పాయింట్లు';
  }

  @override
  String get gameUiStartQuestion => 'ప్రశ్నను ప్రారంభించండి';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 మిస్టరీ డీల్';

  @override
  String get gameUiMysteryDealCompleted => 'మిస్టరీ డీల్ పూర్తయింది!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'మీరు ఈరోజు ఇప్పటికే మిస్టరీ డీల్ ఆడారు.';

  @override
  String get gameUiTodayYouWon => 'ఈరోజు మీరు గెలిచినవి';

  @override
  String get gameUiTodaySReward => 'ఈరోజు బహుమతి';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 పాయింట్లు';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 పాయింట్లు కోల్పోయారు';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'మరో మిస్టరీ బాక్స్ కోసం రేపు తిరిగి రండి!';

  @override
  String get gameUiChooseYourMysteryBox => 'మీ మిస్టరీ బాక్స్‌ను ఎంచుకోండి';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ప్రతి బాక్స్‌లో 10 నుండి 1000 పాయింట్ల మధ్య దాచిన బహుమతి ఉంటుంది.';

  @override
  String get gameUiPickOnlyOneBox => 'ఒక్క బాక్స్‌ను మాత్రమే ఎంచుకోండి!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'మొత్తం $value1 స్థాయిలు పూర్తయ్యాయి!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'స్థాయి $value1 పూర్తయింది!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 కదలికలలో పూర్తయింది.\nమీరు $value2 పాయింట్లు సంపాదించారు!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 కదలికలలో పూర్తయింది.\nఈ స్థాయి ఇప్పటికే పూర్తయింది.';
  }

  @override
  String get gameUiNextLevel => 'తదుపరి స్థాయి';

  @override
  String get gameUiDone => 'పూర్తయింది';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'మెమరీ మ్యాచ్ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'మొత్తం 100 స్థాయిలు పూర్తయ్యాయి!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'మీరు ప్రతి మెమరీ మ్యాచ్ స్థాయిని పూర్తి చేశారు. బాగా ఆడారు!';

  @override
  String get gameUiChooseLevel => 'స్థాయిని ఎంచుకోండి';

  @override
  String gameUiMoves(String value1) {
    return 'కదలికలు: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return '$value2 లో స్థాయి $value1';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 జతలు';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'స్థాయి $value1ని గుర్తుంచుకోండి';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 సరిపోలే జతలను కనుగొనండి';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz లోగో';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'అధ్యాయం 1 · బిల్డ్ పైప్‌లైన్‌ను పునరుద్ధరించండి';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'అధ్యాయం 2 · క్లౌడ్ ప్లాట్‌ఫారమ్‌ను స్కేల్ చేయండి';

  @override
  String get gameUiChapter3ProtectProduction => 'అధ్యాయం 3 · ప్రొడక్షన్‌ను రక్షించండి';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'సమర్పించడానికి మిగిలిన మొత్తం $value1 అక్షరాలను ఉపయోగించండి.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'అన్ని స్థాయిలు పూర్తయ్యాయి!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'స్థాయి $value1 పూర్తయింది!';
  }

  @override
  String get gameUiTryAgain => 'మళ్లీ ప్రయత్నించండి';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'పదం $value1. మీరు $value2 పాయింట్లు సంపాదించారు.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'పదం $value1. $value3 సూచన తర్వాత మీరు $value2 పాయింట్లు సంపాదించారు.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'పదం $value1. $value3 సూచనల తర్వాత మీరు $value2 పాయింట్లు సంపాదించారు.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'పదం $value1. స్థాయి $value2 ఇంకా మీ కోసం వేచి ఉంది.';
  }

  @override
  String get gameUiFinish => 'ముగించండి';

  @override
  String get gameUiNextLevel254fd73 => 'తదుపరి స్థాయి';

  @override
  String get gameUiRetryLevel => 'స్థాయిని మళ్లీ ప్రయత్నించండి';

  @override
  String get gameUiHowToPlay => 'ఎలా ఆడాలి';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ప్రతి స్థాయిలో ఒక DevOps పదం ఉంటుంది. ఐదు అక్షరాల కంటే తక్కువ ఉన్న పదాలు ఉచిత అక్షరాలు లేకుండా మొదలవుతాయి; పొడవైన పదాలు ఒక అక్షరంతో మొదలవుతాయి. సమాధానాన్ని రూపొందించడానికి అక్షరాల ర్యాక్‌ను ఉపయోగించి Enter నొక్కండి. సూచనలు మరో అక్షరాన్ని వెల్లడిస్తాయి మరియు మీ బ్యాలెన్స్ నుండి 20 పాయింట్లు ఖర్చవుతాయి. పూర్తయిన ప్రతి స్థాయికి 100 పాయింట్లు లభిస్తాయి.';

  @override
  String get gameUiGotIt => 'అర్థమైంది';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'మొత్తం $value1 స్థాయిలు పూర్తయ్యాయి!';
  }

  @override
  String get gameUiEasy => 'సులభం';

  @override
  String get gameUiMedium => 'మధ్యస్థం';

  @override
  String get gameUiHard => 'కఠినం';

  @override
  String get gameUiHowToPlay13a6b22 => 'ఎలా ఆడాలి';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'స్థాయి $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'బహుమతి $value1 పాయింట్లు · ఉపయోగించిన సూచనలు $value2';
  }

  @override
  String get gameUiHint20Pts => 'సూచన · −20 పాయింట్లు';

  @override
  String get gameUiEnter => 'ఎంటర్';

  @override
  String get gameUiDelete => 'తొలగించు';

  @override
  String get gameUiDragThroughAWord => 'పదం మీదుగా లాగండి';

  @override
  String get gameUiDragThroughEachWord => 'ప్రతి పదం మీదుగా లాగండి';

  @override
  String get gameUiReleaseToSelect => 'ఎంచుకోవడానికి వదలండి';

  @override
  String gameUiFound(String value1) {
    return '$value1 కనుగొన్నారు';
  }

  @override
  String get gameUiNoWordThere => 'అక్కడ పదం లేదు';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ఇప్పటికే కనుగొన్నారు';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 కోసం వెతకండి';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'అన్ని స్థాయిలు పూర్తయ్యాయి!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'మీరు ప్రతి పదాన్ని కనుగొని $value1 పాయింట్లు సంపాదించారు.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'మీరు ప్రతి పదాన్ని కనుగొన్నారు. ఈ స్థాయి ఇప్పటికే పూర్తయింది.';

  @override
  String get gameUiAll500LevelsComplete => 'మొత్తం 500 స్థాయిలు పూర్తయ్యాయి!';

  @override
  String get gameUiReviewLevels => 'స్థాయిలను సమీక్షించండి';

  @override
  String gameUiLeft(String value1) {
    return '$value1 మిగిలి ఉన్నాయి';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 పాయింట్లు';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'పురోగతిని సేవ్ చేయడం సాధ్యం కాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'మీరు $value1 పాయింట్లు సంపాదించారు!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'మీరు ఈ చిత్రాన్ని ఇప్పటికే పూర్తి చేశారు. మళ్లీ ఆడితే అదనపు పాయింట్లు లభించవు.';

  @override
  String get gameUiYouCompletedEveryPicture => 'మీరు ప్రతి చిత్రాన్ని పూర్తి చేశారు!';

  @override
  String get gameUiLevels => 'స్థాయిలు';

  @override
  String get gameUiPictureB => 'చిత్రం B';

  @override
  String get gameUiPictureA => 'చిత్రం A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'చిత్రం లోడ్ కాలేదు. మళ్లీ ప్రయత్నించండి';

  @override
  String get gameUiResetZoom => 'జూమ్‌ను రీసెట్ చేయండి';

  @override
  String get gameUiZoomBothPictures => 'రెండు చిత్రాలను జూమ్ చేయండి';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'సూచన · ప్రతి సూచనకు $value1 పాయింట్లు';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'పురోగతిని లోడ్ చేయడం సాధ్యం కాలేదు. మళ్లీ ప్రయత్నించండి';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'స్థాయి $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'అన్ని తేడాలు కనుగొన్నారు!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count తేడాలను కనుగొనండి. ఏదైనా చిత్రంలో ప్రతిదానిని నొక్కండి.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'తప్పులు: $value1  ·  సూచనలు: $value2 (−$value3 పాయింట్లు)  ·  $value4 స్థాయిలు పూర్తయ్యాయి';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'తదుపరి స్థాయి: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'పజిల్ $value1 పూర్తయింది!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'చిత్రం $value1 కదలికలలో పూర్తయింది. మీరు $value2 పాయింట్లు సంపాదించారు.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'చిత్రం $value1 కదలికలలో పూర్తయింది.';
  }

  @override
  String get gameUiNextPuzzle => 'తదుపరి పజిల్';

  @override
  String get gameUiAllPuzzlesComplete => 'అన్ని పజిల్స్ పూర్తయ్యాయి';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return '$value2 లో పజిల్ ముక్క $value1, సరిగ్గా ఉంచబడింది';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return '$value2 లో పజిల్ ముక్క $value1';
  }

  @override
  String get gameUiChoosePuzzle => 'పజిల్‌ను ఎంచుకోండి';

  @override
  String get gameUiShufflePieces => 'ముక్కలను కలపండి';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'పజిల్ చిత్రాన్ని లోడ్ చేయలేకపోయాము.';

  @override
  String get gameUiPreviousPuzzle => 'మునుపటి పజిల్';

  @override
  String gameUiPuzzle(String value1) {
    return 'పజిల్ $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 ఎత్తులు';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ముక్కలను మార్చుకోవడానికి వాటిని లాగండి, లేదా రెండు ముక్కలను తాకండి.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 పజిల్స్ పరిష్కరించబడ్డాయి  ·  ఒక్కొక్కటి $value3 పాయింట్లు';
  }

  @override
  String get gameUiGameOver => 'ఆట ముగిసింది';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'సంఖ్య $value1.\nవరుస: $value2\nమీరు $value3 పాయింట్లు సంపాదించారు!\n\nమరో అవకాశం కోసం రేపు తిరిగి రండి!';
  }

  @override
  String get gameUiHigherOrLower => 'ఎక్కువ లేదా తక్కువ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'ఈరోజు ఇప్పటికే ఆడారు!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'మీరు $value1/$value2/$value3 న ఆడారు.\n\nకొత్త వరుసను నిర్మించడానికి రేపు తిరిగి రండి!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'మీరు ఈరోజు ఇప్పటికే ఆడారు.\n\nమరో అవకాశం కోసం రేపు తిరిగి రండి!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 వరుస: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ పాయింట్లు: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'తదుపరి సంఖ్య ఎక్కువగా ఉంటుందా లేదా తక్కువగా ఉంటుందా?';

  @override
  String get gameUiLower => 'తక్కువ';

  @override
  String get gameUiHigher => 'ఎక్కువ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'నిజమా అబద్ధమా బ్లిట్జ్ ⚡';

  @override
  String get gameUiTimeSUp => 'సమయం అయిపోయింది!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'సరైన సమాధానాలు: $value1\nఉత్తమ వరుస: $value2\n$value3మీరు $value4 పాయింట్లు సంపాదించారు!\n\nమరో రౌండ్ కోసం రేపు తిరిగి రండి!';
  }

  @override
  String get gameUiStreakBonus20 => 'వరుస బోనస్: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'చూపించిన సమాధానం నిజమా లేదా అబద్ధమా?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 వర్గాలలో $value1 ప్రశ్నలు';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'మీకు $value1 సెకన్లు ఉన్నాయి. ప్రతి సరైన సమాధానానికి $value2 పాయింట్లు లభిస్తాయి. తప్పు సమాధానం $value3 సెకన్లు తగ్గిస్తుంది. 5 వరుస చేరుకుంటే +20 బోనస్ లభిస్తుంది.';
  }

  @override
  String get gameUiRoundTimer => 'రౌండ్ టైమర్';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 సెకన్లు';
  }

  @override
  String get gameUiStart => 'ప్రారంభించు';

  @override
  String get gameUiTrue => 'నిజం';

  @override
  String get gameUiFalse => 'అబద్ధం';

  @override
  String get gameUiCommandMatch26b0e70 => 'కమాండ్ మ్యాచ్ 🔗';

  @override
  String get gameUiAllMatched => 'అన్నీ సరిపోలాయి!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'తప్పులు: $value1\nమీరు $value2 పాయింట్లు సంపాదించారు!\n\nకొత్త కమాండ్ల కోసం రేపు తిరిగి రండి!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'రౌండ్ $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ఒక కమాండ్‌ను తాకండి, తర్వాత దాని అర్థాన్ని తాకండి.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'ఇప్పుడు సరిపోలే అర్థాన్ని తాకండి.';

  @override
  String get gameUiPortMaster9c730cf => 'పోర్ట్ మాస్టర్ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'పోర్ట్ మాస్టర్!';

  @override
  String get gameUiOutOfLives => 'ప్రాణాలు అయిపోయాయి';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'సరైన సమాధానాలు: $value1\nమీరు $value2 పాయింట్లు సంపాదించారు!\n\nమరో రౌండ్ కోసం రేపు తిరిగి రండి!';
  }

  @override
  String get gameUiYouEarned10Points => 'మీరు 10 పాయింట్లు సంపాదించారు!';

  @override
  String get gameUiYouWin => 'మీరు గెలిచారు!';

  @override
  String gameUiWins(String value1) {
    return '$value1 గెలిచారు!';
  }

  @override
  String get gameUiXWins => 'X గెలిచారు!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) గెలిచారు!';
  }

  @override
  String get gameUiComputerWins => 'కంప్యూటర్ గెలిచింది';

  @override
  String get gameUiOWins => 'O గెలిచారు!';

  @override
  String get gameUiPlayer2OWins => 'ఆటగాడు 2 (O) గెలిచారు!';

  @override
  String get gameUiItSADraw => 'ఇది డ్రా';

  @override
  String get gameUiYourTurn => 'మీ వంతు';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 వంతు';
  }

  @override
  String get gameUiComputerIsThinking => 'కంప్యూటర్ ఆలోచిస్తోంది';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'ఆటగాడు $value1 ఆడాలి';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ఆడాలి';
  }

  @override
  String get gameUiPlayer2ToMove => 'ఆటగాడు 2 ఆడాలి';

  @override
  String get gameUiNewRound => 'కొత్త రౌండ్';

  @override
  String get gameUiVsComputer => 'కంప్యూటర్‌తో';

  @override
  String get gameUi2Players => '2 ఆటగాళ్లు';

  @override
  String get gameUiYou => 'మీరు';

  @override
  String get gameUiDraws => 'డ్రాలు';

  @override
  String get gameUiPlayer2 => 'ఆటగాడు 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'గడి $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'మళ్లీ ఆడండి';

  @override
  String get gameUiConnectFourWin20Points => 'కనెక్ట్ ఫోర్ విజయం: 20 పాయింట్లు!';

  @override
  String get gameUiBotWins => 'బాట్ గెలిచింది!';

  @override
  String get gameUiRed => 'ఎరుపు';

  @override
  String get gameUiYellow => 'పసుపు';

  @override
  String get gameUiBoardFullDraw => 'బోర్డు నిండిపోయింది — డ్రా';

  @override
  String get gameUiBotIsThinking => 'బాట్ ఆలోచిస్తోంది';

  @override
  String get gameUiBotTurn => 'బాట్ వంతు';

  @override
  String get gameUiNewGame => 'కొత్త ఆట';

  @override
  String get gameUiVsBot => 'బాట్‌తో';

  @override
  String get gameUi2Player => '2 ఆటగాళ్లు';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'బాట్‌తో ఆడండి · డిస్క్ వేయడానికి ఒక నిలువు వరుసను తాకండి';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'ఇద్దరు ఆటగాళ్లు · డిస్క్ వేయడానికి ఒక నిలువు వరుసను తాకండి';

  @override
  String gameUiColumn(String value1) {
    return 'నిలువు వరుస $value1';
  }

  @override
  String get gameUiYouRed => 'మీరు · ఎరుపు';

  @override
  String get gameUiRedPlayer1 => 'ఎరుపు · ఆటగాడు 1';

  @override
  String get gameUiBotYellow => 'బాట్ · పసుపు';

  @override
  String get gameUiYellowPlayer2 => 'పసుపు · ఆటగాడు 2';

  @override
  String get gameUiLudoMatchStats => 'లూడో మ్యాచ్ గణాంకాలు';

  @override
  String get gameUiNoCompletedMatchesYet => 'ఇంకా పూర్తయిన మ్యాచ్‌లు లేవు.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'ఆడినవి $value1  ·  గెలిచినవి $value2  ·  ఓడినవి $value3';
  }

  @override
  String get gameUiClose => 'మూసివేయి';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'లూడో ఛాంపియన్! మీరు 50 పాయింట్లు సంపాదించారు.';

  @override
  String get gameUiNewLudoGame => 'కొత్త లూడో ఆట';

  @override
  String get gameUiBotOpponents => 'బాట్ ప్రత్యర్థులు';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'కొత్త మ్యాచ్ ప్రారంభిస్తే మీరు సేవ్ చేసిన ఆట భర్తీ అవుతుంది.';

  @override
  String get gameUiCancel => 'రద్దు చేయి';

  @override
  String get gameUiStartGame => 'ఆట ప్రారంభించు';

  @override
  String get gameUiPlayerColours => 'ఆటగాళ్ల రంగులు';

  @override
  String get gameUiApply => 'వర్తింపజేయి';

  @override
  String get gameUiMatchStats => 'మ్యాచ్ గణాంకాలు';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 చెక్‌మేట్ ద్వారా గెలిచారు';
  }

  @override
  String get gameUiBlack => 'నలుపు';

  @override
  String get gameUiWhite => 'తెలుపు';

  @override
  String get gameUiComputerWinsByCheckmate => 'కంప్యూటర్ చెక్‌మేట్ ద్వారా గెలిచింది';

  @override
  String get gameUiYouWinByCheckmate => 'మీరు చెక్‌మేట్ ద్వారా గెలిచారు';

  @override
  String get gameUiDrawByStalemate => 'స్టేల్‌మేట్ ద్వారా డ్రా';

  @override
  String get gameUiDraw => 'డ్రా';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · చెక్';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'చెక్‌మేట్! మీరు 50 పాయింట్లు సంపాదించారు.';

  @override
  String get gameUiStartANewGame => 'కొత్త ఆట ప్రారంభించాలా?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'ఆటగాళ్ల మోడ్ మార్చడం వల్ల సేవ్ చేసిన మ్యాచ్ భర్తీ అవుతుంది.';

  @override
  String get gameUiComputer => 'కంప్యూటర్';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · తెలుపు / ఆటగాడు 2 · నలుపు';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'మీరు తెలుపు · కంప్యూటర్ నలుపు';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (తెలుపు) · కంప్యూటర్ (నలుపు)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'మీరు నలుపు · కంప్యూటర్ తెలుపు';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (నలుపు) · కంప్యూటర్ (తెలుపు)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 మొదట వేస్తారు';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 మళ్లీ వేస్తారు';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 వేయాలి';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'పాములు నిచ్చెనల విజయం: 100 పాయింట్లు!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'ఆటగాళ్లను మార్చడం వల్ల సేవ్ చేసిన ఆట భర్తీ అవుతుంది.';

  @override
  String get gameUiStartANewLevel => 'కొత్త స్థాయి ప్రారంభించాలా?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'స్థాయిలను మార్చడం వల్ల సేవ్ చేసిన ఆట భర్తీ అవుతుంది.';

  @override
  String get gameUiChangeLevel => 'స్థాయి మార్చండి';

  @override
  String get gameUiPlayers => 'ఆటగాళ్లు';

  @override
  String get gameUiPlayAgainstBot => 'బాట్‌తో ఆడండి';

  @override
  String get gameUi3Players => '3 ఆటగాళ్లు';

  @override
  String get gameUi4Players => '4 ఆటగాళ్లు';

  @override
  String get gameUiLevel1709305 => 'స్థాయి';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'స్థాయి $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 ఆటగాళ్లు · స్థాయి $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · పాచిక వేయండి';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 పై $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'ప్రశ్నను లోడ్ చేయడం సాధ్యం కాలేదు: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'సరైన సమాధానం!';

  @override
  String get gameUiWrongAnswer => 'తప్పు సమాధానం';

  @override
  String get gameUiYouClaimedYourReward => 'మీరు మీ బహుమతిని పొందారు!';

  @override
  String get gameUiAddedToYourTotalPoints => 'మీ మొత్తం పాయింట్లకు జోడించబడింది.';

  @override
  String get gameUiTheCorrectAnswerWas => 'సరైన సమాధానం:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 పాయింట్ల బహుమతి కోల్పోయారు.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'మీ ప్రస్తుత పాయింట్లు తగ్గించబడలేదు.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'రేపు తిరిగి వచ్చి మళ్లీ ప్రయత్నించండి.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'ప్రశ్నను లోడ్ చేయడం సాధ్యం కాలేదు.';

  @override
  String get gameUiYourReward677fa6e => 'మీ బహుమతి';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 పాయింట్లు';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'దీన్ని పొందడానికి సరిగ్గా సమాధానం ఇవ్వండి!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'మరో రౌండ్ కోసం రేపు తిరిగి రండి.';

  @override
  String get gameUiGreen => 'ఆకుపచ్చ';

  @override
  String get gameUiBlue => 'నీలం';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ఆలోచిస్తున్నారు';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ఒక పావును ఎంచుకోండి';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: పాచిక వేయండి';
  }

  @override
  String gameUiDice(String value1) {
    return 'పాచిక $value1';
  }

  @override
  String get gameUiRollDice => 'పాచిక వేయండి';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 పావు $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'ఆటగాడు $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'బాట్ $value1';
  }

  @override
  String get gameUiBot => 'బాట్';

  @override
  String get gameUiHintInsufficientPoints => 'సూచనను ఉపయోగించడానికి మీకు 20 పాయింట్లు అవసరం.';

  @override
  String get gameUiHintPurchaseFailed => 'సూచనను కొనుగోలు చేయడం సాధ్యం కాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get gameUiChessKing => 'రాజు';

  @override
  String get gameUiChessQueen => 'రాణి';

  @override
  String get gameUiChessRook => 'ఏనుగు';

  @override
  String get gameUiChessBishop => 'మంత్రి';

  @override
  String get gameUiChessKnight => 'గుర్రం';

  @override
  String get gameUiChessPawn => 'బంటు';

  @override
  String get gameUiChessEmpty => 'ఖాళీ';

  @override
  String get gameSceneLampAndFlowers => 'దీపం మరియు పూలు';

  @override
  String get gameSceneGardenFriends => 'తోట స్నేహితులు';

  @override
  String get gameSceneUnderwaterExplorers => 'నీటి అడుగున అన్వేషకులు';

  @override
  String get gameSceneOceanOrca => 'సముద్రపు ఓర్కా';

  @override
  String get gameSceneFoxInTheMeadow => 'పచ్చికబయలులో నక్క';

  @override
  String get gameSceneYellowSubmarine => 'పసుపు జలాంతర్గామి';

  @override
  String get gameSceneTurkeyInTheClearing => 'ఖాళీ స్థలంలో టర్కీ కోడి';

  @override
  String get gameSceneSafariWateringHole => 'సఫారీ నీటి గుంట';

  @override
  String get gameSceneJungleCompanions => 'అడవి సహచరులు';

  @override
  String get gameSceneGoldenPuppyGarden => 'బంగారు కుక్కపిల్ల తోట';

  @override
  String get gameSceneSeaTurtleReef => 'సముద్ర తాబేలు పగడపు దిబ్బ';

  @override
  String get gameSceneCoralReefFriends => 'పగడపు దిబ్బ స్నేహితులు';

  @override
  String get gameSceneSharedClownfish => 'పంచుకున్న క్లౌన్‌ఫిష్';

  @override
  String get gameSceneLittleDinosaur => 'చిన్న డైనోసార్';

  @override
  String get gameSceneSafariCompanions => 'సఫారీ సహచరులు';

  @override
  String get gameSceneSwirlingFlowers => 'గిరగిరా తిరిగే పూలు';

  @override
  String get gameSceneGardenKitten => 'తోటలో పిల్లి పిల్ల';

  @override
  String get gameSceneBlueOcean => 'నీలి సముద్రం';

  @override
  String get gameSceneCastlePrincess => 'కోట యువరాణి';

  @override
  String get gameSceneRedCar => 'ఎరుపు కారు';

  @override
  String get gameSceneGardenPuppy => 'తోటలో కుక్కపిల్ల';

  @override
  String get gameSceneSpaceExplorer => 'అంతరిక్ష అన్వేషకుడు';

  @override
  String get gameSceneEnchantedReadingForest => 'మంత్రముగ్ధ పఠన అడవి';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps అనంత చక్రం';

  @override
  String get gameSceneAnsible => 'ఆన్సిబుల్';

  @override
  String get gameSceneAws => 'ఏడబ్ల్యూఎస్';

  @override
  String get gameSceneAzure => 'అజూర్';

  @override
  String get gameSceneBashScripting => 'Bash స్క్రిప్టింగ్';

  @override
  String get gameSceneDocker => 'డాకర్';

  @override
  String get gameSceneGcp => 'జీసీపీ';

  @override
  String get gameSceneGit => 'గిట్';

  @override
  String get gameSceneHybridCloud => 'హైబ్రిడ్ క్లౌడ్';

  @override
  String get gameSceneIbmCloud => 'ఐబీఎం క్లౌడ్';

  @override
  String get gameSceneJavascript => 'జావాస్క్రిప్ట్';

  @override
  String get gameSceneJenkins => 'జెంకిన్స్';

  @override
  String get gameSceneKubernetes => 'కుబెర్నెటిస్';

  @override
  String get gameSceneLinux => 'లినక్స్';

  @override
  String get gameSceneMultiCloud => 'మల్టీ క్లౌడ్';

  @override
  String get gameSceneNetworking => 'నెట్‌వర్కింగ్';

  @override
  String get gameSceneOracleCloud => 'ఒరాకిల్ క్లౌడ్';

  @override
  String get gameScenePerl => 'పెర్ల్';

  @override
  String get gameScenePowershell => 'పవర్‌షెల్';

  @override
  String get gameScenePython => 'పైథాన్';

  @override
  String get gameSceneRuby => 'రూబీ';

  @override
  String get gameSceneTerraform => 'టెర్రాఫామ్';

  @override
  String get gameSceneWinterFestivalFair => 'శీతాకాల ఉత్సవ జాతర';

  @override
  String get gameSceneArmoredHeroCloseUp => 'కవచధారి వీరుడి క్లోజప్';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ముదురు ఎరుపు రంగులో కవచధారి వీరుడు';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ముదురు రంగు ప్లూమేరియా పూలు';

  @override
  String get gameSceneMangroveBoardwalk => 'మడ అడవుల చెక్క నడకదారి';

  @override
  String get gameSceneTropicalPalmReflections => 'ఉష్ణమండల తాటి చెట్ల ప్రతిబింబాలు';

  @override
  String get gameSceneMaskedFigureInShadow => 'నీడలో ముసుగు ధరించిన ఆకారం';

  @override
  String get gameSceneElectricCompanionAtSunset => 'సూర్యాస్తమయం వేళ విద్యుత్ సహచరుడు';

  @override
  String get gameSceneTrainerAndFireDragon => 'శిక్షకుడు మరియు అగ్ని డ్రాగన్';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'రత్నాలు పొదిగిన కుస్తీ ముసుగు';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ఎరుపు కుంచె గీతల్లో మల్లయోధుడు';

  @override
  String get gameSceneWrestlingChampionSalute => 'కుస్తీ ఛాంపియన్ వందనం';

  @override
  String get gameSceneMorningAtTheBakery => 'బేకరీలో ఉదయం';

  @override
  String get gameSceneGreenhousePottingBench => 'గ్రీన్‌హౌస్ కుండీల బల్ల';

  @override
  String get gameSceneHarborFishingBoat => 'ఓడరేవులో చేపల పడవ';

  @override
  String get gameSceneAtticObservatory => 'అటక పరిశీలనశాల';

  @override
  String get gameSceneToyMakerSWorkshop => 'బొమ్మల తయారీదారు వర్క్‌షాప్';

  @override
  String get gameSceneWoodlandCampsite => 'అడవిలో శిబిరం';

  @override
  String get gameSceneAfternoonMusicRoom => 'మధ్యాహ్నం సంగీత గది';

  @override
  String get gameSceneSeasideIceCreamStand => 'సముద్రతీర ఐస్ క్రీమ్ స్టాల్';

  @override
  String get gameSceneLibraryReadingNook => 'గ్రంథాలయ పఠన మూల';

  @override
  String get gameSceneSewingStudio => 'కుట్టు స్టూడియో';

  @override
  String get gameSceneFruitMarket => 'పండ్ల మార్కెట్';

  @override
  String get gameSceneKoiCourtyard => 'కోయి చేపల ప్రాంగణం';

  @override
  String get gameSceneArtistSAtelier => 'కళాకారుడి స్టూడియో';

  @override
  String get gameSceneMountainRailway => 'పర్వత రైలుమార్గం';

  @override
  String get gameSceneCountryKitchen => 'పల్లెటూరి వంటగది';

  @override
  String get gameScenePotteryWorkshop => 'కుండల తయారీ వర్క్‌షాప్';

  @override
  String get gameSceneBeachPicnic => 'బీచ్ పిక్నిక్';

  @override
  String get gameSceneFlowerShop => 'పూల దుకాణం';

  @override
  String get gameSceneClockmakerSWorkshop => 'గడియారాల తయారీదారు వర్క్‌షాప్';

  @override
  String get gameSceneRainyCafeTerrace => 'వర్షపు కేఫ్ టెర్రస్';

  @override
  String get gameSceneCastleHerbGarden => 'కోట మూలికల తోట';

  @override
  String get gameSceneClassroomArtCorner => 'తరగతి గది కళా మూల';

  @override
  String get gameSceneAquariumShop => 'అక్వేరియం దుకాణం';

  @override
  String get gameSceneAutumnLeafCollection => 'శరదృతువు ఆకుల సేకరణ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'చంద్రుని కింద ఒంటరి చెట్టు';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'కొమ్మపై శరదృతువు పువ్వు';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'పచ్చని ఆకుల మధ్య నక్క';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'కలువలతో నిండిన సరస్సుపై పడవ';

  @override
  String get gameSceneDewDropsOnALeaf => 'ఆకుపై మంచు బిందువులు';

  @override
  String get gameSceneStagInATurquoiseLake => 'నీలి-ఆకుపచ్చ సరస్సులో మగ జింక';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'నారింజ చంద్రుని కింద సైకిల్';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'లోయ పైన తెల్ల పులి';

  @override
  String get gameSceneTwoTreesInBlueWater => 'నీలి నీటిలో రెండు చెట్లు';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'విశ్వాసపాత్రమైన కుక్క పక్కన చేపల వేట';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'పర్వత సరస్సు పక్కన లిల్లీ పూలు';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'గులాబీ రంగు నదీ తీరంలో జింక';

  @override
  String get gameSceneTropicalHutAtSunset => 'సూర్యాస్తమయ సమయంలో ఉష్ణమండల గుడిసె';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ఆల్పైన్ లోయను చూస్తున్న నక్క';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'మంత్రముగ్ధమైన తోపు గుండా సూర్యాస్తమయం';

  @override
  String get learningControlTitle => 'DevOps నేర్చుకోండి';

  @override
  String get learningControlAllCategories => 'అన్ని వర్గాలు';

  @override
  String get learningControlSearchCards => 'కార్డులను వెతకండి';

  @override
  String get learningControlClearSearch => 'శోధనను తొలగించండి';

  @override
  String get learningControlCategory => 'వర్గం';

  @override
  String get learningControlShowAll => 'అన్ని కార్డులను చూపండి';

  @override
  String learningControlShowSaved(int count) {
    return 'సేవ్ చేసిన కార్డులను చూపండి ($count)';
  }

  @override
  String get learningControlShuffleOff => 'షఫుల్ ఆఫ్ చేయండి';

  @override
  String get learningControlShuffleOn => 'కార్డులను షఫుల్ చేయండి';

  @override
  String get learningControlAutoOff => 'ఆటో స్వాప్ ఆపండి';

  @override
  String get learningControlAutoOn => 'ప్రతి 10 సెకన్లకు ఆటో స్వాప్';

  @override
  String get learningControlNoSaved => 'ఇంకా కార్డులు ఏవీ సేవ్ చేయలేదు';

  @override
  String get learningControlNoMatches => 'సరిపోలే కార్డులు లేవు';

  @override
  String get learningControlResetFilters => 'ఫిల్టర్లను రీసెట్ చేయండి';

  @override
  String get learningControlPrevious => 'మునుపటిది';

  @override
  String get learningControlNext => 'తదుపరిది';

  @override
  String get learningControlProgress => 'పురోగతి';

  @override
  String get learningControlRemoveSaved => 'సేవ్ చేసిన వాటి నుండి తొలగించండి';

  @override
  String get learningControlSaveCard => 'కార్డును సేవ్ చేయండి';

  @override
  String get learningControlExample => 'ఉదాహరణ';

  @override
  String get learningControlCopyExample => 'ఉదాహరణను కాపీ చేయండి';

  @override
  String get learningControlExampleCopied => 'ఉదాహరణ కాపీ అయింది';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'లెవెల్ $value1 పూర్తయింది';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'లెవెల్ $value1 ఆడండి';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'అన్‌లాక్ చేయడానికి లెవెల్ $value1 పూర్తి చేయండి';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'రోజువారీ లాగిన్ బోనస్';

  @override
  String get sharedDialogThanksForComingBack => 'తిరిగి వచ్చినందుకు ధన్యవాదాలు!';

  @override
  String get sharedDialogDailyRewardAdded => 'మీ రోజువారీ రివార్డ్ మీ మొత్తం పాయింట్లకు జోడించబడింది.';

  @override
  String get sharedDialogAwesome => 'అద్భుతం!';

  @override
  String get accountWelcomeGuest => 'అతిథి';

  @override
  String get accountWelcomeGuestUser => 'అతిథి వినియోగదారు';

  @override
  String get accountWelcomeUser => 'వినియోగదారు';

  @override
  String get accountWelcomePlayingAsGuest => 'అతిథిగా ఆడుతున్నారు';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google ఖాతాను కనెక్ట్ చేయండి';

  @override
  String get accountWelcomeGoogleConnected => 'Google ఖాతా విజయవంతంగా కనెక్ట్ చేయబడింది! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'సైన్-ఇన్ రద్దు చేయబడింది.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'కనెక్ట్ చేయడం విఫలమైంది: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'సైన్ అవుట్ చేయండి';

  @override
  String get accountWelcomeSignOutTitle => 'సైన్ అవుట్ చేయాలా?';

  @override
  String get accountWelcomeSignOutMessage => 'మీరు ఖచ్చితంగా సైన్ అవుట్ చేయాలనుకుంటున్నారా? మీ సేవ్ చేసిన పురోగతిని యాక్సెస్ చేయడానికి మీరు మళ్లీ సైన్ ఇన్ చేయాల్సి ఉంటుంది.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'సైన్ అవుట్ విఫలమైంది: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ యాప్ డేటాను రీసెట్ చేయాలా?';

  @override
  String get accountWelcomeResetAppMessage => 'ఇది మీ అన్ని పాయింట్లు, స్ట్రీక్‌లు, గేమ్ చరిత్ర మరియు సెట్టింగ్‌లను శాశ్వతంగా తొలగిస్తుంది. మీరు సైన్ అవుట్ చేయబడి, ప్రారంభ స్క్రీన్‌కు తిరిగి పంపబడతారు. దీన్ని రద్దు చేయలేరు.';

  @override
  String get accountWelcomeResetEverything => 'అన్నీ రీసెట్ చేయండి';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'రీసెట్ విఫలమైంది: $value1';
  }

  @override
  String get accountWelcomeCancel => 'రద్దు చేయండి';

  @override
  String get accountWelcomeResetAppData => 'యాప్ డేటాను రీసెట్ చేయండి';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'అన్ని పాయింట్లు, స్ట్రీక్‌లు మరియు సెట్టింగ్‌లను క్లియర్ చేయండి';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz యాప్';

  @override
  String get accountWelcomeTranslationNotAvailable => 'అనువాదం ఇంకా అందుబాటులో లేదు';

  @override
  String get accountWelcomeContinueWithGoogle => 'Googleతో కొనసాగండి';

  @override
  String get accountWelcomeSigningIn => 'సైన్ ఇన్ చేస్తోంది...';

  @override
  String get accountWelcomeOr => 'లేదా';

  @override
  String get accountWelcomeContinueAsGuest => 'అతిథిగా కొనసాగండి';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'మీరు తర్వాత మీ ప్రొఫైల్ నుండి సైన్ ఇన్ చేయవచ్చు.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'మీరు అతిథిగా ప్రారంభించి, తర్వాత సైన్ ఇన్ చేయవచ్చు.';

  @override
  String get accountWelcomeGreetingGuest => 'స్వాగతం';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'స్వాగతం, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google సైన్-ఇన్ పూర్తయింది, కానీ వినియోగదారు ఖాతా ఏదీ తిరిగి రాలేదు.';

  @override
  String get accountWelcomeErrorEmailExists => 'ఈ ఇమెయిల్‌కు ఇప్పటికే మరో సైన్-ఇన్ పద్ధతిని ఉపయోగించి ఖాతా ఉంది.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ఈ Google ఖాతా ఇప్పటికే మరో ఖాతాతో లింక్ చేయబడింది.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google ప్రమాణీకరణ ఆధారాలు చెల్లవు లేదా గడువు ముగిసింది.';

  @override
  String get accountWelcomeErrorUserDisabled => 'ఈ ఖాతా నిలిపివేయబడింది.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google సైన్-ఇన్ ప్రస్తుతం ప్రారంభించబడలేదు.';

  @override
  String get accountWelcomeErrorNetwork => 'నెట్‌వర్క్ లోపం. దయచేసి మీ ఇంటర్నెట్ కనెక్షన్‌ను తనిఖీ చేసి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'చాలా ఎక్కువ సైన్-ఇన్ ప్రయత్నాలు జరిగాయి. దయచేసి వేచి ఉండి, మళ్లీ ప్రయత్నించండి.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'అదనపు లోపం సమాచారం లేదు.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google సైన్-ఇన్ విఫలమైంది.\n\nకోడ్: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google సైన్-ఇన్ లోపం:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'అతిథిగా కొనసాగడం సాధ్యం కాలేదు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google సైన్-ఇన్ త్వరలో అందుబాటులోకి వస్తుంది.';

  @override
  String get accountWelcomeLoginTagline => 'నేర్చుకోండి • సాధన చేయండి • పోటీపడండి • సంపాదించండి';

  @override
  String get accountWelcomeCountryRegion => 'దేశం / ప్రాంతం';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'దేశం / ప్రాంతం: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'దేశాన్ని శోధించండి';

  @override
  String get accountWelcomeCountryNotSelected => 'ఎంచుకోలేదు';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz ఎందుకు?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ ప్రాక్టీస్ ప్రశ్నలు';

  @override
  String get accountWelcomeFeatureLanguages => 'బహుళ భాషా మద్దతు';

  @override
  String get accountWelcomeFeatureStreaks => 'స్ట్రీక్‌లు & లీడర్‌బోర్డ్‌లు';

  @override
  String get accountWelcomeFeatureGames => 'గేమ్‌లు & సవాళ్లు';

  @override
  String get accountWelcomeFeatureCloud => 'క్లౌడ్ & DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'బోనస్ & రివార్డ్‌లు';

  @override
  String get accountWelcomePracticeOnTheGo => 'ఎక్కడైనా ప్రాక్టీస్ చేయండి';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android యాప్‌ను ఇన్‌స్టాల్ చేసి, ఎక్కడైనా ఆఫ్‌లైన్‌లో నేర్చుకోండి.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Playలో పొందండి';

  @override
  String achLocStreakTitle(String days) {
    return '$days రోజుల స్ట్రీక్';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days రోజుల స్ట్రీక్‌ను కొనసాగించండి.';
  }

  @override
  String get achLocYearStreakTitle => '1 సంవత్సరం స్ట్రీక్';

  @override
  String get achLocFirstQuizTitle => 'మొదటి క్విజ్';

  @override
  String get achLocFirstQuizDescription => 'మీ మొదటి క్విజ్‌ను పూర్తి చేయండి.';

  @override
  String get achLocQuiz10Title => 'క్విజ్ అన్వేషకుడు';

  @override
  String get achLocQuiz10Description => '10 క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocPoints1000Title => '1000 పాయింట్లు';

  @override
  String get achLocPoints1000Description => 'క్విజ్‌లో మొత్తం 1000 పాయింట్లు సంపాదించండి.';

  @override
  String get achLocPerfectScoreTitle => 'పర్ఫెక్ట్ స్కోర్';

  @override
  String get achLocPerfectScoreDescription => 'ఏదైనా క్విజ్‌లో 100% స్కోర్ చేయండి.';

  @override
  String get achLocQuiz25Title => 'క్విజ్ ఔత్సాహికుడు';

  @override
  String get achLocQuiz25Description => '25 క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocQuiz50Title => 'క్విజ్ మాస్టర్';

  @override
  String get achLocQuiz50Description => '50 క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocQuiz100Title => 'సెంచరీ క్లబ్';

  @override
  String get achLocQuiz100Description => '100 క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocQuiz250Title => 'క్విజ్ లెజెండ్';

  @override
  String get achLocQuiz250Description => '250 క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocPoints5000Title => '5,000 పాయింట్లు';

  @override
  String get achLocPoints5000Description => 'మొత్తం 5,000 పాయింట్లు సంపాదించండి.';

  @override
  String get achLocPoints10000Title => '10,000 పాయింట్లు';

  @override
  String get achLocPoints10000Description => 'మొత్తం 10,000 పాయింట్లు సంపాదించండి.';

  @override
  String get achLocPoints50000Title => '50,000 పాయింట్లు';

  @override
  String get achLocPoints50000Description => 'మొత్తం 50,000 పాయింట్లు సంపాదించండి.';

  @override
  String get achLocPoints100000Title => '100,000 పాయింట్లు';

  @override
  String get achLocPoints100000Description => 'మొత్తం 100,000 పాయింట్లు సంపాదించండి.';

  @override
  String get achLocDaily1Title => 'డైలీ స్టార్టర్';

  @override
  String get achLocDaily1Description => 'మీ మొదటి డైలీ క్విజ్‌ను పూర్తి చేయండి.';

  @override
  String get achLocDaily7Title => 'డైలీ అలవాటు';

  @override
  String get achLocDaily7Description => '7 డైలీ క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocDaily30Title => 'డైలీ ఛాంపియన్';

  @override
  String get achLocDaily30Description => '30 డైలీ క్విజ్‌లను పూర్తి చేయండి.';

  @override
  String get achLocSets5Title => 'సెట్ స్టార్టర్';

  @override
  String get achLocSets5Description => '5 క్విజ్ సెట్‌లను పూర్తి చేయండి.';

  @override
  String get achLocSets25Title => 'సెట్ కలెక్టర్';

  @override
  String get achLocSets25Description => '25 క్విజ్ సెట్‌లను పూర్తి చేయండి.';

  @override
  String get achLocSets50Title => 'సెట్ మాస్టర్';

  @override
  String get achLocSets50Description => '50 క్విజ్ సెట్‌లను పూర్తి చేయండి.';

  @override
  String get achLocSets100Title => 'సెట్ లెజెండ్';

  @override
  String get achLocSets100Description => '100 క్విజ్ సెట్‌లను పూర్తి చేయండి.';

  @override
  String get achLocCert1Title => 'మొదటి సర్టిఫికేట్';

  @override
  String get achLocCert1Description => 'మీ మొదటి కేటగిరీ సర్టిఫికేట్ సంపాదించండి.';

  @override
  String get achLocCert5Title => 'సర్టిఫైడ్ ప్రో';

  @override
  String get achLocCert5Description => '5 కేటగిరీ సర్టిఫికేట్లు సంపాదించండి.';

  @override
  String get achLocCert21Title => 'పూర్తిగా సర్టిఫై అయ్యారు';

  @override
  String get achLocCert21Description => 'మొత్తం 21 కేటగిరీలలో సర్టిఫికేట్ సంపాదించండి.';

  @override
  String get achLocThemeFreeValentinesWeek => 'ప్రతి సంవత్సరం ఫిబ్రవరి 7-14 వరకు ఉచితం';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ప్రతి సంవత్సరం మార్చి 8-15 వరకు ఉచితం';

  @override
  String get achLocThemeLight => 'లైట్';

  @override
  String get achLocThemeDark => 'డార్క్';

  @override
  String get achLocThemeSakura => 'సకురా';

  @override
  String get achLocThemeSunset => 'సన్‌సెట్';

  @override
  String get achLocThemeCoffee => 'కాఫీ';

  @override
  String get achLocThemeTea => 'టీ';

  @override
  String get achLocThemeOcean => 'ఓషన్';

  @override
  String get achLocThemeSolarFlare => 'సోలార్ ఫ్లేర్';

  @override
  String get achLocThemeForest => 'ఫారెస్ట్';

  @override
  String get achLocThemeAurora => 'అరోరా';

  @override
  String get achLocThemeMatrix => 'మ్యాట్రిక్స్';

  @override
  String get achLocThemeCyberPurple => 'సైబర్ పర్పుల్';

  @override
  String get achLocThemeInferno => 'ఇన్ఫెర్నో';

  @override
  String get achLocThemeMidnight => 'మిడ్‌నైట్';

  @override
  String get achLocThemeDarkGrey => 'డార్క్ గ్రే';

  @override
  String get achLocThemeBarbee => 'బార్బీ';

  @override
  String get achLocThemeValentineDay => 'వాలెంటైన్ డే';

  @override
  String get achLocThemeDqSpecial => 'DQ స్పెషల్';

  @override
  String get achLocThemeArmy => 'ఆర్మీ';

  @override
  String get achLocThemeSpiderMan => 'స్పైడర్-మ్యాన్';

  @override
  String get achLocThemeKrrish => 'క్రిష్';

  @override
  String get achLocThemeIronMan => 'ఐరన్ మ్యాన్';

  @override
  String get achLocThemeCaptainAmerica => 'కెప్టెన్ అమెరికా';

  @override
  String get achLocThemeThor => 'థోర్';

  @override
  String get achLocThemeHulk => 'హల్క్';

  @override
  String get achLocThemeBlackWidow => 'బ్లాక్ విడో';

  @override
  String get achLocThemeHawkeye => 'హాక్‌ఐ';

  @override
  String get achLocThemeBlackPanther => 'బ్లాక్ పాంథర్';

  @override
  String get achLocThemeScarletWitch => 'స్కార్లెట్ విచ్';

  @override
  String get achLocThemeVision => 'విజన్';

  @override
  String get achLocThemeAntMan => 'యాంట్-మ్యాన్';

  @override
  String get achLocThemeCaptainMarvel => 'కెప్టెన్ మార్వెల్';

  @override
  String get achLocThemeDoctorStrange => 'డాక్టర్ స్ట్రేంజ్';

  @override
  String get achLocThemeAvengers => 'ఎవెంజర్స్';

  @override
  String get achLocThemeBatman => 'బ్యాట్‌మ్యాన్';

  @override
  String get achLocThemeSuperman => 'సూపర్‌మ్యాన్';

  @override
  String get achLocThemeWonderWoman => 'వండర్ వుమన్';

  @override
  String get achLocThemeFlash => 'ఫ్లాష్';

  @override
  String get achLocThemeAquaman => 'ఆక్వామ్యాన్';

  @override
  String get achLocThemeGreenLantern => 'గ్రీన్ లాంతర్న్';

  @override
  String get achLocThemeCyborg => 'సైబోర్గ్';

  @override
  String get achLocThemeSupergirl => 'సూపర్‌గర్ల్';

  @override
  String get achLocThemeDc => 'DC హీరోలు';

  @override
  String get achLocThemeRainbow => 'రెయిన్‌బో';

  @override
  String get achLocThemeDiamond => 'డైమండ్';

  @override
  String get achLocThemeLegendary => 'లెజెండరీ';

  @override
  String get gameHintCmd001LsLa => 'అన్ని ఫైళ్లను వివరాలతో జాబితా చేయండి';

  @override
  String get gameHintCmd002Grep => 'నమూనా ఉపయోగించి టెక్స్ట్‌ను వెతకండి';

  @override
  String get gameHintCmd003Chmod => 'ఫైల్ అనుమతులను మార్చండి';

  @override
  String get gameHintCmd004DfH => 'ఖాళీ డిస్క్ స్థలాన్ని చూపండి';

  @override
  String get gameHintCmd005TailF => 'పెరుగుతున్న లాగ్ ఫైల్‌ను అనుసరించండి';

  @override
  String get gameHintCmd006PsAux => 'నడుస్తున్న ప్రాసెస్‌లను జాబితా చేయండి';

  @override
  String get gameHintCmd007GitClone => 'రిమోట్ రిపాజిటరీని కాపీ చేయండి';

  @override
  String get gameHintCmd008GitStash => 'కమిట్ చేయని మార్పులను పక్కన పెట్టండి';

  @override
  String get gameHintCmd009GitRebase => 'కొత్త ఆధారంపై కమిట్‌లను మళ్లీ వర్తింపజేయండి';

  @override
  String get gameHintCmd010GitBlame => 'ప్రతి లైన్‌ను ఎవరు మార్చారో చూపండి';

  @override
  String get gameHintCmd011DockerPs => 'నడుస్తున్న కంటైనర్లను జాబితా చేయండి';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile నుండి ఇమేజ్‌ను సృష్టించండి';

  @override
  String get gameHintCmd013DockerLogs => 'కంటైనర్ అవుట్‌పుట్‌ను చూపండి';

  @override
  String get gameHintCmd014DockerExec => 'కంటైనర్ లోపల కమాండ్‌ను నడపండి';

  @override
  String get gameHintCmd015KubectlGetPods => 'నేమ్‌స్పేస్‌లోని పాడ్‌లను జాబితా చేయండి';

  @override
  String get gameHintCmd016KubectlApply => 'ఫైల్ నుండి వనరులను సృష్టించండి';

  @override
  String get gameHintCmd017KubectlDescribe => 'వనరు వివరాలను చూపండి';

  @override
  String get gameHintCmd018KubectlScale => 'రెప్లికాల సంఖ్యను మార్చండి';

  @override
  String get gameHintCmd019TerraformInit => 'ప్రొవైడర్లను డౌన్‌లోడ్ చేసి సిద్ధం చేయండి';

  @override
  String get gameHintCmd020TerraformPlan => 'ఇన్‌ఫ్రాస్ట్రక్చర్ మార్పుల ప్రివ్యూ చూడండి';

  @override
  String get gameHintCmd021TerraformApply => 'ఇన్‌ఫ్రాస్ట్రక్చర్‌ను సృష్టించండి లేదా నవీకరించండి';

  @override
  String get gameHintCmd022TerraformDestroy => 'నిర్వహిస్తున్న ఇన్‌ఫ్రాస్ట్రక్చర్‌ను తొలగించండి';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ఆటోమేషన్ ప్లేబుక్‌ను నడపండి';

  @override
  String get gameHintCmd024Ping => 'ICMP తో చేరుకోగలగడాన్ని పరీక్షించండి';

  @override
  String get gameHintCmd025Traceroute => 'హోస్ట్‌కు వెళ్లే మార్గాన్ని చూపండి';

  @override
  String get gameHintCmd026Curl => 'URL నుండి డేటాను బదిలీ చేయండి';

  @override
  String get gameHintCmd027Ssh => 'రిమోట్ మెషీన్‌కు సురక్షితంగా లాగిన్ అవ్వండి';

  @override
  String get gameHintCmd028CrontabE => 'షెడ్యూల్ చేసిన జాబ్‌లను సవరించండి';

  @override
  String get gameHintCmd029SystemctlStatus => 'సేవ స్థితిని తనిఖీ చేయండి';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes కు చార్ట్‌ను డిప్లాయ్ చేయండి';

  @override
  String get gameHintWord001Git => 'సోర్స్ కోడ్‌లో మార్పులను ట్రాక్ చేస్తుంది.';

  @override
  String get gameHintWord002Aws => 'Amazon క్లౌడ్ ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord003Api => 'సాఫ్ట్‌వేర్ వ్యవస్థలు పరస్పరం సంభాషించడానికి వీలు కల్పించే ఒప్పందం.';

  @override
  String get gameHintWord004Dns => 'డొమైన్ పేర్లను IP చిరునామాలుగా మారుస్తుంది.';

  @override
  String get gameHintWord005Cli => 'కమాండ్‌లను నడపడానికి టెక్స్ట్ ఆధారిత ఇంటర్‌ఫేస్.';

  @override
  String get gameHintWord006Cpu => 'సూచనలను అమలు చేసే ప్రాసెసర్.';

  @override
  String get gameHintWord007Ram => 'నడుస్తున్న ప్రోగ్రామ్‌లు ఉపయోగించే తాత్కాలిక మెమరీ.';

  @override
  String get gameHintWord008Ssh => 'రిమోట్ షెల్ యాక్సెస్ కోసం సురక్షిత ప్రోటోకాల్.';

  @override
  String get gameHintWord009Yaml => 'మనుషులు చదవగలిగే డేటా సీరియలైజేషన్ ఫార్మాట్.';

  @override
  String get gameHintWord010Linux => 'ఓపెన్-సోర్స్ ఆపరేటింగ్ సిస్టమ్ కెర్నల్ మరియు కుటుంబం.';

  @override
  String get gameHintWord011Bash => 'ప్రముఖ Unix కమాండ్ షెల్.';

  @override
  String get gameHintWord012Cloud => 'నెట్‌వర్క్ ద్వారా అవసరమైనప్పుడు అందించే కంప్యూటింగ్.';

  @override
  String get gameHintWord013Docker => 'కంటైనర్లను నిర్మించి నడపడానికి ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord014Azure => 'Microsoft క్లౌడ్ ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord015Python => 'విస్తృతంగా ఉపయోగించే స్క్రిప్టింగ్ మరియు ప్రోగ్రామింగ్ భాష.';

  @override
  String get gameHintWord016Github => 'ప్రముఖ హోస్టెడ్ Git సహకార సేవ.';

  @override
  String get gameHintWord017Bgp => 'స్వయంప్రతిపత్త వ్యవస్థల మధ్య మార్గాలను మార్పిడి చేసే రూటింగ్ ప్రోటోకాల్.';

  @override
  String get gameHintWord018Jenkins => 'తరచుగా CI కోసం ఉపయోగించే ఆటోమేషన్ సర్వర్.';

  @override
  String get gameHintWord019Port => 'నెట్‌వర్క్ సేవలు ఉపయోగించే సంఖ్యా ఎండ్‌పాయింట్.';

  @override
  String get gameHintWord020Proxy => 'క్లయింట్ల తరఫున అభ్యర్థనలను ముందుకు పంపే సర్వర్.';

  @override
  String get gameHintWord021Cache => 'తరచుగా మళ్లీ వాడే డేటాకు వేగవంతమైన నిల్వ.';

  @override
  String get gameHintWord022Cron => 'పునరావృత కమాండ్‌ల కోసం Unix షెడ్యూలర్.';

  @override
  String get gameHintWord023Bicep => 'ఇన్‌ఫ్రాస్ట్రక్చర్ యాజ్ కోడ్ కోసం Azure డిక్లరేటివ్ భాష.';

  @override
  String get gameHintWord024Apigee => 'కేంద్రీకృత API నిర్వహణ కోసం Google Cloud ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord025Root => 'Unix తరహా వ్యవస్థల్లో ప్రత్యేకాధికారాల అడ్మినిస్ట్రేటర్ ఖాతా.';

  @override
  String get gameHintWord026Nginx => 'వెబ్ సర్వర్ మరియు రివర్స్ ప్రాక్సీ.';

  @override
  String get gameHintWord027Redis => 'తరచుగా కాష్‌గా ఉపయోగించే ఇన్-మెమరీ డేటా స్టోర్.';

  @override
  String get gameHintWord028Mysql => 'ప్రముఖ రిలేషనల్ డేటాబేస్ వ్యవస్థ.';

  @override
  String get gameHintWord029Ruby => 'Chef వంటి సాధనాలు ఉపయోగించే ప్రోగ్రామింగ్ భాష.';

  @override
  String get gameHintWord030Helm => 'సాధారణంగా Kubernetes తో ఉపయోగించే ప్యాకేజీ మేనేజర్.';

  @override
  String get gameHintWord031Pod => 'Kubernetes లో డిప్లాయ్ చేయగల అతి చిన్న యూనిట్.';

  @override
  String get gameHintWord032Image => 'కంటైనర్‌ను సృష్టించడానికి ఉపయోగించే చదవడానికి-మాత్రమే మూసపోత.';

  @override
  String get gameHintWord033Build => 'సోర్స్ మరియు డిపెండెన్సీల నుండి ఆర్టిఫాక్ట్‌ను సృష్టిస్తుంది.';

  @override
  String get gameHintWord034Deploy => 'అప్లికేషన్‌ను ఒక పరిసరంలోకి విడుదల చేస్తుంది.';

  @override
  String get gameHintWord035Terraform => 'ఇన్‌ఫ్రాస్ట్రక్చర్ యాజ్ కోడ్ కోసం HashiCorp సాధనం.';

  @override
  String get gameHintWord036Ansible => 'ఏజెంట్ అవసరం లేని ఆటోమేషన్ మరియు కాన్ఫిగరేషన్ సాధనం.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes కోసం కమాండ్-లైన్ క్లయింట్.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform సంక్షిప్త రూపం.';

  @override
  String get gameHintWord039Gitops => 'Git ను సత్య మూలంగా ఉపయోగించే నిర్వహణ నమూనా.';

  @override
  String get gameHintWord040Pipeline => 'బిల్డ్, టెస్ట్, విడుదల దశల స్వయంచాలక క్రమం.';

  @override
  String get gameHintWord041Container => 'తన డిపెండెన్సీలతో ప్యాక్ చేసిన వేరుచేసిన ప్రాసెస్.';

  @override
  String get gameHintWord042Cluster => 'ఉమ్మడి వ్యవస్థగా నిర్వహించే యంత్రాల సమూహం.';

  @override
  String get gameHintWord043Ingress => 'బాహ్య HTTP రూటింగ్ కోసం Kubernetes API ఆబ్జెక్ట్.';

  @override
  String get gameHintWord044Firewall => 'భద్రతా నియమాల ప్రకారం నెట్‌వర్క్ ట్రాఫిక్‌ను వడపోస్తుంది.';

  @override
  String get gameHintWord045Subnet => 'IP నెట్‌వర్క్ యొక్క తార్కిక ఉపవిభాగం.';

  @override
  String get gameHintWord046Gateway => 'వేర్వేరు నెట్‌వర్క్‌లను కలిపే నెట్‌వర్క్ నోడ్.';

  @override
  String get gameHintWord047Router => 'నెట్‌వర్క్‌ల మధ్య ప్యాకెట్‌లను ముందుకు పంపుతుంది.';

  @override
  String get gameHintWord048Switch => 'స్థానిక నెట్‌వర్క్‌లో పరికరాలను కలుపుతుంది.';

  @override
  String get gameHintWord049Repository => 'సోర్స్ కోడ్ లేదా ప్యాకేజీల కోసం నిర్వహిత నిల్వ.';

  @override
  String get gameHintWord050Systemd => 'Linux ఇనిట్ వ్యవస్థ మరియు సేవా నిర్వాహకం.';

  @override
  String get gameHintWord051Journalctl => 'systemd జర్నల్ లాగ్‌లను చదవడానికి ఉపయోగించే కమాండ్.';

  @override
  String get gameHintWord052Permission => 'ఎవరు చదవవచ్చు, రాయవచ్చు, నడపవచ్చు అనేది నియంత్రించే నియమం.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud నిర్వహిత PostgreSQL-అనుకూల డేటాబేస్.';

  @override
  String get gameHintWord054Configmap => 'రహస్యం కాని కాన్ఫిగరేషన్ కోసం Kubernetes ఆబ్జెక్ట్.';

  @override
  String get gameHintWord055Secret => 'సున్నితమైన డేటా కోసం ఉద్దేశించిన Kubernetes ఆబ్జెక్ట్.';

  @override
  String get gameHintWord056Persistent => 'వర్క్‌లోడ్ పునఃప్రారంభమైనా నిలిచి ఉండే నిల్వను వివరిస్తుంది.';

  @override
  String get gameHintWord057Volume => 'కంటైనర్‌లోకి మౌంట్ చేసిన ఫైల్‌సిస్టమ్ నిల్వ.';

  @override
  String get gameHintWord058Storage => 'ఫైళ్లు, ఆబ్జెక్ట్‌లు లేదా బ్లాక్‌ల కోసం శాశ్వత స్థలం.';

  @override
  String get gameHintWord059Replica => 'స్కేల్ లేదా విశ్వసనీయత కోసం నిర్వహించే వర్క్‌లోడ్ ఇన్‌స్టెన్స్ కాపీ.';

  @override
  String get gameHintWord060Deployment => 'స్టేట్‌లెస్ అప్లికేషన్ పాడ్‌ల కోసం Kubernetes కంట్రోలర్.';

  @override
  String get gameHintWord061Dockerfile => 'Docker ఇమేజ్‌ను నిర్మించడానికి ఉపయోగించే సూచనలు.';

  @override
  String get gameHintWord062Database => 'అప్లికేషన్లు క్వెరీ చేసే వ్యవస్థీకృత నిల్వ.';

  @override
  String get gameHintWord063Automation => 'మానవ దశలు లేకుండా పునరావృత పనులను సాఫ్ట్‌వేర్‌తో చేయడం.';

  @override
  String get gameHintWord064Anthos => 'పరిసరాల అంతటా క్లస్టర్లను నిర్వహించే Google Cloud ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord065Bigquery => 'భారీ స్థాయి డేటా విశ్లేషణ కోసం Google Cloud సేవ.';

  @override
  String get gameHintWord066Bigtable => 'విశ్లేషణ కోసం Google Cloud వైడ్-కాలమ్ NoSQL డేటాబేస్.';

  @override
  String get gameHintWord067Loadbalancer => 'వచ్చే ట్రాఫిక్‌ను అనేక బ్యాకెండ్‌ల మధ్య పంపిణీ చేస్తుంది.';

  @override
  String get gameHintWord068Prometheus => 'టైమ్-సిరీస్ మెట్రిక్స్‌ను నిల్వ చేసే మానిటరింగ్ వ్యవస్థ.';

  @override
  String get gameHintWord069Grafana => 'అబ్జర్వబిలిటీ డేటాను క్వెరీ చేసి దృశ్యమానం చేసే ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud నిర్వహిత NoSQL JSON డాక్యుమెంట్ డేటాబేస్.';

  @override
  String get gameHintWord071Cloudtrail => 'ఆడిటింగ్ కోసం API కార్యకలాపాలను రికార్డ్ చేసే AWS సేవ.';

  @override
  String get gameHintWord072Statefulset => 'స్థిరమైన గుర్తింపు అవసరమైన వర్క్‌లోడ్‌ల కోసం Kubernetes కంట్రోలర్.';

  @override
  String get gameHintWord073Daemonset => 'ఎంచుకున్న నోడ్‌లపై పాడ్‌ను నడిపే Kubernetes కంట్రోలర్.';

  @override
  String get gameHintWord074Serviceaccount => 'వర్క్‌లోడ్ లేదా ప్రాసెస్ ఉపయోగించే Kubernetes గుర్తింపు.';

  @override
  String get gameHintWord075Networkpolicy => 'పాడ్ నెట్‌వర్క్ ట్రాఫిక్‌ను నియంత్రించే Kubernetes వనరు.';

  @override
  String get gameHintWord076Certificate => 'TLS లో గుర్తింపును నిరూపించడానికి ఉపయోగించే డిజిటల్ పత్రం.';

  @override
  String get gameHintWord077Encryption => 'అధికారం ఉన్నవారే చదవగలిగేలా డేటాను మారుస్తుంది.';

  @override
  String get gameHintWord078Observability => 'వ్యవస్థ అవుట్‌పుట్‌ల నుండి దాని ప్రవర్తనను ఊహించగల సామర్థ్యం.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes క్లస్టర్ల లోపల సాధారణంగా ఉపయోగించే DNS సర్వర్.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API ల ద్వారా క్లౌడ్ వనరులను నిర్వహించే ప్రాజెక్ట్.';

  @override
  String get gameHintWord081Failover => 'వైఫల్యం తర్వాత స్టాండ్‌బై భాగానికి మారడం.';

  @override
  String get gameHintWord082Idempotency => 'ఒక చర్యను మళ్లీ మళ్లీ చేసినా ఒకసారి చేసినంత ప్రభావమే ఉండే లక్షణం.';

  @override
  String get gameHintWord083Dataflow => 'స్ట్రీమ్ మరియు బ్యాచ్ డేటా ప్రాసెసింగ్ కోసం Google Cloud సేవ.';

  @override
  String get gameHintWord084Orchestration => 'అనేక స్వయంచాలక వర్క్‌లోడ్‌ల సమన్వయ నిర్వహణ.';

  @override
  String get gameHintWord085Dataplex => 'సంస్థ డేటాను కనుగొని పాలించడానికి Google Cloud సేవ.';

  @override
  String get gameHintWord086Serverless => 'ఇన్‌ఫ్రాస్ట్రక్చర్ నిర్వహణ దాచబడే అమలు నమూనా.';

  @override
  String get gameHintWord087Distributed => 'భాగాలు అనేక నెట్‌వర్క్ యంత్రాలపై నడిచే వ్యవస్థ.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud నిర్వహిత Apache Spark మరియు Hadoop పరిసరం.';

  @override
  String get gameHintWord089Dynamodb => 'తరచుగా Terraform స్టేట్ లాకింగ్‌కు ఉపయోగించే AWS NoSQL డేటాబేస్.';

  @override
  String get gameHintWord090Provisioning => 'ఇన్‌ఫ్రాస్ట్రక్చర్ లేదా వనరులను వినియోగానికి సిద్ధం చేయడం.';

  @override
  String get gameHintWord091Elasticsearch => 'కేంద్రీకృత లాగింగ్ కోసం సాధారణంగా ఉపయోగించే సెర్చ్ ఇంజిన్.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes క్లస్టర్ స్థితిని ఉంచే కీ-విలువ నిల్వ.';

  @override
  String get gameHintWord093Authentication => 'వినియోగదారు లేదా సేవ ఎవరో ధృవీకరించే ప్రక్రియ.';

  @override
  String get gameHintWord094Authorization => 'ఒక గుర్తింపు ఏం చేయడానికి అనుమతి ఉందో నిర్ణయించే ప్రక్రియ.';

  @override
  String get gameHintWord095Expressroute => 'డేటా సెంటర్లకు ప్రత్యేక ప్రైవేట్ కనెక్టివిటీ కోసం Azure సేవ.';

  @override
  String get gameHintWord096Configuration => 'సాఫ్ట్‌వేర్ ఎలా ప్రవర్తించాలో నిర్ణయించే సెట్టింగ్‌లు.';

  @override
  String get gameHintWord097Infrastructure => 'అప్లికేషన్లకు తోడ్పడే కంప్యూట్, నెట్‌వర్క్, నిల్వ వనరులు.';

  @override
  String get gameHintWord098Fastconnect => 'ప్రత్యేక ప్రైవేట్ నెట్‌వర్క్ కనెక్షన్ల కోసం Oracle Cloud సేవ.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ఉపయోగించే పరిశ్రమ-ప్రమాణ కంటైనర్ రన్‌టైమ్.';

  @override
  String get gameHintWord100Kubernetes => 'కంటైనర్ ఆర్కెస్ట్రేషన్ ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord101Http => 'వెబ్ వనరులను అభ్యర్థించడానికి ఉపయోగించే అప్లికేషన్ ప్రోటోకాల్.';

  @override
  String get gameHintWord102Https => 'వెబ్ అభ్యర్థన ప్రోటోకాల్ యొక్క గుప్తీకరించిన వెర్షన్.';

  @override
  String get gameHintWord103Tcp => 'నమ్మకమైన క్రమబద్ధ డెలివరీ అందించే ట్రాన్స్‌పోర్ట్ ప్రోటోకాల్.';

  @override
  String get gameHintWord104Udp => 'డేటాగ్రామ్‌ల కోసం ఉపయోగించే కనెక్షన్‌లేని ట్రాన్స్‌పోర్ట్ ప్రోటోకాల్.';

  @override
  String get gameHintWord105Tls => 'నెట్‌వర్క్‌లో మార్పిడి అయ్యే డేటాను భద్రపరిచే ప్రోటోకాల్.';

  @override
  String get gameHintWord106Ssl => 'ఆధునిక ట్రాన్స్‌పోర్ట్ భద్రతా ప్రోటోకాల్‌కు పాత పూర్వగామి.';

  @override
  String get gameHintWord107Ftp => 'ఫైళ్లను బదిలీ చేయడానికి సంప్రదాయ ప్రోటోకాల్.';

  @override
  String get gameHintWord108Sftp => 'సురక్షిత షెల్ కనెక్షన్ ద్వారా సాగే ఫైల్ బదిలీ ప్రోటోకాల్.';

  @override
  String get gameHintWord109Smtp => 'సర్వర్ల మధ్య ఇమెయిల్ పంపడానికి ఉపయోగించే ప్రోటోకాల్.';

  @override
  String get gameHintWord110Snmp => 'నెట్‌వర్క్ పరికరాలను నిర్వహించి పర్యవేక్షించే ప్రోటోకాల్.';

  @override
  String get gameHintWord111Icmp => 'నెట్‌వర్క్ లోపాలు మరియు ping సందేశాలను మోసే ప్రోటోకాల్.';

  @override
  String get gameHintWord112Arp => 'స్థానిక IPv4 చిరునామాలను హార్డ్‌వేర్ చిరునామాలుగా పరిష్కరిస్తుంది.';

  @override
  String get gameHintWord113Dhcp => 'నెట్‌వర్క్ క్లయింట్లకు IP కాన్ఫిగరేషన్‌ను స్వయంచాలకంగా కేటాయిస్తుంది.';

  @override
  String get gameHintWord114Nat => 'ప్యాకెట్‌లు గేట్‌వే దాటేటప్పుడు నెట్‌వర్క్ చిరునామాలను మారుస్తుంది.';

  @override
  String get gameHintWord115Vpn => 'రిమోట్ నెట్‌వర్క్‌లు లేదా వినియోగదారులను కలిపే గుప్తీకరించిన టన్నెల్.';

  @override
  String get gameHintWord116Vpc => 'పబ్లిక్ క్లౌడ్‌లో వేరుచేసిన వర్చువల్ నెట్‌వర్క్.';

  @override
  String get gameHintWord117Vlan => 'స్విచ్డ్ నెట్‌వర్క్ యొక్క తార్కిక విభజన.';

  @override
  String get gameHintWord118Wan => 'విశాల భౌగోళిక ప్రాంతంలో విస్తరించిన నెట్‌వర్క్.';

  @override
  String get gameHintWord119Lan => 'స్థానిక ప్రాంతంలోని పరికరాలను కలిపే నెట్‌వర్క్.';

  @override
  String get gameHintWord120Cdn => 'డెలివరీ చేసిన కంటెంట్‌ను కాష్ చేసే పంపిణీ ఎడ్జ్ నెట్‌వర్క్.';

  @override
  String get gameHintWord121Cidr => 'స్లాష్ పొడవుతో నెట్‌వర్క్ ప్రిఫిక్స్‌ను తెలిపే సంకేతం.';

  @override
  String get gameHintWord122Host => 'నెట్‌వర్క్‌కు కనెక్ట్ అయిన కంప్యూటర్ లేదా ఎండ్‌పాయింట్.';

  @override
  String get gameHintWord123Hostname => 'నెట్‌వర్క్ యంత్రానికి ఇచ్చిన మనుషులు చదవగల పేరు.';

  @override
  String get gameHintWord124Domain => 'ఇంటర్నెట్ నామకరణ వ్యవస్థలో పేరు పెట్టిన పరిపాలనా ప్రాంతం.';

  @override
  String get gameHintWord125Zone => 'DNS నేమ్‌స్పేస్ యొక్క పరిపాలనా భాగం.';

  @override
  String get gameHintWord126Record => 'DNS డేటాబేస్‌లోని ఒక్కొక్క ఎంట్రీ.';

  @override
  String get gameHintWord127Aaaa => 'పేరును IPv6 చిరునామాగా పరిష్కరించే DNS రికార్డ్ రకం.';

  @override
  String get gameHintWord128Ptr => 'రివర్స్ చిరునామా శోధనలకు ఉపయోగించే DNS రికార్డ్ రకం.';

  @override
  String get gameHintWord129Txt => 'టెక్స్ట్ విలువలను నిల్వ చేసే DNS రికార్డ్ రకం.';

  @override
  String get gameHintWord130Cname => 'ఒక పేరును మరొక పేరుకు మారుపేరుగా చేసే DNS రికార్డ్.';

  @override
  String get gameHintWord131Route => 'ప్యాకెట్‌లను గమ్యం వైపు మళ్లించే మార్గ ఎంట్రీ.';

  @override
  String get gameHintWord132Routing => 'నెట్‌వర్క్‌ల మధ్య ట్రాఫిక్‌కు మార్గాలను ఎంచుకోవడం.';

  @override
  String get gameHintWord133Packet => 'నెట్‌వర్క్ ద్వారా ప్రసారమయ్యే డేటా యూనిట్.';

  @override
  String get gameHintWord134Protocol => 'వ్యవస్థల మధ్య సంభాషణకు అంగీకరించిన నియమాలు.';

  @override
  String get gameHintWord135Ack => 'డేటా అందినట్లు ధృవీకరించే TCP ఫ్లాగ్.';

  @override
  String get gameHintWord136Bandwidth => 'కమ్యూనికేషన్ లింక్ సామర్థ్యం.';

  @override
  String get gameHintWord137Latency => 'అభ్యర్థన లేదా ప్యాకెట్‌కు ప్రతిస్పందన రావడానికి ముందు ఆలస్యం.';

  @override
  String get gameHintWord138Throughput => 'ప్రతి యూనిట్ సమయంలో ప్రాసెస్ అయ్యే ఉపయోగకర పని లేదా డేటా పరిమాణం.';

  @override
  String get gameHintWord139Mtu => 'విభజన లేకుండా లింక్ ప్రసారం చేయగల అతిపెద్ద ప్యాకెట్ పరిమాణం.';

  @override
  String get gameHintWord140Alpn => 'అప్లికేషన్-లేయర్ ప్రోటోకాల్‌ను అంగీకరించే TLS పొడిగింపు.';

  @override
  String get gameHintWord141Grep => 'సరిపోలే నమూనా కోసం టెక్స్ట్ లైన్‌లను వెతుకుతుంది.';

  @override
  String get gameHintWord142Sed => 'టెక్స్ట్ ప్రతిక్షేపణలకు సాధారణంగా ఉపయోగించే స్ట్రీమ్ ఎడిటర్.';

  @override
  String get gameHintWord143Lscpu => 'ప్రాసెసర్ ఆర్కిటెక్చర్ మరియు కోర్ వివరాలను చూపే Linux కమాండ్.';

  @override
  String get gameHintWord144Find => 'ఫైల్ నిబంధనలతో డైరెక్టరీ వృక్షాన్ని వెతుకుతుంది.';

  @override
  String get gameHintWord145Lsblk => 'బ్లాక్ పరికరాలు మరియు వాటి సంబంధాలను జాబితా చేసే Linux కమాండ్.';

  @override
  String get gameHintWord146Sort => 'టెక్స్ట్ లైన్‌లను క్రమబద్ధీకరిస్తుంది.';

  @override
  String get gameHintWord147Uniq => 'ప్రక్క ప్రక్కనే ఉన్న నకిలీ లైన్‌లను వడపోస్తుంది.';

  @override
  String get gameHintWord148Head => 'ఫైల్ ప్రారంభాన్ని ముద్రిస్తుంది.';

  @override
  String get gameHintWord149Tail => 'ఫైల్ చివరను ముద్రిస్తుంది మరియు కలుస్తున్న లాగ్‌లను అనుసరించగలదు.';

  @override
  String get gameHintWord150Cat => 'ఫైళ్లను కలిపి వాటి విషయాన్ని ముద్రిస్తుంది.';

  @override
  String get gameHintWord151Cut => 'లైన్‌ల నుండి ఎంచుకున్న ఫీల్డ్‌లు లేదా అక్షర నిలువు వరుసలను సంగ్రహిస్తుంది.';

  @override
  String get gameHintWord152Tee => 'స్టాండర్డ్ ఇన్‌పుట్‌ను ఫైళ్లకు మరియు స్టాండర్డ్ అవుట్‌పుట్‌కు కాపీ చేస్తుంది.';

  @override
  String get gameHintWord153Echo => 'తన ఆర్గ్యుమెంట్‌లను స్టాండర్డ్ అవుట్‌పుట్‌కు రాస్తుంది.';

  @override
  String get gameHintWord154Printf => 'షెల్ లేదా ప్రోగ్రామ్ నుండి ఫార్మాట్ చేసిన టెక్స్ట్‌ను ముద్రిస్తుంది.';

  @override
  String get gameHintWord155Touch => 'ఫైల్ టైమ్‌స్టాంప్‌లను నవీకరిస్తుంది లేదా ఖాళీ ఫైల్‌ను సృష్టిస్తుంది.';

  @override
  String get gameHintWord156Mkdir => 'డైరెక్టరీలను సృష్టిస్తుంది.';

  @override
  String get gameHintWord157Rmdir => 'ఖాళీ డైరెక్టరీలను తొలగిస్తుంది.';

  @override
  String get gameHintWord158Chmod => 'Unix ఫైల్ అనుమతి బిట్‌లను మారుస్తుంది.';

  @override
  String get gameHintWord159Chown => 'ఫైల్ యాజమాన్యాన్ని మారుస్తుంది.';

  @override
  String get gameHintWord160Chgrp => 'ఫైల్ గ్రూప్ యాజమాన్యాన్ని మారుస్తుంది.';

  @override
  String get gameHintWord161Pwd => 'ప్రస్తుత వర్కింగ్ డైరెక్టరీని ముద్రిస్తుంది.';

  @override
  String get gameHintWord162Apt => 'Debian ఆధారిత వ్యవస్థలు ఉపయోగించే ప్యాకేజీ నిర్వహణ సాధనం.';

  @override
  String get gameHintWord163Top => 'ప్రాసెస్‌లు మరియు సిస్టమ్ వనరుల వినియోగం యొక్క ఇంటరాక్టివ్ ప్రదర్శన.';

  @override
  String get gameHintWord164Agent => 'హోస్ట్‌పై పనిని అమలు చేసే లేదా నివేదించే సాఫ్ట్‌వేర్ భాగం.';

  @override
  String get gameHintWord165Kill => 'ప్రాసెస్ ఐడెంటిఫైయర్ ద్వారా దానికి సిగ్నల్ పంపుతుంది.';

  @override
  String get gameHintWord166Signal => 'ఆపరేటింగ్ సిస్టమ్ ప్రాసెస్‌కు అందించే నోటిఫికేషన్.';

  @override
  String get gameHintWord167Sigkill => 'ప్రాసెస్‌ను వెంటనే ముగించే Unix సిగ్నల్.';

  @override
  String get gameHintWord168Nice => 'సర్దుబాటు చేసిన షెడ్యూలింగ్ ప్రాధాన్యతతో ప్రాసెస్‌ను ప్రారంభిస్తుంది.';

  @override
  String get gameHintWord169Renice => 'నడుస్తున్న ప్రాసెస్ షెడ్యూలింగ్ ప్రాధాన్యతను మారుస్తుంది.';

  @override
  String get gameHintWord170Jobs => 'ప్రస్తుత షెల్ నిర్వహించే జాబ్‌లను జాబితా చేస్తుంది.';

  @override
  String get gameHintWord171Nohup => 'హ్యాంగప్ సిగ్నల్‌లను విస్మరిస్తూ కమాండ్‌ను నడుపుతుంది.';

  @override
  String get gameHintWord172Screen => 'వేరు చేయగల సెషన్‌లకు మద్దతిచ్చే టెర్మినల్ మల్టిప్లెక్సర్.';

  @override
  String get gameHintWord173Uptime => 'వ్యవస్థ ఎంతసేపటి నుండి నడుస్తోందో తెలుపుతుంది.';

  @override
  String get gameHintWord174Uname => 'సిస్టమ్ మరియు కెర్నల్ సమాచారాన్ని ముద్రిస్తుంది.';

  @override
  String get gameHintWord175Whoami => 'ప్రస్తుత ప్రభావవంతమైన వినియోగదారు పేరును ముద్రిస్తుంది.';

  @override
  String get gameHintWord176Umask => 'ఫైళ్లను సృష్టించేటప్పుడు ఉపయోగించే అనుమతి మాస్క్‌ను సెట్ చేస్తుంది.';

  @override
  String get gameHintWord177Usermod => 'ఇప్పటికే ఉన్న వినియోగదారు ఖాతాను మార్చే Linux కమాండ్.';

  @override
  String get gameHintWord178Crontab => 'షెడ్యూల్ చేసిన పునరావృత షెల్ జాబ్‌లను సవరిస్తుంది లేదా జాబితా చేస్తుంది.';

  @override
  String get gameHintWord179Findmnt => 'మౌంట్ చేసిన ఫైల్‌సిస్టమ్ సమాచారాన్ని చూపే Linux కమాండ్.';

  @override
  String get gameHintWord180Mount => 'ఫైల్‌సిస్టమ్‌ను డైరెక్టరీ వృక్షానికి జోడిస్తుంది.';

  @override
  String get gameHintWord181Sigterm => 'ప్రాసెస్‌ను మర్యాదగా ముగించమని కోరే Unix సిగ్నల్.';

  @override
  String get gameHintWord182Fstab => 'మౌంట్ చేయాల్సిన ఫైల్‌సిస్టమ్‌లను వివరించే సిస్టమ్ పట్టిక.';

  @override
  String get gameHintWord183Swap => 'భౌతిక మెమరీకి అదనంగా ఉపయోగించే డిస్క్ ఆధారిత స్థలం.';

  @override
  String get gameHintWord184Tmpfs => 'వర్చువల్ మెమరీ ఆధారిత తాత్కాలిక ఫైల్‌సిస్టమ్.';

  @override
  String get gameHintWord185Proc => 'ప్రాసెస్ మరియు కెర్నల్ సమాచారాన్ని చూపే Linux వర్చువల్ ఫైల్‌సిస్టమ్.';

  @override
  String get gameHintWord186Syslog => 'ప్రామాణిక లాగింగ్ ప్రోటోకాల్ మరియు సందేశ ఫార్మాట్.';

  @override
  String get gameHintWord187Dmesg => 'కెర్నల్ రింగ్ బఫర్ నుండి సందేశాలను చూపుతుంది.';

  @override
  String get gameHintWord188Free => 'వాడిన మరియు అందుబాటులో ఉన్న సిస్టమ్ మెమరీని తెలుపుతుంది.';

  @override
  String get gameHintWord189Stat => 'ఫైల్ మెటాడేటా వివరాలను చూపుతుంది.';

  @override
  String get gameHintWord190Lsof => 'తెరిచి ఉన్న ఫైళ్లను మరియు వాటిని పట్టుకున్న ప్రాసెస్‌లను జాబితా చేస్తుంది.';

  @override
  String get gameHintWord191Netstat => 'నెట్‌వర్క్ కనెక్షన్లు మరియు రూటింగ్ సమాచారాన్ని చూపుతుంది.';

  @override
  String get gameHintWord192Checksum => 'డేటాలో మార్పులు లేదా పాడవడాన్ని గుర్తించడానికి లెక్కించిన విలువ.';

  @override
  String get gameHintWord193Ping => 'ఎకో అభ్యర్థనలతో నెట్‌వర్క్ చేరుకోగలగడాన్ని పరీక్షిస్తుంది.';

  @override
  String get gameHintWord194Traceroute => 'నెట్‌వర్క్ గమ్యం వైపు మధ్యంతర హాప్‌లను చూపుతుంది.';

  @override
  String get gameHintWord195Resolver => 'పేరు క్వెరీలకు సమాధానాలు వెతికే DNS భాగం.';

  @override
  String get gameHintWord196Nslookup => 'DNS పేర్లు మరియు చిరునామాలను వెతుకుతుంది.';

  @override
  String get gameHintWord197Telnet => 'పాత, గుప్తీకరణ లేని రిమోట్ టెర్మినల్ ప్రోటోకాల్.';

  @override
  String get gameHintWord198Tftp => 'UDP ఆధారిత సరళమైన ఫైల్ బదిలీ ప్రోటోకాల్.';

  @override
  String get gameHintWord199Daemon => 'Unix తరహా వ్యవస్థల్లో బ్యాక్‌గ్రౌండ్ సేవా ప్రాసెస్.';

  @override
  String get gameHintWord200Kernel => 'ఆపరేటింగ్ సిస్టమ్ వనరులను నిర్వహించే ప్రధాన భాగం.';

  @override
  String get gameHintWord201Commit => 'వెర్షన్ నియంత్రణలో మార్పుల రికార్డ్ చేసిన స్నాప్‌షాట్.';

  @override
  String get gameHintWord202Branch => 'అభివృద్ధి రేఖను సూచించే కదిలే రిఫరెన్స్.';

  @override
  String get gameHintWord203Merge => 'వేర్వేరు అభివృద్ధి రేఖల చరిత్రలను కలుపుతుంది.';

  @override
  String get gameHintWord204Rebase => 'వేరొక బేస్ కమిట్ పైన కమిట్‌లను మళ్లీ వర్తింపజేస్తుంది.';

  @override
  String get gameHintWord205Clone => 'రిమోట్ రిపాజిటరీ యొక్క స్థానిక కాపీని సృష్టిస్తుంది.';

  @override
  String get gameHintWord206Fetch => 'విలీనం చేయకుండా రిమోట్ ఆబ్జెక్ట్‌లు మరియు రిఫరెన్స్‌లను డౌన్‌లోడ్ చేస్తుంది.';

  @override
  String get gameHintWord207Pull => 'మార్పులను తెచ్చి ప్రస్తుత బ్రాంచ్‌లో కలుపుతుంది.';

  @override
  String get gameHintWord208Push => 'స్థానిక కమిట్‌లను రిమోట్ రిపాజిటరీకి పంపుతుంది.';

  @override
  String get gameHintWord209Stash => 'కమిట్ చేయని వర్కింగ్-ట్రీ మార్పులను తాత్కాలికంగా భద్రపరుస్తుంది.';

  @override
  String get gameHintWord210Revert => 'మరొక కమిట్‌ను రద్దు చేసే కమిట్‌ను సృష్టిస్తుంది.';

  @override
  String get gameHintWord211Reset => 'Git రిఫరెన్స్‌ను కదిలిస్తుంది మరియు ఇండెక్స్ లేదా వర్కింగ్ ఫైళ్లను రీసెట్ చేయగలదు.';

  @override
  String get gameHintWord212Reflog => 'Git రిఫరెన్స్‌ల నవీకరణల స్థానిక చరిత్ర.';

  @override
  String get gameHintWord213Diff => 'వెర్షన్‌లు లేదా ఫైళ్ల మధ్య తేడాలను చూపుతుంది.';

  @override
  String get gameHintWord214Status => 'స్టేజ్ చేసిన, మార్చిన, ట్రాక్ చేయని ఫైళ్లను తెలుపుతుంది.';

  @override
  String get gameHintWord215Checkout => 'రివిజన్‌లను మార్చడానికి లేదా ఫైళ్లను పునరుద్ధరించడానికి Git కమాండ్.';

  @override
  String get gameHintWord216Tag => 'సాధారణంగా విడుదలను గుర్తించే పేరు గల రిఫరెన్స్.';

  @override
  String get gameHintWord217Remote => 'మరొక రిపాజిటరీకి పేరు పెట్టిన కనెక్షన్.';

  @override
  String get gameHintWord218Origin => 'క్లోన్ చేసిన రిపాజిటరీ రిమోట్‌కు ఇచ్చే డిఫాల్ట్ పేరు.';

  @override
  String get gameHintWord219Upstream => 'స్థానిక బ్రాంచ్‌తో అనుబంధించిన రిమోట్ ట్రాకింగ్ బ్రాంచ్.';

  @override
  String get gameHintWord220Worktree => 'రిపాజిటరీకి అనుసంధానించిన చెక్ అవుట్ చేసిన వర్కింగ్ డైరెక్టరీ.';

  @override
  String get gameHintWord221Registry => 'కంటైనర్ ఇమేజ్‌లను నిల్వ చేసి పంపిణీ చేసే సేవ.';

  @override
  String get gameHintWord222Digest => 'కంటైనర్ ఇమేజ్‌కు కంటెంట్ ఆధారిత ఐడెంటిఫైయర్.';

  @override
  String get gameHintWord223Layer => 'కంటైనర్ ఇమేజ్‌లో భాగమైన ఫైల్‌సిస్టమ్ మార్పులు.';

  @override
  String get gameHintWord224Entrypoint => 'ప్రధాన కంటైనర్ ఎగ్జిక్యూటబుల్‌ను నిర్వచించే Dockerfile సూచన.';

  @override
  String get gameHintWord225Cmd => 'డిఫాల్ట్ కమాండ్ లేదా ఆర్గ్యుమెంట్‌లను నిర్దేశించే Dockerfile సూచన.';

  @override
  String get gameHintWord226Workdir => 'వర్కింగ్ డైరెక్టరీని సెట్ చేసే Dockerfile సూచన.';

  @override
  String get gameHintWord227Copy => 'బిల్డ్-కాంటెక్స్ట్ ఫైళ్లను ఇమేజ్‌లోకి కాపీ చేసే Dockerfile సూచన.';

  @override
  String get gameHintWord228Add => 'స్థానిక ఆర్కైవ్‌లను కూడా విప్పగల Dockerfile సూచన.';

  @override
  String get gameHintWord229Run => 'బిల్డ్ సమయంలో కమాండ్‌ను అమలు చేసే Dockerfile సూచన.';

  @override
  String get gameHintWord230Env => 'ఎన్విరాన్‌మెంట్ వేరియబుల్స్‌ను నిర్వచించే Dockerfile సూచన.';

  @override
  String get gameHintWord231Arg => 'బిల్డ్-సమయ వేరియబుల్‌ను ప్రకటించే Dockerfile సూచన.';

  @override
  String get gameHintWord232Expose => 'కంటైనర్ పోర్ట్‌ను నమోదు చేసే Dockerfile సూచన.';

  @override
  String get gameHintWord233User => 'తర్వాతి కమాండ్‌ల కోసం ఖాతాను ఎంచుకునే Dockerfile సూచన.';

  @override
  String get gameHintWord234Healthcheck => 'కంటైనర్ ఆరోగ్యాన్ని ఎలా పరీక్షించాలో వివరించే సూచన.';

  @override
  String get gameHintWord235Shebang => 'అమలు చేయాల్సిన ఇంటర్‌ప్రెటర్‌ను గుర్తించే స్క్రిప్ట్ మొదటి లైన్.';

  @override
  String get gameHintWord236Compose => 'బహుళ-కంటైనర్ అప్లికేషన్లను నిర్వచించి నడపడానికి Docker సాధనం.';

  @override
  String get gameHintWord237Bridge => 'స్థానిక కంటైనర్ నెట్‌వర్కింగ్ కోసం సాధారణ Docker నెట్‌వర్క్ డ్రైవర్.';

  @override
  String get gameHintWord238Overlay => 'అనేక హోస్ట్‌లలోని కంటైనర్లను కలిపే నెట్‌వర్క్.';

  @override
  String get gameHintWord239None => 'కంటైనర్ నెట్‌వర్కింగ్‌ను నిలిపివేసే Docker నెట్‌వర్క్ డ్రైవర్.';

  @override
  String get gameHintWord240Prune => 'ఉపయోగించని కంటైనర్ వనరులను తొలగిస్తుంది.';

  @override
  String get gameHintWord241Replicaset => 'కావలసిన పాడ్ సంఖ్యను నిర్వహించే Kubernetes కంట్రోలర్.';

  @override
  String get gameHintWord242Service => 'పాడ్‌లకు స్థిరమైన ప్రాప్యత అందించే Kubernetes అబ్స్ట్రాక్షన్.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes సేవకు ఆధారమైన చిరునామాలు.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes వనరులను సమూహపరిచే తార్కిక పరిధి.';

  @override
  String get gameHintWord245Node => 'Kubernetes పాడ్‌లను హోస్ట్ చేసే వర్కర్ మెషీన్.';

  @override
  String get gameHintWord246Kubelet => 'పాడ్ అమలును నిర్వహించే ప్రతి నోడ్‌లోని ఏజెంట్.';

  @override
  String get gameHintWord247Pvc => 'శాశ్వత నిల్వ కోసం Kubernetes అభ్యర్థన.';

  @override
  String get gameHintWord248Apiserver => 'క్లస్టర్ API ని అందించే Kubernetes కంట్రోల్-ప్లేన్ భాగం.';

  @override
  String get gameHintWord249Role => 'పాత్ర ఆధారిత యాక్సెస్ నియంత్రణలో పేరు పెట్టిన అనుమతుల సమితి.';

  @override
  String get gameHintWord250Resourcequota => 'నేమ్‌స్పేస్‌లో వనరుల వినియోగాన్ని పరిమితం చేసే Kubernetes ఆబ్జెక్ట్.';

  @override
  String get gameHintWord251Selector => 'లేబుళ్ల ద్వారా వనరులను సరిపోల్చే వ్యక్తీకరణ.';

  @override
  String get gameHintWord252Taint => 'సరిపోలే టాలరేషన్ లేని పాడ్‌లను తిప్పికొట్టే నోడ్ లక్షణం.';

  @override
  String get gameHintWord253Toleration => 'taint ఉన్న నోడ్‌పై షెడ్యూల్ చేయడానికి అనుమతించే పాడ్ సెట్టింగ్.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes నోడ్‌ను షెడ్యూల్ చేయలేనిదిగా గుర్తిస్తుంది.';

  @override
  String get gameHintWord255Uncordon => 'cordon చేసిన నోడ్‌ను మళ్లీ షెడ్యూల్ చేయగలదిగా చేస్తుంది.';

  @override
  String get gameHintWord256Drain => 'నోడ్ నిర్వహణకు ముందు వర్క్‌లోడ్‌లను సురక్షితంగా తొలగిస్తుంది.';

  @override
  String get gameHintWord257Job => 'పనిని పూర్తయ్యే వరకు నడిపే Kubernetes వర్క్‌లోడ్.';

  @override
  String get gameHintWord258Cronjob => 'షెడ్యూల్ ప్రకారం జాబ్‌లను సృష్టించే Kubernetes వర్క్‌లోడ్.';

  @override
  String get gameHintWord259Readiness => 'కంటైనర్ ట్రాఫిక్ స్వీకరించగలదో లేదో సూచించే ప్రోబ్.';

  @override
  String get gameHintWord260Liveness => 'కంటైనర్‌ను పునఃప్రారంభించాలో లేదో సూచించే ప్రోబ్.';

  @override
  String get gameHintWord261Canary => 'కొత్త వెర్షన్‌ను చిన్న ట్రాఫిక్ వాటాకు అందించే విడుదల విధానం.';

  @override
  String get gameHintWord262Rolling => 'నడుస్తున్న ఇన్‌స్టెన్స్‌లను క్రమంగా భర్తీ చేసే అప్‌డేట్ వ్యూహం.';

  @override
  String get gameHintWord263Rollback => 'గతంలో పనిచేసిన అప్లికేషన్ వెర్షన్‌ను పునరుద్ధరిస్తుంది.';

  @override
  String get gameHintWord264Rollout => 'కొత్త అప్లికేషన్ వెర్షన్ యొక్క క్రమానుగత డిప్లాయ్‌మెంట్.';

  @override
  String get gameHintWord265Recreate => 'భర్తీలను ప్రారంభించే ముందు పాత పాడ్‌లను ఆపే డిప్లాయ్‌మెంట్ వ్యూహం.';

  @override
  String get gameHintWord266Blue => 'బ్లూ-గ్రీన్ విడుదలలోని రెండు పరిసరాలలో ఒకటి.';

  @override
  String get gameHintWord267Green => 'బ్లూ-గ్రీన్ విడుదలలోని రెండవ పరిసరం.';

  @override
  String get gameHintWord268Artifact => 'బిల్డ్ పైప్‌లైన్ ఉత్పత్తి చేసే వెర్షన్ ఉన్న అవుట్‌పుట్.';

  @override
  String get gameHintWord269Staging => 'విడుదల ధృవీకరణకు ఉపయోగించే ప్రొడక్షన్‌కు ముందు పరిసరం.';

  @override
  String get gameHintWord270Production => 'నిజమైన తుది వినియోగదారులకు సేవ అందించే పరిసరం.';

  @override
  String get gameHintWord271Release => 'వినియోగానికి అందించిన సాఫ్ట్‌వేర్ వెర్షన్.';

  @override
  String get gameHintWord272Version => 'సాఫ్ట్‌వేర్ రివిజన్‌ను వేరుచేసే ఐడెంటిఫైయర్.';

  @override
  String get gameHintWord273Revision => 'పత్రం లేదా కోడ్‌బేస్ యొక్క గుర్తించదగిన వెర్షన్.';

  @override
  String get gameHintWord274Webhook => 'ఈవెంట్ జరిగినప్పుడు పంపే HTTP నోటిఫికేషన్.';

  @override
  String get gameHintWord275Runbook => 'వ్యవస్థను నిర్వహించడానికి లేదా పునరుద్ధరించడానికి నమోదు చేసిన విధానం.';

  @override
  String get gameHintWord276Workspace => 'పని చేసే ప్రాజెక్ట్ వనరులు ఉండే డైరెక్టరీ లేదా పరిధి.';

  @override
  String get gameHintWord277Credentials => 'వ్యవస్థను యాక్సెస్ చేయడానికి ఉపయోగించే ప్రామాణీకరణ సామగ్రి.';

  @override
  String get gameHintWord278Trigger => 'పైప్‌లైన్‌ను ప్రారంభించే ఈవెంట్ లేదా షరతు.';

  @override
  String get gameHintWord279Parameter => 'జాబ్ లేదా ఫంక్షన్‌కు ఇచ్చే పేరు గల ఇన్‌పుట్.';

  @override
  String get gameHintWord280Access => 'అనుమతికి లోబడి వనరును ఉపయోగించగల సామర్థ్యం.';

  @override
  String get gameHintWord281Module => 'ఇన్‌ఫ్రాస్ట్రక్చర్ నిర్వచనాల పునర్వినియోగ సమూహం.';

  @override
  String get gameHintWord282Provider => 'కాన్ఫిగరేషన్‌ను బాహ్య API కి కలిపే Terraform ప్లగిన్.';

  @override
  String get gameHintWord283Resource => 'కాన్ఫిగరేషన్‌లో ప్రకటించిన నిర్వహిత ఇన్‌ఫ్రాస్ట్రక్చర్ ఆబ్జెక్ట్.';

  @override
  String get gameHintWord284Variable => 'కాన్ఫిగరేషన్ లేదా కోడ్ ఉపయోగించే పేరు గల ఇన్‌పుట్ విలువ.';

  @override
  String get gameHintWord285Output => 'ఇన్‌ఫ్రాస్ట్రక్చర్ కాన్ఫిగరేషన్ తిరిగి ఇచ్చే బహిర్గత విలువ.';

  @override
  String get gameHintWord286Tfstate => 'Terraform స్టేట్ స్నాప్‌షాట్‌లకు సంబంధించిన ఫైల్ పొడిగింపు.';

  @override
  String get gameHintWord287Tfvars => 'Terraform ఇన్‌పుట్ వేరియబుల్ విలువలకు ఉపయోగించే ఫైల్ పొడిగింపు.';

  @override
  String get gameHintWord288Backend => 'స్టేట్ నిల్వను నియంత్రించే Terraform కాన్ఫిగరేషన్.';

  @override
  String get gameHintWord289Plan => 'ప్రతిపాదిత ఇన్‌ఫ్రాస్ట్రక్చర్ మార్పుల Terraform ప్రివ్యూ.';

  @override
  String get gameHintWord290Apply => 'ప్రతిపాదిత మార్పులను అమలు చేసే Terraform చర్య.';

  @override
  String get gameHintWord291Destroy => 'నిర్వహిత ఇన్‌ఫ్రాస్ట్రక్చర్‌ను తొలగించే Terraform చర్య.';

  @override
  String get gameHintWord292Import => 'ఇప్పటికే ఉన్న వనరును ఇన్‌ఫ్రాస్ట్రక్చర్ నిర్వహణ కిందకు తెస్తుంది.';

  @override
  String get gameHintWord293Refresh => 'నమోదైన స్థితిని వాస్తవ ఇన్‌ఫ్రాస్ట్రక్చర్‌తో సమకాలీకరిస్తుంది.';

  @override
  String get gameHintWord294Validate => 'కాన్ఫిగరేషన్ సింటాక్స్ మరియు అంతర్గత స్థిరత్వాన్ని తనిఖీ చేస్తుంది.';

  @override
  String get gameHintWord295Fmt => 'ప్రామాణిక కాన్ఫిగరేషన్ ఫార్మాటింగ్‌ను వర్తింపజేసే Terraform కమాండ్.';

  @override
  String get gameHintWord296Init => 'Terraform ప్రొవైడర్లను మరియు వర్కింగ్ డైరెక్టరీని ప్రారంభిస్తుంది.';

  @override
  String get gameHintWord297Executor => 'బిల్డ్‌ను నడపగల Jenkins వర్కర్ స్లాట్.';

  @override
  String get gameHintWord298Dependencies => 'ఒక భాగం కంటే ముందు మరొకటి అవసరమయ్యే సంబంధాలు.';

  @override
  String get gameHintWord299Drift => 'ప్రకటించిన మరియు వాస్తవ ఇన్‌ఫ్రాస్ట్రక్చర్ స్థితి మధ్య తేడా.';

  @override
  String get gameHintWord300Locking => 'ఉమ్మడి స్థితిని ఒకేసారి అనేక రచయితలు మార్చకుండా నిరోధిస్తుంది.';

  @override
  String get gameHintWord301Playbook => 'ఆటోమేషన్ ప్లేలు మరియు టాస్క్‌లను వివరించే Ansible పత్రం.';

  @override
  String get gameHintWord302Inventory => 'నిర్వహిత హోస్ట్‌లు మరియు గ్రూప్‌ల Ansible సేకరణ.';

  @override
  String get gameHintWord303Facts => 'నిర్వహిత హోస్ట్‌ల గురించి సేకరించిన సిస్టమ్ సమాచారం.';

  @override
  String get gameHintWord304Task => 'ఆటోమేషన్‌లో ఒక్కొక్క పని యూనిట్.';

  @override
  String get gameHintWord305Handler => 'మార్పు ద్వారా నోటిఫై అయినప్పుడు అమలయ్యే Ansible టాస్క్.';

  @override
  String get gameHintWord306Notify => 'మార్పు జరిగిన టాస్క్ తర్వాత హ్యాండ్లర్‌ను క్యూలో ఉంచే Ansible డైరెక్టివ్.';

  @override
  String get gameHintWord307Become => 'ప్రివిలేజ్ ఎస్కలేషన్‌ను ప్రారంభించే Ansible సెట్టింగ్.';

  @override
  String get gameHintWord308Vault => 'సున్నితమైన ఆటోమేషన్ డేటాను గుప్తీకరించే Ansible ఫీచర్.';

  @override
  String get gameHintWord309Register => 'టాస్క్ ఫలితాన్ని వేరియబుల్‌లో సేవ్ చేసే Ansible డైరెక్టివ్.';

  @override
  String get gameHintWord310When => 'షరతుతో కూడిన టాస్క్ అమలును నియంత్రించే Ansible కీవర్డ్.';

  @override
  String get gameHintWord311Loop => 'ఆటోమేషన్ టాస్క్‌ను ఒక సేకరణపై పునరావృతం చేస్తుంది.';

  @override
  String get gameHintWord312Include => 'పునర్వినియోగ ఆటోమేషన్ కంటెంట్‌ను డైనమిక్‌గా లోడ్ చేస్తుంది.';

  @override
  String get gameHintWord313Tags => 'ఆటోమేషన్ టాస్క్‌ల ఉపసమితులను ఎంచుకోవడానికి ఉపయోగించే లేబుళ్లు.';

  @override
  String get gameHintWord314Template => 'డిప్లాయ్‌మెంట్‌కు ముందు వేరియబుల్స్‌తో రెండర్ చేసే ఫైల్.';

  @override
  String get gameHintWord315Jinja => 'Ansible ఉపయోగించే టెంప్లేట్ భాష.';

  @override
  String get gameHintWord316Abstraction => 'అమలు వివరాలను సరళమైన ఇంటర్‌ఫేస్ వెనుక దాచడం.';

  @override
  String get gameHintWord317Agile => 'ఫీడ్‌బ్యాక్‌కు ప్రాధాన్యతనిచ్చే పునరావృత సాఫ్ట్‌వేర్ డెలివరీ విధానం.';

  @override
  String get gameHintWord318Puppet => 'డిక్లరేటివ్ మానిఫెస్ట్‌లను ఉపయోగించే కాన్ఫిగరేషన్ నిర్వహణ సాధనం.';

  @override
  String get gameHintWord319Airflow => 'వర్క్‌ఫ్లో DAG లను షెడ్యూల్ చేసి ఆర్కెస్ట్రేట్ చేసే ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord320Argo => 'GitOps డెలివరీ కంట్రోలర్‌తో కూడిన క్లౌడ్-నేటివ్ ప్రాజెక్ట్ కుటుంబం.';

  @override
  String get gameHintWord321Rds => 'AWS నిర్వహిత రిలేషనల్ డేటాబేస్ సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord322Sqs => 'AWS నిర్వహిత మెసేజ్ క్యూ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord323Sns => 'AWS పబ్లిష్-సబ్‌స్క్రైబ్ నోటిఫికేషన్ సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord324Ses => 'AWS ఇమెయిల్ పంపే సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord325Iam => 'క్లౌడ్ గుర్తింపు మరియు యాక్సెస్ నిర్వహణ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord326Kms => 'AWS ఎన్‌క్రిప్షన్ కీ నిర్వహణ సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord327Waf => 'అప్లికేషన్-లేయర్ వెబ్ అభ్యర్థనలను వడపోసే ఫైర్‌వాల్.';

  @override
  String get gameHintWord328Eks => 'AWS నిర్వహిత Kubernetes సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord329Ecs => 'AWS నిర్వహిత కంటైనర్ ఆర్కెస్ట్రేషన్ సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord330Ecr => 'AWS కంటైనర్ ఇమేజ్ రిజిస్ట్రీ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord331Aurora => 'MySQL మరియు PostgreSQL తో అనుకూలమైన AWS రిలేషనల్ డేటాబేస్.';

  @override
  String get gameHintWord332Redshift => 'AWS విశ్లేషణ డేటా వేర్‌హౌస్.';

  @override
  String get gameHintWord333Neptune => 'AWS నిర్వహిత గ్రాఫ్ డేటాబేస్.';

  @override
  String get gameHintWord334Elasticache => 'AWS నిర్వహిత ఇన్-మెమరీ కాషింగ్ సేవ.';

  @override
  String get gameHintWord335Athena => 'SQL తో ఆబ్జెక్ట్-నిల్వ డేటాను క్వెరీ చేసే AWS సేవ.';

  @override
  String get gameHintWord336Glue => 'AWS సర్వర్‌లెస్ డేటా ఇంటిగ్రేషన్ మరియు ETL సేవ.';

  @override
  String get gameHintWord337Emr => 'నిర్వహిత బిగ్-డేటా ప్రాసెసింగ్ క్లస్టర్ల కోసం AWS ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord338Lambda => 'సర్వర్లను నిర్వహించకుండా ఫంక్షన్‌లను అమలు చేసే AWS సేవ.';

  @override
  String get gameHintWord339Cloudfront => 'AWS గ్లోబల్ కంటెంట్ డెలివరీ నెట్‌వర్క్.';

  @override
  String get gameHintWord340Cloudwatch => 'మెట్రిక్స్, లాగ్‌లు, అలారాలను సేకరించే AWS సేవ.';

  @override
  String get gameHintWord341Cloudshell => 'AWS బ్రౌజర్ ఆధారిత షెల్ పరిసరం.';

  @override
  String get gameHintWord342Codecommit => 'AWS నిర్వహిత Git రిపాజిటరీ సేవ.';

  @override
  String get gameHintWord343Codebuild => 'సోర్స్‌ను కంపైల్ చేసి బిల్డ్ టెస్ట్‌లను నడిపే AWS సేవ.';

  @override
  String get gameHintWord344Codedeploy => 'AWS స్వయంచాలక అప్లికేషన్ డిప్లాయ్‌మెంట్ సేవ.';

  @override
  String get gameHintWord345Codepipeline => 'AWS నిరంతర డెలివరీ పైప్‌లైన్ సేవ.';

  @override
  String get gameHintWord346Guardduty => 'AWS తెలివైన ముప్పు గుర్తింపు సేవ.';

  @override
  String get gameHintWord347Inspector => 'వర్క్‌లోడ్‌లలో దుర్బలత్వాలను అంచనా వేసే AWS సేవ.';

  @override
  String get gameHintWord348Macie => 'ఆబ్జెక్ట్ నిల్వలో సున్నితమైన డేటాను కనుగొనే AWS సేవ.';

  @override
  String get gameHintWord349Shield => 'AWS నిర్వహిత DDoS రక్షణ సేవ.';

  @override
  String get gameHintWord350Snowball => 'పెద్ద డేటా బదిలీల కోసం AWS భౌతిక పరికరం.';

  @override
  String get gameHintWord351Snowcone => 'AWS ఆఫ్‌లైన్ బదిలీ కుటుంబంలోని చిన్న దృఢమైన పరికరం.';

  @override
  String get gameHintWord352Datasync => 'AWS స్వయంచాలక ఆన్‌లైన్ డేటా బదిలీ సేవ.';

  @override
  String get gameHintWord353Msk => 'AWS నిర్వహిత Apache Kafka సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord354Backup => 'పునరుద్ధరణ కోసం ఉంచిన డేటా కాపీ.';

  @override
  String get gameHintWord355Transcribe => 'ప్రసంగాన్ని టెక్స్ట్‌గా మార్చే AWS సేవ.';

  @override
  String get gameHintWord356Translate => 'భాషల మధ్య టెక్స్ట్‌ను అనువదించే AWS సేవ.';

  @override
  String get gameHintWord357Rekognition => 'చిత్రాలు మరియు వీడియోను విశ్లేషించే AWS సేవ.';

  @override
  String get gameHintWord358Comprehend => 'AWS సహజ-భాష విశ్లేషణ సేవ.';

  @override
  String get gameHintWord359Textract => 'పత్రాల నుండి టెక్స్ట్ మరియు పట్టికలను సంగ్రహించే AWS సేవ.';

  @override
  String get gameHintWord360Sagemaker => 'మెషీన్ లెర్నింగ్ మోడళ్లను నిర్మించి డిప్లాయ్ చేసే AWS ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud ప్రపంచవ్యాప్తంగా పంపిణీ చేసిన రిలేషనల్ డేటాబేస్.';

  @override
  String get gameHintWord362Pub => 'పబ్లిష్-సబ్‌స్క్రైబ్ మెసేజింగ్ నమూనాలో ప్రచురణ భాగం.';

  @override
  String get gameHintWord363Sub => 'పబ్లిష్-సబ్‌స్క్రైబ్ మెసేజింగ్ నమూనాలో సబ్‌స్క్రైబర్ భాగం.';

  @override
  String get gameHintWord364Functions => 'సర్వర్‌లెస్ ప్లాట్‌ఫారమ్‌లు అందించే ఈవెంట్-ఆధారిత కోడ్ యూనిట్లు.';

  @override
  String get gameHintWord365App => 'సాఫ్ట్‌వేర్ అప్లికేషన్ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord366Engine => 'Compute Engine వంటి పేర్లలో అమలు భాగం.';

  @override
  String get gameHintWord367Compute => 'వర్చువల్ మెషీన్లు లేదా కంటైనర్లు అందించే ప్రాసెసింగ్ సామర్థ్యం.';

  @override
  String get gameHintWord368Network => 'డేటాను మార్పిడి చేసుకునే అనుసంధాన వ్యవస్థలు.';

  @override
  String get gameHintWord369Security => 'ముప్పుల నుండి వ్యవస్థలు మరియు సమాచారం యొక్క రక్షణ.';

  @override
  String get gameHintWord370Identity => 'యాక్సెస్ నిర్ణయాలకు ఉపయోగించే వినియోగదారు లేదా సేవ ప్రాతినిధ్యం.';

  @override
  String get gameHintWord371Monitoring => 'వ్యవస్థ ఆరోగ్యం మరియు ప్రవర్తనను నిరంతరం గమనించడం.';

  @override
  String get gameHintWord372Logging => 'వివిక్త అప్లికేషన్ మరియు సిస్టమ్ ఈవెంట్లను నమోదు చేయడం.';

  @override
  String get gameHintWord373Trace => 'సేవా కాల్స్ అంతటా అభ్యర్థన మార్గం యొక్క రికార్డ్.';

  @override
  String get gameHintWord374Metrics => 'కాలక్రమంలో వ్యవస్థ ప్రవర్తన యొక్క సంఖ్యా కొలతలు.';

  @override
  String get gameHintWord375Alert => 'పర్యవేక్షిస్తున్న పరిస్థితికి శ్రద్ధ అవసరమని తెలిపే నోటిఫికేషన్.';

  @override
  String get gameHintWord376Billing => 'వినియోగించిన క్లౌడ్ సేవలను ట్రాక్ చేసి ఛార్జ్ చేయడం.';

  @override
  String get gameHintWord377Quota => 'వినియోగించగల వనరు పరిమాణంపై పరిమితి.';

  @override
  String get gameHintWord378Region => 'అవైలబిలిటీ జోన్‌లు ఉన్న భౌగోళిక క్లౌడ్ డిప్లాయ్‌మెంట్ ప్రాంతం.';

  @override
  String get gameHintWord379Tenancy => 'కస్టమర్లు ఇన్‌ఫ్రాస్ట్రక్చర్‌ను ఎలా పంచుకుంటారో వివరించే ఏర్పాటు.';

  @override
  String get gameHintWord380Regional => 'క్లౌడ్ రీజియన్‌కు పరిమితమైన వనరును వివరిస్తుంది.';

  @override
  String get gameHintWord381Cosmos => 'Azure ప్రపంచవ్యాప్తంగా పంపిణీ చేసిన బహుళ-మోడల్ డేటాబేస్ పేరు.';

  @override
  String get gameHintWord382Synapse => 'వేర్‌హౌసింగ్ మరియు డేటా ప్రాసెసింగ్‌ను కలిపే Azure విశ్లేషణ ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft క్లౌడ్-నేటివ్ భద్రతా సమాచారం మరియు ఈవెంట్ ప్లాట్‌ఫారమ్.';

  @override
  String get gameHintWord384Defender => 'క్లౌడ్ వర్క్‌లోడ్‌లను రక్షించే Microsoft భద్రతా ఉత్పత్తుల కుటుంబం.';

  @override
  String get gameHintWord385Entra => 'Azure AD బ్రాండింగ్‌ను భర్తీ చేసే Microsoft గుర్తింపు ఉత్పత్తుల కుటుంబం.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager సంక్షిప్త రూపం.';

  @override
  String get gameHintWord387Arc => 'Azure వెలుపలి వనరులకు నిర్వహణను విస్తరించే Azure సేవ.';

  @override
  String get gameHintWord388Aks => 'Azure నిర్వహిత Kubernetes సేవ సంక్షిప్త రూపం.';

  @override
  String get gameHintWord389Armor => 'Google Cloud వెబ్ రక్షణ సేవ పేరు ప్రత్యయం.';

  @override
  String get gameHintWord390Blob => 'Azure ఆబ్జెక్ట్-నిల్వ డేటా రకం.';

  @override
  String get gameHintWord391Files => 'నిర్వహిత నెట్‌వర్క్ ఫైల్ షేర్లను అందించే Azure సేవ.';

  @override
  String get gameHintWord392Disk => 'వర్చువల్ మెషీన్‌కు జోడించిన బ్లాక్-నిల్వ పరికరం.';

  @override
  String get gameHintWord393Function => 'ఫలితాన్ని తిరిగి ఇవ్వగల పిలవదగిన కోడ్ బ్లాక్.';

  @override
  String get gameHintWord394Logic => 'వర్క్‌ఫ్లో ఇంటిగ్రేషన్ కోసం Azure యాప్ సేవ వర్గం.';

  @override
  String get gameHintWord395Insights => 'Azure అప్లికేషన్ టెలిమెట్రీ ఉత్పత్తి పేరు ప్రత్యయం.';

  @override
  String get gameHintWord396Traffic => 'నెట్‌వర్క్ ఎండ్‌పాయింట్ల మధ్య ప్రవహించే డేటా.';

  @override
  String get gameHintWord397Manager => 'Azure Resource కంట్రోల్ ప్లేన్ ఉత్పత్తి పేరు ప్రత్యయం.';

  @override
  String get gameHintWord398Bastion => 'ప్రైవేట్ హోస్ట్ యాక్సెస్ కోసం నిర్వహిత లేదా బలోపేతం చేసిన ప్రవేశ ద్వారం.';

  @override
  String get gameHintWord399Front => 'Azure గ్లోబల్ ప్రవేశ సేవ Front Door లోని మొదటి పదం.';

  @override
  String get gameHintWord400Door => 'Azure గ్లోబల్ ప్రవేశ సేవ Front Door లోని రెండవ పదం.';

  @override
  String get gameHintWord401Javascript => 'బ్రౌజర్లు మరియు Node రన్‌టైమ్‌లలో విస్తృతంగా ఉపయోగించే ప్రోగ్రామింగ్ భాష.';

  @override
  String get gameHintWord402Perl => 'టెక్స్ట్ ప్రాసెసింగ్ మరియు రెగ్యులర్ ఎక్స్‌ప్రెషన్లకు ప్రసిద్ధ స్క్రిప్టింగ్ భాష.';

  @override
  String get gameHintWord403Powershell => 'Microsoft నుండి ఆబ్జెక్ట్-ఆధారిత షెల్ మరియు ఆటోమేషన్ భాష.';

  @override
  String get gameHintWord404Java => 'Jenkins ను అమలు చేయడానికి ఉపయోగించిన JVM భాష.';

  @override
  String get gameHintWord405Json => 'ఆబ్జెక్ట్‌లు మరియు అరేలతో కూడిన తేలికైన డేటా ఫార్మాట్.';

  @override
  String get gameHintWord406Xml => 'నెస్ట్ చేసిన పేరు గల ట్యాగ్‌లను ఉపయోగించే మార్కప్ ఫార్మాట్.';

  @override
  String get gameHintWord407Html => 'వెబ్ పేజీలను నిర్మించడానికి ఉపయోగించే మార్కప్ భాష.';

  @override
  String get gameHintWord408Css => 'వెబ్ ప్రదర్శనను నియంత్రించే స్టైల్‌షీట్ భాష.';

  @override
  String get gameHintWord409String => 'టెక్స్ట్ అక్షరాల క్రమం.';

  @override
  String get gameHintWord410Array => 'మూలకాల ఇండెక్స్ చేసిన సేకరణ.';

  @override
  String get gameHintWord411Hash => 'Ruby మరియు Perl లో అనుబంధ కీ-విలువ సేకరణ.';

  @override
  String get gameHintWord412Object => 'లక్షణాలు మరియు ప్రవర్తన ఉన్న రన్‌టైమ్ విలువ.';

  @override
  String get gameHintWord413Class => 'క్లాస్ ఆధారిత భాషల్లో ఆబ్జెక్ట్‌లను నిర్మించడానికి ఉపయోగించే నిర్వచనం.';

  @override
  String get gameHintWord414Method => 'ఆబ్జెక్ట్ లేదా క్లాస్‌తో అనుబంధించిన ఫంక్షన్.';

  @override
  String get gameHintWord415Interface => 'భాగం అందించే ఆపరేషన్లను వివరించే ఒప్పందం.';

  @override
  String get gameHintWord416Subclass => 'మరొక క్లాస్ నుండి ఉద్భవించిన క్లాస్.';

  @override
  String get gameHintWord417Super => 'పేరెంట్-క్లాస్ ప్రవర్తనను పిలవడానికి ఉపయోగించే కీవర్డ్.';

  @override
  String get gameHintWord418Protected => 'క్లాస్ సంబంధిత సందర్భాలకు యాక్సెస్‌ను పరిమితం చేసే విజిబిలిటీ స్థాయి.';

  @override
  String get gameHintWord419Exception => 'సాధారణ నియంత్రణ ప్రవాహాన్ని అడ్డుకునే రన్‌టైమ్ పరిస్థితి.';

  @override
  String get gameHintWord420Regex => 'టెక్స్ట్‌ను సరిపోల్చడానికి ఉపయోగించే నమూనా సంకేతం.';

  @override
  String get gameHintWord421Lexical => 'సోర్స్-కోడ్ నిర్మాణం ద్వారా నిర్ణయమయ్యే స్కోప్‌ను వివరిస్తుంది.';

  @override
  String get gameHintWord422Scalar => 'Perl లో ఒకే విలువ గల వేరియబుల్ వర్గం.';

  @override
  String get gameHintWord423Tuple => 'Python లో మార్చలేని క్రమబద్ధ సేకరణ.';

  @override
  String get gameHintWord424List => 'Python లో మార్చగల క్రమబద్ధ సేకరణ.';

  @override
  String get gameHintWord425Dict => 'Python అంతర్నిర్మిత మ్యాపింగ్ రకం పేరు.';

  @override
  String get gameHintWord426Dictionary => 'కీలను సంబంధిత విలువలకు మ్యాప్ చేసే సేకరణ.';

  @override
  String get gameHintWord427Set => 'విభిన్న విలువల సేకరణ.';

  @override
  String get gameHintWord428Boolean => 'నిజం లేదా అబద్ధాన్ని సూచించే డేటా రకం.';

  @override
  String get gameHintWord429Integer => 'పూర్ణాంకాలను సూచించే సంఖ్యా రకం.';

  @override
  String get gameHintWord430Float => 'ఫ్లోటింగ్-పాయింట్ విలువలను సూచించే సంఖ్యా రకం.';

  @override
  String get gameHintWord431Double => 'డబుల్-ప్రిసిషన్ ఫ్లోటింగ్-పాయింట్ రకం.';

  @override
  String get gameHintWord432Null => 'ఆబ్జెక్ట్ లేదా ఫలితం లేకపోవడాన్ని సూచించే విలువ.';

  @override
  String get gameHintWord433Undefined => 'కేటాయించిన విలువ లేకపోవడానికి JavaScript విలువ.';

  @override
  String get gameHintWord434Promise => 'భవిష్యత్తులో వచ్చే అసింక్రోనస్ ఫలితాన్ని సూచించే JavaScript ఆబ్జెక్ట్.';

  @override
  String get gameHintWord435Async => 'అసింక్రోనస్ ఫంక్షన్‌ను గుర్తించే కీవర్డ్.';

  @override
  String get gameHintWord436Await => 'అసింక్రోనస్ ఫలితం కోసం వేచి ఉండే కీవర్డ్.';

  @override
  String get gameHintWord437Callback => 'మరొక ఆపరేషన్ పిలవడానికి ఇచ్చే ఫంక్షన్.';

  @override
  String get gameHintWord438Closure => 'చుట్టుపక్కల లెక్సికల్ స్కోప్‌కు యాక్సెస్‌ను నిలుపుకునే ఫంక్షన్.';

  @override
  String get gameHintWord439Generator => 'yield చేసిన విలువల ద్వారా క్రమాన్ని సోమరిగా ఉత్పత్తి చేసే ఫంక్షన్.';

  @override
  String get gameHintWord440Iterator => 'సేకరణలోని విలువల ద్వారా ముందుకు సాగే ఆబ్జెక్ట్.';

  @override
  String get gameHintWord441Print => 'విలువను అవుట్‌పుట్‌కు రాసే సాధారణ ఫంక్షన్.';

  @override
  String get gameHintWord442Input => 'స్టాండర్డ్ ఇన్‌పుట్ నుండి ఒక లైన్ చదివే Python ఫంక్షన్.';

  @override
  String get gameHintWord443Open => 'ఫైల్ హ్యాండిల్ పొందడానికి ఉపయోగించే ఫంక్షన్.';

  @override
  String get gameHintWord444Close => 'తెరిచి ఉన్న ఫైల్ లేదా కనెక్షన్‌ను విడుదల చేసే ఆపరేషన్.';

  @override
  String get gameHintWord445Read => 'స్ట్రీమ్ లేదా ఫైల్ నుండి డేటా పొందే ఆపరేషన్.';

  @override
  String get gameHintWord446Write => 'స్ట్రీమ్ లేదా ఫైల్‌కు డేటా పంపే ఆపరేషన్.';

  @override
  String get gameHintWord447Append => 'సేకరణ చివరకు అంశాన్ని జోడిస్తుంది.';

  @override
  String get gameHintWord448Split => 'డీలిమిటర్‌తో టెక్స్ట్‌ను ఉప-స్ట్రింగ్‌లుగా విడగొడుతుంది.';

  @override
  String get gameHintWord449Join => 'సెపరేటర్‌తో స్ట్రింగ్‌ల క్రమాన్ని కలుపుతుంది.';

  @override
  String get gameHintWord450Strip => 'Python స్ట్రింగ్ చుట్టూ ఉన్న ఖాళీని తొలగిస్తుంది.';

  @override
  String get gameHintWord451Chomp => 'Perl లేదా Ruby లో చివరి రికార్డ్ సెపరేటర్‌ను తొలగిస్తుంది.';

  @override
  String get gameHintWord452Map => 'సేకరణలోని ప్రతి అంశానికి మార్పును వర్తింపజేస్తుంది.';

  @override
  String get gameHintWord453Filter => 'షరతును తీర్చే సేకరణ అంశాలను ఉంచుతుంది.';

  @override
  String get gameHintWord454Reduce => 'సేకరణను సంచిత ఫలితంగా కలుపుతుంది.';

  @override
  String get gameHintWord455Range => 'పూర్ణాంకాల అంకగణిత క్రమాన్ని సూచించే Python రకం.';

  @override
  String get gameHintWord456Length => 'సేకరణ పరిమాణాన్ని తిరిగి ఇచ్చే ప్రాపర్టీ లేదా మెథడ్.';

  @override
  String get gameHintWord457Len => 'సేకరణ పరిమాణాన్ని తిరిగి ఇచ్చే Python అంతర్నిర్మిత ఫంక్షన్.';

  @override
  String get gameHintWord458Type => 'ఆబ్జెక్ట్ రకాన్ని తిరిగి ఇచ్చే Python ఫంక్షన్.';

  @override
  String get gameHintWord459Isinstance => 'రకం శ్రేణిలో సభ్యత్వాన్ని తనిఖీ చేసే Python ఫంక్షన్.';

  @override
  String get gameHintWord460Yield => 'జనరేటర్ నుండి విలువను ఉత్పత్తి చేసే కీవర్డ్.';

  @override
  String get gameHintWord461Saas => 'పూర్తి సాఫ్ట్‌వేర్ అప్లికేషన్లను అందించే క్లౌడ్ నమూనా.';

  @override
  String get gameHintWord462Paas => 'నిర్వహిత అప్లికేషన్ అభివృద్ధి ప్లాట్‌ఫారమ్‌ను అందించే క్లౌడ్ నమూనా.';

  @override
  String get gameHintWord463Iaas => 'వర్చువల్ కంప్యూట్, నిల్వ, నెట్‌వర్కింగ్ అందించే క్లౌడ్ నమూనా.';

  @override
  String get gameHintWord464Hybrid => 'ప్రైవేట్ మరియు పబ్లిక్ ఇన్‌ఫ్రాస్ట్రక్చర్‌ను కలిపే క్లౌడ్ విధానం.';

  @override
  String get gameHintWord465Archive => 'అరుదుగా వాడే డేటా దీర్ఘకాలిక నిల్వ.';

  @override
  String get gameHintWord466Public => 'అనేక కస్టమర్లకు సేవలు అందించే క్లౌడ్ యాజమాన్య నమూనా.';

  @override
  String get gameHintWord467Private => 'ఒకే సంస్థకు అంకితమైన క్లౌడ్ నమూనా.';

  @override
  String get gameHintWord468Scalability => 'వనరులను జోడించి పెరుగుతున్న లోడ్‌ను నిర్వహించగల సామర్థ్యం.';

  @override
  String get gameHintWord469Availability => 'అవసరమైనప్పుడు సేవ అందుబాటులో ఉండే స్థాయి.';

  @override
  String get gameHintWord470Resilience => 'వైఫల్యాలను తట్టుకుని కోలుకోగల సామర్థ్యం.';

  @override
  String get gameHintWord471Redundancy => 'ఒకే వైఫల్య బిందువులను తగ్గించే నకిలీ భాగాలు.';

  @override
  String get gameHintWord472Disaster => 'పునరుద్ధరణ వ్యూహంతో ఎదుర్కొనే పెద్ద అంతరాయం.';

  @override
  String get gameHintWord473Recovery => 'వైఫల్యం తర్వాత సేవ లేదా డేటాను పునరుద్ధరించడం.';

  @override
  String get gameHintWord474Replicate => 'డేటా లేదా వర్క్‌లోడ్‌లను మరొక ప్రదేశానికి కాపీ చేయండి.';

  @override
  String get gameHintWord475Snapshotting => 'డేటా లేదా సిస్టమ్ స్థితి యొక్క నిర్దిష్ట సమయ కాపీలు తీసుకోవడం.';

  @override
  String get gameHintWord476Restore => 'సేవ్ చేసిన కాపీ నుండి డేటాను పునరుద్ధరించే చర్య.';

  @override
  String get gameHintWord477Residency => 'నిల్వ చేసిన డేటా భౌగోళిక స్థానాన్ని నిర్వచించే అవసరం.';

  @override
  String get gameHintWord478Compliance => 'అవసరమైన నిబంధనలు మరియు సంస్థాగత నియంత్రణలను పాటించడం.';

  @override
  String get gameHintWord479Governance => 'సాంకేతికత వినియోగాన్ని నియంత్రించే విధానాలు మరియు ప్రక్రియలు.';

  @override
  String get gameHintWord480Audit => 'నమోదైన కార్యకలాపాలు మరియు సమ్మతి ఆధారాల సమీక్ష.';

  @override
  String get gameHintWord481Token => 'అధికారం లేదా గుర్తింపును సూచించే క్రెడెన్షియల్ లేదా చిహ్నం.';

  @override
  String get gameHintWord482Oauth => 'ప్రతినిధి ద్వారా యాక్సెస్‌ను అనుమతించే అధికార ఫ్రేమ్‌వర్క్.';

  @override
  String get gameHintWord483Saml => 'సంస్థల సింగిల్ సైన్-ఆన్ కోసం సాధారణంగా ఉపయోగించే XML ఆధారిత ప్రమాణం.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell పైప్‌లైన్లలో ఉపయోగించే ప్రత్యేక కమాండ్.';

  @override
  String get gameHintWord485Algorithm => 'గణన సమస్యను పరిష్కరించే నిర్వచించిన దశల క్రమం.';

  @override
  String get gameHintWord486Key => 'ఎన్‌క్రిప్షన్‌ను నియంత్రించడానికి లేదా నిల్వ చేసిన డేటాను గుర్తించడానికి ఉపయోగించే విలువ.';

  @override
  String get gameHintWord487Alias => 'షెల్ కమాండ్ లేదా వనరుకు ప్రత్యామ్నాయ పేరు.';

  @override
  String get gameHintWord488Amend => 'ఇటీవలి కమిట్‌ను భర్తీ చేసే Git కమిట్ ఎంపిక.';

  @override
  String get gameHintWord489Allsigned => 'సంతకం చేసిన స్క్రిప్ట్‌లను కోరే PowerShell అమలు విధానం.';

  @override
  String get gameHintWord490Remotesigned => 'డౌన్‌లోడ్ చేసిన స్క్రిప్ట్‌లకు సంతకాలను కోరే PowerShell విధానం.';

  @override
  String get gameHintWord491Acl => 'వినియోగదారులు లేదా వ్యవస్థల అనుమతులను నిర్వచించే జాబితా.';

  @override
  String get gameHintWord492Uid => 'Unix వినియోగదారుకు కేటాయించిన సంఖ్యా ఐడెంటిఫైయర్.';

  @override
  String get gameHintWord493Setgid => 'అమలు లేదా వారసత్వ సమయంలో గ్రూప్ గుర్తింపును ప్రభావితం చేసే అనుమతి బిట్.';

  @override
  String get gameHintWord494Setfacl => 'ఫైల్ యాక్సెస్ కంట్రోల్ లిస్ట్‌లను సెట్ చేసే Linux కమాండ్.';

  @override
  String get gameHintWord495Isolation => 'వర్క్‌లోడ్‌లు ఒకదానికొకటి అంతరాయం కలిగించకుండా చేసే విభజన.';

  @override
  String get gameHintWord496Sighup => 'కాన్ఫిగరేషన్ రీలోడ్‌లను కోరడానికి తరచుగా ఉపయోగించే Unix హ్యాంగప్ సిగ్నల్.';

  @override
  String get gameHintWord497Sigint => 'సాధారణంగా Control-C తో ఉత్పన్నమయ్యే Unix ఇంటరప్ట్ సిగ్నల్.';

  @override
  String get gameHintWord498Sigstop => 'ప్రాసెస్‌ను ముగించకుండా ఆపే Unix సిగ్నల్.';

  @override
  String get gameHintWord499Secrets => 'పాస్‌వర్డ్‌లు మరియు యాక్సెస్ కీల వంటి సున్నితమైన విలువలు.';

  @override
  String get gameHintWord500Secure => 'అనధికార యాక్సెస్ నుండి రక్షించబడిన కనెక్షన్‌ను వివరిస్తుంది.';

  @override
  String get fontSettingsTitle => 'ఫాంట్';

  @override
  String get fontChangeFont => 'ఫాంట్ మార్చండి';

  @override
  String get fontSystemDefault => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get fontPreview => 'ప్రివ్యూ';

  @override
  String get fontPreviewSample => 'ఒక్కో ప్రశ్నతో DevOps నేర్చుకోండి';

  @override
  String get fontSelected => 'ఎంచుకున్నది';

  @override
  String get fontLatinOnlyNote => 'అనుకూల ఫాంట్‌లు లాటిన్ అక్షరాలకు వర్తిస్తాయి. ఇతర లిపులు మీ పరికరం ఫాంట్‌లోనే ఉంటాయి.';

  @override
  String get fontDescSystem => 'మీ పరికరంలోని అంతర్నిర్మిత ఫాంట్';

  @override
  String get fontDescGeometric => 'జ్యామితీయ సాన్స్-సెరిఫ్';

  @override
  String get fontDescGeometricRounded => 'జ్యామితీయ గుండ్రని సాన్స్-సెరిఫ్';

  @override
  String get fontDescFriendly => 'స్నేహపూర్వక సాన్స్-సెరిఫ్';

  @override
  String get fontDescCondensed => 'కుదించిన';

  @override
  String get fontDescRounded => 'గుండ్రని సాన్స్-సెరిఫ్';

  @override
  String get fontDescRoundedDisplay => 'గుండ్రని డిస్‌ప్లే';

  @override
  String gameScene3dScene(String value1) {
    return '3D సన్నివేశం $value1';
  }
}
