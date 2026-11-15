// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTour => 'ઍપ માર્ગદર્શન';

  @override
  String get skipTour => 'માર્ગદર્શન છોડો';

  @override
  String get finishTour => 'માર્ગદર્શન પૂરું કરો';

  @override
  String tourStep(int current, int total) {
    return 'પગલું $current / $total';
  }

  @override
  String get tourMenuTitle => 'નેવિગેશન મેનૂ';

  @override
  String get tourSearch => 'સંબંધિત ક્વિઝ શ્રેણીઓ શોધવા માટે અહીં વિષય લખો.';

  @override
  String get tourCategory => 'મિશ્ર ક્વિઝ માટે DevOps પર ટૅપ કરો. અન્ય શ્રેણીઓમાં પ્રશ્નોના સેટ છે. પછી જોવા માટે પ્રશ્નો બુકમાર્ક કરો.';

  @override
  String get tourMenu => 'નેવિગેશન મેનૂ ખોલવા માટે આ બટન પર ટૅપ કરો.';

  @override
  String get tourLearning => 'કાર્ડ માટે શીખો ખોલો. કોઈપણ દિશામાં સ્વાઇપ કરો, શફલ કરો, આપમેળે બદલવાનું ચાલુ કરો અથવા કાર્ડ બુકમાર્ક કરો.';

  @override
  String get tourGames => 'રમતો રમીને પૉઇન્ટ મેળવો. લેવલવાળી રમતોમાં દરેક પૂરું લેવલ 100 પૉઇન્ટ આપે છે; સંકેતના 20 પૉઇન્ટ લાગે છે.';

  @override
  String get tourAchievements => 'તમારી સિદ્ધિઓ અહીં જુઓ. નવી સિદ્ધિઓ અને ઉપલબ્ધ થીમની જાણ પોપઅપમાં થાય છે.';

  @override
  String get tourSettings => 'ભાષા, થીમ અને અવાજ પસંદ કરો. બુકમાર્ક માટે સાચવેલો ડેટા અથવા આ માર્ગદર્શિકા ફરી જોવા ઍપ માર્ગદર્શન ખોલો.';

  @override
  String get achievementUnlocked => 'સિદ્ધિ અનલૉક થઈ!';

  @override
  String get themeUnlocked => 'નવી થીમ ઉપલબ્ધ છે!';

  @override
  String get themeUnlockedMessage => 'હવે તમે સેટિંગ્સ > થીમમાં આ થીમ પસંદ કરી શકો છો.';

  @override
  String get gameSounds => 'રમતના અવાજો';

  @override
  String get gameSoundsDescription => 'રમતો અને ક્વિઝ માટે ધ્વનિ અસરો. ઉપકરણનો અવાજ અને સાયલન્ટ મોડ તપાસો.';

  @override
  String get testSound => 'અવાજ તપાસો';

  @override
  String get soundSettingBusy => 'કૃપા કરીને રાહ જુઓ...';

  @override
  String get soundSettingError => 'અવાજનું સેટિંગ લોડ અથવા સાચવી શકાયું નથી. ફરી પ્રયાસ કરો.';

  @override
  String get soundPlaybackError => 'અવાજ વગાડી શકાયો નથી. ઉપકરણ અથવા બ્રાઉઝરના ઑડિયો સેટિંગ તપાસો.';

  @override
  String get saveData => 'સાચવેલો ડેટા';

  @override
  String get learningTranslationUnavailable => 'આ કાર્ડનો હજુ પસંદ કરેલી ભાષામાં અનુવાદ થયો નથી.';

  @override
  String get saveQuestion => 'પ્રશ્ન સાચવો';

  @override
  String defaultPortQuestion(String service) {
    return '$service નો ડિફૉલ્ટ પોર્ટ કયો છે?';
  }

  @override
  String get removeSavedItem => 'સાચવેલામાંથી દૂર કરો';

  @override
  String get noSavedData => 'હજુ કંઈ સાચવ્યું નથી. શીખવાના કાર્ડ અથવા ક્વિઝના પ્રશ્નો બુકમાર્ક કરો.';

  @override
  String get savedDataError => 'સાચવેલો ડેટા લોડ અથવા અપડેટ કરી શકાયો નથી. ફરી પ્રયાસ કરો.';

  @override
  String get savedItemUnavailable => 'આ સાચવેલી વસ્તુ હવે ઉપલબ્ધ નથી.';

  @override
  String get correctAnswer => 'સાચો જવાબ';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get certificates => 'પ્રમાણપત્રો';

  @override
  String get whatsNew => 'નવું શું છે';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get darkMode => 'ડાર્ક મોડ';

  @override
  String get lightMode => 'લાઇટ મોડ';

  @override
  String get language => 'ભાષા';

  @override
  String get selectLanguage => 'ભાષા પસંદ કરો';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'ક્વિઝ શરૂ કરો';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'શ્રેણી બદલો';

  @override
  String get dailyQuiz => 'દૈનિક ક્વિઝ';

  @override
  String get dailyQuizCompleted => 'દૈનિક ક્વિઝ પૂર્ણ';

  @override
  String get dailyQuizCompletedMessage => 'તમે આજની દૈનિક ક્વિઝ પૂર્ણ કરી છે. નવા પડકાર માટે આવતીકાલે પાછા આવો!';

  @override
  String get leaderboard => 'લીડરબોર્ડ';

  @override
  String get shareApp => 'ઍપ શેર કરો';

  @override
  String get rateApp => 'ઍપને રેટિંગ આપો';

  @override
  String get about => 'વિશે';

  @override
  String get ok => 'ઠીક છે';

  @override
  String get home => 'હોમ';

  @override
  String get games => 'રમતો';

  @override
  String get referAndEarn => 'મિત્રોને આમંત્રિત કરો અને કમાઓ';

  @override
  String get themes => 'થીમ્સ';

  @override
  String get version => 'આવૃત્તિ';

  @override
  String get developer => 'વિકાસકર્તા';

  @override
  String get contact => 'સંપર્ક';

  @override
  String get learning => 'અભ્યાસ';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'મારી સાથે જોડાઓ';

  @override
  String get aboutDescription => 'DevOps Quiz દ્વારા Linux, Docker, Kubernetes અને અન્ય DevOps વિષયો શીખો અને ઇન્ટરવ્યૂ તથા પ્રમાણપત્રોની તૈયારી કરો.';

  @override
  String get quizResult => 'ક્વિઝનું પરિણામ';

  @override
  String get outstanding => 'ઉત્તમ!';

  @override
  String get greatJob => 'શાબાશ!';

  @override
  String get goodEffort => 'સારો પ્રયાસ!';

  @override
  String get keepPracticing => 'અભ્યાસ ચાલુ રાખો!';

  @override
  String get dontGiveUp => 'હાર ન માનો!';

  @override
  String get shareMessage1 => 'મારો સ્કોર';

  @override
  String get shareMessage2 => 'DevOps ક્વિઝમાં!';

  @override
  String get downloadApp => 'ઍપ ડાઉનલોડ કરો:';

  @override
  String get score => 'સ્કોર';

  @override
  String get points => 'પોઇન્ટ્સ';

  @override
  String get percentage => 'ટકાવારી';

  @override
  String get bonus => 'બોનસ';

  @override
  String get perfectScoreBonus => 'સંપૂર્ણ સ્કોર બોનસ';

  @override
  String get shareScore => 'સ્કોર શેર કરો';

  @override
  String get restartQuiz => 'ક્વિઝ ફરી શરૂ કરો';

  @override
  String get backToCategories => 'શ્રેણીઓ પર પાછા જાઓ';

  @override
  String get greatProgress => 'શાબાશ! તમારી સારી પ્રગતિ થઈ રહી છે.';

  @override
  String get practiceMore => 'સારો પ્રયાસ! વધુ અભ્યાસથી તમારો સ્કોર વધશે.';

  @override
  String get keepLearning => 'શીખતા રહો અને ફરી પ્રયાસ કરો.';

  @override
  String get everyExpertStarted => 'દરેક નિષ્ણાત શરૂઆતમાં શીખનાર હતો. અભ્યાસ કરતા રહો!';

  @override
  String get quizInstructions => 'ક્વિઝની સૂચનાઓ';

  @override
  String get instruction1 => 'દરેક સેટમાં 25 પ્રશ્નો છે.';

  @override
  String get instruction2 => 'દરેક પ્રશ્ન માટે 30 સેકન્ડ છે.';

  @override
  String get instruction3 => 'લીલો રંગ = સાચો જવાબ.';

  @override
  String get instruction4 => 'લાલ રંગ = ખોટો જવાબ.';

  @override
  String get instruction5 => 'જવાબ બદલી શકાતો નથી.';

  @override
  String get instruction6 => 'પાછા બટન માત્ર સમીક્ષા માટે છે.';

  @override
  String get instruction7 => 'પૂર્ણ થયા પછી સ્કોર દેખાશે.';

  @override
  String get instruction8 => 'દરેક સાચા જવાબ માટે 10 પોઈન્ટ મળે છે.';

  @override
  String excellentPerformance(Object expert) {
    return 'ઉત્તમ પ્રદર્શન! તમે $expert છો.';
  }

  @override
  String get selectCategory => 'શ્રેણી પસંદ કરો';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'સેટ પસંદ કરો';

  @override
  String get set => 'સેટ';

  @override
  String get questions => 'પ્રશ્નો';

  @override
  String get noScoresYet => 'હજુ કોઈ સ્કોર નથી';

  @override
  String get pointsShort => 'પોઇન્ટ્સ';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizમાં તમારું સ્વાગત છે';

  @override
  String hiUser(String name) {
    return 'હાય $name';
  }

  @override
  String get challengeMode => 'પડકાર મોડ';

  @override
  String get challenge => 'પડકાર';

  @override
  String get question => 'પ્રશ્ન';

  @override
  String get reward => 'પુરસ્કાર';

  @override
  String get survivalMode => 'સર્વાઇવલ મોડ';

  @override
  String get speedChallenge => 'ઝડપનો પડકાર';

  @override
  String get dailyChallenge => 'દૈનિક પડકાર';

  @override
  String get ultimateChallenge => 'અંતિમ પડકાર';

  @override
  String get timeLeft => 'બાકી સમય';

  @override
  String get completed => 'પૂર્ણ';

  @override
  String get locked => 'લૉક કરેલું';

  @override
  String get back => 'પાછા';

  @override
  String get next => 'આગળ';

  @override
  String get submit => 'સબમિટ કરો';

  @override
  String get achievements => 'સિદ્ધિઓ';

  @override
  String get streak => 'સતત દિવસો';

  @override
  String get days => 'દિવસો';

  @override
  String get tomorrowsReward => 'આવતીકાલનો પુરસ્કાર';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 મારો સ્કોર $score/$totalQuestions #DevOps Quiz!\n\n🏆 પોઇન્ટ્સ: $earnedPoints\n🔥 બોનસ: $bonusPoints\n📊 ટકાવારી: $percentage%\n\nઍપ ડાઉનલોડ કરો:';
  }

  @override
  String get gameUiSpinWheel => 'સ્પિન વ્હીલ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'સ્પિન કરો અને બોનસ પોઈન્ટ જીતો';

  @override
  String get gameUiScratchCard => 'સ્ક્રેચ કાર્ડ';

  @override
  String get gameUiScratchToRevealAReward => 'ઇનામ જાણવા માટે સ્ક્રેચ કરો';

  @override
  String get gameUiLuckySlots => 'લકી સ્લોટ્સ';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'સ્લોટ્સ ફેરવો અને પોઈન્ટ જીતો';

  @override
  String get gameUiMysteryDeal => 'મિસ્ટ્રી ડીલ';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'મિસ્ટ્રી બોક્સ પસંદ કરો અને જવાબ આપો';

  @override
  String get gameUiMemoryMatch => 'મેમરી મેચ';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps જોડીઓ મેળવો';

  @override
  String get gameUiWordGuess => 'શબ્દ અનુમાન';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'લેવલ્સ દ્વારા DevOps શબ્દોનું અનુમાન કરો';

  @override
  String get gameUiFindWords => 'શબ્દો શોધો';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ગ્રીડમાં છુપાયેલા DevOps શબ્દો શોધો';

  @override
  String get gameUiSpotTheDifference => 'તફાવત શોધો';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'બે ચિત્રિત દૃશ્યો વચ્ચે પાંચ ફેરફારો શોધો';

  @override
  String get gameUiJigsawPuzzle => 'જિગ્સો પઝલ';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'શેર કરેલા HD પ્રાણી અને પ્રકૃતિના ચિત્રો ફરીથી ગોઠવો';

  @override
  String get gameUiHighOrLow => 'હાઈ કે લો';

  @override
  String get gameUiBuildAStreak => 'સતત જીતની શ્રેણી બનાવો';

  @override
  String get gameUiTrueOrFalseBlitz => 'સાચું કે ખોટું બ્લિટ્ઝ';

  @override
  String get gameUiQuickAnswerQuiz => 'ઝડપી જવાબ ક્વિઝ';

  @override
  String get gameUiCommandMatch => 'કમાન્ડ મેચ';

  @override
  String get gameUiMatchCommandsToMeanings => 'કમાન્ડ્સને તેમના અર્થ સાથે મેળવો';

  @override
  String get gameUiPortMaster => 'પોર્ટ માસ્ટર';

  @override
  String get gameUiGuessDefaultPorts => 'ડિફૉલ્ટ પોર્ટ્સનું અનુમાન કરો';

  @override
  String get gameUiTicTacToe => 'ટિક-ટેક-ટો';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X શૂન્ય અને ચોકડી કમ્પ્યુટર સામે';

  @override
  String get gameUiConnectFour => 'કનેક્ટ ફોર';

  @override
  String get gameUiDropFourDiscs => 'ચાર ડિસ્ક નાખો';

  @override
  String get gameUiLudo => 'લુડો';

  @override
  String get gameUiRaceAgainstBots => 'બોટ્સ સામે રેસ કરો';

  @override
  String get gameUiChess => 'ચેસ';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'ચેસ બોર્ડ, કાયદેસર ચાલ, બે ખેલાડીઓ';

  @override
  String get gameUiSnakeAndLadders => 'સાપ સીડી';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'પાસાનું બોર્ડ, સાપ અને સીડી, બે ખેલાડીઓ';

  @override
  String get gameUiGames => 'ગેમ્સ 🎮';

  @override
  String get gameUiPlayEarn => 'રમો અને કમાઓ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ગેમ્સ રમો અને બોનસ પોઈન્ટ કમાઓ!';

  @override
  String get gameUiSearchGames => 'ગેમ્સ શોધો';

  @override
  String get gameUiClearSearch => 'શોધ સાફ કરો';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" સાથે કોઈ ગેમ મેળ ખાતી નથી';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'સ્પિન કરો અને બોનસ પોઈન્ટ જીતો.';

  @override
  String get gameUiScratchToRevealYourReward => 'તમારું ઇનામ જાણવા માટે સ્ક્રેચ કરો.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'સ્લોટ્સ ફેરવો અને પોઈન્ટ જીતો.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'મિસ્ટ્રી બોક્સ પસંદ કરો અને પોઈન્ટ જીતવા માટે સાચો જવાબ આપો.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'પોઈન્ટ કમાવા માટે DevOps જોડીઓ મેળવો.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 પ્રયાસોમાં DevOps શબ્દનું અનુમાન કરો.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ગ્રીડમાં છુપાયેલા DevOps શબ્દો શોધો.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 લેવલમાં DevOps શબ્દો શોધવા માટે સ્વાઇપ કરો.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'બે ચિત્રિત દૃશ્યો વચ્ચે પાંચ ફેરફારો શોધો.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'શેર કરેલા HD પ્રાણી અને પ્રકૃતિના ચિત્રો ફરીથી ગોઠવો.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'સતત જીતની શ્રેણી બનાવો અને તમારા પોઈન્ટ સુરક્ષિત કરો.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'ઝડપી જવાબો સાથે સમય સામે જીતો.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'સાચું કે ખોટું બ્લિટ્ઝ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'કમાન્ડ્સને તેઓ જે કરે છે તેની સાથે મેળવો.';

  @override
  String get gameUiCommandMatch670a76e => 'કમાન્ડ મેચ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 જીવન સાથે ડિફૉલ્ટ પોર્ટ્સનું અનુમાન કરો.';

  @override
  String get gameUiPortMaster8f5fd42 => 'પોર્ટ માસ્ટર 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'કમ્પ્યુટર સામે O/X રમો.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'જીતવા માટે એક હરોળમાં ચાર ડિસ્ક નાખો.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'ત્રણ બોટ્સ સામે તમારા મોહરાની રેસ કરો.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'કાયદેસર ચાલ સાથે લોકલ બે-ખેલાડીઓનું ચેસ.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'કાયદેસર બે-ખેલાડીઓની ચેસ મેચ રમો.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'બે-ખેલાડીઓની પાસાની બોર્ડ ગેમ.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 સુધી પહોંચવાની રેસ. સીડી ચડો અને સાપથી બચો.';

  @override
  String get gameUiPlay => 'રમો';

  @override
  String get gameUiWheelStopped => 'વ્હીલ અટક્યું!';

  @override
  String get gameUiYourRewardIs => 'તમારું ઇનામ છે';

  @override
  String get gameUiPOINTS => 'પોઈન્ટ્સ';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'આ ઇનામ મેળવવા માટે 1 ક્વિઝ પ્રશ્નનો સાચો જવાબ આપો.';

  @override
  String get gameUiWrongAnswerRewardLost => 'ખોટો જવાબ = ઇનામ ગુમાવ્યું.';

  @override
  String get gameUiAnswerQuestion => 'પ્રશ્નનો જવાબ આપો';

  @override
  String get gameUiSpinWheele449982 => '🎡 સ્પિન વ્હીલ';

  @override
  String get gameUiDailySpin => 'દૈનિક સ્પિન';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'વ્હીલ ફેરવો, પછી તમારું ઇનામ મેળવવા માટે એક પ્રશ્નનો જવાબ આપો!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'તમે આજનો સ્પિન પહેલેથી વાપરી લીધો છે.';

  @override
  String get gameUiSpinning => 'સ્પિન થઈ રહ્યું છે...';

  @override
  String get gameUiSPINNOW => 'હમણાં સ્પિન કરો';

  @override
  String get gameUiCOMEBACKTOMORROW => 'કાલે પાછા આવો';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'આજનું ઇનામ: ⭐ $value1 પોઈન્ટ્સ';
  }

  @override
  String get gameUiBackToGames => 'ગેમ્સ પર પાછા જાઓ';

  @override
  String get gameUiSPIN => 'સ્પિન';

  @override
  String get gameUiRewardRevealed => 'ઇનામ જાહેર થયું!';

  @override
  String get gameUiYouFound => 'તમને મળ્યું';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ સ્ક્રેચ કાર્ડ';

  @override
  String get gameUiDailyScratch => 'દૈનિક સ્ક્રેચ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'આજનું ઇનામ જાણવા માટે કાર્ડ સ્ક્રેચ કરો!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'તમે આજનું સ્ક્રેચ કાર્ડ પહેલેથી વાપરી લીધું છે.';

  @override
  String get gameUiAlreadyScratched => 'પહેલેથી સ્ક્રેચ કર્યું';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'બીજા ઇનામ માટે કાલે પાછા આવો.';

  @override
  String get gameUiYouRevealed => 'તમે જાહેર કર્યું';

  @override
  String get gameUiSCRATCHHERE => 'અહીં સ્ક્રેચ કરો  👆';

  @override
  String get gameUiJACKPOT777 => 'જેકપોટ 777!';

  @override
  String get gameUiLucky777 => 'લકી 777!';

  @override
  String get gameUiYourReward => 'તમારું ઇનામ';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 લકી સ્લોટ્સ';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'સ્લોટ્સ ફેરવો, પછી ઇનામ મેળવવા માટે એક પ્રશ્નનો જવાબ આપો!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'તમે આજે પહેલેથી રમી લીધું છે.';

  @override
  String get gameUiSPINNING => 'સ્પિન થઈ રહ્યું છે...';

  @override
  String get gameUiROLLNOW => 'હમણાં રોલ કરો';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 જેકપોટ! 777 પોઈન્ટ ઉપલબ્ધ છે!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'મિસ્ટરી ડીલની સ્થિતિ તપાસી શકાતી નથી: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'બોક્સ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 પોઈન્ટ';
  }

  @override
  String get gameUiStartQuestion => 'પ્રશ્ન શરૂ કરો';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 મિસ્ટરી ડીલ';

  @override
  String get gameUiMysteryDealCompleted => 'મિસ્ટરી ડીલ પૂર્ણ થઈ!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'તમે આજે મિસ્ટરી ડીલ પહેલેથી જ રમી ચૂક્યા છો.';

  @override
  String get gameUiTodayYouWon => 'આજે તમે જીત્યા';

  @override
  String get gameUiTodaySReward => 'આજનું ઇનામ';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 પોઈન્ટ';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 પોઈન્ટ ગુમાવ્યા';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'બીજા મિસ્ટરી બોક્સ માટે આવતીકાલે પાછા આવો!';

  @override
  String get gameUiChooseYourMysteryBox => 'તમારું મિસ્ટરી બોક્સ પસંદ કરો';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'દરેક બોક્સમાં 10 થી 1000 પોઈન્ટ વચ્ચેનું છુપાયેલું ઇનામ હોય છે.';

  @override
  String get gameUiPickOnlyOneBox => 'ફક્ત એક જ બોક્સ પસંદ કરો!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'બધા $value1 લેવલ પૂર્ણ!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'લેવલ $value1 પૂર્ણ!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 ચાલમાં પૂર્ણ.\nતમે $value2 પોઈન્ટ મેળવ્યા!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 ચાલમાં પૂર્ણ.\nઆ લેવલ પહેલેથી પૂર્ણ થયેલું હતું.';
  }

  @override
  String get gameUiNextLevel => 'આગલું લેવલ';

  @override
  String get gameUiDone => 'પૂર્ણ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'મેમરી મેચ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'બધા 100 લેવલ પૂર્ણ!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'તમે મેમરી મેચના દરેક લેવલ પૂર્ણ કર્યા. સરસ રમ્યા!';

  @override
  String get gameUiChooseLevel => 'લેવલ પસંદ કરો';

  @override
  String gameUiMoves(String value1) {
    return 'ચાલ: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'લેવલ $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 જોડી';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'લેવલ $value1 યાદ રાખો';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 મેળ ખાતી જોડીઓ શોધો';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz લોગો';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'પ્રકરણ 1 · બિલ્ડ પાઇપલાઇન પુનઃસ્થાપિત કરો';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'પ્રકરણ 2 · ક્લાઉડ પ્લેટફોર્મને સ્કેલ કરો';

  @override
  String get gameUiChapter3ProtectProduction => 'પ્રકરણ 3 · પ્રોડક્શનનું રક્ષણ કરો';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'સબમિટ કરવા માટે બાકીના બધા $value1 અક્ષરોનો ઉપયોગ કરો.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'બધા લેવલ પૂર્ણ!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'લેવલ $value1 પૂર્ણ!';
  }

  @override
  String get gameUiTryAgain => 'ફરી પ્રયાસ કરો';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'શબ્દ $value1 હતો. તમે $value2 પોઈન્ટ મેળવ્યા.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'શબ્દ $value1 હતો. $value3 સંકેત પછી તમે $value2 પોઈન્ટ મેળવ્યા.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'શબ્દ $value1 હતો. $value3 સંકેતો પછી તમે $value2 પોઈન્ટ મેળવ્યા.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'શબ્દ $value1 હતો. લેવલ $value2 હજુ તમારી રાહ જોઈ રહ્યું છે.';
  }

  @override
  String get gameUiFinish => 'સમાપ્ત';

  @override
  String get gameUiNextLevel254fd73 => 'આગલું લેવલ';

  @override
  String get gameUiRetryLevel => 'લેવલ ફરી અજમાવો';

  @override
  String get gameUiHowToPlay => 'કેવી રીતે રમવું';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'દરેક લેવલમાં એક DevOps શબ્દ હોય છે. પાંચ અક્ષરથી ટૂંકા શબ્દો કોઈ મફત અક્ષર વિના શરૂ થાય છે; લાંબા શબ્દો એક અક્ષર સાથે શરૂ થાય છે. જવાબ બનાવવા માટે અક્ષર રેકનો ઉપયોગ કરો અને Enter દબાવો. સંકેત બીજો અક્ષર બતાવે છે અને તમારા બેલેન્સમાંથી 20 પોઈન્ટ કાપે છે. દરેક પૂર્ણ થયેલું લેવલ 100 પોઈન્ટ અપાવે છે.';

  @override
  String get gameUiGotIt => 'સમજાયું';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'બધા $value1 લેવલ પૂર્ણ!';
  }

  @override
  String get gameUiEasy => 'સરળ';

  @override
  String get gameUiMedium => 'મધ્યમ';

  @override
  String get gameUiHard => 'મુશ્કેલ';

  @override
  String get gameUiHowToPlay13a6b22 => 'કેવી રીતે રમવું';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'લેવલ $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'ઇનામ $value1 પોઈન્ટ · વપરાયેલા સંકેતો $value2';
  }

  @override
  String get gameUiHint20Pts => 'સંકેત · −20 પોઈન્ટ';

  @override
  String get gameUiEnter => 'એન્ટર';

  @override
  String get gameUiDelete => 'કાઢી નાખો';

  @override
  String get gameUiDragThroughAWord => 'શબ્દ પર ખેંચો';

  @override
  String get gameUiDragThroughEachWord => 'દરેક શબ્દ પર ખેંચો';

  @override
  String get gameUiReleaseToSelect => 'પસંદ કરવા માટે છોડો';

  @override
  String gameUiFound(String value1) {
    return 'મળ્યું $value1';
  }

  @override
  String get gameUiNoWordThere => 'ત્યાં કોઈ શબ્દ નથી';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 પહેલેથી મળી ગયું';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 શોધો';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'બધા લેવલ પૂર્ણ!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'તમને દરેક શબ્દ મળ્યો અને તમે $value1 પોઈન્ટ મેળવ્યા.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'તમને દરેક શબ્દ મળ્યો. આ લેવલ પહેલેથી પૂર્ણ થયેલું હતું.';

  @override
  String get gameUiAll500LevelsComplete => 'બધા 500 લેવલ પૂર્ણ!';

  @override
  String get gameUiReviewLevels => 'લેવલની સમીક્ષા કરો';

  @override
  String gameUiLeft(String value1) {
    return '$value1 બાકી';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 પોઈન્ટ';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'પ્રગતિ સાચવી શકાઈ નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'તમે $value1 પોઈન્ટ મેળવ્યા!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'તમે આ ચિત્ર પહેલેથી પૂર્ણ કર્યું છે. ફરીથી રમવા પર વધારાના પોઈન્ટ મળશે નહીં.';

  @override
  String get gameUiYouCompletedEveryPicture => 'તમે દરેક ચિત્ર પૂર્ણ કર્યું!';

  @override
  String get gameUiLevels => 'લેવલ';

  @override
  String get gameUiPictureB => 'ચિત્ર B';

  @override
  String get gameUiPictureA => 'ચિત્ર A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ચિત્ર લોડ થઈ શક્યું નથી. ફરી પ્રયાસ કરો';

  @override
  String get gameUiResetZoom => 'ઝૂમ રીસેટ કરો';

  @override
  String get gameUiZoomBothPictures => 'બંને ચિત્રો ઝૂમ કરો';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'સંકેત · દરેક સંકેત દીઠ $value1 પોઈન્ટ';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'પ્રગતિ લોડ થઈ શકી નથી. ફરી પ્રયાસ કરો';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'લેવલ $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'બધા તફાવતો મળી ગયા!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count તફાવતો શોધો. કોઈપણ ચિત્રમાં દરેક પર ટેપ કરો.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ચૂકી ગયા: $value1  ·  સંકેતો: $value2 (−$value3 પોઈન્ટ)  ·  $value4 લેવલ પૂર્ણ';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'આગલું લેવલ: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'પઝલ $value1 પૂર્ણ!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ચિત્ર $value1 ચાલમાં પૂર્ણ. તમે $value2 પોઈન્ટ મેળવ્યા.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ચિત્ર $value1 ચાલમાં પૂર્ણ.';
  }

  @override
  String get gameUiNextPuzzle => 'આગલી પઝલ';

  @override
  String get gameUiAllPuzzlesComplete => 'બધી પઝલ પૂર્ણ';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'પઝલ ટુકડો $value1 / $value2, યોગ્ય રીતે મૂકાયેલ';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'પઝલ ટુકડો $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'પઝલ પસંદ કરો';

  @override
  String get gameUiShufflePieces => 'ટુકડા ફેરવો';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'પઝલનું ચિત્ર લોડ કરી શકાયું નથી.';

  @override
  String get gameUiPreviousPuzzle => 'પાછલી પઝલ';

  @override
  String gameUiPuzzle(String value1) {
    return 'પઝલ $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 ચાલ';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ટુકડાઓની અદલાબદલી કરવા તેમને ખેંચો, અથવા બે ટુકડા પર ટેપ કરો.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 પઝલ ઉકેલાઈ  ·  દરેકના $value3 પોઈન્ટ';
  }

  @override
  String get gameUiGameOver => 'ગેમ સમાપ્ત';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'સંખ્યા $value1 હતી.\nસળંગ જીત: $value2\nતમે $value3 પોઈન્ટ મેળવ્યા!\n\nબીજી તક માટે કાલે ફરી આવો!';
  }

  @override
  String get gameUiHigherOrLower => 'વધુ કે ઓછું 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'આજે પહેલેથી રમી લીધું!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'તમે $value1/$value2/$value3 ના રોજ રમ્યા હતા.\n\nનવી સળંગ જીત બનાવવા કાલે ફરી આવો!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'તમે આજે પહેલેથી રમી લીધું છે.\n\nબીજી તક માટે કાલે ફરી આવો!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 સળંગ જીત: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ પોઈન્ટ: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'આગલી સંખ્યા વધુ હશે કે ઓછી?';

  @override
  String get gameUiLower => 'ઓછું';

  @override
  String get gameUiHigher => 'વધુ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'સાચું કે ખોટું બ્લિટ્ઝ ⚡';

  @override
  String get gameUiTimeSUp => 'સમય પૂરો!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'સાચા જવાબ: $value1\nશ્રેષ્ઠ સળંગ જીત: $value2\n$value3તમે $value4 પોઈન્ટ મેળવ્યા!\n\nબીજા રાઉન્ડ માટે કાલે ફરી આવો!';
  }

  @override
  String get gameUiStreakBonus20 => 'સળંગ જીત બોનસ: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'બતાવેલો જવાબ સાચો છે કે ખોટો?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 શ્રેણીઓમાં $value1 પ્રશ્નો';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'તમારી પાસે $value1 સેકન્ડ છે. દરેક સાચા જવાબ માટે $value2 પોઈન્ટ મળે છે. ખોટા જવાબથી $value3 સેકન્ડ ઘટે છે. 5 ની સળંગ જીત પર +20 બોનસ મળે છે.';
  }

  @override
  String get gameUiRoundTimer => 'રાઉન્ડ ટાઈમર';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 સેકન્ડ';
  }

  @override
  String get gameUiStart => 'શરૂ કરો';

  @override
  String get gameUiTrue => 'સાચું';

  @override
  String get gameUiFalse => 'ખોટું';

  @override
  String get gameUiCommandMatch26b0e70 => 'કમાન્ડ મેળવો 🔗';

  @override
  String get gameUiAllMatched => 'બધું મેળ ખાય છે!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ભૂલો: $value1\nતમે $value2 પોઈન્ટ મેળવ્યા!\n\nનવા કમાન્ડ માટે કાલે ફરી આવો!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'રાઉન્ડ $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'કમાન્ડ પર ટેપ કરો, પછી તેના અર્થ પર ટેપ કરો.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'હવે મેળ ખાતા અર્થ પર ટેપ કરો.';

  @override
  String get gameUiPortMaster9c730cf => 'પોર્ટ માસ્ટર 🔌';

  @override
  String get gameUiPortMastera796b69 => 'પોર્ટ માસ્ટર!';

  @override
  String get gameUiOutOfLives => 'જીવ પૂરા થયા';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'સાચા જવાબ: $value1\nતમે $value2 પોઈન્ટ મેળવ્યા!\n\nબીજા રાઉન્ડ માટે કાલે ફરી આવો!';
  }

  @override
  String get gameUiYouEarned10Points => 'તમે 10 પોઈન્ટ મેળવ્યા!';

  @override
  String get gameUiYouWin => 'તમે જીત્યા!';

  @override
  String gameUiWins(String value1) {
    return '$value1 જીત્યા!';
  }

  @override
  String get gameUiXWins => 'X જીત્યો!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) જીત્યા!';
  }

  @override
  String get gameUiComputerWins => 'કમ્પ્યુટર જીત્યું';

  @override
  String get gameUiOWins => 'O જીત્યો!';

  @override
  String get gameUiPlayer2OWins => 'ખેલાડી 2 (O) જીત્યો!';

  @override
  String get gameUiItSADraw => 'ડ્રો થયો';

  @override
  String get gameUiYourTurn => 'તમારો વારો';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 નો વારો';
  }

  @override
  String get gameUiComputerIsThinking => 'કમ્પ્યુટર વિચારી રહ્યું છે';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'ખેલાડી $value1 ની ચાલ';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ની ચાલ';
  }

  @override
  String get gameUiPlayer2ToMove => 'ખેલાડી 2 ની ચાલ';

  @override
  String get gameUiNewRound => 'નવો રાઉન્ડ';

  @override
  String get gameUiVsComputer => 'કમ્પ્યુટર સામે';

  @override
  String get gameUi2Players => '2 ખેલાડીઓ';

  @override
  String get gameUiYou => 'તમે';

  @override
  String get gameUiDraws => 'ડ્રો';

  @override
  String get gameUiPlayer2 => 'ખેલાડી 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ખાનું $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'ફરી રમો';

  @override
  String get gameUiConnectFourWin20Points => 'કનેક્ટ ફોરમાં જીત: 20 પોઈન્ટ!';

  @override
  String get gameUiBotWins => 'બોટ જીત્યો!';

  @override
  String get gameUiRed => 'લાલ';

  @override
  String get gameUiYellow => 'પીળો';

  @override
  String get gameUiBoardFullDraw => 'બોર્ડ ભરાઈ ગયું — ડ્રો';

  @override
  String get gameUiBotIsThinking => 'બોટ વિચારી રહ્યો છે';

  @override
  String get gameUiBotTurn => 'બોટનો વારો';

  @override
  String get gameUiNewGame => 'નવી ગેમ';

  @override
  String get gameUiVsBot => 'બોટ સામે';

  @override
  String get gameUi2Player => '2 ખેલાડી';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'બોટ સામે રમો · ડિસ્ક નાખવા કૉલમ પર ટેપ કરો';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'બે ખેલાડીઓ · ડિસ્ક નાખવા કૉલમ પર ટેપ કરો';

  @override
  String gameUiColumn(String value1) {
    return 'કૉલમ $value1';
  }

  @override
  String get gameUiYouRed => 'તમે · લાલ';

  @override
  String get gameUiRedPlayer1 => 'લાલ · ખેલાડી 1';

  @override
  String get gameUiBotYellow => 'બોટ · પીળો';

  @override
  String get gameUiYellowPlayer2 => 'પીળો · ખેલાડી 2';

  @override
  String get gameUiLudoMatchStats => 'લુડો મેચના આંકડા';

  @override
  String get gameUiNoCompletedMatchesYet => 'હજુ સુધી કોઈ મેચ પૂર્ણ થઈ નથી.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'રમ્યા $value1  ·  જીત્યા $value2  ·  હાર્યા $value3';
  }

  @override
  String get gameUiClose => 'બંધ કરો';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'લુડો ચેમ્પિયન! તમે 50 પોઈન્ટ મેળવ્યા.';

  @override
  String get gameUiNewLudoGame => 'નવી લુડો ગેમ';

  @override
  String get gameUiBotOpponents => 'બોટ વિરોધીઓ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'નવી મેચ શરૂ કરવાથી તમારી સાચવેલી ગેમ બદલાઈ જશે.';

  @override
  String get gameUiCancel => 'રદ કરો';

  @override
  String get gameUiStartGame => 'ગેમ શરૂ કરો';

  @override
  String get gameUiPlayerColours => 'ખેલાડીના રંગો';

  @override
  String get gameUiApply => 'લાગુ કરો';

  @override
  String get gameUiMatchStats => 'મેચના આંકડા';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 ચેકમેટથી જીત્યા';
  }

  @override
  String get gameUiBlack => 'કાળો';

  @override
  String get gameUiWhite => 'સફેદ';

  @override
  String get gameUiComputerWinsByCheckmate => 'કમ્પ્યુટર ચેકમેટથી જીત્યું';

  @override
  String get gameUiYouWinByCheckmate => 'તમે ચેકમેટથી જીત્યા';

  @override
  String get gameUiDrawByStalemate => 'સ્ટેલમેટથી ડ્રો';

  @override
  String get gameUiDraw => 'ડ્રો';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · ચેક';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'ચેકમેટ! તમે 50 પોઈન્ટ મેળવ્યા.';

  @override
  String get gameUiStartANewGame => 'નવી રમત શરૂ કરવી છે?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'ખેલાડી મોડ બદલવાથી સાચવેલી મેચ બદલાઈ જશે.';

  @override
  String get gameUiComputer => 'કમ્પ્યુટર';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · સફેદ / ખેલાડી 2 · કાળો';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'તમે સફેદ છો · કમ્પ્યુટર કાળો છે';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (સફેદ) · કમ્પ્યુટર (કાળો)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'તમે કાળા છો · કમ્પ્યુટર સફેદ છે';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (કાળો) · કમ્પ્યુટર (સફેદ)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 પહેલા રોલ કરશે';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ફરી રોલ કરશે';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 રોલ કરશે';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'સાપસીડીમાં જીત: 100 પોઈન્ટ!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'ખેલાડીઓ બદલવાથી સાચવેલી રમત બદલાઈ જશે.';

  @override
  String get gameUiStartANewLevel => 'નવું લેવલ શરૂ કરવું છે?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'લેવલ બદલવાથી સાચવેલી રમત બદલાઈ જશે.';

  @override
  String get gameUiChangeLevel => 'લેવલ બદલો';

  @override
  String get gameUiPlayers => 'ખેલાડીઓ';

  @override
  String get gameUiPlayAgainstBot => 'બોટ સામે રમો';

  @override
  String get gameUi3Players => '3 ખેલાડીઓ';

  @override
  String get gameUi4Players => '4 ખેલાડીઓ';

  @override
  String get gameUiLevel1709305 => 'લેવલ';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'લેવલ $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 ખેલાડીઓ · લેવલ $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · રોલ';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 પર $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'પ્રશ્ન લોડ કરી શકાયો નથી: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'સાચો જવાબ!';

  @override
  String get gameUiWrongAnswer => 'ખોટો જવાબ';

  @override
  String get gameUiYouClaimedYourReward => 'તમે તમારું ઇનામ મેળવ્યું!';

  @override
  String get gameUiAddedToYourTotalPoints => 'તમારા કુલ પોઈન્ટમાં ઉમેરાયું.';

  @override
  String get gameUiTheCorrectAnswerWas => 'સાચો જવાબ હતો:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 પોઈન્ટનું ઇનામ ગુમાવ્યું.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'તમારા હાલના પોઈન્ટ કાપવામાં આવ્યા નથી.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'કાલે પાછા આવો અને ફરી પ્રયાસ કરો.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'પ્રશ્ન લોડ કરી શકાયો નથી.';

  @override
  String get gameUiYourReward677fa6e => 'તમારું ઇનામ';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 પોઈન્ટ';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'તે મેળવવા માટે સાચો જવાબ આપો!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'બીજા રાઉન્ડ માટે કાલે પાછા આવો.';

  @override
  String get gameUiGreen => 'લીલો';

  @override
  String get gameUiBlue => 'વાદળી';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 વિચારી રહ્યું છે';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: એક મહોરું પસંદ કરો';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: પાસા ફેંકો';
  }

  @override
  String gameUiDice(String value1) {
    return 'પાસો $value1';
  }

  @override
  String get gameUiRollDice => 'પાસા ફેંકો';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 મહોરું $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'ખેલાડી $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'બોટ $value1';
  }

  @override
  String get gameUiBot => 'બોટ';

  @override
  String get gameUiHintInsufficientPoints => 'સંકેતનો ઉપયોગ કરવા માટે તમને 20 પોઈન્ટ જોઈએ.';

  @override
  String get gameUiHintPurchaseFailed => 'સંકેત ખરીદી શકાયો નહીં. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get gameUiChessKing => 'રાજા';

  @override
  String get gameUiChessQueen => 'રાણી';

  @override
  String get gameUiChessRook => 'હાથી';

  @override
  String get gameUiChessBishop => 'ઊંટ';

  @override
  String get gameUiChessKnight => 'ઘોડો';

  @override
  String get gameUiChessPawn => 'પ્યાદું';

  @override
  String get gameUiChessEmpty => 'ખાલી';

  @override
  String get gameSceneLampAndFlowers => 'દીવો અને ફૂલો';

  @override
  String get gameSceneGardenFriends => 'બગીચાના મિત્રો';

  @override
  String get gameSceneUnderwaterExplorers => 'પાણીની અંદરના સંશોધકો';

  @override
  String get gameSceneOceanOrca => 'સમુદ્રી ઓર્કા';

  @override
  String get gameSceneFoxInTheMeadow => 'ઘાસના મેદાનમાં લોમડી';

  @override
  String get gameSceneYellowSubmarine => 'પીળી સબમરીન';

  @override
  String get gameSceneTurkeyInTheClearing => 'ખુલ્લી જગ્યામાં ટર્કી';

  @override
  String get gameSceneSafariWateringHole => 'સફારીનું પાણીનું તળાવ';

  @override
  String get gameSceneJungleCompanions => 'જંગલના સાથીઓ';

  @override
  String get gameSceneGoldenPuppyGarden => 'સોનેરી ગલૂડિયાનો બગીચો';

  @override
  String get gameSceneSeaTurtleReef => 'દરિયાઈ કાચબાની ખડક';

  @override
  String get gameSceneCoralReefFriends => 'પરવાળાની ખડકના મિત્રો';

  @override
  String get gameSceneSharedClownfish => 'સહિયારી ક્લાઉનફિશ';

  @override
  String get gameSceneLittleDinosaur => 'નાનું ડાયનાસોર';

  @override
  String get gameSceneSafariCompanions => 'સફારીના સાથીઓ';

  @override
  String get gameSceneSwirlingFlowers => 'ગોળ ફરતાં ફૂલો';

  @override
  String get gameSceneGardenKitten => 'બગીચાનું બિલાડીનું બચ્ચું';

  @override
  String get gameSceneBlueOcean => 'વાદળી સમુદ્ર';

  @override
  String get gameSceneCastlePrincess => 'કિલ્લાની રાજકુમારી';

  @override
  String get gameSceneRedCar => 'લાલ કાર';

  @override
  String get gameSceneGardenPuppy => 'બગીચાનું ગલૂડિયું';

  @override
  String get gameSceneSpaceExplorer => 'અવકાશ સંશોધક';

  @override
  String get gameSceneEnchantedReadingForest => 'જાદુઈ વાંચન જંગલ';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps અનંત ચક્ર';

  @override
  String get gameSceneAnsible => 'Ansible (એન્સિબલ)';

  @override
  String get gameSceneAws => 'એડબ્લ્યુએસ';

  @override
  String get gameSceneAzure => 'એઝ્યોર';

  @override
  String get gameSceneBashScripting => 'બેશ સ્ક્રિપ્ટિંગ';

  @override
  String get gameSceneDocker => 'ડોકર';

  @override
  String get gameSceneGcp => 'જીસીપી';

  @override
  String get gameSceneGit => 'ગિટ';

  @override
  String get gameSceneHybridCloud => 'હાઇબ્રિડ ક્લાઉડ';

  @override
  String get gameSceneIbmCloud => 'આઈબીએમ ક્લાઉડ';

  @override
  String get gameSceneJavascript => 'જાવાસ્ક્રિપ્ટ';

  @override
  String get gameSceneJenkins => 'જેનકિન્સ';

  @override
  String get gameSceneKubernetes => 'કુબરનેટિસ';

  @override
  String get gameSceneLinux => 'લિનક્સ';

  @override
  String get gameSceneMultiCloud => 'મલ્ટિ ક્લાઉડ';

  @override
  String get gameSceneNetworking => 'નેટવર્કિંગ';

  @override
  String get gameSceneOracleCloud => 'ઓરેકલ ક્લાઉડ';

  @override
  String get gameScenePerl => 'પર્લ';

  @override
  String get gameScenePowershell => 'પાવરશેલ';

  @override
  String get gameScenePython => 'પાયથન';

  @override
  String get gameSceneRuby => 'રૂબી';

  @override
  String get gameSceneTerraform => 'ટેરાફોર્મ';

  @override
  String get gameSceneWinterFestivalFair => 'શિયાળુ ઉત્સવ મેળો';

  @override
  String get gameSceneArmoredHeroCloseUp => 'બખ્તરધારી નાયકનું ક્લોઝ-અપ';

  @override
  String get gameSceneArmoredHeroInCrimson => 'કિરમજી રંગમાં બખ્તરધારી નાયક';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ઘેરા પ્લુમેરિયાના ફૂલો';

  @override
  String get gameSceneMangroveBoardwalk => 'મેંગ્રુવનો લાકડાનો રસ્તો';

  @override
  String get gameSceneTropicalPalmReflections => 'ઉષ્ણકટિબંધીય તાડના પ્રતિબિંબ';

  @override
  String get gameSceneMaskedFigureInShadow => 'પડછાયામાં નકાબધારી આકૃતિ';

  @override
  String get gameSceneElectricCompanionAtSunset => 'સૂર્યાસ્ત સમયે વિદ્યુત સાથી';

  @override
  String get gameSceneTrainerAndFireDragon => 'ટ્રેનર અને અગ્નિ ડ્રેગન';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'રત્નજડિત કુસ્તીનો માસ્ક';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'લાલ બ્રશસ્ટ્રોકમાં કુસ્તીબાજ';

  @override
  String get gameSceneWrestlingChampionSalute => 'કુસ્તી ચેમ્પિયનની સલામી';

  @override
  String get gameSceneMorningAtTheBakery => 'બેકરીમાં સવાર';

  @override
  String get gameSceneGreenhousePottingBench => 'ગ્રીનહાઉસનો કુંડા રોપવાનો બાંકડો';

  @override
  String get gameSceneHarborFishingBoat => 'બંદરની માછીમારી હોડી';

  @override
  String get gameSceneAtticObservatory => 'અટારીની વેધશાળા';

  @override
  String get gameSceneToyMakerSWorkshop => 'રમકડાં બનાવનારની કાર્યશાળા';

  @override
  String get gameSceneWoodlandCampsite => 'જંગલનું કેમ્પસાઇટ';

  @override
  String get gameSceneAfternoonMusicRoom => 'બપોરનો સંગીત ખંડ';

  @override
  String get gameSceneSeasideIceCreamStand => 'દરિયાકિનારે આઈસ્ક્રીમ સ્ટેન્ડ';

  @override
  String get gameSceneLibraryReadingNook => 'પુસ્તકાલયનો વાંચન ખૂણો';

  @override
  String get gameSceneSewingStudio => 'સિલાઈ સ્ટુડિયો';

  @override
  String get gameSceneFruitMarket => 'ફળ બજાર';

  @override
  String get gameSceneKoiCourtyard => 'કોઈ માછલીનું આંગણું';

  @override
  String get gameSceneArtistSAtelier => 'કલાકારનો સ્ટુડિયો';

  @override
  String get gameSceneMountainRailway => 'પહાડી રેલવે';

  @override
  String get gameSceneCountryKitchen => 'ગ્રામ્ય રસોડું';

  @override
  String get gameScenePotteryWorkshop => 'માટીકામની કાર્યશાળા';

  @override
  String get gameSceneBeachPicnic => 'દરિયાકિનારે પિકનિક';

  @override
  String get gameSceneFlowerShop => 'ફૂલોની દુકાન';

  @override
  String get gameSceneClockmakerSWorkshop => 'ઘડિયાળ બનાવનારની કાર્યશાળા';

  @override
  String get gameSceneRainyCafeTerrace => 'વરસાદી કાફેની અગાશી';

  @override
  String get gameSceneCastleHerbGarden => 'કિલ્લાનો ઔષધિ બગીચો';

  @override
  String get gameSceneClassroomArtCorner => 'વર્ગખંડનો કલા ખૂણો';

  @override
  String get gameSceneAquariumShop => 'માછલીઘરની દુકાન';

  @override
  String get gameSceneAutumnLeafCollection => 'પાનખરના પાંદડાંનો સંગ્રહ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'ચંદ્ર નીચે એકલું વૃક્ષ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ડાળી પર પાનખરનું ફૂલ';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'લીલાં પાંદડાં વચ્ચે લોમડી';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'કમળથી ઢંકાયેલા તળાવમાં નાવડી';

  @override
  String get gameSceneDewDropsOnALeaf => 'પાંદડા પર ઝાકળના ટીપાં';

  @override
  String get gameSceneStagInATurquoiseLake => 'પીરોજી તળાવમાં હરણ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'નારંગી ચંદ્ર નીચે સાયકલ';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'ખીણ ઉપર સફેદ વાઘ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'નીલા પાણીમાં બે વૃક્ષો';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'વફાદાર કૂતરા સાથે માછીમારી';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'પર્વતીય સરોવરની બાજુમાં લીલી ફૂલો';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'ગુલાબી નદીકિનારે હરણ';

  @override
  String get gameSceneTropicalHutAtSunset => 'સૂર્યાસ્ત સમયે ઉષ્ણકટિબંધીય ઝૂંપડી';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'આલ્પાઇન ખીણને નિહાળતું શિયાળ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'મંત્રમુગ્ધ ઉપવનમાંથી દેખાતો સૂર્યાસ્ત';

  @override
  String get learningControlTitle => 'DevOps શીખો';

  @override
  String get learningControlAllCategories => 'બધી શ્રેણીઓ';

  @override
  String get learningControlSearchCards => 'કાર્ડ શોધો';

  @override
  String get learningControlClearSearch => 'શોધ સાફ કરો';

  @override
  String get learningControlCategory => 'શ્રેણી';

  @override
  String get learningControlShowAll => 'બધા કાર્ડ બતાવો';

  @override
  String learningControlShowSaved(int count) {
    return 'સાચવેલા કાર્ડ બતાવો ($count)';
  }

  @override
  String get learningControlShuffleOff => 'શફલ બંધ કરો';

  @override
  String get learningControlShuffleOn => 'કાર્ડ શફલ કરો';

  @override
  String get learningControlAutoOff => 'ઑટો સ્વાઇપ બંધ કરો';

  @override
  String get learningControlAutoOn => 'દર 10 સેકન્ડે ઑટો સ્વાઇપ';

  @override
  String get learningControlNoSaved => 'હજુ કોઈ કાર્ડ સાચવ્યું નથી';

  @override
  String get learningControlNoMatches => 'મેળ ખાતા કાર્ડ નથી';

  @override
  String get learningControlResetFilters => 'ફિલ્ટર રીસેટ કરો';

  @override
  String get learningControlPrevious => 'પાછલું';

  @override
  String get learningControlNext => 'આગળનું';

  @override
  String get learningControlProgress => 'પ્રગતિ';

  @override
  String get learningControlRemoveSaved => 'સાચવેલામાંથી દૂર કરો';

  @override
  String get learningControlSaveCard => 'કાર્ડ સાચવો';

  @override
  String get learningControlExample => 'ઉદાહરણ';

  @override
  String get learningControlCopyExample => 'ઉદાહરણ કૉપિ કરો';

  @override
  String get learningControlExampleCopied => 'ઉદાહરણ કૉપિ થયું';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'લેવલ $value1 પૂર્ણ થયું';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'લેવલ $value1 રમો';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'અનલોક કરવા માટે લેવલ $value1 પૂર્ણ કરો';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'દૈનિક લોગિન બોનસ';

  @override
  String get sharedDialogThanksForComingBack => 'પાછા આવવા બદલ આભાર!';

  @override
  String get sharedDialogDailyRewardAdded => 'તમારું દૈનિક ઇનામ તમારા કુલ પોઇન્ટ્સમાં ઉમેરાઈ ગયું છે.';

  @override
  String get sharedDialogAwesome => 'શાનદાર!';

  @override
  String get accountWelcomeGuest => 'મહેમાન';

  @override
  String get accountWelcomeGuestUser => 'મહેમાન વપરાશકર્તા';

  @override
  String get accountWelcomeUser => 'વપરાશકર્તા';

  @override
  String get accountWelcomePlayingAsGuest => 'મહેમાન તરીકે રમી રહ્યા છો';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google એકાઉન્ટ કનેક્ટ કરો';

  @override
  String get accountWelcomeGoogleConnected => 'Google એકાઉન્ટ સફળતાપૂર્વક કનેક્ટ થયું! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'સાઇન-ઇન રદ કરવામાં આવ્યું.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'કનેક્ટ કરવામાં નિષ્ફળ: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'સાઇન આઉટ કરો';

  @override
  String get accountWelcomeSignOutTitle => 'સાઇન આઉટ કરવું છે?';

  @override
  String get accountWelcomeSignOutMessage => 'શું તમે ખરેખર સાઇન આઉટ કરવા માંગો છો? તમારી સાચવેલી પ્રગતિ મેળવવા માટે તમારે ફરીથી સાઇન ઇન કરવું પડશે.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'સાઇન આઉટ નિષ્ફળ રહ્યું: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ એપ ડેટા રીસેટ કરવો છે?';

  @override
  String get accountWelcomeResetAppMessage => 'આ તમારા બધા પોઈન્ટ્સ, સ્ટ્રીક્સ, ગેમ ઇતિહાસ અને સેટિંગ્સને કાયમ માટે કાઢી નાખશે. તમને સાઇન આઉટ કરવામાં આવશે અને સ્ટાર્ટ સ્ક્રીન પર પાછા મોકલવામાં આવશે. આ પૂર્વવત્ કરી શકાતું નથી.';

  @override
  String get accountWelcomeResetEverything => 'બધું રીસેટ કરો';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'રીસેટ નિષ્ફળ રહ્યું: $value1';
  }

  @override
  String get accountWelcomeCancel => 'રદ કરો';

  @override
  String get accountWelcomeResetAppData => 'એપ ડેટા રીસેટ કરો';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'બધા પોઈન્ટ્સ, સ્ટ્રીક્સ અને સેટિંગ્સ સાફ કરો';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz એપ';

  @override
  String get accountWelcomeTranslationNotAvailable => 'અનુવાદ હજુ ઉપલબ્ધ નથી';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google સાથે ચાલુ રાખો';

  @override
  String get accountWelcomeSigningIn => 'સાઇન ઇન થઈ રહ્યું છે...';

  @override
  String get accountWelcomeOr => 'અથવા';

  @override
  String get accountWelcomeContinueAsGuest => 'મહેમાન તરીકે ચાલુ રાખો';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'તમે પછીથી તમારી પ્રોફાઇલમાંથી સાઇન ઇન કરી શકો છો.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'તમે મહેમાન તરીકે શરૂ કરી શકો છો અને પછીથી સાઇન ઇન કરી શકો છો.';

  @override
  String get accountWelcomeGreetingGuest => 'સ્વાગત છે';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'સ્વાગત છે, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google સાઇન-ઇન પૂર્ણ થયું, પરંતુ કોઈ વપરાશકર્તા એકાઉન્ટ મળ્યું નથી.';

  @override
  String get accountWelcomeErrorEmailExists => 'આ ઇમેઇલ પાસે પહેલેથી જ અન્ય સાઇન-ઇન પદ્ધતિનો ઉપયોગ કરતું એકાઉન્ટ છે.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'આ Google એકાઉન્ટ પહેલેથી જ અન્ય એકાઉન્ટ સાથે લિંક થયેલું છે.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google પ્રમાણીકરણ ઓળખપત્ર અમાન્ય છે અથવા સમાપ્ત થઈ ગયું છે.';

  @override
  String get accountWelcomeErrorUserDisabled => 'આ એકાઉન્ટ નિષ્ક્રિય કરવામાં આવ્યું છે.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google સાઇન-ઇન હાલમાં સક્ષમ નથી.';

  @override
  String get accountWelcomeErrorNetwork => 'નેટવર્ક ભૂલ. કૃપા કરીને તમારું ઇન્ટરનેટ કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'ઘણા બધા સાઇન-ઇન પ્રયાસો. કૃપા કરીને રાહ જુઓ અને ફરી પ્રયાસ કરો.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'કોઈ વધારાની ભૂલ માહિતી નથી.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google સાઇન-ઇન નિષ્ફળ રહ્યું.\n\nકોડ: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google સાઇન-ઇન ભૂલ:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'મહેમાન તરીકે ચાલુ રાખવામાં અસમર્થ. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google સાઇન-ઇન ટૂંક સમયમાં ઉપલબ્ધ થશે.';

  @override
  String get accountWelcomeLoginTagline => 'શીખો • પ્રેક્ટિસ કરો • સ્પર્ધા કરો • કમાઓ';

  @override
  String get accountWelcomeCountryRegion => 'દેશ / પ્રદેશ';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'દેશ / પ્રદેશ: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'દેશ શોધો';

  @override
  String get accountWelcomeCountryNotSelected => 'પસંદ કરેલ નથી';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz શા માટે?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ પ્રેક્ટિસ પ્રશ્નો';

  @override
  String get accountWelcomeFeatureLanguages => 'બહુ-ભાષા સપોર્ટ';

  @override
  String get accountWelcomeFeatureStreaks => 'સ્ટ્રીક્સ અને લીડરબોર્ડ્સ';

  @override
  String get accountWelcomeFeatureGames => 'ગેમ્સ અને ચેલેન્જીસ';

  @override
  String get accountWelcomeFeatureCloud => 'ક્લાઉડ અને DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'બોનસ અને રિવોર્ડ્સ';

  @override
  String get accountWelcomePracticeOnTheGo => 'ગમે ત્યાં પ્રેક્ટિસ કરો';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android એપ ઇન્સ્ટોલ કરો અને ગમે ત્યાં, ઑફલાઇન શીખો.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play પર મેળવો';

  @override
  String achLocStreakTitle(String days) {
    return '$days દિવસની સ્ટ્રીક';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days દિવસની સ્ટ્રીક જાળવી રાખો.';
  }

  @override
  String get achLocYearStreakTitle => '1 વર્ષની સ્ટ્રીક';

  @override
  String get achLocFirstQuizTitle => 'પ્રથમ ક્વિઝ';

  @override
  String get achLocFirstQuizDescription => 'તમારી પ્રથમ ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocQuiz10Title => 'ક્વિઝ એક્સપ્લોરર';

  @override
  String get achLocQuiz10Description => '10 ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocPoints1000Title => '1000 પોઈન્ટ';

  @override
  String get achLocPoints1000Description => 'ક્વિઝમાં કુલ 1000 પોઈન્ટ મેળવો.';

  @override
  String get achLocPerfectScoreTitle => 'પરફેક્ટ સ્કોર';

  @override
  String get achLocPerfectScoreDescription => 'કોઈપણ ક્વિઝમાં 100% સ્કોર કરો.';

  @override
  String get achLocQuiz25Title => 'ક્વિઝ ઉત્સાહી';

  @override
  String get achLocQuiz25Description => '25 ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocQuiz50Title => 'ક્વિઝ માસ્ટર';

  @override
  String get achLocQuiz50Description => '50 ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocQuiz100Title => 'સેન્ચુરી ક્લબ';

  @override
  String get achLocQuiz100Description => '100 ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocQuiz250Title => 'ક્વિઝ લેજેન્ડ';

  @override
  String get achLocQuiz250Description => '250 ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocPoints5000Title => '5,000 પોઈન્ટ';

  @override
  String get achLocPoints5000Description => 'કુલ 5,000 પોઈન્ટ મેળવો.';

  @override
  String get achLocPoints10000Title => '10,000 પોઈન્ટ';

  @override
  String get achLocPoints10000Description => 'કુલ 10,000 પોઈન્ટ મેળવો.';

  @override
  String get achLocPoints50000Title => '50,000 પોઈન્ટ';

  @override
  String get achLocPoints50000Description => 'કુલ 50,000 પોઈન્ટ મેળવો.';

  @override
  String get achLocPoints100000Title => '100,000 પોઈન્ટ';

  @override
  String get achLocPoints100000Description => 'કુલ 100,000 પોઈન્ટ મેળવો.';

  @override
  String get achLocDaily1Title => 'ડેઈલી સ્ટાર્ટર';

  @override
  String get achLocDaily1Description => 'તમારી પ્રથમ ડેઈલી ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocDaily7Title => 'ડેઈલી હેબિટ';

  @override
  String get achLocDaily7Description => '7 ડેઈલી ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocDaily30Title => 'ડેઈલી ચેમ્પિયન';

  @override
  String get achLocDaily30Description => '30 ડેઈલી ક્વિઝ પૂર્ણ કરો.';

  @override
  String get achLocSets5Title => 'સેટ સ્ટાર્ટર';

  @override
  String get achLocSets5Description => '5 ક્વિઝ સેટ પૂર્ણ કરો.';

  @override
  String get achLocSets25Title => 'સેટ કલેક્ટર';

  @override
  String get achLocSets25Description => '25 ક્વિઝ સેટ પૂર્ણ કરો.';

  @override
  String get achLocSets50Title => 'સેટ માસ્ટર';

  @override
  String get achLocSets50Description => '50 ક્વિઝ સેટ પૂર્ણ કરો.';

  @override
  String get achLocSets100Title => 'સેટ લેજેન્ડ';

  @override
  String get achLocSets100Description => '100 ક્વિઝ સેટ પૂર્ણ કરો.';

  @override
  String get achLocCert1Title => 'પ્રથમ પ્રમાણપત્ર';

  @override
  String get achLocCert1Description => 'તમારું પ્રથમ કેટેગરી પ્રમાણપત્ર મેળવો.';

  @override
  String get achLocCert5Title => 'પ્રમાણિત પ્રો';

  @override
  String get achLocCert5Description => '5 કેટેગરી પ્રમાણપત્રો મેળવો.';

  @override
  String get achLocCert21Title => 'સંપૂર્ણ પ્રમાણિત';

  @override
  String get achLocCert21Description => 'બધી 21 કેટેગરીમાં પ્રમાણપત્ર મેળવો.';

  @override
  String get achLocThemeFreeValentinesWeek => 'દર વર્ષે Feb 7-14 દરમિયાન મફત';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'દર વર્ષે Mar 8-15 દરમિયાન મફત';

  @override
  String get achLocThemeLight => 'લાઇટ';

  @override
  String get achLocThemeDark => 'ડાર્ક';

  @override
  String get achLocThemeSakura => 'સાકુરા';

  @override
  String get achLocThemeSunset => 'સનસેટ';

  @override
  String get achLocThemeCoffee => 'કોફી';

  @override
  String get achLocThemeTea => 'ચા';

  @override
  String get achLocThemeOcean => 'ઓશન';

  @override
  String get achLocThemeSolarFlare => 'સોલર ફ્લેર';

  @override
  String get achLocThemeForest => 'ફોરેસ્ટ';

  @override
  String get achLocThemeAurora => 'ઓરોરા';

  @override
  String get achLocThemeMatrix => 'મેટ્રિક્સ';

  @override
  String get achLocThemeCyberPurple => 'સાયબર પર્પલ';

  @override
  String get achLocThemeInferno => 'ઇન્ફર્નો';

  @override
  String get achLocThemeMidnight => 'મિડનાઇટ';

  @override
  String get achLocThemeDarkGrey => 'ડાર્ક ગ્રે';

  @override
  String get achLocThemeBarbee => 'બાર્બી';

  @override
  String get achLocThemeValentineDay => 'વેલેન્ટાઇન ડે';

  @override
  String get achLocThemeDqSpecial => 'DQ સ્પેશિયલ';

  @override
  String get achLocThemeArmy => 'આર્મી';

  @override
  String get achLocThemeSpiderMan => 'સ્પાઇડર-મેન';

  @override
  String get achLocThemeKrrish => 'કૃષ';

  @override
  String get achLocThemeIronMan => 'આયર્ન મેન';

  @override
  String get achLocThemeCaptainAmerica => 'કેપ્ટન અમેરિકા';

  @override
  String get achLocThemeThor => 'થોર';

  @override
  String get achLocThemeHulk => 'હલ્ક';

  @override
  String get achLocThemeBlackWidow => 'બ્લેક વિડો';

  @override
  String get achLocThemeHawkeye => 'હોકઆઇ';

  @override
  String get achLocThemeBlackPanther => 'બ્લેક પેન્થર';

  @override
  String get achLocThemeScarletWitch => 'સ્કાર્લેટ વિચ';

  @override
  String get achLocThemeVision => 'વિઝન';

  @override
  String get achLocThemeAntMan => 'એન્ટ-મેન';

  @override
  String get achLocThemeCaptainMarvel => 'કેપ્ટન માર્વેલ';

  @override
  String get achLocThemeDoctorStrange => 'ડોક્ટર સ્ટ્રેન્જ';

  @override
  String get achLocThemeAvengers => 'એવેન્જર્સ';

  @override
  String get achLocThemeBatman => 'બેટમેન';

  @override
  String get achLocThemeSuperman => 'સુપરમેન';

  @override
  String get achLocThemeWonderWoman => 'વન્ડર વુમન';

  @override
  String get achLocThemeFlash => 'ફ્લેશ';

  @override
  String get achLocThemeAquaman => 'એક્વામેન';

  @override
  String get achLocThemeGreenLantern => 'ગ્રીન લેન્ટર્ન';

  @override
  String get achLocThemeCyborg => 'સાયબોર્ગ';

  @override
  String get achLocThemeSupergirl => 'સુપરગર્લ';

  @override
  String get achLocThemeDc => 'DC હીરોઝ';

  @override
  String get achLocThemeRainbow => 'રેઈનબો';

  @override
  String get achLocThemeDiamond => 'ડાયમંડ';

  @override
  String get achLocThemeLegendary => 'લેજેન્ડરી';

  @override
  String get gameHintCmd001LsLa => 'વિગતો સાથે બધી ફાઇલોની યાદી બતાવો';

  @override
  String get gameHintCmd002Grep => 'પેટર્ન વડે ટેક્સ્ટ શોધો';

  @override
  String get gameHintCmd003Chmod => 'ફાઇલની પરવાનગીઓ બદલો';

  @override
  String get gameHintCmd004DfH => 'ખાલી ડિસ્ક જગ્યા બતાવો';

  @override
  String get gameHintCmd005TailF => 'વધતી લોગ ફાઇલને અનુસરો';

  @override
  String get gameHintCmd006PsAux => 'ચાલી રહેલી પ્રક્રિયાઓની યાદી બતાવો';

  @override
  String get gameHintCmd007GitClone => 'રિમોટ રિપોઝિટરીની નકલ કરો';

  @override
  String get gameHintCmd008GitStash => 'કમિટ ન કરેલા ફેરફારો બાજુ પર મૂકો';

  @override
  String get gameHintCmd009GitRebase => 'નવા બેઝ પર કમિટ ફરી લાગુ કરો';

  @override
  String get gameHintCmd010GitBlame => 'દરેક લીટી કોણે બદલી તે બતાવો';

  @override
  String get gameHintCmd011DockerPs => 'ચાલી રહેલા કન્ટેનરની યાદી બતાવો';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile માંથી ઇમેજ બનાવો';

  @override
  String get gameHintCmd013DockerLogs => 'કન્ટેનરનું આઉટપુટ બતાવો';

  @override
  String get gameHintCmd014DockerExec => 'કન્ટેનરની અંદર આદેશ ચલાવો';

  @override
  String get gameHintCmd015KubectlGetPods => 'નેમસ્પેસમાંના પોડની યાદી બતાવો';

  @override
  String get gameHintCmd016KubectlApply => 'ફાઇલમાંથી રિસોર્સ બનાવો';

  @override
  String get gameHintCmd017KubectlDescribe => 'રિસોર્સની વિગતવાર માહિતી બતાવો';

  @override
  String get gameHintCmd018KubectlScale => 'રેપ્લિકાની સંખ્યા બદલો';

  @override
  String get gameHintCmd019TerraformInit => 'પ્રોવાઇડર ડાઉનલોડ કરો અને સેટઅપ કરો';

  @override
  String get gameHintCmd020TerraformPlan => 'ઇન્ફ્રાસ્ટ્રક્ચરના ફેરફારોનું પૂર્વાવલોકન કરો';

  @override
  String get gameHintCmd021TerraformApply => 'ઇન્ફ્રાસ્ટ્રક્ચર બનાવો અથવા અપડેટ કરો';

  @override
  String get gameHintCmd022TerraformDestroy => 'સંચાલિત ઇન્ફ્રાસ્ટ્રક્ચર દૂર કરો';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ઓટોમેશન પ્લેબુક ચલાવો';

  @override
  String get gameHintCmd024Ping => 'ICMP વડે પહોંચક્ષમતા ચકાસો';

  @override
  String get gameHintCmd025Traceroute => 'હોસ્ટ સુધીનો માર્ગ બતાવો';

  @override
  String get gameHintCmd026Curl => 'URL માંથી ડેટા ટ્રાન્સફર કરો';

  @override
  String get gameHintCmd027Ssh => 'રિમોટ મશીનમાં સુરક્ષિત રીતે લૉગ ઇન કરો';

  @override
  String get gameHintCmd028CrontabE => 'શેડ્યૂલ કરેલા કાર્યો સંપાદિત કરો';

  @override
  String get gameHintCmd029SystemctlStatus => 'સેવાની સ્થિતિ તપાસો';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes પર ચાર્ટ ડિપ્લોય કરો';

  @override
  String get gameHintWord001Git => 'સોર્સ કોડમાં થયેલા ફેરફારોને ટ્રૅક કરે છે.';

  @override
  String get gameHintWord002Aws => 'Amazon નું ક્લાઉડ પ્લેટફોર્મ.';

  @override
  String get gameHintWord003Api => 'સૉફ્ટવેર સિસ્ટમોને એકબીજા સાથે સંવાદ કરવા દેતો કરાર.';

  @override
  String get gameHintWord004Dns => 'ડોમેન નામોને IP સરનામાંમાં રૂપાંતરિત કરે છે.';

  @override
  String get gameHintWord005Cli => 'આદેશો ચલાવવા માટેનું ટેક્સ્ટ આધારિત ઇન્ટરફેસ.';

  @override
  String get gameHintWord006Cpu => 'સૂચનાઓ ચલાવતું પ્રોસેસર.';

  @override
  String get gameHintWord007Ram => 'ચાલતા પ્રોગ્રામ દ્વારા વપરાતી અસ્થાયી મેમરી.';

  @override
  String get gameHintWord008Ssh => 'રિમોટ શેલ એક્સેસ માટેનો સુરક્ષિત પ્રોટોકોલ.';

  @override
  String get gameHintWord009Yaml => 'માનવ-વાંચનીય ડેટા સીરિયલાઇઝેશન ફોર્મેટ.';

  @override
  String get gameHintWord010Linux => 'ઓપન-સોર્સ ઓપરેટિંગ સિસ્ટમ કર્નલ અને તેનો પરિવાર.';

  @override
  String get gameHintWord011Bash => 'લોકપ્રિય Unix કમાન્ડ શેલ.';

  @override
  String get gameHintWord012Cloud => 'નેટવર્ક પર માંગ મુજબ પૂરું પડાતું કમ્પ્યુટિંગ.';

  @override
  String get gameHintWord013Docker => 'કન્ટેનર બનાવવા અને ચલાવવાનું પ્લેટફોર્મ.';

  @override
  String get gameHintWord014Azure => 'Microsoft નું ક્લાઉડ પ્લેટફોર્મ.';

  @override
  String get gameHintWord015Python => 'વ્યાપકપણે વપરાતી સ્ક્રિપ્ટિંગ અને પ્રોગ્રામિંગ ભાષા.';

  @override
  String get gameHintWord016Github => 'લોકપ્રિય હોસ્ટેડ Git સહયોગ સેવા.';

  @override
  String get gameHintWord017Bgp => 'સ્વાયત્ત સિસ્ટમો વચ્ચે રૂટની આપ-લે કરતો રાઉટિંગ પ્રોટોકોલ.';

  @override
  String get gameHintWord018Jenkins => 'CI માટે ઘણીવાર વપરાતું ઓટોમેશન સર્વર.';

  @override
  String get gameHintWord019Port => 'નેટવર્ક સેવાઓ દ્વારા વપરાતો ક્રમાંકિત એન્ડપોઇન્ટ.';

  @override
  String get gameHintWord020Proxy => 'ક્લાયન્ટ વતી વિનંતીઓ આગળ મોકલતું સર્વર.';

  @override
  String get gameHintWord021Cache => 'વારંવાર વપરાતા ડેટા માટેનો ઝડપી સંગ્રહ.';

  @override
  String get gameHintWord022Cron => 'પુનરાવર્તિત આદેશો માટેનું Unix શેડ્યૂલર.';

  @override
  String get gameHintWord023Bicep => 'ઇન્ફ્રાસ્ટ્રક્ચર એઝ કોડ માટેની Azure ની ડિક્લેરેટિવ ભાષા.';

  @override
  String get gameHintWord024Apigee => 'કેન્દ્રિત API મેનેજમેન્ટ માટેનું Google Cloud પ્લેટફોર્મ.';

  @override
  String get gameHintWord025Root => 'Unix જેવી સિસ્ટમો પરનું વિશેષાધિકૃત એડમિનિસ્ટ્રેટર ખાતું.';

  @override
  String get gameHintWord026Nginx => 'વેબ સર્વર અને રિવર્સ પ્રોક્સી.';

  @override
  String get gameHintWord027Redis => 'ઇન-મેમરી ડેટા સ્ટોર, ઘણીવાર કેશ તરીકે વપરાય છે.';

  @override
  String get gameHintWord028Mysql => 'લોકપ્રિય રિલેશનલ ડેટાબેઝ સિસ્ટમ.';

  @override
  String get gameHintWord029Ruby => 'Chef જેવા ટૂલ્સ દ્વારા વપરાતી પ્રોગ્રામિંગ ભાષા.';

  @override
  String get gameHintWord030Helm => 'Kubernetes સાથે સામાન્ય રીતે વપરાતો પેકેજ મેનેજર.';

  @override
  String get gameHintWord031Pod => 'Kubernetes માં ડિપ્લોય કરી શકાય તેવું સૌથી નાનું એકમ.';

  @override
  String get gameHintWord032Image => 'કન્ટેનર બનાવવા માટે વપરાતો ફક્ત-વાંચવા યોગ્ય ટેમ્પ્લેટ.';

  @override
  String get gameHintWord033Build => 'સોર્સ અને નિર્ભરતાઓમાંથી આર્ટિફેક્ટ બનાવે છે.';

  @override
  String get gameHintWord034Deploy => 'એપ્લિકેશનને પર્યાવરણમાં રિલીઝ કરે છે.';

  @override
  String get gameHintWord035Terraform => 'ઇન્ફ્રાસ્ટ્રક્ચર એઝ કોડ માટેનું HashiCorp નું ટૂલ.';

  @override
  String get gameHintWord036Ansible => 'એજન્ટ વગરનું ઓટોમેશન અને કન્ફિગરેશન ટૂલ.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes માટેનો કમાન્ડ-લાઇન ક્લાયન્ટ.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform નું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord039Gitops => 'Git ને સત્યના સ્રોત તરીકે વાપરતું ઓપરેશનલ મૉડલ.';

  @override
  String get gameHintWord040Pipeline => 'બિલ્ડ, ટેસ્ટ અને રિલીઝ તબક્કાઓનો સ્વચાલિત ક્રમ.';

  @override
  String get gameHintWord041Container => 'નિર્ભરતાઓ સાથે પૅક કરેલી અલગ પ્રક્રિયા.';

  @override
  String get gameHintWord042Cluster => 'સહિયારી સિસ્ટમ તરીકે સંચાલિત મશીનોનો સમૂહ.';

  @override
  String get gameHintWord043Ingress => 'બાહ્ય HTTP રાઉટિંગ માટેનો Kubernetes API ઑબ્જેક્ટ.';

  @override
  String get gameHintWord044Firewall => 'સુરક્ષા નિયમો અનુસાર નેટવર્ક ટ્રાફિક ફિલ્ટર કરે છે.';

  @override
  String get gameHintWord045Subnet => 'IP નેટવર્કનું તાર્કિક પેટાવિભાજન.';

  @override
  String get gameHintWord046Gateway => 'જુદા જુદા નેટવર્કને જોડતો નેટવર્ક નોડ.';

  @override
  String get gameHintWord047Router => 'નેટવર્ક વચ્ચે પૅકેટ આગળ મોકલે છે.';

  @override
  String get gameHintWord048Switch => 'સ્થાનિક નેટવર્કમાં ઉપકરણોને જોડે છે.';

  @override
  String get gameHintWord049Repository => 'સોર્સ કોડ અથવા પૅકેજ માટેનો સંચાલિત સંગ્રહ.';

  @override
  String get gameHintWord050Systemd => 'Linux init સિસ્ટમ અને સેવા મેનેજર.';

  @override
  String get gameHintWord051Journalctl => 'systemd જર્નલ લોગ વાંચવા માટેનો આદેશ.';

  @override
  String get gameHintWord052Permission => 'કોણ વાંચી, લખી કે ચલાવી શકે તે નક્કી કરતો નિયમ.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud નો સંચાલિત PostgreSQL-સુસંગત ડેટાબેઝ.';

  @override
  String get gameHintWord054Configmap => 'ગુપ્ત ન હોય તેવા કન્ફિગરેશન માટેનો Kubernetes ઑબ્જેક્ટ.';

  @override
  String get gameHintWord055Secret => 'સંવેદનશીલ ડેટા માટેનો Kubernetes ઑબ્જેક્ટ.';

  @override
  String get gameHintWord056Persistent => 'વર્કલોડ રીસ્ટાર્ટ પછી પણ ટકી રહેતા સ્ટોરેજનું વર્ણન કરે છે.';

  @override
  String get gameHintWord057Volume => 'કન્ટેનરમાં માઉન્ટ કરેલો ફાઇલસિસ્ટમ સ્ટોરેજ.';

  @override
  String get gameHintWord058Storage => 'ફાઇલો, ઑબ્જેક્ટ કે બ્લૉક માટેની કાયમી જગ્યા.';

  @override
  String get gameHintWord059Replica => 'સ્કેલ અથવા વિશ્વસનીયતા માટે જાળવેલી વર્કલોડ ઇન્સ્ટન્સની નકલ.';

  @override
  String get gameHintWord060Deployment => 'સ્ટેટલેસ એપ્લિકેશન પોડ માટેનો Kubernetes કન્ટ્રોલર.';

  @override
  String get gameHintWord061Dockerfile => 'Docker ઇમેજ બનાવવા માટે વપરાતી સૂચનાઓ.';

  @override
  String get gameHintWord062Database => 'એપ્લિકેશનો દ્વારા ક્વેરી થતો વ્યવસ્થિત સંગ્રહ.';

  @override
  String get gameHintWord063Automation => 'મેન્યુઅલ પગલાં વિના પુનરાવર્તિત કાર્યો કરવા સૉફ્ટવેરનો ઉપયોગ.';

  @override
  String get gameHintWord064Anthos => 'વિવિધ પર્યાવરણોમાં ક્લસ્ટર સંચાલિત કરવાનું Google Cloud પ્લેટફોર્મ.';

  @override
  String get gameHintWord065Bigquery => 'મોટા પાયે ડેટા વિશ્લેષણ માટેની Google Cloud સેવા.';

  @override
  String get gameHintWord066Bigtable => 'વિશ્લેષણ માટેનો Google Cloud નો વાઇડ-કૉલમ NoSQL ડેટાબેઝ.';

  @override
  String get gameHintWord067Loadbalancer => 'આવતા ટ્રાફિકને અનેક બેકએન્ડ વચ્ચે વહેંચે છે.';

  @override
  String get gameHintWord068Prometheus => 'ટાઇમ-સિરીઝ મેટ્રિક્સ સંગ્રહતી મૉનિટરિંગ સિસ્ટમ.';

  @override
  String get gameHintWord069Grafana => 'ઑબ્ઝર્વેબિલિટી ડેટા ક્વેરી અને વિઝ્યુઅલાઇઝ કરવાનું પ્લેટફોર્મ.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud નો સંચાલિત NoSQL JSON ડૉક્યુમેન્ટ ડેટાબેઝ.';

  @override
  String get gameHintWord071Cloudtrail => 'ઑડિટ માટે API પ્રવૃત્તિ નોંધતી AWS સેવા.';

  @override
  String get gameHintWord072Statefulset => 'સ્થિર ઓળખ જોઈતા વર્કલોડ માટેનો Kubernetes કન્ટ્રોલર.';

  @override
  String get gameHintWord073Daemonset => 'પસંદ કરેલા નોડ પર પોડ ચલાવતો Kubernetes કન્ટ્રોલર.';

  @override
  String get gameHintWord074Serviceaccount => 'વર્કલોડ કે પ્રક્રિયા દ્વારા વપરાતી Kubernetes ઓળખ.';

  @override
  String get gameHintWord075Networkpolicy => 'પોડના નેટવર્ક ટ્રાફિકને નિયંત્રિત કરતો Kubernetes રિસોર્સ.';

  @override
  String get gameHintWord076Certificate => 'TLS માં ઓળખ સ્થાપિત કરવા વપરાતો ડિજિટલ દસ્તાવેજ.';

  @override
  String get gameHintWord077Encryption => 'ડેટાને એવી રીતે બદલે છે કે ફક્ત અધિકૃત પક્ષો જ વાંચી શકે.';

  @override
  String get gameHintWord078Observability => 'સિસ્ટમના આઉટપુટ પરથી તેનું વર્તન સમજવાની ક્ષમતા.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes ક્લસ્ટરની અંદર સામાન્ય રીતે વપરાતું DNS સર્વર.';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API દ્વારા ક્લાઉડ રિસોર્સ સંચાલિત કરવાનો પ્રોજેક્ટ.';

  @override
  String get gameHintWord081Failover => 'નિષ્ફળતા પછી સ્ટેન્ડબાય ઘટક પર સ્વિચ કરવું.';

  @override
  String get gameHintWord082Idempotency => 'ક્રિયા પુનરાવર્તિત કરવાથી એક વાર કરવા જેટલી જ અસર થાય તેવો ગુણધર્મ.';

  @override
  String get gameHintWord083Dataflow => 'સ્ટ્રીમ અને બેચ ડેટા પ્રોસેસિંગ માટેની Google Cloud સેવા.';

  @override
  String get gameHintWord084Orchestration => 'અનેક સ્વચાલિત વર્કલોડનું સંકલિત સંચાલન.';

  @override
  String get gameHintWord085Dataplex => 'એન્ટરપ્રાઇઝ ડેટા શોધવા અને નિયંત્રિત કરવાની Google Cloud સેવા.';

  @override
  String get gameHintWord086Serverless => 'ઇન્ફ્રાસ્ટ્રક્ચરનું સંચાલન દૂર રાખતું એક્ઝિક્યુશન મૉડલ.';

  @override
  String get gameHintWord087Distributed => 'જેના ઘટકો નેટવર્ક સાથે જોડાયેલા અનેક મશીનો પર ચાલે તેવી સિસ્ટમ.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud નું સંચાલિત Apache Spark અને Hadoop પર્યાવરણ.';

  @override
  String get gameHintWord089Dynamodb => 'AWS નો NoSQL ડેટાબેઝ, ઘણીવાર Terraform સ્ટેટ લૉકિંગ માટે વપરાય છે.';

  @override
  String get gameHintWord090Provisioning => 'ઇન્ફ્રાસ્ટ્રક્ચર અથવા રિસોર્સને ઉપયોગ માટે તૈયાર કરવા.';

  @override
  String get gameHintWord091Elasticsearch => 'કેન્દ્રિત લૉગિંગ માટે સામાન્ય રીતે વપરાતું સર્ચ એન્જિન.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes ક્લસ્ટરની સ્થિતિ સંગ્રહતો કી-વેલ્યુ સ્ટોર.';

  @override
  String get gameHintWord093Authentication => 'વપરાશકર્તા કે સેવા કોણ છે તે ચકાસવાની પ્રક્રિયા.';

  @override
  String get gameHintWord094Authorization => 'ઓળખને શું કરવાની મંજૂરી છે તે નક્કી કરવાની પ્રક્રિયા.';

  @override
  String get gameHintWord095Expressroute => 'ડેટા સેન્ટરો સાથે સમર્પિત ખાનગી જોડાણ માટેની Azure સેવા.';

  @override
  String get gameHintWord096Configuration => 'સૉફ્ટવેર કેવું વર્તે તે નક્કી કરતી સેટિંગ્સ.';

  @override
  String get gameHintWord097Infrastructure => 'એપ્લિકેશનોને ટેકો આપતા કમ્પ્યુટ, નેટવર્ક અને સ્ટોરેજ રિસોર્સ.';

  @override
  String get gameHintWord098Fastconnect => 'સમર્પિત ખાનગી નેટવર્ક જોડાણ માટેની Oracle Cloud સેવા.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes દ્વારા વપરાતું ઉદ્યોગ-માનક કન્ટેનર રનટાઇમ.';

  @override
  String get gameHintWord100Kubernetes => 'કન્ટેનર ઓર્કેસ્ટ્રેશન પ્લેટફોર્મ.';

  @override
  String get gameHintWord101Http => 'વેબ રિસોર્સ માંગવા માટે વપરાતો એપ્લિકેશન પ્રોટોકોલ.';

  @override
  String get gameHintWord102Https => 'વેબ વિનંતી પ્રોટોકોલનું એન્ક્રિપ્ટેડ સંસ્કરણ.';

  @override
  String get gameHintWord103Tcp => 'વિશ્વસનીય ક્રમબદ્ધ ડિલિવરી આપતો ટ્રાન્સપોર્ટ પ્રોટોકોલ.';

  @override
  String get gameHintWord104Udp => 'ડેટાગ્રામ માટે વપરાતો કનેક્શન વગરનો ટ્રાન્સપોર્ટ પ્રોટોકોલ.';

  @override
  String get gameHintWord105Tls => 'નેટવર્ક પર આપ-લે થતા ડેટાને સુરક્ષિત કરતો પ્રોટોકોલ.';

  @override
  String get gameHintWord106Ssl => 'આધુનિક ટ્રાન્સપોર્ટ સુરક્ષા પ્રોટોકોલનો જૂનો પુરોગામી.';

  @override
  String get gameHintWord107Ftp => 'ફાઇલો ટ્રાન્સફર કરવાનો પરંપરાગત પ્રોટોકોલ.';

  @override
  String get gameHintWord108Sftp => 'સુરક્ષિત શેલ કનેક્શન પર ચાલતો ફાઇલ ટ્રાન્સફર પ્રોટોકોલ.';

  @override
  String get gameHintWord109Smtp => 'સર્વરો વચ્ચે ઇમેઇલ મોકલવા વપરાતો પ્રોટોકોલ.';

  @override
  String get gameHintWord110Snmp => 'નેટવર્ક ઉપકરણોનું સંચાલન અને મૉનિટરિંગ કરતો પ્રોટોકોલ.';

  @override
  String get gameHintWord111Icmp => 'નેટવર્ક ભૂલો અને ping સંદેશા વહન કરતો પ્રોટોકોલ.';

  @override
  String get gameHintWord112Arp => 'સ્થાનિક IPv4 સરનામાંને હાર્ડવેર સરનામાંમાં ઉકેલે છે.';

  @override
  String get gameHintWord113Dhcp => 'નેટવર્ક ક્લાયન્ટ્સને IP કન્ફિગરેશન આપોઆપ ભાડે આપે છે.';

  @override
  String get gameHintWord114Nat => 'પૅકેટ ગેટવે પાર કરે ત્યારે નેટવર્ક સરનામાં ફરીથી લખે છે.';

  @override
  String get gameHintWord115Vpn => 'દૂરસ્થ નેટવર્ક કે વપરાશકર્તાઓને જોડતી એન્ક્રિપ્ટેડ ટનલ.';

  @override
  String get gameHintWord116Vpc => 'પબ્લિક ક્લાઉડમાં અલગ કરેલું વર્ચ્યુઅલ નેટવર્ક.';

  @override
  String get gameHintWord117Vlan => 'સ્વિચ્ડ નેટવર્કનું તાર્કિક વિભાજન.';

  @override
  String get gameHintWord118Wan => 'વિશાળ ભૌગોલિક વિસ્તારમાં ફેલાયેલું નેટવર્ક.';

  @override
  String get gameHintWord119Lan => 'સ્થાનિક વિસ્તારમાં ઉપકરણોને જોડતું નેટવર્ક.';

  @override
  String get gameHintWord120Cdn => 'વિતરિત સામગ્રીને કેશ કરતું વિતરિત એજ નેટવર્ક.';

  @override
  String get gameHintWord121Cidr => 'સ્લેશ લંબાઈ સાથે નેટવર્ક પ્રિફિક્સ દર્શાવતી સંકેતલિપિ.';

  @override
  String get gameHintWord122Host => 'નેટવર્ક સાથે જોડાયેલું કમ્પ્યુટર કે એન્ડપોઇન્ટ.';

  @override
  String get gameHintWord123Hostname => 'નેટવર્ક પરના મશીનને આપેલું માનવ-વાંચનીય નામ.';

  @override
  String get gameHintWord124Domain => 'ઇન્ટરનેટ નામકરણ પ્રણાલીમાં નામિત વહીવટી ક્ષેત્ર.';

  @override
  String get gameHintWord125Zone => 'DNS નેમસ્પેસનો વહીવટી ભાગ.';

  @override
  String get gameHintWord126Record => 'DNS ડેટાબેઝમાંની એક અલગ નોંધ.';

  @override
  String get gameHintWord127Aaaa => 'નામને IPv6 સરનામાંમાં ઉકેલતો DNS રેકોર્ડ પ્રકાર.';

  @override
  String get gameHintWord128Ptr => 'રિવર્સ સરનામાં શોધ માટે વપરાતો DNS રેકોર્ડ પ્રકાર.';

  @override
  String get gameHintWord129Txt => 'ટેક્સ્ટ મૂલ્યો સંગ્રહતો DNS રેકોર્ડ પ્રકાર.';

  @override
  String get gameHintWord130Cname => 'એક નામને બીજાનું ઉપનામ બનાવતો DNS રેકોર્ડ.';

  @override
  String get gameHintWord131Route => 'પૅકેટને ગંતવ્ય તરફ દોરતી માર્ગની નોંધ.';

  @override
  String get gameHintWord132Routing => 'નેટવર્ક વચ્ચે ટ્રાફિક માટે માર્ગો પસંદ કરવા.';

  @override
  String get gameHintWord133Packet => 'નેટવર્ક પર મોકલાતો ડેટાનો એકમ.';

  @override
  String get gameHintWord134Protocol => 'સિસ્ટમો વચ્ચે સંવાદ માટે સંમત થયેલા નિયમો.';

  @override
  String get gameHintWord135Ack => 'ડેટા મળ્યાની પુષ્ટિ કરતો TCP ફ્લૅગ.';

  @override
  String get gameHintWord136Bandwidth => 'સંચાર લિંકની ક્ષમતા.';

  @override
  String get gameHintWord137Latency => 'વિનંતી કે પૅકેટને પ્રતિસાદ મળે તે પહેલાંનો વિલંબ.';

  @override
  String get gameHintWord138Throughput => 'એકમ સમયમાં પ્રક્રિયા થયેલું ઉપયોગી કામ કે ડેટાનું પ્રમાણ.';

  @override
  String get gameHintWord139Mtu => 'ફ્રેગ્મેન્ટેશન વિના લિંક મોકલી શકે તેવું સૌથી મોટું પૅકેટ કદ.';

  @override
  String get gameHintWord140Alpn => 'એપ્લિકેશન-સ્તર પ્રોટોકોલ નક્કી કરતું TLS એક્સટેન્શન.';

  @override
  String get gameHintWord141Grep => 'મેળ ખાતી પેટર્ન માટે ટેક્સ્ટ લીટીઓ શોધે છે.';

  @override
  String get gameHintWord142Sed => 'ટેક્સ્ટ બદલવા માટે સામાન્ય રીતે વપરાતું સ્ટ્રીમ એડિટર.';

  @override
  String get gameHintWord143Lscpu => 'પ્રોસેસર આર્કિટેક્ચર અને કોરની વિગતો બતાવતો Linux આદેશ.';

  @override
  String get gameHintWord144Find => 'ફાઇલ શરતો વડે ડિરેક્ટરી ટ્રી શોધે છે.';

  @override
  String get gameHintWord145Lsblk => 'બ્લૉક ઉપકરણો અને તેમના સંબંધોની યાદી બતાવતો Linux આદેશ.';

  @override
  String get gameHintWord146Sort => 'ટેક્સ્ટની લીટીઓને ક્રમમાં ગોઠવે છે.';

  @override
  String get gameHintWord147Uniq => 'સળંગ પુનરાવર્તિત લીટીઓ ફિલ્ટર કરે છે.';

  @override
  String get gameHintWord148Head => 'ફાઇલની શરૂઆત છાપે છે.';

  @override
  String get gameHintWord149Tail => 'ફાઇલનો અંત છાપે છે અને ઉમેરાતા લૉગને અનુસરી શકે છે.';

  @override
  String get gameHintWord150Cat => 'ફાઇલોને જોડીને તેમની સામગ્રી છાપે છે.';

  @override
  String get gameHintWord151Cut => 'લીટીઓમાંથી પસંદ કરેલા ફીલ્ડ કે અક્ષર કૉલમ કાઢે છે.';

  @override
  String get gameHintWord152Tee => 'સ્ટાન્ડર્ડ ઇનપુટને ફાઇલો અને સ્ટાન્ડર્ડ આઉટપુટમાં નકલ કરે છે.';

  @override
  String get gameHintWord153Echo => 'તેની દલીલોને સ્ટાન્ડર્ડ આઉટપુટમાં લખે છે.';

  @override
  String get gameHintWord154Printf => 'શેલ કે પ્રોગ્રામમાંથી ફૉર્મેટ કરેલ ટેક્સ્ટ છાપે છે.';

  @override
  String get gameHintWord155Touch => 'ફાઇલના સમયમુદ્રા અપડેટ કરે છે અથવા ખાલી ફાઇલ બનાવે છે.';

  @override
  String get gameHintWord156Mkdir => 'ડિરેક્ટરી બનાવે છે.';

  @override
  String get gameHintWord157Rmdir => 'ખાલી ડિરેક્ટરી દૂર કરે છે.';

  @override
  String get gameHintWord158Chmod => 'Unix ફાઇલ પરવાનગી બિટ્સ બદલે છે.';

  @override
  String get gameHintWord159Chown => 'ફાઇલની માલિકી બદલે છે.';

  @override
  String get gameHintWord160Chgrp => 'ફાઇલની ગ્રૂપ માલિકી બદલે છે.';

  @override
  String get gameHintWord161Pwd => 'વર્તમાન કાર્યકારી ડિરેક્ટરી છાપે છે.';

  @override
  String get gameHintWord162Apt => 'Debian આધારિત સિસ્ટમો દ્વારા વપરાતું પૅકેજ મેનેજમેન્ટ ટૂલ.';

  @override
  String get gameHintWord163Top => 'પ્રક્રિયાઓ અને સિસ્ટમ રિસોર્સ વપરાશનું ઇન્ટરેક્ટિવ પ્રદર્શન.';

  @override
  String get gameHintWord164Agent => 'હોસ્ટ પર કામ ચલાવતો અથવા તેનો અહેવાલ આપતો સૉફ્ટવેર ઘટક.';

  @override
  String get gameHintWord165Kill => 'પ્રક્રિયાને તેના ઓળખકર્તા વડે સિગ્નલ મોકલે છે.';

  @override
  String get gameHintWord166Signal => 'ઑપરેટિંગ સિસ્ટમ દ્વારા પ્રક્રિયાને પહોંચાડાતી સૂચના.';

  @override
  String get gameHintWord167Sigkill => 'પ્રક્રિયાને તરત સમાપ્ત કરતો Unix સિગ્નલ.';

  @override
  String get gameHintWord168Nice => 'સમાયોજિત શેડ્યૂલિંગ પ્રાથમિકતા સાથે પ્રક્રિયા શરૂ કરે છે.';

  @override
  String get gameHintWord169Renice => 'ચાલતી પ્રક્રિયાની શેડ્યૂલિંગ પ્રાથમિકતા બદલે છે.';

  @override
  String get gameHintWord170Jobs => 'વર્તમાન શેલ દ્વારા સંચાલિત જૉબની યાદી બતાવે છે.';

  @override
  String get gameHintWord171Nohup => 'હેંગઅપ સિગ્નલને અવગણીને આદેશ ચલાવે છે.';

  @override
  String get gameHintWord172Screen => 'અલગ કરી શકાય તેવા સત્રોને ટેકો આપતું ટર્મિનલ મલ્ટિપ્લેક્સર.';

  @override
  String get gameHintWord173Uptime => 'સિસ્ટમ કેટલા સમયથી ચાલી રહી છે તે જણાવે છે.';

  @override
  String get gameHintWord174Uname => 'સિસ્ટમ અને કર્નલની માહિતી છાપે છે.';

  @override
  String get gameHintWord175Whoami => 'અસરકારક વર્તમાન વપરાશકર્તા નામ છાપે છે.';

  @override
  String get gameHintWord176Umask => 'ફાઇલો બનાવતી વખતે વપરાતો પરવાનગી માસ્ક સેટ કરે છે.';

  @override
  String get gameHintWord177Usermod => 'હાલના વપરાશકર્તા ખાતામાં ફેરફાર કરતો Linux આદેશ.';

  @override
  String get gameHintWord178Crontab => 'શેડ્યૂલ કરેલા પુનરાવર્તિત શેલ જૉબ સંપાદિત કરે છે અથવા બતાવે છે.';

  @override
  String get gameHintWord179Findmnt => 'માઉન્ટ કરેલી ફાઇલસિસ્ટમની માહિતી બતાવતો Linux આદેશ.';

  @override
  String get gameHintWord180Mount => 'ફાઇલસિસ્ટમને ડિરેક્ટરી ટ્રી સાથે જોડે છે.';

  @override
  String get gameHintWord181Sigterm => 'પ્રક્રિયાને સરળતાથી સમાપ્ત કરવા વિનંતી કરતો Unix સિગ્નલ.';

  @override
  String get gameHintWord182Fstab => 'માઉન્ટ કરવાની ફાઇલસિસ્ટમનું વર્ણન કરતું સિસ્ટમ કોષ્ટક.';

  @override
  String get gameHintWord183Swap => 'ભૌતિક મેમરીને પૂરક બનાવતી ડિસ્ક-આધારિત જગ્યા.';

  @override
  String get gameHintWord184Tmpfs => 'વર્ચ્યુઅલ મેમરી આધારિત અસ્થાયી ફાઇલસિસ્ટમ.';

  @override
  String get gameHintWord185Proc => 'પ્રક્રિયા અને કર્નલની માહિતી આપતી Linux વર્ચ્યુઅલ ફાઇલસિસ્ટમ.';

  @override
  String get gameHintWord186Syslog => 'પ્રમાણભૂત લૉગિંગ પ્રોટોકોલ અને સંદેશ ફૉર્મેટ.';

  @override
  String get gameHintWord187Dmesg => 'કર્નલ રિંગ બફરમાંના સંદેશા બતાવે છે.';

  @override
  String get gameHintWord188Free => 'વપરાયેલી અને ઉપલબ્ધ સિસ્ટમ મેમરી જણાવે છે.';

  @override
  String get gameHintWord189Stat => 'ફાઇલનો વિગતવાર મેટાડેટા બતાવે છે.';

  @override
  String get gameHintWord190Lsof => 'ખુલ્લી ફાઇલો અને તેમને પકડી રાખતી પ્રક્રિયાઓની યાદી બતાવે છે.';

  @override
  String get gameHintWord191Netstat => 'નેટવર્ક જોડાણો અને રાઉટિંગ માહિતી બતાવે છે.';

  @override
  String get gameHintWord192Checksum => 'ડેટામાં ફેરફાર કે બગાડ શોધવા ગણતરી કરેલું મૂલ્ય.';

  @override
  String get gameHintWord193Ping => 'echo વિનંતીઓ વડે નેટવર્ક પહોંચક્ષમતા ચકાસે છે.';

  @override
  String get gameHintWord194Traceroute => 'નેટવર્ક ગંતવ્ય તરફના વચ્ચેના હૉપ બતાવે છે.';

  @override
  String get gameHintWord195Resolver => 'નામ ક્વેરીના જવાબ શોધતો DNS ઘટક.';

  @override
  String get gameHintWord196Nslookup => 'DNS નામો અને સરનામાં શોધે છે.';

  @override
  String get gameHintWord197Telnet => 'જૂનો અન-એન્ક્રિપ્ટેડ રિમોટ ટર્મિનલ પ્રોટોકોલ.';

  @override
  String get gameHintWord198Tftp => 'સરળ UDP-આધારિત ફાઇલ ટ્રાન્સફર પ્રોટોકોલ.';

  @override
  String get gameHintWord199Daemon => 'Unix જેવી સિસ્ટમો પર બૅકગ્રાઉન્ડ સેવા પ્રક્રિયા.';

  @override
  String get gameHintWord200Kernel => 'ઑપરેટિંગ સિસ્ટમ રિસોર્સનું સંચાલન કરતો મુખ્ય ઘટક.';

  @override
  String get gameHintWord201Commit => 'વર્ઝન કંટ્રોલમાં ફેરફારોનો નોંધાયેલ સ્નૅપશૉટ.';

  @override
  String get gameHintWord202Branch => 'વિકાસની એક લાઇન દર્શાવતો ખસેડી શકાય તેવો સંદર્ભ.';

  @override
  String get gameHintWord203Merge => 'વિકાસની જુદી જુદી લાઇનના ઇતિહાસને ભેગા કરે છે.';

  @override
  String get gameHintWord204Rebase => 'અલગ બેઝ કમિટ ઉપર કમિટને ફરીથી ચલાવે છે.';

  @override
  String get gameHintWord205Clone => 'રિમોટ રિપોઝિટરીની સ્થાનિક નકલ બનાવે છે.';

  @override
  String get gameHintWord206Fetch => 'મર્જ કર્યા વિના રિમોટ ઑબ્જેક્ટ અને સંદર્ભો ડાઉનલોડ કરે છે.';

  @override
  String get gameHintWord207Pull => 'ફેરફારો મેળવીને વર્તમાન બ્રાન્ચમાં સમાવે છે.';

  @override
  String get gameHintWord208Push => 'સ્થાનિક કમિટ રિમોટ રિપોઝિટરીમાં મોકલે છે.';

  @override
  String get gameHintWord209Stash => 'કમિટ ન કરેલા વર્કિંગ-ટ્રી ફેરફારોને અસ્થાયી રીતે સાચવે છે.';

  @override
  String get gameHintWord210Revert => 'બીજી કમિટને પાછી ફેરવતી કમિટ બનાવે છે.';

  @override
  String get gameHintWord211Reset => 'Git સંદર્ભ ખસેડે છે અને ઇન્ડેક્સ કે વર્કિંગ ફાઇલો રીસેટ કરી શકે છે.';

  @override
  String get gameHintWord212Reflog => 'Git સંદર્ભોના અપડેટનો સ્થાનિક ઇતિહાસ.';

  @override
  String get gameHintWord213Diff => 'સંસ્કરણો કે ફાઇલો વચ્ચેના તફાવત બતાવે છે.';

  @override
  String get gameHintWord214Status => 'સ્ટેજ કરેલી, ફેરફાર થયેલી અને અટ્રૅક ફાઇલો જણાવે છે.';

  @override
  String get gameHintWord215Checkout => 'રિવિઝન બદલવા કે ફાઇલો પુનઃસ્થાપિત કરવાનો Git આદેશ.';

  @override
  String get gameHintWord216Tag => 'સામાન્ય રીતે રિલીઝ ચિહ્નિત કરતો નામિત સંદર્ભ.';

  @override
  String get gameHintWord217Remote => 'અન્ય રિપોઝિટરી સાથેનું નામિત જોડાણ.';

  @override
  String get gameHintWord218Origin => 'ક્લોન કરેલી રિપોઝિટરીના રિમોટને અપાતું ડિફૉલ્ટ નામ.';

  @override
  String get gameHintWord219Upstream => 'સ્થાનિક બ્રાન્ચ સાથે સંકળાયેલી રિમોટ ટ્રૅકિંગ બ્રાન્ચ.';

  @override
  String get gameHintWord220Worktree => 'રિપોઝિટરી સાથે જોડાયેલી ચેક-આઉટ કરેલી કાર્યકારી ડિરેક્ટરી.';

  @override
  String get gameHintWord221Registry => 'કન્ટેનર ઇમેજ સંગ્રહતી અને વિતરિત કરતી સેવા.';

  @override
  String get gameHintWord222Digest => 'કન્ટેનર ઇમેજ માટેનો સામગ્રી-આધારિત ઓળખકર્તા.';

  @override
  String get gameHintWord223Layer => 'કન્ટેનર ઇમેજનો ભાગ બનતા ફાઇલસિસ્ટમ ફેરફારો.';

  @override
  String get gameHintWord224Entrypoint => 'કન્ટેનરની મુખ્ય એક્ઝિક્યુટેબલ નક્કી કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord225Cmd => 'ડિફૉલ્ટ આદેશ કે દલીલો દર્શાવતી Dockerfile સૂચના.';

  @override
  String get gameHintWord226Workdir => 'કાર્યકારી ડિરેક્ટરી સેટ કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord227Copy => 'બિલ્ડ-કૉન્ટેક્સ્ટ ફાઇલોને ઇમેજમાં નકલ કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord228Add => 'સ્થાનિક આર્કાઇવ પણ ખોલી શકતી Dockerfile સૂચના.';

  @override
  String get gameHintWord229Run => 'બિલ્ડ સમયે આદેશ ચલાવતી Dockerfile સૂચના.';

  @override
  String get gameHintWord230Env => 'પર્યાવરણ ચલ નક્કી કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord231Arg => 'બિલ્ડ-સમયનો ચલ જાહેર કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord232Expose => 'કન્ટેનર પોર્ટ દસ્તાવેજિત કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord233User => 'પછીના આદેશો માટે ખાતું પસંદ કરતી Dockerfile સૂચના.';

  @override
  String get gameHintWord234Healthcheck => 'કન્ટેનરની તંદુરસ્તી કેવી રીતે ચકાસવી તે દર્શાવતી સૂચના.';

  @override
  String get gameHintWord235Shebang => 'ચલાવવાનું ઇન્ટરપ્રિટર દર્શાવતી સ્ક્રિપ્ટની પ્રથમ લીટી.';

  @override
  String get gameHintWord236Compose => 'બહુ-કન્ટેનર એપ્લિકેશન નક્કી કરવા અને ચલાવવાનું Docker ટૂલ.';

  @override
  String get gameHintWord237Bridge => 'સ્થાનિક કન્ટેનર નેટવર્કિંગ માટેનો સામાન્ય Docker નેટવર્ક ડ્રાઇવર.';

  @override
  String get gameHintWord238Overlay => 'અનેક હોસ્ટ પરના કન્ટેનરને આવરી લેતું નેટવર્ક.';

  @override
  String get gameHintWord239None => 'કન્ટેનર નેટવર્કિંગ બંધ કરતો Docker નેટવર્ક ડ્રાઇવર.';

  @override
  String get gameHintWord240Prune => 'ન વપરાયેલા કન્ટેનર રિસોર્સ દૂર કરે છે.';

  @override
  String get gameHintWord241Replicaset => 'ઇચ્છિત પોડ સંખ્યા જાળવતો Kubernetes કન્ટ્રોલર.';

  @override
  String get gameHintWord242Service => 'પોડ સુધી સ્થિર પહોંચ આપતું Kubernetes અમૂર્તન.';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes સેવાને ટેકો આપતા સરનામાં.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes રિસોર્સને જૂથબદ્ધ કરતો તાર્કિક વ્યાપ.';

  @override
  String get gameHintWord245Node => 'Kubernetes પોડ ચલાવતું વર્કર મશીન.';

  @override
  String get gameHintWord246Kubelet => 'પોડના અમલનું સંચાલન કરતો દરેક નોડ પરનો એજન્ટ.';

  @override
  String get gameHintWord247Pvc => 'કાયમી સ્ટોરેજ માટેની Kubernetes વિનંતી.';

  @override
  String get gameHintWord248Apiserver => 'ક્લસ્ટર API પ્રદર્શિત કરતો Kubernetes કન્ટ્રોલ-પ્લેન ઘટક.';

  @override
  String get gameHintWord249Role => 'ભૂમિકા-આધારિત એક્સેસ કંટ્રોલમાં પરવાનગીઓનો નામિત સમૂહ.';

  @override
  String get gameHintWord250Resourcequota => 'નેમસ્પેસમાં રિસોર્સ વપરાશ મર્યાદિત કરતો Kubernetes ઑબ્જેક્ટ.';

  @override
  String get gameHintWord251Selector => 'લેબલ દ્વારા રિસોર્સ સાથે મેળ બેસાડતી અભિવ્યક્તિ.';

  @override
  String get gameHintWord252Taint => 'મેળ ખાતી ટોલરેશન વગરના પોડને દૂર રાખતો નોડ ગુણધર્મ.';

  @override
  String get gameHintWord253Toleration => 'ટેઇન્ટ થયેલા નોડ પર શેડ્યૂલિંગની મંજૂરી આપતી પોડ સેટિંગ.';

  @override
  String get gameHintWord254Cordon => 'Kubernetes નોડને શેડ્યૂલ ન થઈ શકે તેવો ચિહ્નિત કરે છે.';

  @override
  String get gameHintWord255Uncordon => 'કોર્ડન કરેલા નોડને ફરીથી શેડ્યૂલ થઈ શકે તેવો બનાવે છે.';

  @override
  String get gameHintWord256Drain => 'નોડ જાળવણી પહેલાં વર્કલોડને સુરક્ષિત રીતે બહાર કાઢે છે.';

  @override
  String get gameHintWord257Job => 'કાર્યને પૂર્ણ થાય ત્યાં સુધી ચલાવતો Kubernetes વર્કલોડ.';

  @override
  String get gameHintWord258Cronjob => 'શેડ્યૂલ પ્રમાણે જૉબ બનાવતો Kubernetes વર્કલોડ.';

  @override
  String get gameHintWord259Readiness => 'કન્ટેનર ટ્રાફિક સ્વીકારી શકે કે નહીં તે દર્શાવતી પ્રોબ.';

  @override
  String get gameHintWord260Liveness => 'કન્ટેનરને રીસ્ટાર્ટની જરૂર છે કે નહીં તે દર્શાવતી પ્રોબ.';

  @override
  String get gameHintWord261Canary => 'નવા સંસ્કરણને ટ્રાફિકના નાના હિસ્સામાં ખુલ્લું મૂકતી રિલીઝ પદ્ધતિ.';

  @override
  String get gameHintWord262Rolling => 'ચાલતા ઇન્સ્ટન્સને ધીમે ધીમે બદલતી અપડેટ વ્યૂહરચના.';

  @override
  String get gameHintWord263Rollback => 'અગાઉના કામ કરતા એપ્લિકેશન સંસ્કરણને પુનઃસ્થાપિત કરે છે.';

  @override
  String get gameHintWord264Rollout => 'એપ્લિકેશનના નવા સંસ્કરણનું ક્રમશઃ ડિપ્લોયમેન્ટ.';

  @override
  String get gameHintWord265Recreate => 'બદલી શરૂ કરતાં પહેલાં જૂના પોડ બંધ કરતી ડિપ્લોયમેન્ટ વ્યૂહરચના.';

  @override
  String get gameHintWord266Blue => 'બ્લૂ-ગ્રીન રિલીઝના બે પર્યાવરણમાંથી એક.';

  @override
  String get gameHintWord267Green => 'બ્લૂ-ગ્રીન રિલીઝનું બીજું પર્યાવરણ.';

  @override
  String get gameHintWord268Artifact => 'બિલ્ડ પાઇપલાઇન દ્વારા બનેલું સંસ્કરણવાળું આઉટપુટ.';

  @override
  String get gameHintWord269Staging => 'રિલીઝ ચકાસણી માટે વપરાતું પ્રી-પ્રોડક્શન પર્યાવરણ.';

  @override
  String get gameHintWord270Production => 'વાસ્તવિક અંતિમ વપરાશકર્તાઓને સેવા આપતું પર્યાવરણ.';

  @override
  String get gameHintWord271Release => 'ઉપયોગ માટે પહોંચાડેલું સૉફ્ટવેર સંસ્કરણ.';

  @override
  String get gameHintWord272Version => 'સૉફ્ટવેર રિવિઝનને અલગ પાડતો ઓળખકર્તા.';

  @override
  String get gameHintWord273Revision => 'દસ્તાવેજ કે કોડબેઝનું ઓળખી શકાય તેવું સંસ્કરણ.';

  @override
  String get gameHintWord274Webhook => 'ઘટના બને ત્યારે મોકલાતી HTTP સૂચના.';

  @override
  String get gameHintWord275Runbook => 'સિસ્ટમ ચલાવવા કે પુનઃસ્થાપિત કરવાની દસ્તાવેજિત પ્રક્રિયા.';

  @override
  String get gameHintWord276Workspace => 'કાર્યકારી પ્રોજેક્ટ રિસોર્સ ધરાવતી ડિરેક્ટરી કે વ્યાપ.';

  @override
  String get gameHintWord277Credentials => 'સિસ્ટમ એક્સેસ કરવા વપરાતી પ્રમાણીકરણ સામગ્રી.';

  @override
  String get gameHintWord278Trigger => 'પાઇપલાઇન શરૂ કરતી ઘટના કે શરત.';

  @override
  String get gameHintWord279Parameter => 'જૉબ કે ફંક્શનને આપવામાં આવતું નામિત ઇનપુટ.';

  @override
  String get gameHintWord280Access => 'અધિકૃતતાને આધીન રિસોર્સ વાપરવાની ક્ષમતા.';

  @override
  String get gameHintWord281Module => 'ઇન્ફ્રાસ્ટ્રક્ચર વ્યાખ્યાઓનો પુનઃઉપયોગી સમૂહ.';

  @override
  String get gameHintWord282Provider => 'કન્ફિગરેશનને બાહ્ય API સાથે જોડતો Terraform પ્લગઇન.';

  @override
  String get gameHintWord283Resource => 'કન્ફિગરેશનમાં જાહેર કરેલો સંચાલિત ઇન્ફ્રાસ્ટ્રક્ચર ઑબ્જેક્ટ.';

  @override
  String get gameHintWord284Variable => 'કન્ફિગરેશન કે કોડ દ્વારા વપરાતું નામિત ઇનપુટ મૂલ્ય.';

  @override
  String get gameHintWord285Output => 'ઇન્ફ્રાસ્ટ્રક્ચર કન્ફિગરેશન દ્વારા પરત કરાયેલું પ્રદર્શિત મૂલ્ય.';

  @override
  String get gameHintWord286Tfstate => 'Terraform સ્ટેટ સ્નૅપશૉટ સાથે સંકળાયેલ ફાઇલ પ્રત્યય.';

  @override
  String get gameHintWord287Tfvars => 'Terraform ઇનપુટ ચલ મૂલ્યો માટે વપરાતો ફાઇલ પ્રત્યય.';

  @override
  String get gameHintWord288Backend => 'સ્ટેટ સ્ટોરેજ નિયંત્રિત કરતું Terraform કન્ફિગરેશન.';

  @override
  String get gameHintWord289Plan => 'સૂચિત ઇન્ફ્રાસ્ટ્રક્ચર ફેરફારોનું Terraform પૂર્વાવલોકન.';

  @override
  String get gameHintWord290Apply => 'સૂચિત ફેરફારો અમલમાં મૂકતી Terraform ક્રિયા.';

  @override
  String get gameHintWord291Destroy => 'સંચાલિત ઇન્ફ્રાસ્ટ્રક્ચર દૂર કરતી Terraform ક્રિયા.';

  @override
  String get gameHintWord292Import => 'હાલના રિસોર્સને ઇન્ફ્રાસ્ટ્રક્ચર સંચાલન હેઠળ લાવે છે.';

  @override
  String get gameHintWord293Refresh => 'નોંધાયેલી સ્થિતિને વાસ્તવિક ઇન્ફ્રાસ્ટ્રક્ચર સાથે સુમેળ કરે છે.';

  @override
  String get gameHintWord294Validate => 'કન્ફિગરેશનની સિન્ટેક્સ અને આંતરિક સુસંગતતા ચકાસે છે.';

  @override
  String get gameHintWord295Fmt => 'માનક કન્ફિગરેશન ફૉર્મેટિંગ લાગુ કરતો Terraform આદેશ.';

  @override
  String get gameHintWord296Init => 'Terraform પ્રોવાઇડર અને કાર્યકારી ડિરેક્ટરી શરૂ કરે છે.';

  @override
  String get gameHintWord297Executor => 'બિલ્ડ ચલાવી શકતો Jenkins વર્કર સ્લૉટ.';

  @override
  String get gameHintWord298Dependencies => 'એક ઘટકને બીજા પહેલાં જરૂરી બનાવતા સંબંધો.';

  @override
  String get gameHintWord299Drift => 'જાહેર કરેલી અને વાસ્તવિક ઇન્ફ્રાસ્ટ્રક્ચર સ્થિતિ વચ્ચેનો તફાવત.';

  @override
  String get gameHintWord300Locking => 'એકસાથે લખનારાઓને સહિયારી સ્થિતિ બદલતા અટકાવે છે.';

  @override
  String get gameHintWord301Playbook => 'ઓટોમેશન પ્લે અને ટાસ્કનું વર્ણન કરતો Ansible દસ્તાવેજ.';

  @override
  String get gameHintWord302Inventory => 'સંચાલિત હોસ્ટ અને જૂથોનો Ansible સંગ્રહ.';

  @override
  String get gameHintWord303Facts => 'સંચાલિત હોસ્ટ વિશે એકત્ર કરેલી સિસ્ટમ માહિતી.';

  @override
  String get gameHintWord304Task => 'ઓટોમેશનમાં કામનો એક અલગ એકમ.';

  @override
  String get gameHintWord305Handler => 'ફેરફારની સૂચના મળે ત્યારે ચાલતો Ansible ટાસ્ક.';

  @override
  String get gameHintWord306Notify => 'બદલાયેલા ટાસ્ક પછી હેન્ડલરને કતારમાં મૂકતું Ansible નિર્દેશન.';

  @override
  String get gameHintWord307Become => 'વિશેષાધિકાર વધારો સક્ષમ કરતી Ansible સેટિંગ.';

  @override
  String get gameHintWord308Vault => 'સંવેદનશીલ ઓટોમેશન ડેટા એન્ક્રિપ્ટ કરવાની Ansible સુવિધા.';

  @override
  String get gameHintWord309Register => 'ટાસ્કનું પરિણામ ચલમાં સાચવતું Ansible નિર્દેશન.';

  @override
  String get gameHintWord310When => 'શરતી ટાસ્ક અમલ નિયંત્રિત કરતો Ansible કીવર્ડ.';

  @override
  String get gameHintWord311Loop => 'સંગ્રહ પર ઓટોમેશન ટાસ્કનું પુનરાવર્તન કરે છે.';

  @override
  String get gameHintWord312Include => 'પુનઃઉપયોગી ઓટોમેશન સામગ્રી ગતિશીલ રીતે લોડ કરે છે.';

  @override
  String get gameHintWord313Tags => 'ઓટોમેશન ટાસ્કના પેટાસમૂહ પસંદ કરવા વપરાતા લેબલ.';

  @override
  String get gameHintWord314Template => 'ડિપ્લોયમેન્ટ પહેલાં ચલો સાથે રેન્ડર થતી ફાઇલ.';

  @override
  String get gameHintWord315Jinja => 'Ansible દ્વારા વપરાતી ટેમ્પ્લેટ ભાષા.';

  @override
  String get gameHintWord316Abstraction => 'અમલીકરણની વિગતોને સરળ ઇન્ટરફેસ પાછળ છુપાવવી.';

  @override
  String get gameHintWord317Agile => 'પ્રતિસાદ પર ભાર મૂકતી પુનરાવર્તી સૉફ્ટવેર ડિલિવરી પદ્ધતિ.';

  @override
  String get gameHintWord318Puppet => 'ડિક્લેરેટિવ મેનિફેસ્ટ વાપરતું કન્ફિગરેશન મેનેજમેન્ટ ટૂલ.';

  @override
  String get gameHintWord319Airflow => 'વર્કફ્લો DAG શેડ્યૂલ અને ઓર્કેસ્ટ્રેટ કરવાનું પ્લેટફોર્મ.';

  @override
  String get gameHintWord320Argo => 'GitOps ડિલિવરી કન્ટ્રોલર સહિતનો ક્લાઉડ-નેટિવ પ્રોજેક્ટ પરિવાર.';

  @override
  String get gameHintWord321Rds => 'AWS સંચાલિત રિલેશનલ ડેટાબેઝ સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord322Sqs => 'AWS સંચાલિત મેસેજ કતારનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord323Sns => 'AWS પ્રકાશક-ગ્રાહક સૂચના સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord324Ses => 'AWS ઇમેઇલ મોકલવાની સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord325Iam => 'ક્લાઉડ ઓળખ અને એક્સેસ મેનેજમેન્ટનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord326Kms => 'AWS એન્ક્રિપ્શન કી મેનેજમેન્ટ સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord327Waf => 'એપ્લિકેશન-સ્તરની વેબ વિનંતીઓ ફિલ્ટર કરતું ફાયરવૉલ.';

  @override
  String get gameHintWord328Eks => 'AWS સંચાલિત Kubernetes સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord329Ecs => 'AWS સંચાલિત કન્ટેનર ઓર્કેસ્ટ્રેશન સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord330Ecr => 'AWS કન્ટેનર ઇમેજ રજિસ્ટ્રીનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord331Aurora => 'MySQL અને PostgreSQL સાથે સુસંગત AWS રિલેશનલ ડેટાબેઝ.';

  @override
  String get gameHintWord332Redshift => 'AWS વિશ્લેષણ ડેટા વેરહાઉસ.';

  @override
  String get gameHintWord333Neptune => 'AWS સંચાલિત ગ્રાફ ડેટાબેઝ.';

  @override
  String get gameHintWord334Elasticache => 'AWS સંચાલિત ઇન-મેમરી કેશિંગ સેવા.';

  @override
  String get gameHintWord335Athena => 'SQL વડે ઑબ્જેક્ટ-સ્ટોરેજ ડેટા ક્વેરી કરતી AWS સેવા.';

  @override
  String get gameHintWord336Glue => 'AWS સર્વરલેસ ડેટા ઇન્ટિગ્રેશન અને ETL સેવા.';

  @override
  String get gameHintWord337Emr => 'સંચાલિત બિગ-ડેટા પ્રોસેસિંગ ક્લસ્ટર માટેનું AWS પ્લેટફોર્મ.';

  @override
  String get gameHintWord338Lambda => 'સર્વર સંચાલિત કર્યા વિના ફંક્શન ચલાવતી AWS સેવા.';

  @override
  String get gameHintWord339Cloudfront => 'AWS વૈશ્વિક કન્ટેન્ટ ડિલિવરી નેટવર્ક.';

  @override
  String get gameHintWord340Cloudwatch => 'મેટ્રિક્સ, લૉગ અને એલાર્મ એકત્ર કરતી AWS સેવા.';

  @override
  String get gameHintWord341Cloudshell => 'AWS બ્રાઉઝર-આધારિત શેલ પર્યાવરણ.';

  @override
  String get gameHintWord342Codecommit => 'AWS સંચાલિત Git રિપોઝિટરી સેવા.';

  @override
  String get gameHintWord343Codebuild => 'સોર્સ કમ્પાઇલ કરતી અને બિલ્ડ ટેસ્ટ ચલાવતી AWS સેવા.';

  @override
  String get gameHintWord344Codedeploy => 'AWS સ્વચાલિત એપ્લિકેશન ડિપ્લોયમેન્ટ સેવા.';

  @override
  String get gameHintWord345Codepipeline => 'AWS સતત ડિલિવરી પાઇપલાઇન સેવા.';

  @override
  String get gameHintWord346Guardduty => 'AWS બુદ્ધિશાળી ધમકી શોધ સેવા.';

  @override
  String get gameHintWord347Inspector => 'નબળાઈઓ માટે વર્કલોડનું મૂલ્યાંકન કરતી AWS સેવા.';

  @override
  String get gameHintWord348Macie => 'ઑબ્જેક્ટ સ્ટોરેજમાં સંવેદનશીલ ડેટા શોધતી AWS સેવા.';

  @override
  String get gameHintWord349Shield => 'AWS સંચાલિત DDoS સુરક્ષા સેવા.';

  @override
  String get gameHintWord350Snowball => 'મોટા ડેટા ટ્રાન્સફર માટેનું AWS ભૌતિક ઉપકરણ.';

  @override
  String get gameHintWord351Snowcone => 'AWS ઑફલાઇન ટ્રાન્સફર પરિવારનું નાનું મજબૂત ઉપકરણ.';

  @override
  String get gameHintWord352Datasync => 'AWS સ્વચાલિત ઑનલાઇન ડેટા ટ્રાન્સફર સેવા.';

  @override
  String get gameHintWord353Msk => 'AWS સંચાલિત Apache Kafka સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord354Backup => 'પુનઃપ્રાપ્તિ માટે રાખેલી ડેટાની નકલ.';

  @override
  String get gameHintWord355Transcribe => 'વાણીને ટેક્સ્ટમાં ફેરવતી AWS સેવા.';

  @override
  String get gameHintWord356Translate => 'ભાષાઓ વચ્ચે ટેક્સ્ટનો અનુવાદ કરતી AWS સેવા.';

  @override
  String get gameHintWord357Rekognition => 'છબીઓ અને વિડિઓનું વિશ્લેષણ કરતી AWS સેવા.';

  @override
  String get gameHintWord358Comprehend => 'AWS કુદરતી-ભાષા વિશ્લેષણ સેવા.';

  @override
  String get gameHintWord359Textract => 'દસ્તાવેજોમાંથી ટેક્સ્ટ અને કોષ્ટકો કાઢતી AWS સેવા.';

  @override
  String get gameHintWord360Sagemaker => 'મશીન લર્નિંગ મૉડલ બનાવવા અને ડિપ્લોય કરવાનું AWS પ્લેટફોર્મ.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud નો વૈશ્વિક રીતે વિતરિત રિલેશનલ ડેટાબેઝ.';

  @override
  String get gameHintWord362Pub => 'પ્રકાશક-ગ્રાહક મેસેજિંગ પેટર્નનો પ્રકાશક ભાગ.';

  @override
  String get gameHintWord363Sub => 'પ્રકાશક-ગ્રાહક મેસેજિંગ પેટર્નનો ગ્રાહક ભાગ.';

  @override
  String get gameHintWord364Functions => 'સર્વરલેસ પ્લેટફોર્મ દ્વારા અપાતા ઘટના-સંચાલિત કોડ એકમો.';

  @override
  String get gameHintWord365App => 'સૉફ્ટવેર એપ્લિકેશનનું ટૂંકું રૂપ.';

  @override
  String get gameHintWord366Engine => 'Compute Engine જેવા નામોમાં અમલ કરતો ઘટક.';

  @override
  String get gameHintWord367Compute => 'વર્ચ્યુઅલ મશીન કે કન્ટેનર દ્વારા પૂરી પડાતી પ્રક્રિયા ક્ષમતા.';

  @override
  String get gameHintWord368Network => 'ડેટાની આપ-લે કરતી જોડાયેલી સિસ્ટમો.';

  @override
  String get gameHintWord369Security => 'ધમકીઓ સામે સિસ્ટમો અને માહિતીનું રક્ષણ.';

  @override
  String get gameHintWord370Identity => 'એક્સેસ નિર્ણયો માટે વપરાતું વપરાશકર્તા કે સેવાનું પ્રતિનિધિત્વ.';

  @override
  String get gameHintWord371Monitoring => 'સિસ્ટમની તંદુરસ્તી અને વર્તનનું સતત નિરીક્ષણ.';

  @override
  String get gameHintWord372Logging => 'એપ્લિકેશન અને સિસ્ટમની અલગ ઘટનાઓ નોંધવી.';

  @override
  String get gameHintWord373Trace => 'સેવા કૉલ્સ વચ્ચે વિનંતીના માર્ગની નોંધ.';

  @override
  String get gameHintWord374Metrics => 'સમય સાથે સિસ્ટમના વર્તનનાં આંકડાકીય માપ.';

  @override
  String get gameHintWord375Alert => 'મૉનિટર કરેલી સ્થિતિ પર ધ્યાન આપવાની જરૂર હોવાની સૂચના.';

  @override
  String get gameHintWord376Billing => 'વપરાયેલી ક્લાઉડ સેવાઓનો હિસાબ અને શુલ્ક.';

  @override
  String get gameHintWord377Quota => 'વાપરી શકાય તેવા રિસોર્સના જથ્થાની મર્યાદા.';

  @override
  String get gameHintWord378Region => 'એવેલેબિલિટી ઝોન ધરાવતો ભૌગોલિક ક્લાઉડ ડિપ્લોયમેન્ટ વિસ્તાર.';

  @override
  String get gameHintWord379Tenancy => 'ગ્રાહકો ઇન્ફ્રાસ્ટ્રક્ચર કેવી રીતે વહેંચે છે તે દર્શાવતી વ્યવસ્થા.';

  @override
  String get gameHintWord380Regional => 'ક્લાઉડ રિજન પૂરતા મર્યાદિત રિસોર્સનું વર્ણન કરે છે.';

  @override
  String get gameHintWord381Cosmos => 'Azure ના વૈશ્વિક રીતે વિતરિત મલ્ટિ-મૉડલ ડેટાબેઝનું નામ.';

  @override
  String get gameHintWord382Synapse => 'વેરહાઉસિંગ અને ડેટા પ્રોસેસિંગ જોડતું Azure વિશ્લેષણ પ્લેટફોર્મ.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft નું ક્લાઉડ-નેટિવ સુરક્ષા માહિતી અને ઘટના પ્લેટફોર્મ.';

  @override
  String get gameHintWord384Defender => 'ક્લાઉડ વર્કલોડ સુરક્ષિત કરતો Microsoft સુરક્ષા ઉત્પાદન પરિવાર.';

  @override
  String get gameHintWord385Entra => 'Azure AD બ્રાન્ડિંગનું સ્થાન લેતો Microsoft ઓળખ ઉત્પાદન પરિવાર.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager નું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord387Arc => 'Azure ની બહારના રિસોર્સ સુધી સંચાલન વિસ્તારતી Azure સેવા.';

  @override
  String get gameHintWord388Aks => 'Azure સંચાલિત Kubernetes સેવાનું સંક્ષિપ્ત રૂપ.';

  @override
  String get gameHintWord389Armor => 'Google Cloud વેબ સુરક્ષા સેવાના નામનો પ્રત્યય.';

  @override
  String get gameHintWord390Blob => 'Azure ઑબ્જેક્ટ-સ્ટોરેજ ડેટા પ્રકાર.';

  @override
  String get gameHintWord391Files => 'સંચાલિત નેટવર્ક ફાઇલ શેર આપતી Azure સેવા.';

  @override
  String get gameHintWord392Disk => 'વર્ચ્યુઅલ મશીન સાથે જોડાયેલું બ્લૉક-સ્ટોરેજ ઉપકરણ.';

  @override
  String get gameHintWord393Function => 'પરિણામ પરત કરી શકતો કૉલ કરી શકાય તેવો કોડ બ્લૉક.';

  @override
  String get gameHintWord394Logic => 'વર્કફ્લો ઇન્ટિગ્રેશન માટેની Azure એપ સેવા શ્રેણી.';

  @override
  String get gameHintWord395Insights => 'Azure એપ્લિકેશન ટેલિમેટ્રી ઉત્પાદન નામનો પ્રત્યય.';

  @override
  String get gameHintWord396Traffic => 'નેટવર્ક એન્ડપોઇન્ટ વચ્ચે વહેતો ડેટા.';

  @override
  String get gameHintWord397Manager => 'તેના કન્ટ્રોલ પ્લેન માટે Azure Resource ઉત્પાદન નામનો પ્રત્યય.';

  @override
  String get gameHintWord398Bastion => 'ખાનગી હોસ્ટ એક્સેસ માટેનું સંચાલિત અથવા સુરક્ષિત પ્રવેશ બિંદુ.';

  @override
  String get gameHintWord399Front => 'Azure વૈશ્વિક પ્રવેશ-બિંદુ સેવા Front Door નો પ્રથમ શબ્દ.';

  @override
  String get gameHintWord400Door => 'Azure વૈશ્વિક પ્રવેશ-બિંદુ સેવા Front Door નો બીજો શબ્દ.';

  @override
  String get gameHintWord401Javascript => 'બ્રાઉઝર અને Node રનટાઇમમાં વ્યાપકપણે વપરાતી પ્રોગ્રામિંગ ભાષા.';

  @override
  String get gameHintWord402Perl => 'ટેક્સ્ટ પ્રોસેસિંગ અને રેગ્યુલર એક્સપ્રેશન માટે જાણીતી સ્ક્રિપ્ટિંગ ભાષા.';

  @override
  String get gameHintWord403Powershell => 'Microsoft ની ઑબ્જેક્ટ-લક્ષી શેલ અને ઓટોમેશન ભાષા.';

  @override
  String get gameHintWord404Java => 'Jenkins બનાવવા વપરાયેલી JVM ભાષા.';

  @override
  String get gameHintWord405Json => 'ઑબ્જેક્ટ અને એરે ધરાવતું હળવું ડેટા ફૉર્મેટ.';

  @override
  String get gameHintWord406Xml => 'નેસ્ટેડ નામિત ટૅગ વાપરતું માર્કઅપ ફૉર્મેટ.';

  @override
  String get gameHintWord407Html => 'વેબ પેજનું માળખું બનાવવા વપરાતી માર્કઅપ ભાષા.';

  @override
  String get gameHintWord408Css => 'વેબ રજૂઆત નિયંત્રિત કરતી સ્ટાઇલશીટ ભાષા.';

  @override
  String get gameHintWord409String => 'ટેક્સ્ટ અક્ષરોનો ક્રમ.';

  @override
  String get gameHintWord410Array => 'તત્વોનો અનુક્રમિત સંગ્રહ.';

  @override
  String get gameHintWord411Hash => 'Ruby અને Perl માં સાહચર્યાત્મક કી-વેલ્યુ સંગ્રહ.';

  @override
  String get gameHintWord412Object => 'ગુણધર્મો અને વર્તન ધરાવતું રનટાઇમ મૂલ્ય.';

  @override
  String get gameHintWord413Class => 'ક્લાસ-આધારિત ભાષાઓમાં ઑબ્જેક્ટ બનાવવા વપરાતી વ્યાખ્યા.';

  @override
  String get gameHintWord414Method => 'ઑબ્જેક્ટ કે ક્લાસ સાથે સંકળાયેલું ફંક્શન.';

  @override
  String get gameHintWord415Interface => 'ઘટક પ્રદર્શિત કરતી ક્રિયાઓનું વર્ણન કરતો કરાર.';

  @override
  String get gameHintWord416Subclass => 'અન્ય ક્લાસમાંથી ઉતરી આવેલો ક્લાસ.';

  @override
  String get gameHintWord417Super => 'પેરન્ટ-ક્લાસનું વર્તન બોલાવવા વપરાતો કીવર્ડ.';

  @override
  String get gameHintWord418Protected => 'ક્લાસ સંબંધિત સંદર્ભો સુધી એક્સેસ મર્યાદિત કરતું દૃશ્યતા સ્તર.';

  @override
  String get gameHintWord419Exception => 'સામાન્ય નિયંત્રણ પ્રવાહમાં અવરોધ લાવતી રનટાઇમ સ્થિતિ.';

  @override
  String get gameHintWord420Regex => 'ટેક્સ્ટ મેળ કરવા વપરાતી પેટર્ન સંકેતલિપિ.';

  @override
  String get gameHintWord421Lexical => 'સોર્સ-કોડના માળખાથી નક્કી થતા સ્કોપનું વર્ણન કરે છે.';

  @override
  String get gameHintWord422Scalar => 'Perl માં એકલ-મૂલ્યવાળી ચલ શ્રેણી.';

  @override
  String get gameHintWord423Tuple => 'Python માં અપરિવર્તનીય ક્રમબદ્ધ સંગ્રહ.';

  @override
  String get gameHintWord424List => 'Python માં પરિવર્તનશીલ ક્રમબદ્ધ સંગ્રહ.';

  @override
  String get gameHintWord425Dict => 'Python નું બિલ્ટ-ઇન મેપિંગ પ્રકારનું નામ.';

  @override
  String get gameHintWord426Dictionary => 'કીને સંકળાયેલા મૂલ્યો સાથે જોડતો સંગ્રહ.';

  @override
  String get gameHintWord427Set => 'અલગ મૂલ્યોનો સંગ્રહ.';

  @override
  String get gameHintWord428Boolean => 'સાચું કે ખોટું દર્શાવતો ડેટા પ્રકાર.';

  @override
  String get gameHintWord429Integer => 'પૂર્ણ સંખ્યાઓ દર્શાવતો આંકડાકીય પ્રકાર.';

  @override
  String get gameHintWord430Float => 'ફ્લોટિંગ-પૉઇન્ટ મૂલ્યો દર્શાવતો આંકડાકીય પ્રકાર.';

  @override
  String get gameHintWord431Double => 'ડબલ-પ્રિસિઝન ફ્લોટિંગ-પૉઇન્ટ પ્રકાર.';

  @override
  String get gameHintWord432Null => 'ઑબ્જેક્ટ કે પરિણામની ગેરહાજરી દર્શાવતું મૂલ્ય.';

  @override
  String get gameHintWord433Undefined => 'ગુમ થયેલા નિયત મૂલ્ય માટેનું JavaScript મૂલ્ય.';

  @override
  String get gameHintWord434Promise => 'અંતે મળનારા અસમકાલીન પરિણામને દર્શાવતો JavaScript ઑબ્જેક્ટ.';

  @override
  String get gameHintWord435Async => 'અસમકાલીન ફંક્શન ચિહ્નિત કરતો કીવર્ડ.';

  @override
  String get gameHintWord436Await => 'અસમકાલીન પરિણામની રાહ જોતો કીવર્ડ.';

  @override
  String get gameHintWord437Callback => 'અન્ય ક્રિયા દ્વારા બોલાવવા માટે અપાતું ફંક્શન.';

  @override
  String get gameHintWord438Closure => 'આસપાસના લેક્સિકલ સ્કોપની એક્સેસ જાળવતું ફંક્શન.';

  @override
  String get gameHintWord439Generator => 'yield કરેલા મૂલ્યો દ્વારા ક્રમ આળસથી બનાવતું ફંક્શન.';

  @override
  String get gameHintWord440Iterator => 'સંગ્રહના મૂલ્યોમાંથી આગળ વધતો ઑબ્જેક્ટ.';

  @override
  String get gameHintWord441Print => 'મૂલ્યને આઉટપુટમાં લખતું સામાન્ય ફંક્શન.';

  @override
  String get gameHintWord442Input => 'સ્ટાન્ડર્ડ ઇનપુટમાંથી એક લીટી વાંચતું Python ફંક્શન.';

  @override
  String get gameHintWord443Open => 'ફાઇલ હેન્ડલ મેળવવા વપરાતું ફંક્શન.';

  @override
  String get gameHintWord444Close => 'ખુલ્લી ફાઇલ કે જોડાણ મુક્ત કરતી ક્રિયા.';

  @override
  String get gameHintWord445Read => 'સ્ટ્રીમ કે ફાઇલમાંથી ડેટા મેળવતી ક્રિયા.';

  @override
  String get gameHintWord446Write => 'સ્ટ્રીમ કે ફાઇલમાં ડેટા મોકલતી ક્રિયા.';

  @override
  String get gameHintWord447Append => 'સંગ્રહના અંતે એક આઇટમ ઉમેરે છે.';

  @override
  String get gameHintWord448Split => 'વિભાજકનો ઉપયોગ કરી ટેક્સ્ટને પેટા-સ્ટ્રિંગમાં તોડે છે.';

  @override
  String get gameHintWord449Join => 'વિભાજક વડે સ્ટ્રિંગના ક્રમને જોડે છે.';

  @override
  String get gameHintWord450Strip => 'Python સ્ટ્રિંગની આસપાસની વ્હાઇટસ્પેસ દૂર કરે છે.';

  @override
  String get gameHintWord451Chomp => 'Perl કે Ruby માં અંતનો રેકોર્ડ વિભાજક દૂર કરે છે.';

  @override
  String get gameHintWord452Map => 'સંગ્રહની દરેક આઇટમ પર રૂપાંતર લાગુ કરે છે.';

  @override
  String get gameHintWord453Filter => 'શરત સંતોષતી સંગ્રહ આઇટમ રાખે છે.';

  @override
  String get gameHintWord454Reduce => 'સંગ્રહને એકત્રિત પરિણામમાં જોડે છે.';

  @override
  String get gameHintWord455Range => 'પૂર્ણાંકોનો ગાણિતિક ક્રમ દર્શાવતો Python પ્રકાર.';

  @override
  String get gameHintWord456Length => 'સંગ્રહનું કદ પરત કરતો ગુણધર્મ કે મેથડ.';

  @override
  String get gameHintWord457Len => 'સંગ્રહનું કદ પરત કરતું Python બિલ્ટ-ઇન ફંક્શન.';

  @override
  String get gameHintWord458Type => 'ઑબ્જેક્ટનો પ્રકાર પરત કરતું Python ફંક્શન.';

  @override
  String get gameHintWord459Isinstance => 'પ્રકાર વંશવેલામાં સભ્યપદ ચકાસતું Python ફંક્શન.';

  @override
  String get gameHintWord460Yield => 'જનરેટરમાંથી મૂલ્ય ઉત્પન્ન કરતો કીવર્ડ.';

  @override
  String get gameHintWord461Saas => 'સંપૂર્ણ સૉફ્ટવેર એપ્લિકેશનો પૂરી પાડતું ક્લાઉડ મૉડલ.';

  @override
  String get gameHintWord462Paas => 'સંચાલિત એપ્લિકેશન વિકાસ પ્લેટફોર્મ પૂરું પાડતું ક્લાઉડ મૉડલ.';

  @override
  String get gameHintWord463Iaas => 'વર્ચ્યુઅલ કમ્પ્યુટ, સ્ટોરેજ અને નેટવર્કિંગ પૂરું પાડતું ક્લાઉડ મૉડલ.';

  @override
  String get gameHintWord464Hybrid => 'ખાનગી અને જાહેર ઇન્ફ્રાસ્ટ્રક્ચરને જોડતો ક્લાઉડ અભિગમ.';

  @override
  String get gameHintWord465Archive => 'ભાગ્યે જ વપરાતા ડેટાનો લાંબા ગાળાનો સંગ્રહ.';

  @override
  String get gameHintWord466Public => 'અનેક ગ્રાહકોને સેવાઓ આપતું ક્લાઉડ માલિકી મૉડલ.';

  @override
  String get gameHintWord467Private => 'એક જ સંસ્થા માટે સમર્પિત ક્લાઉડ મૉડલ.';

  @override
  String get gameHintWord468Scalability => 'રિસોર્સ ઉમેરીને વધતા લોડને સંભાળવાની ક્ષમતા.';

  @override
  String get gameHintWord469Availability => 'જરૂર પડે ત્યારે સેવા કેટલી હદે ઉપલબ્ધ રહે છે તેનું પ્રમાણ.';

  @override
  String get gameHintWord470Resilience => 'નિષ્ફળતાઓને સહન કરવાની અને તેમાંથી પુનઃપ્રાપ્ત થવાની ક્ષમતા.';

  @override
  String get gameHintWord471Redundancy => 'એક જ નિષ્ફળતા બિંદુ ઘટાડતા નકલી ઘટકો.';

  @override
  String get gameHintWord472Disaster => 'પુનઃપ્રાપ્તિ વ્યૂહરચના દ્વારા સંભાળાતી મોટી આઉટેજ.';

  @override
  String get gameHintWord473Recovery => 'નિષ્ફળતા પછી સેવા કે ડેટા પુનઃસ્થાપિત કરવો.';

  @override
  String get gameHintWord474Replicate => 'ડેટા કે વર્કલોડને બીજા સ્થળે નકલ કરવા.';

  @override
  String get gameHintWord475Snapshotting => 'ડેટા કે સિસ્ટમ સ્થિતિની ચોક્કસ સમયની નકલો લેવી.';

  @override
  String get gameHintWord476Restore => 'સાચવેલી નકલમાંથી ડેટા પુનઃપ્રાપ્ત કરવાની ક્રિયા.';

  @override
  String get gameHintWord477Residency => 'સંગ્રહિત ડેટાનું ભૌગોલિક સ્થાન નક્કી કરતી આવશ્યકતા.';

  @override
  String get gameHintWord478Compliance => 'જરૂરી નિયમનો અને સંસ્થાકીય નિયંત્રણોનું પાલન.';

  @override
  String get gameHintWord479Governance => 'ટેકનોલોજી વપરાશ નિયંત્રિત કરતી નીતિઓ અને પ્રક્રિયાઓ.';

  @override
  String get gameHintWord480Audit => 'નોંધાયેલી પ્રવૃત્તિઓ અને અનુપાલન પુરાવાની સમીક્ષા.';

  @override
  String get gameHintWord481Token => 'અધિકૃતતા કે ઓળખ દર્શાવતું પ્રમાણપત્ર કે પ્રતીક.';

  @override
  String get gameHintWord482Oauth => 'સોંપાયેલ એક્સેસની મંજૂરી આપતું અધિકૃતતા ફ્રેમવર્ક.';

  @override
  String get gameHintWord483Saml => 'એન્ટરપ્રાઇઝ સિંગલ સાઇન-ઑન માટે સામાન્ય XML-આધારિત ધોરણ.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell પાઇપલાઇનમાં વપરાતો વિશિષ્ટ આદેશ.';

  @override
  String get gameHintWord485Algorithm => 'ગણતરીની સમસ્યા ઉકેલવા માટેનાં પગલાંનો નિર્ધારિત ક્રમ.';

  @override
  String get gameHintWord486Key => 'એન્ક્રિપ્શન નિયંત્રિત કરવા કે સંગ્રહિત ડેટા ઓળખવા વપરાતું મૂલ્ય.';

  @override
  String get gameHintWord487Alias => 'શેલ આદેશ કે રિસોર્સનું વૈકલ્પિક નામ.';

  @override
  String get gameHintWord488Amend => 'સૌથી તાજેતરની કમિટ બદલતો Git કમિટ વિકલ્પ.';

  @override
  String get gameHintWord489Allsigned => 'સહી કરેલી સ્ક્રિપ્ટ જરૂરી બનાવતી PowerShell એક્ઝિક્યુશન પૉલિસી.';

  @override
  String get gameHintWord490Remotesigned => 'ડાઉનલોડ કરેલી સ્ક્રિપ્ટ પર સહી જરૂરી બનાવતી PowerShell પૉલિસી.';

  @override
  String get gameHintWord491Acl => 'વપરાશકર્તાઓ કે સિસ્ટમો માટે પરવાનગીઓ નક્કી કરતી યાદી.';

  @override
  String get gameHintWord492Uid => 'Unix વપરાશકર્તાને અપાતો આંકડાકીય ઓળખકર્તા.';

  @override
  String get gameHintWord493Setgid => 'અમલ કે વારસા દરમિયાન ગ્રૂપ ઓળખને અસર કરતો પરવાનગી બિટ.';

  @override
  String get gameHintWord494Setfacl => 'ફાઇલ એક્સેસ કંટ્રોલ લિસ્ટ સેટ કરતો Linux આદેશ.';

  @override
  String get gameHintWord495Isolation => 'વર્કલોડને એકબીજામાં દખલ કરતા અટકાવતું વિભાજન.';

  @override
  String get gameHintWord496Sighup => 'ઘણીવાર કન્ફિગરેશન ફરી લોડ કરવા વિનંતી માટે વપરાતો Unix હેંગઅપ સિગ્નલ.';

  @override
  String get gameHintWord497Sigint => 'સામાન્ય રીતે Control-C વડે બનતો Unix ઇન્ટરપ્ટ સિગ્નલ.';

  @override
  String get gameHintWord498Sigstop => 'પ્રક્રિયાને સમાપ્ત કર્યા વિના થોભાવતો Unix સિગ્નલ.';

  @override
  String get gameHintWord499Secrets => 'પાસવર્ડ અને એક્સેસ કી જેવા સંવેદનશીલ મૂલ્યો.';

  @override
  String get gameHintWord500Secure => 'અનધિકૃત એક્સેસ સામે સુરક્ષિત જોડાણનું વર્ણન કરે છે.';

  @override
  String get fontSettingsTitle => 'ફૉન્ટ';

  @override
  String get fontChangeFont => 'ફૉન્ટ બદલો';

  @override
  String get fontSystemDefault => 'સિસ્ટમ ડિફૉલ્ટ';

  @override
  String get fontPreview => 'પૂર્વાવલોકન';

  @override
  String get fontPreviewSample => 'એક-એક પ્રશ્ન દ્વારા DevOps શીખો';

  @override
  String get fontSelected => 'પસંદ કરેલ';

  @override
  String get fontLatinOnlyNote => 'કસ્ટમ ફૉન્ટ લેટિન અક્ષરો પર લાગુ થાય છે. અન્ય લિપિઓ તમારા ઉપકરણના ફૉન્ટમાં જ રહેશે.';

  @override
  String get fontDescSystem => 'તમારા ઉપકરણનો બિલ્ટ-ઇન ફૉન્ટ';

  @override
  String get fontDescGeometric => 'ભૌમિતિક સૅન્સ-સેરિફ';

  @override
  String get fontDescGeometricRounded => 'ભૌમિતિક ગોળાકાર સૅન્સ-સેરિફ';

  @override
  String get fontDescFriendly => 'મૈત્રીપૂર્ણ સૅન્સ-સેરિફ';

  @override
  String get fontDescCondensed => 'સંકુચિત';

  @override
  String get fontDescRounded => 'ગોળાકાર સૅન્સ-સેરિફ';

  @override
  String get fontDescRoundedDisplay => 'ગોળાકાર ડિસ્પ્લે';

  @override
  String gameScene3dScene(String value1) {
    return '3D દૃશ્ય $value1';
  }
}
