// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appTour => 'ଆପ୍ ପରିଚୟ';

  @override
  String get skipTour => 'ପରିଚୟ ଛାଡ଼ନ୍ତୁ';

  @override
  String get finishTour => 'ପରିଚୟ ଶେଷ କରନ୍ତୁ';

  @override
  String tourStep(int current, int total) {
    return 'ପଦକ୍ଷେପ $current / $total';
  }

  @override
  String get tourMenuTitle => 'ନେଭିଗେସନ୍ ମେନୁ';

  @override
  String get tourSearch => 'ସମ୍ବନ୍ଧିତ କୁଇଜ୍ ଶ୍ରେଣୀ ଖୋଜିବାକୁ ଏଠାରେ ବିଷୟ ଲେଖନ୍ତୁ।';

  @override
  String get tourCategory => 'ମିଶ୍ର କୁଇଜ୍ ପାଇଁ DevOps ଟ୍ୟାପ୍ କରନ୍ତୁ। ଅନ୍ୟ ଶ୍ରେଣୀରେ ପ୍ରଶ୍ନ ସେଟ୍ ଅଛି। ପରେ ପଢ଼ିବାକୁ ପ୍ରଶ୍ନ ବୁକମାର୍କ କରନ୍ତୁ।';

  @override
  String get tourMenu => 'ନେଭିଗେସନ୍ ମେନୁ ଖୋଲିବାକୁ ଏହି ବଟନ୍ ଟ୍ୟାପ୍ କରନ୍ତୁ।';

  @override
  String get tourLearning => 'କାର୍ଡ ପାଇଁ ଶିକ୍ଷଣ ଖୋଲନ୍ତୁ। ଯେକୌଣସି ଦିଗରେ ସ୍ୱାଇପ୍ କରନ୍ତୁ, ଶଫଲ୍ କରନ୍ତୁ, ସ୍ୱୟଂଚାଳିତ ପରିବର୍ତ୍ତନ ଚାଲୁ କରନ୍ତୁ କିମ୍ବା କାର୍ଡ ବୁକମାର୍କ କରନ୍ତୁ।';

  @override
  String get tourGames => 'ଖେଳ ଖେଳି ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ। ସ୍ତରଭିତ୍ତିକ ଖେଳରେ ପ୍ରତି ସମ୍ପୂର୍ଣ୍ଣ ସ୍ତର ପାଇଁ 100 ପଏଣ୍ଟ ମିଳେ; ସୂଚନାର ମୂଲ୍ୟ 20 ପଏଣ୍ଟ।';

  @override
  String get tourAchievements => 'ଆପଣଙ୍କ ସଫଳତା ଏଠାରେ ଦେଖନ୍ତୁ। ନୂଆ ସଫଳତା ଓ ଉପଲବ୍ଧ ଥିମ୍ ପପଅପ୍‌ରେ ଦେଖାଯାଏ।';

  @override
  String get tourSettings => 'ଭାଷା, ଥିମ୍ ଓ ଶବ୍ଦ ବାଛନ୍ତୁ। ବୁକମାର୍କ ପାଇଁ ସଞ୍ଚିତ ତଥ୍ୟ କିମ୍ବା ଏହି ଗାଇଡ୍ ପୁଣି ଦେଖିବାକୁ ଆପ୍ ପରିଚୟ ଖୋଲନ୍ତୁ।';

  @override
  String get achievementUnlocked => 'ସଫଳତା ଅନଲକ୍ ହେଲା!';

  @override
  String get themeUnlocked => 'ନୂଆ ଥିମ୍ ଉପଲବ୍ଧ!';

  @override
  String get themeUnlockedMessage => 'ଏବେ ସେଟିଂସ୍ > ଥିମ୍‌ରେ ଏହି ଥିମ୍ ବାଛିପାରିବେ।';

  @override
  String get gameSounds => 'ଖେଳର ଶବ୍ଦ';

  @override
  String get gameSoundsDescription => 'ଖେଳ ଓ କୁଇଜ୍ ପାଇଁ ଶବ୍ଦ ପ୍ରଭାବ। ଡିଭାଇସ୍‌ର ଭଲ୍ୟୁମ୍ ଓ ସାଇଲେଣ୍ଟ ମୋଡ୍ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get testSound => 'ଶବ୍ଦ ପରୀକ୍ଷା କରନ୍ତୁ';

  @override
  String get soundSettingBusy => 'ଦୟାକରି ଅପେକ୍ଷା କରନ୍ତୁ...';

  @override
  String get soundSettingError => 'ଶବ୍ଦ ସେଟିଂ ଲୋଡ୍ କିମ୍ବା ସଞ୍ଚୟ ହୋଇପାରିଲା ନାହିଁ। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get soundPlaybackError => 'ଶବ୍ଦ ବଜାଇ ହେଲା ନାହିଁ। ଡିଭାଇସ୍ କିମ୍ବା ବ୍ରାଉଜରର ଅଡିଓ ସେଟିଂ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get saveData => 'ସଞ୍ଚିତ ତଥ୍ୟ';

  @override
  String get learningTranslationUnavailable => 'ଏହି କାର୍ଡଟି ଏପର୍ଯ୍ୟନ୍ତ ଚୟନିତ ଭାଷାରେ ଅନୁବାଦ ହୋଇନାହିଁ।';

  @override
  String get saveQuestion => 'ପ୍ରଶ୍ନ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String defaultPortQuestion(String service) {
    return '$service ର ଡିଫଲ୍ଟ ପୋର୍ଟ କେଉଁଟି?';
  }

  @override
  String get removeSavedItem => 'ସଞ୍ଚିତ ତାଲିକାରୁ ହଟାନ୍ତୁ';

  @override
  String get noSavedData => 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ସଞ୍ଚୟ ହୋଇନାହିଁ। ଶିକ୍ଷଣ କାର୍ଡ କିମ୍ବା କୁଇଜ୍ ପ୍ରଶ୍ନ ବୁକମାର୍କ କରନ୍ତୁ।';

  @override
  String get savedDataError => 'ସଞ୍ଚିତ ତଥ୍ୟ ଲୋଡ୍ କିମ୍ବା ଅଦ୍ୟତନ ହୋଇପାରିଲା ନାହିଁ। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get savedItemUnavailable => 'ଏହି ସଞ୍ଚିତ ବିଷୟ ଆଉ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get correctAnswer => 'ସଠିକ୍ ଉତ୍ତର';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get certificates => 'ପ୍ରମାଣପତ୍ର';

  @override
  String get whatsNew => 'ନୂଆ କଣ ଅଛି';

  @override
  String get settings => 'ସେଟିଂସ୍';

  @override
  String get darkMode => 'ଡାର୍କ ମୋଡ୍';

  @override
  String get lightMode => 'ଲାଇଟ୍ ମୋଡ୍';

  @override
  String get language => 'ଭାଷା';

  @override
  String get selectLanguage => 'ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'କ୍ୱିଜ୍ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'ବର୍ଗ ବଦଳାନ୍ତୁ';

  @override
  String get dailyQuiz => 'ଦୈନିକ କ୍ୱିଜ୍';

  @override
  String get dailyQuizCompleted => 'ଦୈନିକ କ୍ୱିଜ୍ ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get dailyQuizCompletedMessage => 'ଆପଣ ଆଜିର ଦୈନିକ କ୍ୱିଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରିଛନ୍ତି। ନୂଆ ଚ୍ୟାଲେଞ୍ଜ୍ ପାଇଁ ଆସନ୍ତାକାଲି ଆସନ୍ତୁ!';

  @override
  String get leaderboard => 'ଲିଡରବୋର୍ଡ୍';

  @override
  String get shareApp => 'ଆପ୍ ଅଂଶୀଦାର କରନ୍ତୁ';

  @override
  String get rateApp => 'ଆପ୍‌କୁ ମୂଲ୍ୟାଙ୍କନ କରନ୍ତୁ';

  @override
  String get about => 'ବିଷୟରେ';

  @override
  String get ok => 'ଠିକ୍ ଅଛି';

  @override
  String get home => 'ମୁଖ୍ୟ ପୃଷ୍ଠା';

  @override
  String get games => 'ଖେଳ';

  @override
  String get referAndEarn => 'ବନ୍ଧୁଙ୍କୁ ଆମନ୍ତ୍ରଣ କରି ଅର୍ଜନ କରନ୍ତୁ';

  @override
  String get themes => 'ଥିମ୍';

  @override
  String get version => 'ସଂସ୍କରଣ';

  @override
  String get developer => 'ଡେଭେଲପର୍';

  @override
  String get contact => 'ଯୋଗାଯୋଗ';

  @override
  String get learning => 'ଶିକ୍ଷା';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'ମୋ ସହିତ ଯୋଡ଼ି ହୁଅନ୍ତୁ';

  @override
  String get aboutDescription => 'DevOps Quizରେ Linux, Docker, Kubernetes ଏବଂ ଅନ୍ୟ DevOps ବିଷୟ ଶିଖି ସାକ୍ଷାତକାର ଓ ପ୍ରମାଣପତ୍ର ପାଇଁ ପ୍ରସ୍ତୁତ ହୁଅନ୍ତୁ।';

  @override
  String get quizResult => 'କ୍ୱିଜ୍ ଫଳାଫଳ';

  @override
  String get outstanding => 'ଅତ୍ୟନ୍ତ ଭଲ!';

  @override
  String get greatJob => 'ବହୁତ ଭଲ କରିଛନ୍ତି!';

  @override
  String get goodEffort => 'ଭଲ ଚେଷ୍ଟା!';

  @override
  String get keepPracticing => 'ଅଭ୍ୟାସ ଜାରି ରଖନ୍ତୁ!';

  @override
  String get dontGiveUp => 'ହାର ମାନନ୍ତୁ ନାହିଁ!';

  @override
  String get shareMessage1 => 'ମୋ ସ୍କୋର୍';

  @override
  String get shareMessage2 => 'DevOps କ୍ୱିଜ୍‌ରେ!';

  @override
  String get downloadApp => 'ଆପ୍ ଡାଉନ୍‌ଲୋଡ୍ କରନ୍ତୁ:';

  @override
  String get score => 'ସ୍କୋର୍';

  @override
  String get points => 'ପଏଣ୍ଟ୍';

  @override
  String get percentage => 'ଶତକଡ଼ା';

  @override
  String get bonus => 'ବୋନସ୍';

  @override
  String get perfectScoreBonus => 'ସମ୍ପୂର୍ଣ୍ଣ ସ୍କୋର୍ ବୋନସ୍';

  @override
  String get shareScore => 'ସ୍କୋର୍ ଅଂଶୀଦାର କରନ୍ତୁ';

  @override
  String get restartQuiz => 'କ୍ୱିଜ୍ ପୁଣି ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get backToCategories => 'ବର୍ଗଗୁଡ଼ିକୁ ଫେରନ୍ତୁ';

  @override
  String get greatProgress => 'ଭଲ କରିଛନ୍ତି! ଆପଣ ଭଲ ପ୍ରଗତି କରୁଛନ୍ତି।';

  @override
  String get practiceMore => 'ଭଲ ଚେଷ୍ଟା! ଅଧିକ ଅଭ୍ୟାସରେ ସ୍କୋର୍ ବଢ଼ିବ।';

  @override
  String get keepLearning => 'ଶିଖିବା ଜାରି ରଖି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get everyExpertStarted => 'ପ୍ରତ୍ୟେକ ବିଶେଷଜ୍ଞ ପ୍ରଥମେ ଶିକ୍ଷାର୍ଥୀ ଥିଲେ। ଅଭ୍ୟାସ ଜାରି ରଖନ୍ତୁ!';

  @override
  String get quizInstructions => 'କ୍ୱିଜ୍ ନିର୍ଦ୍ଦେଶାବଳୀ';

  @override
  String get instruction1 => 'ପ୍ରତ୍ୟେକ ସେଟ୍‌ରେ 25 ପ୍ରଶ୍ନ ଅଛି।';

  @override
  String get instruction2 => 'ପ୍ରତ୍ୟେକ ପ୍ରଶ୍ନ ପାଇଁ 30 ସେକେଣ୍ଡ୍ ଅଛି।';

  @override
  String get instruction3 => 'ସବୁଜ = ଠିକ୍ ଉତ୍ତର।';

  @override
  String get instruction4 => 'ଲାଲ୍ = ଭୁଲ୍ ଉତ୍ତର।';

  @override
  String get instruction5 => 'ଉତ୍ତର ବଦଳାଇ ପାରିବେ ନାହିଁ।';

  @override
  String get instruction6 => 'ପଛକୁ ବଟନ୍ କେବଳ ସମୀକ୍ଷା ପାଇଁ।';

  @override
  String get instruction7 => 'ସମ୍ପୂର୍ଣ୍ଣ ପରେ ସ୍କୋର୍ ଦେଖାଯାଏ।';

  @override
  String get instruction8 => 'ପ୍ରତ୍ୟେକ ସଠିକ୍ ଉତ୍ତର ପାଇଁ 10 ପଏଣ୍ଟ ମିଳେ।';

  @override
  String excellentPerformance(Object expert) {
    return 'ଉତ୍କୃଷ୍ଟ ପ୍ରଦର୍ଶନ! ଆପଣ ଜଣେ $expert।';
  }

  @override
  String get selectCategory => 'ବର୍ଗ ବାଛନ୍ତୁ';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'ସେଟ୍ ବାଛନ୍ତୁ';

  @override
  String get set => 'ସେଟ୍';

  @override
  String get questions => 'ପ୍ରଶ୍ନ';

  @override
  String get noScoresYet => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ସ୍କୋର୍ ନାହିଁ';

  @override
  String get pointsShort => 'ପଏଣ୍ଟ୍';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quizକୁ ସ୍ୱାଗତ';

  @override
  String hiUser(String name) {
    return 'ନମସ୍କାର $name';
  }

  @override
  String get challengeMode => 'ଚ୍ୟାଲେଞ୍ଜ୍ ମୋଡ୍';

  @override
  String get challenge => 'ଚ୍ୟାଲେଞ୍ଜ୍';

  @override
  String get question => 'ପ୍ରଶ୍ନ';

  @override
  String get reward => 'ପୁରସ୍କାର';

  @override
  String get survivalMode => 'ସର୍ଭାଇଭାଲ୍ ମୋଡ୍';

  @override
  String get speedChallenge => 'ଗତି ଚ୍ୟାଲେଞ୍ଜ୍';

  @override
  String get dailyChallenge => 'ଦୈନିକ ଚ୍ୟାଲେଞ୍ଜ୍';

  @override
  String get ultimateChallenge => 'ଅନ୍ତିମ ଚ୍ୟାଲେଞ୍ଜ୍';

  @override
  String get timeLeft => 'ଅବଶିଷ୍ଟ ସମୟ';

  @override
  String get completed => 'ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get locked => 'ଲକ୍ ହୋଇଛି';

  @override
  String get back => 'ପଛକୁ';

  @override
  String get next => 'ପରବର୍ତ୍ତୀ';

  @override
  String get submit => 'ଦାଖଲ କରନ୍ତୁ';

  @override
  String get achievements => 'ସଫଳତା';

  @override
  String get streak => 'ଲଗାତାର ଦିନ';

  @override
  String get days => 'ଦିନ';

  @override
  String get tomorrowsReward => 'ଆସନ୍ତାକାଲିର ପୁରସ୍କାର';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 ମୋ ସ୍କୋର୍ $score/$totalQuestions #DevOps Quiz!\n\n🏆 ପଏଣ୍ଟ୍: $earnedPoints\n🔥 ବୋନସ୍: $bonusPoints\n📊 ଶତକଡ଼ା: $percentage%\n\nଆପ୍ ଡାଉନ୍‌ଲୋଡ୍ କରନ୍ତୁ:';
  }

  @override
  String get gameUiSpinWheel => 'ଚକ ଘୁରାନ୍ତୁ';

  @override
  String get gameUiSpinAndWinBonusPoints => 'ଘୁରାନ୍ତୁ ଏବଂ ବୋନସ୍ ପଏଣ୍ଟ ଜିତନ୍ତୁ';

  @override
  String get gameUiScratchCard => 'ସ୍କ୍ରାଚ୍ କାର୍ଡ';

  @override
  String get gameUiScratchToRevealAReward => 'ପୁରସ୍କାର ପ୍ରକାଶ କରିବାକୁ ସ୍କ୍ରାଚ୍ କରନ୍ତୁ';

  @override
  String get gameUiLuckySlots => 'ଲକି ସ୍ଲଟ୍ସ';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'ସ୍ଲଟ୍ ଘୁରାନ୍ତୁ ଏବଂ ପଏଣ୍ଟ ଜିତନ୍ତୁ';

  @override
  String get gameUiMysteryDeal => 'ରହସ୍ୟ ଡିଲ୍';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ଏକ ରହସ୍ୟ ବାକ୍ସ ବାଛନ୍ତୁ ଏବଂ ଉତ୍ତର ଦିଅନ୍ତୁ';

  @override
  String get gameUiMemoryMatch => 'ମେମୋରୀ ମ୍ୟାଚ୍';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps ଯୋଡ଼ି ମିଳାନ୍ତୁ';

  @override
  String get gameUiWordGuess => 'ଶବ୍ଦ ଅନୁମାନ';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'ସ୍ତରଗୁଡ଼ିକ ମାଧ୍ୟମରେ DevOps ଶବ୍ଦ ଅନୁମାନ କରନ୍ତୁ';

  @override
  String get gameUiFindWords => 'ଶବ୍ଦ ଖୋଜନ୍ତୁ';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ଲୁକ୍କାୟିତ DevOps ଶବ୍ଦ ପାଇଁ ଗ୍ରିଡ୍ ଖୋଜନ୍ତୁ';

  @override
  String get gameUiSpotTheDifference => 'ପାର୍ଥକ୍ୟ ଚିହ୍ନଟ କରନ୍ତୁ';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'ଦୁଇଟି ଚିତ୍ରିତ ଦୃଶ୍ୟ ମଧ୍ୟରେ ପାଞ୍ଚଟି ପରିବର୍ତ୍ତନ ଖୋଜନ୍ତୁ';

  @override
  String get gameUiJigsawPuzzle => 'ଜିଗ୍ସ ପଜଲ୍';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'ଶେୟାର୍ କରାଯାଇଥିବା HD ପଶୁ ଓ ପ୍ରକୃତି ଚିତ୍ର ପୁନଃନିର୍ମାଣ କରନ୍ତୁ';

  @override
  String get gameUiHighOrLow => 'ଅଧିକ କିମ୍ବା କମ୍';

  @override
  String get gameUiBuildAStreak => 'ଧାରାବାହିକ ବିଜୟ ଗଢ଼ନ୍ତୁ';

  @override
  String get gameUiTrueOrFalseBlitz => 'ସତ୍ୟ କିମ୍ବା ମିଥ୍ୟା ବ୍ଲିଟ୍ଜ୍';

  @override
  String get gameUiQuickAnswerQuiz => 'ଶୀଘ୍ର ଉତ୍ତର କୁଇଜ୍';

  @override
  String get gameUiCommandMatch => 'କମାଣ୍ଡ ମ୍ୟାଚ୍';

  @override
  String get gameUiMatchCommandsToMeanings => 'କମାଣ୍ଡଗୁଡ଼ିକୁ ସେମାନଙ୍କ ଅର୍ଥ ସହ ମିଳାନ୍ତୁ';

  @override
  String get gameUiPortMaster => 'ପୋର୍ଟ ମାଷ୍ଟର';

  @override
  String get gameUiGuessDefaultPorts => 'ଡିଫଲ୍ଟ ପୋର୍ଟ ଅନୁମାନ କରନ୍ତୁ';

  @override
  String get gameUiTicTacToe => 'ଟିକ୍-ଟ୍ୟାକ୍-ଟୋ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X ଶୂନ୍ୟ ଓ କ୍ରସ୍ କମ୍ପ୍ୟୁଟର';

  @override
  String get gameUiConnectFour => 'କନେକ୍ଟ ଫୋର୍';

  @override
  String get gameUiDropFourDiscs => 'ଚାରିଟି ଡିସ୍କ ପକାନ୍ତୁ';

  @override
  String get gameUiLudo => 'ଲୁଡୋ';

  @override
  String get gameUiRaceAgainstBots => 'ବଟ୍ ବିରୁଦ୍ଧରେ ଦୌଡ଼ନ୍ତୁ';

  @override
  String get gameUiChess => 'ଚେସ୍';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'ଚେସ୍ ବୋର୍ଡ ବୈଧ ଚାଲି ଦୁଇ ଖେଳାଳି';

  @override
  String get gameUiSnakeAndLadders => 'ସାପ ଓ ଲାଡର୍';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'ପଶା ବୋର୍ଡ ସାପ ଲାଡର୍ ଦୁଇ ଖେଳାଳି';

  @override
  String get gameUiGames => 'ଖେଳ 🎮';

  @override
  String get gameUiPlayEarn => 'ଖେଳନ୍ତୁ ଓ ଉପାର୍ଜନ କରନ୍ତୁ';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ଖେଳ ଖେଳନ୍ତୁ ଏବଂ ବୋନସ୍ ପଏଣ୍ଟ ଉପାର୍ଜନ କରନ୍ତୁ!';

  @override
  String get gameUiSearchGames => 'ଖେଳ ଖୋଜନ୍ତୁ';

  @override
  String get gameUiClearSearch => 'ସନ୍ଧାନ ସଫା କରନ୍ତୁ';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" ସହ କୌଣସି ଖେଳ ମେଳ ଖାଉନାହିଁ';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'ଘୁରାନ୍ତୁ ଓ ବୋନସ୍ ପଏଣ୍ଟ ଜିତନ୍ତୁ।';

  @override
  String get gameUiScratchToRevealYourReward => 'ଆପଣଙ୍କ ପୁରସ୍କାର ପ୍ରକାଶ କରିବାକୁ ସ୍କ୍ରାଚ୍ କରନ୍ତୁ।';

  @override
  String get gameUiRollTheSlotsWinPoints => 'ସ୍ଲଟ୍ ଘୁରାନ୍ତୁ ଓ ପଏଣ୍ଟ ଜିତନ୍ତୁ।';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ଏକ ରହସ୍ୟ ବାକ୍ସ ବାଛନ୍ତୁ ଏବଂ ପଏଣ୍ଟ ଜିତିବା ପାଇଁ ସଠିକ୍ ଉତ୍ତର ଦିଅନ୍ତୁ।';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'ପଏଣ୍ଟ ଉପାର୍ଜନ ପାଇଁ DevOps ଯୋଡ଼ି ମିଳାନ୍ତୁ।';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6 ଥର ପ୍ରୟାସରେ DevOps ଶବ୍ଦ ଅନୁମାନ କରନ୍ତୁ।';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ଲୁକ୍କାୟିତ DevOps ଶବ୍ଦ ପାଇଁ ଗ୍ରିଡ୍ ଖୋଜନ୍ତୁ।';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 ସ୍ତରରେ DevOps ଶବ୍ଦ ଖୋଜିବାକୁ ସ୍ୱାଇପ୍ କରନ୍ତୁ।';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'ଦୁଇଟି ଚିତ୍ରିତ ଦୃଶ୍ୟ ମଧ୍ୟରେ ପାଞ୍ଚଟି ପରିବର୍ତ୍ତନ ଖୋଜନ୍ତୁ।';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'ଶେୟାର୍ କରାଯାଇଥିବା HD ପଶୁ ଓ ପ୍ରକୃତି ଚିତ୍ର ପୁନଃନିର୍ମାଣ କରନ୍ତୁ।';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ଧାରାବାହିକ ବିଜୟ ଗଢ଼ନ୍ତୁ ଏବଂ ଆପଣଙ୍କ ପଏଣ୍ଟ ସୁରକ୍ଷିତ କରନ୍ତୁ।';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'ଶୀଘ୍ର ଉତ୍ତର ଦେଇ ସମୟକୁ ହରାନ୍ତୁ।';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'ସତ୍ୟ କିମ୍ବା ମିଥ୍ୟା ବ୍ଲିଟ୍ଜ୍ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'କମାଣ୍ଡଗୁଡ଼ିକୁ ସେମାନେ ଯାହା କରନ୍ତି ତାହା ସହ ମିଳାନ୍ତୁ।';

  @override
  String get gameUiCommandMatch670a76e => 'କମାଣ୍ଡ ମ୍ୟାଚ୍ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '3 ଟି ଜୀବନ ସହ ଡିଫଲ୍ଟ ପୋର୍ଟ ଅନୁମାନ କରନ୍ତୁ।';

  @override
  String get gameUiPortMaster8f5fd42 => 'ପୋର୍ଟ ମାଷ୍ଟର 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'କମ୍ପ୍ୟୁଟର ବିରୁଦ୍ଧରେ O/X ଖେଳନ୍ତୁ।';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'ଜିତିବା ପାଇଁ ଧାଡ଼ିରେ ଚାରିଟି ଡିସ୍କ ପକାନ୍ତୁ।';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'ଆପଣଙ୍କ ଗୁଟିଗୁଡ଼ିକୁ ତିନିଟି ବଟ୍ ବିରୁଦ୍ଧରେ ଦୌଡ଼ାନ୍ତୁ।';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'ବୈଧ ଚାଲି ସହ ସ୍ଥାନୀୟ ଦୁଇ ଖେଳାଳି ଚେସ୍।';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'ଏକ ବୈଧ ଦୁଇ ଖେଳାଳି ଚେସ୍ ମ୍ୟାଚ୍ ଖେଳନ୍ତୁ।';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'ଦୁଇ ଖେଳାଳି ପଶା ବୋର୍ଡ ଖେଳ।';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100 ପର୍ଯ୍ୟନ୍ତ ଦୌଡ଼ନ୍ତୁ। ଲାଡର୍ ଚଢ଼ନ୍ତୁ ଏବଂ ସାପରୁ ବଞ୍ଚନ୍ତୁ।';

  @override
  String get gameUiPlay => 'ଖେଳନ୍ତୁ';

  @override
  String get gameUiWheelStopped => 'ଚକ ବନ୍ଦ ହେଲା!';

  @override
  String get gameUiYourRewardIs => 'ଆପଣଙ୍କ ପୁରସ୍କାର ହେଉଛି';

  @override
  String get gameUiPOINTS => 'ପଏଣ୍ଟ';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'ଏହି ପୁରସ୍କାର ପାଇବା ପାଇଁ 1 ଟି କୁଇଜ୍ ପ୍ରଶ୍ନର ସଠିକ୍ ଉତ୍ତର ଦିଅନ୍ତୁ।';

  @override
  String get gameUiWrongAnswerRewardLost => 'ଭୁଲ ଉତ୍ତର = ପୁରସ୍କାର ହରାଇଲେ।';

  @override
  String get gameUiAnswerQuestion => 'ପ୍ରଶ୍ନର ଉତ୍ତର ଦିଅନ୍ତୁ';

  @override
  String get gameUiSpinWheele449982 => '🎡 ଚକ ଘୁରାନ୍ତୁ';

  @override
  String get gameUiDailySpin => 'ଦୈନିକ ସ୍ପିନ୍';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'ଚକ ଘୁରାନ୍ତୁ, ତା\'ପରେ ଆପଣଙ୍କ ପୁରସ୍କାର ପାଇବା ପାଇଁ ଏକ ପ୍ରଶ୍ନର ଉତ୍ତର ଦିଅନ୍ତୁ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'ଆପଣ ଆଜିର ସ୍ପିନ୍ ପୂର୍ବରୁ ବ୍ୟବହାର କରିସାରିଛନ୍ତି।';

  @override
  String get gameUiSpinning => 'ଘୁରୁଛି...';

  @override
  String get gameUiSPINNOW => 'ଏବେ ଘୁରାନ୍ତୁ';

  @override
  String get gameUiCOMEBACKTOMORROW => 'କାଲି ଫେରି ଆସନ୍ତୁ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'ଆଜିର ପୁରସ୍କାର: ⭐ $value1 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiBackToGames => 'ଖେଳକୁ ଫେରନ୍ତୁ';

  @override
  String get gameUiSPIN => 'ଘୁରାନ୍ତୁ';

  @override
  String get gameUiRewardRevealed => 'ପୁରସ୍କାର ପ୍ରକାଶିତ!';

  @override
  String get gameUiYouFound => 'ଆପଣ ପାଇଲେ';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ ସ୍କ୍ରାଚ୍ କାର୍ଡ';

  @override
  String get gameUiDailyScratch => 'ଦୈନିକ ସ୍କ୍ରାଚ୍';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'ଆଜିର ପୁରସ୍କାର ପ୍ରକାଶ କରିବାକୁ କାର୍ଡ ସ୍କ୍ରାଚ୍ କରନ୍ତୁ!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'ଆପଣ ଆଜିର ସ୍କ୍ରାଚ୍ କାର୍ଡ ପୂର୍ବରୁ ବ୍ୟବହାର କରିସାରିଛନ୍ତି।';

  @override
  String get gameUiAlreadyScratched => 'ପୂର୍ବରୁ ସ୍କ୍ରାଚ୍ ହୋଇସାରିଛି';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'ଆଉ ଏକ ପୁରସ୍କାର ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ।';

  @override
  String get gameUiYouRevealed => 'ଆପଣ ପ୍ରକାଶ କଲେ';

  @override
  String get gameUiSCRATCHHERE => 'ଏଠାରେ ସ୍କ୍ରାଚ୍ କରନ୍ତୁ  👆';

  @override
  String get gameUiJACKPOT777 => 'ଜ୍ୟାକପଟ୍ 777!';

  @override
  String get gameUiLucky777 => 'ଲକି 777!';

  @override
  String get gameUiYourReward => 'ଆପଣଙ୍କ ପୁରସ୍କାର';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ଲକି ସ୍ଲଟ୍ସ';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'ସ୍ଲଟ୍ ଘୁରାନ୍ତୁ, ତା\'ପରେ ପୁରସ୍କାର ପାଇବା ପାଇଁ ଏକ ପ୍ରଶ୍ନର ଉତ୍ତର ଦିଅନ୍ତୁ!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'ଆପଣ ଆଜି ପୂର୍ବରୁ ଖେଳିସାରିଛନ୍ତି।';

  @override
  String get gameUiSPINNING => 'ଘୁରୁଛି...';

  @override
  String get gameUiROLLNOW => 'ଏବେ ଘୁରାନ୍ତୁ';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ଜ୍ୟାକପଟ୍! 777 ପଏଣ୍ଟ ଉପଲବ୍ଧ!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'ରହସ୍ୟ ଡିଲ୍ ଅବସ୍ଥା ଯାଞ୍ଚ କରିହେଲା ନାହିଁ: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'ବାକ୍ସ $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiStartQuestion => 'ପ୍ରଶ୍ନ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ରହସ୍ୟ ଡିଲ୍';

  @override
  String get gameUiMysteryDealCompleted => 'ରହସ୍ୟ ଡିଲ୍ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'ଆପଣ ଆଜି ଆଗରୁ ରହସ୍ୟ ଡିଲ୍ ଖେଳି ସାରିଛନ୍ତି।';

  @override
  String get gameUiTodayYouWon => 'ଆଜି ଆପଣ ଜିତିଲେ';

  @override
  String get gameUiTodaySReward => 'ଆଜିର ପୁରସ୍କାର';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 ପଏଣ୍ଟ';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 ପଏଣ୍ଟ ହରାଇଲେ';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'ଆଉ ଏକ ରହସ୍ୟ ବାକ୍ସ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';

  @override
  String get gameUiChooseYourMysteryBox => 'ଆପଣଙ୍କ ରହସ୍ୟ ବାକ୍ସ ବାଛନ୍ତୁ';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'ପ୍ରତ୍ୟେକ ବାକ୍ସରେ 10 ରୁ 1000 ପଏଣ୍ଟ ମଧ୍ୟରେ ଏକ ଲୁକ୍କାୟିତ ପୁରସ୍କାର ଅଛି।';

  @override
  String get gameUiPickOnlyOneBox => 'କେବଳ ଗୋଟିଏ ବାକ୍ସ ବାଛନ୍ତୁ!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'ସମସ୍ତ $value1 ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'ସ୍ତର $value1 ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 ଚାଲିରେ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା।\nଆପଣ $value2 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 ଚାଲିରେ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା।\nଏହି ସ୍ତର ଆଗରୁ ପାର ହୋଇସାରିଛି।';
  }

  @override
  String get gameUiNextLevel => 'ପରବର୍ତ୍ତୀ ସ୍ତର';

  @override
  String get gameUiDone => 'ସମାପ୍ତ';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'ମେମୋରୀ ମ୍ୟାଚ୍ 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'ସମସ୍ତ 100 ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'ଆପଣ ପ୍ରତ୍ୟେକ ମେମୋରୀ ମ୍ୟାଚ୍ ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ କଲେ। ବହୁତ ଭଲ ଖେଳିଲେ!';

  @override
  String get gameUiChooseLevel => 'ସ୍ତର ବାଛନ୍ତୁ';

  @override
  String gameUiMoves(String value1) {
    return 'ଚାଲି: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return '$value2 ମଧ୍ୟରୁ ସ୍ତର $value1';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 ଯୋଡ଼ି';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'ସ୍ତର $value1 ମନେ ରଖନ୍ତୁ';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 ମେଳ ଖାଉଥିବା ଯୋଡ଼ି ଖୋଜନ୍ତୁ';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz ଲୋଗୋ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'ଅଧ୍ୟାୟ 1 · ବିଲ୍ଡ ପାଇପଲାଇନ୍ ପୁନରୁଦ୍ଧାର କରନ୍ତୁ';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'ଅଧ୍ୟାୟ 2 · କ୍ଲାଉଡ୍ ପ୍ଲାଟଫର୍ମକୁ ସ୍କେଲ୍ କରନ୍ତୁ';

  @override
  String get gameUiChapter3ProtectProduction => 'ଅଧ୍ୟାୟ 3 · ପ୍ରୋଡକ୍ସନ୍ ସୁରକ୍ଷିତ କରନ୍ତୁ';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'ଦାଖଲ କରିବାକୁ ସମସ୍ତ $value1 ବାକି ଅକ୍ଷର ବ୍ୟବହାର କରନ୍ତୁ।';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'ସମସ୍ତ ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'ସ୍ତର $value1 ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';
  }

  @override
  String get gameUiTryAgain => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'ଶବ୍ଦଟି ଥିଲା $value1। ଆପଣ $value2 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'ଶବ୍ଦଟି ଥିଲା $value1। $value3 ସୂଚନା ପରେ ଆପଣ $value2 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'ଶବ୍ଦଟି ଥିଲା $value1। $value3 ସୂଚନା ପରେ ଆପଣ $value2 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'ଶବ୍ଦଟି ଥିଲା $value1। ସ୍ତର $value2 ଏବେ ବି ଆପଣଙ୍କ ଅପେକ୍ଷାରେ ଅଛି।';
  }

  @override
  String get gameUiFinish => 'ସମାପ୍ତ କରନ୍ତୁ';

  @override
  String get gameUiNextLevel254fd73 => 'ପରବର୍ତ୍ତୀ ସ୍ତର';

  @override
  String get gameUiRetryLevel => 'ସ୍ତର ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get gameUiHowToPlay => 'କିପରି ଖେଳିବେ';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'ପ୍ରତ୍ୟେକ ସ୍ତରରେ ଗୋଟିଏ DevOps ଶବ୍ଦ ଅଛି। ପାଞ୍ଚ ଅକ୍ଷରରୁ ଛୋଟ ଶବ୍ଦ କୌଣସି ମାଗଣା ଅକ୍ଷର ବିନା ଆରମ୍ଭ ହୁଏ; ଲମ୍ବା ଶବ୍ଦ ଗୋଟିଏ ସହ ଆରମ୍ଭ ହୁଏ। ଉତ୍ତର ତିଆରି କରିବାକୁ ଅକ୍ଷର ରାକ୍ ବ୍ୟବହାର କରନ୍ତୁ ଏବଂ Enter ଦାବନ୍ତୁ। ସୂଚନା ଆଉ ଏକ ଅକ୍ଷର ପ୍ରକାଶ କରେ ଏବଂ ଆପଣଙ୍କ ବାଲାନ୍ସରୁ 20 ପଏଣ୍ଟ କାଟେ। ପ୍ରତ୍ୟେକ ସମ୍ପୂର୍ଣ୍ଣ ସ୍ତର 100 ପଏଣ୍ଟ ଦିଏ।';

  @override
  String get gameUiGotIt => 'ବୁଝିଲି';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'ସମସ୍ତ $value1 ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';
  }

  @override
  String get gameUiEasy => 'ସହଜ';

  @override
  String get gameUiMedium => 'ମଧ୍ୟମ';

  @override
  String get gameUiHard => 'କଠିନ';

  @override
  String get gameUiHowToPlay13a6b22 => 'କିପରି ଖେଳିବେ';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'ସ୍ତର $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'ପୁରସ୍କାର $value1 ପଏଣ୍ଟ · ବ୍ୟବହୃତ ସୂଚନା $value2';
  }

  @override
  String get gameUiHint20Pts => 'ସୂଚନା · −20 ପଏଣ୍ଟ';

  @override
  String get gameUiEnter => 'ଏଣ୍ଟର୍';

  @override
  String get gameUiDelete => 'ଡିଲିଟ୍';

  @override
  String get gameUiDragThroughAWord => 'ଏକ ଶବ୍ଦ ଉପରେ ଟାଣନ୍ତୁ';

  @override
  String get gameUiDragThroughEachWord => 'ପ୍ରତ୍ୟେକ ଶବ୍ଦ ଉପରେ ଟାଣନ୍ତୁ';

  @override
  String get gameUiReleaseToSelect => 'ବାଛିବାକୁ ଛାଡ଼ନ୍ତୁ';

  @override
  String gameUiFound(String value1) {
    return '$value1 ମିଳିଲା';
  }

  @override
  String get gameUiNoWordThere => 'ସେଠାରେ କୌଣସି ଶବ୍ଦ ନାହିଁ';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ଆଗରୁ ମିଳିସାରିଛି';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 ଖୋଜନ୍ତୁ';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'ସମସ୍ତ ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'ଆପଣ ପ୍ରତ୍ୟେକ ଶବ୍ଦ ଖୋଜିଲେ ଏବଂ $value1 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'ଆପଣ ପ୍ରତ୍ୟେକ ଶବ୍ଦ ଖୋଜିଲେ। ଏହି ସ୍ତର ଆଗରୁ ପାର ହୋଇସାରିଛି।';

  @override
  String get gameUiAll500LevelsComplete => 'ସମସ୍ତ 500 ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';

  @override
  String get gameUiReviewLevels => 'ସ୍ତରଗୁଡ଼ିକ ସମୀକ୍ଷା କରନ୍ତୁ';

  @override
  String gameUiLeft(String value1) {
    return '$value1 ବାକି';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'ଅଗ୍ରଗତି ସେଭ୍ କରିହେଲା ନାହିଁ। ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'ଆପଣ $value1 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'ଆପଣ ଏହି ଚିତ୍ର ଆଗରୁ ସମ୍ପୂର୍ଣ୍ଣ କରିସାରିଛନ୍ତି। ପୁନର୍ବାର ଖେଳିଲେ ଅତିରିକ୍ତ ପଏଣ୍ଟ ମିଳିବ ନାହିଁ।';

  @override
  String get gameUiYouCompletedEveryPicture => 'ଆପଣ ପ୍ରତ୍ୟେକ ଚିତ୍ର ସମ୍ପୂର୍ଣ୍ଣ କଲେ!';

  @override
  String get gameUiLevels => 'ସ୍ତରଗୁଡ଼ିକ';

  @override
  String get gameUiPictureB => 'ଚିତ୍ର B';

  @override
  String get gameUiPictureA => 'ଚିତ୍ର A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'ଚିତ୍ର ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ। ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get gameUiResetZoom => 'ଜୁମ୍ ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get gameUiZoomBothPictures => 'ଉଭୟ ଚିତ୍ର ଜୁମ୍ କରନ୍ତୁ';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ସୂଚନା · ପ୍ରତି ସୂଚନା $value1 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'ଅଗ୍ରଗତି ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ। ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'ସ୍ତର $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'ସମସ୍ତ ପାର୍ଥକ୍ୟ ମିଳିଲା!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count ପାର୍ଥକ୍ୟ ଖୋଜନ୍ତୁ। ଯେକୌଣସି ଚିତ୍ରରେ ପ୍ରତ୍ୟେକଟିକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ।';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ଭୁଲ: $value1  ·  ସୂଚନା: $value2 (−$value3 ପଏଣ୍ଟ)  ·  $value4 ସ୍ତର ସମ୍ପୂର୍ଣ୍ଣ';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'ପରବର୍ତ୍ତୀ ସ୍ତର: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'ପଜଲ୍ $value1 ସମ୍ପୂର୍ଣ୍ଣ ହେଲା!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'ଚିତ୍ର $value1 ଚାଲିରେ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା। ଆପଣ $value2 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'ଚିତ୍ର $value1 ଚାଲିରେ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା।';
  }

  @override
  String get gameUiNextPuzzle => 'ପରବର୍ତ୍ତୀ ପଜଲ୍';

  @override
  String get gameUiAllPuzzlesComplete => 'ସମସ୍ତ ପଜଲ୍ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return '$value2 ମଧ୍ୟରୁ ପଜଲ୍ ଖଣ୍ଡ $value1, ସଠିକ୍ ସ୍ଥାନରେ ରଖାଯାଇଛି';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return '$value2 ମଧ୍ୟରୁ ପଜଲ୍ ଖଣ୍ଡ $value1';
  }

  @override
  String get gameUiChoosePuzzle => 'ପଜଲ୍ ବାଛନ୍ତୁ';

  @override
  String get gameUiShufflePieces => 'ଖଣ୍ଡଗୁଡ଼ିକୁ ଫେଣ୍ଟନ୍ତୁ';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'ପଜଲ୍ ଚିତ୍ର ଲୋଡ୍ କରିହେଲା ନାହିଁ।';

  @override
  String get gameUiPreviousPuzzle => 'ପୂର୍ବ ପଜଲ୍';

  @override
  String gameUiPuzzle(String value1) {
    return 'ପଜଲ୍ $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 ଚାଲ';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ଟୁକୁଡ଼ାଗୁଡ଼ିକୁ ଟାଣି ଅଦଳବଦଳ କରନ୍ତୁ, କିମ୍ବା ଦୁଇଟି ଟୁକୁଡ଼ାକୁ ଟାପ୍ କରନ୍ତୁ।';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 ପଜଲ୍ ସମାଧାନ ହେଲା  ·  ପ୍ରତ୍ୟେକ $value3 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiGameOver => 'ଖେଳ ସମାପ୍ତ';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'ସଂଖ୍ୟାଟି ଥିଲା $value1।\nଧାରା: $value2\nଆପଣ $value3 ପଏଣ୍ଟ ଜିତିଲେ!\n\nଆଉ ଏକ ସୁଯୋଗ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';
  }

  @override
  String get gameUiHigherOrLower => 'ଅଧିକ ନା କମ୍ 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'ଆଜି ଖେଳି ସାରିଛନ୍ତି!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'ଆପଣ $value1/$value2/$value3 ରେ ଖେଳିଥିଲେ।\n\nନୂତନ ଧାରା ଗଢ଼ିବା ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'ଆପଣ ଆଜି ଖେଳି ସାରିଛନ୍ତି।\n\nଆଉ ଏକ ସୁଯୋଗ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 ଧାରା: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ ପଏଣ୍ଟ: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'ପରବର୍ତ୍ତୀ ସଂଖ୍ୟା ଅଧିକ ହେବ ନା କମ୍?';

  @override
  String get gameUiLower => 'କମ୍';

  @override
  String get gameUiHigher => 'ଅଧିକ';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'ସତ୍ୟ ନା ମିଥ୍ୟା ବ୍ଲିଟ୍ଜ୍ ⚡';

  @override
  String get gameUiTimeSUp => 'ସମୟ ସରିଗଲା!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'ସଠିକ୍ ଉତ୍ତର: $value1\nସର୍ବୋତ୍ତମ ଧାରା: $value2\n$value3ଆପଣ $value4 ପଏଣ୍ଟ ଜିତିଲେ!\n\nଆଉ ଏକ ରାଉଣ୍ଡ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';
  }

  @override
  String get gameUiStreakBonus20 => 'ଧାରା ବୋନସ୍: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'ଦେଖାଯାଇଥିବା ଉତ୍ତର ସତ୍ୟ ନା ମିଥ୍ୟା?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 ବର୍ଗରେ $value1 ପ୍ରଶ୍ନ';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'ଆପଣଙ୍କ ପାଖରେ $value1 ସେକେଣ୍ଡ୍ ଅଛି। ପ୍ରତ୍ୟେକ ସଠିକ୍ ଉତ୍ତରରେ $value2 ପଏଣ୍ଟ ମିଳେ। ଭୁଲ ଉତ୍ତର ପାଇଁ $value3 ସେକେଣ୍ଡ୍ କଟିଯାଏ। 5 ର ଧାରା ହାସଲ କଲେ +20 ବୋନସ୍ ମିଳେ।';
  }

  @override
  String get gameUiRoundTimer => 'ରାଉଣ୍ଡ ଟାଇମର୍';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 ସେକେଣ୍ଡ୍';
  }

  @override
  String get gameUiStart => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get gameUiTrue => 'ସତ୍ୟ';

  @override
  String get gameUiFalse => 'ମିଥ୍ୟା';

  @override
  String get gameUiCommandMatch26b0e70 => 'କମାଣ୍ଡ୍ ମେଳ 🔗';

  @override
  String get gameUiAllMatched => 'ସବୁ ମେଳ ହୋଇଗଲା!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ଭୁଲ: $value1\nଆପଣ $value2 ପଏଣ୍ଟ ଜିତିଲେ!\n\nନୂତନ କମାଣ୍ଡ୍ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'ରାଉଣ୍ଡ $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'ଏକ କମାଣ୍ଡ୍ ଟାପ୍ କରନ୍ତୁ, ତା\'ପରେ ଏହାର ଅର୍ଥ ଟାପ୍ କରନ୍ତୁ।';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'ଏବେ ମେଳ ଖାଉଥିବା ଅର୍ଥ ଟାପ୍ କରନ୍ତୁ।';

  @override
  String get gameUiPortMaster9c730cf => 'ପୋର୍ଟ ମାଷ୍ଟର 🔌';

  @override
  String get gameUiPortMastera796b69 => 'ପୋର୍ଟ ମାଷ୍ଟର!';

  @override
  String get gameUiOutOfLives => 'ଜୀବନ ସରିଗଲା';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'ସଠିକ୍ ଉତ୍ତର: $value1\nଆପଣ $value2 ପଏଣ୍ଟ ଜିତିଲେ!\n\nଆଉ ଏକ ରାଉଣ୍ଡ ପାଇଁ କାଲି ଫେରି ଆସନ୍ତୁ!';
  }

  @override
  String get gameUiYouEarned10Points => 'ଆପଣ 10 ପଏଣ୍ଟ ଜିତିଲେ!';

  @override
  String get gameUiYouWin => 'ଆପଣ ଜିତିଲେ!';

  @override
  String gameUiWins(String value1) {
    return '$value1 ଜିତିଲେ!';
  }

  @override
  String get gameUiXWins => 'X ଜିତିଲା!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) ଜିତିଲେ!';
  }

  @override
  String get gameUiComputerWins => 'କମ୍ପ୍ୟୁଟର ଜିତିଲା';

  @override
  String get gameUiOWins => 'O ଜିତିଲା!';

  @override
  String get gameUiPlayer2OWins => 'ଖେଳାଳି 2 (O) ଜିତିଲେ!';

  @override
  String get gameUiItSADraw => 'ଏହା ଡ୍ର';

  @override
  String get gameUiYourTurn => 'ଆପଣଙ୍କ ପାଳି';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ଙ୍କ ପାଳି';
  }

  @override
  String get gameUiComputerIsThinking => 'କମ୍ପ୍ୟୁଟର ଚିନ୍ତା କରୁଛି';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'ଖେଳାଳି $value1 ଚାଲିବେ';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ଚାଲିବେ';
  }

  @override
  String get gameUiPlayer2ToMove => 'ଖେଳାଳି 2 ଚାଲିବେ';

  @override
  String get gameUiNewRound => 'ନୂତନ ରାଉଣ୍ଡ';

  @override
  String get gameUiVsComputer => 'କମ୍ପ୍ୟୁଟର ବିପକ୍ଷରେ';

  @override
  String get gameUi2Players => '2 ଖେଳାଳି';

  @override
  String get gameUiYou => 'ଆପଣ';

  @override
  String get gameUiDraws => 'ଡ୍ର';

  @override
  String get gameUiPlayer2 => 'ଖେଳାଳି 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'ଘର $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'ପୁଣି ଖେଳନ୍ତୁ';

  @override
  String get gameUiConnectFourWin20Points => 'କନେକ୍ଟ ଫୋର୍ ଜିତ: 20 ପଏଣ୍ଟ!';

  @override
  String get gameUiBotWins => 'ବଟ୍ ଜିତିଲା!';

  @override
  String get gameUiRed => 'ନାଲି';

  @override
  String get gameUiYellow => 'ହଳଦିଆ';

  @override
  String get gameUiBoardFullDraw => 'ବୋର୍ଡ ପୂର୍ଣ୍ଣ — ଡ୍ର';

  @override
  String get gameUiBotIsThinking => 'ବଟ୍ ଚିନ୍ତା କରୁଛି';

  @override
  String get gameUiBotTurn => 'ବଟ୍‌ର ପାଳି';

  @override
  String get gameUiNewGame => 'ନୂତନ ଖେଳ';

  @override
  String get gameUiVsBot => 'ବଟ୍ ବିପକ୍ଷରେ';

  @override
  String get gameUi2Player => '2 ଖେଳାଳି';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'ବଟ୍ ବିପକ୍ଷରେ ଖେଳନ୍ତୁ · ଡିସ୍କ ପକାଇବାକୁ ଏକ ସ୍ତମ୍ଭକୁ ଟାପ୍ କରନ୍ତୁ';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'ଦୁଇ ଖେଳାଳି · ଡିସ୍କ ପକାଇବାକୁ ଏକ ସ୍ତମ୍ଭକୁ ଟାପ୍ କରନ୍ତୁ';

  @override
  String gameUiColumn(String value1) {
    return 'ସ୍ତମ୍ଭ $value1';
  }

  @override
  String get gameUiYouRed => 'ଆପଣ · ନାଲି';

  @override
  String get gameUiRedPlayer1 => 'ନାଲି · ଖେଳାଳି 1';

  @override
  String get gameUiBotYellow => 'ବଟ୍ · ହଳଦିଆ';

  @override
  String get gameUiYellowPlayer2 => 'ହଳଦିଆ · ଖେଳାଳି 2';

  @override
  String get gameUiLudoMatchStats => 'ଲୁଡୋ ମ୍ୟାଚ୍ ପରିସଂଖ୍ୟାନ';

  @override
  String get gameUiNoCompletedMatchesYet => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ମ୍ୟାଚ୍ ସମାପ୍ତ ହୋଇନାହିଁ।';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'ଖେଳିଲେ $value1  ·  ଜିତିଲେ $value2  ·  ହାରିଲେ $value3';
  }

  @override
  String get gameUiClose => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'ଲୁଡୋ ଚାମ୍ପିୟନ୍! ଆପଣ 50 ପଏଣ୍ଟ ଜିତିଲେ।';

  @override
  String get gameUiNewLudoGame => 'ନୂତନ ଲୁଡୋ ଖେଳ';

  @override
  String get gameUiBotOpponents => 'ବଟ୍ ପ୍ରତିପକ୍ଷ';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'ନୂତନ ମ୍ୟାଚ୍ ଆରମ୍ଭ କଲେ ଆପଣଙ୍କ ସେଭ୍ ହୋଇଥିବା ଖେଳ ବଦଳିଯିବ।';

  @override
  String get gameUiCancel => 'ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get gameUiStartGame => 'ଖେଳ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get gameUiPlayerColours => 'ଖେଳାଳିଙ୍କ ରଙ୍ଗ';

  @override
  String get gameUiApply => 'ଲାଗୁ କରନ୍ତୁ';

  @override
  String get gameUiMatchStats => 'ମ୍ୟାଚ୍ ପରିସଂଖ୍ୟାନ';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 ଚେକ୍‌ମେଟ୍ ଦ୍ୱାରା ଜିତିଲେ';
  }

  @override
  String get gameUiBlack => 'କଳା';

  @override
  String get gameUiWhite => 'ଧଳା';

  @override
  String get gameUiComputerWinsByCheckmate => 'କମ୍ପ୍ୟୁଟର ଚେକ୍‌ମେଟ୍ ଦ୍ୱାରା ଜିତିଲା';

  @override
  String get gameUiYouWinByCheckmate => 'ଆପଣ ଚେକ୍‌ମେଟ୍ ଦ୍ୱାରା ଜିତିଲେ';

  @override
  String get gameUiDrawByStalemate => 'ଷ୍ଟେଲମେଟ୍ ଯୋଗୁଁ ଡ୍ର';

  @override
  String get gameUiDraw => 'ଡ୍ର';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · ଚେକ୍';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'ଚେକମେଟ୍! ଆପଣ 50 ପଏଣ୍ଟ ଅର୍ଜନ କଲେ।';

  @override
  String get gameUiStartANewGame => 'ନୂଆ ଖେଳ ଆରମ୍ଭ କରିବେ?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'ଖେଳାଳି ମୋଡ୍ ବଦଳାଇଲେ ସଞ୍ଚିତ ମ୍ୟାଚ୍ ବଦଳିଯିବ।';

  @override
  String get gameUiComputer => 'କମ୍ପ୍ୟୁଟର';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · ଧଳା / ଖେଳାଳି 2 · କଳା';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'ଆପଣ ଧଳା · କମ୍ପ୍ୟୁଟର କଳା';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (ଧଳା) · କମ୍ପ୍ୟୁଟର (କଳା)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'ଆପଣ କଳା · କମ୍ପ୍ୟୁଟର ଧଳା';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (କଳା) · କମ୍ପ୍ୟୁଟର (ଧଳା)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ପ୍ରଥମେ ଗଡ଼ାଇବେ';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 ପୁନର୍ବାର ଗଡ଼ାଇବେ';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 ଗଡ଼ାଇବେ';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'ସାପ ଓ ସିଡ଼ି ଜିତ: 100 ପଏଣ୍ଟ!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'ଖେଳାଳି ବଦଳାଇଲେ ସଞ୍ଚିତ ଖେଳ ବଦଳିଯିବ।';

  @override
  String get gameUiStartANewLevel => 'ନୂଆ ସ୍ତର ଆରମ୍ଭ କରିବେ?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'ସ୍ତର ବଦଳାଇଲେ ସଞ୍ଚିତ ଖେଳ ବଦଳିଯିବ।';

  @override
  String get gameUiChangeLevel => 'ସ୍ତର ବଦଳାନ୍ତୁ';

  @override
  String get gameUiPlayers => 'ଖେଳାଳିମାନେ';

  @override
  String get gameUiPlayAgainstBot => 'ବଟ୍ ବିରୁଦ୍ଧରେ ଖେଳନ୍ତୁ';

  @override
  String get gameUi3Players => '3 ଜଣ ଖେଳାଳି';

  @override
  String get gameUi4Players => '4 ଜଣ ଖେଳାଳି';

  @override
  String get gameUiLevel1709305 => 'ସ୍ତର';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'ସ୍ତର $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 ଖେଳାଳି · ସ୍ତର $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · ଗଡ଼ାନ୍ତୁ';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2 ରେ $value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'ପ୍ରଶ୍ନ ଲୋଡ୍ କରିହେଲା ନାହିଁ: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'ସଠିକ୍ ଉତ୍ତର!';

  @override
  String get gameUiWrongAnswer => 'ଭୁଲ ଉତ୍ତର';

  @override
  String get gameUiYouClaimedYourReward => 'ଆପଣ ଆପଣଙ୍କ ପୁରସ୍କାର ଦାବି କଲେ!';

  @override
  String get gameUiAddedToYourTotalPoints => 'ଆପଣଙ୍କ ମୋଟ ପଏଣ୍ଟରେ ଯୋଡ଼ାଗଲା।';

  @override
  String get gameUiTheCorrectAnswerWas => 'ସଠିକ୍ ଉତ୍ତର ଥିଲା:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 ପଏଣ୍ଟ ପୁରସ୍କାର ହାରିଗଲା।';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'ଆପଣଙ୍କ ବିଦ୍ୟମାନ ପଏଣ୍ଟ କଟାଯାଇ ନାହିଁ।';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'ଆସନ୍ତାକାଲି ଫେରି ଆସି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'ପ୍ରଶ୍ନ ଲୋଡ୍ କରିହେଲା ନାହିଁ।';

  @override
  String get gameUiYourReward677fa6e => 'ଆପଣଙ୍କ ପୁରସ୍କାର';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 ପଏଣ୍ଟ';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'ଦାବି କରିବାକୁ ସଠିକ୍ ଉତ୍ତର ଦିଅନ୍ତୁ!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'ଆଉ ଏକ ରାଉଣ୍ଡ ପାଇଁ ଆସନ୍ତାକାଲି ଫେରି ଆସନ୍ତୁ।';

  @override
  String get gameUiGreen => 'ସବୁଜ';

  @override
  String get gameUiBlue => 'ନୀଳ';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 ଚିନ୍ତା କରୁଛନ୍ତି';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: ଏକ ଗୁଟି ବାଛନ୍ତୁ';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ଲୁଡୁ ଗୁଟି ଗଡ଼ାନ୍ତୁ';
  }

  @override
  String gameUiDice(String value1) {
    return 'ଲୁଡୁ ଗୁଟି $value1';
  }

  @override
  String get gameUiRollDice => 'ଲୁଡୁ ଗୁଟି ଗଡ଼ାନ୍ତୁ';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 ଗୁଟି $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'ଖେଳାଳି $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'ବଟ୍ $value1';
  }

  @override
  String get gameUiBot => 'ବଟ୍';

  @override
  String get gameUiHintInsufficientPoints => 'ସୂଚନା ବ୍ୟବହାର କରିବାକୁ ଆପଣଙ୍କୁ 20 ପଏଣ୍ଟ ଆବଶ୍ୟକ।';

  @override
  String get gameUiHintPurchaseFailed => 'ସୂଚନା କିଣି ପାରିଲେ ନାହିଁ। ଦୟାକରି ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get gameUiChessKing => 'ରାଜା';

  @override
  String get gameUiChessQueen => 'ରାଣୀ';

  @override
  String get gameUiChessRook => 'ହାତୀ';

  @override
  String get gameUiChessBishop => 'ମନ୍ତ୍ରୀ';

  @override
  String get gameUiChessKnight => 'ଘୋଡ଼ା';

  @override
  String get gameUiChessPawn => 'ସୈନିକ';

  @override
  String get gameUiChessEmpty => 'ଖାଲି';

  @override
  String get gameSceneLampAndFlowers => 'ଦୀପ ଓ ଫୁଲ';

  @override
  String get gameSceneGardenFriends => 'ବଗିଚାର ବନ୍ଧୁଗଣ';

  @override
  String get gameSceneUnderwaterExplorers => 'ଜଳତଳ ଅନୁସନ୍ଧାନକାରୀ';

  @override
  String get gameSceneOceanOrca => 'ସମୁଦ୍ରର ଓର୍କା';

  @override
  String get gameSceneFoxInTheMeadow => 'ତୃଣଭୂମିରେ ଶିଆଳ';

  @override
  String get gameSceneYellowSubmarine => 'ହଳଦିଆ ସବମେରିନ୍';

  @override
  String get gameSceneTurkeyInTheClearing => 'ଖୋଲା ଜାଗାରେ ଟର୍କି';

  @override
  String get gameSceneSafariWateringHole => 'ସାଫାରି ଜଳପାନ ସ୍ଥାନ';

  @override
  String get gameSceneJungleCompanions => 'ଜଙ୍ଗଲର ସାଥୀଗଣ';

  @override
  String get gameSceneGoldenPuppyGarden => 'ସୁନେଲି କୁକୁରଛୁଆର ବଗିଚା';

  @override
  String get gameSceneSeaTurtleReef => 'ସମୁଦ୍ର କଇଁଛର ପ୍ରବାଳ ଶୈଳଶ୍ରେଣୀ';

  @override
  String get gameSceneCoralReefFriends => 'ପ୍ରବାଳ ଶୈଳଶ୍ରେଣୀର ବନ୍ଧୁଗଣ';

  @override
  String get gameSceneSharedClownfish => 'ବାଣ୍ଟିଥିବା କ୍ଲାଉନଫିସ୍';

  @override
  String get gameSceneLittleDinosaur => 'ଛୋଟ ଡାଇନୋସର';

  @override
  String get gameSceneSafariCompanions => 'ସାଫାରିର ସାଥୀଗଣ';

  @override
  String get gameSceneSwirlingFlowers => 'ଘୂର୍ଣ୍ଣିତ ଫୁଲ';

  @override
  String get gameSceneGardenKitten => 'ବଗିଚାର ବିଲେଇଛୁଆ';

  @override
  String get gameSceneBlueOcean => 'ନୀଳ ସମୁଦ୍ର';

  @override
  String get gameSceneCastlePrincess => 'ଦୁର୍ଗର ରାଜକୁମାରୀ';

  @override
  String get gameSceneRedCar => 'ଲାଲ ଗାଡ଼ି';

  @override
  String get gameSceneGardenPuppy => 'ବଗିଚାର କୁକୁରଛୁଆ';

  @override
  String get gameSceneSpaceExplorer => 'ମହାକାଶ ଅନୁସନ୍ଧାନକାରୀ';

  @override
  String get gameSceneEnchantedReadingForest => 'ମନ୍ତ୍ରମୁଗ୍ଧ ପଢ଼ା ଜଙ୍ଗଲ';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps ଅନନ୍ତ ଚକ୍ର';

  @override
  String get gameSceneAnsible => 'Ansible (ଆନସିବଲ୍)';

  @override
  String get gameSceneAws => 'ଏଡବ୍ଲ୍ୟୁଏସ୍';

  @override
  String get gameSceneAzure => 'ଆଜୁର୍';

  @override
  String get gameSceneBashScripting => 'ବାଶ୍ ସ୍କ୍ରିପ୍ଟିଂ';

  @override
  String get gameSceneDocker => 'ଡକର୍';

  @override
  String get gameSceneGcp => 'ଜିସିପି';

  @override
  String get gameSceneGit => 'ଗିଟ୍';

  @override
  String get gameSceneHybridCloud => 'ହାଇବ୍ରିଡ୍ କ୍ଲାଉଡ୍';

  @override
  String get gameSceneIbmCloud => 'ଆଇବିଏମ୍ କ୍ଲାଉଡ୍';

  @override
  String get gameSceneJavascript => 'ଜାଭାସ୍କ୍ରିପ୍ଟ';

  @override
  String get gameSceneJenkins => 'ଜେନକିନ୍ସ';

  @override
  String get gameSceneKubernetes => 'କୁବର୍ନେଟିସ୍';

  @override
  String get gameSceneLinux => 'ଲିନକ୍ସ';

  @override
  String get gameSceneMultiCloud => 'ମଲ୍ଟି କ୍ଲାଉଡ୍';

  @override
  String get gameSceneNetworking => 'ନେଟୱାର୍କିଂ';

  @override
  String get gameSceneOracleCloud => 'ଓରାକଲ୍ କ୍ଲାଉଡ୍';

  @override
  String get gameScenePerl => 'ପର୍ଲ';

  @override
  String get gameScenePowershell => 'ପାୱାରଶେଲ୍';

  @override
  String get gameScenePython => 'ପାଇଥନ୍';

  @override
  String get gameSceneRuby => 'ରୁବି';

  @override
  String get gameSceneTerraform => 'ଟେରାଫର୍ମ';

  @override
  String get gameSceneWinterFestivalFair => 'ଶୀତ ଉତ୍ସବ ମେଳା';

  @override
  String get gameSceneArmoredHeroCloseUp => 'ବର୍ମଧାରୀ ବୀରଙ୍କ ନିକଟ ଦୃଶ୍ୟ';

  @override
  String get gameSceneArmoredHeroInCrimson => 'ଗାଢ଼ ଲାଲ ରଙ୍ଗରେ ବର୍ମଧାରୀ ବୀର';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'ଗାଢ଼ ଚମ୍ପା ଫୁଲ';

  @override
  String get gameSceneMangroveBoardwalk => 'ମାଙ୍ଗ୍ରୋଭ୍ କାଠ ପଥ';

  @override
  String get gameSceneTropicalPalmReflections => 'ଉଷ୍ଣମଣ୍ଡଳୀୟ ତାଳଗଛର ପ୍ରତିବିମ୍ବ';

  @override
  String get gameSceneMaskedFigureInShadow => 'ଛାୟାରେ ମୁଖାଧାରୀ ମୂର୍ତ୍ତି';

  @override
  String get gameSceneElectricCompanionAtSunset => 'ସୂର୍ଯ୍ୟାସ୍ତ ସମୟରେ ବିଦ୍ୟୁତ୍ ସାଥୀ';

  @override
  String get gameSceneTrainerAndFireDragon => 'ପ୍ରଶିକ୍ଷକ ଓ ଅଗ୍ନି ଡ୍ରାଗନ୍';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'ରତ୍ନଖଚିତ କୁସ୍ତି ମୁଖା';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'ଲାଲ ତୂଳୀ ଟାଣରେ କୁସ୍ତିଯୋଦ୍ଧା';

  @override
  String get gameSceneWrestlingChampionSalute => 'କୁସ୍ତି ଚାମ୍ପିୟନଙ୍କ ସଲାମ୍';

  @override
  String get gameSceneMorningAtTheBakery => 'ବେକେରୀରେ ସକାଳ';

  @override
  String get gameSceneGreenhousePottingBench => 'ଗ୍ରୀନହାଉସ୍ ଗଛ ଲଗାଇବା ବେଞ୍ଚ';

  @override
  String get gameSceneHarborFishingBoat => 'ବନ୍ଦରର ମାଛଧରା ଡଙ୍ଗା';

  @override
  String get gameSceneAtticObservatory => 'ଅଟାଳିକା ଉପର ମହଲାର ପର୍ଯ୍ୟବେକ୍ଷଣାଳୟ';

  @override
  String get gameSceneToyMakerSWorkshop => 'ଖେଳନା ନିର୍ମାତାଙ୍କ କାରଖାନା';

  @override
  String get gameSceneWoodlandCampsite => 'ବନଭୂମିର ଶିବିର ସ୍ଥଳ';

  @override
  String get gameSceneAfternoonMusicRoom => 'ଅପରାହ୍ନର ସଙ୍ଗୀତ କକ୍ଷ';

  @override
  String get gameSceneSeasideIceCreamStand => 'ସମୁଦ୍ର କୂଳର ଆଇସକ୍ରିମ୍ ଦୋକାନ';

  @override
  String get gameSceneLibraryReadingNook => 'ପାଠାଗାରର ପଢ଼ିବା କୋଣ';

  @override
  String get gameSceneSewingStudio => 'ସିଲେଇ ଷ୍ଟୁଡିଓ';

  @override
  String get gameSceneFruitMarket => 'ଫଳ ବଜାର';

  @override
  String get gameSceneKoiCourtyard => 'କୋଇ ମାଛର ଅଗଣା';

  @override
  String get gameSceneArtistSAtelier => 'କଳାକାରଙ୍କ ଷ୍ଟୁଡିଓ';

  @override
  String get gameSceneMountainRailway => 'ପାହାଡ଼ୀ ରେଳପଥ';

  @override
  String get gameSceneCountryKitchen => 'ଗ୍ରାମ୍ୟ ରୋଷେଇ ଘର';

  @override
  String get gameScenePotteryWorkshop => 'ମୃତ୍ତିକା ଶିଳ୍ପ କାରଖାନା';

  @override
  String get gameSceneBeachPicnic => 'ସମୁଦ୍ର ବେଳାର ପିକନିକ୍';

  @override
  String get gameSceneFlowerShop => 'ଫୁଲ ଦୋକାନ';

  @override
  String get gameSceneClockmakerSWorkshop => 'ଘଣ୍ଟା ନିର୍ମାତାଙ୍କ କାରଖାନା';

  @override
  String get gameSceneRainyCafeTerrace => 'ବର୍ଷାଭିଜା କ୍ୟାଫେ ଛାତ';

  @override
  String get gameSceneCastleHerbGarden => 'ଦୁର୍ଗର ଔଷଧୀୟ ଉଦ୍ଭିଦ ବଗିଚା';

  @override
  String get gameSceneClassroomArtCorner => 'ଶ୍ରେଣୀଗୃହର କଳା କୋଣ';

  @override
  String get gameSceneAquariumShop => 'ଜଳଜୀବ ଆକ୍ୱାରିୟମ୍ ଦୋକାନ';

  @override
  String get gameSceneAutumnLeafCollection => 'ଶରତ ପତ୍ର ସଂଗ୍ରହ';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'ଚନ୍ଦ୍ର ତଳେ ଏକୁଟିଆ ଗଛ';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'ଡାଳରେ ଶରତ ଫୁଲ';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'ସବୁଜ ପତ୍ର ମଧ୍ୟରେ ଶିଆଳ';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'ପଦ୍ମପତ୍ର ଘେରା ହ୍ରଦରେ ଡଙ୍ଗା';

  @override
  String get gameSceneDewDropsOnALeaf => 'ପତ୍ରରେ ଶିଶିର ବିନ୍ଦୁ';

  @override
  String get gameSceneStagInATurquoiseLake => 'ପିରୋଜା ରଙ୍ଗର ହ୍ରଦରେ ହରିଣ';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'କମଳା ଚନ୍ଦ୍ର ତଳେ ସାଇକେଲ୍';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'ଉପତ୍ୟକା ଉପରେ ଧଳା ବାଘ';

  @override
  String get gameSceneTwoTreesInBlueWater => 'ନୀଳ ଜଳରେ ଦୁଇଟି ଗଛ';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'ବିଶ୍ୱସ୍ତ କୁକୁର ପାଖରେ ମାଛ ଧରିବା';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'ପର୍ବତୀୟ ହ୍ରଦ ପାଖରେ ଲିଲି ଫୁଲ';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'ଗୋଲାପୀ ନଦୀକୂଳରେ ହରିଣ';

  @override
  String get gameSceneTropicalHutAtSunset => 'ସୂର୍ଯ୍ୟାସ୍ତ ସମୟରେ ଉଷ୍ଣମଣ୍ଡଳୀୟ କୁଟୀର';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ଆଲ୍ପାଇନ୍ ଉପତ୍ୟକାକୁ ଦେଖୁଥିବା ଖେକସିଆ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'ମୋହିତ ଉପବନ ଭିତର ଦେଇ ସୂର୍ଯ୍ୟାସ୍ତ';

  @override
  String get learningControlTitle => 'DevOps ଶିଖନ୍ତୁ';

  @override
  String get learningControlAllCategories => 'ସମସ୍ତ ବର୍ଗ';

  @override
  String get learningControlSearchCards => 'କାର୍ଡ ଖୋଜନ୍ତୁ';

  @override
  String get learningControlClearSearch => 'ଖୋଜା ସଫା କରନ୍ତୁ';

  @override
  String get learningControlCategory => 'ବର୍ଗ';

  @override
  String get learningControlShowAll => 'ସମସ୍ତ କାର୍ଡ ଦେଖାନ୍ତୁ';

  @override
  String learningControlShowSaved(int count) {
    return 'ସଞ୍ଚିତ କାର୍ଡ ଦେଖାନ୍ତୁ ($count)';
  }

  @override
  String get learningControlShuffleOff => 'ଶଫଲ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get learningControlShuffleOn => 'କାର୍ଡ ଶଫଲ କରନ୍ତୁ';

  @override
  String get learningControlAutoOff => 'ଅଟୋ ସ୍ୱାପ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get learningControlAutoOn => 'ପ୍ରତି 10 ସେକେଣ୍ଡରେ ଅଟୋ ସ୍ୱାପ';

  @override
  String get learningControlNoSaved => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି କାର୍ଡ ସଞ୍ଚୟ ହୋଇନାହିଁ';

  @override
  String get learningControlNoMatches => 'ମେଳ ଖାଉଥିବା କାର୍ଡ ନାହିଁ';

  @override
  String get learningControlResetFilters => 'ଫିଲ୍ଟର ରିସେଟ କରନ୍ତୁ';

  @override
  String get learningControlPrevious => 'ପୂର୍ବବର୍ତ୍ତୀ';

  @override
  String get learningControlNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get learningControlProgress => 'ପ୍ରଗତି';

  @override
  String get learningControlRemoveSaved => 'ସଞ୍ଚିତରୁ ହଟାନ୍ତୁ';

  @override
  String get learningControlSaveCard => 'କାର୍ଡ ସଞ୍ଚୟ କରନ୍ତୁ';

  @override
  String get learningControlExample => 'ଉଦାହରଣ';

  @override
  String get learningControlCopyExample => 'ଉଦାହରଣ କପି କରନ୍ତୁ';

  @override
  String get learningControlExampleCopied => 'ଉଦାହରଣ କପି ହୋଇଛି';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'ଲେଭେଲ $value1 ସମ୍ପୂର୍ଣ୍ଣ ହୋଇଛି';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'ଲେଭେଲ $value1 ଖେଳନ୍ତୁ';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'ଅନଲକ୍ କରିବାକୁ ଲେଭେଲ $value1 ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'ଦୈନିକ ଲଗଇନ୍ ବୋନସ୍';

  @override
  String get sharedDialogThanksForComingBack => 'ଫେରି ଆସିଥିବାରୁ ଧନ୍ୟବାଦ!';

  @override
  String get sharedDialogDailyRewardAdded => 'ଆପଣଙ୍କ ଦୈନିକ ପୁରସ୍କାର ଆପଣଙ୍କ ମୋଟ ପଏଣ୍ଟରେ ଯୋଗ କରାଯାଇଛି।';

  @override
  String get sharedDialogAwesome => 'ଚମତ୍କାର!';

  @override
  String get accountWelcomeGuest => 'ଅତିଥି';

  @override
  String get accountWelcomeGuestUser => 'ଅତିଥି ବ୍ୟବହାରକାରୀ';

  @override
  String get accountWelcomeUser => 'ବ୍ୟବହାରକାରୀ';

  @override
  String get accountWelcomePlayingAsGuest => 'ଅତିଥି ଭାବେ ଖେଳୁଛନ୍ତି';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google ଆକାଉଣ୍ଟ সংଯୋଗ କରନ୍ତୁ';

  @override
  String get accountWelcomeGoogleConnected => 'Google ଆକାଉଣ୍ଟ ସଫଳତାର ସହ ସଂଯୋଗ ହେଲା! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'ସାଇନ୍-ଇନ୍ ବାତିଲ୍ କରାগଲା।';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'ସଂଯୋଗ କରିବାରେ ବିଫଳ: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ';

  @override
  String get accountWelcomeSignOutTitle => 'ସାଇନ୍ ଆଉଟ୍ କରିବେ?';

  @override
  String get accountWelcomeSignOutMessage => 'ଆପଣ ନିଶ୍ଚିତ କି ଆପଣ ସାଇନ୍ ଆଉଟ୍ କରିବାକୁ ଚାହୁଁଛନ୍ତି? ଆପଣଙ୍କର ସେଭ୍ ହୋଇଥିବା ପ୍ରଗତି ପାଇବାକୁ ଆପଣଙ୍କୁ ପୁଣି ସାଇନ୍ ଇନ୍ କରିବାକୁ ପଡ଼ିବ।';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'ସାଇନ୍ ଆଉଟ୍ ବିଫଳ ହେଲା: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ଆପ୍ ଡାଟା ରିସେଟ୍ କରିବେ?';

  @override
  String get accountWelcomeResetAppMessage => 'ଏହା ଆପଣଙ୍କର ସମସ୍ତ ପଏଣ୍ଟ, ଷ୍ଟ୍ରିକ୍, ଗେମ୍ ଇତିହାସ ଏବଂ ସେଟିଂସକୁ ସ୍ଥାୟୀ ଭାବେ ଡିଲିଟ୍ କରିଦେବ। ଆପଣ ସାଇନ୍ ଆଉଟ୍ ହୋଇଯିବେ ଏବଂ ଷ୍ଟାର୍ଟ ସ୍କ୍ରିନକୁ ଫେରିযିବେ। ଏହାକୁ ପୂର୍ବବତ୍ କରାଯାଇପାରିବ ନାହିଁ।';

  @override
  String get accountWelcomeResetEverything => 'ସବୁକିଛି ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'ରିସେଟ୍ ବିଫଳ ହେଲା: $value1';
  }

  @override
  String get accountWelcomeCancel => 'ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get accountWelcomeResetAppData => 'ଆପ୍ ଡାଟା ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'ସମସ୍ତ ପଏଣ୍ଟ, ଷ୍ଟ୍ରିକ୍ ଏବଂ ସେଟିଂସ୍ ସଫା କରନ୍ତୁ';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz ଆପ୍';

  @override
  String get accountWelcomeTranslationNotAvailable => 'ଅନୁବାଦ ଏପର୍ଯ୍ୟନ୍ତ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google ସହିତ ଜାରି ରଖନ୍ତୁ';

  @override
  String get accountWelcomeSigningIn => 'ସାଇନ୍ ଇନ୍ ହେଉଛି...';

  @override
  String get accountWelcomeOr => 'କିମ୍ବା';

  @override
  String get accountWelcomeContinueAsGuest => 'ଅତିଥି ଭାବେ ଜାରି ରଖନ୍ତୁ';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'ଆପଣ পরে ଆପଣଙ୍କ ପ୍ରୋଫାଇଲରୁ ସାଇନ୍ ଇନ୍ କରିପାରିବେ।';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'ଆପଣ ଅତିଥି ଭାବେ ଆରମ୍ଭ କରି ପରେ ସାଇନ୍ ଇନ୍ କରିପାରିବେ।';

  @override
  String get accountWelcomeGreetingGuest => 'ସ୍ୱାଗତ';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'ସ୍ୱାଗତ, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ସାଇନ୍-ଇନ୍ ସମ୍ପୂର୍ଣ୍ଣ ହେଲା, କିନ୍ତୁ କୌଣସି ବ୍ୟବହାରକାରୀ ଆକାଉଣ୍ଟ ମିଳିଲା ନାହିଁ।';

  @override
  String get accountWelcomeErrorEmailExists => 'ଏହି ଇମେଲରେ ପୂର୍ବରୁ ଅନ୍ୟ ଏକ ସାଇନ୍-ଇନ୍ ପଦ୍ଧତି ବ୍ୟବହାର କରି ଆକାଉଣ୍ଟ ଅଛି।';

  @override
  String get accountWelcomeErrorCredentialInUse => 'ଏହି Google ଆକାଉଣ୍ଟ ପୂର୍ବରୁ ଅନ୍ୟ ଏକ ଆକାଉଣ୍ଟ ସହିତ ଲିଙ୍କ୍ ହୋଇଛି।';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google ପ୍ରମାଣୀକରଣ ତଥ୍ୟ ଅବୈଧ ଅଟେ କିମ୍ବା ଅବଧି ଶେଷ ହୋଇଯାଇଛି।';

  @override
  String get accountWelcomeErrorUserDisabled => 'ଏହି ଆକାଉଣ୍ଟକୁ ନିଷ୍କ୍ରିୟ କରାଯାଇଛି।';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ସାଇନ୍-ଇନ୍ ବର୍ତ୍ତମାନ ସକ୍ଷମ ହୋଇନାହିଁ।';

  @override
  String get accountWelcomeErrorNetwork => 'ନେଟୱାର୍କ ତ୍ରୁଟି। ଦୟାକରି ଆପଣଙ୍କର ଇଣ୍ଟରନେଟ୍ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get accountWelcomeErrorTooManyRequests => 'ବହୁତ ଗୁଡ଼ିଏ ସାଇନ୍-ଇନ୍ ପ୍ରୟାସ। ଦୟାକରି ଅପେକ୍ଷା କରନ୍ତୁ ଏବଂ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'କୌଣସି ଅତିରିକ୍ତ ତ୍ରୁଟି ସୂଚନା ନାହିଁ।';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ସାଇନ୍-ଇନ୍ ବିଫଳ ହେଲା।\n\nକୋଡ୍: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ସାଇନ୍-ଇନ୍ ତ୍ରୁଟି:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'ଅତିଥି ଭାବେ ଜାରି ରଖିବା ସମ୍ଭବ ହେଲା ନାହିଁ। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ସାଇନ୍-ଇନ୍ ଖୁବ୍ ଶୀଘ୍ର ଉପଲବ୍ଧ ହେବ।';

  @override
  String get accountWelcomeLoginTagline => 'ଶିଖନ୍ତୁ • ଅଭ୍ୟାସ କରନ୍ତୁ • ପ୍ରତିଯୋଗିତା କରନ୍ତୁ • ଅର୍ଜନ କରନ୍ତୁ';

  @override
  String get accountWelcomeCountryRegion => 'ଦେଶ / ଅଞ୍ଚଳ';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'ଦେଶ / ଅଞ୍ଚଳ: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ଦେଶ ଖୋଜନ୍ତୁ';

  @override
  String get accountWelcomeCountryNotSelected => 'ଚୟନ କରାଯାଇନାହିଁ';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'କାହିଁକି DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ ଅଭ୍ୟାସ ପ୍ରଶ୍ନ';

  @override
  String get accountWelcomeFeatureLanguages => 'ବହୁ-ଭାଷା ସମର୍ଥନ';

  @override
  String get accountWelcomeFeatureStreaks => 'ଷ୍ଟ୍ରିକ୍ ଏବଂ ଲିଡରବୋର୍ଡ';

  @override
  String get accountWelcomeFeatureGames => 'ଗେମ୍ ଏବଂ ଚ୍ୟାଲେଞ୍ଜ';

  @override
  String get accountWelcomeFeatureCloud => 'କ୍ଲାଉଡ୍ ଏବଂ DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'ବୋନସ୍ ଏବଂ ପୁରସ୍କାର';

  @override
  String get accountWelcomePracticeOnTheGo => 'ଯେକୌଣସି ସ୍ଥାନରେ ଅଭ୍ୟାସ କରନ୍ତୁ';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android ଆପ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ ଏବଂ ଯେକୌଣସି ସ୍ଥାନରେ ଅଫଲାଇନରେ ଶିଖନ୍ତୁ।';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play ରୁ ପାଆନ୍ତୁ';

  @override
  String achLocStreakTitle(String days) {
    return '$days ଦିନର ଧାରା';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days ଦିନର ଧାରା ବଜାୟ ରଖନ୍ତୁ।';
  }

  @override
  String get achLocYearStreakTitle => '୧ ବର୍ଷର ଧାରା';

  @override
  String get achLocFirstQuizTitle => 'ପ୍ରଥମ କୁଇଜ୍';

  @override
  String get achLocFirstQuizDescription => 'ଆପଣଙ୍କ ପ୍ରଥମ କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocQuiz10Title => 'କୁଇଜ୍ ଅନୁସନ୍ଧାନକାରୀ';

  @override
  String get achLocQuiz10Description => '10ଟି କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocPoints1000Title => '1000 ପଏଣ୍ଟ';

  @override
  String get achLocPoints1000Description => 'କୁଇଜ୍‌ରେ ମୋଟ 1000 ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocPerfectScoreTitle => 'ସମ୍ପୂର୍ଣ୍ଣ ସ୍କୋର';

  @override
  String get achLocPerfectScoreDescription => 'ଯେକୌଣସି କୁଇଜ୍‌ରେ 100% ସ୍କୋର କରନ୍ତୁ।';

  @override
  String get achLocQuiz25Title => 'କୁଇଜ୍ ଉତ୍ସାହୀ';

  @override
  String get achLocQuiz25Description => '25ଟି କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocQuiz50Title => 'କୁଇଜ୍ ମାଷ୍ଟର';

  @override
  String get achLocQuiz50Description => '50ଟି କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocQuiz100Title => 'ଶତକ କ୍ଲବ୍';

  @override
  String get achLocQuiz100Description => '100ଟି କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocQuiz250Title => 'କୁଇଜ୍ ଲେଜେଣ୍ଡ';

  @override
  String get achLocQuiz250Description => '250ଟି କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocPoints5000Title => '5,000 ପଏଣ୍ଟ';

  @override
  String get achLocPoints5000Description => 'ମୋଟ 5,000 ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocPoints10000Title => '10,000 ପଏଣ୍ଟ';

  @override
  String get achLocPoints10000Description => 'ମୋଟ 10,000 ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocPoints50000Title => '50,000 ପଏଣ୍ଟ';

  @override
  String get achLocPoints50000Description => 'ମୋଟ 50,000 ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocPoints100000Title => '100,000 ପଏଣ୍ଟ';

  @override
  String get achLocPoints100000Description => 'ମୋଟ 100,000 ପଏଣ୍ଟ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocDaily1Title => 'ଦୈନିକ ଆରମ୍ଭକାରୀ';

  @override
  String get achLocDaily1Description => 'ଆପଣଙ୍କ ପ୍ରଥମ ଦୈନିକ କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocDaily7Title => 'ଦୈନିକ ଅଭ୍ୟାସ';

  @override
  String get achLocDaily7Description => '7ଟି ଦୈନିକ କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocDaily30Title => 'ଦୈନିକ ଚାମ୍ପିଅନ୍';

  @override
  String get achLocDaily30Description => '30ଟି ଦୈନିକ କୁଇଜ୍ ସମ୍ପୂର୍ଣ୍ଣ କରନ୍ତୁ।';

  @override
  String get achLocSets5Title => 'ସେଟ୍ ଆରମ୍ଭକାରୀ';

  @override
  String get achLocSets5Description => '5ଟି କୁଇଜ୍ ସେଟ୍ ଶେଷ କରନ୍ତୁ।';

  @override
  String get achLocSets25Title => 'ସେଟ୍ ସଂଗ୍ରହକାରୀ';

  @override
  String get achLocSets25Description => '25ଟି କୁଇଜ୍ ସେଟ୍ ଶେଷ କରନ୍ତୁ।';

  @override
  String get achLocSets50Title => 'ସେଟ୍ ମାଷ୍ଟର';

  @override
  String get achLocSets50Description => '50ଟି କୁଇଜ୍ ସେଟ୍ ଶେଷ କରନ୍ତୁ।';

  @override
  String get achLocSets100Title => 'ସେଟ୍ ଲେଜେଣ୍ଡ';

  @override
  String get achLocSets100Description => '100ଟି କୁଇଜ୍ ସେଟ୍ ଶେଷ କରନ୍ତୁ।';

  @override
  String get achLocCert1Title => 'ପ୍ରଥମ ସାର୍ଟିଫିକେଟ୍';

  @override
  String get achLocCert1Description => 'ଆପଣଙ୍କ ପ୍ରଥମ ବର୍ଗ ସାର୍ଟିଫିକେଟ୍ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocCert5Title => 'ସାର୍ଟିଫାଏଡ୍ ପ୍ରୋ';

  @override
  String get achLocCert5Description => '5ଟି ବର୍ଗ ସାର୍ଟିଫିକେଟ୍ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocCert21Title => 'ସମ୍ପୂର୍ଣ୍ଣ ସାର୍ଟିଫାଏଡ୍';

  @override
  String get achLocCert21Description => 'ସମସ୍ତ 21ଟି ବର୍ଗରେ ଏକ ସାର୍ଟିଫିକେଟ୍ ଅର୍ଜନ କରନ୍ତୁ।';

  @override
  String get achLocThemeFreeValentinesWeek => 'ପ୍ରତିବର୍ଷ ଫେବ୍ରୁଆରୀ 7-14 ମାଗଣା';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'ପ୍ରତିବର୍ଷ ମାର୍ଚ୍ଚ 8-15 ମାଗଣା';

  @override
  String get achLocThemeLight => 'ଲାଇଟ୍';

  @override
  String get achLocThemeDark => 'ଡାର୍କ';

  @override
  String get achLocThemeSakura => 'ସାକୁରା';

  @override
  String get achLocThemeSunset => 'ସନସେଟ୍';

  @override
  String get achLocThemeCoffee => 'କଫି';

  @override
  String get achLocThemeTea => 'ଚା\'';

  @override
  String get achLocThemeOcean => 'ଓସେନ୍';

  @override
  String get achLocThemeSolarFlare => 'ସୋଲାର ଫ୍ଲେୟାର';

  @override
  String get achLocThemeForest => 'ଫରେଷ୍ଟ';

  @override
  String get achLocThemeAurora => 'ଅରୋରା';

  @override
  String get achLocThemeMatrix => 'ମ୍ୟାଟ୍ରିକ୍ସ';

  @override
  String get achLocThemeCyberPurple => 'ସାଇବର ପର୍ପଲ';

  @override
  String get achLocThemeInferno => 'ଇନଫର୍ନୋ';

  @override
  String get achLocThemeMidnight => 'ମିଡନାଇଟ୍';

  @override
  String get achLocThemeDarkGrey => 'ଗାଢ଼ ଧୂସର';

  @override
  String get achLocThemeBarbee => 'ବାର୍ବି';

  @override
  String get achLocThemeValentineDay => 'ଭାଲେଣ୍ଟାଇନ ଡେ';

  @override
  String get achLocThemeDqSpecial => 'DQ ସ୍ପେଶାଲ';

  @override
  String get achLocThemeArmy => 'ଆର୍ମି';

  @override
  String get achLocThemeSpiderMan => 'ସ୍ପାଇଡର-ମ୍ୟାନ';

  @override
  String get achLocThemeKrrish => 'କ୍ରିଶ';

  @override
  String get achLocThemeIronMan => 'ଆଇରନ ମ୍ୟାନ';

  @override
  String get achLocThemeCaptainAmerica => 'କ୍ୟାପଟେନ ଆମେରିକା';

  @override
  String get achLocThemeThor => 'ଥୋର';

  @override
  String get achLocThemeHulk => 'ହଲ୍କ';

  @override
  String get achLocThemeBlackWidow => 'ବ୍ଲାକ ୱିଡୋ';

  @override
  String get achLocThemeHawkeye => 'ହକଆଇ';

  @override
  String get achLocThemeBlackPanther => 'ବ୍ଲାକ ପ୍ୟାନ୍ଥର';

  @override
  String get achLocThemeScarletWitch => 'ସ୍କାର୍ଲେଟ ୱିଚ୍';

  @override
  String get achLocThemeVision => 'ଭିଜନ';

  @override
  String get achLocThemeAntMan => 'ଆଣ୍ଟ-ମ୍ୟାନ';

  @override
  String get achLocThemeCaptainMarvel => 'କ୍ୟାପଟେନ ମାର୍ଭେଲ';

  @override
  String get achLocThemeDoctorStrange => 'ଡକ୍ଟର ଷ୍ଟ୍ରେଞ୍ଜ';

  @override
  String get achLocThemeAvengers => 'ଅଭେଞ୍ଜର୍ସ';

  @override
  String get achLocThemeBatman => 'ବ୍ୟାଟମ୍ୟାନ';

  @override
  String get achLocThemeSuperman => 'ସୁପରମ୍ୟାନ';

  @override
  String get achLocThemeWonderWoman => 'ୱଣ୍ଡର ଉମ୍ୟାନ';

  @override
  String get achLocThemeFlash => 'ଫ୍ଲାସ';

  @override
  String get achLocThemeAquaman => 'ଆକ୍ୱାମ୍ୟାନ';

  @override
  String get achLocThemeGreenLantern => 'ଗ୍ରୀନ ଲଣ୍ଠନ';

  @override
  String get achLocThemeCyborg => 'ସାଇବର୍ଗ';

  @override
  String get achLocThemeSupergirl => 'ସୁପରଗର୍ଲ';

  @override
  String get achLocThemeDc => 'DC ହିରୋ';

  @override
  String get achLocThemeRainbow => 'ଇନ୍ଦ୍ରଧନୁ';

  @override
  String get achLocThemeDiamond => 'ହୀରା';

  @override
  String get achLocThemeLegendary => 'କିମ୍ବଦନ୍ତୀ';

  @override
  String get gameHintCmd001LsLa => 'ସମସ୍ତ ଫାଇଲକୁ ବିବରଣୀ ସହ ତାଲିକାଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get gameHintCmd002Grep => 'ଏକ ପ୍ୟାଟର୍ନ ବ୍ୟବହାର କରି ଟେକ୍ସଟ୍ ଖୋଜନ୍ତୁ';

  @override
  String get gameHintCmd003Chmod => 'ଫାଇଲ ଅନୁମତି ବଦଳାନ୍ତୁ';

  @override
  String get gameHintCmd004DfH => 'ଖାଲି ଡିସ୍କ ସ୍ଥାନ ଦେଖାନ୍ତୁ';

  @override
  String get gameHintCmd005TailF => 'ବଢ଼ୁଥିବା ଲଗ୍ ଫାଇଲକୁ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get gameHintCmd006PsAux => 'ଚାଲୁଥିବା ପ୍ରକ୍ରିୟାଗୁଡ଼ିକୁ ତାଲିକାଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get gameHintCmd007GitClone => 'ଏକ ଦୂରବର୍ତ୍ତୀ ରିପୋଜିଟୋରୀର ନକଲ କରନ୍ତୁ';

  @override
  String get gameHintCmd008GitStash => 'କମିଟ୍ ହୋଇନଥିବା ପରିବର୍ତ୍ତନଗୁଡ଼ିକୁ ଅଲଗା ରଖନ୍ତୁ';

  @override
  String get gameHintCmd009GitRebase => 'ନୂଆ ଆଧାର ଉପରେ କମିଟ୍‌ଗୁଡ଼ିକୁ ପୁନଃପ୍ରୟୋଗ କରନ୍ତୁ';

  @override
  String get gameHintCmd010GitBlame => 'ପ୍ରତ୍ୟେକ ଧାଡ଼ି କିଏ ବଦଳାଇଛି ଦେଖାନ୍ତୁ';

  @override
  String get gameHintCmd011DockerPs => 'ଚାଲୁଥିବା କଣ୍ଟେନରଗୁଡ଼ିକୁ ତାଲିକାଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile ରୁ ଏକ ଇମେଜ୍ ତିଆରି କରନ୍ତୁ';

  @override
  String get gameHintCmd013DockerLogs => 'କଣ୍ଟେନରର ଆଉଟ୍‌ପୁଟ୍ ଦେଖାନ୍ତୁ';

  @override
  String get gameHintCmd014DockerExec => 'କଣ୍ଟେନର ଭିତରେ ଏକ କମାଣ୍ଡ ଚଲାନ୍ତୁ';

  @override
  String get gameHintCmd015KubectlGetPods => 'ଏକ ନେମସ୍ପେସ୍‌ର ପଡ୍‌ଗୁଡ଼ିକୁ ତାଲିକାଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get gameHintCmd016KubectlApply => 'ଏକ ଫାଇଲରୁ ରିସୋର୍ସ ତିଆରି କରନ୍ତୁ';

  @override
  String get gameHintCmd017KubectlDescribe => 'ରିସୋର୍ସର ବିସ୍ତୃତ ସୂଚନା ଦେଖାନ୍ତୁ';

  @override
  String get gameHintCmd018KubectlScale => 'ରେପ୍ଲିକା ସଂଖ୍ୟା ବଦଳାନ୍ତୁ';

  @override
  String get gameHintCmd019TerraformInit => 'ପ୍ରୋଭାଇଡର ଡାଉନଲୋଡ୍ କରି ସେଟ୍ ଅପ୍ କରନ୍ତୁ';

  @override
  String get gameHintCmd020TerraformPlan => 'ଭିତ୍ତିଭୂମି ପରିବର୍ତ୍ତନର ପୂର୍ବାବଲୋକନ କରନ୍ତୁ';

  @override
  String get gameHintCmd021TerraformApply => 'ଭିତ୍ତିଭୂମି ତିଆରି କରନ୍ତୁ କିମ୍ବା ଅପଡେଟ୍ କରନ୍ତୁ';

  @override
  String get gameHintCmd022TerraformDestroy => 'ପରିଚାଳିତ ଭିତ୍ତିଭୂମିକୁ ହଟାନ୍ତୁ';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'ଏକ ଅଟୋମେସନ୍ ପ୍ଲେବୁକ୍ ଚଲାନ୍ତୁ';

  @override
  String get gameHintCmd024Ping => 'ICMP ସହ ପହଞ୍ଚଯୋଗ୍ୟତା ପରୀକ୍ଷା କରନ୍ତୁ';

  @override
  String get gameHintCmd025Traceroute => 'ହୋଷ୍ଟ ପର୍ଯ୍ୟନ୍ତ ପଥ ଦେଖାନ୍ତୁ';

  @override
  String get gameHintCmd026Curl => 'ଏକ URL ରୁ ଡାଟା ସ୍ଥାନାନ୍ତର କରନ୍ତୁ';

  @override
  String get gameHintCmd027Ssh => 'ଏକ ଦୂରବର୍ତ୍ତୀ ମେସିନ୍‌ରେ ସୁରକ୍ଷିତ ଭାବେ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get gameHintCmd028CrontabE => 'ନିର୍ଧାରିତ କାର୍ଯ୍ୟଗୁଡ଼ିକୁ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get gameHintCmd029SystemctlStatus => 'ଏକ ସେବାର ଅବସ୍ଥା ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes ରେ ଏକ ଚାର୍ଟ ଡିପ୍ଲୟ କରନ୍ତୁ';

  @override
  String get gameHintWord001Git => 'ସୋର୍ସ କୋଡ୍‌ର ପରିବର୍ତ୍ତନକୁ ଟ୍ରାକ୍ କରେ।';

  @override
  String get gameHintWord002Aws => 'Amazon ର କ୍ଲାଉଡ୍ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord003Api => 'ସଫ୍ଟୱେୟାର ସିଷ୍ଟମ୍‌ଗୁଡ଼ିକୁ ପରସ୍ପର ସହ ଯୋଗାଯୋଗ କରିବାକୁ ଦେଉଥିବା ଏକ ଚୁକ୍ତି।';

  @override
  String get gameHintWord004Dns => 'ଡୋମେନ୍ ନାମକୁ IP ଠିକଣାରେ ଅନୁବାଦ କରେ।';

  @override
  String get gameHintWord005Cli => 'କମାଣ୍ଡ ଚଲାଇବା ପାଇଁ ଏକ ଟେକ୍ସଟ୍-ଆଧାରିତ ଇଣ୍ଟରଫେସ୍।';

  @override
  String get gameHintWord006Cpu => 'ନିର୍ଦ୍ଦେଶଗୁଡ଼ିକୁ ଚଲାଉଥିବା ପ୍ରୋସେସର୍।';

  @override
  String get gameHintWord007Ram => 'ଚାଲୁଥିବା ପ୍ରୋଗ୍ରାମ୍ ବ୍ୟବହାର କରୁଥିବା ଅସ୍ଥାୟୀ ମେମୋରୀ।';

  @override
  String get gameHintWord008Ssh => 'ଦୂରବର୍ତ୍ତୀ ଶେଲ୍ ଆକ୍ସେସ୍ ପାଇଁ ସୁରକ୍ଷିତ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord009Yaml => 'ମଣିଷ ପଢ଼ିପାରୁଥିବା ଡାଟା ସିରିଆଲାଇଜେସନ୍ ଫର୍ମାଟ୍।';

  @override
  String get gameHintWord010Linux => 'ଓପନ୍-ସୋର୍ସ ଅପରେଟିଂ ସିଷ୍ଟମ୍ କର୍ଣ୍ଣଲ୍ ଏବଂ ଏହାର ପରିବାର।';

  @override
  String get gameHintWord011Bash => 'ଏକ ଲୋକପ୍ରିୟ Unix କମାଣ୍ଡ ଶେଲ୍।';

  @override
  String get gameHintWord012Cloud => 'ନେଟୱାର୍କ ଜରିଆରେ ଚାହିଦା ଅନୁସାରେ ମିଳୁଥିବା କମ୍ପ୍ୟୁଟିଂ।';

  @override
  String get gameHintWord013Docker => 'କଣ୍ଟେନର ତିଆରି ଓ ଚଲାଇବା ପାଇଁ ଏକ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord014Azure => 'Microsoft ର କ୍ଲାଉଡ୍ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord015Python => 'ବହୁଳ ଭାବେ ବ୍ୟବହୃତ ସ୍କ୍ରିପ୍ଟିଂ ଓ ପ୍ରୋଗ୍ରାମିଂ ଭାଷା।';

  @override
  String get gameHintWord016Github => 'ଏକ ଲୋକପ୍ରିୟ ହୋଷ୍ଟେଡ୍ Git ସହଯୋଗ ସେବା।';

  @override
  String get gameHintWord017Bgp => 'ସ୍ୱୟଂଶାସିତ ସିଷ୍ଟମ୍ ମଧ୍ୟରେ ରାଉଟ୍ ବିନିମୟ କରୁଥିବା ରାଉଟିଂ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord018Jenkins => 'CI ପାଇଁ ପ୍ରାୟତଃ ବ୍ୟବହୃତ ଏକ ଅଟୋମେସନ୍ ସର୍ଭର୍।';

  @override
  String get gameHintWord019Port => 'ନେଟୱାର୍କ ସେବାଗୁଡ଼ିକ ବ୍ୟବହାର କରୁଥିବା ସଂଖ୍ୟାଯୁକ୍ତ ଏଣ୍ଡପଏଣ୍ଟ।';

  @override
  String get gameHintWord020Proxy => 'କ୍ଲାଏଣ୍ଟମାନଙ୍କ ପାଇଁ ଅନୁରୋଧ ଫରୱାର୍ଡ କରୁଥିବା ସର୍ଭର୍।';

  @override
  String get gameHintWord021Cache => 'ବାରମ୍ବାର ବ୍ୟବହୃତ ଡାଟା ପାଇଁ ଏକ ଦ୍ରୁତ ଷ୍ଟୋର୍।';

  @override
  String get gameHintWord022Cron => 'ବାରମ୍ବାର ଚାଲୁଥିବା କମାଣ୍ଡ ପାଇଁ Unix ସିଡ୍ୟୁଲର୍।';

  @override
  String get gameHintWord023Bicep => 'ଭିତ୍ତିଭୂମିକୁ କୋଡ୍ ଭାବେ ଲେଖିବା ପାଇଁ Azure ର ଘୋଷଣାତ୍ମକ ଭାଷା।';

  @override
  String get gameHintWord024Apigee => 'କେନ୍ଦ୍ରୀୟ API ପରିଚାଳନା ପାଇଁ Google Cloud ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord025Root => 'Unix ଭଳି ସିଷ୍ଟମ୍‌ରେ ବିଶେଷାଧିକାରପ୍ରାପ୍ତ ପ୍ରଶାସକ ଖାତା।';

  @override
  String get gameHintWord026Nginx => 'ୱେବ୍ ସର୍ଭର୍ ଏବଂ ରିଭର୍ସ ପ୍ରକ୍ସି।';

  @override
  String get gameHintWord027Redis => 'ଇନ୍-ମେମୋରୀ ଡାଟା ଷ୍ଟୋର୍, ପ୍ରାୟତଃ କ୍ୟାଶ୍ ଭାବେ ବ୍ୟବହୃତ।';

  @override
  String get gameHintWord028Mysql => 'ଲୋକପ୍ରିୟ ରିଲେସନାଲ୍ ଡାଟାବେସ୍ ସିଷ୍ଟମ୍।';

  @override
  String get gameHintWord029Ruby => 'Chef ଭଳି ଟୁଲ୍‌ରେ ବ୍ୟବହୃତ ପ୍ରୋଗ୍ରାମିଂ ଭାଷା।';

  @override
  String get gameHintWord030Helm => 'ସାଧାରଣତଃ Kubernetes ସହ ବ୍ୟବହୃତ ପ୍ୟାକେଜ୍ ମ୍ୟାନେଜର୍।';

  @override
  String get gameHintWord031Pod => 'Kubernetes ରେ ସବୁଠାରୁ ଛୋଟ ଡିପ୍ଲୟଯୋଗ୍ୟ ଏକକ।';

  @override
  String get gameHintWord032Image => 'କଣ୍ଟେନର ତିଆରି କରିବାକୁ ବ୍ୟବହୃତ କେବଳ-ପଢ଼ିବା ଟେମ୍ପ୍ଲେଟ୍।';

  @override
  String get gameHintWord033Build => 'ସୋର୍ସ ଓ ନିର୍ଭରତାରୁ ଏକ ଆର୍ଟିଫ୍ୟାକ୍ଟ ତିଆରି କରେ।';

  @override
  String get gameHintWord034Deploy => 'ଏକ ଆପ୍ଲିକେସନ୍‌କୁ ପରିବେଶରେ ପ୍ରକାଶ କରେ।';

  @override
  String get gameHintWord035Terraform => 'ଭିତ୍ତିଭୂମିକୁ କୋଡ୍ ଭାବେ ପରିଚାଳନା କରିବା ପାଇଁ HashiCorp ର ଟୁଲ୍।';

  @override
  String get gameHintWord036Ansible => 'ଏଜେଣ୍ଟ-ବିହୀନ ଅଟୋମେସନ୍ ଓ କନ୍ଫିଗରେସନ୍ ଟୁଲ୍।';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes ପାଇଁ କମାଣ୍ଡ-ଲାଇନ୍ କ୍ଲାଏଣ୍ଟ।';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform ର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord039Gitops => 'Git କୁ ସତ୍ୟର ଉତ୍ସ ଭାବେ ବ୍ୟବହାର କରୁଥିବା ଅପରେସନାଲ୍ ମଡେଲ୍।';

  @override
  String get gameHintWord040Pipeline => 'ବିଲ୍ଡ, ଟେଷ୍ଟ ଓ ରିଲିଜ୍ ପର୍ଯ୍ୟାୟର ସ୍ୱୟଂଚାଳିତ କ୍ରମ।';

  @override
  String get gameHintWord041Container => 'ନିଜ ନିର୍ଭରତା ସହ ପ୍ୟାକେଜ୍ ହୋଇଥିବା ଅଲଗା ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord042Cluster => 'ଏକ ଯୌଥ ସିଷ୍ଟମ୍ ଭାବେ ପରିଚାଳିତ ମେସିନ୍‌ର ଗୋଷ୍ଠୀ।';

  @override
  String get gameHintWord043Ingress => 'ବାହ୍ୟ HTTP ରାଉଟିଂ ପାଇଁ Kubernetes API ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord044Firewall => 'ସୁରକ୍ଷା ନିୟମ ଅନୁସାରେ ନେଟୱାର୍କ ଟ୍ରାଫିକ୍ ଫିଲ୍ଟର୍ କରେ।';

  @override
  String get gameHintWord045Subnet => 'ଏକ IP ନେଟୱାର୍କର ତାର୍କିକ ଉପବିଭାଗ।';

  @override
  String get gameHintWord046Gateway => 'ଭିନ୍ନ ଭିନ୍ନ ନେଟୱାର୍କକୁ ଯୋଡ଼ୁଥିବା ନେଟୱାର୍କ ନୋଡ୍।';

  @override
  String get gameHintWord047Router => 'ନେଟୱାର୍କ ମଧ୍ୟରେ ପ୍ୟାକେଟ୍ ଫରୱାର୍ଡ କରେ।';

  @override
  String get gameHintWord048Switch => 'ଏକ ସ୍ଥାନୀୟ ନେଟୱାର୍କ ଭିତରେ ଡିଭାଇସ୍‌ଗୁଡ଼ିକୁ ଯୋଡ଼େ।';

  @override
  String get gameHintWord049Repository => 'ସୋର୍ସ କୋଡ୍ କିମ୍ବା ପ୍ୟାକେଜ୍ ପାଇଁ ପରିଚାଳିତ ଭଣ୍ଡାର।';

  @override
  String get gameHintWord050Systemd => 'Linux init ସିଷ୍ଟମ୍ ଓ ସେବା ପରିଚାଳକ।';

  @override
  String get gameHintWord051Journalctl => 'systemd ଜର୍ନାଲ୍ ଲଗ୍ ପଢ଼ିବାକୁ ବ୍ୟବହୃତ କମାଣ୍ଡ।';

  @override
  String get gameHintWord052Permission => 'କିଏ ପଢ଼ିପାରିବ, ଲେଖିପାରିବ ବା ଚଲାଇପାରିବ ତାହା ନିୟନ୍ତ୍ରଣ କରୁଥିବା ନିୟମ।';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud ର ପରିଚାଳିତ PostgreSQL-ଅନୁକୂଳ ଡାଟାବେସ୍।';

  @override
  String get gameHintWord054Configmap => 'ଗୋପନୀୟ ନୁହେଁ ଏପରି କନ୍ଫିଗରେସନ୍ ପାଇଁ Kubernetes ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord055Secret => 'ସମ୍ବେଦନଶୀଳ ଡାଟା ପାଇଁ ଉଦ୍ଦିଷ୍ଟ Kubernetes ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord056Persistent => 'ୱାର୍କଲୋଡ୍ ରିଷ୍ଟାର୍ଟ ପରେ ମଧ୍ୟ ରହୁଥିବା ଷ୍ଟୋରେଜ୍କୁ ବୁଝାଏ।';

  @override
  String get gameHintWord057Volume => 'କଣ୍ଟେନରରେ ମାଉଣ୍ଟ ହୋଇଥିବା ଫାଇଲସିଷ୍ଟମ୍ ଷ୍ଟୋରେଜ୍।';

  @override
  String get gameHintWord058Storage => 'ଫାଇଲ, ଅବଜେକ୍ଟ କିମ୍ବା ବ୍ଲକ୍ ପାଇଁ ସ୍ଥାୟୀ ସ୍ଥାନ।';

  @override
  String get gameHintWord059Replica => 'ସ୍କେଲ୍ କିମ୍ବା ନିର୍ଭରଯୋଗ୍ୟତା ପାଇଁ ରଖାଯାଇଥିବା ୱାର୍କଲୋଡ୍ ଇନ୍‌ଷ୍ଟାନ୍ସର ନକଲ।';

  @override
  String get gameHintWord060Deployment => 'ଷ୍ଟେଟ୍‌ଲେସ୍ ଆପ୍ଲିକେସନ୍ ପଡ୍ ପାଇଁ Kubernetes କଣ୍ଟ୍ରୋଲର୍।';

  @override
  String get gameHintWord061Dockerfile => 'Docker ଇମେଜ୍ ତିଆରି କରିବାକୁ ବ୍ୟବହୃତ ନିର୍ଦ୍ଦେଶାବଳୀ।';

  @override
  String get gameHintWord062Database => 'ଆପ୍ଲିକେସନ୍ ଦ୍ୱାରା କ୍ୱେରି କରାଯାଉଥିବା ସଂଗଠିତ ଭଣ୍ଡାର।';

  @override
  String get gameHintWord063Automation => 'ମାନୁଆଲ୍ ପଦକ୍ଷେପ ବିନା ଦୁହରାଯାଇପାରୁଥିବା କାମ କରିବାକୁ ସଫ୍ଟୱେୟାର ବ୍ୟବହାର।';

  @override
  String get gameHintWord064Anthos => 'ବିଭିନ୍ନ ପରିବେଶରେ କ୍ଲଷ୍ଟର ପରିଚାଳନା ପାଇଁ Google Cloud ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord065Bigquery => 'ବୃହତ୍-ସ୍ତରୀୟ ଡାଟା ବିଶ୍ଲେଷଣ ପାଇଁ Google Cloud ସେବା।';

  @override
  String get gameHintWord066Bigtable => 'ବିଶ୍ଲେଷଣ ପାଇଁ Google Cloud ର ୱାଇଡ୍-କଲମ୍ NoSQL ଡାଟାବେସ୍।';

  @override
  String get gameHintWord067Loadbalancer => 'ଆସୁଥିବା ଟ୍ରାଫିକ୍‌କୁ ଏକାଧିକ ବ୍ୟାକଏଣ୍ଡ ମଧ୍ୟରେ ବଣ୍ଟନ କରେ।';

  @override
  String get gameHintWord068Prometheus => 'ଟାଇମ୍-ସିରିଜ୍ ମେଟ୍ରିକ୍ ସଂରକ୍ଷଣ କରୁଥିବା ମନିଟରିଂ ସିଷ୍ଟମ୍।';

  @override
  String get gameHintWord069Grafana => 'ଅବଜର୍ଭେବିଲିଟି ଡାଟା କ୍ୱେରି ଓ ଦୃଶ୍ୟମାନ କରିବା ପାଇଁ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud ର ପରିଚାଳିତ NoSQL JSON ଡକ୍ୟୁମେଣ୍ଟ ଡାଟାବେସ୍।';

  @override
  String get gameHintWord071Cloudtrail => 'ଅଡିଟ୍ ପାଇଁ API କାର୍ଯ୍ୟକଳାପ ରେକର୍ଡ କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord072Statefulset => 'ସ୍ଥିର ପରିଚୟ ଆବଶ୍ୟକ କରୁଥିବା ୱାର୍କଲୋଡ୍ ପାଇଁ Kubernetes କଣ୍ଟ୍ରୋଲର୍।';

  @override
  String get gameHintWord073Daemonset => 'ବାଛିଥିବା ନୋଡ୍‌ଗୁଡ଼ିକରେ ଏକ ପଡ୍ ଚଲାଉଥିବା Kubernetes କଣ୍ଟ୍ରୋଲର୍।';

  @override
  String get gameHintWord074Serviceaccount => 'ୱାର୍କଲୋଡ୍ କିମ୍ବା ପ୍ରକ୍ରିୟା ବ୍ୟବହାର କରୁଥିବା Kubernetes ପରିଚୟ।';

  @override
  String get gameHintWord075Networkpolicy => 'ପଡ୍ ନେଟୱାର୍କ ଟ୍ରାଫିକ୍ ନିୟନ୍ତ୍ରଣ କରୁଥିବା Kubernetes ରିସୋର୍ସ।';

  @override
  String get gameHintWord076Certificate => 'TLS ରେ ପରିଚୟ ସ୍ଥାପନ କରିବାକୁ ବ୍ୟବହୃତ ଡିଜିଟାଲ୍ ଦସ୍ତାବିଜ୍।';

  @override
  String get gameHintWord077Encryption => 'ଡାଟାକୁ ବଦଳାଇ ଦିଏ ଯାହାଦ୍ୱାରା କେବଳ ଅଧିକୃତ ପକ୍ଷ ପଢ଼ିପାରିବେ।';

  @override
  String get gameHintWord078Observability => 'ସିଷ୍ଟମ୍‌ର ଆଉଟ୍‌ପୁଟ୍‌ରୁ ତାହାର ଆଚରଣ ଅନୁମାନ କରିବାର କ୍ଷମତା।';

  @override
  String get gameHintWord079Coredns => 'Kubernetes କ୍ଲଷ୍ଟର ଭିତରେ ସାଧାରଣତଃ ବ୍ୟବହୃତ DNS ସର୍ଭର୍।';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API ଜରିଆରେ କ୍ଲାଉଡ୍ ରିସୋର୍ସ ପରିଚାଳନା କରୁଥିବା ପ୍ରକଳ୍ପ।';

  @override
  String get gameHintWord081Failover => 'ବିଫଳତା ପରେ ଏକ ଷ୍ଟାଣ୍ଡବାଇ ଉପାଦାନକୁ ବଦଳିଯିବା।';

  @override
  String get gameHintWord082Idempotency => 'ଏକ କାର୍ଯ୍ୟକୁ ଦୁହରାଇଲେ ଥରେ କଲା ଭଳି ସମାନ ପ୍ରଭାବ ହେବାର ଗୁଣ।';

  @override
  String get gameHintWord083Dataflow => 'ଷ୍ଟ୍ରିମ୍ ଓ ବ୍ୟାଚ୍ ଡାଟା ପ୍ରକ୍ରିୟାକରଣ ପାଇଁ Google Cloud ସେବା।';

  @override
  String get gameHintWord084Orchestration => 'ଏକାଧିକ ସ୍ୱୟଂଚାଳିତ ୱାର୍କଲୋଡ୍‌ର ସମନ୍ୱିତ ପରିଚାଳନା।';

  @override
  String get gameHintWord085Dataplex => 'ଉଦ୍ୟୋଗ ଡାଟା ଖୋଜିବା ଓ ପରିଚାଳନା ପାଇଁ Google Cloud ସେବା।';

  @override
  String get gameHintWord086Serverless => 'ଭିତ୍ତିଭୂମି ପରିଚାଳନା ଲୁଚିଯାଇଥିବା ନିଷ୍ପାଦନ ମଡେଲ୍।';

  @override
  String get gameHintWord087Distributed => 'ଯେଉଁ ସିଷ୍ଟମ୍‌ର ଉପାଦାନଗୁଡ଼ିକ ନେଟୱାର୍କରେ ଯୋଡ଼ା ଏକାଧିକ ମେସିନ୍‌ରେ ଚାଲେ।';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud ର ପରିଚାଳିତ Apache Spark ଓ Hadoop ପରିବେଶ।';

  @override
  String get gameHintWord089Dynamodb => 'Terraform ଷ୍ଟେଟ୍ ଲକିଂ ପାଇଁ ପ୍ରାୟତଃ ବ୍ୟବହୃତ AWS NoSQL ଡାଟାବେସ୍।';

  @override
  String get gameHintWord090Provisioning => 'ଭିତ୍ତିଭୂମି ବା ରିସୋର୍ସକୁ ବ୍ୟବହାର ପାଇଁ ପ୍ରସ୍ତୁତ କରିବା।';

  @override
  String get gameHintWord091Elasticsearch => 'କେନ୍ଦ୍ରୀୟ ଲଗିଂ ପାଇଁ ସାଧାରଣତଃ ବ୍ୟବହୃତ ସର୍ଚ୍ଚ ଇଞ୍ଜିନ୍।';

  @override
  String get gameHintWord092Etcd => 'Kubernetes କ୍ଲଷ୍ଟର ଅବସ୍ଥା ଧରିଥିବା କି-ଭ୍ୟାଲ୍ୟୁ ଷ୍ଟୋର୍।';

  @override
  String get gameHintWord093Authentication => 'ଜଣେ ଉପଯୋଗକର୍ତ୍ତା ବା ସେବା କିଏ ତାହା ଯାଞ୍ଚ କରିବାର ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord094Authorization => 'ଏକ ପରିଚୟକୁ କ\'ଣ କରିବାକୁ ଅନୁମତି ଅଛି ତାହା ସ୍ଥିର କରିବାର ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord095Expressroute => 'ଡାଟା ସେଣ୍ଟରକୁ ଉତ୍ସର୍ଗୀକୃତ ବ୍ୟକ୍ତିଗତ ସଂଯୋଗ ପାଇଁ Azure ସେବା।';

  @override
  String get gameHintWord096Configuration => 'ସଫ୍ଟୱେୟାର କିପରି ଆଚରଣ କରିବ ତାହା ନିର୍ଧାରଣ କରୁଥିବା ସେଟିଂ।';

  @override
  String get gameHintWord097Infrastructure => 'ଆପ୍ଲିକେସନ୍‌କୁ ସମର୍ଥନ କରୁଥିବା କମ୍ପ୍ୟୁଟ୍, ନେଟୱାର୍କ ଓ ଷ୍ଟୋରେଜ୍ ରିସୋର୍ସ।';

  @override
  String get gameHintWord098Fastconnect => 'ଉତ୍ସର୍ଗୀକୃତ ବ୍ୟକ୍ତିଗତ ନେଟୱାର୍କ ସଂଯୋଗ ପାଇଁ Oracle Cloud ସେବା।';

  @override
  String get gameHintWord099Containerd => 'Kubernetes ବ୍ୟବହାର କରୁଥିବା ଶିଳ୍ପ-ମାନକ କଣ୍ଟେନର ରନ୍‌ଟାଇମ୍।';

  @override
  String get gameHintWord100Kubernetes => 'କଣ୍ଟେନର ଅର୍କେଷ୍ଟ୍ରେସନ୍ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord101Http => 'ୱେବ୍ ରିସୋର୍ସ ଅନୁରୋଧ କରିବାକୁ ବ୍ୟବହୃତ ଆପ୍ଲିକେସନ୍ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord102Https => 'ୱେବ୍ ଅନୁରୋଧ ପ୍ରୋଟୋକଲ୍‌ର ଏନକ୍ରିପ୍ଟ ହୋଇଥିବା ସଂସ୍କରଣ।';

  @override
  String get gameHintWord103Tcp => 'ନିର୍ଭରଯୋଗ୍ୟ କ୍ରମବଦ୍ଧ ବିତରଣ ଦେଉଥିବା ଟ୍ରାନ୍ସପୋର୍ଟ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord104Udp => 'ଡାଟାଗ୍ରାମ ପାଇଁ ବ୍ୟବହୃତ ସଂଯୋଗ-ବିହୀନ ଟ୍ରାନ୍ସପୋର୍ଟ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord105Tls => 'ନେଟୱାର୍କରେ ଆଦାନପ୍ରଦାନ ହେଉଥିବା ଡାଟାକୁ ସୁରକ୍ଷିତ କରୁଥିବା ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord106Ssl => 'ଆଧୁନିକ ଟ୍ରାନ୍ସପୋର୍ଟ ସୁରକ୍ଷା ପ୍ରୋଟୋକଲ୍‌ର ପୁରୁଣା ପୂର୍ବବର୍ତ୍ତୀ।';

  @override
  String get gameHintWord107Ftp => 'ଫାଇଲ ସ୍ଥାନାନ୍ତର ପାଇଁ ପାରମ୍ପରିକ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord108Sftp => 'ସୁରକ୍ଷିତ ଶେଲ୍ ସଂଯୋଗ ଉପରେ ଚାଲୁଥିବା ଫାଇଲ ସ୍ଥାନାନ୍ତର ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord109Smtp => 'ସର୍ଭର୍ ମଧ୍ୟରେ ଇମେଲ୍ ପଠାଇବା ପାଇଁ ବ୍ୟବହୃତ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord110Snmp => 'ନେଟୱାର୍କ ଡିଭାଇସ୍ ପରିଚାଳନା ଓ ନିରୀକ୍ଷଣ ପାଇଁ ବ୍ୟବହୃତ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord111Icmp => 'ନେଟୱାର୍କ ତ୍ରୁଟି ଓ ping ବାର୍ତ୍ତା ବହନ କରୁଥିବା ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord112Arp => 'ସ୍ଥାନୀୟ IPv4 ଠିକଣାକୁ ହାର୍ଡୱେୟାର ଠିକଣାରେ ରୂପାନ୍ତର କରେ।';

  @override
  String get gameHintWord113Dhcp => 'ନେଟୱାର୍କ କ୍ଲାଏଣ୍ଟମାନଙ୍କୁ ସ୍ୱୟଂଚାଳିତ ଭାବେ IP କନ୍ଫିଗରେସନ୍ ଦିଏ।';

  @override
  String get gameHintWord114Nat => 'ପ୍ୟାକେଟ୍ ଗେଟୱେ ପାର ହେଲାବେଳେ ନେଟୱାର୍କ ଠିକଣା ବଦଳାଏ।';

  @override
  String get gameHintWord115Vpn => 'ଦୂରବର୍ତ୍ତୀ ନେଟୱାର୍କ ବା ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ଯୋଡ଼ୁଥିବା ଏନକ୍ରିପ୍ଟ ହୋଇଥିବା ଟନେଲ୍।';

  @override
  String get gameHintWord116Vpc => 'ସାର୍ବଜନୀନ କ୍ଲାଉଡ୍‌ରେ ଅଲଗା ଭର୍ଚୁଆଲ୍ ନେଟୱାର୍କ।';

  @override
  String get gameHintWord117Vlan => 'ସୁଇଚ୍ ହୋଇଥିବା ନେଟୱାର୍କର ତାର୍କିକ ବିଭାଜନ।';

  @override
  String get gameHintWord118Wan => 'ବିସ୍ତୃତ ଭୌଗୋଳିକ କ୍ଷେତ୍ରକୁ ଘେରୁଥିବା ନେଟୱାର୍କ।';

  @override
  String get gameHintWord119Lan => 'ସ୍ଥାନୀୟ କ୍ଷେତ୍ର ଭିତରେ ଡିଭାଇସ୍‌ଗୁଡ଼ିକୁ ଯୋଡ଼ୁଥିବା ନେଟୱାର୍କ।';

  @override
  String get gameHintWord120Cdn => 'ବିତରିତ ବିଷୟବସ୍ତୁକୁ କ୍ୟାଶ୍ କରୁଥିବା ବିତରିତ ଏଜ୍ ନେଟୱାର୍କ।';

  @override
  String get gameHintWord121Cidr => 'ସ୍ଲାଶ୍ ଲମ୍ବ ସହ ନେଟୱାର୍କ ପ୍ରିଫିକ୍ସ ପ୍ରକାଶ କରୁଥିବା ସଂକେତ।';

  @override
  String get gameHintWord122Host => 'ନେଟୱାର୍କ ସହ ଯୋଡ଼ା ହୋଇଥିବା କମ୍ପ୍ୟୁଟର୍ ବା ଏଣ୍ଡପଏଣ୍ଟ।';

  @override
  String get gameHintWord123Hostname => 'ନେଟୱାର୍କ ମେସିନ୍‌କୁ ଦିଆଯାଇଥିବା ମଣିଷ ପଢ଼ିପାରୁଥିବା ନାମ।';

  @override
  String get gameHintWord124Domain => 'ଇଣ୍ଟରନେଟ୍ ନାମକରଣ ପ୍ରଣାଳୀରେ ନାମିତ ପ୍ରଶାସନିକ କ୍ଷେତ୍ର।';

  @override
  String get gameHintWord125Zone => 'DNS ନେମସ୍ପେସ୍‌ର ପ୍ରଶାସନିକ ଅଂଶ।';

  @override
  String get gameHintWord126Record => 'DNS ଡାଟାବେସ୍‌ର ଏକ ପୃଥକ୍ ପ୍ରବିଷ୍ଟି।';

  @override
  String get gameHintWord127Aaaa => 'ନାମକୁ IPv6 ଠିକଣାରେ ରୂପାନ୍ତର କରୁଥିବା DNS ରେକର୍ଡ ପ୍ରକାର।';

  @override
  String get gameHintWord128Ptr => 'ବିପରୀତ ଠିକଣା ଖୋଜିବା ପାଇଁ ବ୍ୟବହୃତ DNS ରେକର୍ଡ ପ୍ରକାର।';

  @override
  String get gameHintWord129Txt => 'ଟେକ୍ସଟ୍ ମୂଲ୍ୟ ସଂରକ୍ଷଣ କରୁଥିବା DNS ରେକର୍ଡ ପ୍ରକାର।';

  @override
  String get gameHintWord130Cname => 'ଗୋଟିଏ ନାମକୁ ଅନ୍ୟର ଉପନାମ କରୁଥିବା DNS ରେକର୍ଡ।';

  @override
  String get gameHintWord131Route => 'ପ୍ୟାକେଟ୍‌କୁ ଗନ୍ତବ୍ୟ ଦିଗରେ ପଠାଉଥିବା ପଥ ପ୍ରବିଷ୍ଟି।';

  @override
  String get gameHintWord132Routing => 'ନେଟୱାର୍କ ମଧ୍ୟରେ ଟ୍ରାଫିକ୍ ପାଇଁ ପଥ ବାଛିବା।';

  @override
  String get gameHintWord133Packet => 'ନେଟୱାର୍କ ଦେଇ ପଠାଯାଉଥିବା ଡାଟାର ଏକ ଏକକ।';

  @override
  String get gameHintWord134Protocol => 'ସିଷ୍ଟମ୍ ମଧ୍ୟରେ ଯୋଗାଯୋଗ ପାଇଁ ସହମତ ନିୟମ।';

  @override
  String get gameHintWord135Ack => 'ଡାଟା ପ୍ରାପ୍ତିକୁ ସ୍ୱୀକାର କରୁଥିବା TCP ଫ୍ଲାଗ୍।';

  @override
  String get gameHintWord136Bandwidth => 'ଏକ ଯୋଗାଯୋଗ ଲିଙ୍କ୍‌ର କ୍ଷମତା।';

  @override
  String get gameHintWord137Latency => 'ଅନୁରୋଧ ବା ପ୍ୟାକେଟ୍ ଉତ୍ତର ପାଇବା ପୂର୍ବରୁ ହେଉଥିବା ବିଳମ୍ବ।';

  @override
  String get gameHintWord138Throughput => 'ପ୍ରତି ଏକକ ସମୟରେ ପ୍ରକ୍ରିୟାକୃତ ଉପଯୋଗୀ କାମ ବା ଡାଟାର ପରିମାଣ।';

  @override
  String get gameHintWord139Mtu => 'ଫ୍ରାଗ୍ମେଣ୍ଟେସନ୍ ବିନା ଏକ ଲିଙ୍କ୍ ପଠାଇପାରୁଥିବା ସବୁଠାରୁ ବଡ଼ ପ୍ୟାକେଟ୍ ଆକାର।';

  @override
  String get gameHintWord140Alpn => 'ଆପ୍ଲିକେସନ୍-ସ୍ତର ପ୍ରୋଟୋକଲ୍ ଆଲୋଚନା କରୁଥିବା TLS ଏକ୍ସଟେନ୍ସନ୍।';

  @override
  String get gameHintWord141Grep => 'ମେଳ ଖାଉଥିବା ପ୍ୟାଟର୍ନ ପାଇଁ ଟେକ୍ସଟ୍ ଧାଡ଼ିଗୁଡ଼ିକୁ ଖୋଜେ।';

  @override
  String get gameHintWord142Sed => 'ଟେକ୍ସଟ୍ ବଦଳାଇବା ପାଇଁ ସାଧାରଣତଃ ବ୍ୟବହୃତ ଷ୍ଟ୍ରିମ୍ ଏଡିଟର୍।';

  @override
  String get gameHintWord143Lscpu => 'ପ୍ରୋସେସର୍ ଆର୍କିଟେକ୍ଚର୍ ଓ କୋର୍ ବିବରଣୀ ଦେଖାଉଥିବା Linux କମାଣ୍ଡ।';

  @override
  String get gameHintWord144Find => 'ଫାଇଲ ସର୍ତ୍ତ ବ୍ୟବହାର କରି ଡିରେକ୍ଟୋରୀ ଗଛକୁ ଖୋଜେ।';

  @override
  String get gameHintWord145Lsblk => 'ବ୍ଲକ୍ ଡିଭାଇସ୍ ଓ ସେମାନଙ୍କ ସମ୍ପର୍କ ତାଲିକାଭୁକ୍ତ କରୁଥିବା Linux କମାଣ୍ଡ।';

  @override
  String get gameHintWord146Sort => 'ଟେକ୍ସଟ୍ ଧାଡ଼ିଗୁଡ଼ିକୁ କ୍ରମବଦ୍ଧ କରେ।';

  @override
  String get gameHintWord147Uniq => 'ସଂଲଗ୍ନ ପୁନରାବୃତ୍ତ ଧାଡ଼ିଗୁଡ଼ିକୁ ଫିଲ୍ଟର୍ କରେ।';

  @override
  String get gameHintWord148Head => 'ଫାଇଲର ଆରମ୍ଭ ଅଂଶ ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord149Tail => 'ଫାଇଲର ଶେଷ ଅଂଶ ପ୍ରିଣ୍ଟ କରେ ଏବଂ ଯୋଡ଼ାଯାଉଥିବା ଲଗ୍ ଅନୁସରଣ କରିପାରେ।';

  @override
  String get gameHintWord150Cat => 'ଫାଇଲଗୁଡ଼ିକୁ ଯୋଡ଼ି ସେମାନଙ୍କ ବିଷୟବସ୍ତୁ ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord151Cut => 'ଧାଡ଼ିରୁ ବାଛିଥିବା ଫିଲ୍ଡ ବା ଅକ୍ଷର ସ୍ତମ୍ଭ ବାହାର କରେ।';

  @override
  String get gameHintWord152Tee => 'ଷ୍ଟାଣ୍ଡାର୍ଡ ଇନ୍‌ପୁଟ୍‌କୁ ଫାଇଲ ଓ ଷ୍ଟାଣ୍ଡାର୍ଡ ଆଉଟ୍‌ପୁଟ୍‌କୁ ନକଲ କରେ।';

  @override
  String get gameHintWord153Echo => 'ନିଜ ଆର୍ଗୁମେଣ୍ଟକୁ ଷ୍ଟାଣ୍ଡାର୍ଡ ଆଉଟ୍‌ପୁଟ୍‌ରେ ଲେଖେ।';

  @override
  String get gameHintWord154Printf => 'ଶେଲ୍ ବା ପ୍ରୋଗ୍ରାମରୁ ଫର୍ମାଟ୍ ହୋଇଥିବା ଟେକ୍ସଟ୍ ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord155Touch => 'ଫାଇଲ ଟାଇମ୍‌ଷ୍ଟାମ୍ପ ଅପଡେଟ୍ କରେ କିମ୍ବା ଖାଲି ଫାଇଲ ତିଆରି କରେ।';

  @override
  String get gameHintWord156Mkdir => 'ଡିରେକ୍ଟୋରୀ ତିଆରି କରେ।';

  @override
  String get gameHintWord157Rmdir => 'ଖାଲି ଡିରେକ୍ଟୋରୀ ହଟାଏ।';

  @override
  String get gameHintWord158Chmod => 'Unix ଫାଇଲ ଅନୁମତି ବିଟ୍ ବଦଳାଏ।';

  @override
  String get gameHintWord159Chown => 'ଫାଇଲର ମାଲିକାନା ବଦଳାଏ।';

  @override
  String get gameHintWord160Chgrp => 'ଫାଇଲର ଗୋଷ୍ଠୀ ମାଲିକାନା ବଦଳାଏ।';

  @override
  String get gameHintWord161Pwd => 'ବର୍ତ୍ତମାନର କାର୍ଯ୍ୟ ଡିରେକ୍ଟୋରୀ ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord162Apt => 'Debian-ଆଧାରିତ ସିଷ୍ଟମ୍ ବ୍ୟବହାର କରୁଥିବା ପ୍ୟାକେଜ୍ ପରିଚାଳନା ଟୁଲ୍।';

  @override
  String get gameHintWord163Top => 'ପ୍ରକ୍ରିୟା ଓ ସିଷ୍ଟମ୍ ରିସୋର୍ସ ବ୍ୟବହାରର ଇଣ୍ଟରାକ୍ଟିଭ୍ ପ୍ରଦର୍ଶନ।';

  @override
  String get gameHintWord164Agent => 'ହୋଷ୍ଟରେ କାମ ଚଲାଉଥିବା ବା ରିପୋର୍ଟ କରୁଥିବା ସଫ୍ଟୱେୟାର ଉପାଦାନ।';

  @override
  String get gameHintWord165Kill => 'ପ୍ରକ୍ରିୟାକୁ ତାହାର ପରିଚାୟକ ଦ୍ୱାରା ଏକ ସିଗ୍ନାଲ୍ ପଠାଏ।';

  @override
  String get gameHintWord166Signal => 'ଅପରେଟିଂ ସିଷ୍ଟମ୍ ଦ୍ୱାରା ପ୍ରକ୍ରିୟାକୁ ପଠାଯାଉଥିବା ବିଜ୍ଞପ୍ତି।';

  @override
  String get gameHintWord167Sigkill => 'ପ୍ରକ୍ରିୟାକୁ ତୁରନ୍ତ ସମାପ୍ତ କରୁଥିବା Unix ସିଗ୍ନାଲ୍।';

  @override
  String get gameHintWord168Nice => 'ସମାୟୋଜିତ ସିଡ୍ୟୁଲିଂ ପ୍ରାଥମିକତା ସହ ପ୍ରକ୍ରିୟା ଆରମ୍ଭ କରେ।';

  @override
  String get gameHintWord169Renice => 'ଚାଲୁଥିବା ପ୍ରକ୍ରିୟାର ସିଡ୍ୟୁଲିଂ ପ୍ରାଥମିକତା ବଦଳାଏ।';

  @override
  String get gameHintWord170Jobs => 'ବର୍ତ୍ତମାନର ଶେଲ୍ ଦ୍ୱାରା ପରିଚାଳିତ ଜବ୍‌ଗୁଡ଼ିକୁ ତାଲିକାଭୁକ୍ତ କରେ।';

  @override
  String get gameHintWord171Nohup => 'ହ୍ୟାଙ୍ଗଅପ୍ ସିଗ୍ନାଲ୍ ଅଣଦେଖା କରି କମାଣ୍ଡ ଚଲାଏ।';

  @override
  String get gameHintWord172Screen => 'ଅଲଗା କରାଯାଇପାରୁଥିବା ସେସନ୍ ସମର୍ଥନ କରୁଥିବା ଟର୍ମିନାଲ୍ ମଲ୍ଟିପ୍ଲେକ୍ସର୍।';

  @override
  String get gameHintWord173Uptime => 'ସିଷ୍ଟମ୍ କେତେ ସମୟ ଧରି ଚାଲୁଛି ତାହା ଜଣାଏ।';

  @override
  String get gameHintWord174Uname => 'ସିଷ୍ଟମ୍ ଓ କର୍ଣ୍ଣଲ୍ ସୂଚନା ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord175Whoami => 'ପ୍ରଭାବୀ ବର୍ତ୍ତମାନର ଉପଯୋଗକର୍ତ୍ତା ନାମ ପ୍ରିଣ୍ଟ କରେ।';

  @override
  String get gameHintWord176Umask => 'ଫାଇଲ ତିଆରି ବେଳେ ବ୍ୟବହୃତ ଅନୁମତି ମାସ୍କ ସେଟ୍ କରେ।';

  @override
  String get gameHintWord177Usermod => 'ବିଦ୍ୟମାନ ଉପଯୋଗକର୍ତ୍ତା ଖାତାକୁ ବଦଳାଉଥିବା Linux କମାଣ୍ଡ।';

  @override
  String get gameHintWord178Crontab => 'ନିର୍ଧାରିତ ବାରମ୍ବାର ଶେଲ୍ ଜବ୍ ସମ୍ପାଦନ କରେ ବା ତାଲିକାଭୁକ୍ତ କରେ।';

  @override
  String get gameHintWord179Findmnt => 'ମାଉଣ୍ଟ ହୋଇଥିବା ଫାଇଲସିଷ୍ଟମ୍ ସୂଚନା ଦେଖାଉଥିବା Linux କମାଣ୍ଡ।';

  @override
  String get gameHintWord180Mount => 'ଏକ ଫାଇଲସିଷ୍ଟମ୍‌କୁ ଡିରେକ୍ଟୋରୀ ଗଛ ସହ ଯୋଡ଼େ।';

  @override
  String get gameHintWord181Sigterm => 'ପ୍ରକ୍ରିୟାକୁ ସୁରୁଖୁରୁରେ ସମାପ୍ତ କରିବାକୁ ଅନୁରୋଧ କରୁଥିବା Unix ସିଗ୍ନାଲ୍।';

  @override
  String get gameHintWord182Fstab => 'ମାଉଣ୍ଟ କରିବାକୁ ଥିବା ଫାଇଲସିଷ୍ଟମ୍ ବର୍ଣ୍ଣନା କରୁଥିବା ସିଷ୍ଟମ୍ ଟେବୁଲ୍।';

  @override
  String get gameHintWord183Swap => 'ଭୌତିକ ମେମୋରୀକୁ ପରିପୂରକ କରିବାକୁ ବ୍ୟବହୃତ ଡିସ୍କ-ଆଧାରିତ ସ୍ଥାନ।';

  @override
  String get gameHintWord184Tmpfs => 'ଭର୍ଚୁଆଲ୍ ମେମୋରୀ ଆଧାରିତ ଅସ୍ଥାୟୀ ଫାଇଲସିଷ୍ଟମ୍।';

  @override
  String get gameHintWord185Proc => 'ପ୍ରକ୍ରିୟା ଓ କର୍ଣ୍ଣଲ୍ ସୂଚନା ଦେଖାଉଥିବା Linux ଭର୍ଚୁଆଲ୍ ଫାଇଲସିଷ୍ଟମ୍।';

  @override
  String get gameHintWord186Syslog => 'ମାନକ ଲଗିଂ ପ୍ରୋଟୋକଲ୍ ଓ ବାର୍ତ୍ତା ଫର୍ମାଟ୍।';

  @override
  String get gameHintWord187Dmesg => 'କର୍ଣ୍ଣଲ୍ ରିଙ୍ଗ୍ ବଫର୍‌ରୁ ବାର୍ତ୍ତା ଦେଖାଏ।';

  @override
  String get gameHintWord188Free => 'ବ୍ୟବହୃତ ଓ ଉପଲବ୍ଧ ସିଷ୍ଟମ୍ ମେମୋରୀ ଜଣାଏ।';

  @override
  String get gameHintWord189Stat => 'ଫାଇଲର ବିସ୍ତୃତ ମେଟାଡାଟା ଦେଖାଏ।';

  @override
  String get gameHintWord190Lsof => 'ଖୋଲା ଫାଇଲ ଓ ସେଗୁଡ଼ିକୁ ଧରିଥିବା ପ୍ରକ୍ରିୟା ତାଲିକାଭୁକ୍ତ କରେ।';

  @override
  String get gameHintWord191Netstat => 'ନେଟୱାର୍କ ସଂଯୋଗ ଓ ରାଉଟିଂ ସୂଚନା ଦେଖାଏ।';

  @override
  String get gameHintWord192Checksum => 'ଡାଟାରେ ପରିବର୍ତ୍ତନ ବା କ୍ଷତି ଚିହ୍ନଟ କରିବାକୁ ଗଣନା କରାଯାଇଥିବା ମୂଲ୍ୟ।';

  @override
  String get gameHintWord193Ping => 'ଇକୋ ଅନୁରୋଧ ବ୍ୟବହାର କରି ନେଟୱାର୍କ ପହଞ୍ଚଯୋଗ୍ୟତା ପରୀକ୍ଷା କରେ।';

  @override
  String get gameHintWord194Traceroute => 'ନେଟୱାର୍କ ଗନ୍ତବ୍ୟ ପର୍ଯ୍ୟନ୍ତ ମଧ୍ୟବର୍ତ୍ତୀ ହପ୍ ଦେଖାଏ।';

  @override
  String get gameHintWord195Resolver => 'ନାମ କ୍ୱେରିର ଉତ୍ତର ଖୋଜୁଥିବା DNS ଉପାଦାନ।';

  @override
  String get gameHintWord196Nslookup => 'DNS ନାମ ଓ ଠିକଣା ଖୋଜେ।';

  @override
  String get gameHintWord197Telnet => 'ପୁରୁଣା ଅନେନକ୍ରିପ୍ଟେଡ୍ ଦୂରବର୍ତ୍ତୀ ଟର୍ମିନାଲ୍ ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord198Tftp => 'UDP-ଆଧାରିତ ସରଳ ଫାଇଲ ସ୍ଥାନାନ୍ତର ପ୍ରୋଟୋକଲ୍।';

  @override
  String get gameHintWord199Daemon => 'Unix ଭଳି ସିଷ୍ଟମ୍‌ରେ ପୃଷ୍ଠଭୂମି ସେବା ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord200Kernel => 'ଅପରେଟିଂ ସିଷ୍ଟମ୍ ରିସୋର୍ସ ପରିଚାଳନା କରୁଥିବା ମୂଳ ଉପାଦାନ।';

  @override
  String get gameHintWord201Commit => 'ସଂସ୍କରଣ ନିୟନ୍ତ୍ରଣରେ ପରିବର୍ତ୍ତନର ରେକର୍ଡ ହୋଇଥିବା ସ୍ନାପ୍‌ଶଟ୍।';

  @override
  String get gameHintWord202Branch => 'ବିକାଶର ଏକ ଧାରାକୁ ଦର୍ଶାଉଥିବା ଚଳନଶୀଳ ରେଫରେନ୍ସ।';

  @override
  String get gameHintWord203Merge => 'ବିକାଶର ଭିନ୍ନ ଧାରାର ଇତିହାସକୁ ମିଶାଏ।';

  @override
  String get gameHintWord204Rebase => 'ଭିନ୍ନ ଆଧାର କମିଟ୍ ଉପରେ କମିଟ୍‌ଗୁଡ଼ିକୁ ପୁଣି ଚଲାଏ।';

  @override
  String get gameHintWord205Clone => 'ଦୂରବର୍ତ୍ତୀ ରିପୋଜିଟୋରୀର ସ୍ଥାନୀୟ ନକଲ ତିଆରି କରେ।';

  @override
  String get gameHintWord206Fetch => 'ମର୍ଜ୍ ନକରି ଦୂରବର୍ତ୍ତୀ ଅବଜେକ୍ଟ ଓ ରେଫରେନ୍ସ ଡାଉନଲୋଡ୍ କରେ।';

  @override
  String get gameHintWord207Pull => 'ପରିବର୍ତ୍ତନ ଆଣି ବର୍ତ୍ତମାନର ବ୍ରାଞ୍ଚରେ ଏକୀକୃତ କରେ।';

  @override
  String get gameHintWord208Push => 'ସ୍ଥାନୀୟ କମିଟ୍‌ଗୁଡ଼ିକୁ ଦୂରବର୍ତ୍ତୀ ରିପୋଜିଟୋରୀକୁ ପଠାଏ।';

  @override
  String get gameHintWord209Stash => 'କମିଟ୍ ହୋଇନଥିବା କାର୍ଯ୍ୟ-ଗଛର ପରିବର୍ତ୍ତନକୁ ଅସ୍ଥାୟୀ ଭାବେ ସଂରକ୍ଷଣ କରେ।';

  @override
  String get gameHintWord210Revert => 'ଅନ୍ୟ ଏକ କମିଟ୍‌କୁ ଅକାମି କରୁଥିବା କମିଟ୍ ତିଆରି କରେ।';

  @override
  String get gameHintWord211Reset => 'Git ରେଫରେନ୍ସ ଘୁଞ୍ଚାଏ ଏବଂ ଇଣ୍ଡେକ୍ସ ବା କାର୍ଯ୍ୟ ଫାଇଲ ରିସେଟ୍ କରିପାରେ।';

  @override
  String get gameHintWord212Reflog => 'Git ରେଫରେନ୍ସର ଅପଡେଟ୍‌ର ସ୍ଥାନୀୟ ଇତିହାସ।';

  @override
  String get gameHintWord213Diff => 'ସଂସ୍କରଣ ବା ଫାଇଲ ମଧ୍ୟରେ ପାର୍ଥକ୍ୟ ଦେଖାଏ।';

  @override
  String get gameHintWord214Status => 'ଷ୍ଟେଜ୍ ହୋଇଥିବା, ବଦଳିଥିବା ଏବଂ ଅଟ୍ରାକ୍ ଫାଇଲ ଜଣାଏ।';

  @override
  String get gameHintWord215Checkout => 'ସଂସ୍କରଣ ବଦଳାଇବା ବା ଫାଇଲ ପୁନରୁଦ୍ଧାର ପାଇଁ Git କମାଣ୍ଡ।';

  @override
  String get gameHintWord216Tag => 'ସାଧାରଣତଃ ଏକ ରିଲିଜ୍ ଚିହ୍ନିତ କରୁଥିବା ନାମିତ ରେଫରେନ୍ସ।';

  @override
  String get gameHintWord217Remote => 'ଅନ୍ୟ ଏକ ରିପୋଜିଟୋରୀ ସହ ନାମିତ ସଂଯୋଗ।';

  @override
  String get gameHintWord218Origin => 'କ୍ଲୋନ୍ ହୋଇଥିବା ରିପୋଜିଟୋରୀ ରିମୋଟ୍‌କୁ ଦିଆଯାଇଥିବା ଡିଫଲ୍ଟ ନାମ।';

  @override
  String get gameHintWord219Upstream => 'ସ୍ଥାନୀୟ ବ୍ରାଞ୍ଚ ସହ ଜଡ଼ିତ ରିମୋଟ୍ ଟ୍ରାକିଂ ବ୍ରାଞ୍ଚ।';

  @override
  String get gameHintWord220Worktree => 'ରିପୋଜିଟୋରୀ ସହ ଯୋଡ଼ା ଚେକ୍-ଆଉଟ୍ ହୋଇଥିବା କାର୍ଯ୍ୟ ଡିରେକ୍ଟୋରୀ।';

  @override
  String get gameHintWord221Registry => 'କଣ୍ଟେନର ଇମେଜ୍ ସଂରକ୍ଷଣ ଓ ବିତରଣ କରୁଥିବା ସେବା।';

  @override
  String get gameHintWord222Digest => 'କଣ୍ଟେନର ଇମେଜ୍ ପାଇଁ ବିଷୟବସ୍ତୁ-ଆଧାରିତ ପରିଚାୟକ।';

  @override
  String get gameHintWord223Layer => 'କଣ୍ଟେନର ଇମେଜ୍‌ର ଏକ ଅଂଶ ଗଠନ କରୁଥିବା ଫାଇଲସିଷ୍ଟମ୍ ପରିବର୍ତ୍ତନ।';

  @override
  String get gameHintWord224Entrypoint => 'ମୁଖ୍ୟ କଣ୍ଟେନର ଏକ୍ସିକ୍ୟୁଟେବଲ୍ ସ୍ଥିର କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord225Cmd => 'ଡିଫଲ୍ଟ କମାଣ୍ଡ ବା ଆର୍ଗୁମେଣ୍ଟ ଦର୍ଶାଉଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord226Workdir => 'କାର୍ଯ୍ୟ ଡିରେକ୍ଟୋରୀ ସେଟ୍ କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord227Copy => 'ବିଲ୍ଡ-କଣ୍ଟେକ୍ସଟ୍ ଫାଇଲକୁ ଇମେଜ୍‌କୁ ନକଲ କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord228Add => 'ସ୍ଥାନୀୟ ଆର୍କାଇଭ୍ ମଧ୍ୟ ଖୋଲିପାରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord229Run => 'ବିଲ୍ଡ-ସମୟରେ କମାଣ୍ଡ ଚଲାଉଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord230Env => 'ପରିବେଶ ଭେରିଏବଲ୍ ବ୍ୟାଖ୍ୟା କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord231Arg => 'ବିଲ୍ଡ-ସମୟ ଭେରିଏବଲ୍ ଘୋଷଣା କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord232Expose => 'କଣ୍ଟେନର ପୋର୍ଟକୁ ଦଲିଲବଦ୍ଧ କରୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord233User => 'ପରବର୍ତ୍ତୀ କମାଣ୍ଡ ପାଇଁ ଖାତା ବାଛୁଥିବା Dockerfile ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord234Healthcheck => 'କଣ୍ଟେନରର ସ୍ୱାସ୍ଥ୍ୟ କିପରି ପରୀକ୍ଷା କରିବେ ତାହା ବର୍ଣ୍ଣନା କରୁଥିବା ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord235Shebang => 'ଚଲାଇବାକୁ ଇଣ୍ଟରପ୍ରେଟର୍ ଚିହ୍ନଟ କରୁଥିବା ସ୍କ୍ରିପ୍ଟର ପ୍ରଥମ ଧାଡ଼ି।';

  @override
  String get gameHintWord236Compose => 'ବହୁ-କଣ୍ଟେନର ଆପ୍ଲିକେସନ୍ ବ୍ୟାଖ୍ୟା ଓ ଚଲାଇବା ପାଇଁ Docker ଟୁଲ୍।';

  @override
  String get gameHintWord237Bridge => 'ସ୍ଥାନୀୟ କଣ୍ଟେନର ନେଟୱାର୍କିଂ ପାଇଁ ସାଧାରଣ Docker ନେଟୱାର୍କ ଡ୍ରାଇଭର୍।';

  @override
  String get gameHintWord238Overlay => 'ଏକାଧିକ ହୋଷ୍ଟର କଣ୍ଟେନରକୁ ଘେରୁଥିବା ନେଟୱାର୍କ।';

  @override
  String get gameHintWord239None => 'କଣ୍ଟେନର ନେଟୱାର୍କିଂକୁ ଅକ୍ଷମ କରୁଥିବା Docker ନେଟୱାର୍କ ଡ୍ରାଇଭର୍।';

  @override
  String get gameHintWord240Prune => 'ଅବ୍ୟବହୃତ କଣ୍ଟେନର ରିସୋର୍ସ ହଟାଏ।';

  @override
  String get gameHintWord241Replicaset => 'ଇଚ୍ଛିତ ପଡ୍ ସଂଖ୍ୟା ବଜାୟ ରଖୁଥିବା Kubernetes କଣ୍ଟ୍ରୋଲର୍।';

  @override
  String get gameHintWord242Service => 'ପଡ୍‌ଗୁଡ଼ିକୁ ସ୍ଥିର ଆକ୍ସେସ୍ ଦେଉଥିବା Kubernetes ଅମୂର୍ତ୍ତକରଣ।';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes ସେବାକୁ ସମର୍ଥନ କରୁଥିବା ଠିକଣାଗୁଡ଼ିକ।';

  @override
  String get gameHintWord244Namespace => 'Kubernetes ରିସୋର୍ସକୁ ଗୋଷ୍ଠୀବଦ୍ଧ କରୁଥିବା ତାର୍କିକ ପରିସର।';

  @override
  String get gameHintWord245Node => 'Kubernetes ପଡ୍ ଚଲାଉଥିବା ୱାର୍କର୍ ମେସିନ୍।';

  @override
  String get gameHintWord246Kubelet => 'ପ୍ରତ୍ୟେକ ନୋଡ୍‌ରେ ପଡ୍ ନିଷ୍ପାଦନ ପରିଚାଳନା କରୁଥିବା ଏଜେଣ୍ଟ।';

  @override
  String get gameHintWord247Pvc => 'ସ୍ଥାୟୀ ଷ୍ଟୋରେଜ୍ ପାଇଁ Kubernetes ଅନୁରୋଧ।';

  @override
  String get gameHintWord248Apiserver => 'କ୍ଲଷ୍ଟର API ପ୍ରକାଶ କରୁଥିବା Kubernetes କଣ୍ଟ୍ରୋଲ୍-ପ୍ଲେନ୍ ଉପାଦାନ।';

  @override
  String get gameHintWord249Role => 'ଭୂମିକା-ଆଧାରିତ ଆକ୍ସେସ୍ ନିୟନ୍ତ୍ରଣରେ ଅନୁମତିର ନାମିତ ସମୂହ।';

  @override
  String get gameHintWord250Resourcequota => 'ନେମସ୍ପେସ୍‌ରେ ରିସୋର୍ସ ବ୍ୟବହାର ସୀମିତ କରୁଥିବା Kubernetes ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord251Selector => 'ଲେବଲ୍ ଅନୁସାରେ ରିସୋର୍ସ ମେଳାଉଥିବା ଅଭିବ୍ୟକ୍ତି।';

  @override
  String get gameHintWord252Taint => 'ମେଳ ଖାଉଥିବା ଟୋଲରେସନ୍ ନଥିବା ପଡ୍‌କୁ ଦୂରେଇ ଦେଉଥିବା ନୋଡ୍ ଗୁଣ।';

  @override
  String get gameHintWord253Toleration => 'ଟେଣ୍ଟ୍ ହୋଇଥିବା ନୋଡ୍‌ରେ ସିଡ୍ୟୁଲିଂ ଅନୁମତି ଦେଉଥିବା ପଡ୍ ସେଟିଂ।';

  @override
  String get gameHintWord254Cordon => 'Kubernetes ନୋଡ୍‌କୁ ସିଡ୍ୟୁଲ୍ ଅଯୋଗ୍ୟ ଚିହ୍ନିତ କରେ।';

  @override
  String get gameHintWord255Uncordon => 'କର୍ଡନ୍ ହୋଇଥିବା ନୋଡ୍‌କୁ ପୁଣି ସିଡ୍ୟୁଲ୍ ଯୋଗ୍ୟ କରେ।';

  @override
  String get gameHintWord256Drain => 'ନୋଡ୍ ରକ୍ଷଣାବେକ୍ଷଣ ପୂର୍ବରୁ ୱାର୍କଲୋଡ୍‌କୁ ସୁରକ୍ଷିତ ଭାବେ ହଟାଏ।';

  @override
  String get gameHintWord257Job => 'ଏକ କାମକୁ ସମାପ୍ତି ପର୍ଯ୍ୟନ୍ତ ଚଲାଉଥିବା Kubernetes ୱାର୍କଲୋଡ୍।';

  @override
  String get gameHintWord258Cronjob => 'ସମୟସୂଚୀ ଅନୁସାରେ ଜବ୍ ତିଆରି କରୁଥିବା Kubernetes ୱାର୍କଲୋଡ୍।';

  @override
  String get gameHintWord259Readiness => 'କଣ୍ଟେନର ଟ୍ରାଫିକ୍ ପାଇପାରିବ କି ନାହିଁ ଦର୍ଶାଉଥିବା ପ୍ରୋବ୍।';

  @override
  String get gameHintWord260Liveness => 'କଣ୍ଟେନରକୁ ରିଷ୍ଟାର୍ଟ ଆବଶ୍ୟକ କି ନାହିଁ ଦର୍ଶାଉଥିବା ପ୍ରୋବ୍।';

  @override
  String get gameHintWord261Canary => 'ନୂଆ ସଂସ୍କରଣକୁ ଟ୍ରାଫିକ୍‌ର ଛୋଟ ଅଂଶରେ ପ୍ରକାଶ କରୁଥିବା ରିଲିଜ୍ ପଦ୍ଧତି।';

  @override
  String get gameHintWord262Rolling => 'ଚାଲୁଥିବା ଇନ୍‌ଷ୍ଟାନ୍ସକୁ ଧୀରେ ଧୀରେ ବଦଳାଉଥିବା ଅପଡେଟ୍ କୌଶଳ।';

  @override
  String get gameHintWord263Rollback => 'ପୂର୍ବରୁ ଠିକ୍ ଚାଲୁଥିବା ଆପ୍ଲିକେସନ୍ ସଂସ୍କରଣକୁ ଫେରାଇ ଆଣେ।';

  @override
  String get gameHintWord264Rollout => 'ନୂଆ ଆପ୍ଲିକେସନ୍ ସଂସ୍କରଣର କ୍ରମିକ ଡିପ୍ଲୟମେଣ୍ଟ।';

  @override
  String get gameHintWord265Recreate => 'ପୁରୁଣା ପଡ୍ ବନ୍ଦ କରି ବଦଳି ପଡ୍ ଆରମ୍ଭ କରୁଥିବା ଡିପ୍ଲୟମେଣ୍ଟ କୌଶଳ।';

  @override
  String get gameHintWord266Blue => 'ବ୍ଲୁ-ଗ୍ରୀନ୍ ରିଲିଜ୍‌ର ଦୁଇଟି ପରିବେଶ ମଧ୍ୟରୁ ଗୋଟିଏ।';

  @override
  String get gameHintWord267Green => 'ବ୍ଲୁ-ଗ୍ରୀନ୍ ରିଲିଜ୍‌ର ଅନ୍ୟ ପରିବେଶ।';

  @override
  String get gameHintWord268Artifact => 'ବିଲ୍ଡ ପାଇପଲାଇନ୍ ଦ୍ୱାରା ତିଆରି ସଂସ୍କରଣଯୁକ୍ତ ଫଳାଫଳ।';

  @override
  String get gameHintWord269Staging => 'ରିଲିଜ୍ ଯାଞ୍ଚ ପାଇଁ ବ୍ୟବହୃତ ଉତ୍ପାଦନ-ପୂର୍ବ ପରିବେଶ।';

  @override
  String get gameHintWord270Production => 'ପ୍ରକୃତ ଅନ୍ତିମ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ସେବା ଦେଉଥିବା ପରିବେଶ।';

  @override
  String get gameHintWord271Release => 'ବ୍ୟବହାର ପାଇଁ ଉପଲବ୍ଧ କରାଯାଇଥିବା ସଫ୍ଟୱେୟାର ସଂସ୍କରଣ।';

  @override
  String get gameHintWord272Version => 'ସଫ୍ଟୱେୟାର ସଂଶୋଧନକୁ ଅଲଗା କରୁଥିବା ପରିଚାୟକ।';

  @override
  String get gameHintWord273Revision => 'ଦଲିଲ ବା କୋଡ୍‌ବେସ୍‌ର ଚିହ୍ନଟଯୋଗ୍ୟ ସଂସ୍କରଣ।';

  @override
  String get gameHintWord274Webhook => 'କୌଣସି ଘଟଣା ଘଟିଲେ ପଠାଯାଉଥିବା HTTP ବିଜ୍ଞପ୍ତି।';

  @override
  String get gameHintWord275Runbook => 'ସିଷ୍ଟମ୍ ଚଲାଇବା ବା ପୁନରୁଦ୍ଧାର ପାଇଁ ଦଲିଲବଦ୍ଧ ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord276Workspace => 'କାର୍ଯ୍ୟରତ ପ୍ରକଳ୍ପ ରିସୋର୍ସ ଧରିଥିବା ଡିରେକ୍ଟୋରୀ ବା ପରିସର।';

  @override
  String get gameHintWord277Credentials => 'ସିଷ୍ଟମ୍ ଆକ୍ସେସ୍ ପାଇଁ ବ୍ୟବହୃତ ପ୍ରମାଣୀକରଣ ସାମଗ୍ରୀ।';

  @override
  String get gameHintWord278Trigger => 'ପାଇପଲାଇନ୍ ଆରମ୍ଭ କରୁଥିବା ଘଟଣା ବା ସର୍ତ୍ତ।';

  @override
  String get gameHintWord279Parameter => 'ଜବ୍ ବା ଫଙ୍କସନ୍‌କୁ ଦିଆଯାଉଥିବା ନାମିତ ଇନ୍‌ପୁଟ୍।';

  @override
  String get gameHintWord280Access => 'ଅନୁମତି ଅଧୀନରେ ରିସୋର୍ସ ବ୍ୟବହାର କରିବାର କ୍ଷମତା।';

  @override
  String get gameHintWord281Module => 'ଭିତ୍ତିଭୂମି ସଂଜ୍ଞାର ପୁନଃବ୍ୟବହାରଯୋଗ୍ୟ ସମୂହ।';

  @override
  String get gameHintWord282Provider => 'କନ୍ଫିଗରେସନ୍‌କୁ ବାହ୍ୟ API ସହ ଯୋଡ଼ୁଥିବା Terraform ପ୍ଲଗଇନ୍।';

  @override
  String get gameHintWord283Resource => 'କନ୍ଫିଗରେସନ୍‌ରେ ଘୋଷିତ ପରିଚାଳିତ ଭିତ୍ତିଭୂମି ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord284Variable => 'କନ୍ଫିଗରେସନ୍ ବା କୋଡ୍ ବ୍ୟବହାର କରୁଥିବା ନାମିତ ଇନ୍‌ପୁଟ୍ ମୂଲ୍ୟ।';

  @override
  String get gameHintWord285Output => 'ଭିତ୍ତିଭୂମି କନ୍ଫିଗରେସନ୍ ଫେରାଉଥିବା ପ୍ରକାଶିତ ମୂଲ୍ୟ।';

  @override
  String get gameHintWord286Tfstate => 'Terraform ଷ୍ଟେଟ୍ ସ୍ନାପ୍‌ଶଟ୍ ସହ ଜଡ଼ିତ ଫାଇଲ ପ୍ରତ୍ୟୟ।';

  @override
  String get gameHintWord287Tfvars => 'Terraform ଇନ୍‌ପୁଟ୍ ଭେରିଏବଲ୍ ମୂଲ୍ୟ ପାଇଁ ବ୍ୟବହୃତ ଫାଇଲ ପ୍ରତ୍ୟୟ।';

  @override
  String get gameHintWord288Backend => 'ଷ୍ଟେଟ୍ ସଂରକ୍ଷଣ ନିୟନ୍ତ୍ରଣ କରୁଥିବା Terraform କନ୍ଫିଗରେସନ୍।';

  @override
  String get gameHintWord289Plan => 'ପ୍ରସ୍ତାବିତ ଭିତ୍ତିଭୂମି ପରିବର୍ତ୍ତନର Terraform ପୂର୍ବାବଲୋକନ।';

  @override
  String get gameHintWord290Apply => 'ପ୍ରସ୍ତାବିତ ପରିବର୍ତ୍ତନ ଲାଗୁ କରୁଥିବା Terraform ଅପରେସନ୍।';

  @override
  String get gameHintWord291Destroy => 'ପରିଚାଳିତ ଭିତ୍ତିଭୂମି ହଟାଉଥିବା Terraform ଅପରେସନ୍।';

  @override
  String get gameHintWord292Import => 'ବିଦ୍ୟମାନ ରିସୋର୍ସକୁ ଭିତ୍ତିଭୂମି ପରିଚାଳନା ଅଧୀନକୁ ଆଣେ।';

  @override
  String get gameHintWord293Refresh => 'ରେକର୍ଡ ହୋଇଥିବା ଅବସ୍ଥାକୁ ପ୍ରକୃତ ଭିତ୍ତିଭୂମି ସହ ସମକାଳୀନ କରେ।';

  @override
  String get gameHintWord294Validate => 'କନ୍ଫିଗରେସନ୍ ସିଣ୍ଟାକ୍ସ ଓ ଆନ୍ତରିକ ସଙ୍ଗତି ଯାଞ୍ଚ କରେ।';

  @override
  String get gameHintWord295Fmt => 'ମାନକ କନ୍ଫିଗରେସନ୍ ଫର୍ମାଟିଂ ଲାଗୁ କରୁଥିବା Terraform କମାଣ୍ଡ।';

  @override
  String get gameHintWord296Init => 'Terraform ପ୍ରୋଭାଇଡର ଓ କାର୍ଯ୍ୟ ଡିରେକ୍ଟୋରୀ ଆରମ୍ଭ କରେ।';

  @override
  String get gameHintWord297Executor => 'ବିଲ୍ଡ ଚଲାଇପାରୁଥିବା Jenkins ୱାର୍କର୍ ସ୍ଲଟ୍।';

  @override
  String get gameHintWord298Dependencies => 'ଗୋଟିଏ ଉପାଦାନ ପୂର୍ବରୁ ଅନ୍ୟଟି ଆବଶ୍ୟକ କରୁଥିବା ସମ୍ପର୍କ।';

  @override
  String get gameHintWord299Drift => 'ଘୋଷିତ ଓ ପ୍ରକୃତ ଭିତ୍ତିଭୂମି ଅବସ୍ଥା ମଧ୍ୟରେ ପାର୍ଥକ୍ୟ।';

  @override
  String get gameHintWord300Locking => 'ସମକାଳୀନ ଲେଖକମାନଙ୍କୁ ଯୌଥ ଅବସ୍ଥା ବଦଳାଇବାରୁ ରୋକେ।';

  @override
  String get gameHintWord301Playbook => 'ଅଟୋମେସନ୍ ପ୍ଲେ ଓ ଟାସ୍କ ବର୍ଣ୍ଣନା କରୁଥିବା Ansible ଦଲିଲ।';

  @override
  String get gameHintWord302Inventory => 'ପରିଚାଳିତ ହୋଷ୍ଟ ଓ ଗୋଷ୍ଠୀର Ansible ସଂଗ୍ରହ।';

  @override
  String get gameHintWord303Facts => 'ପରିଚାଳିତ ହୋଷ୍ଟ ବିଷୟରେ ସଂଗୃହୀତ ସିଷ୍ଟମ୍ ସୂଚନା।';

  @override
  String get gameHintWord304Task => 'ଅଟୋମେସନ୍‌ରେ କାମର ଏକ ପୃଥକ୍ ଏକକ।';

  @override
  String get gameHintWord305Handler => 'ପରିବର୍ତ୍ତନ ଦ୍ୱାରା ସୂଚିତ ହେଲେ ଚାଲୁଥିବା Ansible ଟାସ୍କ।';

  @override
  String get gameHintWord306Notify => 'ବଦଳିଥିବା ଟାସ୍କ ପରେ ହ୍ୟାଣ୍ଡଲର୍‌କୁ ଧାଡ଼ିରେ ରଖୁଥିବା Ansible ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord307Become => 'ବିଶେଷାଧିକାର ବୃଦ୍ଧି ସକ୍ଷମ କରୁଥିବା Ansible ସେଟିଂ।';

  @override
  String get gameHintWord308Vault => 'ସମ୍ବେଦନଶୀଳ ଅଟୋମେସନ୍ ଡାଟାକୁ ଏନକ୍ରିପ୍ଟ କରିବା ପାଇଁ Ansible ବୈଶିଷ୍ଟ୍ୟ।';

  @override
  String get gameHintWord309Register => 'ଟାସ୍କ ଫଳାଫଳକୁ ଭେରିଏବଲ୍‌ରେ ସଂରକ୍ଷଣ କରୁଥିବା Ansible ନିର୍ଦ୍ଦେଶ।';

  @override
  String get gameHintWord310When => 'ସର୍ତ୍ତମୂଳକ ଟାସ୍କ ନିଷ୍ପାଦନ ନିୟନ୍ତ୍ରଣ କରୁଥିବା Ansible କୀୱର୍ଡ।';

  @override
  String get gameHintWord311Loop => 'ଏକ ସଂଗ୍ରହ ଉପରେ ଅଟୋମେସନ୍ ଟାସ୍କ ଦୁହରାଏ।';

  @override
  String get gameHintWord312Include => 'ପୁନଃବ୍ୟବହାରଯୋଗ୍ୟ ଅଟୋମେସନ୍ ବିଷୟବସ୍ତୁକୁ ଗତିଶୀଳ ଭାବେ ଲୋଡ୍ କରେ।';

  @override
  String get gameHintWord313Tags => 'ଅଟୋମେସନ୍ ଟାସ୍କର ଉପସମୂହ ବାଛିବା ପାଇଁ ବ୍ୟବହୃତ ଲେବଲ୍।';

  @override
  String get gameHintWord314Template => 'ଡିପ୍ଲୟମେଣ୍ଟ ପୂର୍ବରୁ ଭେରିଏବଲ୍ ସହ ରେଣ୍ଡର୍ ହେଉଥିବା ଫାଇଲ।';

  @override
  String get gameHintWord315Jinja => 'Ansible ବ୍ୟବହାର କରୁଥିବା ଟେମ୍ପ୍ଲେଟ୍ ଭାଷା।';

  @override
  String get gameHintWord316Abstraction => 'ସରଳ ଇଣ୍ଟରଫେସ୍ ପଛରେ କାର୍ଯ୍ୟାନ୍ୱୟନ ବିବରଣୀ ଲୁଚାଇବା।';

  @override
  String get gameHintWord317Agile => 'ମତାମତ ଉପରେ ଗୁରୁତ୍ୱ ଦେଉଥିବା ପୁନରାବୃତ୍ତ ସଫ୍ଟୱେୟାର ବିତରଣ ପଦ୍ଧତି।';

  @override
  String get gameHintWord318Puppet => 'ଘୋଷଣାତ୍ମକ ମାନିଫେଷ୍ଟ ବ୍ୟବହାର କରୁଥିବା କନ୍ଫିଗରେସନ୍ ପରିଚାଳନା ଟୁଲ୍।';

  @override
  String get gameHintWord319Airflow => 'ୱାର୍କଫ୍ଲୋ DAG ସିଡ୍ୟୁଲ୍ ଓ ଅର୍କେଷ୍ଟ୍ରେଟ୍ କରିବା ପାଇଁ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord320Argo => 'GitOps ବିତରଣ କଣ୍ଟ୍ରୋଲର୍ ସମେତ କ୍ଲାଉଡ୍-ନେଟିଭ୍ ପ୍ରକଳ୍ପ ପରିବାର।';

  @override
  String get gameHintWord321Rds => 'AWS ପରିଚାଳିତ ରିଲେସନାଲ୍ ଡାଟାବେସ୍ ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord322Sqs => 'AWS ପରିଚାଳିତ ମେସେଜ୍ କ୍ୟୁର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord323Sns => 'AWS ପବ୍ଲିସ୍-ସବ୍‌ସ୍କ୍ରାଇବ୍ ବିଜ୍ଞପ୍ତି ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord324Ses => 'AWS ଇମେଲ୍ ପଠାଇବା ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord325Iam => 'କ୍ଲାଉଡ୍ ପରିଚୟ ଓ ଆକ୍ସେସ୍ ପରିଚାଳନାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord326Kms => 'AWS ଏନକ୍ରିପସନ୍ କି ପରିଚାଳନା ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord327Waf => 'ଆପ୍ଲିକେସନ୍-ସ୍ତର ୱେବ୍ ଅନୁରୋଧ ଫିଲ୍ଟର୍ କରୁଥିବା ଫାୟାରୱାଲ୍।';

  @override
  String get gameHintWord328Eks => 'AWS ପରିଚାଳିତ Kubernetes ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord329Ecs => 'AWS ପରିଚାଳିତ କଣ୍ଟେନର ଅର୍କେଷ୍ଟ୍ରେସନ୍ ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord330Ecr => 'AWS କଣ୍ଟେନର ଇମେଜ୍ ରେଜିଷ୍ଟ୍ରିର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord331Aurora => 'MySQL ଓ PostgreSQL ସହ ଅନୁକୂଳ AWS ରିଲେସନାଲ୍ ଡାଟାବେସ୍।';

  @override
  String get gameHintWord332Redshift => 'AWS ବିଶ୍ଲେଷଣ ଡାଟା ୱେୟାରହାଉସ୍।';

  @override
  String get gameHintWord333Neptune => 'AWS ପରିଚାଳିତ ଗ୍ରାଫ୍ ଡାଟାବେସ୍।';

  @override
  String get gameHintWord334Elasticache => 'AWS ପରିଚାଳିତ ଇନ୍-ମେମୋରୀ କ୍ୟାଶିଂ ସେବା।';

  @override
  String get gameHintWord335Athena => 'SQL ସହ ଅବଜେକ୍ଟ-ଷ୍ଟୋରେଜ୍ ଡାଟା କ୍ୱେରି କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord336Glue => 'AWS ସର୍ଭରଲେସ୍ ଡାଟା ଏକୀକରଣ ଓ ETL ସେବା।';

  @override
  String get gameHintWord337Emr => 'ପରିଚାଳିତ ବିଗ୍-ଡାଟା ପ୍ରକ୍ରିୟାକରଣ କ୍ଲଷ୍ଟର ପାଇଁ AWS ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord338Lambda => 'ସର୍ଭର୍ ପରିଚାଳନା ବିନା ଫଙ୍କସନ୍ ଚଲାଉଥିବା AWS ସେବା।';

  @override
  String get gameHintWord339Cloudfront => 'AWS ବିଶ୍ୱସ୍ତରୀୟ ବିଷୟବସ୍ତୁ ବିତରଣ ନେଟୱାର୍କ।';

  @override
  String get gameHintWord340Cloudwatch => 'ମେଟ୍ରିକ୍, ଲଗ୍ ଓ ଆଲାର୍ମ ସଂଗ୍ରହ କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord341Cloudshell => 'AWS ବ୍ରାଉଜର୍-ଆଧାରିତ ଶେଲ୍ ପରିବେଶ।';

  @override
  String get gameHintWord342Codecommit => 'AWS ପରିଚାଳିତ Git ରିପୋଜିଟୋରୀ ସେବା।';

  @override
  String get gameHintWord343Codebuild => 'ସୋର୍ସ କମ୍ପାଇଲ୍ କରି ବିଲ୍ଡ ଟେଷ୍ଟ ଚଲାଉଥିବା AWS ସେବା।';

  @override
  String get gameHintWord344Codedeploy => 'AWS ସ୍ୱୟଂଚାଳିତ ଆପ୍ଲିକେସନ୍ ଡିପ୍ଲୟମେଣ୍ଟ ସେବା।';

  @override
  String get gameHintWord345Codepipeline => 'AWS ନିରନ୍ତର ବିତରଣ ପାଇପଲାଇନ୍ ସେବା।';

  @override
  String get gameHintWord346Guardduty => 'AWS ବୁଦ୍ଧିମାନ ବିପଦ ଚିହ୍ନଟ ସେବା।';

  @override
  String get gameHintWord347Inspector => 'ଦୁର୍ବଳତା ପାଇଁ ୱାର୍କଲୋଡ୍ ମୂଲ୍ୟାଙ୍କନ କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord348Macie => 'ଅବଜେକ୍ଟ ଷ୍ଟୋରେଜ୍‌ରେ ସମ୍ବେଦନଶୀଳ ଡାଟା ଖୋଜୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord349Shield => 'AWS ପରିଚାଳିତ DDoS ସୁରକ୍ଷା ସେବା।';

  @override
  String get gameHintWord350Snowball => 'ବୃହତ୍ ଡାଟା ସ୍ଥାନାନ୍ତର ପାଇଁ AWS ଭୌତିକ ଉପକରଣ।';

  @override
  String get gameHintWord351Snowcone => 'AWS ଅଫଲାଇନ୍ ସ୍ଥାନାନ୍ତର ପରିବାରର ଛୋଟ ମଜବୁତ ଡିଭାଇସ୍।';

  @override
  String get gameHintWord352Datasync => 'AWS ସ୍ୱୟଂଚାଳିତ ଅନଲାଇନ୍ ଡାଟା ସ୍ଥାନାନ୍ତର ସେବା।';

  @override
  String get gameHintWord353Msk => 'AWS ପରିଚାଳିତ Apache Kafka ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord354Backup => 'ପୁନରୁଦ୍ଧାର ପାଇଁ ରଖାଯାଇଥିବା ଡାଟାର ନକଲ।';

  @override
  String get gameHintWord355Transcribe => 'ବକ୍ତବ୍ୟକୁ ଟେକ୍ସଟ୍‌ରେ ବଦଳାଉଥିବା AWS ସେବା।';

  @override
  String get gameHintWord356Translate => 'ଭାଷା ମଧ୍ୟରେ ଟେକ୍ସଟ୍ ଅନୁବାଦ କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord357Rekognition => 'ଛବି ଓ ଭିଡିଓ ବିଶ୍ଲେଷଣ କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord358Comprehend => 'AWS ପ୍ରାକୃତିକ-ଭାଷା ବିଶ୍ଲେଷଣ ସେବା।';

  @override
  String get gameHintWord359Textract => 'ଦଲିଲରୁ ଟେକ୍ସଟ୍ ଓ ଟେବୁଲ୍ ବାହାର କରୁଥିବା AWS ସେବା।';

  @override
  String get gameHintWord360Sagemaker => 'ମେସିନ୍ ଲର୍ଣ୍ଣିଂ ମଡେଲ୍ ତିଆରି ଓ ଡିପ୍ଲୟ କରିବା ପାଇଁ AWS ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord361Spanner => 'Google Cloud ର ବିଶ୍ୱସ୍ତରୀୟ ବିତରିତ ରିଲେସନାଲ୍ ଡାଟାବେସ୍।';

  @override
  String get gameHintWord362Pub => 'ପବ୍ଲିସ୍-ସବ୍‌ସ୍କ୍ରାଇବ୍ ମେସେଜିଂ ପ୍ୟାଟର୍ନର ପ୍ରକାଶନ ଅଂଶ।';

  @override
  String get gameHintWord363Sub => 'ପବ୍ଲିସ୍-ସବ୍‌ସ୍କ୍ରାଇବ୍ ମେସେଜିଂ ପ୍ୟାଟର୍ନର ଗ୍ରାହକ ଅଂଶ।';

  @override
  String get gameHintWord364Functions => 'ସର୍ଭରଲେସ୍ ପ୍ଲାଟଫର୍ମ ଦେଉଥିବା ଘଟଣା-ଚାଳିତ କୋଡ୍ ଏକକ।';

  @override
  String get gameHintWord365App => 'ସଫ୍ଟୱେୟାର ଆପ୍ଲିକେସନ୍‌ର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord366Engine => 'Compute Engine ଭଳି ନାମରେ ନିଷ୍ପାଦନ ଉପାଦାନ।';

  @override
  String get gameHintWord367Compute => 'ଭର୍ଚୁଆଲ୍ ମେସିନ୍ ବା କଣ୍ଟେନର ଦ୍ୱାରା ଯୋଗାଯାଉଥିବା ପ୍ରକ୍ରିୟାକରଣ କ୍ଷମତା।';

  @override
  String get gameHintWord368Network => 'ଡାଟା ବିନିମୟ କରୁଥିବା ସଂଯୁକ୍ତ ସିଷ୍ଟମ୍।';

  @override
  String get gameHintWord369Security => 'ବିପଦରୁ ସିଷ୍ଟମ୍ ଓ ସୂଚନାର ସୁରକ୍ଷା।';

  @override
  String get gameHintWord370Identity => 'ଆକ୍ସେସ୍ ନିଷ୍ପତ୍ତି ପାଇଁ ବ୍ୟବହୃତ ଉପଯୋଗକର୍ତ୍ତା ବା ସେବାର ପ୍ରତିନିଧିତ୍ୱ।';

  @override
  String get gameHintWord371Monitoring => 'ସିଷ୍ଟମ୍ ସ୍ୱାସ୍ଥ୍ୟ ଓ ଆଚରଣର ନିରନ୍ତର ପର୍ଯ୍ୟବେକ୍ଷଣ।';

  @override
  String get gameHintWord372Logging => 'ଆପ୍ଲିକେସନ୍ ଓ ସିଷ୍ଟମ୍‌ର ପୃଥକ୍ ଘଟଣା ରେକର୍ଡ କରିବା।';

  @override
  String get gameHintWord373Trace => 'ସେବା କଲ୍ ମଧ୍ୟରେ ଅନୁରୋଧର ପଥର ରେକର୍ଡ।';

  @override
  String get gameHintWord374Metrics => 'ସମୟ ସହ ସିଷ୍ଟମ୍ ଆଚରଣର ସଂଖ୍ୟାତ୍ମକ ମାପ।';

  @override
  String get gameHintWord375Alert => 'ନିରୀକ୍ଷିତ ସର୍ତ୍ତ ପାଇଁ ଧ୍ୟାନ ଦରକାର ବୋଲି ଜଣାଉଥିବା ବିଜ୍ଞପ୍ତି।';

  @override
  String get gameHintWord376Billing => 'ବ୍ୟବହୃତ କ୍ଲାଉଡ୍ ସେବା ପାଇଁ ଟ୍ରାକିଂ ଓ ଚାର୍ଜ୍ କରିବା।';

  @override
  String get gameHintWord377Quota => 'ବ୍ୟବହାର କରାଯାଇପାରୁଥିବା ରିସୋର୍ସ ପରିମାଣ ଉପରେ ସୀମା।';

  @override
  String get gameHintWord378Region => 'ଉପଲବ୍ଧତା ଜୋନ୍ ଧରିଥିବା ଭୌଗୋଳିକ କ୍ଲାଉଡ୍ ଡିପ୍ଲୟମେଣ୍ଟ କ୍ଷେତ୍ର।';

  @override
  String get gameHintWord379Tenancy => 'ଗ୍ରାହକମାନେ ଭିତ୍ତିଭୂମି କିପରି ବାଣ୍ଟନ୍ତି ତାହା ବର୍ଣ୍ଣନା କରୁଥିବା ବ୍ୟବସ୍ଥା।';

  @override
  String get gameHintWord380Regional => 'କ୍ଲାଉଡ୍ ରିଜିଅନ୍‌କୁ ସୀମିତ ରିସୋର୍ସକୁ ବୁଝାଏ।';

  @override
  String get gameHintWord381Cosmos => 'Azure ର ବିଶ୍ୱସ୍ତରୀୟ ବିତରିତ ବହୁ-ମଡେଲ୍ ଡାଟାବେସ୍‌ର ନାମ।';

  @override
  String get gameHintWord382Synapse => 'ୱେୟାରହାଉସିଂ ଓ ଡାଟା ପ୍ରକ୍ରିୟାକରଣ ମିଶ୍ରିତ Azure ବିଶ୍ଲେଷଣ ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord383Sentinel => 'Microsoft ର କ୍ଲାଉଡ୍-ନେଟିଭ୍ ସୁରକ୍ଷା ସୂଚନା ଓ ଘଟଣା ପ୍ଲାଟଫର୍ମ।';

  @override
  String get gameHintWord384Defender => 'କ୍ଲାଉଡ୍ ୱାର୍କଲୋଡ୍ ସୁରକ୍ଷିତ କରୁଥିବା Microsoft ସୁରକ୍ଷା ଉତ୍ପାଦ ପରିବାର।';

  @override
  String get gameHintWord385Entra => 'Azure AD ବ୍ରାଣ୍ଡିଂକୁ ବଦଳାଉଥିବା Microsoft ପରିଚୟ ଉତ୍ପାଦ ପରିବାର।';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager ର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord387Arc => 'Azure ବାହାରର ରିସୋର୍ସକୁ ପରିଚାଳନା ବିସ୍ତାର କରୁଥିବା Azure ସେବା।';

  @override
  String get gameHintWord388Aks => 'Azure ପରିଚାଳିତ Kubernetes ସେବାର ସଂକ୍ଷିପ୍ତ ରୂପ।';

  @override
  String get gameHintWord389Armor => 'Google Cloud ୱେବ୍ ସୁରକ୍ଷା ସେବା ନାମର ପ୍ରତ୍ୟୟ।';

  @override
  String get gameHintWord390Blob => 'Azure ଅବଜେକ୍ଟ-ଷ୍ଟୋରେଜ୍ ଡାଟା ପ୍ରକାର।';

  @override
  String get gameHintWord391Files => 'ପରିଚାଳିତ ନେଟୱାର୍କ ଫାଇଲ ଶେୟାର ଦେଉଥିବା Azure ସେବା।';

  @override
  String get gameHintWord392Disk => 'ଭର୍ଚୁଆଲ୍ ମେସିନ୍ ସହ ଯୋଡ଼ା ବ୍ଲକ୍-ଷ୍ଟୋରେଜ୍ ଡିଭାଇସ୍।';

  @override
  String get gameHintWord393Function => 'ଫଳାଫଳ ଫେରାଇପାରୁଥିବା ଡାକିହେଉଥିବା କୋଡ୍ ବ୍ଲକ୍।';

  @override
  String get gameHintWord394Logic => 'ୱାର୍କଫ୍ଲୋ ଏକୀକରଣ ପାଇଁ Azure ଆପ୍ ସେବା ବର୍ଗ।';

  @override
  String get gameHintWord395Insights => 'Azure ଆପ୍ଲିକେସନ୍ ଟେଲିମେଟ୍ରି ଉତ୍ପାଦ ନାମର ପ୍ରତ୍ୟୟ।';

  @override
  String get gameHintWord396Traffic => 'ନେଟୱାର୍କ ଏଣ୍ଡପଏଣ୍ଟ ମଧ୍ୟରେ ପ୍ରବାହିତ ଡାଟା।';

  @override
  String get gameHintWord397Manager => 'ଏହାର କଣ୍ଟ୍ରୋଲ୍ ପ୍ଲେନ୍ ପାଇଁ Azure Resource ଉତ୍ପାଦ ନାମର ପ୍ରତ୍ୟୟ।';

  @override
  String get gameHintWord398Bastion => 'ବ୍ୟକ୍ତିଗତ ହୋଷ୍ଟ ଆକ୍ସେସ୍ ପାଇଁ ପରିଚାଳିତ ବା ସୁରକ୍ଷିତ ପ୍ରବେଶ ବିନ୍ଦୁ।';

  @override
  String get gameHintWord399Front => 'Azure ବିଶ୍ୱସ୍ତରୀୟ ପ୍ରବେଶ-ବିନ୍ଦୁ ସେବା Front Door ର ପ୍ରଥମ ଶବ୍ଦ।';

  @override
  String get gameHintWord400Door => 'Azure ବିଶ୍ୱସ୍ତରୀୟ ପ୍ରବେଶ-ବିନ୍ଦୁ ସେବା Front Door ର ଦ୍ୱିତୀୟ ଶବ୍ଦ।';

  @override
  String get gameHintWord401Javascript => 'ବ୍ରାଉଜର୍ ଓ Node ରନ୍‌ଟାଇମ୍‌ରେ ବହୁଳ ଭାବେ ବ୍ୟବହୃତ ପ୍ରୋଗ୍ରାମିଂ ଭାଷା।';

  @override
  String get gameHintWord402Perl => 'ଟେକ୍ସଟ୍ ପ୍ରକ୍ରିୟାକରଣ ଓ ରେଗୁଲାର୍ ଏକ୍ସପ୍ରେସନ୍ ପାଇଁ ପରିଚିତ ସ୍କ୍ରିପ୍ଟିଂ ଭାଷା।';

  @override
  String get gameHintWord403Powershell => 'Microsoft ର ଅବଜେକ୍ଟ-ଆଧାରିତ ଶେଲ୍ ଓ ଅଟୋମେସନ୍ ଭାଷା।';

  @override
  String get gameHintWord404Java => 'Jenkins କାର୍ଯ୍ୟକାରୀ କରିବାକୁ ବ୍ୟବହୃତ JVM ଭାଷା।';

  @override
  String get gameHintWord405Json => 'ଅବଜେକ୍ଟ ଓ ଆରେ ସହ ହାଲୁକା ଡାଟା ଫର୍ମାଟ୍।';

  @override
  String get gameHintWord406Xml => 'ନେଷ୍ଟେଡ୍ ନାମିତ ଟ୍ୟାଗ୍ ବ୍ୟବହାର କରୁଥିବା ମାର୍କଅପ୍ ଫର୍ମାଟ୍।';

  @override
  String get gameHintWord407Html => 'ୱେବ୍ ପୃଷ୍ଠାକୁ ଗଠନ କରିବା ପାଇଁ ବ୍ୟବହୃତ ମାର୍କଅପ୍ ଭାଷା।';

  @override
  String get gameHintWord408Css => 'ୱେବ୍ ଉପସ୍ଥାପନା ନିୟନ୍ତ୍ରଣ କରୁଥିବା ଷ୍ଟାଇଲସିଟ୍ ଭାଷା।';

  @override
  String get gameHintWord409String => 'ଟେକ୍ସଟ୍ ଅକ୍ଷରର କ୍ରମ।';

  @override
  String get gameHintWord410Array => 'ଉପାଦାନର ସୂଚୀକୃତ ସଂଗ୍ରହ।';

  @override
  String get gameHintWord411Hash => 'Ruby ଓ Perl ରେ ସହଯୋଗୀ କି-ଭ୍ୟାଲ୍ୟୁ ସଂଗ୍ରହ।';

  @override
  String get gameHintWord412Object => 'ଗୁଣ ଓ ଆଚରଣ ସହ ରନ୍‌ଟାଇମ୍ ମୂଲ୍ୟ।';

  @override
  String get gameHintWord413Class => 'କ୍ଲାସ୍-ଆଧାରିତ ଭାଷାରେ ଅବଜେକ୍ଟ ତିଆରି ପାଇଁ ବ୍ୟବହୃତ ସଂଜ୍ଞା।';

  @override
  String get gameHintWord414Method => 'ଅବଜେକ୍ଟ ବା କ୍ଲାସ୍ ସହ ଜଡ଼ିତ ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord415Interface => 'ଉପାଦାନ ପ୍ରକାଶ କରୁଥିବା କାର୍ଯ୍ୟ ବର୍ଣ୍ଣନା କରୁଥିବା ଚୁକ୍ତି।';

  @override
  String get gameHintWord416Subclass => 'ଅନ୍ୟ ଏକ କ୍ଲାସ୍‌ରୁ ଉତ୍ପନ୍ନ କ୍ଲାସ୍।';

  @override
  String get gameHintWord417Super => 'ପିତୃ-କ୍ଲାସ୍ ଆଚରଣ ଡାକିବାକୁ ବ୍ୟବହୃତ କୀୱର୍ଡ।';

  @override
  String get gameHintWord418Protected => 'କ୍ଲାସ୍-ସମ୍ବନ୍ଧିତ ପ୍ରସଙ୍ଗରେ ଆକ୍ସେସ୍ ସୀମିତ କରୁଥିବା ଦୃଶ୍ୟମାନତା ସ୍ତର।';

  @override
  String get gameHintWord419Exception => 'ସାଧାରଣ ନିୟନ୍ତ୍ରଣ ପ୍ରବାହକୁ ବାଧା ଦେଉଥିବା ରନ୍‌ଟାଇମ୍ ସର୍ତ୍ତ।';

  @override
  String get gameHintWord420Regex => 'ଟେକ୍ସଟ୍ ମେଳାଇବା ପାଇଁ ବ୍ୟବହୃତ ପ୍ୟାଟର୍ନ ସଂକେତ।';

  @override
  String get gameHintWord421Lexical => 'ସୋର୍ସ-କୋଡ୍ ଗଠନ ଦ୍ୱାରା ନିର୍ଦ୍ଧାରିତ ପରିସରକୁ ବୁଝାଏ।';

  @override
  String get gameHintWord422Scalar => 'Perl ରେ ଏକକ-ମୂଲ୍ୟ ଭେରିଏବଲ୍ ବର୍ଗ।';

  @override
  String get gameHintWord423Tuple => 'Python ରେ ଅପରିବର୍ତ୍ତନୀୟ କ୍ରମବଦ୍ଧ ସଂଗ୍ରହ।';

  @override
  String get gameHintWord424List => 'Python ରେ ପରିବର୍ତ୍ତନୀୟ କ୍ରମବଦ୍ଧ ସଂଗ୍ରହ।';

  @override
  String get gameHintWord425Dict => 'Python ର ବିଲ୍ଟ-ଇନ୍ ମ୍ୟାପିଂ ପ୍ରକାରର ନାମ।';

  @override
  String get gameHintWord426Dictionary => 'କି-କୁ ସଂଯୁକ୍ତ ମୂଲ୍ୟ ସହ ମ୍ୟାପ୍ କରୁଥିବା ସଂଗ୍ରହ।';

  @override
  String get gameHintWord427Set => 'ଭିନ୍ନ ଭିନ୍ନ ମୂଲ୍ୟର ସଂଗ୍ରହ।';

  @override
  String get gameHintWord428Boolean => 'ସତ୍ୟ ବା ମିଥ୍ୟା ଦର୍ଶାଉଥିବା ଡାଟା ପ୍ରକାର।';

  @override
  String get gameHintWord429Integer => 'ପୂର୍ଣ୍ଣ ସଂଖ୍ୟା ଦର୍ଶାଉଥିବା ସଂଖ୍ୟାତ୍ମକ ପ୍ରକାର।';

  @override
  String get gameHintWord430Float => 'ଫ୍ଲୋଟିଂ-ପଏଣ୍ଟ ମୂଲ୍ୟ ଦର୍ଶାଉଥିବା ସଂଖ୍ୟାତ୍ମକ ପ୍ରକାର।';

  @override
  String get gameHintWord431Double => 'ଦ୍ୱିଗୁଣ-ସଠିକତା ଫ୍ଲୋଟିଂ-ପଏଣ୍ଟ ପ୍ରକାର।';

  @override
  String get gameHintWord432Null => 'ଅବଜେକ୍ଟ ବା ଫଳାଫଳର ଅନୁପସ୍ଥିତି ଦର୍ଶାଉଥିବା ମୂଲ୍ୟ।';

  @override
  String get gameHintWord433Undefined => 'ଅନୁପସ୍ଥିତ ନିଯୁକ୍ତ ମୂଲ୍ୟ ପାଇଁ JavaScript ମୂଲ୍ୟ।';

  @override
  String get gameHintWord434Promise => 'ଶେଷରେ ମିଳିବାକୁ ଥିବା ଅସିଙ୍କ୍ରୋନସ୍ ଫଳାଫଳ ଦର୍ଶାଉଥିବା JavaScript ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord435Async => 'ଅସିଙ୍କ୍ରୋନସ୍ ଫଙ୍କସନ୍ ଚିହ୍ନିତ କରୁଥିବା କୀୱର୍ଡ।';

  @override
  String get gameHintWord436Await => 'ଅସିଙ୍କ୍ରୋନସ୍ ଫଳାଫଳ ପାଇଁ ଅପେକ୍ଷା କରୁଥିବା କୀୱର୍ଡ।';

  @override
  String get gameHintWord437Callback => 'ଅନ୍ୟ କାର୍ଯ୍ୟ ଦ୍ୱାରା ଡାକିବା ପାଇଁ ଦିଆଯାଉଥିବା ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord438Closure => 'ନିଜ ଚାରିପାଖର ଲେକ୍ସିକାଲ୍ ପରିସରର ଆକ୍ସେସ୍ ଧରିରଖୁଥିବା ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord439Generator => 'yield ହୋଇଥିବା ମୂଲ୍ୟ ଦ୍ୱାରା ଆଳସ୍ୟ ଭାବେ କ୍ରମ ତିଆରି କରୁଥିବା ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord440Iterator => 'ସଂଗ୍ରହର ମୂଲ୍ୟ ଦେଇ ଆଗେଇ ଚାଲୁଥିବା ଅବଜେକ୍ଟ।';

  @override
  String get gameHintWord441Print => 'ମୂଲ୍ୟକୁ ଆଉଟ୍‌ପୁଟ୍‌ରେ ଲେଖୁଥିବା ସାଧାରଣ ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord442Input => 'ଷ୍ଟାଣ୍ଡାର୍ଡ ଇନ୍‌ପୁଟ୍‌ରୁ ଏକ ଧାଡ଼ି ପଢ଼ୁଥିବା Python ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord443Open => 'ଫାଇଲ ହ୍ୟାଣ୍ଡଲ୍ ପାଇବାକୁ ବ୍ୟବହୃତ ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord444Close => 'ଖୋଲା ଫାଇଲ ବା ସଂଯୋଗ ମୁକ୍ତ କରୁଥିବା କାର୍ଯ୍ୟ।';

  @override
  String get gameHintWord445Read => 'ଷ୍ଟ୍ରିମ୍ ବା ଫାଇଲରୁ ଡାଟା ପାଉଥିବା କାର୍ଯ୍ୟ।';

  @override
  String get gameHintWord446Write => 'ଷ୍ଟ୍ରିମ୍ ବା ଫାଇଲକୁ ଡାଟା ପଠାଉଥିବା କାର୍ଯ୍ୟ।';

  @override
  String get gameHintWord447Append => 'ସଂଗ୍ରହର ଶେଷରେ ଏକ ଆଇଟମ୍ ଯୋଗ କରେ।';

  @override
  String get gameHintWord448Split => 'ବିଭାଜକ ବ୍ୟବହାର କରି ଟେକ୍ସଟ୍‌କୁ ଉପ-ଷ୍ଟ୍ରିଙ୍ଗ୍‌ରେ ଭାଙ୍ଗେ।';

  @override
  String get gameHintWord449Join => 'ବିଭାଜକ ବ୍ୟବହାର କରି ଷ୍ଟ୍ରିଙ୍ଗ୍‌ର କ୍ରମକୁ ମିଶାଏ।';

  @override
  String get gameHintWord450Strip => 'Python ଷ୍ଟ୍ରିଙ୍ଗ୍‌ର ଆଖପାଖ ହ୍ୱାଇଟ୍‌ସ୍ପେସ୍ ହଟାଏ।';

  @override
  String get gameHintWord451Chomp => 'Perl ବା Ruby ରେ ଶେଷ ରେକର୍ଡ ବିଭାଜକ ହଟାଏ।';

  @override
  String get gameHintWord452Map => 'ସଂଗ୍ରହର ପ୍ରତ୍ୟେକ ଆଇଟମ୍‌ରେ ରୂପାନ୍ତର ପ୍ରୟୋଗ କରେ।';

  @override
  String get gameHintWord453Filter => 'ସର୍ତ୍ତ ପୂରଣ କରୁଥିବା ସଂଗ୍ରହ ଆଇଟମ୍ ରଖେ।';

  @override
  String get gameHintWord454Reduce => 'ସଂଗ୍ରହକୁ ଏକ ସଂଚିତ ଫଳାଫଳରେ ମିଶାଏ।';

  @override
  String get gameHintWord455Range => 'ପୂର୍ଣ୍ଣସଂଖ୍ୟାର ଗାଣିତିକ କ୍ରମ ଦର୍ଶାଉଥିବା Python ପ୍ରକାର।';

  @override
  String get gameHintWord456Length => 'ସଂଗ୍ରହର ଆକାର ଫେରାଉଥିବା ଗୁଣ ବା ମେଥଡ୍।';

  @override
  String get gameHintWord457Len => 'ସଂଗ୍ରହ ଆକାର ଫେରାଉଥିବା Python ବିଲ୍ଟ-ଇନ୍ ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord458Type => 'ଅବଜେକ୍ଟ ପ୍ରକାର ଫେରାଉଥିବା Python ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord459Isinstance => 'ପ୍ରକାର ଶ୍ରେଣୀବଦ୍ଧତାରେ ସଦସ୍ୟତା ଯାଞ୍ଚ କରୁଥିବା Python ଫଙ୍କସନ୍।';

  @override
  String get gameHintWord460Yield => 'ଜେନେରେଟର୍‌ରୁ ମୂଲ୍ୟ ଉତ୍ପାଦନ କରୁଥିବା କୀୱର୍ଡ।';

  @override
  String get gameHintWord461Saas => 'ସମ୍ପୂର୍ଣ୍ଣ ସଫ୍ଟୱେୟାର ଆପ୍ଲିକେସନ୍ ପ୍ରଦାନ କରୁଥିବା କ୍ଲାଉଡ୍ ମଡେଲ୍।';

  @override
  String get gameHintWord462Paas => 'ପରିଚାଳିତ ଆପ୍ଲିକେସନ୍ ବିକାଶ ପ୍ଲାଟଫର୍ମ ଯୋଗାଉଥିବା କ୍ଲାଉଡ୍ ମଡେଲ୍।';

  @override
  String get gameHintWord463Iaas => 'ଭର୍ଚୁଆଲ୍ କମ୍ପ୍ୟୁଟ୍, ଷ୍ଟୋରେଜ୍ ଓ ନେଟୱାର୍କିଂ ଯୋଗାଉଥିବା କ୍ଲାଉଡ୍ ମଡେଲ୍।';

  @override
  String get gameHintWord464Hybrid => 'ବ୍ୟକ୍ତିଗତ ଓ ସାର୍ବଜନୀନ ଭିତ୍ତିଭୂମିକୁ ମିଶାଉଥିବା କ୍ଲାଉଡ୍ ପଦ୍ଧତି।';

  @override
  String get gameHintWord465Archive => 'କମ୍ ବ୍ୟବହୃତ ଡାଟାର ଦୀର୍ଘକାଳୀନ ସଂରକ୍ଷଣ।';

  @override
  String get gameHintWord466Public => 'ଏକାଧିକ ଗ୍ରାହକଙ୍କୁ ସେବା ଦେଉଥିବା କ୍ଲାଉଡ୍ ମାଲିକାନା ମଡେଲ୍।';

  @override
  String get gameHintWord467Private => 'ଗୋଟିଏ ସଂସ୍ଥା ପାଇଁ ଉତ୍ସର୍ଗୀକୃତ କ୍ଲାଉଡ୍ ମଡେଲ୍।';

  @override
  String get gameHintWord468Scalability => 'ରିସୋର୍ସ ଯୋଗ କରି ବଢ଼ୁଥିବା ଭାର ସମ୍ଭାଳିବାର କ୍ଷମତା।';

  @override
  String get gameHintWord469Availability => 'ଆବଶ୍ୟକ ବେଳେ ସେବା କେତେ ପରିମାଣରେ ଉପଲବ୍ଧ ରହେ ତାହାର ମାତ୍ରା।';

  @override
  String get gameHintWord470Resilience => 'ବିଫଳତା ସହିବା ଓ ତାହାରୁ ପୁନରୁଦ୍ଧାର ହେବାର କ୍ଷମତା।';

  @override
  String get gameHintWord471Redundancy => 'ଏକକ ବିଫଳତା ବିନ୍ଦୁ କମାଉଥିବା ଅତିରିକ୍ତ ଉପାଦାନ।';

  @override
  String get gameHintWord472Disaster => 'ପୁନରୁଦ୍ଧାର ରଣନୀତି ଦ୍ୱାରା ସମାଧାନ ହେଉଥିବା ବଡ଼ ବିଘ୍ନ।';

  @override
  String get gameHintWord473Recovery => 'ବିଫଳତା ପରେ ସେବା ବା ଡାଟା ପୁନରୁଦ୍ଧାର କରିବା।';

  @override
  String get gameHintWord474Replicate => 'ଡାଟା ବା ୱାର୍କଲୋଡ୍‌କୁ ଅନ୍ୟ ସ୍ଥାନକୁ ନକଲ କରେ।';

  @override
  String get gameHintWord475Snapshotting => 'ଡାଟା ବା ସିଷ୍ଟମ୍ ଅବସ୍ଥାର ନିର୍ଦ୍ଦିଷ୍ଟ ସମୟର ନକଲ ନେବା।';

  @override
  String get gameHintWord476Restore => 'ସଂରକ୍ଷିତ ନକଲରୁ ଡାଟା ପୁନରୁଦ୍ଧାର କରୁଥିବା କାର୍ଯ୍ୟ।';

  @override
  String get gameHintWord477Residency => 'ସଂରକ୍ଷିତ ଡାଟାର ଭୌଗୋଳିକ ସ୍ଥାନ ନିର୍ଦ୍ଧାରଣ କରୁଥିବା ଆବଶ୍ୟକତା।';

  @override
  String get gameHintWord478Compliance => 'ଆବଶ୍ୟକ ନିୟମ ଓ ସାଂଗଠନିକ ନିୟନ୍ତ୍ରଣ ପୂରଣ କରିବା।';

  @override
  String get gameHintWord479Governance => 'ପ୍ରଯୁକ୍ତି ବ୍ୟବହାର ନିୟନ୍ତ୍ରଣ କରୁଥିବା ନୀତି ଓ ପ୍ରକ୍ରିୟା।';

  @override
  String get gameHintWord480Audit => 'ରେକର୍ଡ ହୋଇଥିବା କାର୍ଯ୍ୟକଳାପ ଓ ଅନୁପାଳନ ପ୍ରମାଣର ସମୀକ୍ଷା।';

  @override
  String get gameHintWord481Token => 'ଅନୁମତି ବା ପରିଚୟ ଦର୍ଶାଉଥିବା ପ୍ରମାଣପତ୍ର ବା ପ୍ରତୀକ।';

  @override
  String get gameHintWord482Oauth => 'ପ୍ରତିନିଧିତ୍ୱ ଆକ୍ସେସ୍ ଅନୁମତି ଦେଉଥିବା ଅନୁମତି ଢାଞ୍ଚା।';

  @override
  String get gameHintWord483Saml => 'ଉଦ୍ୟୋଗ ସିଙ୍ଗଲ୍ ସାଇନ୍-ଅନ୍ ପାଇଁ ସାଧାରଣତଃ ବ୍ୟବହୃତ XML-ଆଧାରିତ ମାନକ।';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell ପାଇପଲାଇନ୍‌ରେ ବ୍ୟବହୃତ ବିଶେଷ କମାଣ୍ଡ।';

  @override
  String get gameHintWord485Algorithm => 'ଗଣନା ସମସ୍ୟା ସମାଧାନ ପାଇଁ ନିର୍ଦ୍ଧାରିତ ପଦକ୍ଷେପ କ୍ରମ।';

  @override
  String get gameHintWord486Key => 'ଏନକ୍ରିପସନ୍ ନିୟନ୍ତ୍ରଣ ବା ସଂରକ୍ଷିତ ଡାଟା ଚିହ୍ନଟ କରିବାକୁ ବ୍ୟବହୃତ ମୂଲ୍ୟ।';

  @override
  String get gameHintWord487Alias => 'ଶେଲ୍ କମାଣ୍ଡ ବା ରିସୋର୍ସର ବିକଳ୍ପ ନାମ।';

  @override
  String get gameHintWord488Amend => 'ସବୁଠାରୁ ନୂଆ କମିଟ୍‌କୁ ବଦଳାଉଥିବା Git କମିଟ୍ ବିକଳ୍ପ।';

  @override
  String get gameHintWord489Allsigned => 'ସ୍ୱାକ୍ଷରିତ ସ୍କ୍ରିପ୍ଟ ଆବଶ୍ୟକ କରୁଥିବା PowerShell ନିଷ୍ପାଦନ ନୀତି।';

  @override
  String get gameHintWord490Remotesigned => 'ଡାଉନଲୋଡ୍ ହୋଇଥିବା ସ୍କ୍ରିପ୍ଟରେ ସ୍ୱାକ୍ଷର ଆବଶ୍ୟକ କରୁଥିବା PowerShell ନୀତି।';

  @override
  String get gameHintWord491Acl => 'ଉପଯୋଗକର୍ତ୍ତା ବା ସିଷ୍ଟମ୍ ପାଇଁ ଅନୁମତି ସ୍ଥିର କରୁଥିବା ତାଲିକା।';

  @override
  String get gameHintWord492Uid => 'Unix ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ଦିଆଯାଇଥିବା ସଂଖ୍ୟାତ୍ମକ ପରିଚାୟକ।';

  @override
  String get gameHintWord493Setgid => 'ନିଷ୍ପାଦନ ବା ଉତ୍ତରାଧିକାର ସମୟରେ ଗୋଷ୍ଠୀ ପରିଚୟକୁ ପ୍ରଭାବିତ କରୁଥିବା ଅନୁମତି ବିଟ୍।';

  @override
  String get gameHintWord494Setfacl => 'ଫାଇଲ ଆକ୍ସେସ୍ କଣ୍ଟ୍ରୋଲ୍ ତାଲିକା ସେଟ୍ କରୁଥିବା Linux କମାଣ୍ଡ।';

  @override
  String get gameHintWord495Isolation => 'ୱାର୍କଲୋଡ୍‌ଗୁଡ଼ିକୁ ପରସ୍ପରକୁ ବାଧା ଦେବାରୁ ରୋକୁଥିବା ପୃଥକୀକରଣ।';

  @override
  String get gameHintWord496Sighup => 'କନ୍ଫିଗରେସନ୍ ପୁନଃଲୋଡ୍ ଅନୁରୋଧ ପାଇଁ ପ୍ରାୟତଃ ବ୍ୟବହୃତ Unix ହ୍ୟାଙ୍ଗଅପ୍ ସିଗ୍ନାଲ୍।';

  @override
  String get gameHintWord497Sigint => 'ସାଧାରଣତଃ Control-C ଦ୍ୱାରା ଉତ୍ପନ୍ନ Unix ବାଧା ସିଗ୍ନାଲ୍।';

  @override
  String get gameHintWord498Sigstop => 'ପ୍ରକ୍ରିୟାକୁ ସମାପ୍ତ ନକରି ବିରତ କରୁଥିବା Unix ସିଗ୍ନାଲ୍।';

  @override
  String get gameHintWord499Secrets => 'ପାସୱାର୍ଡ ଓ ଆକ୍ସେସ୍ କି ଭଳି ସମ୍ବେଦନଶୀଳ ମୂଲ୍ୟ।';

  @override
  String get gameHintWord500Secure => 'ଅନଧିକୃତ ଆକ୍ସେସ୍ ବିରୁଦ୍ଧରେ ସୁରକ୍ଷିତ ସଂଯୋଗକୁ ବୁଝାଏ।';

  @override
  String get fontSettingsTitle => 'ଫଣ୍ଟ';

  @override
  String get fontChangeFont => 'ଫଣ୍ଟ ବଦଳାନ୍ତୁ';

  @override
  String get fontSystemDefault => 'ସିଷ୍ଟମ ଡିଫଲ୍ଟ';

  @override
  String get fontPreview => 'ପୂର୍ବାବଲୋକନ';

  @override
  String get fontPreviewSample => 'ଗୋଟିଏ ଗୋଟିଏ ପ୍ରଶ୍ନରେ DevOps ଶିଖନ୍ତୁ';

  @override
  String get fontSelected => 'ଚୟନିତ';

  @override
  String get fontLatinOnlyNote => 'କଷ୍ଟମ ଫଣ୍ଟ ଲାଟିନ ଅକ୍ଷରରେ ପ୍ରଯୁଜ୍ୟ। ଅନ୍ୟ ଲିପିଗୁଡ଼ିକ ଆପଣଙ୍କ ଡିଭାଇସର ଫଣ୍ଟରେ ହିଁ ରହିବ।';

  @override
  String get fontDescSystem => 'ଆପଣଙ୍କ ଡିଭାଇସର ଅନ୍ତର୍ନିର୍ମିତ ଫଣ୍ଟ';

  @override
  String get fontDescGeometric => 'ଜ୍ୟାମିତିକ ସାନ୍ସ-ସେରିଫ';

  @override
  String get fontDescGeometricRounded => 'ଜ୍ୟାମିତିକ ଗୋଲାକାର ସାନ୍ସ-ସେରିଫ';

  @override
  String get fontDescFriendly => 'ବନ୍ଧୁତ୍ୱପୂର୍ଣ୍ଣ ସାନ୍ସ-ସେରିଫ';

  @override
  String get fontDescCondensed => 'ସଙ୍କୁଚିତ';

  @override
  String get fontDescRounded => 'ଗୋଲାକାର ସାନ୍ସ-ସେରିଫ';

  @override
  String get fontDescRoundedDisplay => 'ଗୋଲାକାର ଡିସପ୍ଲେ';

  @override
  String gameScene3dScene(String value1) {
    return '3D ଦୃଶ୍ୟ $value1';
  }
}
