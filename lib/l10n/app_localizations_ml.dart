// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTour => 'ആപ്പ് പരിചയം';

  @override
  String get skipTour => 'പരിചയം ഒഴിവാക്കുക';

  @override
  String get finishTour => 'പരിചയം പൂർത്തിയാക്കുക';

  @override
  String tourStep(int current, int total) {
    return 'ഘട്ടം $current / $total';
  }

  @override
  String get tourMenuTitle => 'നാവിഗേഷൻ മെനു';

  @override
  String get tourSearch => 'ബന്ധപ്പെട്ട ക്വിസ് വിഭാഗങ്ങൾ കണ്ടെത്താൻ ഇവിടെ വിഷയം ടൈപ്പ് ചെയ്യുക.';

  @override
  String get tourCategory => 'മിശ്ര ക്വിസിനായി DevOps ടാപ്പ് ചെയ്യുക. മറ്റു വിഭാഗങ്ങളിൽ ചോദ്യസെറ്റുകളുണ്ട്. പിന്നീട് വായിക്കാൻ ചോദ്യങ്ങൾ ബുക്ക്മാർക്ക് ചെയ്യുക.';

  @override
  String get tourMenu => 'നാവിഗേഷൻ മെനു തുറക്കാൻ ഈ ബട്ടൺ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tourLearning => 'കാർഡുകൾക്കായി പഠനം തുറക്കുക. ഏത് ദിശയിലും സ്വൈപ്പ് ചെയ്യാം, ഷഫിൾ ചെയ്യാം, സ്വയം മാറുന്നത് പ്രവർത്തിപ്പിക്കാം, കാർഡ് ബുക്ക്മാർക്ക് ചെയ്യാം.';

  @override
  String get tourGames => 'ഗെയിമുകൾ കളിച്ച് പോയിന്റ് നേടുക. ലെവലുള്ള ഗെയിമുകളിൽ ഓരോ ലെവൽ പൂർത്തിയാക്കുമ്പോഴും 100 പോയിന്റ് ലഭിക്കും; സൂചനയ്ക്ക് 20 പോയിന്റ് വേണം.';

  @override
  String get tourAchievements => 'നിങ്ങളുടെ നേട്ടങ്ങൾ ഇവിടെ കാണാം. പുതിയ നേട്ടങ്ങളും ലഭ്യമായ തീമുകളും പോപ്പപ്പുകളിൽ അറിയിക്കും.';

  @override
  String get tourSettings => 'ഭാഷ, തീം, ശബ്ദം എന്നിവ തിരഞ്ഞെടുക്കുക. ബുക്ക്മാർക്കുകൾക്കായി സൂക്ഷിച്ച ഡാറ്റയോ ഈ ഗൈഡ് വീണ്ടും കാണാൻ ആപ്പ് പരിചയമോ തുറക്കുക.';

  @override
  String get achievementUnlocked => 'നേട്ടം അൺലോക്ക് ചെയ്തു!';

  @override
  String get themeUnlocked => 'പുതിയ തീം ലഭ്യമാണ്!';

  @override
  String get themeUnlockedMessage => 'ഇപ്പോൾ ക്രമീകരണങ്ങൾ > തീമുകൾ എന്നതിൽ ഈ തീം തിരഞ്ഞെടുക്കാം.';

  @override
  String get gameSounds => 'ഗെയിം ശബ്ദങ്ങൾ';

  @override
  String get gameSoundsDescription => 'ഗെയിമുകൾക്കും ക്വിസുകൾക്കുമുള്ള ശബ്ദപ്രഭാവങ്ങൾ. ഉപകരണത്തിന്റെ ശബ്ദനിലയും സൈലന്റ് മോഡും പരിശോധിക്കുക.';

  @override
  String get testSound => 'ശബ്ദം പരിശോധിക്കുക';

  @override
  String get soundSettingBusy => 'ദയവായി കാത്തിരിക്കുക...';

  @override
  String get soundSettingError => 'ശബ്ദ ക്രമീകരണം ലോഡ് ചെയ്യാനോ സൂക്ഷിക്കാനോ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get soundPlaybackError => 'ശബ്ദം പ്ലേ ചെയ്യാൻ കഴിഞ്ഞില്ല. ഉപകരണത്തിന്റെയോ ബ്രൗസറിന്റെയോ ഓഡിയോ ക്രമീകരണങ്ങൾ പരിശോധിക്കുക.';

  @override
  String get saveData => 'സൂക്ഷിച്ച ഡാറ്റ';

  @override
  String get learningTranslationUnavailable => 'ഈ കാർഡ് തിരഞ്ഞെടുത്ത ഭാഷയിലേക്ക് ഇതുവരെ പരിഭാഷപ്പെടുത്തിയിട്ടില്ല.';

  @override
  String get saveQuestion => 'ചോദ്യം സൂക്ഷിക്കുക';

  @override
  String defaultPortQuestion(String service) {
    return '$service-ന്റെ ഡിഫോൾട്ട് പോർട്ട് ഏതാണ്?';
  }

  @override
  String get removeSavedItem => 'സൂക്ഷിച്ചവയിൽ നിന്ന് നീക്കുക';

  @override
  String get noSavedData => 'ഇതുവരെ ഒന്നും സൂക്ഷിച്ചിട്ടില്ല. പഠന കാർഡുകളോ ക്വിസ് ചോദ്യങ്ങളോ ബുക്ക്മാർക്ക് ചെയ്യുക.';

  @override
  String get savedDataError => 'സൂക്ഷിച്ച ഡാറ്റ ലോഡ് ചെയ്യാനോ പുതുക്കാനോ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get savedItemUnavailable => 'സൂക്ഷിച്ച ഈ ഇനം ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String get correctAnswer => 'ശരിയായ ഉത്തരം';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get certificates => 'സർട്ടിഫിക്കറ്റുകൾ';

  @override
  String get whatsNew => 'പുതിയ വിശേഷങ്ങൾ';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get darkMode => 'ഡാർക്ക് മോഡ്';

  @override
  String get lightMode => 'ലൈറ്റ് മോഡ്';

  @override
  String get language => 'ഭാഷ';

  @override
  String get selectLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'ക്വിസ് ആരംഭിക്കുക';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'വിഭാഗം മാറ്റുക';

  @override
  String get dailyQuiz => 'ദൈനംദിന ക്വിസ്';

  @override
  String get dailyQuizCompleted => 'ദൈനംദിന ക്വിസ് പൂർത്തിയായി';

  @override
  String get dailyQuizCompletedMessage => 'ഇന്നത്തെ ദൈനംദിന ക്വിസ് പൂർത്തിയാക്കി. പുതിയ ചലഞ്ചിനായി നാളെ മടങ്ങിവരൂ!';

  @override
  String get leaderboard => 'ലീഡർബോർഡ്';

  @override
  String get shareApp => 'ആപ്പ് പങ്കിടുക';

  @override
  String get rateApp => 'ആപ്പിന് റേറ്റിംഗ് നൽകുക';

  @override
  String get about => 'വിവരങ്ങൾ';

  @override
  String get ok => 'ശരി';

  @override
  String get home => 'ഹോം';

  @override
  String get games => 'ഗെയിമുകൾ';

  @override
  String get referAndEarn => 'പരിചയപ്പെടുത്തി നേടുക';

  @override
  String get themes => 'തീമുകൾ';

  @override
  String get version => 'പതിപ്പ്';

  @override
  String get developer => 'ഡെവലപ്പർ';

  @override
  String get contact => 'ബന്ധപ്പെടുക';

  @override
  String get learning => 'പഠനം';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'എന്നോടൊപ്പം ബന്ധപ്പെടുക';

  @override
  String get aboutDescription => 'DevOps Quiz വഴി Linux, Docker, Kubernetes തുടങ്ങിയ DevOps വിഷയങ്ങൾ പഠിച്ച് അഭിമുഖങ്ങൾക്കും സർട്ടിഫിക്കറ്റുകൾക്കും തയ്യാറാകൂ.';

  @override
  String get quizResult => 'ക്വിസ് ഫലം';

  @override
  String get outstanding => 'മികച്ചത്!';

  @override
  String get greatJob => 'നന്നായി ചെയ്തു!';

  @override
  String get goodEffort => 'നല്ല ശ്രമം!';

  @override
  String get keepPracticing => 'പരിശീലനം തുടരുക!';

  @override
  String get dontGiveUp => 'ശ്രമം ഉപേക്ഷിക്കരുത്!';

  @override
  String get shareMessage1 => 'എന്റെ സ്കോർ';

  @override
  String get shareMessage2 => 'DevOps ക്വിസിൽ!';

  @override
  String get downloadApp => 'ആപ്പ് ഡൗൺലോഡ് ചെയ്യുക:';

  @override
  String get score => 'സ്കോർ';

  @override
  String get points => 'പോയിന്റുകൾ';

  @override
  String get percentage => 'ശതമാനം';

  @override
  String get bonus => 'ബോണസ്';

  @override
  String get perfectScoreBonus => 'പൂർണ്ണ സ്കോർ ബോണസ്';

  @override
  String get shareScore => 'സ്കോർ പങ്കിടുക';

  @override
  String get restartQuiz => 'ക്വിസ് വീണ്ടും ആരംഭിക്കുക';

  @override
  String get backToCategories => 'വിഭാഗങ്ങളിലേക്ക് മടങ്ങുക';

  @override
  String get greatProgress => 'നന്നായി ചെയ്തു! നിങ്ങൾ മികച്ച പുരോഗതി കൈവരിക്കുന്നു.';

  @override
  String get practiceMore => 'നല്ല ശ്രമം! കൂടുതൽ പരിശീലിച്ചാൽ സ്കോർ മെച്ചപ്പെടും.';

  @override
  String get keepLearning => 'പഠനം തുടർന്നു വീണ്ടും ശ്രമിക്കൂ.';

  @override
  String get everyExpertStarted => 'ഓരോ വിദഗ്ധനും തുടക്കത്തിൽ പഠിതാവായിരുന്നു. പരിശീലനം തുടരൂ!';

  @override
  String get quizInstructions => 'ക്വിസ് നിർദ്ദേശങ്ങൾ';

  @override
  String get instruction1 => 'ഓരോ സെറ്റിലും 25 ചോദ്യങ്ങളുണ്ട്.';

  @override
  String get instruction2 => 'ഓരോ ചോദ്യത്തിനും 30 സെക്കൻഡുണ്ട്.';

  @override
  String get instruction3 => 'പച്ച = ശരിയായ ഉത്തരം.';

  @override
  String get instruction4 => 'ചുവപ്പ് = തെറ്റായ ഉത്തരം.';

  @override
  String get instruction5 => 'ഉത്തരം മാറ്റാൻ കഴിയില്ല.';

  @override
  String get instruction6 => 'പിന്നോട്ട് ബട്ടൺ അവലോകനത്തിന് മാത്രം.';

  @override
  String get instruction7 => 'പൂർത്തിയായ ശേഷം സ്കോർ കാണിക്കും.';

  @override
  String get instruction8 => 'ഓരോ ശരിയായ ഉത്തരത്തിനും 10 പോയിന്റ് ലഭിക്കും.';

  @override
  String excellentPerformance(Object expert) {
    return 'മികച്ച പ്രകടനം! നിങ്ങൾ ഒരു $expert ആണ്.';
  }

  @override
  String get selectCategory => 'വിഭാഗം തിരഞ്ഞെടുക്കുക';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'സെറ്റ് തിരഞ്ഞെടുക്കുക';

  @override
  String get set => 'സെറ്റ്';

  @override
  String get questions => 'ചോദ്യങ്ങൾ';

  @override
  String get noScoresYet => 'ഇതുവരെ സ്കോറുകളില്ല';

  @override
  String get pointsShort => 'പോയിന്റ്';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizലേക്ക് സ്വാഗതം';

  @override
  String hiUser(String name) {
    return 'ഹായ് $name';
  }

  @override
  String get challengeMode => 'ചലഞ്ച് മോഡ്';

  @override
  String get challenge => 'ചലഞ്ച്';

  @override
  String get question => 'ചോദ്യം';

  @override
  String get reward => 'പ്രതിഫലം';

  @override
  String get survivalMode => 'സർവൈവൽ മോഡ്';

  @override
  String get speedChallenge => 'വേഗതാ ചലഞ്ച്';

  @override
  String get dailyChallenge => 'ദൈനംദിന ചലഞ്ച്';

  @override
  String get ultimateChallenge => 'അവസാന ചലഞ്ച്';

  @override
  String get timeLeft => 'ബാക്കി സമയം';

  @override
  String get completed => 'പൂർത്തിയായി';

  @override
  String get locked => 'ലോക്ക് ചെയ്തു';

  @override
  String get back => 'പിന്നോട്ട്';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get submit => 'സമർപ്പിക്കുക';

  @override
  String get achievements => 'നേട്ടങ്ങൾ';

  @override
  String get streak => 'തുടർച്ച';

  @override
  String get days => 'ദിവസങ്ങൾ';

  @override
  String get tomorrowsReward => 'നാളത്തെ പ്രതിഫലം';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 എന്റെ സ്കോർ $score/$totalQuestions #DevOps Quiz!\n\n🏆 പോയിന്റുകൾ: $earnedPoints\n🔥 ബോണസ്: $bonusPoints\n📊 ശതമാനം: $percentage%\n\nആപ്പ് ഡൗൺലോഡ് ചെയ്യുക:';
  }

  @override
  String get gameUiSpinWheel => 'വീൽ കറക്കുക';

  @override
  String get gameUiSpinAndWinBonusPoints => 'കറക്കി ബോണസ് പോയിന്റുകൾ നേടൂ';

  @override
  String get gameUiScratchCard => 'സ്ക്രാച്ച് കാർഡ്';

  @override
  String get gameUiScratchToRevealAReward => 'സമ്മാനം വെളിപ്പെടുത്താൻ സ്ക്രാച്ച് ചെയ്യൂ';

  @override
  String get gameUiLuckySlots => 'ലക്കി സ്ലോട്ടുകൾ';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'സ്ലോട്ടുകൾ കറക്കി പോയിന്റുകൾ നേടൂ';

  @override
  String get gameUiMysteryDeal => 'മിസ്റ്ററി ഡീൽ';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ഒരു മിസ്റ്ററി ബോക്സ് തിരഞ്ഞെടുത്ത് ഉത്തരം നൽകൂ';

  @override
  String get gameUiMemoryMatch => 'മെമ്മറി മാച്ച്';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps ജോടികൾ യോജിപ്പിക്കൂ';

  @override
  String get gameUiWordGuess => 'വേഡ് ഗെസ്';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'ലെവലുകളിലൂടെ DevOps വാക്കുകൾ ഊഹിക്കൂ';

  @override
  String get gameUiFindWords => 'വാക്കുകൾ കണ്ടെത്തുക';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ഗ്രിഡിൽ ഒളിഞ്ഞിരിക്കുന്ന DevOps പദങ്ങൾ തിരയൂ';

  @override
  String get gameUiSpotTheDifference => 'വ്യത്യാസം കണ്ടെത്തുക';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'ചിത്രീകരിച്ച രണ്ട് രംഗങ്ങൾക്കിടയിലെ അഞ്ച് മാറ്റങ്ങൾ കണ്ടെത്തൂ';

  @override
  String get gameUiJigsawPuzzle => 'ജിഗ്സോ പസിൽ';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'പങ്കിട്ട HD മൃഗ, പ്രകൃതി ചിത്രങ്ങൾ വീണ്ടും കൂട്ടിച്ചേർക്കൂ';

  @override
  String get gameUiHighOrLow => 'ഹൈ ഓർ ലോ';

  @override
  String get gameUiBuildAStreak => 'തുടർച്ചയായ വിജയങ്ങൾ നേടൂ';

  @override
  String get gameUiTrueOrFalseBlitz => 'ശരിയോ തെറ്റോ ബ്ലിറ്റ്സ്';

  @override
  String get gameUiQuickAnswerQuiz => 'വേഗത്തിലുള്ള ഉത്തര ക്വിസ്';

  @override
  String get gameUiCommandMatch => 'കമാൻഡ് മാച്ച്';

  @override
  String get gameUiMatchCommandsToMeanings => 'കമാൻഡുകളെ അർത്ഥങ്ങളുമായി യോജിപ്പിക്കൂ';

  @override
  String get gameUiPortMaster => 'പോർട്ട് മാസ്റ്റർ';

  @override
  String get gameUiGuessDefaultPorts => 'ഡിഫോൾട്ട് പോർട്ടുകൾ ഊഹിക്കൂ';

  @override
  String get gameUiTicTacToe => 'ടിക്-ടാക്-ടോ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X പൂജ്യവും ക്രോസും കമ്പ്യൂട്ടറിനെതിരെ';

  @override
  String get gameUiConnectFour => 'കണക്ട് ഫോർ';

  @override
  String get gameUiDropFourDiscs => 'നാല് ഡിസ്കുകൾ ഇടൂ';

  @override
  String get gameUiLudo => 'ലുഡോ';

  @override
  String get gameUiRaceAgainstBots => 'ബോട്ടുകൾക്കെതിരെ ഓടൂ';

  @override
  String get gameUiChess => 'ചെസ്സ്';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'ചെസ്സ് ബോർഡ്, നിയമാനുസൃത നീക്കങ്ങൾ, രണ്ട് കളിക്കാർ';

  @override
  String get gameUiSnakeAndLadders => 'പാമ്പും കോണിയും';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'പകിട ബോർഡ്, പാമ്പുകൾ, കോണികൾ, രണ്ട് കളിക്കാർ';

  @override
  String get gameUiGames => 'ഗെയിമുകൾ 🎮';

  @override
  String get gameUiPlayEarn => 'കളിക്കൂ & നേടൂ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ഗെയിമുകൾ കളിച്ച് ബോണസ് പോയിന്റുകൾ നേടൂ!';

  @override
  String get gameUiSearchGames => 'ഗെയിമുകൾ തിരയുക';

  @override
  String get gameUiClearSearch => 'തിരയൽ മായ്ക്കുക';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" എന്നതിന് യോജിക്കുന്ന ഗെയിമുകളില്ല';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'കറക്കൂ & ബോണസ് പോയിന്റുകൾ നേടൂ.';

  @override
  String get gameUiScratchToRevealYourReward => 'നിങ്ങളുടെ സമ്മാനം വെളിപ്പെടുത്താൻ സ്ക്രാച്ച് ചെയ്യൂ.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'സ്ലോട്ടുകൾ കറക്കൂ & പോയിന്റുകൾ നേടൂ.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ഒരു മിസ്റ്ററി ബോക്സ് തിരഞ്ഞെടുത്ത് ശരിയായി ഉത്തരം നൽകി പോയിന്റുകൾ നേടൂ.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'പോയിന്റുകൾ നേടാൻ DevOps ജോടികൾ യോജിപ്പിക്കൂ.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ശ്രമങ്ങളിൽ DevOps പദം ഊഹിക്കൂ.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ഗ്രിഡിൽ ഒളിഞ്ഞിരിക്കുന്ന DevOps പദങ്ങൾ തിരയൂ.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 ലെവലുകളിൽ DevOps വാക്കുകൾ കണ്ടെത്താൻ സ്വൈപ്പ് ചെയ്യൂ.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'ചിത്രീകരിച്ച രണ്ട് രംഗങ്ങൾക്കിടയിലെ അഞ്ച് മാറ്റങ്ങൾ കണ്ടെത്തൂ.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'പങ്കിട്ട HD മൃഗ, പ്രകൃതി ചിത്രങ്ങൾ വീണ്ടും കൂട്ടിച്ചേർക്കൂ.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'തുടർച്ചയായ വിജയങ്ങൾ നേടി പോയിന്റുകൾ സുരക്ഷിതമാക്കൂ.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'വേഗത്തിലുള്ള ഉത്തരങ്ങളിലൂടെ സമയത്തെ തോൽപ്പിക്കൂ.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'ശരിയോ തെറ്റോ ബ്ലിറ്റ്സ് 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'കമാൻഡുകളെ അവ ചെയ്യുന്നതുമായി യോജിപ്പിക്കൂ.';

  @override
  String get gameUiCommandMatch670a76e => 'കമാൻഡ് മാച്ച് 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 ലൈഫുകളോടെ ഡിഫോൾട്ട് പോർട്ടുകൾ ഊഹിക്കൂ.';

  @override
  String get gameUiPortMaster8f5fd42 => 'പോർട്ട് മാസ്റ്റർ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'കമ്പ്യൂട്ടറിനെതിരെ O/X കളിക്കൂ.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'ജയിക്കാൻ നാല് ഡിസ്കുകൾ ഒരു നിരയിൽ ഇടൂ.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'നിങ്ങളുടെ കരുക്കളെ മൂന്ന് ബോട്ടുകൾക്കെതിരെ ഓടിക്കൂ.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'നിയമാനുസൃത നീക്കങ്ങളോടെ ലോക്കൽ രണ്ട് കളിക്കാരുടെ ചെസ്സ്.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'നിയമാനുസൃതമായ രണ്ട് കളിക്കാരുടെ ചെസ്സ് മത്സരം കളിക്കൂ.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'രണ്ട് കളിക്കാർക്കുള്ള പകിട ബോർഡ് ഗെയിം.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100-ലേക്ക് ഓടൂ. കോണികൾ കയറൂ, പാമ്പുകളെ ഒഴിവാക്കൂ.';

  @override
  String get gameUiPlay => 'കളിക്കുക';

  @override
  String get gameUiWheelStopped => 'വീൽ നിന്നു!';

  @override
  String get gameUiYourRewardIs => 'നിങ്ങളുടെ സമ്മാനം';

  @override
  String get gameUiPOINTS => 'പോയിന്റുകൾ';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ഈ സമ്മാനം നേടാൻ 1 ക്വിസ് ചോദ്യത്തിന് ശരിയായി ഉത്തരം നൽകൂ.';

  @override
  String get gameUiWrongAnswerRewardLost => 'തെറ്റായ ഉത്തരം = സമ്മാനം നഷ്ടം.';

  @override
  String get gameUiAnswerQuestion => 'ചോദ്യത്തിന് ഉത്തരം നൽകുക';

  @override
  String get gameUiSpinWheele449982 => '🎡 വീൽ കറക്കുക';

  @override
  String get gameUiDailySpin => 'ദൈനംദിന സ്പിൻ';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'വീൽ കറക്കി, തുടർന്ന് ഒരു ചോദ്യത്തിന് ഉത്തരം നൽകി നിങ്ങളുടെ സമ്മാനം നേടൂ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'ഇന്നത്തെ സ്പിൻ നിങ്ങൾ ഇതിനകം ഉപയോഗിച്ചു.';

  @override
  String get gameUiSpinning => 'കറങ്ങുന്നു...';

  @override
  String get gameUiSPINNOW => 'ഇപ്പോൾ കറക്കൂ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'നാളെ വീണ്ടും വരൂ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'ഇന്നത്തെ സമ്മാനം: ⭐ $value1 പോയിന്റുകൾ';
  }

  @override
  String get gameUiBackToGames => 'ഗെയിമുകളിലേക്ക് മടങ്ങുക';

  @override
  String get gameUiSPIN => 'കറക്കൂ';

  @override
  String get gameUiRewardRevealed => 'സമ്മാനം വെളിപ്പെട്ടു!';

  @override
  String get gameUiYouFound => 'നിങ്ങൾ കണ്ടെത്തിയത്';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ സ്ക്രാച്ച് കാർഡ്';

  @override
  String get gameUiDailyScratch => 'ദൈനംദിന സ്ക്രാച്ച്';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'ഇന്നത്തെ സമ്മാനം വെളിപ്പെടുത്താൻ കാർഡ് സ്ക്രാച്ച് ചെയ്യൂ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'ഇന്നത്തെ സ്ക്രാച്ച് കാർഡ് നിങ്ങൾ ഇതിനകം ഉപയോഗിച്ചു.';

  @override
  String get gameUiAlreadyScratched => 'ഇതിനകം സ്ക്രാച്ച് ചെയ്തു';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'മറ്റൊരു സമ്മാനത്തിനായി നാളെ വീണ്ടും വരൂ.';

  @override
  String get gameUiYouRevealed => 'നിങ്ങൾ വെളിപ്പെടുത്തിയത്';

  @override
  String get gameUiSCRATCHHERE => 'ഇവിടെ സ്ക്രാച്ച് ചെയ്യൂ  👆';

  @override
  String get gameUiJACKPOT777 => 'ജാക്ക്പോട്ട് 777!';

  @override
  String get gameUiLucky777 => 'ലക്കി 777!';

  @override
  String get gameUiYourReward => 'നിങ്ങളുടെ സമ്മാനം';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ലക്കി സ്ലോട്ടുകൾ';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'സ്ലോട്ടുകൾ കറക്കി, തുടർന്ന് ഒരു ചോദ്യത്തിന് ഉത്തരം നൽകി സമ്മാനം നേടൂ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'ഇന്ന് നിങ്ങൾ ഇതിനകം കളിച്ചു.';

  @override
  String get gameUiSPINNING => 'കറങ്ങുന്നു...';

  @override
  String get gameUiROLLNOW => 'ഇപ്പോൾ എറിയൂ';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ജാക്ക്പോട്ട്! 777 പോയിന്റ് ലഭ്യമാണ്!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'മിസ്റ്ററി ഡീൽ നില പരിശോധിക്കാൻ കഴിഞ്ഞില്ല: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'ബോക്സ് $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 പോയിന്റ്';
  }

  @override
  String get gameUiStartQuestion => 'ചോദ്യം ആരംഭിക്കുക';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 മിസ്റ്ററി ഡീൽ';

  @override
  String get gameUiMysteryDealCompleted => 'മിസ്റ്ററി ഡീൽ പൂർത്തിയായി!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'നിങ്ങൾ ഇന്ന് ഇതിനകം മിസ്റ്ററി ഡീൽ കളിച്ചു.';

  @override
  String get gameUiTodayYouWon => 'ഇന്ന് നിങ്ങൾ നേടിയത്';

  @override
  String get gameUiTodaySReward => 'ഇന്നത്തെ സമ്മാനം';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 പോയിന്റ്';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 പോയിന്റ് നഷ്ടമായി';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'മറ്റൊരു മിസ്റ്ററി ബോക്സിനായി നാളെ തിരികെ വരൂ!';

  @override
  String get gameUiChooseYourMysteryBox => 'നിങ്ങളുടെ മിസ്റ്ററി ബോക്സ് തിരഞ്ഞെടുക്കൂ';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ഓരോ ബോക്സിലും 10 മുതൽ 1000 വരെ പോയിന്റിനിടയിൽ ഒരു മറഞ്ഞിരിക്കുന്ന സമ്മാനം ഉണ്ട്.';

  @override
  String get gameUiPickOnlyOneBox => 'ഒരു ബോക്സ് മാത്രം തിരഞ്ഞെടുക്കൂ!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'എല്ലാ $value1 ലെവലുകളും പൂർത്തിയായി!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'ലെവൽ $value1 പൂർത്തിയായി!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 നീക്കങ്ങളിൽ പൂർത്തിയാക്കി.\nനിങ്ങൾ $value2 പോയിന്റ് നേടി!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 നീക്കങ്ങളിൽ പൂർത്തിയാക്കി.\nഈ ലെവൽ നേരത്തെ തന്നെ പൂർത്തിയാക്കിയിരുന്നു.';
  }

  @override
  String get gameUiNextLevel => 'അടുത്ത ലെവൽ';

  @override
  String get gameUiDone => 'കഴിഞ്ഞു';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'മെമ്മറി മാച്ച് 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'എല്ലാ 100 ലെവലുകളും പൂർത്തിയായി!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'നിങ്ങൾ എല്ലാ മെമ്മറി മാച്ച് ലെവലുകളും പൂർത്തിയാക്കി. നന്നായി കളിച്ചു!';

  @override
  String get gameUiChooseLevel => 'ലെവൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String gameUiMoves(String value1) {
    return 'നീക്കങ്ങൾ: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'ലെവൽ $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 ജോടികൾ';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'ലെവൽ $value1 ഓർമ്മിക്കുക';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 പൊരുത്തപ്പെടുന്ന ജോടികൾ കണ്ടെത്തുക';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps ക്വിസ് ലോഗോ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'അധ്യായം 1 · ബിൽഡ് പൈപ്പ്‌ലൈൻ പുനഃസ്ഥാപിക്കുക';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'അധ്യായം 2 · ക്ലൗഡ് പ്ലാറ്റ്‌ഫോം സ്കെയിൽ ചെയ്യുക';

  @override
  String get gameUiChapter3ProtectProduction => 'അധ്യായം 3 · പ്രൊഡക്ഷൻ സംരക്ഷിക്കുക';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'സമർപ്പിക്കാൻ ശേഷിക്കുന്ന എല്ലാ $value1 അക്ഷരങ്ങളും ഉപയോഗിക്കുക.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'എല്ലാ ലെവലുകളും പൂർത്തിയായി!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'ലെവൽ $value1 പൂർത്തിയായി!';
  }

  @override
  String get gameUiTryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'വാക്ക് $value1 ആയിരുന്നു. നിങ്ങൾ $value2 പോയിന്റ് നേടി.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'വാക്ക് $value1 ആയിരുന്നു. $value3 സൂചന ഉപയോഗിച്ചതിന് ശേഷം നിങ്ങൾ $value2 പോയിന്റ് നേടി.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'വാക്ക് $value1 ആയിരുന്നു. $value3 സൂചനകൾ ഉപയോഗിച്ചതിന് ശേഷം നിങ്ങൾ $value2 പോയിന്റ് നേടി.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'വാക്ക് $value1 ആയിരുന്നു. ലെവൽ $value2 ഇപ്പോഴും നിങ്ങളെ കാത്തിരിക്കുന്നു.';
  }

  @override
  String get gameUiFinish => 'പൂർത്തിയാക്കുക';

  @override
  String get gameUiNextLevel254fd73 => 'അടുത്ത ലെവൽ';

  @override
  String get gameUiRetryLevel => 'ലെവൽ വീണ്ടും ശ്രമിക്കുക';

  @override
  String get gameUiHowToPlay => 'എങ്ങനെ കളിക്കാം';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ഓരോ ലെവലിലും ഒരു DevOps വാക്ക് ഉണ്ട്. അഞ്ച് അക്ഷരങ്ങളിൽ കുറവുള്ള വാക്കുകൾ സൗജന്യ അക്ഷരങ്ങളില്ലാതെ ആരംഭിക്കുന്നു; നീളമുള്ള വാക്കുകൾ ഒരു അക്ഷരത്തോടെ ആരംഭിക്കുന്നു. ഉത്തരം രൂപപ്പെടുത്താൻ അക്ഷര റാക്ക് ഉപയോഗിച്ച് Enter അമർത്തുക. സൂചനകൾ മറ്റൊരു അക്ഷരം വെളിപ്പെടുത്തുകയും നിങ്ങളുടെ ബാലൻസിൽ നിന്ന് 20 പോയിന്റ് ഈടാക്കുകയും ചെയ്യും. പൂർത്തിയാക്കുന്ന ഓരോ ലെവലിനും 100 പോയിന്റ് ലഭിക്കും.';

  @override
  String get gameUiGotIt => 'മനസ്സിലായി';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'എല്ലാ $value1 ലെവലുകളും പൂർത്തിയായി!';
  }

  @override
  String get gameUiEasy => 'എളുപ്പം';

  @override
  String get gameUiMedium => 'ഇടത്തരം';

  @override
  String get gameUiHard => 'കഠിനം';

  @override
  String get gameUiHowToPlay13a6b22 => 'എങ്ങനെ കളിക്കാം';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'ലെവൽ $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'സമ്മാനം $value1 പോയിന്റ് · ഉപയോഗിച്ച സൂചനകൾ $value2';
  }

  @override
  String get gameUiHint20Pts => 'സൂചന · −20 പോയിന്റ്';

  @override
  String get gameUiEnter => 'എന്റർ';

  @override
  String get gameUiDelete => 'ഇല്ലാതാക്കുക';

  @override
  String get gameUiDragThroughAWord => 'ഒരു വാക്കിലൂടെ വലിക്കുക';

  @override
  String get gameUiDragThroughEachWord => 'ഓരോ വാക്കിലൂടെയും വലിക്കുക';

  @override
  String get gameUiReleaseToSelect => 'തിരഞ്ഞെടുക്കാൻ വിടുക';

  @override
  String gameUiFound(String value1) {
    return '$value1 കണ്ടെത്തി';
  }

  @override
  String get gameUiNoWordThere => 'അവിടെ വാക്കില്ല';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ഇതിനകം കണ്ടെത്തി';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 തിരയുക';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'എല്ലാ ലെവലുകളും പൂർത്തിയായി!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'നിങ്ങൾ എല്ലാ വാക്കുകളും കണ്ടെത്തി $value1 പോയിന്റ് നേടി.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'നിങ്ങൾ എല്ലാ വാക്കുകളും കണ്ടെത്തി. ഈ ലെവൽ നേരത്തെ തന്നെ പൂർത്തിയാക്കിയിരുന്നു.';

  @override
  String get gameUiAll500LevelsComplete => 'എല്ലാ 500 ലെവലുകളും പൂർത്തിയായി!';

  @override
  String get gameUiReviewLevels => 'ലെവലുകൾ അവലോകനം ചെയ്യുക';

  @override
  String gameUiLeft(String value1) {
    return '$value1 ശേഷിക്കുന്നു';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 പോയിന്റ്';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'പുരോഗതി സംരക്ഷിക്കാൻ കഴിഞ്ഞില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'നിങ്ങൾ $value1 പോയിന്റ് നേടി!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'നിങ്ങൾ ഈ ചിത്രം ഇതിനകം പൂർത്തിയാക്കി. വീണ്ടും കളിക്കുമ്പോൾ അധിക പോയിന്റ് ലഭിക്കില്ല.';

  @override
  String get gameUiYouCompletedEveryPicture => 'നിങ്ങൾ എല്ലാ ചിത്രങ്ങളും പൂർത്തിയാക്കി!';

  @override
  String get gameUiLevels => 'ലെവലുകൾ';

  @override
  String get gameUiPictureB => 'ചിത്രം B';

  @override
  String get gameUiPictureA => 'ചിത്രം A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ചിത്രം ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക';

  @override
  String get gameUiResetZoom => 'സൂം പുനഃസജ്ജമാക്കുക';

  @override
  String get gameUiZoomBothPictures => 'രണ്ട് ചിത്രങ്ങളും സൂം ചെയ്യുക';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'സൂചന · ഓരോ സൂചനയ്ക്കും $value1 പോയിന്റ്';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'പുരോഗതി ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'ലെവൽ $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'എല്ലാ വ്യത്യാസങ്ങളും കണ്ടെത്തി!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count വ്യത്യാസങ്ങൾ കണ്ടെത്തുക. ഏതെങ്കിലും ചിത്രത്തിൽ ഓരോന്നിലും ടാപ്പ് ചെയ്യുക.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'തെറ്റുകൾ: $value1  ·  സൂചനകൾ: $value2 (−$value3 പോയിന്റ്)  ·  $value4 ലെവലുകൾ പൂർത്തിയായി';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'അടുത്ത ലെവൽ: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'പസിൽ $value1 പൂർത്തിയായി!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ചിത്രം $value1 നീക്കങ്ങളിൽ പൂർത്തിയായി. നിങ്ങൾ $value2 പോയിന്റ് നേടി.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ചിത്രം $value1 നീക്കങ്ങളിൽ പൂർത്തിയായി.';
  }

  @override
  String get gameUiNextPuzzle => 'അടുത്ത പസിൽ';

  @override
  String get gameUiAllPuzzlesComplete => 'എല്ലാ പസിലുകളും പൂർത്തിയായി';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'പസിൽ കഷണം $value1 / $value2, ശരിയായി സ്ഥാപിച്ചു';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'പസിൽ കഷണം $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'പസിൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get gameUiShufflePieces => 'കഷണങ്ങൾ കലർത്തുക';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'പസിൽ ചിത്രം ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';

  @override
  String get gameUiPreviousPuzzle => 'മുൻ പസിൽ';

  @override
  String gameUiPuzzle(String value1) {
    return 'പസിൽ $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 നീക്കങ്ങൾ';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'കഷണങ്ങൾ പരസ്പരം മാറ്റാൻ വലിച്ചിടുക, അല്ലെങ്കിൽ രണ്ട് കഷണങ്ങളിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 പസിലുകൾ പരിഹരിച്ചു  ·  ഓരോന്നിനും $value3 പോയിന്റ്';
  }

  @override
  String get gameUiGameOver => 'കളി കഴിഞ്ഞു';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'സംഖ്യ $value1 ആയിരുന്നു.\nതുടർച്ച: $value2\nനിങ്ങൾ $value3 പോയിന്റ് നേടി!\n\nമറ്റൊരു അവസരത്തിനായി നാളെ വീണ്ടും വരൂ!';
  }

  @override
  String get gameUiHigherOrLower => 'കൂടുതലോ കുറവോ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'ഇന്ന് ഇതിനകം കളിച്ചു!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'നിങ്ങൾ $value1/$value2/$value3 ന് കളിച്ചു.\n\nപുതിയ തുടർച്ച ഉണ്ടാക്കാൻ നാളെ വീണ്ടും വരൂ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'നിങ്ങൾ ഇന്ന് ഇതിനകം കളിച്ചു.\n\nമറ്റൊരു അവസരത്തിനായി നാളെ വീണ്ടും വരൂ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 തുടർച്ച: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ പോയിന്റ്: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'അടുത്ത സംഖ്യ കൂടുതലായിരിക്കുമോ കുറവായിരിക്കുമോ?';

  @override
  String get gameUiLower => 'കുറവ്';

  @override
  String get gameUiHigher => 'കൂടുതൽ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'ശരിയോ തെറ്റോ ബ്ലിറ്റ്സ് ⚡';

  @override
  String get gameUiTimeSUp => 'സമയം കഴിഞ്ഞു!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'ശരിയായ ഉത്തരങ്ങൾ: $value1\nമികച്ച തുടർച്ച: $value2\n$value3നിങ്ങൾ $value4 പോയിന്റ് നേടി!\n\nമറ്റൊരു റൗണ്ടിനായി നാളെ വീണ്ടും വരൂ!';
  }

  @override
  String get gameUiStreakBonus20 => 'തുടർച്ച ബോണസ്: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'കാണിച്ചിരിക്കുന്ന ഉത്തരം ശരിയോ തെറ്റോ?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 വിഭാഗങ്ങളിലായി $value1 ചോദ്യങ്ങൾ';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'നിങ്ങൾക്ക് $value1 സെക്കൻഡ് ഉണ്ട്. ഓരോ ശരിയായ ഉത്തരത്തിനും $value2 പോയിന്റ് ലഭിക്കും. തെറ്റായ ഉത്തരം $value3 സെക്കൻഡ് നഷ്ടപ്പെടുത്തും. 5 തുടർച്ചയിലെത്തിയാൽ +20 ബോണസ് ലഭിക്കും.';
  }

  @override
  String get gameUiRoundTimer => 'റൗണ്ട് ടൈമർ';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 സെക്കൻഡ്';
  }

  @override
  String get gameUiStart => 'ആരംഭിക്കുക';

  @override
  String get gameUiTrue => 'ശരി';

  @override
  String get gameUiFalse => 'തെറ്റ്';

  @override
  String get gameUiCommandMatch26b0e70 => 'കമാൻഡ് മാച്ച് 🔗';

  @override
  String get gameUiAllMatched => 'എല്ലാം പൊരുത്തപ്പെട്ടു!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'തെറ്റുകൾ: $value1\nനിങ്ങൾ $value2 പോയിന്റ് നേടി!\n\nപുതിയ കമാൻഡുകൾക്കായി നാളെ വീണ്ടും വരൂ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'റൗണ്ട് $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ഒരു കമാൻഡിൽ ടാപ്പ് ചെയ്യുക, തുടർന്ന് അതിന്റെ അർത്ഥത്തിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'ഇനി പൊരുത്തപ്പെടുന്ന അർത്ഥത്തിൽ ടാപ്പ് ചെയ്യുക.';

  @override
  String get gameUiPortMaster9c730cf => 'പോർട്ട് മാസ്റ്റർ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'പോർട്ട് മാസ്റ്റർ!';

  @override
  String get gameUiOutOfLives => 'ജീവനുകൾ തീർന്നു';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'ശരിയായ ഉത്തരങ്ങൾ: $value1\nനിങ്ങൾ $value2 പോയിന്റ് നേടി!\n\nമറ്റൊരു റൗണ്ടിനായി നാളെ വീണ്ടും വരൂ!';
  }

  @override
  String get gameUiYouEarned10Points => 'നിങ്ങൾ 10 പോയിന്റ് നേടി!';

  @override
  String get gameUiYouWin => 'നിങ്ങൾ ജയിച്ചു!';

  @override
  String gameUiWins(String value1) {
    return '$value1 ജയിച്ചു!';
  }

  @override
  String get gameUiXWins => 'X ജയിച്ചു!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) ജയിച്ചു!';
  }

  @override
  String get gameUiComputerWins => 'കമ്പ്യൂട്ടർ ജയിച്ചു';

  @override
  String get gameUiOWins => 'O ജയിച്ചു!';

  @override
  String get gameUiPlayer2OWins => 'കളിക്കാരൻ 2 (O) ജയിച്ചു!';

  @override
  String get gameUiItSADraw => 'സമനില';

  @override
  String get gameUiYourTurn => 'നിങ്ങളുടെ ഊഴം';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ന്റെ ഊഴം';
  }

  @override
  String get gameUiComputerIsThinking => 'കമ്പ്യൂട്ടർ ചിന്തിക്കുകയാണ്';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'കളിക്കാരൻ $value1 നീക്കണം';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 നീക്കണം';
  }

  @override
  String get gameUiPlayer2ToMove => 'കളിക്കാരൻ 2 നീക്കണം';

  @override
  String get gameUiNewRound => 'പുതിയ റൗണ്ട്';

  @override
  String get gameUiVsComputer => 'കമ്പ്യൂട്ടറിനെതിരെ';

  @override
  String get gameUi2Players => '2 കളിക്കാർ';

  @override
  String get gameUiYou => 'നിങ്ങൾ';

  @override
  String get gameUiDraws => 'സമനിലകൾ';

  @override
  String get gameUiPlayer2 => 'കളിക്കാരൻ 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'കളം $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'വീണ്ടും കളിക്കുക';

  @override
  String get gameUiConnectFourWin20Points => 'കണക്റ്റ് ഫോർ വിജയം: 20 പോയിന്റ്!';

  @override
  String get gameUiBotWins => 'ബോട്ട് ജയിച്ചു!';

  @override
  String get gameUiRed => 'ചുവപ്പ്';

  @override
  String get gameUiYellow => 'മഞ്ഞ';

  @override
  String get gameUiBoardFullDraw => 'ബോർഡ് നിറഞ്ഞു — സമനില';

  @override
  String get gameUiBotIsThinking => 'ബോട്ട് ചിന്തിക്കുകയാണ്';

  @override
  String get gameUiBotTurn => 'ബോട്ടിന്റെ ഊഴം';

  @override
  String get gameUiNewGame => 'പുതിയ കളി';

  @override
  String get gameUiVsBot => 'ബോട്ടിനെതിരെ';

  @override
  String get gameUi2Player => '2 കളിക്കാർ';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'ബോട്ടിനെതിരെ കളിക്കുക · ഡിസ്ക് ഇടാൻ ഒരു കോളത്തിൽ ടാപ്പ് ചെയ്യുക';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'രണ്ട് കളിക്കാർ · ഡിസ്ക് ഇടാൻ ഒരു കോളത്തിൽ ടാപ്പ് ചെയ്യുക';

  @override
  String gameUiColumn(String value1) {
    return 'കോളം $value1';
  }

  @override
  String get gameUiYouRed => 'നിങ്ങൾ · ചുവപ്പ്';

  @override
  String get gameUiRedPlayer1 => 'ചുവപ്പ് · കളിക്കാരൻ 1';

  @override
  String get gameUiBotYellow => 'ബോട്ട് · മഞ്ഞ';

  @override
  String get gameUiYellowPlayer2 => 'മഞ്ഞ · കളിക്കാരൻ 2';

  @override
  String get gameUiLudoMatchStats => 'ലൂഡോ മത്സര കണക്കുകൾ';

  @override
  String get gameUiNoCompletedMatchesYet => 'പൂർത്തിയായ മത്സരങ്ങളൊന്നുമില്ല.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'കളിച്ചത് $value1  ·  ജയിച്ചത് $value2  ·  തോറ്റത് $value3';
  }

  @override
  String get gameUiClose => 'അടയ്ക്കുക';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'ലൂഡോ ചാമ്പ്യൻ! നിങ്ങൾ 50 പോയിന്റ് നേടി.';

  @override
  String get gameUiNewLudoGame => 'പുതിയ ലൂഡോ കളി';

  @override
  String get gameUiBotOpponents => 'ബോട്ട് എതിരാളികൾ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'പുതിയ മത്സരം ആരംഭിക്കുന്നത് നിങ്ങളുടെ സേവ് ചെയ്ത കളിയെ മാറ്റിസ്ഥാപിക്കും.';

  @override
  String get gameUiCancel => 'റദ്ദാക്കുക';

  @override
  String get gameUiStartGame => 'കളി ആരംഭിക്കുക';

  @override
  String get gameUiPlayerColours => 'കളിക്കാരുടെ നിറങ്ങൾ';

  @override
  String get gameUiApply => 'പ്രയോഗിക്കുക';

  @override
  String get gameUiMatchStats => 'മത്സര കണക്കുകൾ';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 ചെക്ക്മേറ്റിലൂടെ ജയിച്ചു';
  }

  @override
  String get gameUiBlack => 'കറുപ്പ്';

  @override
  String get gameUiWhite => 'വെളുപ്പ്';

  @override
  String get gameUiComputerWinsByCheckmate => 'കമ്പ്യൂട്ടർ ചെക്ക്മേറ്റിലൂടെ ജയിച്ചു';

  @override
  String get gameUiYouWinByCheckmate => 'നിങ്ങൾ ചെക്ക്മേറ്റിലൂടെ ജയിച്ചു';

  @override
  String get gameUiDrawByStalemate => 'സ്റ്റെയിൽമേറ്റിലൂടെ സമനില';

  @override
  String get gameUiDraw => 'സമനില';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · ചെക്ക്';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'ചെക്ക്മേറ്റ്! നിങ്ങൾക്ക് 50 പോയിന്റ് ലഭിച്ചു.';

  @override
  String get gameUiStartANewGame => 'പുതിയ ഗെയിം ആരംഭിക്കണോ?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'പ്ലെയർ മോഡ് മാറ്റുന്നത് സേവ് ചെയ്ത മത്സരത്തിന് പകരമാകും.';

  @override
  String get gameUiComputer => 'കമ്പ്യൂട്ടർ';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · വെള്ള / പ്ലെയർ 2 · കറുപ്പ്';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'നിങ്ങൾ വെള്ള · കമ്പ്യൂട്ടർ കറുപ്പ്';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (വെള്ള) · കമ്പ്യൂട്ടർ (കറുപ്പ്)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'നിങ്ങൾ കറുപ്പ് · കമ്പ്യൂട്ടർ വെള്ള';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (കറുപ്പ്) · കമ്പ്യൂട്ടർ (വെള്ള)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ആദ്യം എറിയുന്നു';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 വീണ്ടും എറിയുന്നു';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 എറിയണം';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'പാമ്പും ഏണിയും വിജയം: 100 പോയിന്റ്!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'കളിക്കാരെ മാറ്റുന്നത് സേവ് ചെയ്ത ഗെയിമിന് പകരമാകും.';

  @override
  String get gameUiStartANewLevel => 'പുതിയ ലെവൽ ആരംഭിക്കണോ?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'ലെവൽ മാറ്റുന്നത് സേവ് ചെയ്ത ഗെയിമിന് പകരമാകും.';

  @override
  String get gameUiChangeLevel => 'ലെവൽ മാറ്റുക';

  @override
  String get gameUiPlayers => 'കളിക്കാർ';

  @override
  String get gameUiPlayAgainstBot => 'ബോട്ടിനെതിരെ കളിക്കുക';

  @override
  String get gameUi3Players => '3 കളിക്കാർ';

  @override
  String get gameUi4Players => '4 കളിക്കാർ';

  @override
  String get gameUiLevel1709305 => 'ലെവൽ';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'ലെവൽ $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 കളിക്കാർ · ലെവൽ $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · എറിയുക';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2-ൽ $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'ചോദ്യം ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'ശരിയായ ഉത്തരം!';

  @override
  String get gameUiWrongAnswer => 'തെറ്റായ ഉത്തരം';

  @override
  String get gameUiYouClaimedYourReward => 'നിങ്ങൾ പ്രതിഫലം നേടി!';

  @override
  String get gameUiAddedToYourTotalPoints => 'നിങ്ങളുടെ ആകെ പോയിന്റുകളിൽ ചേർത്തു.';

  @override
  String get gameUiTheCorrectAnswerWas => 'ശരിയായ ഉത്തരം ഇതായിരുന്നു:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 പോയിന്റ് പ്രതിഫലം നഷ്ടമായി.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'നിങ്ങളുടെ നിലവിലുള്ള പോയിന്റുകൾ കുറച്ചിട്ടില്ല.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'നാളെ തിരികെ വന്ന് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'ചോദ്യം ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';

  @override
  String get gameUiYourReward677fa6e => 'നിങ്ങളുടെ പ്രതിഫലം';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 പോയിന്റ്';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'നേടാൻ ശരിയായി ഉത്തരം നൽകുക!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'മറ്റൊരു റൗണ്ടിനായി നാളെ തിരികെ വരൂ.';

  @override
  String get gameUiGreen => 'പച്ച';

  @override
  String get gameUiBlue => 'നീല';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ചിന്തിക്കുന്നു';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ഒരു കരു തിരഞ്ഞെടുക്കുക';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ഡൈസ് എറിയുക';
  }

  @override
  String gameUiDice(String value1) {
    return 'ഡൈസ് $value1';
  }

  @override
  String get gameUiRollDice => 'ഡൈസ് എറിയുക';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 കരു $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'കളിക്കാരൻ $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'ബോട്ട് $value1';
  }

  @override
  String get gameUiBot => 'ബോട്ട്';

  @override
  String get gameUiHintInsufficientPoints => 'ഒരു സൂചന ഉപയോഗിക്കാൻ 20 പോയിന്റ് ആവശ്യമാണ്.';

  @override
  String get gameUiHintPurchaseFailed => 'സൂചന വാങ്ങാൻ കഴിഞ്ഞില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get gameUiChessKing => 'രാജാവ്';

  @override
  String get gameUiChessQueen => 'റാണി';

  @override
  String get gameUiChessRook => 'റൂക്ക്';

  @override
  String get gameUiChessBishop => 'ബിഷപ്പ്';

  @override
  String get gameUiChessKnight => 'കുതിര';

  @override
  String get gameUiChessPawn => 'കാലാൾ';

  @override
  String get gameUiChessEmpty => 'ഒഴിഞ്ഞത്';

  @override
  String get gameSceneLampAndFlowers => 'വിളക്കും പൂക്കളും';

  @override
  String get gameSceneGardenFriends => 'പൂന്തോട്ടത്തിലെ കൂട്ടുകാർ';

  @override
  String get gameSceneUnderwaterExplorers => 'വെള്ളത്തിനടിയിലെ പര്യവേക്ഷകർ';

  @override
  String get gameSceneOceanOrca => 'സമുദ്രത്തിലെ ഓർക്ക';

  @override
  String get gameSceneFoxInTheMeadow => 'പുൽമേട്ടിലെ കുറുക്കൻ';

  @override
  String get gameSceneYellowSubmarine => 'മഞ്ഞ അന്തർവാഹിനി';

  @override
  String get gameSceneTurkeyInTheClearing => 'വനത്തിലെ തുറസ്സിലെ ടർക്കി';

  @override
  String get gameSceneSafariWateringHole => 'സഫാരിയിലെ വെള്ളക്കുഴി';

  @override
  String get gameSceneJungleCompanions => 'കാട്ടിലെ കൂട്ടാളികൾ';

  @override
  String get gameSceneGoldenPuppyGarden => 'സ്വർണ്ണ നായ്ക്കുട്ടിയുടെ പൂന്തോട്ടം';

  @override
  String get gameSceneSeaTurtleReef => 'കടലാമയും പവിഴപ്പുറ്റും';

  @override
  String get gameSceneCoralReefFriends => 'പവിഴപ്പുറ്റിലെ കൂട്ടുകാർ';

  @override
  String get gameSceneSharedClownfish => 'പങ്കിട്ട കോമാളി മത്സ്യം';

  @override
  String get gameSceneLittleDinosaur => 'കുഞ്ഞു ദിനോസർ';

  @override
  String get gameSceneSafariCompanions => 'സഫാരിയിലെ കൂട്ടാളികൾ';

  @override
  String get gameSceneSwirlingFlowers => 'ചുഴലുന്ന പൂക്കൾ';

  @override
  String get gameSceneGardenKitten => 'പൂന്തോട്ടത്തിലെ പൂച്ചക്കുട്ടി';

  @override
  String get gameSceneBlueOcean => 'നീല സമുദ്രം';

  @override
  String get gameSceneCastlePrincess => 'കോട്ടയിലെ രാജകുമാരി';

  @override
  String get gameSceneRedCar => 'ചുവന്ന കാർ';

  @override
  String get gameSceneGardenPuppy => 'പൂന്തോട്ടത്തിലെ നായ്ക്കുട്ടി';

  @override
  String get gameSceneSpaceExplorer => 'ബഹിരാകാശ പര്യവേക്ഷകൻ';

  @override
  String get gameSceneEnchantedReadingForest => 'മായാജാലം നിറഞ്ഞ വായനാ വനം';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps അനന്ത ചക്രം';

  @override
  String get gameSceneAnsible => 'Ansible (ആൻസിബിൾ)';

  @override
  String get gameSceneAws => 'എഡബ്ല്യുഎസ്';

  @override
  String get gameSceneAzure => 'അഷുർ';

  @override
  String get gameSceneBashScripting => 'ബാഷ് സ്ക്രിപ്റ്റിംഗ്';

  @override
  String get gameSceneDocker => 'ഡോക്കർ';

  @override
  String get gameSceneGcp => 'ജിസിപി';

  @override
  String get gameSceneGit => 'ഗിറ്റ്';

  @override
  String get gameSceneHybridCloud => 'ഹൈബ്രിഡ് ക്ലൗഡ്';

  @override
  String get gameSceneIbmCloud => 'ഐബിഎം ക്ലൗഡ്';

  @override
  String get gameSceneJavascript => 'ജാവാസ്ക്രിപ്റ്റ്';

  @override
  String get gameSceneJenkins => 'ജെങ്കിൻസ്';

  @override
  String get gameSceneKubernetes => 'കുബർനെറ്റിസ്';

  @override
  String get gameSceneLinux => 'ലിനക്സ്';

  @override
  String get gameSceneMultiCloud => 'മൾട്ടി ക്ലൗഡ്';

  @override
  String get gameSceneNetworking => 'നെറ്റ്‌വർക്കിംഗ്';

  @override
  String get gameSceneOracleCloud => 'ഒറാക്കിൾ ക്ലൗഡ്';

  @override
  String get gameScenePerl => 'പേൾ';

  @override
  String get gameScenePowershell => 'പവർഷെൽ';

  @override
  String get gameScenePython => 'പൈത്തൺ';

  @override
  String get gameSceneRuby => 'റൂബി';

  @override
  String get gameSceneTerraform => 'ടെറാഫോം';

  @override
  String get gameSceneWinterFestivalFair => 'ശൈത്യകാല ഉത്സവമേള';

  @override
  String get gameSceneArmoredHeroCloseUp => 'കവചധാരിയായ നായകന്റെ ക്ലോസ്-അപ്പ്';

  @override
  String get gameSceneArmoredHeroInCrimson => 'കടുംചുവപ്പിൽ കവചധാരിയായ നായകൻ';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'കടുംനിറമുള്ള പ്ലൂമേറിയ പൂക്കൾ';

  @override
  String get gameSceneMangroveBoardwalk => 'കണ്ടൽക്കാട്ടിലെ മരപ്പാത';

  @override
  String get gameSceneTropicalPalmReflections => 'ഉഷ്ണമേഖലാ പനകളുടെ പ്രതിബിംബങ്ങൾ';

  @override
  String get gameSceneMaskedFigureInShadow => 'നിഴലിൽ മുഖംമൂടി ധരിച്ച രൂപം';

  @override
  String get gameSceneElectricCompanionAtSunset => 'സൂര്യാസ്തമയത്തിലെ വൈദ്യുത കൂട്ടാളി';

  @override
  String get gameSceneTrainerAndFireDragon => 'പരിശീലകനും അഗ്നി ഡ്രാഗണും';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'രത്നങ്ങൾ പതിച്ച ഗുസ്തി മുഖംമൂടി';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ചുവന്ന ബ്രഷ് വരകളിൽ ഗുസ്തിക്കാരൻ';

  @override
  String get gameSceneWrestlingChampionSalute => 'ഗുസ്തി ചാമ്പ്യന്റെ അഭിവാദ്യം';

  @override
  String get gameSceneMorningAtTheBakery => 'ബേക്കറിയിലെ പ്രഭാതം';

  @override
  String get gameSceneGreenhousePottingBench => 'ഹരിതഗൃഹത്തിലെ ചെടി നടീൽ മേശ';

  @override
  String get gameSceneHarborFishingBoat => 'തുറമുഖത്തെ മീൻപിടിത്ത ബോട്ട്';

  @override
  String get gameSceneAtticObservatory => 'തട്ടിൻപുറത്തെ നിരീക്ഷണാലയം';

  @override
  String get gameSceneToyMakerSWorkshop => 'കളിപ്പാട്ട നിർമ്മാതാവിന്റെ പണിശാല';

  @override
  String get gameSceneWoodlandCampsite => 'വനത്തിലെ ക്യാമ്പ് സ്ഥലം';

  @override
  String get gameSceneAfternoonMusicRoom => 'ഉച്ചകഴിഞ്ഞുള്ള സംഗീത മുറി';

  @override
  String get gameSceneSeasideIceCreamStand => 'കടൽത്തീരത്തെ ഐസ്ക്രീം സ്റ്റാൻഡ്';

  @override
  String get gameSceneLibraryReadingNook => 'ലൈബ്രറിയിലെ വായനാ മൂല';

  @override
  String get gameSceneSewingStudio => 'തയ്യൽ സ്റ്റുഡിയോ';

  @override
  String get gameSceneFruitMarket => 'പഴച്ചന്ത';

  @override
  String get gameSceneKoiCourtyard => 'കോയി മത്സ്യങ്ങളുടെ മുറ്റം';

  @override
  String get gameSceneArtistSAtelier => 'ചിത്രകാരന്റെ സ്റ്റുഡിയോ';

  @override
  String get gameSceneMountainRailway => 'മലയോര റെയിൽവേ';

  @override
  String get gameSceneCountryKitchen => 'നാട്ടിൻപുറത്തെ അടുക്കള';

  @override
  String get gameScenePotteryWorkshop => 'മൺപാത്ര നിർമ്മാണശാല';

  @override
  String get gameSceneBeachPicnic => 'കടൽത്തീര പിക്നിക്';

  @override
  String get gameSceneFlowerShop => 'പൂക്കട';

  @override
  String get gameSceneClockmakerSWorkshop => 'ക്ലോക്ക് നിർമ്മാതാവിന്റെ പണിശാല';

  @override
  String get gameSceneRainyCafeTerrace => 'മഴയുള്ള കഫേ ടെറസ്';

  @override
  String get gameSceneCastleHerbGarden => 'കോട്ടയിലെ ഔഷധത്തോട്ടം';

  @override
  String get gameSceneClassroomArtCorner => 'ക്ലാസ്മുറിയിലെ ചിത്രകലാ മൂല';

  @override
  String get gameSceneAquariumShop => 'അക്വേറിയം കട';

  @override
  String get gameSceneAutumnLeafCollection => 'ശരത്കാല ഇലകളുടെ ശേഖരം';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'ചന്ദ്രനു കീഴിലെ ഒറ്റപ്പെട്ട മരം';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ശിഖരത്തിലെ ശരത്കാല പൂവ്';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'പച്ച ഇലകൾക്കിടയിലെ കുറുക്കൻ';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'ആമ്പലുകൾ നിറഞ്ഞ തടാകത്തിലെ കനോ';

  @override
  String get gameSceneDewDropsOnALeaf => 'ഇലയിലെ മഞ്ഞുതുള്ളികൾ';

  @override
  String get gameSceneStagInATurquoiseLake => 'ടർക്കോയ്സ് തടാകത്തിലെ കലമാൻ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'ഓറഞ്ച് ചന്ദ്രനു കീഴിലെ സൈക്കിൾ';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'താഴ്‌വരയ്ക്ക് മുകളിൽ വെള്ളക്കടുവ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'നീല വെള്ളത്തിൽ രണ്ട് മരങ്ങൾ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'വിശ്വസ്തനായ നായയുടെ അരികിൽ മീൻപിടുത്തം';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'മലയോര തടാകത്തിന് അരികിൽ ലില്ലിപ്പൂക്കൾ';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'പിങ്ക് നദീതീരത്ത് മാൻ';

  @override
  String get gameSceneTropicalHutAtSunset => 'സൂര്യാസ്തമയത്തിൽ ഉഷ്ണമേഖലാ കുടിൽ';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ആൽപൈൻ താഴ്‌വരയെ നോക്കിനിൽക്കുന്ന കുറുക്കൻ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'മയക്കുന്ന വനത്തോപ്പിലൂടെ സൂര്യാസ്തമയം';

  @override
  String get learningControlTitle => 'DevOps പഠിക്കാം';

  @override
  String get learningControlAllCategories => 'എല്ലാ വിഭാഗങ്ങളും';

  @override
  String get learningControlSearchCards => 'കാർഡുകൾ തിരയുക';

  @override
  String get learningControlClearSearch => 'തിരയൽ മായ്ക്കുക';

  @override
  String get learningControlCategory => 'വിഭാഗം';

  @override
  String get learningControlShowAll => 'എല്ലാ കാർഡുകളും കാണിക്കുക';

  @override
  String learningControlShowSaved(int count) {
    return 'സംരക്ഷിച്ച കാർഡുകൾ കാണിക്കുക ($count)';
  }

  @override
  String get learningControlShuffleOff => 'ഷഫിൾ ഓഫാക്കുക';

  @override
  String get learningControlShuffleOn => 'കാർഡുകൾ ഷഫിൾ ചെയ്യുക';

  @override
  String get learningControlAutoOff => 'ഓട്ടോ സ്വാപ്പ് നിർത്തുക';

  @override
  String get learningControlAutoOn => 'ഓരോ 10 സെക്കൻഡിലും ഓട്ടോ സ്വാപ്പ്';

  @override
  String get learningControlNoSaved => 'ഇതുവരെ കാർഡുകളൊന്നും സംരക്ഷിച്ചിട്ടില്ല';

  @override
  String get learningControlNoMatches => 'പൊരുത്തപ്പെടുന്ന കാർഡുകളില്ല';

  @override
  String get learningControlResetFilters => 'ഫിൽട്ടറുകൾ പുനഃസജ്ജമാക്കുക';

  @override
  String get learningControlPrevious => 'മുമ്പത്തേത്';

  @override
  String get learningControlNext => 'അടുത്തത്';

  @override
  String get learningControlProgress => 'പുരോഗതി';

  @override
  String get learningControlRemoveSaved => 'സംരക്ഷിച്ചതിൽ നിന്ന് നീക്കുക';

  @override
  String get learningControlSaveCard => 'കാർഡ് സംരക്ഷിക്കുക';

  @override
  String get learningControlExample => 'ഉദാഹരണം';

  @override
  String get learningControlCopyExample => 'ഉദാഹരണം പകർത്തുക';

  @override
  String get learningControlExampleCopied => 'ഉദാഹരണം പകർത്തി';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'ലെവൽ $value1 പൂർത്തിയായി';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'ലെവൽ $value1 കളിക്കുക';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'അൺലോക്ക് ചെയ്യാൻ ലെവൽ $value1 പൂർത്തിയാക്കുക';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'ദൈനംദിന ലോഗിൻ ബോണസ്';

  @override
  String get sharedDialogThanksForComingBack => 'തിരികെ വന്നതിന് നന്ദി!';

  @override
  String get sharedDialogDailyRewardAdded => 'നിങ്ങളുടെ ദൈനംദിന പ്രതിഫലം നിങ്ങളുടെ മൊത്തം പോയിന്റുകളിലേക്ക് ചേർത്തിട്ടുണ്ട്.';

  @override
  String get sharedDialogAwesome => 'കിടിലൻ!';

  @override
  String get accountWelcomeGuest => 'അതിഥി';

  @override
  String get accountWelcomeGuestUser => 'അതിഥി ഉപയോക്താവ്';

  @override
  String get accountWelcomeUser => 'ഉപയോക്താവ്';

  @override
  String get accountWelcomePlayingAsGuest => 'അതിഥിയായി കളിക്കുന്നു';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google അക്കൗണ്ട് ബന്ധിപ്പിക്കുക';

  @override
  String get accountWelcomeGoogleConnected => 'Google അക്കൗണ്ട് വിജയകരമായി ബന്ധിപ്പിച്ചു! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'സൈൻ-ഇൻ റദ്ദാക്കി.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'ബന്ധിപ്പിക്കുന്നത് പരാജയപ്പെട്ടു: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'സൈൻ ഔട്ട് ചെയ്യുക';

  @override
  String get accountWelcomeSignOutTitle => 'സൈൻ ഔട്ട് ചെയ്യണോ?';

  @override
  String get accountWelcomeSignOutMessage => 'നിങ്ങൾക്ക് തീർച്ചയായും സൈൻ ഔട്ട് ചെയ്യണോ? നിങ്ങളുടെ സംരക്ഷിച്ച പുരോഗതി ലഭിക്കാൻ വീണ്ടും സൈൻ ഇൻ ചെയ്യേണ്ടിവരും.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'സൈൻ ഔട്ട് പരാജയപ്പെട്ടു: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ആപ്പ് ഡാറ്റ റീസെറ്റ് ചെയ്യണോ?';

  @override
  String get accountWelcomeResetAppMessage => 'ഇത് നിങ്ങളുടെ എല്ലാ പോയിന്റുകളും സ്ട്രീക്കുകളും ഗെയിം ചരിത്രവും ക്രമീകരണങ്ങളും സ്ഥിരമായി ഇല്ലാതാക്കും. നിങ്ങളെ സൈൻ ഔട്ട് ചെയ്യുകയും ആരംഭ സ്ക്രീനിലേക്ക് തിരികെ കൊണ്ടുപോകുകയും ചെയ്യും. ഇത് പഴയപടിയാക്കാനാകില്ല.';

  @override
  String get accountWelcomeResetEverything => 'എല്ലാം റീസെറ്റ് ചെയ്യുക';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'റീസെറ്റ് പരാജയപ്പെട്ടു: $value1';
  }

  @override
  String get accountWelcomeCancel => 'റദ്ദാക്കുക';

  @override
  String get accountWelcomeResetAppData => 'ആപ്പ് ഡാറ്റ റീസെറ്റ് ചെയ്യുക';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'എല്ലാ പോയിന്റുകളും സ്ട്രീക്കുകളും ക്രമീകരണങ്ങളും മായ്ക്കുക';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ആപ്പ്';

  @override
  String get accountWelcomeTranslationNotAvailable => 'വിവർത്തനം ഇതുവരെ ലഭ്യമല്ല';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google വഴി തുടരുക';

  @override
  String get accountWelcomeSigningIn => 'സൈൻ ഇൻ ചെയ്യുന്നു...';

  @override
  String get accountWelcomeOr => 'അല്ലെങ്കിൽ';

  @override
  String get accountWelcomeContinueAsGuest => 'അതിഥിയായി തുടരുക';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'നിങ്ങൾക്ക് പിന്നീട് പ്രൊഫൈലിൽ നിന്ന് സൈൻ ഇൻ ചെയ്യാം.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'നിങ്ങൾക്ക് അതിഥിയായി ആരംഭിച്ച് പിന്നീട് സൈൻ ഇൻ ചെയ്യാം.';

  @override
  String get accountWelcomeGreetingGuest => 'സ്വാഗതം';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'സ്വാഗതം, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google സൈൻ-ഇൻ പൂർത്തിയായി, പക്ഷേ ഉപയോക്തൃ അക്കൗണ്ട് ലഭിച്ചില്ല.';

  @override
  String get accountWelcomeErrorEmailExists => 'ഈ ഇമെയിലിൽ മറ്റൊരു സൈൻ-ഇൻ രീതി ഉപയോഗിക്കുന്ന അക്കൗണ്ട് ഇതിനകം ഉണ്ട്.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ഈ Google അക്കൗണ്ട് ഇതിനകം മറ്റൊരു അക്കൗണ്ടുമായി ലിങ്ക് ചെയ്തിട്ടുണ്ട്.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google പ്രാമാണീകരണ ക്രെഡൻഷ്യൽ അസാധുവാണ് അല്ലെങ്കിൽ കാലാവധി കഴിഞ്ഞു.';

  @override
  String get accountWelcomeErrorUserDisabled => 'ഈ അക്കൗണ്ട് പ്രവർത്തനരഹിതമാക്കിയിരിക്കുന്നു.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google സൈൻ-ഇൻ നിലവിൽ സജ്ജമാക്കിയിട്ടില്ല.';

  @override
  String get accountWelcomeErrorNetwork => 'നെറ്റ്‌വർക്ക് പിശക്. ദയവായി നിങ്ങളുടെ ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'നിരവധി സൈൻ-ഇൻ ശ്രമങ്ങൾ നടന്നു. ദയവായി കാത്തിരുന്ന് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'കൂടുതൽ പിശക് വിവരങ്ങളൊന്നുമില്ല.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google സൈൻ-ഇൻ പരാജയപ്പെട്ടു.\n\nകോഡ്: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google സൈൻ-ഇൻ പിശക്:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'അതിഥിയായി തുടരാനായില്ല. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google സൈൻ-ഇൻ ഉടൻ ലഭ്യമാകും.';

  @override
  String get accountWelcomeLoginTagline => 'പഠിക്കുക • പരിശീലിക്കുക • മത്സരിക്കുക • നേടുക';

  @override
  String get accountWelcomeCountryRegion => 'രാജ്യം / പ്രദേശം';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'രാജ്യം / പ്രദേശം: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'രാജ്യം തിരയുക';

  @override
  String get accountWelcomeCountryNotSelected => 'തിരഞ്ഞെടുത്തിട്ടില്ല';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'എന്തുകൊണ്ട് DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ പരിശീലന ചോദ്യങ്ങൾ';

  @override
  String get accountWelcomeFeatureLanguages => 'ബഹുഭാഷാ പിന്തുണ';

  @override
  String get accountWelcomeFeatureStreaks => 'സ്ട്രീക്കുകളും ലീഡർബോർഡുകളും';

  @override
  String get accountWelcomeFeatureGames => 'ഗെയിമുകളും ചലഞ്ചുകളും';

  @override
  String get accountWelcomeFeatureCloud => 'ക്ലൗഡും DevOps-ഉം';

  @override
  String get accountWelcomeFeatureRewards => 'ബോണസും റിവാർഡുകളും';

  @override
  String get accountWelcomePracticeOnTheGo => 'എവിടെയിരുന്നും പരിശീലിക്കുക';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ആപ്പ് ഇൻസ്റ്റാൾ ചെയ്ത് എവിടെയിരുന്നും ഓഫ്‌ലൈനായി പഠിക്കുക.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play-യിൽ ലഭ്യമാണ്';

  @override
  String achLocStreakTitle(String days) {
    return '$days ദിവസത്തെ സ്ട്രീക്ക്';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days ദിവസത്തെ സ്ട്രീക്ക് നിലനിർത്തുക.';
  }

  @override
  String get achLocYearStreakTitle => '1 വർഷത്തെ സ്ട്രീക്ക്';

  @override
  String get achLocFirstQuizTitle => 'ആദ്യ ക്വിസ്';

  @override
  String get achLocFirstQuizDescription => 'നിങ്ങളുടെ ആദ്യ ക്വിസ് പൂർത്തിയാക്കുക.';

  @override
  String get achLocQuiz10Title => 'ക്വിസ് എക്സ്പ്ലോറർ';

  @override
  String get achLocQuiz10Description => '10 ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocPoints1000Title => '1000 പോയിന്റുകൾ';

  @override
  String get achLocPoints1000Description => 'Quiz-ൽ ആകെ 1000 പോയിന്റുകൾ നേടുക.';

  @override
  String get achLocPerfectScoreTitle => 'പെർഫെക്റ്റ് സ്കോർ';

  @override
  String get achLocPerfectScoreDescription => 'ഏതെങ്കിലും ക്വിസിൽ 100% സ്കോർ നേടുക.';

  @override
  String get achLocQuiz25Title => 'ക്വിസ് ഉത്സാഹി';

  @override
  String get achLocQuiz25Description => '25 ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocQuiz50Title => 'ക്വിസ് മാസ്റ്റർ';

  @override
  String get achLocQuiz50Description => '50 ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocQuiz100Title => 'സെഞ്ച്വറി ക്ലബ്';

  @override
  String get achLocQuiz100Description => '100 ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocQuiz250Title => 'ക്വിസ് ലെജൻഡ്';

  @override
  String get achLocQuiz250Description => '250 ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocPoints5000Title => '5,000 പോയിന്റുകൾ';

  @override
  String get achLocPoints5000Description => 'ആകെ 5,000 പോയിന്റുകൾ നേടുക.';

  @override
  String get achLocPoints10000Title => '10,000 പോയിന്റുകൾ';

  @override
  String get achLocPoints10000Description => 'ആകെ 10,000 പോയിന്റുകൾ നേടുക.';

  @override
  String get achLocPoints50000Title => '50,000 പോയിന്റുകൾ';

  @override
  String get achLocPoints50000Description => 'ആകെ 50,000 പോയിന്റുകൾ നേടുക.';

  @override
  String get achLocPoints100000Title => '100,000 പോയിന്റുകൾ';

  @override
  String get achLocPoints100000Description => 'ആകെ 100,000 പോയിന്റുകൾ നേടുക.';

  @override
  String get achLocDaily1Title => 'ഡെയ്‌ലി സ്റ്റാർട്ടർ';

  @override
  String get achLocDaily1Description => 'നിങ്ങളുടെ ആദ്യ ഡെയ്‌ലി ക്വിസ് പൂർത്തിയാക്കുക.';

  @override
  String get achLocDaily7Title => 'ഡെയ്‌ലി ശീലം';

  @override
  String get achLocDaily7Description => '7 ഡെയ്‌ലി ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocDaily30Title => 'ഡെയ്‌ലി ചാമ്പ്യൻ';

  @override
  String get achLocDaily30Description => '30 ഡെയ്‌ലി ക്വിസുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocSets5Title => 'സെറ്റ് സ്റ്റാർട്ടർ';

  @override
  String get achLocSets5Description => '5 ക്വിസ് സെറ്റുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocSets25Title => 'സെറ്റ് കളക്ടർ';

  @override
  String get achLocSets25Description => '25 ക്വിസ് സെറ്റുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocSets50Title => 'സെറ്റ് മാസ്റ്റർ';

  @override
  String get achLocSets50Description => '50 ക്വിസ് സെറ്റുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocSets100Title => 'സെറ്റ് ലെജൻഡ്';

  @override
  String get achLocSets100Description => '100 ക്വിസ് സെറ്റുകൾ പൂർത്തിയാക്കുക.';

  @override
  String get achLocCert1Title => 'ആദ്യ സർട്ടിഫിക്കറ്റ്';

  @override
  String get achLocCert1Description => 'നിങ്ങളുടെ ആദ്യ വിഭാഗ സർട്ടിഫിക്കറ്റ് നേടുക.';

  @override
  String get achLocCert5Title => 'സർട്ടിഫൈഡ് പ്രോ';

  @override
  String get achLocCert5Description => '5 വിഭാഗ സർട്ടിഫിക്കറ്റുകൾ നേടുക.';

  @override
  String get achLocCert21Title => 'പൂർണ്ണ സർട്ടിഫൈഡ്';

  @override
  String get achLocCert21Description => '21 വിഭാഗങ്ങളിലും സർട്ടിഫിക്കറ്റ് നേടുക.';

  @override
  String get achLocThemeFreeValentinesWeek => 'എല്ലാ വർഷവും ഫെബ്രുവരി 7-14 വരെ സൗജന്യം';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'എല്ലാ വർഷവും മാർച്ച് 8-15 വരെ സൗജന്യം';

  @override
  String get achLocThemeLight => 'ലൈറ്റ്';

  @override
  String get achLocThemeDark => 'ഡാർക്ക്';

  @override
  String get achLocThemeSakura => 'സകുറ';

  @override
  String get achLocThemeSunset => 'സൺസെറ്റ്';

  @override
  String get achLocThemeCoffee => 'കോഫി';

  @override
  String get achLocThemeTea => 'ടീ';

  @override
  String get achLocThemeOcean => 'ഓഷൻ';

  @override
  String get achLocThemeSolarFlare => 'സോളാർ ഫ്ലെയർ';

  @override
  String get achLocThemeForest => 'ഫോറസ്റ്റ്';

  @override
  String get achLocThemeAurora => 'അറോറ';

  @override
  String get achLocThemeMatrix => 'മാട്രിക്സ്';

  @override
  String get achLocThemeCyberPurple => 'സൈബർ പർപ്പിൾ';

  @override
  String get achLocThemeInferno => 'ഇൻഫെർണോ';

  @override
  String get achLocThemeMidnight => 'അർധരാത്രി';

  @override
  String get achLocThemeDarkGrey => 'ഡാർക്ക് ഗ്രേ';

  @override
  String get achLocThemeBarbee => 'ബാർബീ';

  @override
  String get achLocThemeValentineDay => 'വാലന്റൈൻ ദിനം';

  @override
  String get achLocThemeDqSpecial => 'DQ സ്പെഷ്യൽ';

  @override
  String get achLocThemeArmy => 'ആർമി';

  @override
  String get achLocThemeSpiderMan => 'സ്പൈഡർ-മാൻ';

  @override
  String get achLocThemeKrrish => 'ക്രിഷ്';

  @override
  String get achLocThemeIronMan => 'അയൺ മാൻ';

  @override
  String get achLocThemeCaptainAmerica => 'ക്യാപ്റ്റൻ അമേരിക്ക';

  @override
  String get achLocThemeThor => 'തോർ';

  @override
  String get achLocThemeHulk => 'ഹൾക്ക്';

  @override
  String get achLocThemeBlackWidow => 'ബ്ലാക്ക് വിഡോ';

  @override
  String get achLocThemeHawkeye => 'ഹോക്കൈ';

  @override
  String get achLocThemeBlackPanther => 'ബ്ലാക്ക് പാന്തർ';

  @override
  String get achLocThemeScarletWitch => 'സ്കാർലറ്റ് വിച്ച്';

  @override
  String get achLocThemeVision => 'വിഷൻ';

  @override
  String get achLocThemeAntMan => 'ആന്റ്-മാൻ';

  @override
  String get achLocThemeCaptainMarvel => 'ക്യാപ്റ്റൻ മാർവൽ';

  @override
  String get achLocThemeDoctorStrange => 'ഡോക്ടർ സ്ട്രേഞ്ച്';

  @override
  String get achLocThemeAvengers => 'അവഞ്ചേഴ്സ്';

  @override
  String get achLocThemeBatman => 'ബാറ്റ്മാൻ';

  @override
  String get achLocThemeSuperman => 'സൂപ്പർമാൻ';

  @override
  String get achLocThemeWonderWoman => 'വണ്ടർ വുമൺ';

  @override
  String get achLocThemeFlash => 'ഫ്ലാഷ്';

  @override
  String get achLocThemeAquaman => 'അക്വാമാൻ';

  @override
  String get achLocThemeGreenLantern => 'ഗ്രീൻ ലാന്റേൺ';

  @override
  String get achLocThemeCyborg => 'സൈബോർഗ്';

  @override
  String get achLocThemeSupergirl => 'സൂപ്പർഗേൾ';

  @override
  String get achLocThemeDc => 'DC ഹീറോസ്';

  @override
  String get achLocThemeRainbow => 'മഴവില്ല്';

  @override
  String get achLocThemeDiamond => 'ഡയമണ്ട്';

  @override
  String get achLocThemeLegendary => 'ലജൻഡറി';

  @override
  String get gameHintCmd001LsLa => 'എല്ലാ ഫയലുകളും വിശദാംശങ്ങളോടെ പട്ടികപ്പെടുത്തുക';

  @override
  String get gameHintCmd002Grep => 'ഒരു പാറ്റേൺ ഉപയോഗിച്ച് ടെക്സ്റ്റ് തിരയുക';

  @override
  String get gameHintCmd003Chmod => 'ഫയൽ അനുമതികൾ മാറ്റുക';

  @override
  String get gameHintCmd004DfH => 'ശേഷിക്കുന്ന ഡിസ്ക് സ്ഥലം കാണിക്കുക';

  @override
  String get gameHintCmd005TailF => 'വളരുന്ന ലോഗ് ഫയൽ പിന്തുടരുക';

  @override
  String get gameHintCmd006PsAux => 'പ്രവർത്തിക്കുന്ന പ്രോസസ്സുകൾ പട്ടികപ്പെടുത്തുക';

  @override
  String get gameHintCmd007GitClone => 'ഒരു റിമോട്ട് റിപ്പോസിറ്ററി പകർത്തുക';

  @override
  String get gameHintCmd008GitStash => 'കമ്മിറ്റ് ചെയ്യാത്ത മാറ്റങ്ങൾ മാറ്റിവയ്ക്കുക';

  @override
  String get gameHintCmd009GitRebase => 'കമ്മിറ്റുകൾ പുതിയ അടിത്തറയിൽ വീണ്ടും പ്രയോഗിക്കുക';

  @override
  String get gameHintCmd010GitBlame => 'ഓരോ വരിയും ആര് മാറ്റിയെന്ന് കാണിക്കുക';

  @override
  String get gameHintCmd011DockerPs => 'പ്രവർത്തിക്കുന്ന കണ്ടെയ്നറുകൾ പട്ടികപ്പെടുത്തുക';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile-ൽ നിന്ന് ഒരു ഇമേജ് സൃഷ്ടിക്കുക';

  @override
  String get gameHintCmd013DockerLogs => 'കണ്ടെയ്നർ ഔട്ട്പുട്ട് കാണിക്കുക';

  @override
  String get gameHintCmd014DockerExec => 'കണ്ടെയ്നറിനുള്ളിൽ ഒരു കമാൻഡ് പ്രവർത്തിപ്പിക്കുക';

  @override
  String get gameHintCmd015KubectlGetPods => 'ഒരു നെയിംസ്പേസിലെ പോഡുകൾ പട്ടികപ്പെടുത്തുക';

  @override
  String get gameHintCmd016KubectlApply => 'ഒരു ഫയലിൽ നിന്ന് റിസോഴ്സുകൾ സൃഷ്ടിക്കുക';

  @override
  String get gameHintCmd017KubectlDescribe => 'റിസോഴ്സിന്റെ വിശദ വിവരങ്ങൾ കാണിക്കുക';

  @override
  String get gameHintCmd018KubectlScale => 'റെപ്ലിക്കകളുടെ എണ്ണം മാറ്റുക';

  @override
  String get gameHintCmd019TerraformInit => 'പ്രൊവൈഡർമാരെ ഡൗൺലോഡ് ചെയ്ത് സജ്ജീകരിക്കുക';

  @override
  String get gameHintCmd020TerraformPlan => 'ഇൻഫ്രാസ്ട്രക്ചർ മാറ്റങ്ങളുടെ പ്രിവ്യൂ കാണുക';

  @override
  String get gameHintCmd021TerraformApply => 'ഇൻഫ്രാസ്ട്രക്ചർ സൃഷ്ടിക്കുക അല്ലെങ്കിൽ അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get gameHintCmd022TerraformDestroy => 'നിയന്ത്രിത ഇൻഫ്രാസ്ട്രക്ചർ നീക്കം ചെയ്യുക';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ഒരു ഓട്ടോമേഷൻ പ്ലേബുക്ക് പ്രവർത്തിപ്പിക്കുക';

  @override
  String get gameHintCmd024Ping => 'ICMP ഉപയോഗിച്ച് ലഭ്യത പരിശോധിക്കുക';

  @override
  String get gameHintCmd025Traceroute => 'ഒരു ഹോസ്റ്റിലേക്കുള്ള പാത കാണിക്കുക';

  @override
  String get gameHintCmd026Curl => 'ഒരു URL-ൽ നിന്ന് ഡാറ്റ കൈമാറ്റം ചെയ്യുക';

  @override
  String get gameHintCmd027Ssh => 'റിമോട്ട് മെഷീനിൽ സുരക്ഷിതമായി ലോഗിൻ ചെയ്യുക';

  @override
  String get gameHintCmd028CrontabE => 'ഷെഡ്യൂൾ ചെയ്ത ജോലികൾ എഡിറ്റ് ചെയ്യുക';

  @override
  String get gameHintCmd029SystemctlStatus => 'ഒരു സേവനത്തിന്റെ അവസ്ഥ പരിശോധിക്കുക';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes-ലേക്ക് ഒരു ചാർട്ട് വിന്യസിക്കുക';

  @override
  String get gameHintWord001Git => 'സോഴ്സ് കോഡിലെ മാറ്റങ്ങൾ ട്രാക്ക് ചെയ്യുന്നു.';

  @override
  String get gameHintWord002Aws => 'Amazon-ന്റെ ക്ലൗഡ് പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord003Api => 'സോഫ്റ്റ്വെയർ സിസ്റ്റങ്ങൾക്ക് പരസ്പരം ആശയവിനിമയം നടത്താൻ അനുവദിക്കുന്ന കരാർ.';

  @override
  String get gameHintWord004Dns => 'ഡൊമെയ്ൻ പേരുകളെ IP വിലാസങ്ങളാക്കി മാറ്റുന്നു.';

  @override
  String get gameHintWord005Cli => 'കമാൻഡുകൾ പ്രവർത്തിപ്പിക്കാനുള്ള ടെക്സ്റ്റ് അടിസ്ഥാനമാക്കിയ ഇന്റർഫേസ്.';

  @override
  String get gameHintWord006Cpu => 'നിർദ്ദേശങ്ങൾ നടപ്പിലാക്കുന്ന പ്രോസസർ.';

  @override
  String get gameHintWord007Ram => 'പ്രവർത്തിക്കുന്ന പ്രോഗ്രാമുകൾ ഉപയോഗിക്കുന്ന താൽക്കാലിക മെമ്മറി.';

  @override
  String get gameHintWord008Ssh => 'റിമോട്ട് ഷെൽ ആക്സസിനുള്ള സുരക്ഷിത പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord009Yaml => 'മനുഷ്യന് വായിക്കാവുന്ന ഡാറ്റ സീരിയലൈസേഷൻ ഫോർമാറ്റ്.';

  @override
  String get gameHintWord010Linux => 'ഓപ്പൺ സോഴ്സ് ഓപ്പറേറ്റിംഗ് സിസ്റ്റം കെർണലും അതിന്റെ കുടുംബവും.';

  @override
  String get gameHintWord011Bash => 'ജനപ്രിയമായ ഒരു Unix കമാൻഡ് ഷെൽ.';

  @override
  String get gameHintWord012Cloud => 'നെറ്റ്വർക്ക് വഴി ആവശ്യാനുസരണം ലഭിക്കുന്ന കമ്പ്യൂട്ടിംഗ്.';

  @override
  String get gameHintWord013Docker => 'കണ്ടെയ്നറുകൾ നിർമ്മിക്കാനും പ്രവർത്തിപ്പിക്കാനുമുള്ള പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord014Azure => 'Microsoft-ന്റെ ക്ലൗഡ് പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord015Python => 'വ്യാപകമായി ഉപയോഗിക്കുന്ന സ്ക്രിപ്റ്റിംഗ്, പ്രോഗ്രാമിംഗ് ഭാഷ.';

  @override
  String get gameHintWord016Github => 'ജനപ്രിയമായ ഹോസ്റ്റ് ചെയ്ത Git സഹകരണ സേവനം.';

  @override
  String get gameHintWord017Bgp => 'സ്വയംഭരണ സിസ്റ്റങ്ങൾക്കിടയിൽ റൂട്ടുകൾ കൈമാറുന്ന റൂട്ടിംഗ് പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord018Jenkins => 'CI-ക്ക് പതിവായി ഉപയോഗിക്കുന്ന ഓട്ടോമേഷൻ സെർവർ.';

  @override
  String get gameHintWord019Port => 'നെറ്റ്വർക്ക് സേവനങ്ങൾ ഉപയോഗിക്കുന്ന നമ്പറിട്ട എൻഡ്പോയിന്റ്.';

  @override
  String get gameHintWord020Proxy => 'ക്ലയന്റുകൾക്കായി അഭ്യർത്ഥനകൾ കൈമാറുന്ന സെർവർ.';

  @override
  String get gameHintWord021Cache => 'ആവർത്തിച്ച് ഉപയോഗിക്കുന്ന ഡാറ്റയ്ക്കുള്ള വേഗതയേറിയ സംഭരണി.';

  @override
  String get gameHintWord022Cron => 'ആവർത്തിക്കുന്ന കമാൻഡുകൾക്കുള്ള Unix ഷെഡ്യൂളർ.';

  @override
  String get gameHintWord023Bicep => 'ഇൻഫ്രാസ്ട്രക്ചർ ആസ് കോഡിനുള്ള Azure-ന്റെ ഡിക്ലറേറ്റീവ് ഭാഷ.';

  @override
  String get gameHintWord024Apigee => 'കേന്ദ്രീകൃത API മാനേജ്മെന്റിനുള്ള Google Cloud പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord025Root => 'Unix പോലുള്ള സിസ്റ്റങ്ങളിലെ പ്രത്യേകാവകാശമുള്ള അഡ്മിനിസ്ട്രേറ്റർ അക്കൗണ്ട്.';

  @override
  String get gameHintWord026Nginx => 'വെബ് സെർവറും റിവേഴ്സ് പ്രോക്സിയും.';

  @override
  String get gameHintWord027Redis => 'കാഷെ ആയി പതിവായി ഉപയോഗിക്കുന്ന ഇൻ-മെമ്മറി ഡാറ്റ സ്റ്റോർ.';

  @override
  String get gameHintWord028Mysql => 'ജനപ്രിയമായ റിലേഷണൽ ഡാറ്റാബേസ് സിസ്റ്റം.';

  @override
  String get gameHintWord029Ruby => 'Chef പോലുള്ള ടൂളുകൾ ഉപയോഗിക്കുന്ന പ്രോഗ്രാമിംഗ് ഭാഷ.';

  @override
  String get gameHintWord030Helm => 'Kubernetes-നൊപ്പം സാധാരണയായി ഉപയോഗിക്കുന്ന പാക്കേജ് മാനേജർ.';

  @override
  String get gameHintWord031Pod => 'Kubernetes-ലെ വിന്യസിക്കാവുന്ന ഏറ്റവും ചെറിയ യൂണിറ്റ്.';

  @override
  String get gameHintWord032Image => 'കണ്ടെയ്നർ സൃഷ്ടിക്കാൻ ഉപയോഗിക്കുന്ന റീഡ്-ഓൺലി ടെംപ്ലേറ്റ്.';

  @override
  String get gameHintWord033Build => 'സോഴ്സിൽ നിന്നും ഡിപൻഡൻസികളിൽ നിന്നും ആർട്ടിഫാക്റ്റ് സൃഷ്ടിക്കുന്നു.';

  @override
  String get gameHintWord034Deploy => 'ഒരു ആപ്ലിക്കേഷനെ ഒരു എൻവയോൺമെന്റിലേക്ക് പുറത്തിറക്കുന്നു.';

  @override
  String get gameHintWord035Terraform => 'ഇൻഫ്രാസ്ട്രക്ചർ ആസ് കോഡിനുള്ള HashiCorp ടൂൾ.';

  @override
  String get gameHintWord036Ansible => 'ഏജന്റ് ആവശ്യമില്ലാത്ത ഓട്ടോമേഷൻ, കോൺഫിഗറേഷൻ ടൂൾ.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes-നുള്ള കമാൻഡ്-ലൈൻ ക്ലയന്റ്.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform-ന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord039Gitops => 'Git-നെ സത്യത്തിന്റെ ഉറവിടമായി ഉപയോഗിക്കുന്ന പ്രവർത്തന മാതൃക.';

  @override
  String get gameHintWord040Pipeline => 'ബിൽഡ്, ടെസ്റ്റ്, റിലീസ് ഘട്ടങ്ങളുടെ ഓട്ടോമേറ്റഡ് ക്രമം.';

  @override
  String get gameHintWord041Container => 'ഡിപൻഡൻസികളോടൊപ്പം പാക്കേജ് ചെയ്ത ഒറ്റപ്പെട്ട പ്രോസസ്സ്.';

  @override
  String get gameHintWord042Cluster => 'ഒരു പങ്കിട്ട സിസ്റ്റമായി നിയന്ത്രിക്കുന്ന മെഷീനുകളുടെ കൂട്ടം.';

  @override
  String get gameHintWord043Ingress => 'ബാഹ്യ HTTP റൂട്ടിംഗിനുള്ള Kubernetes API ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord044Firewall => 'സുരക്ഷാ നിയമങ്ങൾ അനുസരിച്ച് നെറ്റ്വർക്ക് ട്രാഫിക് ഫിൽട്ടർ ചെയ്യുന്നു.';

  @override
  String get gameHintWord045Subnet => 'ഒരു IP നെറ്റ്വർക്കിന്റെ ലോജിക്കൽ ഉപവിഭാഗം.';

  @override
  String get gameHintWord046Gateway => 'വ്യത്യസ്ത നെറ്റ്വർക്കുകളെ ബന്ധിപ്പിക്കുന്ന നെറ്റ്വർക്ക് നോഡ്.';

  @override
  String get gameHintWord047Router => 'നെറ്റ്വർക്കുകൾക്കിടയിൽ പാക്കറ്റുകൾ കൈമാറുന്നു.';

  @override
  String get gameHintWord048Switch => 'ഒരു ലോക്കൽ നെറ്റ്വർക്കിനുള്ളിലെ ഉപകരണങ്ങളെ ബന്ധിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord049Repository => 'സോഴ്സ് കോഡിനോ പാക്കേജുകൾക്കോ വേണ്ടിയുള്ള നിയന്ത്രിത സംഭരണം.';

  @override
  String get gameHintWord050Systemd => 'Linux ഇനിറ്റ് സിസ്റ്റവും സേവന മാനേജറും.';

  @override
  String get gameHintWord051Journalctl => 'systemd ജേണൽ ലോഗുകൾ വായിക്കാനുള്ള കമാൻഡ്.';

  @override
  String get gameHintWord052Permission => 'ആർക്കൊക്കെ വായിക്കാനും എഴുതാനും പ്രവർത്തിപ്പിക്കാനും കഴിയുമെന്ന് നിയന്ത്രിക്കുന്ന നിയമം.';

  @override
  String get gameHintWord053Alloydb => 'PostgreSQL-അനുയോജ്യമായ Google Cloud മാനേജ്ഡ് ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord054Configmap => 'രഹസ്യമല്ലാത്ത കോൺഫിഗറേഷനുള്ള Kubernetes ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord055Secret => 'സെൻസിറ്റീവ് ഡാറ്റയ്ക്കുള്ള Kubernetes ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord056Persistent => 'വർക്ക്ലോഡ് റീസ്റ്റാർട്ടിനെ അതിജീവിക്കുന്ന സംഭരണത്തെ വിവരിക്കുന്നു.';

  @override
  String get gameHintWord057Volume => 'കണ്ടെയ്നറിലേക്ക് മൗണ്ട് ചെയ്യുന്ന ഫയൽസിസ്റ്റം സംഭരണം.';

  @override
  String get gameHintWord058Storage => 'ഫയലുകൾ, ഒബ്ജക്റ്റുകൾ, ബ്ലോക്കുകൾ എന്നിവയ്ക്കുള്ള സ്ഥിരമായ ഇടം.';

  @override
  String get gameHintWord059Replica => 'സ്കെയിലിനോ വിശ്വാസ്യതയ്ക്കോ വേണ്ടി നിലനിർത്തുന്ന വർക്ക്ലോഡ് ഇൻസ്റ്റൻസിന്റെ പകർപ്പ്.';

  @override
  String get gameHintWord060Deployment => 'സ്റ്റേറ്റ്ലെസ് ആപ്ലിക്കേഷൻ പോഡുകൾക്കുള്ള Kubernetes കൺട്രോളർ.';

  @override
  String get gameHintWord061Dockerfile => 'Docker ഇമേജ് നിർമ്മിക്കാൻ ഉപയോഗിക്കുന്ന നിർദ്ദേശങ്ങൾ.';

  @override
  String get gameHintWord062Database => 'ആപ്ലിക്കേഷനുകൾ ക്വറി ചെയ്യുന്ന ക്രമീകരിച്ച സംഭരണി.';

  @override
  String get gameHintWord063Automation => 'മാനുവൽ ഘട്ടങ്ങളില്ലാതെ ആവർത്തന ജോലികൾ ചെയ്യാൻ സോഫ്റ്റ്വെയർ ഉപയോഗിക്കുന്നത്.';

  @override
  String get gameHintWord064Anthos => 'വിവിധ എൻവയോൺമെന്റുകളിലെ ക്ലസ്റ്ററുകൾ നിയന്ത്രിക്കാനുള്ള Google Cloud പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord065Bigquery => 'വലിയ തോതിലുള്ള ഡാറ്റ അനലിറ്റിക്സിനുള്ള Google Cloud സേവനം.';

  @override
  String get gameHintWord066Bigtable => 'അനലിറ്റിക്സിനുള്ള Google Cloud വൈഡ്-കോളം NoSQL ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord067Loadbalancer => 'വരുന്ന ട്രാഫിക് ഒന്നിലധികം ബാക്കെൻഡുകളിലേക്ക് വിതരണം ചെയ്യുന്നു.';

  @override
  String get gameHintWord068Prometheus => 'ടൈം-സീരീസ് മെട്രിക്കുകൾ സംഭരിക്കുന്ന മോണിറ്ററിംഗ് സിസ്റ്റം.';

  @override
  String get gameHintWord069Grafana => 'ഒബ്സർവബിലിറ്റി ഡാറ്റ ക്വറി ചെയ്യാനും ദൃശ്യവൽക്കരിക്കാനുമുള്ള പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud മാനേജ്ഡ് NoSQL JSON ഡോക്യുമെന്റ് ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord071Cloudtrail => 'ഓഡിറ്റിംഗിനായി API പ്രവർത്തനം രേഖപ്പെടുത്തുന്ന AWS സേവനം.';

  @override
  String get gameHintWord072Statefulset => 'സ്ഥിരമായ ഐഡന്റിറ്റി ആവശ്യമുള്ള വർക്ക്ലോഡുകൾക്കുള്ള Kubernetes കൺട്രോളർ.';

  @override
  String get gameHintWord073Daemonset => 'തിരഞ്ഞെടുത്ത നോഡുകളിൽ ഒരു പോഡ് പ്രവർത്തിപ്പിക്കുന്ന Kubernetes കൺട്രോളർ.';

  @override
  String get gameHintWord074Serviceaccount => 'വർക്ക്ലോഡോ പ്രോസസ്സോ ഉപയോഗിക്കുന്ന Kubernetes ഐഡന്റിറ്റി.';

  @override
  String get gameHintWord075Networkpolicy => 'പോഡ് നെറ്റ്വർക്ക് ട്രാഫിക് നിയന്ത്രിക്കുന്ന Kubernetes റിസോഴ്സ്.';

  @override
  String get gameHintWord076Certificate => 'TLS-ൽ ഐഡന്റിറ്റി സ്ഥാപിക്കാൻ ഉപയോഗിക്കുന്ന ഡിജിറ്റൽ രേഖ.';

  @override
  String get gameHintWord077Encryption => 'അധികാരമുള്ളവർക്ക് മാത്രം വായിക്കാൻ കഴിയുന്ന വിധം ഡാറ്റ രൂപാന്തരപ്പെടുത്തുന്നു.';

  @override
  String get gameHintWord078Observability => 'സിസ്റ്റത്തിന്റെ ഔട്ട്പുട്ടുകളിൽ നിന്ന് അതിന്റെ പെരുമാറ്റം മനസ്സിലാക്കാനുള്ള കഴിവ്.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes ക്ലസ്റ്ററുകൾക്കുള്ളിൽ സാധാരണയായി ഉപയോഗിക്കുന്ന DNS സെർവർ.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API-കൾ വഴി ക്ലൗഡ് റിസോഴ്സുകൾ നിയന്ത്രിക്കാനുള്ള പ്രോജക്റ്റ്.';

  @override
  String get gameHintWord081Failover => 'പരാജയത്തിന് ശേഷം സ്റ്റാൻഡ്ബൈ ഘടകത്തിലേക്ക് മാറുന്നത്.';

  @override
  String get gameHintWord082Idempotency => 'ഒരു പ്രവർത്തനം ആവർത്തിക്കുന്നത് ഒരിക്കൽ ചെയ്യുന്നതിന് തുല്യമായ ഫലം നൽകുന്ന സവിശേഷത.';

  @override
  String get gameHintWord083Dataflow => 'സ്ട്രീം, ബാച്ച് ഡാറ്റ പ്രോസസ്സിംഗിനുള്ള Google Cloud സേവനം.';

  @override
  String get gameHintWord084Orchestration => 'ഒന്നിലധികം ഓട്ടോമേറ്റഡ് വർക്ക്ലോഡുകളുടെ ഏകോപിത നിയന്ത്രണം.';

  @override
  String get gameHintWord085Dataplex => 'എന്റർപ്രൈസ് ഡാറ്റ കണ്ടെത്താനും നിയന്ത്രിക്കാനുമുള്ള Google Cloud സേവനം.';

  @override
  String get gameHintWord086Serverless => 'ഇൻഫ്രാസ്ട്രക്ചർ മാനേജ്മെന്റ് മറച്ചുവയ്ക്കുന്ന എക്സിക്യൂഷൻ മാതൃക.';

  @override
  String get gameHintWord087Distributed => 'ഘടകങ്ങൾ നെറ്റ്വർക്ക് ചെയ്ത ഒന്നിലധികം മെഷീനുകളിൽ പ്രവർത്തിക്കുന്ന സിസ്റ്റം.';

  @override
  String get gameHintWord088Dataproc => 'മാനേജ്ഡ് Apache Spark, Hadoop എൻവയോൺമെന്റ് നൽകുന്ന Google Cloud സേവനം.';

  @override
  String get gameHintWord089Dynamodb => 'Terraform സ്റ്റേറ്റ് ലോക്കിംഗിന് പതിവായി ഉപയോഗിക്കുന്ന AWS NoSQL ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord090Provisioning => 'ഇൻഫ്രാസ്ട്രക്ചറോ റിസോഴ്സുകളോ ഉപയോഗത്തിനായി തയ്യാറാക്കുന്നത്.';

  @override
  String get gameHintWord091Elasticsearch => 'കേന്ദ്രീകൃത ലോഗിംഗിന് സാധാരണയായി ഉപയോഗിക്കുന്ന സെർച്ച് എഞ്ചിൻ.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes ക്ലസ്റ്റർ സ്റ്റേറ്റ് സൂക്ഷിക്കുന്ന കീ-വാല്യു സ്റ്റോർ.';

  @override
  String get gameHintWord093Authentication => 'ഒരു ഉപയോക്താവോ സേവനമോ ആരാണെന്ന് പരിശോധിക്കുന്ന പ്രക്രിയ.';

  @override
  String get gameHintWord094Authorization => 'ഒരു ഐഡന്റിറ്റിക്ക് എന്ത് ചെയ്യാൻ അനുവാദമുണ്ടെന്ന് തീരുമാനിക്കുന്ന പ്രക്രിയ.';

  @override
  String get gameHintWord095Expressroute => 'ഡാറ്റാ സെന്ററുകളിലേക്ക് സമർപ്പിത സ്വകാര്യ കണക്റ്റിവിറ്റി നൽകുന്ന Azure സേവനം.';

  @override
  String get gameHintWord096Configuration => 'സോഫ്റ്റ്വെയർ എങ്ങനെ പെരുമാറുമെന്ന് നിർണ്ണയിക്കുന്ന ക്രമീകരണങ്ങൾ.';

  @override
  String get gameHintWord097Infrastructure => 'ആപ്ലിക്കേഷനുകളെ പിന്തുണയ്ക്കുന്ന കമ്പ്യൂട്ട്, നെറ്റ്വർക്ക്, സ്റ്റോറേജ് റിസോഴ്സുകൾ.';

  @override
  String get gameHintWord098Fastconnect => 'സമർപ്പിത സ്വകാര്യ നെറ്റ്വർക്ക് കണക്ഷനുകൾക്കുള്ള Oracle Cloud സേവനം.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ഉപയോഗിക്കുന്ന വ്യവസായ-നിലവാര കണ്ടെയ്നർ റൺടൈം.';

  @override
  String get gameHintWord100Kubernetes => 'കണ്ടെയ്നർ ഓർക്കസ്ട്രേഷൻ പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord101Http => 'വെബ് റിസോഴ്സുകൾ അഭ്യർത്ഥിക്കാൻ ഉപയോഗിക്കുന്ന ആപ്ലിക്കേഷൻ പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord102Https => 'വെബ് അഭ്യർത്ഥന പ്രോട്ടോക്കോളിന്റെ എൻക്രിപ്റ്റ് ചെയ്ത പതിപ്പ്.';

  @override
  String get gameHintWord103Tcp => 'വിശ്വസനീയവും ക്രമീകൃതവുമായ വിതരണം നൽകുന്ന ട്രാൻസ്പോർട്ട് പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord104Udp => 'ഡാറ്റാഗ്രാമുകൾക്കായി ഉപയോഗിക്കുന്ന കണക്ഷൻരഹിത ട്രാൻസ്പോർട്ട് പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord105Tls => 'നെറ്റ്വർക്കിലൂടെ കൈമാറുന്ന ഡാറ്റ സുരക്ഷിതമാക്കുന്ന പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord106Ssl => 'ആധുനിക ട്രാൻസ്പോർട്ട് സുരക്ഷാ പ്രോട്ടോക്കോളിന്റെ പഴയ മുൻഗാമി.';

  @override
  String get gameHintWord107Ftp => 'ഫയലുകൾ കൈമാറാനുള്ള പരമ്പരാഗത പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord108Sftp => 'സുരക്ഷിത ഷെൽ കണക്ഷനിലൂടെ കൊണ്ടുപോകുന്ന ഫയൽ ട്രാൻസ്ഫർ പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord109Smtp => 'സെർവറുകൾക്കിടയിൽ ഇമെയിൽ അയയ്ക്കാൻ ഉപയോഗിക്കുന്ന പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord110Snmp => 'നെറ്റ്വർക്ക് ഉപകരണങ്ങൾ നിയന്ത്രിക്കാനും നിരീക്ഷിക്കാനും ഉപയോഗിക്കുന്ന പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord111Icmp => 'നെറ്റ്വർക്ക് പിശകുകളും പിംഗ് സന്ദേശങ്ങളും വഹിക്കുന്ന പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord112Arp => 'ലോക്കൽ IPv4 വിലാസങ്ങളെ ഹാർഡ്വെയർ വിലാസങ്ങളാക്കി മാറ്റുന്നു.';

  @override
  String get gameHintWord113Dhcp => 'നെറ്റ്വർക്ക് ക്ലയന്റുകൾക്ക് IP കോൺഫിഗറേഷൻ സ്വയമേവ നൽകുന്നു.';

  @override
  String get gameHintWord114Nat => 'പാക്കറ്റുകൾ ഗേറ്റ്വേ കടക്കുമ്പോൾ നെറ്റ്വർക്ക് വിലാസങ്ങൾ മാറ്റിയെഴുതുന്നു.';

  @override
  String get gameHintWord115Vpn => 'വിദൂര നെറ്റ്വർക്കുകളെയോ ഉപയോക്താക്കളെയോ ബന്ധിപ്പിക്കുന്ന എൻക്രിപ്റ്റ് ചെയ്ത ടണൽ.';

  @override
  String get gameHintWord116Vpc => 'പബ്ലിക് ക്ലൗഡിലെ ഒറ്റപ്പെട്ട വെർച്വൽ നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord117Vlan => 'സ്വിച്ചഡ് നെറ്റ്വർക്കിന്റെ ലോജിക്കൽ വേർതിരിവ്.';

  @override
  String get gameHintWord118Wan => 'വിശാലമായ ഭൂപ്രദേശത്തിൽ വ്യാപിച്ചുകിടക്കുന്ന നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord119Lan => 'ഒരു പ്രാദേശിക പ്രദേശത്തെ ഉപകരണങ്ങളെ ബന്ധിപ്പിക്കുന്ന നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord120Cdn => 'വിതരണം ചെയ്യുന്ന ഉള്ളടക്കം കാഷെ ചെയ്യുന്ന വിതരണ എഡ്ജ് നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord121Cidr => 'സ്ലാഷ് നീളം ഉപയോഗിച്ച് നെറ്റ്വർക്ക് പ്രിഫിക്സ് സൂചിപ്പിക്കുന്ന രീതി.';

  @override
  String get gameHintWord122Host => 'നെറ്റ്വർക്കുമായി ബന്ധിപ്പിച്ച കമ്പ്യൂട്ടർ അല്ലെങ്കിൽ എൻഡ്പോയിന്റ്.';

  @override
  String get gameHintWord123Hostname => 'നെറ്റ്വർക്ക് ചെയ്ത മെഷീന് നൽകിയ മനുഷ്യന് വായിക്കാവുന്ന പേര്.';

  @override
  String get gameHintWord124Domain => 'ഇന്റർനെറ്റ് നാമകരണ സംവിധാനത്തിലെ പേരുള്ള ഭരണപരമായ മേഖല.';

  @override
  String get gameHintWord125Zone => 'DNS നെയിംസ്പേസിന്റെ ഭരണപരമായ ഭാഗം.';

  @override
  String get gameHintWord126Record => 'DNS ഡാറ്റാബേസിലെ ഒരു വ്യക്തിഗത എൻട്രി.';

  @override
  String get gameHintWord127Aaaa => 'ഒരു പേരിനെ IPv6 വിലാസത്തിലേക്ക് മാറ്റുന്ന DNS റെക്കോർഡ് തരം.';

  @override
  String get gameHintWord128Ptr => 'റിവേഴ്സ് വിലാസ അന്വേഷണങ്ങൾക്ക് ഉപയോഗിക്കുന്ന DNS റെക്കോർഡ് തരം.';

  @override
  String get gameHintWord129Txt => 'ടെക്സ്റ്റ് മൂല്യങ്ങൾ സംഭരിക്കുന്ന DNS റെക്കോർഡ് തരം.';

  @override
  String get gameHintWord130Cname => 'ഒരു പേരിനെ മറ്റൊന്നിന്റെ അപരനാമമാക്കുന്ന DNS റെക്കോർഡ്.';

  @override
  String get gameHintWord131Route => 'പാക്കറ്റുകളെ ലക്ഷ്യസ്ഥാനത്തേക്ക് നയിക്കുന്ന പാതയുടെ എൻട്രി.';

  @override
  String get gameHintWord132Routing => 'നെറ്റ്വർക്കുകൾക്കിടയിലെ ട്രാഫിക്കിനുള്ള പാതകൾ തിരഞ്ഞെടുക്കുന്നത്.';

  @override
  String get gameHintWord133Packet => 'നെറ്റ്വർക്കിലൂടെ കൈമാറുന്ന ഡാറ്റയുടെ ഒരു യൂണിറ്റ്.';

  @override
  String get gameHintWord134Protocol => 'സിസ്റ്റങ്ങൾ തമ്മിലുള്ള ആശയവിനിമയത്തിന് സമ്മതിച്ച നിയമങ്ങൾ.';

  @override
  String get gameHintWord135Ack => 'ഡാറ്റ ലഭിച്ചതായി അംഗീകരിക്കുന്ന TCP ഫ്ലാഗ്.';

  @override
  String get gameHintWord136Bandwidth => 'ഒരു ആശയവിനിമയ ലിങ്കിന്റെ ശേഷി.';

  @override
  String get gameHintWord137Latency => 'ഒരു അഭ്യർത്ഥനയ്ക്കോ പാക്കറ്റിനോ പ്രതികരണം ലഭിക്കുന്നതിന് മുമ്പുള്ള കാലതാമസം.';

  @override
  String get gameHintWord138Throughput => 'ഒരു യൂണിറ്റ് സമയത്തിൽ പ്രോസസ്സ് ചെയ്യുന്ന ഉപയോഗപ്രദമായ ജോലിയുടെയോ ഡാറ്റയുടെയോ അളവ്.';

  @override
  String get gameHintWord139Mtu => 'ഫ്രാഗ്മെന്റേഷൻ ഇല്ലാതെ ഒരു ലിങ്കിന് കൈമാറാൻ കഴിയുന്ന ഏറ്റവും വലിയ പാക്കറ്റ് വലുപ്പം.';

  @override
  String get gameHintWord140Alpn => 'ആപ്ലിക്കേഷൻ-ലെയർ പ്രോട്ടോക്കോൾ ധാരണയിലെത്തുന്ന TLS എക്സ്റ്റൻഷൻ.';

  @override
  String get gameHintWord141Grep => 'ടെക്സ്റ്റ് വരികളിൽ പൊരുത്തപ്പെടുന്ന പാറ്റേൺ തിരയുന്നു.';

  @override
  String get gameHintWord142Sed => 'ടെക്സ്റ്റ് മാറ്റിസ്ഥാപിക്കലിന് സാധാരണയായി ഉപയോഗിക്കുന്ന സ്ട്രീം എഡിറ്റർ.';

  @override
  String get gameHintWord143Lscpu => 'പ്രോസസർ ആർക്കിടെക്ചറും കോർ വിവരങ്ങളും കാണിക്കുന്ന Linux കമാൻഡ്.';

  @override
  String get gameHintWord144Find => 'ഫയൽ വ്യവസ്ഥകൾ ഉപയോഗിച്ച് ഡയറക്ടറി ട്രീയിൽ തിരയുന്നു.';

  @override
  String get gameHintWord145Lsblk => 'ബ്ലോക്ക് ഉപകരണങ്ങളെയും അവയുടെ ബന്ധങ്ങളെയും പട്ടികപ്പെടുത്തുന്ന Linux കമാൻഡ്.';

  @override
  String get gameHintWord146Sort => 'ടെക്സ്റ്റ് വരികൾ ക്രമപ്പെടുത്തുന്നു.';

  @override
  String get gameHintWord147Uniq => 'തൊട്ടടുത്തുള്ള ഇരട്ട വരികൾ ഫിൽട്ടർ ചെയ്യുന്നു.';

  @override
  String get gameHintWord148Head => 'ഫയലിന്റെ തുടക്കം പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord149Tail => 'ഫയലിന്റെ അവസാനം പ്രിന്റ് ചെയ്യുന്നു; കൂട്ടിച്ചേർക്കുന്ന ലോഗുകൾ പിന്തുടരാനും കഴിയും.';

  @override
  String get gameHintWord150Cat => 'ഫയലുകൾ കൂട്ടിച്ചേർത്ത് ഉള്ളടക്കം പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord151Cut => 'വരികളിൽ നിന്ന് തിരഞ്ഞെടുത്ത ഫീൽഡുകളോ അക്ഷര കോളങ്ങളോ എടുക്കുന്നു.';

  @override
  String get gameHintWord152Tee => 'സ്റ്റാൻഡേർഡ് ഇൻപുട്ട് ഫയലുകളിലേക്കും സ്റ്റാൻഡേർഡ് ഔട്ട്പുട്ടിലേക്കും പകർത്തുന്നു.';

  @override
  String get gameHintWord153Echo => 'അതിന്റെ ആർഗ്യുമെന്റുകൾ സ്റ്റാൻഡേർഡ് ഔട്ട്പുട്ടിലേക്ക് എഴുതുന്നു.';

  @override
  String get gameHintWord154Printf => 'ഷെല്ലിൽ നിന്നോ പ്രോഗ്രാമിൽ നിന്നോ ഫോർമാറ്റ് ചെയ്ത ടെക്സ്റ്റ് പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord155Touch => 'ഫയൽ ടൈംസ്റ്റാമ്പുകൾ പുതുക്കുന്നു അല്ലെങ്കിൽ ശൂന്യമായ ഫയൽ സൃഷ്ടിക്കുന്നു.';

  @override
  String get gameHintWord156Mkdir => 'ഡയറക്ടറികൾ സൃഷ്ടിക്കുന്നു.';

  @override
  String get gameHintWord157Rmdir => 'ശൂന്യമായ ഡയറക്ടറികൾ നീക്കം ചെയ്യുന്നു.';

  @override
  String get gameHintWord158Chmod => 'Unix ഫയൽ അനുമതി ബിറ്റുകൾ മാറ്റുന്നു.';

  @override
  String get gameHintWord159Chown => 'ഫയലിന്റെ ഉടമസ്ഥത മാറ്റുന്നു.';

  @override
  String get gameHintWord160Chgrp => 'ഫയലിന്റെ ഗ്രൂപ്പ് ഉടമസ്ഥത മാറ്റുന്നു.';

  @override
  String get gameHintWord161Pwd => 'നിലവിലെ വർക്കിംഗ് ഡയറക്ടറി പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord162Apt => 'Debian അടിസ്ഥാനമാക്കിയ സിസ്റ്റങ്ങൾ ഉപയോഗിക്കുന്ന പാക്കേജ് മാനേജ്മെന്റ് ടൂൾ.';

  @override
  String get gameHintWord163Top => 'പ്രോസസ്സുകളുടെയും സിസ്റ്റം റിസോഴ്സ് ഉപയോഗത്തിന്റെയും ഇന്ററാക്ടീവ് പ്രദർശനം.';

  @override
  String get gameHintWord164Agent => 'ഹോസ്റ്റിൽ ജോലി നിർവഹിക്കുകയോ റിപ്പോർട്ട് ചെയ്യുകയോ ചെയ്യുന്ന സോഫ്റ്റ്വെയർ ഘടകം.';

  @override
  String get gameHintWord165Kill => 'ഐഡന്റിഫയർ ഉപയോഗിച്ച് ഒരു പ്രോസസ്സിലേക്ക് സിഗ്നൽ അയയ്ക്കുന്നു.';

  @override
  String get gameHintWord166Signal => 'ഓപ്പറേറ്റിംഗ് സിസ്റ്റം ഒരു പ്രോസസ്സിന് നൽകുന്ന അറിയിപ്പ്.';

  @override
  String get gameHintWord167Sigkill => 'ഒരു പ്രോസസ്സിനെ ഉടൻ അവസാനിപ്പിക്കുന്ന Unix സിഗ്നൽ.';

  @override
  String get gameHintWord168Nice => 'ക്രമീകരിച്ച ഷെഡ്യൂളിംഗ് മുൻഗണനയോടെ ഒരു പ്രോസസ്സ് ആരംഭിക്കുന്നു.';

  @override
  String get gameHintWord169Renice => 'പ്രവർത്തിക്കുന്ന പ്രോസസ്സിന്റെ ഷെഡ്യൂളിംഗ് മുൻഗണന മാറ്റുന്നു.';

  @override
  String get gameHintWord170Jobs => 'നിലവിലെ ഷെൽ നിയന്ത്രിക്കുന്ന ജോലികൾ പട്ടികപ്പെടുത്തുന്നു.';

  @override
  String get gameHintWord171Nohup => 'ഹാങ്അപ്പ് സിഗ്നലുകൾ അവഗണിച്ച് ഒരു കമാൻഡ് പ്രവർത്തിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord172Screen => 'വേർപെടുത്താവുന്ന സെഷനുകളെ പിന്തുണയ്ക്കുന്ന ടെർമിനൽ മൾട്ടിപ്ലെക്സർ.';

  @override
  String get gameHintWord173Uptime => 'ഒരു സിസ്റ്റം എത്ര നേരമായി പ്രവർത്തിക്കുന്നു എന്ന് അറിയിക്കുന്നു.';

  @override
  String get gameHintWord174Uname => 'സിസ്റ്റം, കെർണൽ വിവരങ്ങൾ പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord175Whoami => 'ഫലപ്രദമായ നിലവിലെ ഉപയോക്തൃനാമം പ്രിന്റ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord176Umask => 'ഫയലുകൾ സൃഷ്ടിക്കുമ്പോൾ ഉപയോഗിക്കുന്ന അനുമതി മാസ്ക് സജ്ജമാക്കുന്നു.';

  @override
  String get gameHintWord177Usermod => 'നിലവിലുള്ള ഉപയോക്തൃ അക്കൗണ്ട് പരിഷ്കരിക്കുന്ന Linux കമാൻഡ്.';

  @override
  String get gameHintWord178Crontab => 'ഷെഡ്യൂൾ ചെയ്ത ആവർത്തന ഷെൽ ജോലികൾ എഡിറ്റ് ചെയ്യുകയോ പട്ടികപ്പെടുത്തുകയോ ചെയ്യുന്നു.';

  @override
  String get gameHintWord179Findmnt => 'മൗണ്ട് ചെയ്ത ഫയൽസിസ്റ്റം വിവരങ്ങൾ കാണിക്കുന്ന Linux കമാൻഡ്.';

  @override
  String get gameHintWord180Mount => 'ഫയൽസിസ്റ്റത്തെ ഡയറക്ടറി ട്രീയിലേക്ക് ഘടിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord181Sigterm => 'പ്രോസസ്സ് മാന്യമായി അവസാനിപ്പിക്കാൻ ആവശ്യപ്പെടുന്ന Unix സിഗ്നൽ.';

  @override
  String get gameHintWord182Fstab => 'മൗണ്ട് ചെയ്യേണ്ട ഫയൽസിസ്റ്റങ്ങളെ വിവരിക്കുന്ന സിസ്റ്റം പട്ടിക.';

  @override
  String get gameHintWord183Swap => 'ഫിസിക്കൽ മെമ്മറിക്ക് അനുബന്ധമായി ഉപയോഗിക്കുന്ന ഡിസ്ക് അടിസ്ഥാനമാക്കിയ സ്ഥലം.';

  @override
  String get gameHintWord184Tmpfs => 'വെർച്വൽ മെമ്മറി പിന്തുണയ്ക്കുന്ന താൽക്കാലിക ഫയൽസിസ്റ്റം.';

  @override
  String get gameHintWord185Proc => 'പ്രോസസ്സ്, കെർണൽ വിവരങ്ങൾ നൽകുന്ന Linux വെർച്വൽ ഫയൽസിസ്റ്റം.';

  @override
  String get gameHintWord186Syslog => 'സ്റ്റാൻഡേർഡ് ലോഗിംഗ് പ്രോട്ടോക്കോളും സന്ദേശ ഫോർമാറ്റും.';

  @override
  String get gameHintWord187Dmesg => 'കെർണൽ റിംഗ് ബഫറിലെ സന്ദേശങ്ങൾ കാണിക്കുന്നു.';

  @override
  String get gameHintWord188Free => 'ഉപയോഗിച്ചതും ലഭ്യമായതുമായ സിസ്റ്റം മെമ്മറി അറിയിക്കുന്നു.';

  @override
  String get gameHintWord189Stat => 'ഫയലിന്റെ വിശദമായ മെറ്റാഡാറ്റ കാണിക്കുന്നു.';

  @override
  String get gameHintWord190Lsof => 'തുറന്ന ഫയലുകളെയും അവ കൈവശം വച്ചിരിക്കുന്ന പ്രോസസ്സുകളെയും പട്ടികപ്പെടുത്തുന്നു.';

  @override
  String get gameHintWord191Netstat => 'നെറ്റ്വർക്ക് കണക്ഷനുകളും റൂട്ടിംഗ് വിവരങ്ങളും കാണിക്കുന്നു.';

  @override
  String get gameHintWord192Checksum => 'ഡാറ്റയിലെ മാറ്റമോ കേടുപാടോ കണ്ടെത്താൻ കണക്കാക്കുന്ന മൂല്യം.';

  @override
  String get gameHintWord193Ping => 'എക്കോ അഭ്യർത്ഥനകൾ ഉപയോഗിച്ച് നെറ്റ്വർക്ക് ലഭ്യത പരിശോധിക്കുന്നു.';

  @override
  String get gameHintWord194Traceroute => 'നെറ്റ്വർക്ക് ലക്ഷ്യസ്ഥാനത്തേക്കുള്ള ഇടക്കാല ഹോപ്പുകൾ കാണിക്കുന്നു.';

  @override
  String get gameHintWord195Resolver => 'പേര് അന്വേഷണങ്ങൾക്ക് ഉത്തരം കണ്ടെത്തുന്ന DNS ഘടകം.';

  @override
  String get gameHintWord196Nslookup => 'DNS പേരുകളും വിലാസങ്ങളും തിരയുന്നു.';

  @override
  String get gameHintWord197Telnet => 'എൻക്രിപ്ഷൻ ഇല്ലാത്ത പഴയ റിമോട്ട് ടെർമിനൽ പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord198Tftp => 'UDP അടിസ്ഥാനമാക്കിയ ലളിതമായ ഫയൽ ട്രാൻസ്ഫർ പ്രോട്ടോക്കോൾ.';

  @override
  String get gameHintWord199Daemon => 'Unix പോലുള്ള സിസ്റ്റങ്ങളിലെ പശ്ചാത്തല സേവന പ്രോസസ്സ്.';

  @override
  String get gameHintWord200Kernel => 'ഓപ്പറേറ്റിംഗ് സിസ്റ്റം റിസോഴ്സുകൾ നിയന്ത്രിക്കുന്ന പ്രധാന ഘടകം.';

  @override
  String get gameHintWord201Commit => 'വേർഷൻ കൺട്രോളിൽ രേഖപ്പെടുത്തിയ മാറ്റങ്ങളുടെ സ്നാപ്ഷോട്ട്.';

  @override
  String get gameHintWord202Branch => 'ഒരു വികസന ധാരയെ പ്രതിനിധീകരിക്കുന്ന മാറ്റാവുന്ന റഫറൻസ്.';

  @override
  String get gameHintWord203Merge => 'വ്യത്യസ്ത വികസന ധാരകളുടെ ചരിത്രങ്ങൾ സംയോജിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord204Rebase => 'വ്യത്യസ്തമായ ബേസ് കമ്മിറ്റിന് മുകളിൽ കമ്മിറ്റുകൾ വീണ്ടും പ്രയോഗിക്കുന്നു.';

  @override
  String get gameHintWord205Clone => 'റിമോട്ട് റിപ്പോസിറ്ററിയുടെ ലോക്കൽ പകർപ്പ് സൃഷ്ടിക്കുന്നു.';

  @override
  String get gameHintWord206Fetch => 'ലയിപ്പിക്കാതെ റിമോട്ട് ഒബ്ജക്റ്റുകളും റഫറൻസുകളും ഡൗൺലോഡ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord207Pull => 'മാറ്റങ്ങൾ ലഭ്യമാക്കി നിലവിലെ ബ്രാഞ്ചിൽ സംയോജിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord208Push => 'ലോക്കൽ കമ്മിറ്റുകൾ റിമോട്ട് റിപ്പോസിറ്ററിയിലേക്ക് അയയ്ക്കുന്നു.';

  @override
  String get gameHintWord209Stash => 'കമ്മിറ്റ് ചെയ്യാത്ത വർക്കിംഗ്-ട്രീ മാറ്റങ്ങൾ താൽക്കാലികമായി സംരക്ഷിക്കുന്നു.';

  @override
  String get gameHintWord210Revert => 'മറ്റൊരു കമ്മിറ്റിനെ ഇല്ലാതാക്കുന്ന ഒരു കമ്മിറ്റ് സൃഷ്ടിക്കുന്നു.';

  @override
  String get gameHintWord211Reset => 'Git റഫറൻസ് നീക്കുന്നു; ഇൻഡെക്സോ വർക്കിംഗ് ഫയലുകളോ പുനഃസജ്ജമാക്കാനും കഴിയും.';

  @override
  String get gameHintWord212Reflog => 'Git റഫറൻസുകളിലെ അപ്ഡേറ്റുകളുടെ ലോക്കൽ ചരിത്രം.';

  @override
  String get gameHintWord213Diff => 'പതിപ്പുകൾ അല്ലെങ്കിൽ ഫയലുകൾ തമ്മിലുള്ള വ്യത്യാസങ്ങൾ കാണിക്കുന്നു.';

  @override
  String get gameHintWord214Status => 'സ്റ്റേജ് ചെയ്ത, പരിഷ്കരിച്ച, ട്രാക്ക് ചെയ്യാത്ത ഫയലുകൾ അറിയിക്കുന്നു.';

  @override
  String get gameHintWord215Checkout => 'റിവിഷനുകൾ മാറ്റാനോ ഫയലുകൾ പുനഃസ്ഥാപിക്കാനോ ഉള്ള Git കമാൻഡ്.';

  @override
  String get gameHintWord216Tag => 'സാധാരണയായി ഒരു റിലീസ് അടയാളപ്പെടുത്തുന്ന പേരുള്ള റഫറൻസ്.';

  @override
  String get gameHintWord217Remote => 'മറ്റൊരു റിപ്പോസിറ്ററിയിലേക്കുള്ള പേരുള്ള കണക്ഷൻ.';

  @override
  String get gameHintWord218Origin => 'ക്ലോൺ ചെയ്ത റിപ്പോസിറ്ററി റിമോട്ടിന് നൽകുന്ന സ്ഥിര പേര്.';

  @override
  String get gameHintWord219Upstream => 'ലോക്കൽ ബ്രാഞ്ചുമായി ബന്ധപ്പെട്ട റിമോട്ട് ട്രാക്കിംഗ് ബ്രാഞ്ച്.';

  @override
  String get gameHintWord220Worktree => 'റിപ്പോസിറ്ററിയുമായി ബന്ധിപ്പിച്ച ചെക്ക്ഔട്ട് ചെയ്ത വർക്കിംഗ് ഡയറക്ടറി.';

  @override
  String get gameHintWord221Registry => 'കണ്ടെയ്നർ ഇമേജുകൾ സംഭരിക്കുകയും വിതരണം ചെയ്യുകയും ചെയ്യുന്ന സേവനം.';

  @override
  String get gameHintWord222Digest => 'കണ്ടെയ്നർ ഇമേജിനുള്ള ഉള്ളടക്ക അടിസ്ഥാനമാക്കിയ ഐഡന്റിഫയർ.';

  @override
  String get gameHintWord223Layer => 'കണ്ടെയ്നർ ഇമേജിന്റെ ഭാഗമാകുന്ന ഫയൽസിസ്റ്റം മാറ്റങ്ങൾ.';

  @override
  String get gameHintWord224Entrypoint => 'കണ്ടെയ്നറിന്റെ പ്രധാന എക്സിക്യൂട്ടബിൾ നിർവചിക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord225Cmd => 'സ്ഥിര കമാൻഡോ ആർഗ്യുമെന്റുകളോ വ്യക്തമാക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord226Workdir => 'വർക്കിംഗ് ഡയറക്ടറി സജ്ജമാക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord227Copy => 'ബിൽഡ്-കോൺടെക്സ്റ്റ് ഫയലുകൾ ഇമേജിലേക്ക് പകർത്തുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord228Add => 'ലോക്കൽ ആർക്കൈവുകൾ അൺപാക്ക് ചെയ്യാനും കഴിയുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord229Run => 'ബിൽഡ് സമയത്ത് കമാൻഡ് നടപ്പിലാക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord230Env => 'എൻവയോൺമെന്റ് വേരിയബിളുകൾ നിർവചിക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord231Arg => 'ബിൽഡ് സമയത്തെ വേരിയബിൾ പ്രഖ്യാപിക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord232Expose => 'കണ്ടെയ്നർ പോർട്ട് രേഖപ്പെടുത്തുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord233User => 'തുടർന്നുള്ള കമാൻഡുകൾക്കായി അക്കൗണ്ട് തിരഞ്ഞെടുക്കുന്ന Dockerfile നിർദ്ദേശം.';

  @override
  String get gameHintWord234Healthcheck => 'കണ്ടെയ്നറിന്റെ ആരോഗ്യം എങ്ങനെ പരിശോധിക്കണമെന്ന് വിവരിക്കുന്ന നിർദ്ദേശം.';

  @override
  String get gameHintWord235Shebang => 'പ്രവർത്തിപ്പിക്കേണ്ട ഇന്റർപ്രെറ്ററെ തിരിച്ചറിയുന്ന സ്ക്രിപ്റ്റിന്റെ ആദ്യ വരി.';

  @override
  String get gameHintWord236Compose => 'ഒന്നിലധികം കണ്ടെയ്നർ ആപ്ലിക്കേഷനുകൾ നിർവചിക്കാനും പ്രവർത്തിപ്പിക്കാനുമുള്ള Docker ടൂൾ.';

  @override
  String get gameHintWord237Bridge => 'ലോക്കൽ കണ്ടെയ്നർ നെറ്റ്വർക്കിംഗിനുള്ള സാധാരണ Docker നെറ്റ്വർക്ക് ഡ്രൈവർ.';

  @override
  String get gameHintWord238Overlay => 'ഒന്നിലധികം ഹോസ്റ്റുകളിലെ കണ്ടെയ്നറുകളിൽ വ്യാപിക്കുന്ന നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord239None => 'കണ്ടെയ്നർ നെറ്റ്വർക്കിംഗ് പ്രവർത്തനരഹിതമാക്കുന്ന Docker നെറ്റ്വർക്ക് ഡ്രൈവർ.';

  @override
  String get gameHintWord240Prune => 'ഉപയോഗിക്കാത്ത കണ്ടെയ്നർ റിസോഴ്സുകൾ നീക്കം ചെയ്യുന്നു.';

  @override
  String get gameHintWord241Replicaset => 'ആവശ്യമായ പോഡുകളുടെ എണ്ണം നിലനിർത്തുന്ന Kubernetes കൺട്രോളർ.';

  @override
  String get gameHintWord242Service => 'പോഡുകളിലേക്ക് സ്ഥിരമായ ആക്സസ് നൽകുന്ന Kubernetes അബ്സ്ട്രാക്ഷൻ.';

  @override
  String get gameHintWord243Endpoints => 'ഒരു Kubernetes സേവനത്തെ പിന്തുണയ്ക്കുന്ന വിലാസങ്ങൾ.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes റിസോഴ്സുകളെ ഗ്രൂപ്പ് ചെയ്യുന്ന ലോജിക്കൽ പരിധി.';

  @override
  String get gameHintWord245Node => 'Kubernetes പോഡുകൾ ഹോസ്റ്റ് ചെയ്യുന്ന വർക്കർ മെഷീൻ.';

  @override
  String get gameHintWord246Kubelet => 'പോഡ് നിർവഹണം നിയന്ത്രിക്കുന്ന ഓരോ നോഡിലെയും ഏജന്റ്.';

  @override
  String get gameHintWord247Pvc => 'സ്ഥിരമായ സംഭരണത്തിനുള്ള Kubernetes അഭ്യർത്ഥന.';

  @override
  String get gameHintWord248Apiserver => 'ക്ലസ്റ്റർ API നൽകുന്ന Kubernetes കൺട്രോൾ-പ്ലെയിൻ ഘടകം.';

  @override
  String get gameHintWord249Role => 'റോൾ-ബേസ്ഡ് ആക്സസ് കൺട്രോളിലെ പേരുള്ള അനുമതികളുടെ കൂട്ടം.';

  @override
  String get gameHintWord250Resourcequota => 'ഒരു നെയിംസ്പേസിലെ റിസോഴ്സ് ഉപഭോഗം പരിമിതപ്പെടുത്തുന്ന Kubernetes ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord251Selector => 'ലേബലുകൾ ഉപയോഗിച്ച് റിസോഴ്സുകളെ പൊരുത്തപ്പെടുത്തുന്ന എക്സ്പ്രഷൻ.';

  @override
  String get gameHintWord252Taint => 'അനുയോജ്യമായ ടോളറേഷൻ ഇല്ലാത്ത പോഡുകളെ അകറ്റുന്ന നോഡ് പ്രോപ്പർട്ടി.';

  @override
  String get gameHintWord253Toleration => 'ടെയിന്റ് ചെയ്ത നോഡിൽ ഷെഡ്യൂൾ ചെയ്യാൻ അനുവദിക്കുന്ന പോഡ് ക്രമീകരണം.';

  @override
  String get gameHintWord254Cordon => 'ഒരു Kubernetes നോഡിനെ ഷെഡ്യൂൾ ചെയ്യാനാവാത്തതായി അടയാളപ്പെടുത്തുന്നു.';

  @override
  String get gameHintWord255Uncordon => 'കോർഡൺ ചെയ്ത നോഡിനെ വീണ്ടും ഷെഡ്യൂൾ ചെയ്യാവുന്നതാക്കുന്നു.';

  @override
  String get gameHintWord256Drain => 'നോഡ് മെയിന്റനൻസിന് മുമ്പ് വർക്ക്ലോഡുകൾ സുരക്ഷിതമായി ഒഴിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord257Job => 'ഒരു ജോലി പൂർത്തിയാകുംവരെ പ്രവർത്തിപ്പിക്കുന്ന Kubernetes വർക്ക്ലോഡ്.';

  @override
  String get gameHintWord258Cronjob => 'ഷെഡ്യൂൾ അനുസരിച്ച് ജോബുകൾ സൃഷ്ടിക്കുന്ന Kubernetes വർക്ക്ലോഡ്.';

  @override
  String get gameHintWord259Readiness => 'കണ്ടെയ്നറിന് ട്രാഫിക് സ്വീകരിക്കാൻ കഴിയുമോ എന്ന് സൂചിപ്പിക്കുന്ന പ്രോബ്.';

  @override
  String get gameHintWord260Liveness => 'കണ്ടെയ്നർ റീസ്റ്റാർട്ട് ചെയ്യേണ്ടതുണ്ടോ എന്ന് സൂചിപ്പിക്കുന്ന പ്രോബ്.';

  @override
  String get gameHintWord261Canary => 'പുതിയ പതിപ്പ് ചെറിയൊരു ട്രാഫിക് വിഭാഗത്തിന് മാത്രം നൽകുന്ന റിലീസ് രീതി.';

  @override
  String get gameHintWord262Rolling => 'പ്രവർത്തിക്കുന്ന ഇൻസ്റ്റൻസുകൾ ക്രമേണ മാറ്റിസ്ഥാപിക്കുന്ന അപ്ഡേറ്റ് തന്ത്രം.';

  @override
  String get gameHintWord263Rollback => 'മുമ്പ് പ്രവർത്തിച്ചിരുന്ന ആപ്ലിക്കേഷൻ പതിപ്പ് പുനഃസ്ഥാപിക്കുന്നു.';

  @override
  String get gameHintWord264Rollout => 'പുതിയ ആപ്ലിക്കേഷൻ പതിപ്പിന്റെ ഘട്ടംഘട്ടമായ വിന്യാസം.';

  @override
  String get gameHintWord265Recreate => 'പകരമുള്ളവ ആരംഭിക്കുന്നതിന് മുമ്പ് പഴയ പോഡുകൾ നിർത്തുന്ന വിന്യാസ തന്ത്രം.';

  @override
  String get gameHintWord266Blue => 'ബ്ലൂ-ഗ്രീൻ റിലീസിലെ രണ്ട് എൻവയോൺമെന്റുകളിൽ ഒന്ന്.';

  @override
  String get gameHintWord267Green => 'ബ്ലൂ-ഗ്രീൻ റിലീസിലെ മറ്റൊരു എൻവയോൺമെന്റ്.';

  @override
  String get gameHintWord268Artifact => 'ബിൽഡ് പൈപ്പ്ലൈൻ നിർമ്മിക്കുന്ന പതിപ്പ് നൽകിയ ഔട്ട്പുട്ട്.';

  @override
  String get gameHintWord269Staging => 'റിലീസ് പരിശോധനയ്ക്ക് ഉപയോഗിക്കുന്ന പ്രൊഡക്ഷന് മുമ്പുള്ള എൻവയോൺമെന്റ്.';

  @override
  String get gameHintWord270Production => 'യഥാർത്ഥ അന്തിമ ഉപയോക്താക്കൾക്ക് സേവനം നൽകുന്ന എൻവയോൺമെന്റ്.';

  @override
  String get gameHintWord271Release => 'ഉപയോഗത്തിനായി വിതരണം ചെയ്ത സോഫ്റ്റ്വെയർ പതിപ്പ്.';

  @override
  String get gameHintWord272Version => 'ഒരു സോഫ്റ്റ്വെയർ റിവിഷനെ വേർതിരിച്ചറിയുന്ന ഐഡന്റിഫയർ.';

  @override
  String get gameHintWord273Revision => 'ഒരു ഡോക്യുമെന്റിന്റെയോ കോഡ്ബേസിന്റെയോ തിരിച്ചറിയാവുന്ന പതിപ്പ്.';

  @override
  String get gameHintWord274Webhook => 'ഒരു സംഭവം ഉണ്ടാകുമ്പോൾ അയയ്ക്കുന്ന HTTP അറിയിപ്പ്.';

  @override
  String get gameHintWord275Runbook => 'ഒരു സിസ്റ്റം പ്രവർത്തിപ്പിക്കാനോ വീണ്ടെടുക്കാനോ ഉള്ള രേഖപ്പെടുത്തിയ നടപടിക്രമം.';

  @override
  String get gameHintWord276Workspace => 'പ്രോജക്റ്റ് റിസോഴ്സുകൾ അടങ്ങിയ ഡയറക്ടറി അല്ലെങ്കിൽ പരിധി.';

  @override
  String get gameHintWord277Credentials => 'ഒരു സിസ്റ്റം ആക്സസ് ചെയ്യാൻ ഉപയോഗിക്കുന്ന ഓതന്റിക്കേഷൻ വിവരങ്ങൾ.';

  @override
  String get gameHintWord278Trigger => 'പൈപ്പ്ലൈൻ ആരംഭിക്കുന്ന സംഭവം അല്ലെങ്കിൽ വ്യവസ്ഥ.';

  @override
  String get gameHintWord279Parameter => 'ഒരു ജോലിക്കോ ഫംഗ്ഷനോ നൽകുന്ന പേരുള്ള ഇൻപുട്ട്.';

  @override
  String get gameHintWord280Access => 'ഓതറൈസേഷന് വിധേയമായി ഒരു റിസോഴ്സ് ഉപയോഗിക്കാനുള്ള കഴിവ്.';

  @override
  String get gameHintWord281Module => 'ഇൻഫ്രാസ്ട്രക്ചർ നിർവചനങ്ങളുടെ പുനരുപയോഗിക്കാവുന്ന കൂട്ടം.';

  @override
  String get gameHintWord282Provider => 'കോൺഫിഗറേഷനെ ബാഹ്യ API-യുമായി ബന്ധിപ്പിക്കുന്ന Terraform പ്ലഗിൻ.';

  @override
  String get gameHintWord283Resource => 'കോൺഫിഗറേഷനിൽ പ്രഖ്യാപിച്ച നിയന്ത്രിത ഇൻഫ്രാസ്ട്രക്ചർ ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord284Variable => 'കോൺഫിഗറേഷനോ കോഡോ ഉപയോഗിക്കുന്ന പേരുള്ള ഇൻപുട്ട് മൂല്യം.';

  @override
  String get gameHintWord285Output => 'ഇൻഫ്രാസ്ട്രക്ചർ കോൺഫിഗറേഷൻ തിരികെ നൽകുന്ന മൂല്യം.';

  @override
  String get gameHintWord286Tfstate => 'Terraform സ്റ്റേറ്റ് സ്നാപ്ഷോട്ടുകളുമായി ബന്ധപ്പെട്ട ഫയൽ സഫിക്സ്.';

  @override
  String get gameHintWord287Tfvars => 'Terraform ഇൻപുട്ട് വേരിയബിൾ മൂല്യങ്ങൾക്ക് ഉപയോഗിക്കുന്ന ഫയൽ സഫിക്സ്.';

  @override
  String get gameHintWord288Backend => 'സ്റ്റേറ്റ് സംഭരണം നിയന്ത്രിക്കുന്ന Terraform കോൺഫിഗറേഷൻ.';

  @override
  String get gameHintWord289Plan => 'നിർദ്ദേശിച്ച ഇൻഫ്രാസ്ട്രക്ചർ മാറ്റങ്ങളുടെ Terraform പ്രിവ്യൂ.';

  @override
  String get gameHintWord290Apply => 'നിർദ്ദേശിച്ച മാറ്റങ്ങൾ നടപ്പിലാക്കുന്ന Terraform പ്രവർത്തനം.';

  @override
  String get gameHintWord291Destroy => 'നിയന്ത്രിത ഇൻഫ്രാസ്ട്രക്ചർ നീക്കം ചെയ്യുന്ന Terraform പ്രവർത്തനം.';

  @override
  String get gameHintWord292Import => 'നിലവിലുള്ള റിസോഴ്സിനെ ഇൻഫ്രാസ്ട്രക്ചർ മാനേജ്മെന്റിന് കീഴിൽ കൊണ്ടുവരുന്നു.';

  @override
  String get gameHintWord293Refresh => 'രേഖപ്പെടുത്തിയ സ്റ്റേറ്റിനെ യഥാർത്ഥ ഇൻഫ്രാസ്ട്രക്ചറുമായി സമന്വയിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord294Validate => 'കോൺഫിഗറേഷൻ സിന്റാക്സും ആന്തരിക സ്ഥിരതയും പരിശോധിക്കുന്നു.';

  @override
  String get gameHintWord295Fmt => 'കാനോനിക്കൽ കോൺഫിഗറേഷൻ ഫോർമാറ്റിംഗ് പ്രയോഗിക്കുന്ന Terraform കമാൻഡ്.';

  @override
  String get gameHintWord296Init => 'Terraform പ്രൊവൈഡർമാരെയും വർക്കിംഗ് ഡയറക്ടറിയെയും ആരംഭിക്കുന്നു.';

  @override
  String get gameHintWord297Executor => 'ഒരു ബിൽഡ് പ്രവർത്തിപ്പിക്കാൻ കഴിയുന്ന Jenkins വർക്കർ സ്ലോട്ട്.';

  @override
  String get gameHintWord298Dependencies => 'ഒരു ഘടകത്തിന് മുമ്പ് മറ്റൊന്ന് ആവശ്യപ്പെടുന്ന ബന്ധങ്ങൾ.';

  @override
  String get gameHintWord299Drift => 'പ്രഖ്യാപിച്ചതും യഥാർത്ഥവുമായ ഇൻഫ്രാസ്ട്രക്ചർ സ്റ്റേറ്റ് തമ്മിലുള്ള വ്യത്യാസം.';

  @override
  String get gameHintWord300Locking => 'പങ്കിട്ട സ്റ്റേറ്റ് ഒരേസമയം മാറ്റുന്നതിൽ നിന്ന് എഴുത്തുകാരെ തടയുന്നു.';

  @override
  String get gameHintWord301Playbook => 'ഓട്ടോമേഷൻ പ്ലേകളും ടാസ്കുകളും വിവരിക്കുന്ന Ansible ഡോക്യുമെന്റ്.';

  @override
  String get gameHintWord302Inventory => 'നിയന്ത്രിത ഹോസ്റ്റുകളുടെയും ഗ്രൂപ്പുകളുടെയും Ansible ശേഖരം.';

  @override
  String get gameHintWord303Facts => 'നിയന്ത്രിത ഹോസ്റ്റുകളെക്കുറിച്ച് ശേഖരിച്ച സിസ്റ്റം വിവരങ്ങൾ.';

  @override
  String get gameHintWord304Task => 'ഓട്ടോമേഷനിലെ ഒരു വ്യക്തിഗത ജോലി യൂണിറ്റ്.';

  @override
  String get gameHintWord305Handler => 'മാറ്റം അറിയിക്കുമ്പോൾ നടപ്പിലാക്കുന്ന Ansible ടാസ്ക്.';

  @override
  String get gameHintWord306Notify => 'മാറ്റം വന്ന ടാസ്കിന് ശേഷം ഹാൻഡ്ലറെ ക്യൂവിൽ ചേർക്കുന്ന Ansible നിർദ്ദേശം.';

  @override
  String get gameHintWord307Become => 'പ്രിവിലേജ് ഉയർത്തൽ സാധ്യമാക്കുന്ന Ansible ക്രമീകരണം.';

  @override
  String get gameHintWord308Vault => 'സെൻസിറ്റീവ് ഓട്ടോമേഷൻ ഡാറ്റ എൻക്രിപ്റ്റ് ചെയ്യാനുള്ള Ansible സവിശേഷത.';

  @override
  String get gameHintWord309Register => 'ടാസ്ക് ഫലം ഒരു വേരിയബിളിൽ സംരക്ഷിക്കുന്ന Ansible നിർദ്ദേശം.';

  @override
  String get gameHintWord310When => 'ടാസ്ക് നിബന്ധനാധിഷ്ഠിതമായി നടപ്പിലാക്കുന്നത് നിയന്ത്രിക്കുന്ന Ansible കീവേഡ്.';

  @override
  String get gameHintWord311Loop => 'ഒരു ശേഖരത്തിന് മേൽ ഓട്ടോമേഷൻ ടാസ്ക് ആവർത്തിക്കുന്നു.';

  @override
  String get gameHintWord312Include => 'പുനരുപയോഗിക്കാവുന്ന ഓട്ടോമേഷൻ ഉള്ളടക്കം ഡൈനാമിക്കായി ലോഡ് ചെയ്യുന്നു.';

  @override
  String get gameHintWord313Tags => 'ഓട്ടോമേഷൻ ടാസ്കുകളുടെ ഉപഗണങ്ങൾ തിരഞ്ഞെടുക്കാൻ ഉപയോഗിക്കുന്ന ലേബലുകൾ.';

  @override
  String get gameHintWord314Template => 'വിന്യസിക്കുന്നതിന് മുമ്പ് വേരിയബിളുകൾ ഉപയോഗിച്ച് റെൻഡർ ചെയ്യുന്ന ഫയൽ.';

  @override
  String get gameHintWord315Jinja => 'Ansible ഉപയോഗിക്കുന്ന ടെംപ്ലേറ്റ് ഭാഷ.';

  @override
  String get gameHintWord316Abstraction => 'നടപ്പാക്കൽ വിശദാംശങ്ങൾ ലളിതമായ ഇന്റർഫേസിന് പിന്നിൽ മറയ്ക്കുന്നത്.';

  @override
  String get gameHintWord317Agile => 'ഫീഡ്ബാക്കിന് ഊന്നൽ നൽകുന്ന ആവർത്തന സോഫ്റ്റ്വെയർ വിതരണ രീതി.';

  @override
  String get gameHintWord318Puppet => 'ഡിക്ലറേറ്റീവ് മാനിഫെസ്റ്റുകൾ ഉപയോഗിക്കുന്ന കോൺഫിഗറേഷൻ മാനേജ്മെന്റ് ടൂൾ.';

  @override
  String get gameHintWord319Airflow => 'വർക്ക്ഫ്ലോ DAG-കൾ ഷെഡ്യൂൾ ചെയ്യാനും ഓർക്കസ്ട്രേറ്റ് ചെയ്യാനുമുള്ള പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord320Argo => 'GitOps ഡെലിവറി കൺട്രോളർ ഉൾപ്പെടുന്ന ക്ലൗഡ്-നേറ്റീവ് പ്രോജക്റ്റ് കുടുംബം.';

  @override
  String get gameHintWord321Rds => 'AWS മാനേജ്ഡ് റിലേഷണൽ ഡാറ്റാബേസ് സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord322Sqs => 'AWS മാനേജ്ഡ് മെസേജ് ക്യൂവിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord323Sns => 'AWS പബ്ലിഷ്-സബ്സ്ക്രൈബ് അറിയിപ്പ് സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord324Ses => 'AWS ഇമെയിൽ അയയ്ക്കൽ സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord325Iam => 'ക്ലൗഡ് ഐഡന്റിറ്റി, ആക്സസ് മാനേജ്മെന്റിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord326Kms => 'AWS എൻക്രിപ്ഷൻ കീ മാനേജ്മെന്റ് സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord327Waf => 'ആപ്ലിക്കേഷൻ-ലെയർ വെബ് അഭ്യർത്ഥനകൾ ഫിൽട്ടർ ചെയ്യുന്ന ഫയർവാൾ.';

  @override
  String get gameHintWord328Eks => 'AWS മാനേജ്ഡ് Kubernetes സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord329Ecs => 'AWS മാനേജ്ഡ് കണ്ടെയ്നർ ഓർക്കസ്ട്രേഷൻ സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord330Ecr => 'AWS കണ്ടെയ്നർ ഇമേജ് രജിസ്ട്രിയുടെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord331Aurora => 'MySQL, PostgreSQL എന്നിവയുമായി പൊരുത്തപ്പെടുന്ന AWS റിലേഷണൽ ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord332Redshift => 'AWS അനലിറ്റിക്സ് ഡാറ്റ വെയർഹൗസ്.';

  @override
  String get gameHintWord333Neptune => 'AWS മാനേജ്ഡ് ഗ്രാഫ് ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord334Elasticache => 'AWS മാനേജ്ഡ് ഇൻ-മെമ്മറി കാഷിംഗ് സേവനം.';

  @override
  String get gameHintWord335Athena => 'SQL ഉപയോഗിച്ച് ഒബ്ജക്റ്റ്-സ്റ്റോറേജ് ഡാറ്റ ക്വറി ചെയ്യുന്ന AWS സേവനം.';

  @override
  String get gameHintWord336Glue => 'AWS സെർവർലെസ് ഡാറ്റ ഇന്റഗ്രേഷൻ, ETL സേവനം.';

  @override
  String get gameHintWord337Emr => 'മാനേജ്ഡ് ബിഗ്-ഡാറ്റ പ്രോസസ്സിംഗ് ക്ലസ്റ്ററുകൾക്കുള്ള AWS പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord338Lambda => 'സെർവറുകൾ നിയന്ത്രിക്കാതെ ഫംഗ്ഷനുകൾ പ്രവർത്തിപ്പിക്കുന്ന AWS സേവനം.';

  @override
  String get gameHintWord339Cloudfront => 'AWS ആഗോള കണ്ടന്റ് ഡെലിവറി നെറ്റ്വർക്ക്.';

  @override
  String get gameHintWord340Cloudwatch => 'മെട്രിക്കുകളും ലോഗുകളും അലാറങ്ങളും ശേഖരിക്കുന്ന AWS സേവനം.';

  @override
  String get gameHintWord341Cloudshell => 'AWS ബ്രൗസർ അടിസ്ഥാനമാക്കിയ ഷെൽ എൻവയോൺമെന്റ്.';

  @override
  String get gameHintWord342Codecommit => 'AWS മാനേജ്ഡ് Git റിപ്പോസിറ്ററി സേവനം.';

  @override
  String get gameHintWord343Codebuild => 'സോഴ്സ് കംപൈൽ ചെയ്യുകയും ബിൽഡ് ടെസ്റ്റുകൾ പ്രവർത്തിപ്പിക്കുകയും ചെയ്യുന്ന AWS സേവനം.';

  @override
  String get gameHintWord344Codedeploy => 'AWS ഓട്ടോമേറ്റഡ് ആപ്ലിക്കേഷൻ വിന്യാസ സേവനം.';

  @override
  String get gameHintWord345Codepipeline => 'AWS തുടർച്ചയായ ഡെലിവറി പൈപ്പ്ലൈൻ സേവനം.';

  @override
  String get gameHintWord346Guardduty => 'AWS ബുദ്ധിപരമായ ഭീഷണി കണ്ടെത്തൽ സേവനം.';

  @override
  String get gameHintWord347Inspector => 'വർക്ക്ലോഡുകളിലെ ദുർബലതകൾ വിലയിരുത്തുന്ന AWS സേവനം.';

  @override
  String get gameHintWord348Macie => 'ഒബ്ജക്റ്റ് സ്റ്റോറേജിലെ സെൻസിറ്റീവ് ഡാറ്റ കണ്ടെത്തുന്ന AWS സേവനം.';

  @override
  String get gameHintWord349Shield => 'AWS മാനേജ്ഡ് DDoS സംരക്ഷണ സേവനം.';

  @override
  String get gameHintWord350Snowball => 'വലിയ ഡാറ്റ കൈമാറ്റങ്ങൾക്കുള്ള AWS ഫിസിക്കൽ ഉപകരണം.';

  @override
  String get gameHintWord351Snowcone => 'AWS ഓഫ്ലൈൻ ട്രാൻസ്ഫർ കുടുംബത്തിലെ ചെറിയ കരുത്തുറ്റ ഉപകരണം.';

  @override
  String get gameHintWord352Datasync => 'AWS ഓട്ടോമേറ്റഡ് ഓൺലൈൻ ഡാറ്റ ട്രാൻസ്ഫർ സേവനം.';

  @override
  String get gameHintWord353Msk => 'AWS മാനേജ്ഡ് Apache Kafka സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord354Backup => 'വീണ്ടെടുക്കലിനായി സൂക്ഷിക്കുന്ന ഡാറ്റയുടെ പകർപ്പ്.';

  @override
  String get gameHintWord355Transcribe => 'സംസാരം ടെക്സ്റ്റാക്കി മാറ്റുന്ന AWS സേവനം.';

  @override
  String get gameHintWord356Translate => 'ഭാഷകൾക്കിടയിൽ ടെക്സ്റ്റ് വിവർത്തനം ചെയ്യുന്ന AWS സേവനം.';

  @override
  String get gameHintWord357Rekognition => 'ചിത്രങ്ങളും വീഡിയോയും വിശകലനം ചെയ്യുന്ന AWS സേവനം.';

  @override
  String get gameHintWord358Comprehend => 'AWS പ്രകൃതിഭാഷാ വിശകലന സേവനം.';

  @override
  String get gameHintWord359Textract => 'ഡോക്യുമെന്റുകളിൽ നിന്ന് ടെക്സ്റ്റും പട്ടികകളും എടുക്കുന്ന AWS സേവനം.';

  @override
  String get gameHintWord360Sagemaker => 'മെഷീൻ ലേണിംഗ് മോഡലുകൾ നിർമ്മിക്കാനും വിന്യസിക്കാനുമുള്ള AWS പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord361Spanner => 'ആഗോളതലത്തിൽ വിതരണം ചെയ്ത Google Cloud റിലേഷണൽ ഡാറ്റാബേസ്.';

  @override
  String get gameHintWord362Pub => 'പബ്ലിഷ്-സബ്സ്ക്രൈബ് സന്ദേശ മാതൃകയിലെ പ്രസിദ്ധീകരണ ഭാഗം.';

  @override
  String get gameHintWord363Sub => 'പബ്ലിഷ്-സബ്സ്ക്രൈബ് സന്ദേശ മാതൃകയിലെ സബ്സ്ക്രൈബർ ഭാഗം.';

  @override
  String get gameHintWord364Functions => 'സെർവർലെസ് പ്ലാറ്റ്ഫോമുകൾ നൽകുന്ന ഇവന്റ്-ഡ്രിവൻ കോഡ് യൂണിറ്റുകൾ.';

  @override
  String get gameHintWord365App => 'സോഫ്റ്റ്വെയർ ആപ്ലിക്കേഷന്റെ ചുരുക്ക രൂപം.';

  @override
  String get gameHintWord366Engine => 'Compute Engine പോലുള്ള പേരുകളിലെ എക്സിക്യൂഷൻ ഘടകം.';

  @override
  String get gameHintWord367Compute => 'വെർച്വൽ മെഷീനുകളോ കണ്ടെയ്നറുകളോ നൽകുന്ന പ്രോസസ്സിംഗ് ശേഷി.';

  @override
  String get gameHintWord368Network => 'ഡാറ്റ കൈമാറുന്ന പരസ്പരം ബന്ധിപ്പിച്ച സിസ്റ്റങ്ങൾ.';

  @override
  String get gameHintWord369Security => 'ഭീഷണികളിൽ നിന്ന് സിസ്റ്റങ്ങളെയും വിവരങ്ങളെയും സംരക്ഷിക്കൽ.';

  @override
  String get gameHintWord370Identity => 'ആക്സസ് തീരുമാനങ്ങൾക്ക് ഉപയോഗിക്കുന്ന ഉപയോക്താവിന്റെയോ സേവനത്തിന്റെയോ പ്രതിനിധാനം.';

  @override
  String get gameHintWord371Monitoring => 'സിസ്റ്റത്തിന്റെ ആരോഗ്യവും പെരുമാറ്റവും തുടർച്ചയായി നിരീക്ഷിക്കൽ.';

  @override
  String get gameHintWord372Logging => 'ആപ്ലിക്കേഷൻ, സിസ്റ്റം സംഭവങ്ങൾ വെവ്വേറെ രേഖപ്പെടുത്തൽ.';

  @override
  String get gameHintWord373Trace => 'സേവന കോളുകളിലൂടെയുള്ള ഒരു അഭ്യർത്ഥനയുടെ പാതയുടെ രേഖ.';

  @override
  String get gameHintWord374Metrics => 'കാലക്രമേണ സിസ്റ്റത്തിന്റെ പെരുമാറ്റത്തിന്റെ സംഖ്യാ അളവുകൾ.';

  @override
  String get gameHintWord375Alert => 'നിരീക്ഷിക്കുന്ന അവസ്ഥയ്ക്ക് ശ്രദ്ധ ആവശ്യമാണെന്ന അറിയിപ്പ്.';

  @override
  String get gameHintWord376Billing => 'ഉപയോഗിച്ച ക്ലൗഡ് സേവനങ്ങൾ ട്രാക്ക് ചെയ്ത് നിരക്ക് ഈടാക്കൽ.';

  @override
  String get gameHintWord377Quota => 'ഉപയോഗിക്കാവുന്ന റിസോഴ്സിന്റെ അളവിലുള്ള പരിധി.';

  @override
  String get gameHintWord378Region => 'അവൈലബിലിറ്റി സോണുകൾ ഉൾക്കൊള്ളുന്ന ഭൗമശാസ്ത്രപരമായ ക്ലൗഡ് വിന്യാസ പ്രദേശം.';

  @override
  String get gameHintWord379Tenancy => 'ഉപഭോക്താക്കൾ ഇൻഫ്രാസ്ട്രക്ചർ എങ്ങനെ പങ്കിടുന്നു എന്ന് വിവരിക്കുന്ന ക്രമീകരണം.';

  @override
  String get gameHintWord380Regional => 'ഒരു ക്ലൗഡ് റീജിയനിൽ ഒതുങ്ങുന്ന റിസോഴ്സിനെ വിവരിക്കുന്നു.';

  @override
  String get gameHintWord381Cosmos => 'Azure-ന്റെ ആഗോള വിതരണ മൾട്ടി-മോഡൽ ഡാറ്റാബേസിന്റെ പേര്.';

  @override
  String get gameHintWord382Synapse => 'വെയർഹൗസിംഗും ഡാറ്റ പ്രോസസ്സിംഗും സംയോജിപ്പിക്കുന്ന Azure അനലിറ്റിക്സ് പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft ക്ലൗഡ്-നേറ്റീവ് സുരക്ഷാ വിവര, ഇവന്റ് പ്ലാറ്റ്ഫോം.';

  @override
  String get gameHintWord384Defender => 'ക്ലൗഡ് വർക്ക്ലോഡുകളെ സംരക്ഷിക്കുന്ന Microsoft സുരക്ഷാ ഉൽപ്പന്ന കുടുംബം.';

  @override
  String get gameHintWord385Entra => 'Azure AD ബ്രാൻഡിംഗിന് പകരമായ Microsoft ഐഡന്റിറ്റി ഉൽപ്പന്ന കുടുംബം.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager-ന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord387Arc => 'Azure-ന് പുറത്തുള്ള റിസോഴ്സുകളിലേക്ക് മാനേജ്മെന്റ് വ്യാപിപ്പിക്കുന്ന Azure സേവനം.';

  @override
  String get gameHintWord388Aks => 'Azure മാനേജ്ഡ് Kubernetes സേവനത്തിന്റെ ചുരുക്കരൂപം.';

  @override
  String get gameHintWord389Armor => 'Google Cloud വെബ് സംരക്ഷണ സേവന നാമത്തിന്റെ സഫിക്സ്.';

  @override
  String get gameHintWord390Blob => 'Azure ഒബ്ജക്റ്റ്-സ്റ്റോറേജ് ഡാറ്റ തരം.';

  @override
  String get gameHintWord391Files => 'മാനേജ്ഡ് നെറ്റ്വർക്ക് ഫയൽ ഷെയറുകൾ നൽകുന്ന Azure സേവനം.';

  @override
  String get gameHintWord392Disk => 'വെർച്വൽ മെഷീനിൽ ഘടിപ്പിച്ച ബ്ലോക്ക്-സ്റ്റോറേജ് ഉപകരണം.';

  @override
  String get gameHintWord393Function => 'ഫലം തിരികെ നൽകാൻ കഴിയുന്ന വിളിക്കാവുന്ന കോഡ് ബ്ലോക്ക്.';

  @override
  String get gameHintWord394Logic => 'വർക്ക്ഫ്ലോ ഇന്റഗ്രേഷനുള്ള Azure ആപ്പ് സേവന വിഭാഗം.';

  @override
  String get gameHintWord395Insights => 'Azure ആപ്ലിക്കേഷൻ ടെലിമെട്രി ഉൽപ്പന്ന നാമത്തിന്റെ സഫിക്സ്.';

  @override
  String get gameHintWord396Traffic => 'നെറ്റ്വർക്ക് എൻഡ്പോയിന്റുകൾക്കിടയിൽ ഒഴുകുന്ന ഡാറ്റ.';

  @override
  String get gameHintWord397Manager => 'Azure Resource-ന്റെ കൺട്രോൾ പ്ലെയിനിന്റെ ഉൽപ്പന്ന നാമ സഫിക്സ്.';

  @override
  String get gameHintWord398Bastion => 'സ്വകാര്യ ഹോസ്റ്റ് ആക്സസിനുള്ള മാനേജ്ഡ് അല്ലെങ്കിൽ ദൃഢീകരിച്ച പ്രവേശന പോയിന്റ്.';

  @override
  String get gameHintWord399Front => 'Azure ആഗോള പ്രവേശന-പോയിന്റ് സേവനമായ Front Door-ലെ ആദ്യ വാക്ക്.';

  @override
  String get gameHintWord400Door => 'Azure ആഗോള പ്രവേശന-പോയിന്റ് സേവനമായ Front Door-ലെ രണ്ടാമത്തെ വാക്ക്.';

  @override
  String get gameHintWord401Javascript => 'ബ്രൗസറുകളിലും Node റൺടൈമുകളിലും വ്യാപകമായി ഉപയോഗിക്കുന്ന പ്രോഗ്രാമിംഗ് ഭാഷ.';

  @override
  String get gameHintWord402Perl => 'ടെക്സ്റ്റ് പ്രോസസ്സിംഗിനും റെഗുലർ എക്സ്പ്രഷനുകൾക്കും പേരുകേട്ട സ്ക്രിപ്റ്റിംഗ് ഭാഷ.';

  @override
  String get gameHintWord403Powershell => 'Microsoft-ന്റെ ഒബ്ജക്റ്റ്-ഓറിയന്റഡ് ഷെല്ലും ഓട്ടോമേഷൻ ഭാഷയും.';

  @override
  String get gameHintWord404Java => 'Jenkins നടപ്പിലാക്കാൻ ഉപയോഗിച്ച JVM ഭാഷ.';

  @override
  String get gameHintWord405Json => 'ഒബ്ജക്റ്റുകളും അറേകളുമുള്ള ഭാരം കുറഞ്ഞ ഡാറ്റ ഫോർമാറ്റ്.';

  @override
  String get gameHintWord406Xml => 'നെസ്റ്റ് ചെയ്ത പേരുള്ള ടാഗുകൾ ഉപയോഗിക്കുന്ന മാർക്കപ്പ് ഫോർമാറ്റ്.';

  @override
  String get gameHintWord407Html => 'വെബ് പേജുകൾ ഘടനപ്പെടുത്താൻ ഉപയോഗിക്കുന്ന മാർക്കപ്പ് ഭാഷ.';

  @override
  String get gameHintWord408Css => 'വെബ് അവതരണം നിയന്ത്രിക്കുന്ന സ്റ്റൈൽഷീറ്റ് ഭാഷ.';

  @override
  String get gameHintWord409String => 'ടെക്സ്റ്റ് അക്ഷരങ്ങളുടെ ക്രമം.';

  @override
  String get gameHintWord410Array => 'ഇൻഡെക്സ് ചെയ്ത ഘടകങ്ങളുടെ ശേഖരം.';

  @override
  String get gameHintWord411Hash => 'Ruby, Perl എന്നിവയിലെ അസോസിയേറ്റീവ് കീ-വാല്യു ശേഖരം.';

  @override
  String get gameHintWord412Object => 'പ്രോപ്പർട്ടികളും പെരുമാറ്റവുമുള്ള റൺടൈം മൂല്യം.';

  @override
  String get gameHintWord413Class => 'ക്ലാസ് അടിസ്ഥാനമാക്കിയ ഭാഷകളിൽ ഒബ്ജക്റ്റുകൾ നിർമ്മിക്കാൻ ഉപയോഗിക്കുന്ന നിർവചനം.';

  @override
  String get gameHintWord414Method => 'ഒരു ഒബ്ജക്റ്റുമായോ ക്ലാസുമായോ ബന്ധപ്പെട്ട ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord415Interface => 'ഒരു ഘടകം പുറത്തുകാണിക്കുന്ന പ്രവർത്തനങ്ങൾ വിവരിക്കുന്ന കരാർ.';

  @override
  String get gameHintWord416Subclass => 'മറ്റൊരു ക്ലാസിൽ നിന്ന് ഉരുത്തിരിഞ്ഞ ക്ലാസ്.';

  @override
  String get gameHintWord417Super => 'പാരന്റ്-ക്ലാസ് പെരുമാറ്റം വിളിക്കാൻ ഉപയോഗിക്കുന്ന കീവേഡ്.';

  @override
  String get gameHintWord418Protected => 'ക്ലാസുമായി ബന്ധപ്പെട്ട സന്ദർഭങ്ങളിലേക്ക് ആക്സസ് പരിമിതപ്പെടുത്തുന്ന ദൃശ്യതാ നില.';

  @override
  String get gameHintWord419Exception => 'സാധാരണ കൺട്രോൾ ഫ്ലോയെ തടസ്സപ്പെടുത്തുന്ന റൺടൈം അവസ്ഥ.';

  @override
  String get gameHintWord420Regex => 'ടെക്സ്റ്റ് പൊരുത്തപ്പെടുത്താൻ ഉപയോഗിക്കുന്ന പാറ്റേൺ നൊട്ടേഷൻ.';

  @override
  String get gameHintWord421Lexical => 'സോഴ്സ്-കോഡ് ഘടന നിർണ്ണയിക്കുന്ന സ്കോപ്പിനെ വിവരിക്കുന്നു.';

  @override
  String get gameHintWord422Scalar => 'Perl-ലെ ഒറ്റ മൂല്യമുള്ള വേരിയബിൾ വിഭാഗം.';

  @override
  String get gameHintWord423Tuple => 'Python-ലെ മാറ്റാനാവാത്ത ക്രമീകൃത ശേഖരം.';

  @override
  String get gameHintWord424List => 'Python-ലെ മാറ്റാവുന്ന ക്രമീകൃത ശേഖരം.';

  @override
  String get gameHintWord425Dict => 'Python-ലെ ബിൽറ്റ്-ഇൻ മാപ്പിംഗ് തരത്തിന്റെ പേര്.';

  @override
  String get gameHintWord426Dictionary => 'കീകളെ അനുബന്ധ മൂല്യങ്ങളുമായി ബന്ധിപ്പിക്കുന്ന ശേഖരം.';

  @override
  String get gameHintWord427Set => 'വ്യത്യസ്ത മൂല്യങ്ങളുടെ ശേഖരം.';

  @override
  String get gameHintWord428Boolean => 'ശരിയോ തെറ്റോ പ്രതിനിധീകരിക്കുന്ന ഡാറ്റ തരം.';

  @override
  String get gameHintWord429Integer => 'പൂർണ്ണസംഖ്യകളെ പ്രതിനിധീകരിക്കുന്ന സംഖ്യാ തരം.';

  @override
  String get gameHintWord430Float => 'ഫ്ലോട്ടിംഗ്-പോയിന്റ് മൂല്യങ്ങളെ പ്രതിനിധീകരിക്കുന്ന സംഖ്യാ തരം.';

  @override
  String get gameHintWord431Double => 'ഇരട്ട-കൃത്യതയുള്ള ഫ്ലോട്ടിംഗ്-പോയിന്റ് തരം.';

  @override
  String get gameHintWord432Null => 'ഒരു ഒബ്ജക്റ്റിന്റെയോ ഫലത്തിന്റെയോ അഭാവത്തെ സൂചിപ്പിക്കുന്ന മൂല്യം.';

  @override
  String get gameHintWord433Undefined => 'നൽകാത്ത മൂല്യത്തിനുള്ള JavaScript മൂല്യം.';

  @override
  String get gameHintWord434Promise => 'അന്തിമമായ അസിൻക്രണസ് ഫലത്തെ പ്രതിനിധീകരിക്കുന്ന JavaScript ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord435Async => 'അസിൻക്രണസ് ഫംഗ്ഷനെ അടയാളപ്പെടുത്തുന്ന കീവേഡ്.';

  @override
  String get gameHintWord436Await => 'അസിൻക്രണസ് ഫലത്തിനായി കാത്തിരിക്കുന്ന കീവേഡ്.';

  @override
  String get gameHintWord437Callback => 'മറ്റൊരു പ്രവർത്തനം വിളിക്കാനായി കൈമാറുന്ന ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord438Closure => 'ചുറ്റുമുള്ള ലെക്സിക്കൽ സ്കോപ്പിലേക്കുള്ള ആക്സസ് നിലനിർത്തുന്ന ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord439Generator => 'yield ചെയ്ത മൂല്യങ്ങളിലൂടെ ക്രമം അലസമായി ഉൽപ്പാദിപ്പിക്കുന്ന ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord440Iterator => 'ഒരു ശേഖരത്തിലെ മൂല്യങ്ങളിലൂടെ മുന്നേറുന്ന ഒബ്ജക്റ്റ്.';

  @override
  String get gameHintWord441Print => 'ഒരു മൂല്യം ഔട്ട്പുട്ടിലേക്ക് എഴുതുന്ന സാധാരണ ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord442Input => 'സ്റ്റാൻഡേർഡ് ഇൻപുട്ടിൽ നിന്ന് ഒരു വരി വായിക്കുന്ന Python ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord443Open => 'ഫയൽ ഹാൻഡിൽ ലഭിക്കാൻ ഉപയോഗിക്കുന്ന ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord444Close => 'തുറന്ന ഫയലോ കണക്ഷനോ വിട്ടുകൊടുക്കുന്ന പ്രവർത്തനം.';

  @override
  String get gameHintWord445Read => 'സ്ട്രീമിൽ നിന്നോ ഫയലിൽ നിന്നോ ഡാറ്റ നേടുന്ന പ്രവർത്തനം.';

  @override
  String get gameHintWord446Write => 'സ്ട്രീമിലേക്കോ ഫയലിലേക്കോ ഡാറ്റ അയയ്ക്കുന്ന പ്രവർത്തനം.';

  @override
  String get gameHintWord447Append => 'ഒരു ശേഖരത്തിന്റെ അവസാനത്തിലേക്ക് ഇനം ചേർക്കുന്നു.';

  @override
  String get gameHintWord448Split => 'ഒരു ഡിലിമിറ്റർ ഉപയോഗിച്ച് ടെക്സ്റ്റിനെ ഉപസ്ട്രിംഗുകളായി വിഭജിക്കുന്നു.';

  @override
  String get gameHintWord449Join => 'ഒരു സെപ്പറേറ്റർ ഉപയോഗിച്ച് സ്ട്രിംഗുകളുടെ ക്രമം സംയോജിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord450Strip => 'Python സ്ട്രിംഗിന് ചുറ്റുമുള്ള ശൂന്യസ്ഥലം നീക്കം ചെയ്യുന്നു.';

  @override
  String get gameHintWord451Chomp => 'Perl അല്ലെങ്കിൽ Ruby-യിൽ അവസാനത്തെ റെക്കോർഡ് സെപ്പറേറ്റർ നീക്കം ചെയ്യുന്നു.';

  @override
  String get gameHintWord452Map => 'ഒരു ശേഖരത്തിലെ ഓരോ ഇനത്തിലും രൂപാന്തരം പ്രയോഗിക്കുന്നു.';

  @override
  String get gameHintWord453Filter => 'പ്രെഡിക്കേറ്റ് തൃപ്തിപ്പെടുത്തുന്ന ശേഖരത്തിലെ ഇനങ്ങൾ നിലനിർത്തുന്നു.';

  @override
  String get gameHintWord454Reduce => 'ഒരു ശേഖരത്തെ സഞ്ചിത ഫലമായി സംയോജിപ്പിക്കുന്നു.';

  @override
  String get gameHintWord455Range => 'പൂർണ്ണസംഖ്യകളുടെ ഗണിത ശ്രേണിയെ പ്രതിനിധീകരിക്കുന്ന Python തരം.';

  @override
  String get gameHintWord456Length => 'ഒരു ശേഖരത്തിന്റെ വലുപ്പം തിരികെ നൽകുന്ന പ്രോപ്പർട്ടി അല്ലെങ്കിൽ മെത്തേഡ്.';

  @override
  String get gameHintWord457Len => 'ശേഖരത്തിന്റെ വലുപ്പം തിരികെ നൽകുന്ന Python ബിൽറ്റ്-ഇൻ ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord458Type => 'ഒരു ഒബ്ജക്റ്റിന്റെ തരം തിരികെ നൽകുന്ന Python ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord459Isinstance => 'ഒരു തരം ശ്രേണിയിലെ അംഗത്വം പരിശോധിക്കുന്ന Python ഫംഗ്ഷൻ.';

  @override
  String get gameHintWord460Yield => 'ജനറേറ്ററിൽ നിന്ന് മൂല്യം ഉൽപ്പാദിപ്പിക്കുന്ന കീവേഡ്.';

  @override
  String get gameHintWord461Saas => 'സമ്പൂർണ്ണ സോഫ്റ്റ്വെയർ ആപ്ലിക്കേഷനുകൾ നൽകുന്ന ക്ലൗഡ് മാതൃക.';

  @override
  String get gameHintWord462Paas => 'മാനേജ്ഡ് ആപ്ലിക്കേഷൻ വികസന പ്ലാറ്റ്ഫോം നൽകുന്ന ക്ലൗഡ് മാതൃക.';

  @override
  String get gameHintWord463Iaas => 'വെർച്വൽ കമ്പ്യൂട്ട്, സ്റ്റോറേജ്, നെറ്റ്വർക്കിംഗ് എന്നിവ നൽകുന്ന ക്ലൗഡ് മാതൃക.';

  @override
  String get gameHintWord464Hybrid => 'സ്വകാര്യ, പൊതു ഇൻഫ്രാസ്ട്രക്ചർ സംയോജിപ്പിക്കുന്ന ക്ലൗഡ് സമീപനം.';

  @override
  String get gameHintWord465Archive => 'അപൂർവ്വമായി ഉപയോഗിക്കുന്ന ഡാറ്റയുടെ ദീർഘകാല സംഭരണം.';

  @override
  String get gameHintWord466Public => 'ഒന്നിലധികം ഉപഭോക്താക്കൾക്ക് സേവനങ്ങൾ നൽകുന്ന ക്ലൗഡ് ഉടമസ്ഥാവകാശ മാതൃക.';

  @override
  String get gameHintWord467Private => 'ഒരൊറ്റ സ്ഥാപനത്തിന് മാത്രമായുള്ള ക്ലൗഡ് മാതൃക.';

  @override
  String get gameHintWord468Scalability => 'റിസോഴ്സുകൾ ചേർത്ത് വർദ്ധിക്കുന്ന ലോഡ് കൈകാര്യം ചെയ്യാനുള്ള കഴിവ്.';

  @override
  String get gameHintWord469Availability => 'ആവശ്യമുള്ളപ്പോൾ ഒരു സേവനം എത്രത്തോളം ലഭ്യമായി തുടരുന്നു എന്നതിന്റെ അളവ്.';

  @override
  String get gameHintWord470Resilience => 'പരാജയങ്ങളെ അതിജീവിക്കാനും വീണ്ടെടുക്കാനുമുള്ള കഴിവ്.';

  @override
  String get gameHintWord471Redundancy => 'ഒറ്റ പരാജയ പോയിന്റുകൾ കുറയ്ക്കുന്ന ഇരട്ട ഘടകങ്ങൾ.';

  @override
  String get gameHintWord472Disaster => 'വീണ്ടെടുക്കൽ തന്ത്രത്തിലൂടെ പരിഹരിക്കുന്ന വലിയ തടസ്സം.';

  @override
  String get gameHintWord473Recovery => 'പരാജയത്തിന് ശേഷം സേവനമോ ഡാറ്റയോ പുനഃസ്ഥാപിക്കൽ.';

  @override
  String get gameHintWord474Replicate => 'ഡാറ്റയോ വർക്ക്ലോഡുകളോ മറ്റൊരു സ്ഥലത്തേക്ക് പകർത്തുക.';

  @override
  String get gameHintWord475Snapshotting => 'ഡാറ്റയുടെയോ സിസ്റ്റം സ്റ്റേറ്റിന്റെയോ നിശ്ചിത സമയത്തെ പകർപ്പുകൾ എടുക്കൽ.';

  @override
  String get gameHintWord476Restore => 'സംരക്ഷിച്ച പകർപ്പിൽ നിന്ന് ഡാറ്റ വീണ്ടെടുക്കുന്ന പ്രവർത്തനം.';

  @override
  String get gameHintWord477Residency => 'സംഭരിച്ച ഡാറ്റയുടെ ഭൗമശാസ്ത്രപരമായ സ്ഥാനം നിർവചിക്കുന്ന ആവശ്യകത.';

  @override
  String get gameHintWord478Compliance => 'ആവശ്യമായ ചട്ടങ്ങളും സംഘടനാ നിയന്ത്രണങ്ങളും പാലിക്കൽ.';

  @override
  String get gameHintWord479Governance => 'സാങ്കേതികവിദ്യ ഉപയോഗം നിയന്ത്രിക്കുന്ന നയങ്ങളും പ്രക്രിയകളും.';

  @override
  String get gameHintWord480Audit => 'രേഖപ്പെടുത്തിയ പ്രവർത്തനങ്ങളുടെയും പാലന തെളിവുകളുടെയും അവലോകനം.';

  @override
  String get gameHintWord481Token => 'ഓതറൈസേഷനെയോ ഐഡന്റിറ്റിയെയോ പ്രതിനിധീകരിക്കുന്ന ക്രെഡൻഷ്യൽ അല്ലെങ്കിൽ ചിഹ്നം.';

  @override
  String get gameHintWord482Oauth => 'ഡെലിഗേറ്റ് ചെയ്ത ആക്സസ് അനുവദിക്കുന്ന ഓതറൈസേഷൻ ചട്ടക്കൂട്.';

  @override
  String get gameHintWord483Saml => 'എന്റർപ്രൈസ് സിംഗിൾ സൈൻ-ഓണിന് സാധാരണയായി ഉപയോഗിക്കുന്ന XML അടിസ്ഥാനമാക്കിയ മാനദണ്ഡം.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell പൈപ്പ്ലൈനുകളിൽ ഉപയോഗിക്കുന്ന പ്രത്യേക കമാൻഡ്.';

  @override
  String get gameHintWord485Algorithm => 'ഒരു കമ്പ്യൂട്ടേഷണൽ പ്രശ്നം പരിഹരിക്കാനുള്ള നിർവചിച്ച ഘട്ടങ്ങളുടെ ക്രമം.';

  @override
  String get gameHintWord486Key => 'എൻക്രിപ്ഷൻ നിയന്ത്രിക്കാനോ സംഭരിച്ച ഡാറ്റ തിരിച്ചറിയാനോ ഉപയോഗിക്കുന്ന മൂല്യം.';

  @override
  String get gameHintWord487Alias => 'ഒരു ഷെൽ കമാൻഡിന്റെയോ റിസോഴ്സിന്റെയോ ബദൽ പേര്.';

  @override
  String get gameHintWord488Amend => 'ഏറ്റവും പുതിയ കമ്മിറ്റിനെ മാറ്റിസ്ഥാപിക്കുന്ന Git കമ്മിറ്റ് ഓപ്ഷൻ.';

  @override
  String get gameHintWord489Allsigned => 'ഒപ്പിട്ട സ്ക്രിപ്റ്റുകൾ ആവശ്യപ്പെടുന്ന PowerShell എക്സിക്യൂഷൻ പോളിസി.';

  @override
  String get gameHintWord490Remotesigned => 'ഡൗൺലോഡ് ചെയ്ത സ്ക്രിപ്റ്റുകൾക്ക് ഒപ്പ് ആവശ്യപ്പെടുന്ന PowerShell പോളിസി.';

  @override
  String get gameHintWord491Acl => 'ഉപയോക്താക്കൾക്കോ സിസ്റ്റങ്ങൾക്കോ ഉള്ള അനുമതികൾ നിർവചിക്കുന്ന പട്ടിക.';

  @override
  String get gameHintWord492Uid => 'Unix ഉപയോക്താവിന് നൽകിയ സംഖ്യാ ഐഡന്റിഫയർ.';

  @override
  String get gameHintWord493Setgid => 'എക്സിക്യൂഷനിലോ പാരമ്പര്യത്തിലോ ഗ്രൂപ്പ് ഐഡന്റിറ്റിയെ ബാധിക്കുന്ന അനുമതി ബിറ്റ്.';

  @override
  String get gameHintWord494Setfacl => 'ഫയൽ ആക്സസ് കൺട്രോൾ ലിസ്റ്റുകൾ സജ്ജമാക്കുന്ന Linux കമാൻഡ്.';

  @override
  String get gameHintWord495Isolation => 'വർക്ക്ലോഡുകൾ പരസ്പരം തടസ്സപ്പെടുത്താതിരിക്കാനുള്ള വേർതിരിവ്.';

  @override
  String get gameHintWord496Sighup => 'കോൺഫിഗറേഷൻ റീലോഡ് ആവശ്യപ്പെടാൻ പതിവായി ഉപയോഗിക്കുന്ന Unix ഹാങ്അപ്പ് സിഗ്നൽ.';

  @override
  String get gameHintWord497Sigint => 'സാധാരണയായി Control-C ഉപയോഗിച്ച് ഉണ്ടാക്കുന്ന Unix ഇന്ററപ്റ്റ് സിഗ്നൽ.';

  @override
  String get gameHintWord498Sigstop => 'അവസാനിപ്പിക്കാതെ ഒരു പ്രോസസ്സിനെ താൽക്കാലികമായി നിർത്തുന്ന Unix സിഗ്നൽ.';

  @override
  String get gameHintWord499Secrets => 'പാസ്വേഡുകൾ, ആക്സസ് കീകൾ പോലുള്ള സെൻസിറ്റീവ് മൂല്യങ്ങൾ.';

  @override
  String get gameHintWord500Secure => 'അനധികൃത ആക്സസിൽ നിന്ന് സംരക്ഷിക്കപ്പെട്ട കണക്ഷനെ വിവരിക്കുന്നു.';

  @override
  String get fontSettingsTitle => 'ഫോണ്ട്';

  @override
  String get fontChangeFont => 'ഫോണ്ട് മാറ്റുക';

  @override
  String get fontSystemDefault => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get fontPreview => 'പ്രിവ്യൂ';

  @override
  String get fontPreviewSample => 'ഓരോ ചോദ്യത്തിലൂടെയും DevOps പഠിക്കാം';

  @override
  String get fontSelected => 'തിരഞ്ഞെടുത്തത്';

  @override
  String get fontLatinOnlyNote => 'ഇഷ്‌ടാനുസൃത ഫോണ്ടുകൾ ലാറ്റിൻ അക്ഷരങ്ങൾക്ക് ബാധകമാണ്. മറ്റ് ലിപികൾ നിങ്ങളുടെ ഉപകരണത്തിന്റെ ഫോണ്ടിൽ തന്നെ തുടരും.';

  @override
  String get fontDescSystem => 'നിങ്ങളുടെ ഉപകരണത്തിലെ ബിൽറ്റ്-ഇൻ ഫോണ്ട്';

  @override
  String get fontDescGeometric => 'ജ്യാമിതീയ സാൻസ്-സെരിഫ്';

  @override
  String get fontDescGeometricRounded => 'ജ്യാമിതീയ ഉരുണ്ട സാൻസ്-സെരിഫ്';

  @override
  String get fontDescFriendly => 'സൗഹൃദപരമായ സാൻസ്-സെരിഫ്';

  @override
  String get fontDescCondensed => 'ഇടുങ്ങിയത്';

  @override
  String get fontDescRounded => 'ഉരുണ്ട സാൻസ്-സെരിഫ്';

  @override
  String get fontDescRoundedDisplay => 'ഉരുണ്ട ഡിസ്‌പ്ലേ';

  @override
  String gameScene3dScene(String value1) {
    return '3D രംഗം $value1';
  }
}
