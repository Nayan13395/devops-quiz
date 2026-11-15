import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_doi.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gom.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mni.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_sat.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('as'),
    Locale('bn'),
    Locale('de'),
    Locale('doi'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('gom'),
    Locale('gu'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('mai'),
    Locale('ml'),
    Locale('mni'),
    Locale('mr'),
    Locale('ne'),
    Locale('or'),
    Locale('pa'),
    Locale('pt'),
    Locale('ru'),
    Locale('sa'),
    Locale('sat'),
    Locale('sd'),
    Locale('ta'),
    Locale('te'),
    Locale('tr'),
    Locale('ur'),
    Locale('zh')
  ];

  /// No description provided for @appTour.
  ///
  /// In en, this message translates to:
  /// **'App tour'**
  String get appTour;

  /// No description provided for @skipTour.
  ///
  /// In en, this message translates to:
  /// **'Skip tour'**
  String get skipTour;

  /// No description provided for @finishTour.
  ///
  /// In en, this message translates to:
  /// **'Finish tour'**
  String get finishTour;

  /// No description provided for @tourStep.
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String tourStep(int current, int total);

  /// No description provided for @tourMenuTitle.
  ///
  /// In en, this message translates to:
  /// **'Navigation menu'**
  String get tourMenuTitle;

  /// No description provided for @tourSearch.
  ///
  /// In en, this message translates to:
  /// **'Type a topic here to find matching quiz categories.'**
  String get tourSearch;

  /// No description provided for @tourCategory.
  ///
  /// In en, this message translates to:
  /// **'Tap DevOps for a mixed quiz. Other categories offer question sets. Bookmark questions to review them later.'**
  String get tourCategory;

  /// No description provided for @tourMenu.
  ///
  /// In en, this message translates to:
  /// **'Tap this button to open the navigation menu.'**
  String get tourMenu;

  /// No description provided for @tourLearning.
  ///
  /// In en, this message translates to:
  /// **'Open Learning for cards. Swipe in any direction, shuffle, auto-swap, or bookmark a card.'**
  String get tourLearning;

  /// No description provided for @tourGames.
  ///
  /// In en, this message translates to:
  /// **'Play games to earn points. Level-based games give 100 points per completed level; hints cost 20 points.'**
  String get tourGames;

  /// No description provided for @tourAchievements.
  ///
  /// In en, this message translates to:
  /// **'View your achievements here. Popups announce new achievements and available themes.'**
  String get tourAchievements;

  /// No description provided for @tourSettings.
  ///
  /// In en, this message translates to:
  /// **'Choose your language, theme and sound settings. Open Save data to review bookmarks, or App tour to replay this guide.'**
  String get tourSettings;

  /// No description provided for @achievementUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Achievement unlocked!'**
  String get achievementUnlocked;

  /// No description provided for @themeUnlocked.
  ///
  /// In en, this message translates to:
  /// **'New theme available!'**
  String get themeUnlocked;

  /// No description provided for @themeUnlockedMessage.
  ///
  /// In en, this message translates to:
  /// **'You can now select this theme in Settings > Themes.'**
  String get themeUnlockedMessage;

  /// No description provided for @gameSounds.
  ///
  /// In en, this message translates to:
  /// **'Game sounds'**
  String get gameSounds;

  /// No description provided for @gameSoundsDescription.
  ///
  /// In en, this message translates to:
  /// **'Effects for games and quizzes. Check device volume and silent mode.'**
  String get gameSoundsDescription;

  /// No description provided for @testSound.
  ///
  /// In en, this message translates to:
  /// **'Test sound'**
  String get testSound;

  /// No description provided for @soundSettingBusy.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get soundSettingBusy;

  /// No description provided for @soundSettingError.
  ///
  /// In en, this message translates to:
  /// **'Could not load or save the sound setting. Please try again.'**
  String get soundSettingError;

  /// No description provided for @soundPlaybackError.
  ///
  /// In en, this message translates to:
  /// **'Could not play sound. Check your device or browser audio settings.'**
  String get soundPlaybackError;

  /// No description provided for @saveData.
  ///
  /// In en, this message translates to:
  /// **'Save data'**
  String get saveData;

  /// No description provided for @learningTranslationUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This card has not yet been translated into the selected language.'**
  String get learningTranslationUnavailable;

  /// No description provided for @saveQuestion.
  ///
  /// In en, this message translates to:
  /// **'Save question'**
  String get saveQuestion;

  /// No description provided for @defaultPortQuestion.
  ///
  /// In en, this message translates to:
  /// **'What is the default port for {service}?'**
  String defaultPortQuestion(String service);

  /// No description provided for @removeSavedItem.
  ///
  /// In en, this message translates to:
  /// **'Remove from saved'**
  String get removeSavedItem;

  /// No description provided for @noSavedData.
  ///
  /// In en, this message translates to:
  /// **'Nothing saved yet. Bookmark cards in Learning or questions in a quiz.'**
  String get noSavedData;

  /// No description provided for @savedDataError.
  ///
  /// In en, this message translates to:
  /// **'Could not load or update saved data. Please try again.'**
  String get savedDataError;

  /// No description provided for @savedItemUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This saved item is no longer available.'**
  String get savedItemUnavailable;

  /// No description provided for @correctAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct answer'**
  String get correctAnswer;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @certificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get certificates;

  /// No description provided for @whatsNew.
  ///
  /// In en, this message translates to:
  /// **'What\'s New'**
  String get whatsNew;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @hindi.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get hindi;

  /// No description provided for @marathi.
  ///
  /// In en, this message translates to:
  /// **'Marathi'**
  String get marathi;

  /// No description provided for @startQuiz.
  ///
  /// In en, this message translates to:
  /// **'Start Quiz'**
  String get startQuiz;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'DevOps Quiz'**
  String get appName;

  /// No description provided for @switchCategory.
  ///
  /// In en, this message translates to:
  /// **'Switch Category'**
  String get switchCategory;

  /// No description provided for @dailyQuiz.
  ///
  /// In en, this message translates to:
  /// **'Daily Quiz'**
  String get dailyQuiz;

  /// No description provided for @dailyQuizCompleted.
  ///
  /// In en, this message translates to:
  /// **'Daily Quiz Completed'**
  String get dailyQuizCompleted;

  /// No description provided for @dailyQuizCompletedMessage.
  ///
  /// In en, this message translates to:
  /// **'You have already completed today\'s Daily Quiz.\n\nCome back tomorrow for a new challenge!'**
  String get dailyQuizCompletedMessage;

  /// No description provided for @leaderboard.
  ///
  /// In en, this message translates to:
  /// **'Leaderboard'**
  String get leaderboard;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate App'**
  String get rateApp;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @games.
  ///
  /// In en, this message translates to:
  /// **'Games'**
  String get games;

  /// No description provided for @referAndEarn.
  ///
  /// In en, this message translates to:
  /// **'Refer & Earn'**
  String get referAndEarn;

  /// No description provided for @themes.
  ///
  /// In en, this message translates to:
  /// **'Themes'**
  String get themes;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// Learning menu item
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get learning;

  /// No description provided for @linkedIn.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get linkedIn;

  /// No description provided for @connectWithMe.
  ///
  /// In en, this message translates to:
  /// **'Connect with me'**
  String get connectWithMe;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'DevOps Quiz helps learners prepare for interviews and certifications through thousands of carefully selected questions covering Linux, Docker, Kubernetes, Networking, Git, Jenkins, Terraform, Ansible and other DevOps technologies.'**
  String get aboutDescription;

  /// No description provided for @quizResult.
  ///
  /// In en, this message translates to:
  /// **'Quiz Result'**
  String get quizResult;

  /// No description provided for @outstanding.
  ///
  /// In en, this message translates to:
  /// **'Outstanding!'**
  String get outstanding;

  /// No description provided for @greatJob.
  ///
  /// In en, this message translates to:
  /// **'Great Job!'**
  String get greatJob;

  /// No description provided for @goodEffort.
  ///
  /// In en, this message translates to:
  /// **'Good Effort!'**
  String get goodEffort;

  /// No description provided for @keepPracticing.
  ///
  /// In en, this message translates to:
  /// **'Keep Practicing!'**
  String get keepPracticing;

  /// No description provided for @dontGiveUp.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Give Up!'**
  String get dontGiveUp;

  /// No description provided for @shareMessage1.
  ///
  /// In en, this message translates to:
  /// **'I scored'**
  String get shareMessage1;

  /// No description provided for @shareMessage2.
  ///
  /// In en, this message translates to:
  /// **'in the DevOps Quiz!'**
  String get shareMessage2;

  /// No description provided for @downloadApp.
  ///
  /// In en, this message translates to:
  /// **'Download the app:'**
  String get downloadApp;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// No description provided for @percentage.
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get percentage;

  /// No description provided for @bonus.
  ///
  /// In en, this message translates to:
  /// **'Bonus'**
  String get bonus;

  /// No description provided for @perfectScoreBonus.
  ///
  /// In en, this message translates to:
  /// **'Perfect Score Bonus'**
  String get perfectScoreBonus;

  /// No description provided for @shareScore.
  ///
  /// In en, this message translates to:
  /// **'Share Score'**
  String get shareScore;

  /// No description provided for @restartQuiz.
  ///
  /// In en, this message translates to:
  /// **'Restart Quiz'**
  String get restartQuiz;

  /// No description provided for @backToCategories.
  ///
  /// In en, this message translates to:
  /// **'Back to Categories'**
  String get backToCategories;

  /// No description provided for @greatProgress.
  ///
  /// In en, this message translates to:
  /// **'Well done! You\'re making great progress.'**
  String get greatProgress;

  /// No description provided for @practiceMore.
  ///
  /// In en, this message translates to:
  /// **'Good work! A little more practice and you\'ll score even higher.'**
  String get practiceMore;

  /// No description provided for @keepLearning.
  ///
  /// In en, this message translates to:
  /// **'Keep learning and try again. You\'ll improve with practice.'**
  String get keepLearning;

  /// No description provided for @everyExpertStarted.
  ///
  /// In en, this message translates to:
  /// **'Every expert started as a beginner. Practice and come back stronger!'**
  String get everyExpertStarted;

  /// No description provided for @quizInstructions.
  ///
  /// In en, this message translates to:
  /// **'Quiz Instructions'**
  String get quizInstructions;

  /// No description provided for @instruction1.
  ///
  /// In en, this message translates to:
  /// **'Each set contains 25 questions.'**
  String get instruction1;

  /// No description provided for @instruction2.
  ///
  /// In en, this message translates to:
  /// **'You have 30 seconds per question.'**
  String get instruction2;

  /// No description provided for @instruction3.
  ///
  /// In en, this message translates to:
  /// **'Green = Correct Answer.'**
  String get instruction3;

  /// No description provided for @instruction4.
  ///
  /// In en, this message translates to:
  /// **'Red = Wrong Answer.'**
  String get instruction4;

  /// No description provided for @instruction5.
  ///
  /// In en, this message translates to:
  /// **'Answer cannot be changed.'**
  String get instruction5;

  /// No description provided for @instruction6.
  ///
  /// In en, this message translates to:
  /// **'Back button is for review only.'**
  String get instruction6;

  /// No description provided for @instruction7.
  ///
  /// In en, this message translates to:
  /// **'Score is shown after completion.'**
  String get instruction7;

  /// No description provided for @instruction8.
  ///
  /// In en, this message translates to:
  /// **'Each correct answer earns 10 points.'**
  String get instruction8;

  /// No description provided for @excellentPerformance.
  ///
  /// In en, this message translates to:
  /// **'Excellent performance! You\'re a {expert}.'**
  String excellentPerformance(Object expert);

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select Category'**
  String get selectCategory;

  /// No description provided for @devOps.
  ///
  /// In en, this message translates to:
  /// **'DevOps'**
  String get devOps;

  /// No description provided for @selectSet.
  ///
  /// In en, this message translates to:
  /// **'Select Set'**
  String get selectSet;

  /// No description provided for @set.
  ///
  /// In en, this message translates to:
  /// **'Set'**
  String get set;

  /// No description provided for @questions.
  ///
  /// In en, this message translates to:
  /// **'Questions'**
  String get questions;

  /// No description provided for @noScoresYet.
  ///
  /// In en, this message translates to:
  /// **'No Scores Yet'**
  String get noScoresYet;

  /// No description provided for @pointsShort.
  ///
  /// In en, this message translates to:
  /// **'pts'**
  String get pointsShort;

  /// No description provided for @welcomeToDevOpsQuiz.
  ///
  /// In en, this message translates to:
  /// **'Welcome to DevOps Quiz'**
  String get welcomeToDevOpsQuiz;

  /// No description provided for @hiUser.
  ///
  /// In en, this message translates to:
  /// **'Hi {name}'**
  String hiUser(String name);

  /// No description provided for @challengeMode.
  ///
  /// In en, this message translates to:
  /// **'Challenge Mode'**
  String get challengeMode;

  /// No description provided for @challenge.
  ///
  /// In en, this message translates to:
  /// **'Challenge'**
  String get challenge;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @reward.
  ///
  /// In en, this message translates to:
  /// **'Reward'**
  String get reward;

  /// No description provided for @survivalMode.
  ///
  /// In en, this message translates to:
  /// **'Survival Mode'**
  String get survivalMode;

  /// No description provided for @speedChallenge.
  ///
  /// In en, this message translates to:
  /// **'Speed Challenge'**
  String get speedChallenge;

  /// No description provided for @dailyChallenge.
  ///
  /// In en, this message translates to:
  /// **'Daily Challenge'**
  String get dailyChallenge;

  /// No description provided for @ultimateChallenge.
  ///
  /// In en, this message translates to:
  /// **'Ultimate Challenge'**
  String get ultimateChallenge;

  /// No description provided for @timeLeft.
  ///
  /// In en, this message translates to:
  /// **'Time Left'**
  String get timeLeft;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @locked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get locked;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @achievements.
  ///
  /// In en, this message translates to:
  /// **'Achievements'**
  String get achievements;

  /// No description provided for @streak.
  ///
  /// In en, this message translates to:
  /// **'Streak'**
  String get streak;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get days;

  /// No description provided for @tomorrowsReward.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow\'s Reward'**
  String get tomorrowsReward;

  /// No description provided for @shareMessage.
  ///
  /// In en, this message translates to:
  /// **'🎯 I scored {score}/{totalQuestions} in today\'s #DevOps Quiz!\n\n🏆 Points: {earnedPoints}\n🔥 Bonus: {bonusPoints}\n📊 Percentage: {percentage}%\n\nCan you beat my score?\n\nDownload the app:'**
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage);

  /// No description provided for @gameUiSpinWheel.
  ///
  /// In en, this message translates to:
  /// **'Spin Wheel'**
  String get gameUiSpinWheel;

  /// No description provided for @gameUiSpinAndWinBonusPoints.
  ///
  /// In en, this message translates to:
  /// **'Spin and win bonus points'**
  String get gameUiSpinAndWinBonusPoints;

  /// No description provided for @gameUiScratchCard.
  ///
  /// In en, this message translates to:
  /// **'Scratch Card'**
  String get gameUiScratchCard;

  /// No description provided for @gameUiScratchToRevealAReward.
  ///
  /// In en, this message translates to:
  /// **'Scratch to reveal a reward'**
  String get gameUiScratchToRevealAReward;

  /// No description provided for @gameUiLuckySlots.
  ///
  /// In en, this message translates to:
  /// **'Lucky Slots'**
  String get gameUiLuckySlots;

  /// No description provided for @gameUiRollTheSlotsAndWinPoints.
  ///
  /// In en, this message translates to:
  /// **'Roll the slots and win points'**
  String get gameUiRollTheSlotsAndWinPoints;

  /// No description provided for @gameUiMysteryDeal.
  ///
  /// In en, this message translates to:
  /// **'Mystery Deal'**
  String get gameUiMysteryDeal;

  /// No description provided for @gameUiPickAMysteryBoxAndAnswer.
  ///
  /// In en, this message translates to:
  /// **'Pick a mystery box and answer'**
  String get gameUiPickAMysteryBoxAndAnswer;

  /// No description provided for @gameUiMemoryMatch.
  ///
  /// In en, this message translates to:
  /// **'Memory Match'**
  String get gameUiMemoryMatch;

  /// No description provided for @gameUiMatchDevOpsPairs.
  ///
  /// In en, this message translates to:
  /// **'Match DevOps pairs'**
  String get gameUiMatchDevOpsPairs;

  /// No description provided for @gameUiWordGuess.
  ///
  /// In en, this message translates to:
  /// **'Word Guess'**
  String get gameUiWordGuess;

  /// No description provided for @gameUiGuessDevOpsWordsThroughLevels.
  ///
  /// In en, this message translates to:
  /// **'Guess DevOps words through levels'**
  String get gameUiGuessDevOpsWordsThroughLevels;

  /// No description provided for @gameUiFindWords.
  ///
  /// In en, this message translates to:
  /// **'Find Words'**
  String get gameUiFindWords;

  /// No description provided for @gameUiSearchAGridForHiddenDevOpsTerms.
  ///
  /// In en, this message translates to:
  /// **'Search a grid for hidden DevOps terms'**
  String get gameUiSearchAGridForHiddenDevOpsTerms;

  /// No description provided for @gameUiSpotTheDifference.
  ///
  /// In en, this message translates to:
  /// **'Spot the Difference'**
  String get gameUiSpotTheDifference;

  /// No description provided for @gameUiFindFiveChangesBetweenTwoIllustratedScenes.
  ///
  /// In en, this message translates to:
  /// **'Find five changes between two illustrated scenes'**
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes;

  /// No description provided for @gameUiJigsawPuzzle.
  ///
  /// In en, this message translates to:
  /// **'Jigsaw Puzzle'**
  String get gameUiJigsawPuzzle;

  /// No description provided for @gameUiRebuildSharedHDAnimalAndNaturePictures.
  ///
  /// In en, this message translates to:
  /// **'Rebuild shared HD animal and nature pictures'**
  String get gameUiRebuildSharedHDAnimalAndNaturePictures;

  /// No description provided for @gameUiHighOrLow.
  ///
  /// In en, this message translates to:
  /// **'High or Low'**
  String get gameUiHighOrLow;

  /// No description provided for @gameUiBuildAStreak.
  ///
  /// In en, this message translates to:
  /// **'Build a streak'**
  String get gameUiBuildAStreak;

  /// No description provided for @gameUiTrueOrFalseBlitz.
  ///
  /// In en, this message translates to:
  /// **'True or False Blitz'**
  String get gameUiTrueOrFalseBlitz;

  /// No description provided for @gameUiQuickAnswerQuiz.
  ///
  /// In en, this message translates to:
  /// **'Quick answer quiz'**
  String get gameUiQuickAnswerQuiz;

  /// No description provided for @gameUiCommandMatch.
  ///
  /// In en, this message translates to:
  /// **'Command Match'**
  String get gameUiCommandMatch;

  /// No description provided for @gameUiMatchCommandsToMeanings.
  ///
  /// In en, this message translates to:
  /// **'Match commands to meanings'**
  String get gameUiMatchCommandsToMeanings;

  /// No description provided for @gameUiPortMaster.
  ///
  /// In en, this message translates to:
  /// **'Port Master'**
  String get gameUiPortMaster;

  /// No description provided for @gameUiGuessDefaultPorts.
  ///
  /// In en, this message translates to:
  /// **'Guess default ports'**
  String get gameUiGuessDefaultPorts;

  /// No description provided for @gameUiTicTacToe.
  ///
  /// In en, this message translates to:
  /// **'Tic-Tac-Toe'**
  String get gameUiTicTacToe;

  /// No description provided for @gameUiOXNoughtsAndCrossesComputer.
  ///
  /// In en, this message translates to:
  /// **'O X noughts and crosses computer'**
  String get gameUiOXNoughtsAndCrossesComputer;

  /// No description provided for @gameUiConnectFour.
  ///
  /// In en, this message translates to:
  /// **'Connect Four'**
  String get gameUiConnectFour;

  /// No description provided for @gameUiDropFourDiscs.
  ///
  /// In en, this message translates to:
  /// **'Drop four discs'**
  String get gameUiDropFourDiscs;

  /// No description provided for @gameUiLudo.
  ///
  /// In en, this message translates to:
  /// **'Ludo'**
  String get gameUiLudo;

  /// No description provided for @gameUiRaceAgainstBots.
  ///
  /// In en, this message translates to:
  /// **'Race against bots'**
  String get gameUiRaceAgainstBots;

  /// No description provided for @gameUiChess.
  ///
  /// In en, this message translates to:
  /// **'Chess'**
  String get gameUiChess;

  /// No description provided for @gameUiChessBoardLegalMovesTwoPlayers.
  ///
  /// In en, this message translates to:
  /// **'Chess board legal moves two players'**
  String get gameUiChessBoardLegalMovesTwoPlayers;

  /// No description provided for @gameUiSnakeAndLadders.
  ///
  /// In en, this message translates to:
  /// **'Snake and Ladders'**
  String get gameUiSnakeAndLadders;

  /// No description provided for @gameUiDiceBoardSnakesLaddersTwoPlayers.
  ///
  /// In en, this message translates to:
  /// **'Dice board snakes ladders two players'**
  String get gameUiDiceBoardSnakesLaddersTwoPlayers;

  /// No description provided for @gameUiGames.
  ///
  /// In en, this message translates to:
  /// **'Games 🎮'**
  String get gameUiGames;

  /// No description provided for @gameUiPlayEarn.
  ///
  /// In en, this message translates to:
  /// **'Play & Earn'**
  String get gameUiPlayEarn;

  /// No description provided for @gameUiPlayGamesAndEarnBonusPoints.
  ///
  /// In en, this message translates to:
  /// **'Play games and earn bonus points!'**
  String get gameUiPlayGamesAndEarnBonusPoints;

  /// No description provided for @gameUiSearchGames.
  ///
  /// In en, this message translates to:
  /// **'Search games'**
  String get gameUiSearchGames;

  /// No description provided for @gameUiClearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get gameUiClearSearch;

  /// No description provided for @gameUiNoGamesMatch.
  ///
  /// In en, this message translates to:
  /// **'No games match \"{value1}\"'**
  String gameUiNoGamesMatch(String value1);

  /// No description provided for @gameUiSpinWinBonusPoints.
  ///
  /// In en, this message translates to:
  /// **'Spin & win bonus points.'**
  String get gameUiSpinWinBonusPoints;

  /// No description provided for @gameUiScratchToRevealYourReward.
  ///
  /// In en, this message translates to:
  /// **'Scratch to reveal your reward.'**
  String get gameUiScratchToRevealYourReward;

  /// No description provided for @gameUiRollTheSlotsWinPoints.
  ///
  /// In en, this message translates to:
  /// **'Roll the slots & win points.'**
  String get gameUiRollTheSlotsWinPoints;

  /// No description provided for @gameUiPickAMysteryBoxAndAnswerCorrectlyToWin.
  ///
  /// In en, this message translates to:
  /// **'Pick a mystery box and answer correctly to win points.'**
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin;

  /// No description provided for @gameUiMatchDevOpsPairsToEarnPoints.
  ///
  /// In en, this message translates to:
  /// **'Match DevOps pairs to earn points.'**
  String get gameUiMatchDevOpsPairsToEarnPoints;

  /// No description provided for @gameUiGuessTheDevOpsTermIn6Tries.
  ///
  /// In en, this message translates to:
  /// **'Guess the DevOps term in 6 tries.'**
  String get gameUiGuessTheDevOpsTermIn6Tries;

  /// No description provided for @gameUiSearchAGridForHiddenDevOpsTermsff710c9.
  ///
  /// In en, this message translates to:
  /// **'Search a grid for hidden DevOps terms.'**
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9;

  /// No description provided for @gameUiSwipeToFindDevOpsWordsIn500Levels.
  ///
  /// In en, this message translates to:
  /// **'Swipe to find DevOps words in 500 levels.'**
  String get gameUiSwipeToFindDevOpsWordsIn500Levels;

  /// No description provided for @gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c.
  ///
  /// In en, this message translates to:
  /// **'Find five changes between two illustrated scenes.'**
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c;

  /// No description provided for @gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61.
  ///
  /// In en, this message translates to:
  /// **'Rebuild shared HD animal and nature pictures.'**
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61;

  /// No description provided for @gameUiBuildAStreakAndBankYourPoints.
  ///
  /// In en, this message translates to:
  /// **'Build a streak and bank your points.'**
  String get gameUiBuildAStreakAndBankYourPoints;

  /// No description provided for @gameUiBeatTheClockWithQuickAnswers.
  ///
  /// In en, this message translates to:
  /// **'Beat the clock with quick answers.'**
  String get gameUiBeatTheClockWithQuickAnswers;

  /// No description provided for @gameUiTrueOrFalseBlitzd3a29d7.
  ///
  /// In en, this message translates to:
  /// **'True or False Blitz 🆕'**
  String get gameUiTrueOrFalseBlitzd3a29d7;

  /// No description provided for @gameUiMatchCommandsToWhatTheyDo.
  ///
  /// In en, this message translates to:
  /// **'Match commands to what they do.'**
  String get gameUiMatchCommandsToWhatTheyDo;

  /// No description provided for @gameUiCommandMatch670a76e.
  ///
  /// In en, this message translates to:
  /// **'Command Match 🆕'**
  String get gameUiCommandMatch670a76e;

  /// No description provided for @gameUiGuessDefaultPortsWith3Lives.
  ///
  /// In en, this message translates to:
  /// **'Guess default ports with 3 lives.'**
  String get gameUiGuessDefaultPortsWith3Lives;

  /// No description provided for @gameUiPortMaster8f5fd42.
  ///
  /// In en, this message translates to:
  /// **'Port Master 🆕'**
  String get gameUiPortMaster8f5fd42;

  /// No description provided for @gameUiPlayOXAgainstTheComputer.
  ///
  /// In en, this message translates to:
  /// **'Play O/X against the computer.'**
  String get gameUiPlayOXAgainstTheComputer;

  /// No description provided for @gameUiDropFourDiscsInARowToWin.
  ///
  /// In en, this message translates to:
  /// **'Drop four discs in a row to win.'**
  String get gameUiDropFourDiscsInARowToWin;

  /// No description provided for @gameUiRaceYourPiecesAgainstThreeBots.
  ///
  /// In en, this message translates to:
  /// **'Race your pieces against three bots.'**
  String get gameUiRaceYourPiecesAgainstThreeBots;

  /// No description provided for @gameUiLocalTwoPlayerChessWithLegalMoves.
  ///
  /// In en, this message translates to:
  /// **'Local two-player chess with legal moves.'**
  String get gameUiLocalTwoPlayerChessWithLegalMoves;

  /// No description provided for @gameUiPlayALegalTwoPlayerChessMatch.
  ///
  /// In en, this message translates to:
  /// **'Play a legal two-player chess match.'**
  String get gameUiPlayALegalTwoPlayerChessMatch;

  /// No description provided for @gameUiTwoPlayerDiceBoardGame.
  ///
  /// In en, this message translates to:
  /// **'Two-player dice board game.'**
  String get gameUiTwoPlayerDiceBoardGame;

  /// No description provided for @gameUiRaceTo100ClimbLaddersAndDodgeSnakes.
  ///
  /// In en, this message translates to:
  /// **'Race to 100. Climb ladders and dodge snakes.'**
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes;

  /// No description provided for @gameUiPlay.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get gameUiPlay;

  /// No description provided for @gameUiWheelStopped.
  ///
  /// In en, this message translates to:
  /// **'Wheel Stopped!'**
  String get gameUiWheelStopped;

  /// No description provided for @gameUiYourRewardIs.
  ///
  /// In en, this message translates to:
  /// **'Your reward is'**
  String get gameUiYourRewardIs;

  /// No description provided for @gameUiPOINTS.
  ///
  /// In en, this message translates to:
  /// **'POINTS'**
  String get gameUiPOINTS;

  /// No description provided for @gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward.
  ///
  /// In en, this message translates to:
  /// **'Answer 1 quiz question correctly to claim this reward.'**
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward;

  /// No description provided for @gameUiWrongAnswerRewardLost.
  ///
  /// In en, this message translates to:
  /// **'Wrong answer = reward lost.'**
  String get gameUiWrongAnswerRewardLost;

  /// No description provided for @gameUiAnswerQuestion.
  ///
  /// In en, this message translates to:
  /// **'Answer Question'**
  String get gameUiAnswerQuestion;

  /// No description provided for @gameUiSpinWheele449982.
  ///
  /// In en, this message translates to:
  /// **'🎡 Spin Wheel'**
  String get gameUiSpinWheele449982;

  /// No description provided for @gameUiDailySpin.
  ///
  /// In en, this message translates to:
  /// **'Daily Spin'**
  String get gameUiDailySpin;

  /// No description provided for @gameUiSpinTheWheelThenAnswerAQuestionToClaim.
  ///
  /// In en, this message translates to:
  /// **'Spin the wheel, then answer a question to claim your reward!'**
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim;

  /// No description provided for @gameUiYouHaveAlreadyUsedTodaySSpin.
  ///
  /// In en, this message translates to:
  /// **'You have already used today\'s spin.'**
  String get gameUiYouHaveAlreadyUsedTodaySSpin;

  /// No description provided for @gameUiSpinning.
  ///
  /// In en, this message translates to:
  /// **'Spinning...'**
  String get gameUiSpinning;

  /// No description provided for @gameUiSPINNOW.
  ///
  /// In en, this message translates to:
  /// **'SPIN NOW'**
  String get gameUiSPINNOW;

  /// No description provided for @gameUiCOMEBACKTOMORROW.
  ///
  /// In en, this message translates to:
  /// **'COME BACK TOMORROW'**
  String get gameUiCOMEBACKTOMORROW;

  /// No description provided for @gameUiTodaySRewardPoints.
  ///
  /// In en, this message translates to:
  /// **'Today\'s reward: ⭐ {value1} points'**
  String gameUiTodaySRewardPoints(String value1);

  /// No description provided for @gameUiBackToGames.
  ///
  /// In en, this message translates to:
  /// **'Back to Games'**
  String get gameUiBackToGames;

  /// No description provided for @gameUiSPIN.
  ///
  /// In en, this message translates to:
  /// **'SPIN'**
  String get gameUiSPIN;

  /// No description provided for @gameUiRewardRevealed.
  ///
  /// In en, this message translates to:
  /// **'Reward Revealed!'**
  String get gameUiRewardRevealed;

  /// No description provided for @gameUiYouFound.
  ///
  /// In en, this message translates to:
  /// **'You found'**
  String get gameUiYouFound;

  /// No description provided for @gameUiScratchCarda7407ad.
  ///
  /// In en, this message translates to:
  /// **'🎟️ Scratch Card'**
  String get gameUiScratchCarda7407ad;

  /// No description provided for @gameUiDailyScratch.
  ///
  /// In en, this message translates to:
  /// **'Daily Scratch'**
  String get gameUiDailyScratch;

  /// No description provided for @gameUiScratchTheCardToRevealTodaySReward.
  ///
  /// In en, this message translates to:
  /// **'Scratch the card to reveal today\'s reward!'**
  String get gameUiScratchTheCardToRevealTodaySReward;

  /// No description provided for @gameUiYouHaveAlreadyUsedTodaySScratchCard.
  ///
  /// In en, this message translates to:
  /// **'You have already used today\'s scratch card.'**
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard;

  /// No description provided for @gameUiAlreadyScratched.
  ///
  /// In en, this message translates to:
  /// **'Already Scratched'**
  String get gameUiAlreadyScratched;

  /// No description provided for @gameUiComeBackTomorrowForAnotherReward.
  ///
  /// In en, this message translates to:
  /// **'Come back tomorrow for another reward.'**
  String get gameUiComeBackTomorrowForAnotherReward;

  /// No description provided for @gameUiYouRevealed.
  ///
  /// In en, this message translates to:
  /// **'You revealed'**
  String get gameUiYouRevealed;

  /// No description provided for @gameUiSCRATCHHERE.
  ///
  /// In en, this message translates to:
  /// **'SCRATCH HERE  👆'**
  String get gameUiSCRATCHHERE;

  /// No description provided for @gameUiJACKPOT777.
  ///
  /// In en, this message translates to:
  /// **'JACKPOT 777!'**
  String get gameUiJACKPOT777;

  /// No description provided for @gameUiLucky777.
  ///
  /// In en, this message translates to:
  /// **'Lucky 777!'**
  String get gameUiLucky777;

  /// No description provided for @gameUiYourReward.
  ///
  /// In en, this message translates to:
  /// **'Your reward'**
  String get gameUiYourReward;

  /// No description provided for @gameUiLuckySlots6602dbb.
  ///
  /// In en, this message translates to:
  /// **'🎰 Lucky Slots'**
  String get gameUiLuckySlots6602dbb;

  /// No description provided for @gameUiRollTheSlotsThenAnswerAQuestionToClaim.
  ///
  /// In en, this message translates to:
  /// **'Roll the slots, then answer a question to claim the reward!'**
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim;

  /// No description provided for @gameUiYouHaveAlreadyPlayedToday.
  ///
  /// In en, this message translates to:
  /// **'You have already played today.'**
  String get gameUiYouHaveAlreadyPlayedToday;

  /// No description provided for @gameUiSPINNING.
  ///
  /// In en, this message translates to:
  /// **'SPINNING...'**
  String get gameUiSPINNING;

  /// No description provided for @gameUiROLLNOW.
  ///
  /// In en, this message translates to:
  /// **'ROLL NOW'**
  String get gameUiROLLNOW;

  /// No description provided for @gameUiJACKPOT777PointsAvailable.
  ///
  /// In en, this message translates to:
  /// **'🎰 JACKPOT! 777 points available!'**
  String get gameUiJACKPOT777PointsAvailable;

  /// No description provided for @gameUiUnableToCheckMysteryDealStatus.
  ///
  /// In en, this message translates to:
  /// **'Unable to check Mystery Deal status: {value1}'**
  String gameUiUnableToCheckMysteryDealStatus(String value1);

  /// No description provided for @gameUiBox.
  ///
  /// In en, this message translates to:
  /// **'Box {value1}'**
  String gameUiBox(String value1);

  /// No description provided for @gameUiPOINTSeb9559c.
  ///
  /// In en, this message translates to:
  /// **'{value1} POINTS'**
  String gameUiPOINTSeb9559c(String value1);

  /// No description provided for @gameUiStartQuestion.
  ///
  /// In en, this message translates to:
  /// **'Start Question'**
  String get gameUiStartQuestion;

  /// No description provided for @gameUiMysteryDeal9c9a14e.
  ///
  /// In en, this message translates to:
  /// **'💼 Mystery Deal'**
  String get gameUiMysteryDeal9c9a14e;

  /// No description provided for @gameUiMysteryDealCompleted.
  ///
  /// In en, this message translates to:
  /// **'Mystery Deal Completed!'**
  String get gameUiMysteryDealCompleted;

  /// No description provided for @gameUiYouHaveAlreadyPlayedMysteryDealToday.
  ///
  /// In en, this message translates to:
  /// **'You have already played Mystery Deal today.'**
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday;

  /// No description provided for @gameUiTodayYouWon.
  ///
  /// In en, this message translates to:
  /// **'Today you won'**
  String get gameUiTodayYouWon;

  /// No description provided for @gameUiTodaySReward.
  ///
  /// In en, this message translates to:
  /// **'Today\'s reward'**
  String get gameUiTodaySReward;

  /// No description provided for @gameUiPOINTS09ad970.
  ///
  /// In en, this message translates to:
  /// **'+{value1} POINTS'**
  String gameUiPOINTS09ad970(String value1);

  /// No description provided for @gameUiPOINTSLOST.
  ///
  /// In en, this message translates to:
  /// **'{value1} POINTS LOST'**
  String gameUiPOINTSLOST(String value1);

  /// No description provided for @gameUiComeBackTomorrowForAnotherMysteryBox.
  ///
  /// In en, this message translates to:
  /// **'Come back tomorrow for another mystery box!'**
  String get gameUiComeBackTomorrowForAnotherMysteryBox;

  /// No description provided for @gameUiChooseYourMysteryBox.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Mystery Box'**
  String get gameUiChooseYourMysteryBox;

  /// No description provided for @gameUiEachBoxContainsAHiddenRewardBetween10And.
  ///
  /// In en, this message translates to:
  /// **'Each box contains a hidden reward between 10 and 1000 points.'**
  String get gameUiEachBoxContainsAHiddenRewardBetween10And;

  /// No description provided for @gameUiPickOnlyOneBox.
  ///
  /// In en, this message translates to:
  /// **'Pick only one box!'**
  String get gameUiPickOnlyOneBox;

  /// No description provided for @gameUiAllLevelsComplete.
  ///
  /// In en, this message translates to:
  /// **'All {value1} levels complete!'**
  String gameUiAllLevelsComplete(String value1);

  /// No description provided for @gameUiLevelComplete.
  ///
  /// In en, this message translates to:
  /// **'Level {value1} complete!'**
  String gameUiLevelComplete(String value1);

  /// No description provided for @gameUiCompletedInMovesYouEarnedPoints.
  ///
  /// In en, this message translates to:
  /// **'Completed in {value1} moves.\nYou earned {value2} points!'**
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2);

  /// No description provided for @gameUiCompletedInMovesThisLevelWasAlreadyCleared.
  ///
  /// In en, this message translates to:
  /// **'Completed in {value1} moves.\nThis level was already cleared.'**
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1);

  /// No description provided for @gameUiNextLevel.
  ///
  /// In en, this message translates to:
  /// **'Next level'**
  String get gameUiNextLevel;

  /// No description provided for @gameUiDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get gameUiDone;

  /// No description provided for @gameUiMemoryMatch6b3eaaf.
  ///
  /// In en, this message translates to:
  /// **'Memory Match 🧠'**
  String get gameUiMemoryMatch6b3eaaf;

  /// No description provided for @gameUiAll100LevelsComplete.
  ///
  /// In en, this message translates to:
  /// **'All 100 levels complete!'**
  String get gameUiAll100LevelsComplete;

  /// No description provided for @gameUiYouCompletedEveryMemoryMatchLevelWellPlayed.
  ///
  /// In en, this message translates to:
  /// **'You completed every Memory Match level. Well played!'**
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed;

  /// No description provided for @gameUiChooseLevel.
  ///
  /// In en, this message translates to:
  /// **'Choose level'**
  String get gameUiChooseLevel;

  /// No description provided for @gameUiMoves.
  ///
  /// In en, this message translates to:
  /// **'Moves: {value1}'**
  String gameUiMoves(String value1);

  /// No description provided for @gameUiLevelOf.
  ///
  /// In en, this message translates to:
  /// **'Level {value1} of {value2}'**
  String gameUiLevelOf(String value1, String value2);

  /// No description provided for @gameUiPairs.
  ///
  /// In en, this message translates to:
  /// **'{value1} pairs'**
  String gameUiPairs(String value1);

  /// No description provided for @gameUiMemorizeLevel.
  ///
  /// In en, this message translates to:
  /// **'Memorize Level {value1}'**
  String gameUiMemorizeLevel(String value1);

  /// No description provided for @gameUiFindMatchingPairs.
  ///
  /// In en, this message translates to:
  /// **'Find {value1} matching pairs'**
  String gameUiFindMatchingPairs(String value1);

  /// No description provided for @gameUiDevOpsQuizLogo.
  ///
  /// In en, this message translates to:
  /// **'DevOps Quiz logo'**
  String get gameUiDevOpsQuizLogo;

  /// No description provided for @gameUiChapter1RestoreTheBuildPipeline.
  ///
  /// In en, this message translates to:
  /// **'Chapter 1 · Restore the build pipeline'**
  String get gameUiChapter1RestoreTheBuildPipeline;

  /// No description provided for @gameUiChapter2ScaleTheCloudPlatform.
  ///
  /// In en, this message translates to:
  /// **'Chapter 2 · Scale the cloud platform'**
  String get gameUiChapter2ScaleTheCloudPlatform;

  /// No description provided for @gameUiChapter3ProtectProduction.
  ///
  /// In en, this message translates to:
  /// **'Chapter 3 · Protect production'**
  String get gameUiChapter3ProtectProduction;

  /// No description provided for @gameUiUseAllRemainingLettersToSubmit.
  ///
  /// In en, this message translates to:
  /// **'Use all {value1} remaining letters to submit.'**
  String gameUiUseAllRemainingLettersToSubmit(String value1);

  /// No description provided for @gameUiAllLevelsComplete22617e1.
  ///
  /// In en, this message translates to:
  /// **'All Levels Complete!'**
  String get gameUiAllLevelsComplete22617e1;

  /// No description provided for @gameUiLevelComplete643224e.
  ///
  /// In en, this message translates to:
  /// **'Level {value1} Complete!'**
  String gameUiLevelComplete643224e(String value1);

  /// No description provided for @gameUiTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get gameUiTryAgain;

  /// No description provided for @gameUiTheWordWasYouEarnedPoints.
  ///
  /// In en, this message translates to:
  /// **'The word was {value1}. You earned {value2} points.'**
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2);

  /// No description provided for @gameUiTheWordWasYouEarnedPointsAfterHint.
  ///
  /// In en, this message translates to:
  /// **'The word was {value1}. You earned {value2} points after {value3} hint.'**
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3);

  /// No description provided for @gameUiTheWordWasYouEarnedPointsAfterHints.
  ///
  /// In en, this message translates to:
  /// **'The word was {value1}. You earned {value2} points after {value3} hints.'**
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3);

  /// No description provided for @gameUiTheWordWasLevelIsStillWaitingForYou.
  ///
  /// In en, this message translates to:
  /// **'The word was {value1}. Level {value2} is still waiting for you.'**
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2);

  /// No description provided for @gameUiFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get gameUiFinish;

  /// No description provided for @gameUiNextLevel254fd73.
  ///
  /// In en, this message translates to:
  /// **'Next Level'**
  String get gameUiNextLevel254fd73;

  /// No description provided for @gameUiRetryLevel.
  ///
  /// In en, this message translates to:
  /// **'Retry Level'**
  String get gameUiRetryLevel;

  /// No description provided for @gameUiHowToPlay.
  ///
  /// In en, this message translates to:
  /// **'How to Play'**
  String get gameUiHowToPlay;

  /// No description provided for @gameUiEachLevelHasOneDevOpsWordWordsShorterThan.
  ///
  /// In en, this message translates to:
  /// **'Each level has one DevOps word. Words shorter than five letters start with no free letters; longer words start with one. Use the letter rack to build the answer and press Enter. Hints reveal another letter and cost 20 points from your balance. Each completed level earns 100 points.'**
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan;

  /// No description provided for @gameUiGotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gameUiGotIt;

  /// No description provided for @gameUiAllLevelsCompleteb3ea90e.
  ///
  /// In en, this message translates to:
  /// **'All {value1} Levels Complete!'**
  String gameUiAllLevelsCompleteb3ea90e(String value1);

  /// No description provided for @gameUiEasy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get gameUiEasy;

  /// No description provided for @gameUiMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get gameUiMedium;

  /// No description provided for @gameUiHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get gameUiHard;

  /// No description provided for @gameUiHowToPlay13a6b22.
  ///
  /// In en, this message translates to:
  /// **'How to play'**
  String get gameUiHowToPlay13a6b22;

  /// No description provided for @gameUiLevel.
  ///
  /// In en, this message translates to:
  /// **'Level {value1}/{value2}'**
  String gameUiLevel(String value1, String value2);

  /// No description provided for @gameUiRewardPtsHintsUsed.
  ///
  /// In en, this message translates to:
  /// **'Reward {value1} pts · hints used {value2}'**
  String gameUiRewardPtsHintsUsed(String value1, String value2);

  /// No description provided for @gameUiHint20Pts.
  ///
  /// In en, this message translates to:
  /// **'Hint · −20 pts'**
  String get gameUiHint20Pts;

  /// No description provided for @gameUiEnter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get gameUiEnter;

  /// No description provided for @gameUiDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get gameUiDelete;

  /// No description provided for @gameUiDragThroughAWord.
  ///
  /// In en, this message translates to:
  /// **'Drag through a word'**
  String get gameUiDragThroughAWord;

  /// No description provided for @gameUiDragThroughEachWord.
  ///
  /// In en, this message translates to:
  /// **'Drag through each word'**
  String get gameUiDragThroughEachWord;

  /// No description provided for @gameUiReleaseToSelect.
  ///
  /// In en, this message translates to:
  /// **'Release to select'**
  String get gameUiReleaseToSelect;

  /// No description provided for @gameUiFound.
  ///
  /// In en, this message translates to:
  /// **'Found {value1}'**
  String gameUiFound(String value1);

  /// No description provided for @gameUiNoWordThere.
  ///
  /// In en, this message translates to:
  /// **'No word there'**
  String get gameUiNoWordThere;

  /// No description provided for @gameUiAlreadyFound.
  ///
  /// In en, this message translates to:
  /// **'Already found {value1}'**
  String gameUiAlreadyFound(String value1);

  /// No description provided for @gameUiLookFor.
  ///
  /// In en, this message translates to:
  /// **'Look for {value1}'**
  String gameUiLookFor(String value1);

  /// No description provided for @gameUiAllLevelsComplete9597abc.
  ///
  /// In en, this message translates to:
  /// **'All levels complete!'**
  String get gameUiAllLevelsComplete9597abc;

  /// No description provided for @gameUiYouFoundEveryWordAndEarnedPoints.
  ///
  /// In en, this message translates to:
  /// **'You found every word and earned {value1} points.'**
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1);

  /// No description provided for @gameUiYouFoundEveryWordThisLevelWasAlreadyCleared.
  ///
  /// In en, this message translates to:
  /// **'You found every word. This level was already cleared.'**
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared;

  /// No description provided for @gameUiAll500LevelsComplete.
  ///
  /// In en, this message translates to:
  /// **'All 500 levels complete!'**
  String get gameUiAll500LevelsComplete;

  /// No description provided for @gameUiReviewLevels.
  ///
  /// In en, this message translates to:
  /// **'Review levels'**
  String get gameUiReviewLevels;

  /// No description provided for @gameUiLeft.
  ///
  /// In en, this message translates to:
  /// **'{value1} left'**
  String gameUiLeft(String value1);

  /// No description provided for @gameUiPts.
  ///
  /// In en, this message translates to:
  /// **'+{value1} pts'**
  String gameUiPts(String value1);

  /// No description provided for @gameUiCouldNotSaveProgressPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Could not save progress. Please try again.'**
  String get gameUiCouldNotSaveProgressPleaseTryAgain;

  /// No description provided for @gameUiYouEarnedPoints.
  ///
  /// In en, this message translates to:
  /// **'You earned {value1} points!'**
  String gameUiYouEarnedPoints(String value1);

  /// No description provided for @gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn.
  ///
  /// In en, this message translates to:
  /// **'You already completed this picture. No additional points on replay.'**
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn;

  /// No description provided for @gameUiYouCompletedEveryPicture.
  ///
  /// In en, this message translates to:
  /// **'You completed every picture!'**
  String get gameUiYouCompletedEveryPicture;

  /// No description provided for @gameUiLevels.
  ///
  /// In en, this message translates to:
  /// **'Levels'**
  String get gameUiLevels;

  /// No description provided for @gameUiPictureB.
  ///
  /// In en, this message translates to:
  /// **'Picture B'**
  String get gameUiPictureB;

  /// No description provided for @gameUiPictureA.
  ///
  /// In en, this message translates to:
  /// **'Picture A'**
  String get gameUiPictureA;

  /// No description provided for @gameUiPictureCouldNotLoadRetry.
  ///
  /// In en, this message translates to:
  /// **'Picture could not load. Retry'**
  String get gameUiPictureCouldNotLoadRetry;

  /// No description provided for @gameUiResetZoom.
  ///
  /// In en, this message translates to:
  /// **'Reset zoom'**
  String get gameUiResetZoom;

  /// No description provided for @gameUiZoomBothPictures.
  ///
  /// In en, this message translates to:
  /// **'Zoom both pictures'**
  String get gameUiZoomBothPictures;

  /// No description provided for @gameUiHintPointsPerHint.
  ///
  /// In en, this message translates to:
  /// **'Hint · {value1} points per hint'**
  String gameUiHintPointsPerHint(String value1);

  /// No description provided for @gameUiCouldNotLoadProgressRetry.
  ///
  /// In en, this message translates to:
  /// **'Could not load progress. Retry'**
  String get gameUiCouldNotLoadProgressRetry;

  /// No description provided for @gameUiLevel01cef48.
  ///
  /// In en, this message translates to:
  /// **'Level {value1} / {value2}'**
  String gameUiLevel01cef48(String value1, String value2);

  /// No description provided for @gameUiAllDifferencesFound.
  ///
  /// In en, this message translates to:
  /// **'All differences found!'**
  String get gameUiAllDifferencesFound;

  /// No description provided for @gameUiFindFiveDifferencesTapEachOneInEitherPicture.
  ///
  /// In en, this message translates to:
  /// **'Find {count} differences. Tap each one in either picture.'**
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count);

  /// No description provided for @gameUiMissesHintsPtsLevelsComplete.
  ///
  /// In en, this message translates to:
  /// **'Misses: {value1}  ·  Hints: {value2} (−{value3} pts)  ·  {value4} levels complete'**
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4);

  /// No description provided for @gameUiNextLevel50934e0.
  ///
  /// In en, this message translates to:
  /// **'Next level: {value1}'**
  String gameUiNextLevel50934e0(String value1);

  /// No description provided for @gameUiPuzzleComplete.
  ///
  /// In en, this message translates to:
  /// **'Puzzle {value1} complete!'**
  String gameUiPuzzleComplete(String value1);

  /// No description provided for @gameUiPictureCompleteInMovesYouEarnedPoints.
  ///
  /// In en, this message translates to:
  /// **'Picture complete in {value1} moves. You earned {value2} points.'**
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2);

  /// No description provided for @gameUiPictureCompleteInMoves.
  ///
  /// In en, this message translates to:
  /// **'Picture complete in {value1} moves.'**
  String gameUiPictureCompleteInMoves(String value1);

  /// No description provided for @gameUiNextPuzzle.
  ///
  /// In en, this message translates to:
  /// **'Next puzzle'**
  String get gameUiNextPuzzle;

  /// No description provided for @gameUiAllPuzzlesComplete.
  ///
  /// In en, this message translates to:
  /// **'All puzzles complete'**
  String get gameUiAllPuzzlesComplete;

  /// No description provided for @gameUiPuzzlePieceOfCorrectlyPlaced.
  ///
  /// In en, this message translates to:
  /// **'Puzzle piece {value1} of {value2}, correctly placed'**
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2);

  /// No description provided for @gameUiPuzzlePieceOf.
  ///
  /// In en, this message translates to:
  /// **'Puzzle piece {value1} of {value2}'**
  String gameUiPuzzlePieceOf(String value1, String value2);

  /// No description provided for @gameUiChoosePuzzle.
  ///
  /// In en, this message translates to:
  /// **'Choose puzzle'**
  String get gameUiChoosePuzzle;

  /// No description provided for @gameUiShufflePieces.
  ///
  /// In en, this message translates to:
  /// **'Shuffle pieces'**
  String get gameUiShufflePieces;

  /// No description provided for @gameUiUnableToLoadThePuzzlePicture.
  ///
  /// In en, this message translates to:
  /// **'Unable to load the puzzle picture.'**
  String get gameUiUnableToLoadThePuzzlePicture;

  /// No description provided for @gameUiPreviousPuzzle.
  ///
  /// In en, this message translates to:
  /// **'Previous puzzle'**
  String get gameUiPreviousPuzzle;

  /// No description provided for @gameUiPuzzle.
  ///
  /// In en, this message translates to:
  /// **'Puzzle {value1}'**
  String gameUiPuzzle(String value1);

  /// No description provided for @gameUiMoves9d0612c.
  ///
  /// In en, this message translates to:
  /// **'{value1} / {value2}  ·  {value3} × {value4}  ·  {value5} moves'**
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5);

  /// No description provided for @gameUiDragPiecesToSwapThemOrTapTwoPieces.
  ///
  /// In en, this message translates to:
  /// **'Drag pieces to swap them, or tap two pieces.'**
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces;

  /// No description provided for @gameUiPuzzlesSolvedPointsEach.
  ///
  /// In en, this message translates to:
  /// **'{value1} / {value2} puzzles solved  ·  {value3} points each'**
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3);

  /// No description provided for @gameUiGameOver.
  ///
  /// In en, this message translates to:
  /// **'Game Over'**
  String get gameUiGameOver;

  /// No description provided for @gameUiTheNumberWasStreakYouEarnedPointsComeBack.
  ///
  /// In en, this message translates to:
  /// **'The number was {value1}.\nStreak: {value2}\nYou earned {value3} points!\n\nCome back tomorrow for another chance!'**
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3);

  /// No description provided for @gameUiHigherOrLower.
  ///
  /// In en, this message translates to:
  /// **'Higher or Lower 📈'**
  String get gameUiHigherOrLower;

  /// No description provided for @gameUiAlreadyPlayedToday.
  ///
  /// In en, this message translates to:
  /// **'Already Played Today!'**
  String get gameUiAlreadyPlayedToday;

  /// No description provided for @gameUiYouPlayedOnComeBackTomorrowToBuildA.
  ///
  /// In en, this message translates to:
  /// **'You played on {value1}/{value2}/{value3}.\n\nCome back tomorrow to build a new streak!'**
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3);

  /// No description provided for @gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor.
  ///
  /// In en, this message translates to:
  /// **'You have already played today.\n\nCome back tomorrow for another chance!'**
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor;

  /// No description provided for @gameUiStreak.
  ///
  /// In en, this message translates to:
  /// **'🔥 Streak: {value1}'**
  String gameUiStreak(String value1);

  /// No description provided for @gameUiPoints.
  ///
  /// In en, this message translates to:
  /// **'⭐ Points: {value1}'**
  String gameUiPoints(String value1);

  /// No description provided for @gameUiWillTheNextNumberBeHigherOrLower.
  ///
  /// In en, this message translates to:
  /// **'Will the next number be higher or lower?'**
  String get gameUiWillTheNextNumberBeHigherOrLower;

  /// No description provided for @gameUiLower.
  ///
  /// In en, this message translates to:
  /// **'Lower'**
  String get gameUiLower;

  /// No description provided for @gameUiHigher.
  ///
  /// In en, this message translates to:
  /// **'Higher'**
  String get gameUiHigher;

  /// No description provided for @gameUiTrueOrFalseBlitz437a7d8.
  ///
  /// In en, this message translates to:
  /// **'True or False Blitz ⚡'**
  String get gameUiTrueOrFalseBlitz437a7d8;

  /// No description provided for @gameUiTimeSUp.
  ///
  /// In en, this message translates to:
  /// **'Time\'s Up!'**
  String get gameUiTimeSUp;

  /// No description provided for @gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack.
  ///
  /// In en, this message translates to:
  /// **'Correct answers: {value1}\nBest streak: {value2}\n{value3}You earned {value4} points!\n\nCome back tomorrow for another round!'**
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4);

  /// No description provided for @gameUiStreakBonus20.
  ///
  /// In en, this message translates to:
  /// **'Streak bonus: +20\n'**
  String get gameUiStreakBonus20;

  /// No description provided for @gameUiIsTheShownAnswerTrueOrFalse.
  ///
  /// In en, this message translates to:
  /// **'Is the shown answer true or false?'**
  String get gameUiIsTheShownAnswerTrueOrFalse;

  /// No description provided for @gameUiQuestionsAcrossCategories.
  ///
  /// In en, this message translates to:
  /// **'{value1} questions across {value2} categories'**
  String gameUiQuestionsAcrossCategories(String value1, String value2);

  /// No description provided for @gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA.
  ///
  /// In en, this message translates to:
  /// **'You have {value1} seconds. Each correct answer earns {value2} points. A wrong answer costs {value3} seconds. Reach a streak of 5 for a +20 bonus.'**
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3);

  /// No description provided for @gameUiRoundTimer.
  ///
  /// In en, this message translates to:
  /// **'Round timer'**
  String get gameUiRoundTimer;

  /// No description provided for @gameUiSeconds.
  ///
  /// In en, this message translates to:
  /// **'{value1} seconds'**
  String gameUiSeconds(String value1);

  /// No description provided for @gameUiStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get gameUiStart;

  /// No description provided for @gameUiTrue.
  ///
  /// In en, this message translates to:
  /// **'True'**
  String get gameUiTrue;

  /// No description provided for @gameUiFalse.
  ///
  /// In en, this message translates to:
  /// **'False'**
  String get gameUiFalse;

  /// No description provided for @gameUiCommandMatch26b0e70.
  ///
  /// In en, this message translates to:
  /// **'Command Match 🔗'**
  String get gameUiCommandMatch26b0e70;

  /// No description provided for @gameUiAllMatched.
  ///
  /// In en, this message translates to:
  /// **'All Matched!'**
  String get gameUiAllMatched;

  /// No description provided for @gameUiMistakesYouEarnedPointsComeBackTomorrowForNew.
  ///
  /// In en, this message translates to:
  /// **'Mistakes: {value1}\nYou earned {value2} points!\n\nCome back tomorrow for new commands!'**
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2);

  /// No description provided for @gameUiRound.
  ///
  /// In en, this message translates to:
  /// **'Round {value1} / {value2}'**
  String gameUiRound(String value1, String value2);

  /// No description provided for @gameUiTapACommandThenTapItsMeaning.
  ///
  /// In en, this message translates to:
  /// **'Tap a command, then tap its meaning.'**
  String get gameUiTapACommandThenTapItsMeaning;

  /// No description provided for @gameUiNowTapTheMatchingMeaning.
  ///
  /// In en, this message translates to:
  /// **'Now tap the matching meaning.'**
  String get gameUiNowTapTheMatchingMeaning;

  /// No description provided for @gameUiPortMaster9c730cf.
  ///
  /// In en, this message translates to:
  /// **'Port Master 🔌'**
  String get gameUiPortMaster9c730cf;

  /// No description provided for @gameUiPortMastera796b69.
  ///
  /// In en, this message translates to:
  /// **'Port Master!'**
  String get gameUiPortMastera796b69;

  /// No description provided for @gameUiOutOfLives.
  ///
  /// In en, this message translates to:
  /// **'Out of Lives'**
  String get gameUiOutOfLives;

  /// No description provided for @gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor.
  ///
  /// In en, this message translates to:
  /// **'Correct answers: {value1}\nYou earned {value2} points!\n\nCome back tomorrow for another round!'**
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2);

  /// No description provided for @gameUiYouEarned10Points.
  ///
  /// In en, this message translates to:
  /// **'You earned 10 points!'**
  String get gameUiYouEarned10Points;

  /// No description provided for @gameUiYouWin.
  ///
  /// In en, this message translates to:
  /// **'You win!'**
  String get gameUiYouWin;

  /// No description provided for @gameUiWins.
  ///
  /// In en, this message translates to:
  /// **'{value1} wins!'**
  String gameUiWins(String value1);

  /// No description provided for @gameUiXWins.
  ///
  /// In en, this message translates to:
  /// **'X wins!'**
  String get gameUiXWins;

  /// No description provided for @gameUiXWins8443126.
  ///
  /// In en, this message translates to:
  /// **'{value1} (X) wins!'**
  String gameUiXWins8443126(String value1);

  /// No description provided for @gameUiComputerWins.
  ///
  /// In en, this message translates to:
  /// **'Computer wins'**
  String get gameUiComputerWins;

  /// No description provided for @gameUiOWins.
  ///
  /// In en, this message translates to:
  /// **'O wins!'**
  String get gameUiOWins;

  /// No description provided for @gameUiPlayer2OWins.
  ///
  /// In en, this message translates to:
  /// **'Player 2 (O) wins!'**
  String get gameUiPlayer2OWins;

  /// No description provided for @gameUiItSADraw.
  ///
  /// In en, this message translates to:
  /// **'It\'s a draw'**
  String get gameUiItSADraw;

  /// No description provided for @gameUiYourTurn.
  ///
  /// In en, this message translates to:
  /// **'Your turn'**
  String get gameUiYourTurn;

  /// No description provided for @gameUiSTurn.
  ///
  /// In en, this message translates to:
  /// **'{value1}\'s turn'**
  String gameUiSTurn(String value1);

  /// No description provided for @gameUiComputerIsThinking.
  ///
  /// In en, this message translates to:
  /// **'Computer is thinking'**
  String get gameUiComputerIsThinking;

  /// No description provided for @gameUiPlayerToMove.
  ///
  /// In en, this message translates to:
  /// **'Player {value1} to move'**
  String gameUiPlayerToMove(String value1);

  /// No description provided for @gameUiToMove.
  ///
  /// In en, this message translates to:
  /// **'{value1} to move'**
  String gameUiToMove(String value1);

  /// No description provided for @gameUiPlayer2ToMove.
  ///
  /// In en, this message translates to:
  /// **'Player 2 to move'**
  String get gameUiPlayer2ToMove;

  /// No description provided for @gameUiNewRound.
  ///
  /// In en, this message translates to:
  /// **'New round'**
  String get gameUiNewRound;

  /// No description provided for @gameUiVsComputer.
  ///
  /// In en, this message translates to:
  /// **'Vs computer'**
  String get gameUiVsComputer;

  /// No description provided for @gameUi2Players.
  ///
  /// In en, this message translates to:
  /// **'2 players'**
  String get gameUi2Players;

  /// No description provided for @gameUiYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get gameUiYou;

  /// No description provided for @gameUiDraws.
  ///
  /// In en, this message translates to:
  /// **'Draws'**
  String get gameUiDraws;

  /// No description provided for @gameUiPlayer2.
  ///
  /// In en, this message translates to:
  /// **'Player 2'**
  String get gameUiPlayer2;

  /// No description provided for @gameUiCell.
  ///
  /// In en, this message translates to:
  /// **'Cell {value1}{value2}'**
  String gameUiCell(String value1, String value2);

  /// No description provided for @gameUiPlayAgain.
  ///
  /// In en, this message translates to:
  /// **'Play again'**
  String get gameUiPlayAgain;

  /// No description provided for @gameUiConnectFourWin20Points.
  ///
  /// In en, this message translates to:
  /// **'Connect Four win: 20 points!'**
  String get gameUiConnectFourWin20Points;

  /// No description provided for @gameUiBotWins.
  ///
  /// In en, this message translates to:
  /// **'Bot wins!'**
  String get gameUiBotWins;

  /// No description provided for @gameUiRed.
  ///
  /// In en, this message translates to:
  /// **'Red'**
  String get gameUiRed;

  /// No description provided for @gameUiYellow.
  ///
  /// In en, this message translates to:
  /// **'Yellow'**
  String get gameUiYellow;

  /// No description provided for @gameUiBoardFullDraw.
  ///
  /// In en, this message translates to:
  /// **'Board full — draw'**
  String get gameUiBoardFullDraw;

  /// No description provided for @gameUiBotIsThinking.
  ///
  /// In en, this message translates to:
  /// **'Bot is thinking'**
  String get gameUiBotIsThinking;

  /// No description provided for @gameUiBotTurn.
  ///
  /// In en, this message translates to:
  /// **'Bot turn'**
  String get gameUiBotTurn;

  /// No description provided for @gameUiNewGame.
  ///
  /// In en, this message translates to:
  /// **'New game'**
  String get gameUiNewGame;

  /// No description provided for @gameUiVsBot.
  ///
  /// In en, this message translates to:
  /// **'Vs Bot'**
  String get gameUiVsBot;

  /// No description provided for @gameUi2Player.
  ///
  /// In en, this message translates to:
  /// **'2 Player'**
  String get gameUi2Player;

  /// No description provided for @gameUiPlayAgainstTheBotTapAColumnToDrop.
  ///
  /// In en, this message translates to:
  /// **'Play against the bot · tap a column to drop a disc'**
  String get gameUiPlayAgainstTheBotTapAColumnToDrop;

  /// No description provided for @gameUiTwoPlayersTapAColumnToDropADisc.
  ///
  /// In en, this message translates to:
  /// **'Two players · tap a column to drop a disc'**
  String get gameUiTwoPlayersTapAColumnToDropADisc;

  /// No description provided for @gameUiColumn.
  ///
  /// In en, this message translates to:
  /// **'Column {value1}'**
  String gameUiColumn(String value1);

  /// No description provided for @gameUiYouRed.
  ///
  /// In en, this message translates to:
  /// **'You · Red'**
  String get gameUiYouRed;

  /// No description provided for @gameUiRedPlayer1.
  ///
  /// In en, this message translates to:
  /// **'Red · Player 1'**
  String get gameUiRedPlayer1;

  /// No description provided for @gameUiBotYellow.
  ///
  /// In en, this message translates to:
  /// **'Bot · Yellow'**
  String get gameUiBotYellow;

  /// No description provided for @gameUiYellowPlayer2.
  ///
  /// In en, this message translates to:
  /// **'Yellow · Player 2'**
  String get gameUiYellowPlayer2;

  /// No description provided for @gameUiLudoMatchStats.
  ///
  /// In en, this message translates to:
  /// **'Ludo match stats'**
  String get gameUiLudoMatchStats;

  /// No description provided for @gameUiNoCompletedMatchesYet.
  ///
  /// In en, this message translates to:
  /// **'No completed matches yet.'**
  String get gameUiNoCompletedMatchesYet;

  /// No description provided for @gameUiPlayedWonLost.
  ///
  /// In en, this message translates to:
  /// **'Played {value1}  ·  Won {value2}  ·  Lost {value3}'**
  String gameUiPlayedWonLost(String value1, String value2, String value3);

  /// No description provided for @gameUiClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get gameUiClose;

  /// No description provided for @gameUiLudoChampionYouEarned50Points.
  ///
  /// In en, this message translates to:
  /// **'Ludo champion! You earned 50 points.'**
  String get gameUiLudoChampionYouEarned50Points;

  /// No description provided for @gameUiNewLudoGame.
  ///
  /// In en, this message translates to:
  /// **'New Ludo game'**
  String get gameUiNewLudoGame;

  /// No description provided for @gameUiBotOpponents.
  ///
  /// In en, this message translates to:
  /// **'Bot opponents'**
  String get gameUiBotOpponents;

  /// No description provided for @gameUiStartingANewMatchReplacesYourSavedGame.
  ///
  /// In en, this message translates to:
  /// **'Starting a new match replaces your saved game.'**
  String get gameUiStartingANewMatchReplacesYourSavedGame;

  /// No description provided for @gameUiCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get gameUiCancel;

  /// No description provided for @gameUiStartGame.
  ///
  /// In en, this message translates to:
  /// **'Start game'**
  String get gameUiStartGame;

  /// No description provided for @gameUiPlayerColours.
  ///
  /// In en, this message translates to:
  /// **'Player colours'**
  String get gameUiPlayerColours;

  /// No description provided for @gameUiApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get gameUiApply;

  /// No description provided for @gameUiMatchStats.
  ///
  /// In en, this message translates to:
  /// **'Match stats'**
  String get gameUiMatchStats;

  /// No description provided for @gameUiWinsByCheckmate.
  ///
  /// In en, this message translates to:
  /// **'{value1} wins by checkmate'**
  String gameUiWinsByCheckmate(String value1);

  /// No description provided for @gameUiBlack.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get gameUiBlack;

  /// No description provided for @gameUiWhite.
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get gameUiWhite;

  /// No description provided for @gameUiComputerWinsByCheckmate.
  ///
  /// In en, this message translates to:
  /// **'Computer wins by checkmate'**
  String get gameUiComputerWinsByCheckmate;

  /// No description provided for @gameUiYouWinByCheckmate.
  ///
  /// In en, this message translates to:
  /// **'You win by checkmate'**
  String get gameUiYouWinByCheckmate;

  /// No description provided for @gameUiDrawByStalemate.
  ///
  /// In en, this message translates to:
  /// **'Draw by stalemate'**
  String get gameUiDrawByStalemate;

  /// No description provided for @gameUiDraw.
  ///
  /// In en, this message translates to:
  /// **'Draw'**
  String get gameUiDraw;

  /// No description provided for @gameUiCheck.
  ///
  /// In en, this message translates to:
  /// **'{value1} · Check'**
  String gameUiCheck(String value1);

  /// No description provided for @gameUiCheckmateYouEarned50Points.
  ///
  /// In en, this message translates to:
  /// **'Checkmate! You earned 50 points.'**
  String get gameUiCheckmateYouEarned50Points;

  /// No description provided for @gameUiStartANewGame.
  ///
  /// In en, this message translates to:
  /// **'Start a new game?'**
  String get gameUiStartANewGame;

  /// No description provided for @gameUiChangingThePlayerModeReplacesTheSavedMatch.
  ///
  /// In en, this message translates to:
  /// **'Changing the player mode replaces the saved match.'**
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch;

  /// No description provided for @gameUiComputer.
  ///
  /// In en, this message translates to:
  /// **'Computer'**
  String get gameUiComputer;

  /// No description provided for @gameUiWhitePlayer2Black.
  ///
  /// In en, this message translates to:
  /// **'{value1} · White / Player 2 · Black'**
  String gameUiWhitePlayer2Black(String value1);

  /// No description provided for @gameUiYouAreWhiteComputerIsBlack.
  ///
  /// In en, this message translates to:
  /// **'You are White · Computer is Black'**
  String get gameUiYouAreWhiteComputerIsBlack;

  /// No description provided for @gameUiWhiteComputerBlack.
  ///
  /// In en, this message translates to:
  /// **'{value1} (White) · Computer (Black)'**
  String gameUiWhiteComputerBlack(String value1);

  /// No description provided for @gameUiYouAreBlackComputerIsWhite.
  ///
  /// In en, this message translates to:
  /// **'You are Black · Computer is White'**
  String get gameUiYouAreBlackComputerIsWhite;

  /// No description provided for @gameUiBlackComputerWhite.
  ///
  /// In en, this message translates to:
  /// **'{value1} (Black) · Computer (White)'**
  String gameUiBlackComputerWhite(String value1);

  /// No description provided for @gameUiRollsFirst.
  ///
  /// In en, this message translates to:
  /// **'{value1} rolls first'**
  String gameUiRollsFirst(String value1);

  /// No description provided for @gameUiRollsAgain.
  ///
  /// In en, this message translates to:
  /// **'{value1} rolls again'**
  String gameUiRollsAgain(String value1);

  /// No description provided for @gameUiToRoll.
  ///
  /// In en, this message translates to:
  /// **'{value1} to roll'**
  String gameUiToRoll(String value1);

  /// No description provided for @gameUiSnakeAndLaddersWin100Points.
  ///
  /// In en, this message translates to:
  /// **'Snake and Ladders win: 100 points!'**
  String get gameUiSnakeAndLaddersWin100Points;

  /// No description provided for @gameUiChangingPlayersReplacesTheSavedGame.
  ///
  /// In en, this message translates to:
  /// **'Changing players replaces the saved game.'**
  String get gameUiChangingPlayersReplacesTheSavedGame;

  /// No description provided for @gameUiStartANewLevel.
  ///
  /// In en, this message translates to:
  /// **'Start a new level?'**
  String get gameUiStartANewLevel;

  /// No description provided for @gameUiChangingLevelsReplacesTheSavedGame.
  ///
  /// In en, this message translates to:
  /// **'Changing levels replaces the saved game.'**
  String get gameUiChangingLevelsReplacesTheSavedGame;

  /// No description provided for @gameUiChangeLevel.
  ///
  /// In en, this message translates to:
  /// **'Change level'**
  String get gameUiChangeLevel;

  /// No description provided for @gameUiPlayers.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get gameUiPlayers;

  /// No description provided for @gameUiPlayAgainstBot.
  ///
  /// In en, this message translates to:
  /// **'Play against bot'**
  String get gameUiPlayAgainstBot;

  /// No description provided for @gameUi3Players.
  ///
  /// In en, this message translates to:
  /// **'3 players'**
  String get gameUi3Players;

  /// No description provided for @gameUi4Players.
  ///
  /// In en, this message translates to:
  /// **'4 players'**
  String get gameUi4Players;

  /// No description provided for @gameUiLevel1709305.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get gameUiLevel1709305;

  /// No description provided for @gameUiLevel39140b8.
  ///
  /// In en, this message translates to:
  /// **'Level {value1}'**
  String gameUiLevel39140b8(String value1);

  /// No description provided for @gameUiPlayersLevel.
  ///
  /// In en, this message translates to:
  /// **'{value1} players · Level {value2} / {value3}'**
  String gameUiPlayersLevel(String value1, String value2, String value3);

  /// No description provided for @gameUiRoll.
  ///
  /// In en, this message translates to:
  /// **'{value1} · Roll'**
  String gameUiRoll(String value1);

  /// No description provided for @gameUiOn.
  ///
  /// In en, this message translates to:
  /// **'{value1} on {value2}'**
  String gameUiOn(String value1, String value2);

  /// No description provided for @gameUiUnableToLoadQuestion.
  ///
  /// In en, this message translates to:
  /// **'Unable to load question: {value1}'**
  String gameUiUnableToLoadQuestion(String value1);

  /// No description provided for @gameUiCorrectAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct Answer!'**
  String get gameUiCorrectAnswer;

  /// No description provided for @gameUiWrongAnswer.
  ///
  /// In en, this message translates to:
  /// **'Wrong Answer'**
  String get gameUiWrongAnswer;

  /// No description provided for @gameUiYouClaimedYourReward.
  ///
  /// In en, this message translates to:
  /// **'You claimed your reward!'**
  String get gameUiYouClaimedYourReward;

  /// No description provided for @gameUiAddedToYourTotalPoints.
  ///
  /// In en, this message translates to:
  /// **'Added to your total points.'**
  String get gameUiAddedToYourTotalPoints;

  /// No description provided for @gameUiTheCorrectAnswerWas.
  ///
  /// In en, this message translates to:
  /// **'The correct answer was:'**
  String get gameUiTheCorrectAnswerWas;

  /// No description provided for @gameUiPointRewardLost.
  ///
  /// In en, this message translates to:
  /// **'{value1} point reward lost.'**
  String gameUiPointRewardLost(String value1);

  /// No description provided for @gameUiYourExistingPointsWereNotDeducted.
  ///
  /// In en, this message translates to:
  /// **'Your existing points were not deducted.'**
  String get gameUiYourExistingPointsWereNotDeducted;

  /// No description provided for @gameUiComeBackTomorrowAndTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Come back tomorrow and try again.'**
  String get gameUiComeBackTomorrowAndTryAgain;

  /// No description provided for @gameUiUnableToLoadQuestion6407759.
  ///
  /// In en, this message translates to:
  /// **'Unable to load question.'**
  String get gameUiUnableToLoadQuestion6407759;

  /// No description provided for @gameUiYourReward677fa6e.
  ///
  /// In en, this message translates to:
  /// **'Your Reward'**
  String get gameUiYourReward677fa6e;

  /// No description provided for @gameUiPOINTS09f868a.
  ///
  /// In en, this message translates to:
  /// **'⭐ {value1} POINTS'**
  String gameUiPOINTS09f868a(String value1);

  /// No description provided for @gameUiAnswerCorrectlyToClaimIt.
  ///
  /// In en, this message translates to:
  /// **'Answer correctly to claim it!'**
  String get gameUiAnswerCorrectlyToClaimIt;

  /// No description provided for @gameUiComeBackTomorrowForAnotherRound.
  ///
  /// In en, this message translates to:
  /// **'Come back tomorrow for another round.'**
  String get gameUiComeBackTomorrowForAnotherRound;

  /// No description provided for @gameUiGreen.
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get gameUiGreen;

  /// No description provided for @gameUiBlue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get gameUiBlue;

  /// No description provided for @gameUiIsThinking.
  ///
  /// In en, this message translates to:
  /// **'{value1} is thinking'**
  String gameUiIsThinking(String value1);

  /// No description provided for @gameUiChooseAPiece.
  ///
  /// In en, this message translates to:
  /// **'{value1}: choose a piece'**
  String gameUiChooseAPiece(String value1);

  /// No description provided for @gameUiRollTheDice.
  ///
  /// In en, this message translates to:
  /// **'{value1}: roll the dice'**
  String gameUiRollTheDice(String value1);

  /// No description provided for @gameUiDice.
  ///
  /// In en, this message translates to:
  /// **'Dice {value1}'**
  String gameUiDice(String value1);

  /// No description provided for @gameUiRollDice.
  ///
  /// In en, this message translates to:
  /// **'Roll dice'**
  String get gameUiRollDice;

  /// No description provided for @gameUiPiece.
  ///
  /// In en, this message translates to:
  /// **'{value1} piece {value2}'**
  String gameUiPiece(String value1, String value2);

  /// No description provided for @gameUiPlayerName.
  ///
  /// In en, this message translates to:
  /// **'Player {value1}'**
  String gameUiPlayerName(String value1);

  /// No description provided for @gameUiBotName.
  ///
  /// In en, this message translates to:
  /// **'Bot {value1}'**
  String gameUiBotName(String value1);

  /// No description provided for @gameUiBot.
  ///
  /// In en, this message translates to:
  /// **'Bot'**
  String get gameUiBot;

  /// No description provided for @gameUiHintInsufficientPoints.
  ///
  /// In en, this message translates to:
  /// **'You need 20 points to use a hint.'**
  String get gameUiHintInsufficientPoints;

  /// No description provided for @gameUiHintPurchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not purchase a hint. Please try again.'**
  String get gameUiHintPurchaseFailed;

  /// No description provided for @gameUiChessKing.
  ///
  /// In en, this message translates to:
  /// **'king'**
  String get gameUiChessKing;

  /// No description provided for @gameUiChessQueen.
  ///
  /// In en, this message translates to:
  /// **'queen'**
  String get gameUiChessQueen;

  /// No description provided for @gameUiChessRook.
  ///
  /// In en, this message translates to:
  /// **'rook'**
  String get gameUiChessRook;

  /// No description provided for @gameUiChessBishop.
  ///
  /// In en, this message translates to:
  /// **'bishop'**
  String get gameUiChessBishop;

  /// No description provided for @gameUiChessKnight.
  ///
  /// In en, this message translates to:
  /// **'knight'**
  String get gameUiChessKnight;

  /// No description provided for @gameUiChessPawn.
  ///
  /// In en, this message translates to:
  /// **'pawn'**
  String get gameUiChessPawn;

  /// No description provided for @gameUiChessEmpty.
  ///
  /// In en, this message translates to:
  /// **'empty'**
  String get gameUiChessEmpty;

  /// No description provided for @gameSceneLampAndFlowers.
  ///
  /// In en, this message translates to:
  /// **'Lamp and flowers'**
  String get gameSceneLampAndFlowers;

  /// No description provided for @gameSceneGardenFriends.
  ///
  /// In en, this message translates to:
  /// **'Garden friends'**
  String get gameSceneGardenFriends;

  /// No description provided for @gameSceneUnderwaterExplorers.
  ///
  /// In en, this message translates to:
  /// **'Underwater explorers'**
  String get gameSceneUnderwaterExplorers;

  /// No description provided for @gameSceneOceanOrca.
  ///
  /// In en, this message translates to:
  /// **'Ocean orca'**
  String get gameSceneOceanOrca;

  /// No description provided for @gameSceneFoxInTheMeadow.
  ///
  /// In en, this message translates to:
  /// **'Fox in the meadow'**
  String get gameSceneFoxInTheMeadow;

  /// No description provided for @gameSceneYellowSubmarine.
  ///
  /// In en, this message translates to:
  /// **'Yellow submarine'**
  String get gameSceneYellowSubmarine;

  /// No description provided for @gameSceneTurkeyInTheClearing.
  ///
  /// In en, this message translates to:
  /// **'Turkey in the clearing'**
  String get gameSceneTurkeyInTheClearing;

  /// No description provided for @gameSceneSafariWateringHole.
  ///
  /// In en, this message translates to:
  /// **'Safari watering hole'**
  String get gameSceneSafariWateringHole;

  /// No description provided for @gameSceneJungleCompanions.
  ///
  /// In en, this message translates to:
  /// **'Jungle companions'**
  String get gameSceneJungleCompanions;

  /// No description provided for @gameSceneGoldenPuppyGarden.
  ///
  /// In en, this message translates to:
  /// **'Golden puppy garden'**
  String get gameSceneGoldenPuppyGarden;

  /// No description provided for @gameSceneSeaTurtleReef.
  ///
  /// In en, this message translates to:
  /// **'Sea turtle reef'**
  String get gameSceneSeaTurtleReef;

  /// No description provided for @gameSceneCoralReefFriends.
  ///
  /// In en, this message translates to:
  /// **'Coral reef friends'**
  String get gameSceneCoralReefFriends;

  /// No description provided for @gameSceneSharedClownfish.
  ///
  /// In en, this message translates to:
  /// **'Shared clownfish'**
  String get gameSceneSharedClownfish;

  /// No description provided for @gameSceneLittleDinosaur.
  ///
  /// In en, this message translates to:
  /// **'Little dinosaur'**
  String get gameSceneLittleDinosaur;

  /// No description provided for @gameSceneSafariCompanions.
  ///
  /// In en, this message translates to:
  /// **'Safari companions'**
  String get gameSceneSafariCompanions;

  /// No description provided for @gameSceneSwirlingFlowers.
  ///
  /// In en, this message translates to:
  /// **'Swirling flowers'**
  String get gameSceneSwirlingFlowers;

  /// No description provided for @gameSceneGardenKitten.
  ///
  /// In en, this message translates to:
  /// **'Garden kitten'**
  String get gameSceneGardenKitten;

  /// No description provided for @gameSceneBlueOcean.
  ///
  /// In en, this message translates to:
  /// **'Blue ocean'**
  String get gameSceneBlueOcean;

  /// No description provided for @gameSceneCastlePrincess.
  ///
  /// In en, this message translates to:
  /// **'Castle princess'**
  String get gameSceneCastlePrincess;

  /// No description provided for @gameSceneRedCar.
  ///
  /// In en, this message translates to:
  /// **'Red car'**
  String get gameSceneRedCar;

  /// No description provided for @gameSceneGardenPuppy.
  ///
  /// In en, this message translates to:
  /// **'Garden puppy'**
  String get gameSceneGardenPuppy;

  /// No description provided for @gameSceneSpaceExplorer.
  ///
  /// In en, this message translates to:
  /// **'Space explorer'**
  String get gameSceneSpaceExplorer;

  /// No description provided for @gameSceneEnchantedReadingForest.
  ///
  /// In en, this message translates to:
  /// **'Enchanted reading forest'**
  String get gameSceneEnchantedReadingForest;

  /// No description provided for @gameSceneDevopsInfinityCycle.
  ///
  /// In en, this message translates to:
  /// **'DevOps infinity cycle'**
  String get gameSceneDevopsInfinityCycle;

  /// No description provided for @gameSceneAnsible.
  ///
  /// In en, this message translates to:
  /// **'Ansible'**
  String get gameSceneAnsible;

  /// No description provided for @gameSceneAws.
  ///
  /// In en, this message translates to:
  /// **'AWS'**
  String get gameSceneAws;

  /// No description provided for @gameSceneAzure.
  ///
  /// In en, this message translates to:
  /// **'Azure'**
  String get gameSceneAzure;

  /// No description provided for @gameSceneBashScripting.
  ///
  /// In en, this message translates to:
  /// **'Bash Scripting'**
  String get gameSceneBashScripting;

  /// No description provided for @gameSceneDocker.
  ///
  /// In en, this message translates to:
  /// **'Docker'**
  String get gameSceneDocker;

  /// No description provided for @gameSceneGcp.
  ///
  /// In en, this message translates to:
  /// **'GCP'**
  String get gameSceneGcp;

  /// No description provided for @gameSceneGit.
  ///
  /// In en, this message translates to:
  /// **'Git'**
  String get gameSceneGit;

  /// No description provided for @gameSceneHybridCloud.
  ///
  /// In en, this message translates to:
  /// **'Hybrid Cloud'**
  String get gameSceneHybridCloud;

  /// No description provided for @gameSceneIbmCloud.
  ///
  /// In en, this message translates to:
  /// **'IBM Cloud'**
  String get gameSceneIbmCloud;

  /// No description provided for @gameSceneJavascript.
  ///
  /// In en, this message translates to:
  /// **'JavaScript'**
  String get gameSceneJavascript;

  /// No description provided for @gameSceneJenkins.
  ///
  /// In en, this message translates to:
  /// **'Jenkins'**
  String get gameSceneJenkins;

  /// No description provided for @gameSceneKubernetes.
  ///
  /// In en, this message translates to:
  /// **'Kubernetes'**
  String get gameSceneKubernetes;

  /// No description provided for @gameSceneLinux.
  ///
  /// In en, this message translates to:
  /// **'Linux'**
  String get gameSceneLinux;

  /// No description provided for @gameSceneMultiCloud.
  ///
  /// In en, this message translates to:
  /// **'Multi Cloud'**
  String get gameSceneMultiCloud;

  /// No description provided for @gameSceneNetworking.
  ///
  /// In en, this message translates to:
  /// **'Networking'**
  String get gameSceneNetworking;

  /// No description provided for @gameSceneOracleCloud.
  ///
  /// In en, this message translates to:
  /// **'Oracle Cloud'**
  String get gameSceneOracleCloud;

  /// No description provided for @gameScenePerl.
  ///
  /// In en, this message translates to:
  /// **'Perl'**
  String get gameScenePerl;

  /// No description provided for @gameScenePowershell.
  ///
  /// In en, this message translates to:
  /// **'PowerShell'**
  String get gameScenePowershell;

  /// No description provided for @gameScenePython.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get gameScenePython;

  /// No description provided for @gameSceneRuby.
  ///
  /// In en, this message translates to:
  /// **'Ruby'**
  String get gameSceneRuby;

  /// No description provided for @gameSceneTerraform.
  ///
  /// In en, this message translates to:
  /// **'Terraform'**
  String get gameSceneTerraform;

  /// No description provided for @gameSceneWinterFestivalFair.
  ///
  /// In en, this message translates to:
  /// **'Winter festival fair'**
  String get gameSceneWinterFestivalFair;

  /// No description provided for @gameSceneArmoredHeroCloseUp.
  ///
  /// In en, this message translates to:
  /// **'Armored hero close-up'**
  String get gameSceneArmoredHeroCloseUp;

  /// No description provided for @gameSceneArmoredHeroInCrimson.
  ///
  /// In en, this message translates to:
  /// **'Armored hero in crimson'**
  String get gameSceneArmoredHeroInCrimson;

  /// No description provided for @gameSceneDarkPlumeriaBlossoms.
  ///
  /// In en, this message translates to:
  /// **'Dark plumeria blossoms'**
  String get gameSceneDarkPlumeriaBlossoms;

  /// No description provided for @gameSceneMangroveBoardwalk.
  ///
  /// In en, this message translates to:
  /// **'Mangrove boardwalk'**
  String get gameSceneMangroveBoardwalk;

  /// No description provided for @gameSceneTropicalPalmReflections.
  ///
  /// In en, this message translates to:
  /// **'Tropical palm reflections'**
  String get gameSceneTropicalPalmReflections;

  /// No description provided for @gameSceneMaskedFigureInShadow.
  ///
  /// In en, this message translates to:
  /// **'Masked figure in shadow'**
  String get gameSceneMaskedFigureInShadow;

  /// No description provided for @gameSceneElectricCompanionAtSunset.
  ///
  /// In en, this message translates to:
  /// **'Electric companion at sunset'**
  String get gameSceneElectricCompanionAtSunset;

  /// No description provided for @gameSceneTrainerAndFireDragon.
  ///
  /// In en, this message translates to:
  /// **'Trainer and fire dragon'**
  String get gameSceneTrainerAndFireDragon;

  /// No description provided for @gameSceneJewelStuddedWrestlingMask.
  ///
  /// In en, this message translates to:
  /// **'Jewel-studded wrestling mask'**
  String get gameSceneJewelStuddedWrestlingMask;

  /// No description provided for @gameSceneWrestlerInRedBrushstrokes.
  ///
  /// In en, this message translates to:
  /// **'Wrestler in red brushstrokes'**
  String get gameSceneWrestlerInRedBrushstrokes;

  /// No description provided for @gameSceneWrestlingChampionSalute.
  ///
  /// In en, this message translates to:
  /// **'Wrestling champion salute'**
  String get gameSceneWrestlingChampionSalute;

  /// No description provided for @gameSceneMorningAtTheBakery.
  ///
  /// In en, this message translates to:
  /// **'Morning at the bakery'**
  String get gameSceneMorningAtTheBakery;

  /// No description provided for @gameSceneGreenhousePottingBench.
  ///
  /// In en, this message translates to:
  /// **'Greenhouse potting bench'**
  String get gameSceneGreenhousePottingBench;

  /// No description provided for @gameSceneHarborFishingBoat.
  ///
  /// In en, this message translates to:
  /// **'Harbor fishing boat'**
  String get gameSceneHarborFishingBoat;

  /// No description provided for @gameSceneAtticObservatory.
  ///
  /// In en, this message translates to:
  /// **'Attic observatory'**
  String get gameSceneAtticObservatory;

  /// No description provided for @gameSceneToyMakerSWorkshop.
  ///
  /// In en, this message translates to:
  /// **'Toy maker\'s workshop'**
  String get gameSceneToyMakerSWorkshop;

  /// No description provided for @gameSceneWoodlandCampsite.
  ///
  /// In en, this message translates to:
  /// **'Woodland campsite'**
  String get gameSceneWoodlandCampsite;

  /// No description provided for @gameSceneAfternoonMusicRoom.
  ///
  /// In en, this message translates to:
  /// **'Afternoon music room'**
  String get gameSceneAfternoonMusicRoom;

  /// No description provided for @gameSceneSeasideIceCreamStand.
  ///
  /// In en, this message translates to:
  /// **'Seaside ice cream stand'**
  String get gameSceneSeasideIceCreamStand;

  /// No description provided for @gameSceneLibraryReadingNook.
  ///
  /// In en, this message translates to:
  /// **'Library reading nook'**
  String get gameSceneLibraryReadingNook;

  /// No description provided for @gameSceneSewingStudio.
  ///
  /// In en, this message translates to:
  /// **'Sewing studio'**
  String get gameSceneSewingStudio;

  /// No description provided for @gameSceneFruitMarket.
  ///
  /// In en, this message translates to:
  /// **'Fruit market'**
  String get gameSceneFruitMarket;

  /// No description provided for @gameSceneKoiCourtyard.
  ///
  /// In en, this message translates to:
  /// **'Koi courtyard'**
  String get gameSceneKoiCourtyard;

  /// No description provided for @gameSceneArtistSAtelier.
  ///
  /// In en, this message translates to:
  /// **'Artist\'s atelier'**
  String get gameSceneArtistSAtelier;

  /// No description provided for @gameSceneMountainRailway.
  ///
  /// In en, this message translates to:
  /// **'Mountain railway'**
  String get gameSceneMountainRailway;

  /// No description provided for @gameSceneCountryKitchen.
  ///
  /// In en, this message translates to:
  /// **'Country kitchen'**
  String get gameSceneCountryKitchen;

  /// No description provided for @gameScenePotteryWorkshop.
  ///
  /// In en, this message translates to:
  /// **'Pottery workshop'**
  String get gameScenePotteryWorkshop;

  /// No description provided for @gameSceneBeachPicnic.
  ///
  /// In en, this message translates to:
  /// **'Beach picnic'**
  String get gameSceneBeachPicnic;

  /// No description provided for @gameSceneFlowerShop.
  ///
  /// In en, this message translates to:
  /// **'Flower shop'**
  String get gameSceneFlowerShop;

  /// No description provided for @gameSceneClockmakerSWorkshop.
  ///
  /// In en, this message translates to:
  /// **'Clockmaker\'s workshop'**
  String get gameSceneClockmakerSWorkshop;

  /// No description provided for @gameSceneRainyCafeTerrace.
  ///
  /// In en, this message translates to:
  /// **'Rainy cafe terrace'**
  String get gameSceneRainyCafeTerrace;

  /// No description provided for @gameSceneCastleHerbGarden.
  ///
  /// In en, this message translates to:
  /// **'Castle herb garden'**
  String get gameSceneCastleHerbGarden;

  /// No description provided for @gameSceneClassroomArtCorner.
  ///
  /// In en, this message translates to:
  /// **'Classroom art corner'**
  String get gameSceneClassroomArtCorner;

  /// No description provided for @gameSceneAquariumShop.
  ///
  /// In en, this message translates to:
  /// **'Aquarium shop'**
  String get gameSceneAquariumShop;

  /// No description provided for @gameSceneAutumnLeafCollection.
  ///
  /// In en, this message translates to:
  /// **'Autumn leaf collection'**
  String get gameSceneAutumnLeafCollection;

  /// No description provided for @gameSceneLoneTreeBeneathTheMoon.
  ///
  /// In en, this message translates to:
  /// **'Lone tree beneath the moon'**
  String get gameSceneLoneTreeBeneathTheMoon;

  /// No description provided for @gameSceneAutumnBlossomOnABranch.
  ///
  /// In en, this message translates to:
  /// **'Autumn blossom on a branch'**
  String get gameSceneAutumnBlossomOnABranch;

  /// No description provided for @gameSceneFoxAmongGreenLeaves.
  ///
  /// In en, this message translates to:
  /// **'Fox among green leaves'**
  String get gameSceneFoxAmongGreenLeaves;

  /// No description provided for @gameSceneCanoeOnALilyCoveredLake.
  ///
  /// In en, this message translates to:
  /// **'Canoe on a lily-covered lake'**
  String get gameSceneCanoeOnALilyCoveredLake;

  /// No description provided for @gameSceneDewDropsOnALeaf.
  ///
  /// In en, this message translates to:
  /// **'Dew drops on a leaf'**
  String get gameSceneDewDropsOnALeaf;

  /// No description provided for @gameSceneStagInATurquoiseLake.
  ///
  /// In en, this message translates to:
  /// **'Stag in a turquoise lake'**
  String get gameSceneStagInATurquoiseLake;

  /// No description provided for @gameSceneBicycleBeneathAnOrangeMoon.
  ///
  /// In en, this message translates to:
  /// **'Bicycle beneath an orange moon'**
  String get gameSceneBicycleBeneathAnOrangeMoon;

  /// No description provided for @gameSceneWhiteTigerAboveTheValley.
  ///
  /// In en, this message translates to:
  /// **'White tiger above the valley'**
  String get gameSceneWhiteTigerAboveTheValley;

  /// No description provided for @gameSceneTwoTreesInBlueWater.
  ///
  /// In en, this message translates to:
  /// **'Two trees in blue water'**
  String get gameSceneTwoTreesInBlueWater;

  /// No description provided for @gameSceneFishingBesideAFaithfulDog.
  ///
  /// In en, this message translates to:
  /// **'Fishing beside a faithful dog'**
  String get gameSceneFishingBesideAFaithfulDog;

  /// No description provided for @gameSceneLiliesBesideAMountainLake.
  ///
  /// In en, this message translates to:
  /// **'Lilies beside a mountain lake'**
  String get gameSceneLiliesBesideAMountainLake;

  /// No description provided for @gameSceneDeerAtThePinkRiverside.
  ///
  /// In en, this message translates to:
  /// **'Deer at the pink riverside'**
  String get gameSceneDeerAtThePinkRiverside;

  /// No description provided for @gameSceneTropicalHutAtSunset.
  ///
  /// In en, this message translates to:
  /// **'Tropical hut at sunset'**
  String get gameSceneTropicalHutAtSunset;

  /// No description provided for @gameSceneFoxOverlookingAnAlpineValley.
  ///
  /// In en, this message translates to:
  /// **'Fox overlooking an alpine valley'**
  String get gameSceneFoxOverlookingAnAlpineValley;

  /// No description provided for @gameSceneSunsetThroughAnEnchantedGrove.
  ///
  /// In en, this message translates to:
  /// **'Sunset through an enchanted grove'**
  String get gameSceneSunsetThroughAnEnchantedGrove;

  /// No description provided for @learningControlTitle.
  ///
  /// In en, this message translates to:
  /// **'DevOps Learning'**
  String get learningControlTitle;

  /// No description provided for @learningControlAllCategories.
  ///
  /// In en, this message translates to:
  /// **'All categories'**
  String get learningControlAllCategories;

  /// No description provided for @learningControlSearchCards.
  ///
  /// In en, this message translates to:
  /// **'Search cards'**
  String get learningControlSearchCards;

  /// No description provided for @learningControlClearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get learningControlClearSearch;

  /// No description provided for @learningControlCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get learningControlCategory;

  /// No description provided for @learningControlShowAll.
  ///
  /// In en, this message translates to:
  /// **'Show all cards'**
  String get learningControlShowAll;

  /// No description provided for @learningControlShowSaved.
  ///
  /// In en, this message translates to:
  /// **'Show saved cards ({count})'**
  String learningControlShowSaved(int count);

  /// No description provided for @learningControlShuffleOff.
  ///
  /// In en, this message translates to:
  /// **'Turn shuffle off'**
  String get learningControlShuffleOff;

  /// No description provided for @learningControlShuffleOn.
  ///
  /// In en, this message translates to:
  /// **'Shuffle cards'**
  String get learningControlShuffleOn;

  /// No description provided for @learningControlAutoOff.
  ///
  /// In en, this message translates to:
  /// **'Stop auto swap'**
  String get learningControlAutoOff;

  /// No description provided for @learningControlAutoOn.
  ///
  /// In en, this message translates to:
  /// **'Auto swap every 10 seconds'**
  String get learningControlAutoOn;

  /// No description provided for @learningControlNoSaved.
  ///
  /// In en, this message translates to:
  /// **'No saved cards yet'**
  String get learningControlNoSaved;

  /// No description provided for @learningControlNoMatches.
  ///
  /// In en, this message translates to:
  /// **'No matching cards'**
  String get learningControlNoMatches;

  /// No description provided for @learningControlResetFilters.
  ///
  /// In en, this message translates to:
  /// **'Reset filters'**
  String get learningControlResetFilters;

  /// No description provided for @learningControlPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get learningControlPrevious;

  /// No description provided for @learningControlNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get learningControlNext;

  /// No description provided for @learningControlProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get learningControlProgress;

  /// No description provided for @learningControlRemoveSaved.
  ///
  /// In en, this message translates to:
  /// **'Remove from saved'**
  String get learningControlRemoveSaved;

  /// No description provided for @learningControlSaveCard.
  ///
  /// In en, this message translates to:
  /// **'Save card'**
  String get learningControlSaveCard;

  /// No description provided for @learningControlExample.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get learningControlExample;

  /// No description provided for @learningControlCopyExample.
  ///
  /// In en, this message translates to:
  /// **'Copy example'**
  String get learningControlCopyExample;

  /// No description provided for @learningControlExampleCopied.
  ///
  /// In en, this message translates to:
  /// **'Example copied'**
  String get learningControlExampleCopied;

  /// No description provided for @sharedDialogLevelCompleted.
  ///
  /// In en, this message translates to:
  /// **'Level {value1} completed'**
  String sharedDialogLevelCompleted(String value1);

  /// No description provided for @sharedDialogPlayLevel.
  ///
  /// In en, this message translates to:
  /// **'Play level {value1}'**
  String sharedDialogPlayLevel(String value1);

  /// No description provided for @sharedDialogCompleteLevelToUnlock.
  ///
  /// In en, this message translates to:
  /// **'Complete level {value1} to unlock'**
  String sharedDialogCompleteLevelToUnlock(String value1);

  /// No description provided for @sharedDialogDailyLoginBonus.
  ///
  /// In en, this message translates to:
  /// **'Daily Login Bonus'**
  String get sharedDialogDailyLoginBonus;

  /// No description provided for @sharedDialogThanksForComingBack.
  ///
  /// In en, this message translates to:
  /// **'Thanks for coming back!'**
  String get sharedDialogThanksForComingBack;

  /// No description provided for @sharedDialogDailyRewardAdded.
  ///
  /// In en, this message translates to:
  /// **'Your daily reward has been added to your total points.'**
  String get sharedDialogDailyRewardAdded;

  /// No description provided for @sharedDialogAwesome.
  ///
  /// In en, this message translates to:
  /// **'Awesome!'**
  String get sharedDialogAwesome;

  /// No description provided for @accountWelcomeGuest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get accountWelcomeGuest;

  /// No description provided for @accountWelcomeGuestUser.
  ///
  /// In en, this message translates to:
  /// **'Guest User'**
  String get accountWelcomeGuestUser;

  /// No description provided for @accountWelcomeUser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get accountWelcomeUser;

  /// No description provided for @accountWelcomePlayingAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Playing as Guest'**
  String get accountWelcomePlayingAsGuest;

  /// No description provided for @accountWelcomeConnectGoogleAccount.
  ///
  /// In en, this message translates to:
  /// **'Connect Google Account'**
  String get accountWelcomeConnectGoogleAccount;

  /// No description provided for @accountWelcomeGoogleConnected.
  ///
  /// In en, this message translates to:
  /// **'Google account connected successfully! 🎉'**
  String get accountWelcomeGoogleConnected;

  /// No description provided for @accountWelcomeSignInCancelled.
  ///
  /// In en, this message translates to:
  /// **'Sign-in was cancelled.'**
  String get accountWelcomeSignInCancelled;

  /// No description provided for @accountWelcomeConnectFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect: {value1}'**
  String accountWelcomeConnectFailed(String value1);

  /// No description provided for @accountWelcomeSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get accountWelcomeSignOut;

  /// No description provided for @accountWelcomeSignOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Out?'**
  String get accountWelcomeSignOutTitle;

  /// No description provided for @accountWelcomeSignOutMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out? You will need to sign in again to access your saved progress.'**
  String get accountWelcomeSignOutMessage;

  /// No description provided for @accountWelcomeSignOutFailed.
  ///
  /// In en, this message translates to:
  /// **'Sign out failed: {value1}'**
  String accountWelcomeSignOutFailed(String value1);

  /// No description provided for @accountWelcomeResetAppTitle.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Reset App Data?'**
  String get accountWelcomeResetAppTitle;

  /// No description provided for @accountWelcomeResetAppMessage.
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete ALL your points, streaks, game history, and settings. You will be signed out and returned to the start screen. This cannot be undone.'**
  String get accountWelcomeResetAppMessage;

  /// No description provided for @accountWelcomeResetEverything.
  ///
  /// In en, this message translates to:
  /// **'Reset Everything'**
  String get accountWelcomeResetEverything;

  /// No description provided for @accountWelcomeResetFailed.
  ///
  /// In en, this message translates to:
  /// **'Reset failed: {value1}'**
  String accountWelcomeResetFailed(String value1);

  /// No description provided for @accountWelcomeCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get accountWelcomeCancel;

  /// No description provided for @accountWelcomeResetAppData.
  ///
  /// In en, this message translates to:
  /// **'Reset App Data'**
  String get accountWelcomeResetAppData;

  /// No description provided for @accountWelcomeResetAppDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Clear all points, streaks, and settings'**
  String get accountWelcomeResetAppDataSubtitle;

  /// No description provided for @accountWelcomeFooter.
  ///
  /// In en, this message translates to:
  /// **'DevOps Quiz App'**
  String get accountWelcomeFooter;

  /// No description provided for @accountWelcomeTranslationNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Translation not available yet'**
  String get accountWelcomeTranslationNotAvailable;

  /// No description provided for @accountWelcomeContinueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get accountWelcomeContinueWithGoogle;

  /// No description provided for @accountWelcomeSigningIn.
  ///
  /// In en, this message translates to:
  /// **'Signing in...'**
  String get accountWelcomeSigningIn;

  /// No description provided for @accountWelcomeOr.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get accountWelcomeOr;

  /// No description provided for @accountWelcomeContinueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get accountWelcomeContinueAsGuest;

  /// No description provided for @accountWelcomeSignInLaterFromProfile.
  ///
  /// In en, this message translates to:
  /// **'You can sign in later from your profile.'**
  String get accountWelcomeSignInLaterFromProfile;

  /// No description provided for @accountWelcomeStartAsGuestAndSignInLater.
  ///
  /// In en, this message translates to:
  /// **'You can start as a guest and sign in later.'**
  String get accountWelcomeStartAsGuestAndSignInLater;

  /// No description provided for @accountWelcomeGreetingGuest.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get accountWelcomeGreetingGuest;

  /// No description provided for @accountWelcomeUserToast.
  ///
  /// In en, this message translates to:
  /// **'Welcome, {value1}!'**
  String accountWelcomeUserToast(String value1);

  /// No description provided for @accountWelcomeGoogleNoUserReturned.
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In completed, but no user account was returned.'**
  String get accountWelcomeGoogleNoUserReturned;

  /// No description provided for @accountWelcomeErrorEmailExists.
  ///
  /// In en, this message translates to:
  /// **'This email already has an account using another sign-in method.'**
  String get accountWelcomeErrorEmailExists;

  /// No description provided for @accountWelcomeErrorCredentialInUse.
  ///
  /// In en, this message translates to:
  /// **'This Google account is already linked to another account.'**
  String get accountWelcomeErrorCredentialInUse;

  /// No description provided for @accountWelcomeErrorInvalidCredential.
  ///
  /// In en, this message translates to:
  /// **'The Google authentication credential is invalid or expired.'**
  String get accountWelcomeErrorInvalidCredential;

  /// No description provided for @accountWelcomeErrorUserDisabled.
  ///
  /// In en, this message translates to:
  /// **'This account has been disabled.'**
  String get accountWelcomeErrorUserDisabled;

  /// No description provided for @accountWelcomeErrorOperationNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In is currently not enabled.'**
  String get accountWelcomeErrorOperationNotAllowed;

  /// No description provided for @accountWelcomeErrorNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your internet connection and try again.'**
  String get accountWelcomeErrorNetwork;

  /// No description provided for @accountWelcomeErrorTooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many sign-in attempts. Please wait and try again.'**
  String get accountWelcomeErrorTooManyRequests;

  /// No description provided for @accountWelcomeErrorNoAdditionalInfo.
  ///
  /// In en, this message translates to:
  /// **'No additional error information.'**
  String get accountWelcomeErrorNoAdditionalInfo;

  /// No description provided for @accountWelcomeErrorGoogleSignInFailed.
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In failed.\n\nCode: {value1}\n{value2}'**
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2);

  /// No description provided for @accountWelcomeErrorGoogleSignInGeneric.
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In error:\n{value1}'**
  String accountWelcomeErrorGoogleSignInGeneric(String value1);

  /// No description provided for @accountWelcomeErrorContinueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Unable to continue as guest. Please try again.'**
  String get accountWelcomeErrorContinueAsGuest;

  /// No description provided for @accountWelcomeGoogleSignInSoon.
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In will be available soon.'**
  String get accountWelcomeGoogleSignInSoon;

  /// No description provided for @accountWelcomeLoginTagline.
  ///
  /// In en, this message translates to:
  /// **'Learn • Practice • Compete • Earn'**
  String get accountWelcomeLoginTagline;

  /// No description provided for @accountWelcomeCountryRegion.
  ///
  /// In en, this message translates to:
  /// **'Country / region'**
  String get accountWelcomeCountryRegion;

  /// No description provided for @accountWelcomeCountryRegionSelected.
  ///
  /// In en, this message translates to:
  /// **'Country / region: {value1}'**
  String accountWelcomeCountryRegionSelected(String value1);

  /// No description provided for @accountWelcomeSearchCountry.
  ///
  /// In en, this message translates to:
  /// **'Search country'**
  String get accountWelcomeSearchCountry;

  /// No description provided for @accountWelcomeCountryNotSelected.
  ///
  /// In en, this message translates to:
  /// **'Not selected'**
  String get accountWelcomeCountryNotSelected;

  /// No description provided for @accountWelcomeWhyDevOpsQuiz.
  ///
  /// In en, this message translates to:
  /// **'Why DevOps Quiz?'**
  String get accountWelcomeWhyDevOpsQuiz;

  /// No description provided for @accountWelcomeFeatureQuestions.
  ///
  /// In en, this message translates to:
  /// **'3000+ practice questions'**
  String get accountWelcomeFeatureQuestions;

  /// No description provided for @accountWelcomeFeatureLanguages.
  ///
  /// In en, this message translates to:
  /// **'Multi-language support'**
  String get accountWelcomeFeatureLanguages;

  /// No description provided for @accountWelcomeFeatureStreaks.
  ///
  /// In en, this message translates to:
  /// **'Streaks & Leaderboards'**
  String get accountWelcomeFeatureStreaks;

  /// No description provided for @accountWelcomeFeatureGames.
  ///
  /// In en, this message translates to:
  /// **'Games & Challenges'**
  String get accountWelcomeFeatureGames;

  /// No description provided for @accountWelcomeFeatureCloud.
  ///
  /// In en, this message translates to:
  /// **'Cloud & DevOps'**
  String get accountWelcomeFeatureCloud;

  /// No description provided for @accountWelcomeFeatureRewards.
  ///
  /// In en, this message translates to:
  /// **'Bonus & Rewards'**
  String get accountWelcomeFeatureRewards;

  /// No description provided for @accountWelcomePracticeOnTheGo.
  ///
  /// In en, this message translates to:
  /// **'Practice on the go'**
  String get accountWelcomePracticeOnTheGo;

  /// No description provided for @accountWelcomeInstallAndroidPromo.
  ///
  /// In en, this message translates to:
  /// **'Install the Android app and learn offline, anywhere.'**
  String get accountWelcomeInstallAndroidPromo;

  /// No description provided for @accountWelcomeGetItOnGooglePlay.
  ///
  /// In en, this message translates to:
  /// **'Get it on Google Play'**
  String get accountWelcomeGetItOnGooglePlay;

  /// No description provided for @achLocStreakTitle.
  ///
  /// In en, this message translates to:
  /// **'{days} Day Streak'**
  String achLocStreakTitle(String days);

  /// No description provided for @achLocStreakDescription.
  ///
  /// In en, this message translates to:
  /// **'Maintain a {days}-day streak.'**
  String achLocStreakDescription(String days);

  /// No description provided for @achLocYearStreakTitle.
  ///
  /// In en, this message translates to:
  /// **'1 Year Streak'**
  String get achLocYearStreakTitle;

  /// No description provided for @achLocFirstQuizTitle.
  ///
  /// In en, this message translates to:
  /// **'First Quiz'**
  String get achLocFirstQuizTitle;

  /// No description provided for @achLocFirstQuizDescription.
  ///
  /// In en, this message translates to:
  /// **'Complete your first quiz.'**
  String get achLocFirstQuizDescription;

  /// No description provided for @achLocQuiz10Title.
  ///
  /// In en, this message translates to:
  /// **'Quiz Explorer'**
  String get achLocQuiz10Title;

  /// No description provided for @achLocQuiz10Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 10 quizzes.'**
  String get achLocQuiz10Description;

  /// No description provided for @achLocPoints1000Title.
  ///
  /// In en, this message translates to:
  /// **'1000 Points'**
  String get achLocPoints1000Title;

  /// No description provided for @achLocPoints1000Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 1000 total points in Quiz.'**
  String get achLocPoints1000Description;

  /// No description provided for @achLocPerfectScoreTitle.
  ///
  /// In en, this message translates to:
  /// **'Perfect Score'**
  String get achLocPerfectScoreTitle;

  /// No description provided for @achLocPerfectScoreDescription.
  ///
  /// In en, this message translates to:
  /// **'Score 100% in any quiz.'**
  String get achLocPerfectScoreDescription;

  /// No description provided for @achLocQuiz25Title.
  ///
  /// In en, this message translates to:
  /// **'Quiz Enthusiast'**
  String get achLocQuiz25Title;

  /// No description provided for @achLocQuiz25Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 25 quizzes.'**
  String get achLocQuiz25Description;

  /// No description provided for @achLocQuiz50Title.
  ///
  /// In en, this message translates to:
  /// **'Quiz Master'**
  String get achLocQuiz50Title;

  /// No description provided for @achLocQuiz50Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 50 quizzes.'**
  String get achLocQuiz50Description;

  /// No description provided for @achLocQuiz100Title.
  ///
  /// In en, this message translates to:
  /// **'Century Club'**
  String get achLocQuiz100Title;

  /// No description provided for @achLocQuiz100Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 100 quizzes.'**
  String get achLocQuiz100Description;

  /// No description provided for @achLocQuiz250Title.
  ///
  /// In en, this message translates to:
  /// **'Quiz Legend'**
  String get achLocQuiz250Title;

  /// No description provided for @achLocQuiz250Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 250 quizzes.'**
  String get achLocQuiz250Description;

  /// No description provided for @achLocPoints5000Title.
  ///
  /// In en, this message translates to:
  /// **'5,000 Points'**
  String get achLocPoints5000Title;

  /// No description provided for @achLocPoints5000Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 5,000 total points.'**
  String get achLocPoints5000Description;

  /// No description provided for @achLocPoints10000Title.
  ///
  /// In en, this message translates to:
  /// **'10,000 Points'**
  String get achLocPoints10000Title;

  /// No description provided for @achLocPoints10000Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 10,000 total points.'**
  String get achLocPoints10000Description;

  /// No description provided for @achLocPoints50000Title.
  ///
  /// In en, this message translates to:
  /// **'50,000 Points'**
  String get achLocPoints50000Title;

  /// No description provided for @achLocPoints50000Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 50,000 total points.'**
  String get achLocPoints50000Description;

  /// No description provided for @achLocPoints100000Title.
  ///
  /// In en, this message translates to:
  /// **'100,000 Points'**
  String get achLocPoints100000Title;

  /// No description provided for @achLocPoints100000Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 100,000 total points.'**
  String get achLocPoints100000Description;

  /// No description provided for @achLocDaily1Title.
  ///
  /// In en, this message translates to:
  /// **'Daily Starter'**
  String get achLocDaily1Title;

  /// No description provided for @achLocDaily1Description.
  ///
  /// In en, this message translates to:
  /// **'Complete your first Daily Quiz.'**
  String get achLocDaily1Description;

  /// No description provided for @achLocDaily7Title.
  ///
  /// In en, this message translates to:
  /// **'Daily Habit'**
  String get achLocDaily7Title;

  /// No description provided for @achLocDaily7Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 7 Daily Quizzes.'**
  String get achLocDaily7Description;

  /// No description provided for @achLocDaily30Title.
  ///
  /// In en, this message translates to:
  /// **'Daily Champion'**
  String get achLocDaily30Title;

  /// No description provided for @achLocDaily30Description.
  ///
  /// In en, this message translates to:
  /// **'Complete 30 Daily Quizzes.'**
  String get achLocDaily30Description;

  /// No description provided for @achLocSets5Title.
  ///
  /// In en, this message translates to:
  /// **'Set Starter'**
  String get achLocSets5Title;

  /// No description provided for @achLocSets5Description.
  ///
  /// In en, this message translates to:
  /// **'Finish 5 quiz sets.'**
  String get achLocSets5Description;

  /// No description provided for @achLocSets25Title.
  ///
  /// In en, this message translates to:
  /// **'Set Collector'**
  String get achLocSets25Title;

  /// No description provided for @achLocSets25Description.
  ///
  /// In en, this message translates to:
  /// **'Finish 25 quiz sets.'**
  String get achLocSets25Description;

  /// No description provided for @achLocSets50Title.
  ///
  /// In en, this message translates to:
  /// **'Set Master'**
  String get achLocSets50Title;

  /// No description provided for @achLocSets50Description.
  ///
  /// In en, this message translates to:
  /// **'Finish 50 quiz sets.'**
  String get achLocSets50Description;

  /// No description provided for @achLocSets100Title.
  ///
  /// In en, this message translates to:
  /// **'Set Legend'**
  String get achLocSets100Title;

  /// No description provided for @achLocSets100Description.
  ///
  /// In en, this message translates to:
  /// **'Finish 100 quiz sets.'**
  String get achLocSets100Description;

  /// No description provided for @achLocCert1Title.
  ///
  /// In en, this message translates to:
  /// **'First Certificate'**
  String get achLocCert1Title;

  /// No description provided for @achLocCert1Description.
  ///
  /// In en, this message translates to:
  /// **'Earn your first category certificate.'**
  String get achLocCert1Description;

  /// No description provided for @achLocCert5Title.
  ///
  /// In en, this message translates to:
  /// **'Certified Pro'**
  String get achLocCert5Title;

  /// No description provided for @achLocCert5Description.
  ///
  /// In en, this message translates to:
  /// **'Earn 5 category certificates.'**
  String get achLocCert5Description;

  /// No description provided for @achLocCert21Title.
  ///
  /// In en, this message translates to:
  /// **'Fully Certified'**
  String get achLocCert21Title;

  /// No description provided for @achLocCert21Description.
  ///
  /// In en, this message translates to:
  /// **'Earn a certificate in all 21 categories.'**
  String get achLocCert21Description;

  /// No description provided for @achLocThemeFreeValentinesWeek.
  ///
  /// In en, this message translates to:
  /// **'Free Feb 7-14 each year'**
  String get achLocThemeFreeValentinesWeek;

  /// No description provided for @achLocThemeFreeDqSpecialWeek.
  ///
  /// In en, this message translates to:
  /// **'Free Mar 8-15 each year'**
  String get achLocThemeFreeDqSpecialWeek;

  /// No description provided for @achLocThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get achLocThemeLight;

  /// No description provided for @achLocThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get achLocThemeDark;

  /// No description provided for @achLocThemeSakura.
  ///
  /// In en, this message translates to:
  /// **'Sakura'**
  String get achLocThemeSakura;

  /// No description provided for @achLocThemeSunset.
  ///
  /// In en, this message translates to:
  /// **'Sunset'**
  String get achLocThemeSunset;

  /// No description provided for @achLocThemeCoffee.
  ///
  /// In en, this message translates to:
  /// **'Coffee'**
  String get achLocThemeCoffee;

  /// No description provided for @achLocThemeTea.
  ///
  /// In en, this message translates to:
  /// **'Tea'**
  String get achLocThemeTea;

  /// No description provided for @achLocThemeOcean.
  ///
  /// In en, this message translates to:
  /// **'Ocean'**
  String get achLocThemeOcean;

  /// No description provided for @achLocThemeSolarFlare.
  ///
  /// In en, this message translates to:
  /// **'Solar Flare'**
  String get achLocThemeSolarFlare;

  /// No description provided for @achLocThemeForest.
  ///
  /// In en, this message translates to:
  /// **'Forest'**
  String get achLocThemeForest;

  /// No description provided for @achLocThemeAurora.
  ///
  /// In en, this message translates to:
  /// **'Aurora'**
  String get achLocThemeAurora;

  /// No description provided for @achLocThemeMatrix.
  ///
  /// In en, this message translates to:
  /// **'Matrix'**
  String get achLocThemeMatrix;

  /// No description provided for @achLocThemeCyberPurple.
  ///
  /// In en, this message translates to:
  /// **'Cyber Purple'**
  String get achLocThemeCyberPurple;

  /// No description provided for @achLocThemeInferno.
  ///
  /// In en, this message translates to:
  /// **'Inferno'**
  String get achLocThemeInferno;

  /// No description provided for @achLocThemeMidnight.
  ///
  /// In en, this message translates to:
  /// **'Midnight'**
  String get achLocThemeMidnight;

  /// No description provided for @achLocThemeDarkGrey.
  ///
  /// In en, this message translates to:
  /// **'Dark Grey'**
  String get achLocThemeDarkGrey;

  /// No description provided for @achLocThemeBarbee.
  ///
  /// In en, this message translates to:
  /// **'Barbee'**
  String get achLocThemeBarbee;

  /// No description provided for @achLocThemeValentineDay.
  ///
  /// In en, this message translates to:
  /// **'Valentine Day'**
  String get achLocThemeValentineDay;

  /// No description provided for @achLocThemeDqSpecial.
  ///
  /// In en, this message translates to:
  /// **'DQ Special'**
  String get achLocThemeDqSpecial;

  /// No description provided for @achLocThemeArmy.
  ///
  /// In en, this message translates to:
  /// **'Army'**
  String get achLocThemeArmy;

  /// No description provided for @achLocThemeSpiderMan.
  ///
  /// In en, this message translates to:
  /// **'Spider-Man'**
  String get achLocThemeSpiderMan;

  /// No description provided for @achLocThemeKrrish.
  ///
  /// In en, this message translates to:
  /// **'Krrish'**
  String get achLocThemeKrrish;

  /// No description provided for @achLocThemeIronMan.
  ///
  /// In en, this message translates to:
  /// **'Iron Man'**
  String get achLocThemeIronMan;

  /// No description provided for @achLocThemeCaptainAmerica.
  ///
  /// In en, this message translates to:
  /// **'Captain America'**
  String get achLocThemeCaptainAmerica;

  /// No description provided for @achLocThemeThor.
  ///
  /// In en, this message translates to:
  /// **'Thor'**
  String get achLocThemeThor;

  /// No description provided for @achLocThemeHulk.
  ///
  /// In en, this message translates to:
  /// **'Hulk'**
  String get achLocThemeHulk;

  /// No description provided for @achLocThemeBlackWidow.
  ///
  /// In en, this message translates to:
  /// **'Black Widow'**
  String get achLocThemeBlackWidow;

  /// No description provided for @achLocThemeHawkeye.
  ///
  /// In en, this message translates to:
  /// **'Hawkeye'**
  String get achLocThemeHawkeye;

  /// No description provided for @achLocThemeBlackPanther.
  ///
  /// In en, this message translates to:
  /// **'Black Panther'**
  String get achLocThemeBlackPanther;

  /// No description provided for @achLocThemeScarletWitch.
  ///
  /// In en, this message translates to:
  /// **'Scarlet Witch'**
  String get achLocThemeScarletWitch;

  /// No description provided for @achLocThemeVision.
  ///
  /// In en, this message translates to:
  /// **'Vision'**
  String get achLocThemeVision;

  /// No description provided for @achLocThemeAntMan.
  ///
  /// In en, this message translates to:
  /// **'Ant-Man'**
  String get achLocThemeAntMan;

  /// No description provided for @achLocThemeCaptainMarvel.
  ///
  /// In en, this message translates to:
  /// **'Captain Marvel'**
  String get achLocThemeCaptainMarvel;

  /// No description provided for @achLocThemeDoctorStrange.
  ///
  /// In en, this message translates to:
  /// **'Doctor Strange'**
  String get achLocThemeDoctorStrange;

  /// No description provided for @achLocThemeAvengers.
  ///
  /// In en, this message translates to:
  /// **'Avengers'**
  String get achLocThemeAvengers;

  /// No description provided for @achLocThemeBatman.
  ///
  /// In en, this message translates to:
  /// **'Batman'**
  String get achLocThemeBatman;

  /// No description provided for @achLocThemeSuperman.
  ///
  /// In en, this message translates to:
  /// **'Superman'**
  String get achLocThemeSuperman;

  /// No description provided for @achLocThemeWonderWoman.
  ///
  /// In en, this message translates to:
  /// **'Wonder Woman'**
  String get achLocThemeWonderWoman;

  /// No description provided for @achLocThemeFlash.
  ///
  /// In en, this message translates to:
  /// **'Flash'**
  String get achLocThemeFlash;

  /// No description provided for @achLocThemeAquaman.
  ///
  /// In en, this message translates to:
  /// **'Aquaman'**
  String get achLocThemeAquaman;

  /// No description provided for @achLocThemeGreenLantern.
  ///
  /// In en, this message translates to:
  /// **'Green Lantern'**
  String get achLocThemeGreenLantern;

  /// No description provided for @achLocThemeCyborg.
  ///
  /// In en, this message translates to:
  /// **'Cyborg'**
  String get achLocThemeCyborg;

  /// No description provided for @achLocThemeSupergirl.
  ///
  /// In en, this message translates to:
  /// **'Supergirl'**
  String get achLocThemeSupergirl;

  /// No description provided for @achLocThemeDc.
  ///
  /// In en, this message translates to:
  /// **'DC Heroes'**
  String get achLocThemeDc;

  /// No description provided for @achLocThemeRainbow.
  ///
  /// In en, this message translates to:
  /// **'Rainbow'**
  String get achLocThemeRainbow;

  /// No description provided for @achLocThemeDiamond.
  ///
  /// In en, this message translates to:
  /// **'Diamond'**
  String get achLocThemeDiamond;

  /// No description provided for @achLocThemeLegendary.
  ///
  /// In en, this message translates to:
  /// **'Legendary'**
  String get achLocThemeLegendary;

  /// Command Match description for ls -la
  ///
  /// In en, this message translates to:
  /// **'List all files with details'**
  String get gameHintCmd001LsLa;

  /// Command Match description for grep
  ///
  /// In en, this message translates to:
  /// **'Search text using a pattern'**
  String get gameHintCmd002Grep;

  /// Command Match description for chmod
  ///
  /// In en, this message translates to:
  /// **'Change file permissions'**
  String get gameHintCmd003Chmod;

  /// Command Match description for df -h
  ///
  /// In en, this message translates to:
  /// **'Show free disk space'**
  String get gameHintCmd004DfH;

  /// Command Match description for tail -f
  ///
  /// In en, this message translates to:
  /// **'Follow a growing log file'**
  String get gameHintCmd005TailF;

  /// Command Match description for ps aux
  ///
  /// In en, this message translates to:
  /// **'List running processes'**
  String get gameHintCmd006PsAux;

  /// Command Match description for git clone
  ///
  /// In en, this message translates to:
  /// **'Copy a remote repository'**
  String get gameHintCmd007GitClone;

  /// Command Match description for git stash
  ///
  /// In en, this message translates to:
  /// **'Shelve uncommitted changes'**
  String get gameHintCmd008GitStash;

  /// Command Match description for git rebase
  ///
  /// In en, this message translates to:
  /// **'Reapply commits on a new base'**
  String get gameHintCmd009GitRebase;

  /// Command Match description for git blame
  ///
  /// In en, this message translates to:
  /// **'Show who changed each line'**
  String get gameHintCmd010GitBlame;

  /// Command Match description for docker ps
  ///
  /// In en, this message translates to:
  /// **'List running containers'**
  String get gameHintCmd011DockerPs;

  /// Command Match description for docker build
  ///
  /// In en, this message translates to:
  /// **'Create an image from a Dockerfile'**
  String get gameHintCmd012DockerBuild;

  /// Command Match description for docker logs
  ///
  /// In en, this message translates to:
  /// **'Show container output'**
  String get gameHintCmd013DockerLogs;

  /// Command Match description for docker exec
  ///
  /// In en, this message translates to:
  /// **'Run a command inside a container'**
  String get gameHintCmd014DockerExec;

  /// Command Match description for kubectl get pods
  ///
  /// In en, this message translates to:
  /// **'List pods in a namespace'**
  String get gameHintCmd015KubectlGetPods;

  /// Command Match description for kubectl apply
  ///
  /// In en, this message translates to:
  /// **'Create resources from a file'**
  String get gameHintCmd016KubectlApply;

  /// Command Match description for kubectl describe
  ///
  /// In en, this message translates to:
  /// **'Show detailed resource info'**
  String get gameHintCmd017KubectlDescribe;

  /// Command Match description for kubectl scale
  ///
  /// In en, this message translates to:
  /// **'Change the number of replicas'**
  String get gameHintCmd018KubectlScale;

  /// Command Match description for terraform init
  ///
  /// In en, this message translates to:
  /// **'Download providers and set up'**
  String get gameHintCmd019TerraformInit;

  /// Command Match description for terraform plan
  ///
  /// In en, this message translates to:
  /// **'Preview infrastructure changes'**
  String get gameHintCmd020TerraformPlan;

  /// Command Match description for terraform apply
  ///
  /// In en, this message translates to:
  /// **'Create or update infrastructure'**
  String get gameHintCmd021TerraformApply;

  /// Command Match description for terraform destroy
  ///
  /// In en, this message translates to:
  /// **'Remove managed infrastructure'**
  String get gameHintCmd022TerraformDestroy;

  /// Command Match description for ansible-playbook
  ///
  /// In en, this message translates to:
  /// **'Run an automation playbook'**
  String get gameHintCmd023AnsiblePlaybook;

  /// Command Match description for ping
  ///
  /// In en, this message translates to:
  /// **'Test reachability with ICMP'**
  String get gameHintCmd024Ping;

  /// Command Match description for traceroute
  ///
  /// In en, this message translates to:
  /// **'Show the path to a host'**
  String get gameHintCmd025Traceroute;

  /// Command Match description for curl
  ///
  /// In en, this message translates to:
  /// **'Transfer data from a URL'**
  String get gameHintCmd026Curl;

  /// Command Match description for ssh
  ///
  /// In en, this message translates to:
  /// **'Log in to a remote machine securely'**
  String get gameHintCmd027Ssh;

  /// Command Match description for crontab -e
  ///
  /// In en, this message translates to:
  /// **'Edit scheduled jobs'**
  String get gameHintCmd028CrontabE;

  /// Command Match description for systemctl status
  ///
  /// In en, this message translates to:
  /// **'Check a service state'**
  String get gameHintCmd029SystemctlStatus;

  /// Command Match description for helm install
  ///
  /// In en, this message translates to:
  /// **'Deploy a chart to Kubernetes'**
  String get gameHintCmd030HelmInstall;

  /// Word Guess hint for GIT
  ///
  /// In en, this message translates to:
  /// **'Tracks changes in source code.'**
  String get gameHintWord001Git;

  /// Word Guess hint for AWS
  ///
  /// In en, this message translates to:
  /// **'Amazon\'s cloud platform.'**
  String get gameHintWord002Aws;

  /// Word Guess hint for API
  ///
  /// In en, this message translates to:
  /// **'A contract that lets software systems communicate.'**
  String get gameHintWord003Api;

  /// Word Guess hint for DNS
  ///
  /// In en, this message translates to:
  /// **'Translates domain names into IP addresses.'**
  String get gameHintWord004Dns;

  /// Word Guess hint for CLI
  ///
  /// In en, this message translates to:
  /// **'A text-based interface for running commands.'**
  String get gameHintWord005Cli;

  /// Word Guess hint for CPU
  ///
  /// In en, this message translates to:
  /// **'The processor that executes instructions.'**
  String get gameHintWord006Cpu;

  /// Word Guess hint for RAM
  ///
  /// In en, this message translates to:
  /// **'Temporary memory used by running programs.'**
  String get gameHintWord007Ram;

  /// Word Guess hint for SSH
  ///
  /// In en, this message translates to:
  /// **'Secure protocol for remote shell access.'**
  String get gameHintWord008Ssh;

  /// Word Guess hint for YAML
  ///
  /// In en, this message translates to:
  /// **'A human-readable data serialization format.'**
  String get gameHintWord009Yaml;

  /// Word Guess hint for LINUX
  ///
  /// In en, this message translates to:
  /// **'Open-source operating system kernel and family.'**
  String get gameHintWord010Linux;

  /// Word Guess hint for BASH
  ///
  /// In en, this message translates to:
  /// **'A popular Unix command shell.'**
  String get gameHintWord011Bash;

  /// Word Guess hint for CLOUD
  ///
  /// In en, this message translates to:
  /// **'On-demand computing delivered over a network.'**
  String get gameHintWord012Cloud;

  /// Word Guess hint for DOCKER
  ///
  /// In en, this message translates to:
  /// **'A platform for building and running containers.'**
  String get gameHintWord013Docker;

  /// Word Guess hint for AZURE
  ///
  /// In en, this message translates to:
  /// **'Microsoft\'s cloud platform.'**
  String get gameHintWord014Azure;

  /// Word Guess hint for PYTHON
  ///
  /// In en, this message translates to:
  /// **'A widely used scripting and programming language.'**
  String get gameHintWord015Python;

  /// Word Guess hint for GITHUB
  ///
  /// In en, this message translates to:
  /// **'A popular hosted Git collaboration service.'**
  String get gameHintWord016Github;

  /// Word Guess hint for BGP
  ///
  /// In en, this message translates to:
  /// **'Routing protocol that exchanges routes between autonomous systems.'**
  String get gameHintWord017Bgp;

  /// Word Guess hint for JENKINS
  ///
  /// In en, this message translates to:
  /// **'An automation server often used for CI.'**
  String get gameHintWord018Jenkins;

  /// Word Guess hint for PORT
  ///
  /// In en, this message translates to:
  /// **'A numbered endpoint used by network services.'**
  String get gameHintWord019Port;

  /// Word Guess hint for PROXY
  ///
  /// In en, this message translates to:
  /// **'A server that forwards requests for clients.'**
  String get gameHintWord020Proxy;

  /// Word Guess hint for CACHE
  ///
  /// In en, this message translates to:
  /// **'A fast store for frequently reused data.'**
  String get gameHintWord021Cache;

  /// Word Guess hint for CRON
  ///
  /// In en, this message translates to:
  /// **'Unix scheduler for recurring commands.'**
  String get gameHintWord022Cron;

  /// Word Guess hint for BICEP
  ///
  /// In en, this message translates to:
  /// **'Azure\'s declarative language for infrastructure as code.'**
  String get gameHintWord023Bicep;

  /// Word Guess hint for APIGEE
  ///
  /// In en, this message translates to:
  /// **'Google Cloud platform for centralized API management.'**
  String get gameHintWord024Apigee;

  /// Word Guess hint for ROOT
  ///
  /// In en, this message translates to:
  /// **'Privileged administrator account on Unix-like systems.'**
  String get gameHintWord025Root;

  /// Word Guess hint for NGINX
  ///
  /// In en, this message translates to:
  /// **'Web server and reverse proxy.'**
  String get gameHintWord026Nginx;

  /// Word Guess hint for REDIS
  ///
  /// In en, this message translates to:
  /// **'In-memory data store often used as a cache.'**
  String get gameHintWord027Redis;

  /// Word Guess hint for MYSQL
  ///
  /// In en, this message translates to:
  /// **'Popular relational database system.'**
  String get gameHintWord028Mysql;

  /// Word Guess hint for RUBY
  ///
  /// In en, this message translates to:
  /// **'Programming language used by tools such as Chef.'**
  String get gameHintWord029Ruby;

  /// Word Guess hint for HELM
  ///
  /// In en, this message translates to:
  /// **'Package manager commonly used with Kubernetes.'**
  String get gameHintWord030Helm;

  /// Word Guess hint for POD
  ///
  /// In en, this message translates to:
  /// **'Smallest deployable unit in Kubernetes.'**
  String get gameHintWord031Pod;

  /// Word Guess hint for IMAGE
  ///
  /// In en, this message translates to:
  /// **'Read-only template used to create a container.'**
  String get gameHintWord032Image;

  /// Word Guess hint for BUILD
  ///
  /// In en, this message translates to:
  /// **'Creates an artifact from source and dependencies.'**
  String get gameHintWord033Build;

  /// Word Guess hint for DEPLOY
  ///
  /// In en, this message translates to:
  /// **'Releases an application into an environment.'**
  String get gameHintWord034Deploy;

  /// Word Guess hint for TERRAFORM
  ///
  /// In en, this message translates to:
  /// **'HashiCorp tool for infrastructure as code.'**
  String get gameHintWord035Terraform;

  /// Word Guess hint for ANSIBLE
  ///
  /// In en, this message translates to:
  /// **'Agentless automation and configuration tool.'**
  String get gameHintWord036Ansible;

  /// Word Guess hint for KUBECTL
  ///
  /// In en, this message translates to:
  /// **'Command-line client for Kubernetes.'**
  String get gameHintWord037Kubectl;

  /// Word Guess hint for GCP
  ///
  /// In en, this message translates to:
  /// **'Google Cloud Platform abbreviation.'**
  String get gameHintWord038Gcp;

  /// Word Guess hint for GITOPS
  ///
  /// In en, this message translates to:
  /// **'Operational model that uses Git as the source of truth.'**
  String get gameHintWord039Gitops;

  /// Word Guess hint for PIPELINE
  ///
  /// In en, this message translates to:
  /// **'Automated sequence of build, test, and release stages.'**
  String get gameHintWord040Pipeline;

  /// Word Guess hint for CONTAINER
  ///
  /// In en, this message translates to:
  /// **'Isolated process packaged with its dependencies.'**
  String get gameHintWord041Container;

  /// Word Guess hint for CLUSTER
  ///
  /// In en, this message translates to:
  /// **'Group of machines managed as a shared system.'**
  String get gameHintWord042Cluster;

  /// Word Guess hint for INGRESS
  ///
  /// In en, this message translates to:
  /// **'Kubernetes API object for external HTTP routing.'**
  String get gameHintWord043Ingress;

  /// Word Guess hint for FIREWALL
  ///
  /// In en, this message translates to:
  /// **'Filters network traffic according to security rules.'**
  String get gameHintWord044Firewall;

  /// Word Guess hint for SUBNET
  ///
  /// In en, this message translates to:
  /// **'Logical subdivision of an IP network.'**
  String get gameHintWord045Subnet;

  /// Word Guess hint for GATEWAY
  ///
  /// In en, this message translates to:
  /// **'Network node that connects different networks.'**
  String get gameHintWord046Gateway;

  /// Word Guess hint for ROUTER
  ///
  /// In en, this message translates to:
  /// **'Forwards packets between networks.'**
  String get gameHintWord047Router;

  /// Word Guess hint for SWITCH
  ///
  /// In en, this message translates to:
  /// **'Connects devices within a local network.'**
  String get gameHintWord048Switch;

  /// Word Guess hint for REPOSITORY
  ///
  /// In en, this message translates to:
  /// **'Managed storage for source code or packages.'**
  String get gameHintWord049Repository;

  /// Word Guess hint for SYSTEMD
  ///
  /// In en, this message translates to:
  /// **'Linux init system and service manager.'**
  String get gameHintWord050Systemd;

  /// Word Guess hint for JOURNALCTL
  ///
  /// In en, this message translates to:
  /// **'Command used to read systemd journal logs.'**
  String get gameHintWord051Journalctl;

  /// Word Guess hint for PERMISSION
  ///
  /// In en, this message translates to:
  /// **'Rule that controls who can read, write, or execute.'**
  String get gameHintWord052Permission;

  /// Word Guess hint for ALLOYDB
  ///
  /// In en, this message translates to:
  /// **'Google Cloud managed PostgreSQL-compatible database.'**
  String get gameHintWord053Alloydb;

  /// Word Guess hint for CONFIGMAP
  ///
  /// In en, this message translates to:
  /// **'Kubernetes object for non-secret configuration.'**
  String get gameHintWord054Configmap;

  /// Word Guess hint for SECRET
  ///
  /// In en, this message translates to:
  /// **'Kubernetes object intended for sensitive data.'**
  String get gameHintWord055Secret;

  /// Word Guess hint for PERSISTENT
  ///
  /// In en, this message translates to:
  /// **'Describes storage that survives a workload restart.'**
  String get gameHintWord056Persistent;

  /// Word Guess hint for VOLUME
  ///
  /// In en, this message translates to:
  /// **'Filesystem storage mounted into a container.'**
  String get gameHintWord057Volume;

  /// Word Guess hint for STORAGE
  ///
  /// In en, this message translates to:
  /// **'Persistent place for files, objects, or blocks.'**
  String get gameHintWord058Storage;

  /// Word Guess hint for REPLICA
  ///
  /// In en, this message translates to:
  /// **'Copy of a workload instance maintained for scale or reliability.'**
  String get gameHintWord059Replica;

  /// Word Guess hint for DEPLOYMENT
  ///
  /// In en, this message translates to:
  /// **'Kubernetes controller for stateless application pods.'**
  String get gameHintWord060Deployment;

  /// Word Guess hint for DOCKERFILE
  ///
  /// In en, this message translates to:
  /// **'Instructions used to build a Docker image.'**
  String get gameHintWord061Dockerfile;

  /// Word Guess hint for DATABASE
  ///
  /// In en, this message translates to:
  /// **'Organized store queried by applications.'**
  String get gameHintWord062Database;

  /// Word Guess hint for AUTOMATION
  ///
  /// In en, this message translates to:
  /// **'Using software to perform repeatable tasks without manual steps.'**
  String get gameHintWord063Automation;

  /// Word Guess hint for ANTHOS
  ///
  /// In en, this message translates to:
  /// **'Google Cloud platform for managing clusters across environments.'**
  String get gameHintWord064Anthos;

  /// Word Guess hint for BIGQUERY
  ///
  /// In en, this message translates to:
  /// **'Google Cloud service for large-scale data analytics.'**
  String get gameHintWord065Bigquery;

  /// Word Guess hint for BIGTABLE
  ///
  /// In en, this message translates to:
  /// **'Google Cloud wide-column NoSQL database for analytics.'**
  String get gameHintWord066Bigtable;

  /// Word Guess hint for LOADBALANCER
  ///
  /// In en, this message translates to:
  /// **'Distributes incoming traffic among multiple backends.'**
  String get gameHintWord067Loadbalancer;

  /// Word Guess hint for PROMETHEUS
  ///
  /// In en, this message translates to:
  /// **'Monitoring system that stores time-series metrics.'**
  String get gameHintWord068Prometheus;

  /// Word Guess hint for GRAFANA
  ///
  /// In en, this message translates to:
  /// **'Platform for querying and visualizing observability data.'**
  String get gameHintWord069Grafana;

  /// Word Guess hint for CLOUDANT
  ///
  /// In en, this message translates to:
  /// **'IBM Cloud managed NoSQL JSON document database.'**
  String get gameHintWord070Cloudant;

  /// Word Guess hint for CLOUDTRAIL
  ///
  /// In en, this message translates to:
  /// **'AWS service that records API activity for auditing.'**
  String get gameHintWord071Cloudtrail;

  /// Word Guess hint for STATEFULSET
  ///
  /// In en, this message translates to:
  /// **'Kubernetes controller for workloads that need stable identity.'**
  String get gameHintWord072Statefulset;

  /// Word Guess hint for DAEMONSET
  ///
  /// In en, this message translates to:
  /// **'Kubernetes controller that runs a pod on selected nodes.'**
  String get gameHintWord073Daemonset;

  /// Word Guess hint for SERVICEACCOUNT
  ///
  /// In en, this message translates to:
  /// **'Kubernetes identity used by a workload or process.'**
  String get gameHintWord074Serviceaccount;

  /// Word Guess hint for NETWORKPOLICY
  ///
  /// In en, this message translates to:
  /// **'Kubernetes resource that controls pod network traffic.'**
  String get gameHintWord075Networkpolicy;

  /// Word Guess hint for CERTIFICATE
  ///
  /// In en, this message translates to:
  /// **'Digital document used to establish identity in TLS.'**
  String get gameHintWord076Certificate;

  /// Word Guess hint for ENCRYPTION
  ///
  /// In en, this message translates to:
  /// **'Transforms data so only authorized parties can read it.'**
  String get gameHintWord077Encryption;

  /// Word Guess hint for OBSERVABILITY
  ///
  /// In en, this message translates to:
  /// **'Ability to infer system behavior from its outputs.'**
  String get gameHintWord078Observability;

  /// Word Guess hint for COREDNS
  ///
  /// In en, this message translates to:
  /// **'DNS server commonly used inside Kubernetes clusters.'**
  String get gameHintWord079Coredns;

  /// Word Guess hint for CROSSPLANE
  ///
  /// In en, this message translates to:
  /// **'Project for managing cloud resources through Kubernetes APIs.'**
  String get gameHintWord080Crossplane;

  /// Word Guess hint for FAILOVER
  ///
  /// In en, this message translates to:
  /// **'Switch to a standby component after a failure.'**
  String get gameHintWord081Failover;

  /// Word Guess hint for IDEMPOTENCY
  ///
  /// In en, this message translates to:
  /// **'Property where repeating an operation has the same effect as doing it once.'**
  String get gameHintWord082Idempotency;

  /// Word Guess hint for DATAFLOW
  ///
  /// In en, this message translates to:
  /// **'Google Cloud service for stream and batch data processing.'**
  String get gameHintWord083Dataflow;

  /// Word Guess hint for ORCHESTRATION
  ///
  /// In en, this message translates to:
  /// **'Coordinated management of multiple automated workloads.'**
  String get gameHintWord084Orchestration;

  /// Word Guess hint for DATAPLEX
  ///
  /// In en, this message translates to:
  /// **'Google Cloud service for discovering and governing enterprise data.'**
  String get gameHintWord085Dataplex;

  /// Word Guess hint for SERVERLESS
  ///
  /// In en, this message translates to:
  /// **'Execution model where infrastructure management is abstracted away.'**
  String get gameHintWord086Serverless;

  /// Word Guess hint for DISTRIBUTED
  ///
  /// In en, this message translates to:
  /// **'System whose components run across multiple networked machines.'**
  String get gameHintWord087Distributed;

  /// Word Guess hint for DATAPROC
  ///
  /// In en, this message translates to:
  /// **'Google Cloud managed Apache Spark and Hadoop environment.'**
  String get gameHintWord088Dataproc;

  /// Word Guess hint for DYNAMODB
  ///
  /// In en, this message translates to:
  /// **'AWS NoSQL database often used for Terraform state locking.'**
  String get gameHintWord089Dynamodb;

  /// Word Guess hint for PROVISIONING
  ///
  /// In en, this message translates to:
  /// **'Preparing infrastructure or resources for use.'**
  String get gameHintWord090Provisioning;

  /// Word Guess hint for ELASTICSEARCH
  ///
  /// In en, this message translates to:
  /// **'Search engine commonly used for centralized logging.'**
  String get gameHintWord091Elasticsearch;

  /// Word Guess hint for ETCD
  ///
  /// In en, this message translates to:
  /// **'Key-value store that holds Kubernetes cluster state.'**
  String get gameHintWord092Etcd;

  /// Word Guess hint for AUTHENTICATION
  ///
  /// In en, this message translates to:
  /// **'Process of verifying who a user or service is.'**
  String get gameHintWord093Authentication;

  /// Word Guess hint for AUTHORIZATION
  ///
  /// In en, this message translates to:
  /// **'Process of deciding what an identity is allowed to do.'**
  String get gameHintWord094Authorization;

  /// Word Guess hint for EXPRESSROUTE
  ///
  /// In en, this message translates to:
  /// **'Azure service for dedicated private connectivity to data centers.'**
  String get gameHintWord095Expressroute;

  /// Word Guess hint for CONFIGURATION
  ///
  /// In en, this message translates to:
  /// **'Settings that determine how software behaves.'**
  String get gameHintWord096Configuration;

  /// Word Guess hint for INFRASTRUCTURE
  ///
  /// In en, this message translates to:
  /// **'Compute, network, and storage resources supporting applications.'**
  String get gameHintWord097Infrastructure;

  /// Word Guess hint for FASTCONNECT
  ///
  /// In en, this message translates to:
  /// **'Oracle Cloud service for dedicated private network connections.'**
  String get gameHintWord098Fastconnect;

  /// Word Guess hint for CONTAINERD
  ///
  /// In en, this message translates to:
  /// **'Industry-standard container runtime used by Kubernetes.'**
  String get gameHintWord099Containerd;

  /// Word Guess hint for KUBERNETES
  ///
  /// In en, this message translates to:
  /// **'Container orchestration platform.'**
  String get gameHintWord100Kubernetes;

  /// Word Guess hint for HTTP
  ///
  /// In en, this message translates to:
  /// **'Application protocol used to request web resources.'**
  String get gameHintWord101Http;

  /// Word Guess hint for HTTPS
  ///
  /// In en, this message translates to:
  /// **'Encrypted version of the web request protocol.'**
  String get gameHintWord102Https;

  /// Word Guess hint for TCP
  ///
  /// In en, this message translates to:
  /// **'Transport protocol providing reliable ordered delivery.'**
  String get gameHintWord103Tcp;

  /// Word Guess hint for UDP
  ///
  /// In en, this message translates to:
  /// **'Connectionless transport protocol used for datagrams.'**
  String get gameHintWord104Udp;

  /// Word Guess hint for TLS
  ///
  /// In en, this message translates to:
  /// **'Protocol securing data exchanged over a network.'**
  String get gameHintWord105Tls;

  /// Word Guess hint for SSL
  ///
  /// In en, this message translates to:
  /// **'Older predecessor of the modern transport security protocol.'**
  String get gameHintWord106Ssl;

  /// Word Guess hint for FTP
  ///
  /// In en, this message translates to:
  /// **'Traditional protocol for transferring files.'**
  String get gameHintWord107Ftp;

  /// Word Guess hint for SFTP
  ///
  /// In en, this message translates to:
  /// **'File transfer protocol carried over a secure shell connection.'**
  String get gameHintWord108Sftp;

  /// Word Guess hint for SMTP
  ///
  /// In en, this message translates to:
  /// **'Protocol used to send email between servers.'**
  String get gameHintWord109Smtp;

  /// Word Guess hint for SNMP
  ///
  /// In en, this message translates to:
  /// **'Protocol used to manage and monitor network devices.'**
  String get gameHintWord110Snmp;

  /// Word Guess hint for ICMP
  ///
  /// In en, this message translates to:
  /// **'Protocol carrying network errors and ping messages.'**
  String get gameHintWord111Icmp;

  /// Word Guess hint for ARP
  ///
  /// In en, this message translates to:
  /// **'Resolves local IPv4 addresses to hardware addresses.'**
  String get gameHintWord112Arp;

  /// Word Guess hint for DHCP
  ///
  /// In en, this message translates to:
  /// **'Automatically leases IP configuration to network clients.'**
  String get gameHintWord113Dhcp;

  /// Word Guess hint for NAT
  ///
  /// In en, this message translates to:
  /// **'Rewrites network addresses as packets cross a gateway.'**
  String get gameHintWord114Nat;

  /// Word Guess hint for VPN
  ///
  /// In en, this message translates to:
  /// **'Encrypted tunnel connecting remote networks or users.'**
  String get gameHintWord115Vpn;

  /// Word Guess hint for VPC
  ///
  /// In en, this message translates to:
  /// **'Isolated virtual network in a public cloud.'**
  String get gameHintWord116Vpc;

  /// Word Guess hint for VLAN
  ///
  /// In en, this message translates to:
  /// **'Logical separation of a switched network.'**
  String get gameHintWord117Vlan;

  /// Word Guess hint for WAN
  ///
  /// In en, this message translates to:
  /// **'Network spanning a broad geographical area.'**
  String get gameHintWord118Wan;

  /// Word Guess hint for LAN
  ///
  /// In en, this message translates to:
  /// **'Network connecting devices within a local area.'**
  String get gameHintWord119Lan;

  /// Word Guess hint for CDN
  ///
  /// In en, this message translates to:
  /// **'Distributed edge network that caches delivered content.'**
  String get gameHintWord120Cdn;

  /// Word Guess hint for CIDR
  ///
  /// In en, this message translates to:
  /// **'Notation expressing a network prefix with a slash length.'**
  String get gameHintWord121Cidr;

  /// Word Guess hint for HOST
  ///
  /// In en, this message translates to:
  /// **'A computer or endpoint connected to a network.'**
  String get gameHintWord122Host;

  /// Word Guess hint for HOSTNAME
  ///
  /// In en, this message translates to:
  /// **'Human-readable name assigned to a networked machine.'**
  String get gameHintWord123Hostname;

  /// Word Guess hint for DOMAIN
  ///
  /// In en, this message translates to:
  /// **'Named administrative area in the internet naming system.'**
  String get gameHintWord124Domain;

  /// Word Guess hint for ZONE
  ///
  /// In en, this message translates to:
  /// **'Administrative portion of a DNS namespace.'**
  String get gameHintWord125Zone;

  /// Word Guess hint for RECORD
  ///
  /// In en, this message translates to:
  /// **'An individual entry in a DNS database.'**
  String get gameHintWord126Record;

  /// Word Guess hint for AAAA
  ///
  /// In en, this message translates to:
  /// **'DNS record type resolving a name to an IPv6 address.'**
  String get gameHintWord127Aaaa;

  /// Word Guess hint for PTR
  ///
  /// In en, this message translates to:
  /// **'DNS record type used for reverse address lookups.'**
  String get gameHintWord128Ptr;

  /// Word Guess hint for TXT
  ///
  /// In en, this message translates to:
  /// **'DNS record type that stores text values.'**
  String get gameHintWord129Txt;

  /// Word Guess hint for CNAME
  ///
  /// In en, this message translates to:
  /// **'DNS record that makes one name an alias of another.'**
  String get gameHintWord130Cname;

  /// Word Guess hint for ROUTE
  ///
  /// In en, this message translates to:
  /// **'A path entry directing packets toward a destination.'**
  String get gameHintWord131Route;

  /// Word Guess hint for ROUTING
  ///
  /// In en, this message translates to:
  /// **'Selecting paths for traffic between networks.'**
  String get gameHintWord132Routing;

  /// Word Guess hint for PACKET
  ///
  /// In en, this message translates to:
  /// **'A unit of data transmitted across a network.'**
  String get gameHintWord133Packet;

  /// Word Guess hint for PROTOCOL
  ///
  /// In en, this message translates to:
  /// **'Agreed rules for communication between systems.'**
  String get gameHintWord134Protocol;

  /// Word Guess hint for ACK
  ///
  /// In en, this message translates to:
  /// **'TCP flag acknowledging receipt of data.'**
  String get gameHintWord135Ack;

  /// Word Guess hint for BANDWIDTH
  ///
  /// In en, this message translates to:
  /// **'Capacity of a communication link.'**
  String get gameHintWord136Bandwidth;

  /// Word Guess hint for LATENCY
  ///
  /// In en, this message translates to:
  /// **'Delay before a request or packet receives a response.'**
  String get gameHintWord137Latency;

  /// Word Guess hint for THROUGHPUT
  ///
  /// In en, this message translates to:
  /// **'Amount of useful work or data processed per unit time.'**
  String get gameHintWord138Throughput;

  /// Word Guess hint for MTU
  ///
  /// In en, this message translates to:
  /// **'Largest packet size a link can transmit without fragmentation.'**
  String get gameHintWord139Mtu;

  /// Word Guess hint for ALPN
  ///
  /// In en, this message translates to:
  /// **'TLS extension negotiating an application-layer protocol.'**
  String get gameHintWord140Alpn;

  /// Word Guess hint for GREP
  ///
  /// In en, this message translates to:
  /// **'Searches text lines for a matching pattern.'**
  String get gameHintWord141Grep;

  /// Word Guess hint for SED
  ///
  /// In en, this message translates to:
  /// **'Stream editor commonly used for text substitutions.'**
  String get gameHintWord142Sed;

  /// Word Guess hint for LSCPU
  ///
  /// In en, this message translates to:
  /// **'Linux command displaying processor architecture and core details.'**
  String get gameHintWord143Lscpu;

  /// Word Guess hint for FIND
  ///
  /// In en, this message translates to:
  /// **'Searches a directory tree using file predicates.'**
  String get gameHintWord144Find;

  /// Word Guess hint for LSBLK
  ///
  /// In en, this message translates to:
  /// **'Linux command listing block devices and their relationships.'**
  String get gameHintWord145Lsblk;

  /// Word Guess hint for SORT
  ///
  /// In en, this message translates to:
  /// **'Orders lines of text.'**
  String get gameHintWord146Sort;

  /// Word Guess hint for UNIQ
  ///
  /// In en, this message translates to:
  /// **'Filters adjacent duplicate lines.'**
  String get gameHintWord147Uniq;

  /// Word Guess hint for HEAD
  ///
  /// In en, this message translates to:
  /// **'Prints the beginning of a file.'**
  String get gameHintWord148Head;

  /// Word Guess hint for TAIL
  ///
  /// In en, this message translates to:
  /// **'Prints the end of a file and can follow appended logs.'**
  String get gameHintWord149Tail;

  /// Word Guess hint for CAT
  ///
  /// In en, this message translates to:
  /// **'Concatenates files and prints their contents.'**
  String get gameHintWord150Cat;

  /// Word Guess hint for CUT
  ///
  /// In en, this message translates to:
  /// **'Extracts selected fields or character columns from lines.'**
  String get gameHintWord151Cut;

  /// Word Guess hint for TEE
  ///
  /// In en, this message translates to:
  /// **'Copies standard input to files and standard output.'**
  String get gameHintWord152Tee;

  /// Word Guess hint for ECHO
  ///
  /// In en, this message translates to:
  /// **'Writes its arguments to standard output.'**
  String get gameHintWord153Echo;

  /// Word Guess hint for PRINTF
  ///
  /// In en, this message translates to:
  /// **'Prints formatted text from a shell or program.'**
  String get gameHintWord154Printf;

  /// Word Guess hint for TOUCH
  ///
  /// In en, this message translates to:
  /// **'Updates file timestamps or creates an empty file.'**
  String get gameHintWord155Touch;

  /// Word Guess hint for MKDIR
  ///
  /// In en, this message translates to:
  /// **'Creates directories.'**
  String get gameHintWord156Mkdir;

  /// Word Guess hint for RMDIR
  ///
  /// In en, this message translates to:
  /// **'Removes empty directories.'**
  String get gameHintWord157Rmdir;

  /// Word Guess hint for CHMOD
  ///
  /// In en, this message translates to:
  /// **'Changes Unix file permission bits.'**
  String get gameHintWord158Chmod;

  /// Word Guess hint for CHOWN
  ///
  /// In en, this message translates to:
  /// **'Changes file ownership.'**
  String get gameHintWord159Chown;

  /// Word Guess hint for CHGRP
  ///
  /// In en, this message translates to:
  /// **'Changes the group ownership of a file.'**
  String get gameHintWord160Chgrp;

  /// Word Guess hint for PWD
  ///
  /// In en, this message translates to:
  /// **'Prints the current working directory.'**
  String get gameHintWord161Pwd;

  /// Word Guess hint for APT
  ///
  /// In en, this message translates to:
  /// **'Package management tool used by Debian-based systems.'**
  String get gameHintWord162Apt;

  /// Word Guess hint for TOP
  ///
  /// In en, this message translates to:
  /// **'Interactive display of processes and system resource usage.'**
  String get gameHintWord163Top;

  /// Word Guess hint for AGENT
  ///
  /// In en, this message translates to:
  /// **'Software component executing or reporting work on a host.'**
  String get gameHintWord164Agent;

  /// Word Guess hint for KILL
  ///
  /// In en, this message translates to:
  /// **'Sends a signal to a process by its identifier.'**
  String get gameHintWord165Kill;

  /// Word Guess hint for SIGNAL
  ///
  /// In en, this message translates to:
  /// **'Notification delivered to a process by the operating system.'**
  String get gameHintWord166Signal;

  /// Word Guess hint for SIGKILL
  ///
  /// In en, this message translates to:
  /// **'Unix signal that immediately terminates a process.'**
  String get gameHintWord167Sigkill;

  /// Word Guess hint for NICE
  ///
  /// In en, this message translates to:
  /// **'Starts a process with an adjusted scheduling priority.'**
  String get gameHintWord168Nice;

  /// Word Guess hint for RENICE
  ///
  /// In en, this message translates to:
  /// **'Changes scheduling priority for a running process.'**
  String get gameHintWord169Renice;

  /// Word Guess hint for JOBS
  ///
  /// In en, this message translates to:
  /// **'Lists jobs managed by the current shell.'**
  String get gameHintWord170Jobs;

  /// Word Guess hint for NOHUP
  ///
  /// In en, this message translates to:
  /// **'Runs a command while ignoring hangup signals.'**
  String get gameHintWord171Nohup;

  /// Word Guess hint for SCREEN
  ///
  /// In en, this message translates to:
  /// **'Terminal multiplexer that supports detachable sessions.'**
  String get gameHintWord172Screen;

  /// Word Guess hint for UPTIME
  ///
  /// In en, this message translates to:
  /// **'Reports how long a system has been running.'**
  String get gameHintWord173Uptime;

  /// Word Guess hint for UNAME
  ///
  /// In en, this message translates to:
  /// **'Prints system and kernel information.'**
  String get gameHintWord174Uname;

  /// Word Guess hint for WHOAMI
  ///
  /// In en, this message translates to:
  /// **'Prints the effective current user name.'**
  String get gameHintWord175Whoami;

  /// Word Guess hint for UMASK
  ///
  /// In en, this message translates to:
  /// **'Sets the permission mask used when creating files.'**
  String get gameHintWord176Umask;

  /// Word Guess hint for USERMOD
  ///
  /// In en, this message translates to:
  /// **'Linux command that modifies an existing user account.'**
  String get gameHintWord177Usermod;

  /// Word Guess hint for CRONTAB
  ///
  /// In en, this message translates to:
  /// **'Edits or lists scheduled recurring shell jobs.'**
  String get gameHintWord178Crontab;

  /// Word Guess hint for FINDMNT
  ///
  /// In en, this message translates to:
  /// **'Linux command displaying mounted filesystem information.'**
  String get gameHintWord179Findmnt;

  /// Word Guess hint for MOUNT
  ///
  /// In en, this message translates to:
  /// **'Attaches a filesystem to the directory tree.'**
  String get gameHintWord180Mount;

  /// Word Guess hint for SIGTERM
  ///
  /// In en, this message translates to:
  /// **'Unix signal requesting graceful process termination.'**
  String get gameHintWord181Sigterm;

  /// Word Guess hint for FSTAB
  ///
  /// In en, this message translates to:
  /// **'System table describing filesystems to mount.'**
  String get gameHintWord182Fstab;

  /// Word Guess hint for SWAP
  ///
  /// In en, this message translates to:
  /// **'Disk-backed space used to supplement physical memory.'**
  String get gameHintWord183Swap;

  /// Word Guess hint for TMPFS
  ///
  /// In en, this message translates to:
  /// **'Temporary filesystem backed by virtual memory.'**
  String get gameHintWord184Tmpfs;

  /// Word Guess hint for PROC
  ///
  /// In en, this message translates to:
  /// **'Linux virtual filesystem exposing process and kernel information.'**
  String get gameHintWord185Proc;

  /// Word Guess hint for SYSLOG
  ///
  /// In en, this message translates to:
  /// **'Standard logging protocol and message format.'**
  String get gameHintWord186Syslog;

  /// Word Guess hint for DMESG
  ///
  /// In en, this message translates to:
  /// **'Displays messages from the kernel ring buffer.'**
  String get gameHintWord187Dmesg;

  /// Word Guess hint for FREE
  ///
  /// In en, this message translates to:
  /// **'Reports used and available system memory.'**
  String get gameHintWord188Free;

  /// Word Guess hint for STAT
  ///
  /// In en, this message translates to:
  /// **'Displays detailed file metadata.'**
  String get gameHintWord189Stat;

  /// Word Guess hint for LSOF
  ///
  /// In en, this message translates to:
  /// **'Lists open files and the processes holding them.'**
  String get gameHintWord190Lsof;

  /// Word Guess hint for NETSTAT
  ///
  /// In en, this message translates to:
  /// **'Displays network connections and routing information.'**
  String get gameHintWord191Netstat;

  /// Word Guess hint for CHECKSUM
  ///
  /// In en, this message translates to:
  /// **'Calculated value used to detect changes or corruption in data.'**
  String get gameHintWord192Checksum;

  /// Word Guess hint for PING
  ///
  /// In en, this message translates to:
  /// **'Tests network reachability using echo requests.'**
  String get gameHintWord193Ping;

  /// Word Guess hint for TRACEROUTE
  ///
  /// In en, this message translates to:
  /// **'Shows intermediate hops toward a network destination.'**
  String get gameHintWord194Traceroute;

  /// Word Guess hint for RESOLVER
  ///
  /// In en, this message translates to:
  /// **'DNS component that looks up answers to name queries.'**
  String get gameHintWord195Resolver;

  /// Word Guess hint for NSLOOKUP
  ///
  /// In en, this message translates to:
  /// **'Looks up DNS names and addresses.'**
  String get gameHintWord196Nslookup;

  /// Word Guess hint for TELNET
  ///
  /// In en, this message translates to:
  /// **'Legacy unencrypted remote terminal protocol.'**
  String get gameHintWord197Telnet;

  /// Word Guess hint for TFTP
  ///
  /// In en, this message translates to:
  /// **'Simple UDP-based file transfer protocol.'**
  String get gameHintWord198Tftp;

  /// Word Guess hint for DAEMON
  ///
  /// In en, this message translates to:
  /// **'Background service process on Unix-like systems.'**
  String get gameHintWord199Daemon;

  /// Word Guess hint for KERNEL
  ///
  /// In en, this message translates to:
  /// **'Core component managing operating system resources.'**
  String get gameHintWord200Kernel;

  /// Word Guess hint for COMMIT
  ///
  /// In en, this message translates to:
  /// **'A recorded snapshot of changes in version control.'**
  String get gameHintWord201Commit;

  /// Word Guess hint for BRANCH
  ///
  /// In en, this message translates to:
  /// **'Movable reference representing a line of development.'**
  String get gameHintWord202Branch;

  /// Word Guess hint for MERGE
  ///
  /// In en, this message translates to:
  /// **'Combines histories from different development lines.'**
  String get gameHintWord203Merge;

  /// Word Guess hint for REBASE
  ///
  /// In en, this message translates to:
  /// **'Replays commits on top of a different base commit.'**
  String get gameHintWord204Rebase;

  /// Word Guess hint for CLONE
  ///
  /// In en, this message translates to:
  /// **'Creates a local copy of a remote repository.'**
  String get gameHintWord205Clone;

  /// Word Guess hint for FETCH
  ///
  /// In en, this message translates to:
  /// **'Downloads remote objects and references without merging.'**
  String get gameHintWord206Fetch;

  /// Word Guess hint for PULL
  ///
  /// In en, this message translates to:
  /// **'Fetches changes and integrates them into the current branch.'**
  String get gameHintWord207Pull;

  /// Word Guess hint for PUSH
  ///
  /// In en, this message translates to:
  /// **'Sends local commits to a remote repository.'**
  String get gameHintWord208Push;

  /// Word Guess hint for STASH
  ///
  /// In en, this message translates to:
  /// **'Temporarily saves uncommitted working-tree changes.'**
  String get gameHintWord209Stash;

  /// Word Guess hint for REVERT
  ///
  /// In en, this message translates to:
  /// **'Creates a commit that undoes another commit.'**
  String get gameHintWord210Revert;

  /// Word Guess hint for RESET
  ///
  /// In en, this message translates to:
  /// **'Moves a Git reference and can reset index or working files.'**
  String get gameHintWord211Reset;

  /// Word Guess hint for REFLOG
  ///
  /// In en, this message translates to:
  /// **'Local history of updates to Git references.'**
  String get gameHintWord212Reflog;

  /// Word Guess hint for DIFF
  ///
  /// In en, this message translates to:
  /// **'Displays differences between versions or files.'**
  String get gameHintWord213Diff;

  /// Word Guess hint for STATUS
  ///
  /// In en, this message translates to:
  /// **'Reports staged, modified, and untracked files.'**
  String get gameHintWord214Status;

  /// Word Guess hint for CHECKOUT
  ///
  /// In en, this message translates to:
  /// **'Git command for switching revisions or restoring files.'**
  String get gameHintWord215Checkout;

  /// Word Guess hint for TAG
  ///
  /// In en, this message translates to:
  /// **'Named reference commonly marking a release.'**
  String get gameHintWord216Tag;

  /// Word Guess hint for REMOTE
  ///
  /// In en, this message translates to:
  /// **'Named connection to another repository.'**
  String get gameHintWord217Remote;

  /// Word Guess hint for ORIGIN
  ///
  /// In en, this message translates to:
  /// **'Default name assigned to a cloned repository remote.'**
  String get gameHintWord218Origin;

  /// Word Guess hint for UPSTREAM
  ///
  /// In en, this message translates to:
  /// **'Remote tracking branch associated with a local branch.'**
  String get gameHintWord219Upstream;

  /// Word Guess hint for WORKTREE
  ///
  /// In en, this message translates to:
  /// **'A checked-out working directory linked to a repository.'**
  String get gameHintWord220Worktree;

  /// Word Guess hint for REGISTRY
  ///
  /// In en, this message translates to:
  /// **'Service storing and distributing container images.'**
  String get gameHintWord221Registry;

  /// Word Guess hint for DIGEST
  ///
  /// In en, this message translates to:
  /// **'Content-based identifier for a container image.'**
  String get gameHintWord222Digest;

  /// Word Guess hint for LAYER
  ///
  /// In en, this message translates to:
  /// **'Filesystem changes forming part of a container image.'**
  String get gameHintWord223Layer;

  /// Word Guess hint for ENTRYPOINT
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction defining the main container executable.'**
  String get gameHintWord224Entrypoint;

  /// Word Guess hint for CMD
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction specifying a default command or arguments.'**
  String get gameHintWord225Cmd;

  /// Word Guess hint for WORKDIR
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction setting the working directory.'**
  String get gameHintWord226Workdir;

  /// Word Guess hint for COPY
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction copying build-context files into an image.'**
  String get gameHintWord227Copy;

  /// Word Guess hint for ADD
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction that can also unpack local archives.'**
  String get gameHintWord228Add;

  /// Word Guess hint for RUN
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction executing a build-time command.'**
  String get gameHintWord229Run;

  /// Word Guess hint for ENV
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction defining environment variables.'**
  String get gameHintWord230Env;

  /// Word Guess hint for ARG
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction declaring a build-time variable.'**
  String get gameHintWord231Arg;

  /// Word Guess hint for EXPOSE
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction documenting a container port.'**
  String get gameHintWord232Expose;

  /// Word Guess hint for USER
  ///
  /// In en, this message translates to:
  /// **'Dockerfile instruction choosing the account for later commands.'**
  String get gameHintWord233User;

  /// Word Guess hint for HEALTHCHECK
  ///
  /// In en, this message translates to:
  /// **'Instruction describing how to test container health.'**
  String get gameHintWord234Healthcheck;

  /// Word Guess hint for SHEBANG
  ///
  /// In en, this message translates to:
  /// **'Script opening line identifying the interpreter to execute.'**
  String get gameHintWord235Shebang;

  /// Word Guess hint for COMPOSE
  ///
  /// In en, this message translates to:
  /// **'Docker tool for defining and running multi-container applications.'**
  String get gameHintWord236Compose;

  /// Word Guess hint for BRIDGE
  ///
  /// In en, this message translates to:
  /// **'Common Docker network driver for local container networking.'**
  String get gameHintWord237Bridge;

  /// Word Guess hint for OVERLAY
  ///
  /// In en, this message translates to:
  /// **'Network spanning containers on multiple hosts.'**
  String get gameHintWord238Overlay;

  /// Word Guess hint for NONE
  ///
  /// In en, this message translates to:
  /// **'Docker network driver that disables container networking.'**
  String get gameHintWord239None;

  /// Word Guess hint for PRUNE
  ///
  /// In en, this message translates to:
  /// **'Removes unused container resources.'**
  String get gameHintWord240Prune;

  /// Word Guess hint for REPLICASET
  ///
  /// In en, this message translates to:
  /// **'Kubernetes controller maintaining a desired pod count.'**
  String get gameHintWord241Replicaset;

  /// Word Guess hint for SERVICE
  ///
  /// In en, this message translates to:
  /// **'Kubernetes abstraction providing stable access to pods.'**
  String get gameHintWord242Service;

  /// Word Guess hint for ENDPOINTS
  ///
  /// In en, this message translates to:
  /// **'Addresses backing a Kubernetes service.'**
  String get gameHintWord243Endpoints;

  /// Word Guess hint for NAMESPACE
  ///
  /// In en, this message translates to:
  /// **'Logical scope grouping Kubernetes resources.'**
  String get gameHintWord244Namespace;

  /// Word Guess hint for NODE
  ///
  /// In en, this message translates to:
  /// **'Worker machine hosting Kubernetes pods.'**
  String get gameHintWord245Node;

  /// Word Guess hint for KUBELET
  ///
  /// In en, this message translates to:
  /// **'Agent on each node that manages pod execution.'**
  String get gameHintWord246Kubelet;

  /// Word Guess hint for PVC
  ///
  /// In en, this message translates to:
  /// **'Kubernetes request for persistent storage.'**
  String get gameHintWord247Pvc;

  /// Word Guess hint for APISERVER
  ///
  /// In en, this message translates to:
  /// **'Kubernetes control-plane component exposing the cluster API.'**
  String get gameHintWord248Apiserver;

  /// Word Guess hint for ROLE
  ///
  /// In en, this message translates to:
  /// **'Named set of permissions in role-based access control.'**
  String get gameHintWord249Role;

  /// Word Guess hint for RESOURCEQUOTA
  ///
  /// In en, this message translates to:
  /// **'Kubernetes object limiting resource consumption in a namespace.'**
  String get gameHintWord250Resourcequota;

  /// Word Guess hint for SELECTOR
  ///
  /// In en, this message translates to:
  /// **'Expression matching resources by their labels.'**
  String get gameHintWord251Selector;

  /// Word Guess hint for TAINT
  ///
  /// In en, this message translates to:
  /// **'Node property that repels pods lacking a matching toleration.'**
  String get gameHintWord252Taint;

  /// Word Guess hint for TOLERATION
  ///
  /// In en, this message translates to:
  /// **'Pod setting allowing scheduling onto a tainted node.'**
  String get gameHintWord253Toleration;

  /// Word Guess hint for CORDON
  ///
  /// In en, this message translates to:
  /// **'Marks a Kubernetes node unschedulable.'**
  String get gameHintWord254Cordon;

  /// Word Guess hint for UNCORDON
  ///
  /// In en, this message translates to:
  /// **'Makes a cordoned node schedulable again.'**
  String get gameHintWord255Uncordon;

  /// Word Guess hint for DRAIN
  ///
  /// In en, this message translates to:
  /// **'Safely evicts workloads before node maintenance.'**
  String get gameHintWord256Drain;

  /// Word Guess hint for JOB
  ///
  /// In en, this message translates to:
  /// **'Kubernetes workload that runs a task to completion.'**
  String get gameHintWord257Job;

  /// Word Guess hint for CRONJOB
  ///
  /// In en, this message translates to:
  /// **'Kubernetes workload that creates jobs on a schedule.'**
  String get gameHintWord258Cronjob;

  /// Word Guess hint for READINESS
  ///
  /// In en, this message translates to:
  /// **'Probe indicating whether a container can receive traffic.'**
  String get gameHintWord259Readiness;

  /// Word Guess hint for LIVENESS
  ///
  /// In en, this message translates to:
  /// **'Probe indicating whether a container needs restarting.'**
  String get gameHintWord260Liveness;

  /// Word Guess hint for CANARY
  ///
  /// In en, this message translates to:
  /// **'Release approach exposing a new version to a small traffic share.'**
  String get gameHintWord261Canary;

  /// Word Guess hint for ROLLING
  ///
  /// In en, this message translates to:
  /// **'Update strategy gradually replacing running instances.'**
  String get gameHintWord262Rolling;

  /// Word Guess hint for ROLLBACK
  ///
  /// In en, this message translates to:
  /// **'Restores a previously working application version.'**
  String get gameHintWord263Rollback;

  /// Word Guess hint for ROLLOUT
  ///
  /// In en, this message translates to:
  /// **'Progressive deployment of a new application version.'**
  String get gameHintWord264Rollout;

  /// Word Guess hint for RECREATE
  ///
  /// In en, this message translates to:
  /// **'Deployment strategy stopping old pods before starting replacements.'**
  String get gameHintWord265Recreate;

  /// Word Guess hint for BLUE
  ///
  /// In en, this message translates to:
  /// **'One of the two environments in a blue-green release.'**
  String get gameHintWord266Blue;

  /// Word Guess hint for GREEN
  ///
  /// In en, this message translates to:
  /// **'The other environment in a blue-green release.'**
  String get gameHintWord267Green;

  /// Word Guess hint for ARTIFACT
  ///
  /// In en, this message translates to:
  /// **'Versioned output produced by a build pipeline.'**
  String get gameHintWord268Artifact;

  /// Word Guess hint for STAGING
  ///
  /// In en, this message translates to:
  /// **'Pre-production environment used for release validation.'**
  String get gameHintWord269Staging;

  /// Word Guess hint for PRODUCTION
  ///
  /// In en, this message translates to:
  /// **'Environment serving real end users.'**
  String get gameHintWord270Production;

  /// Word Guess hint for RELEASE
  ///
  /// In en, this message translates to:
  /// **'A software version delivered for use.'**
  String get gameHintWord271Release;

  /// Word Guess hint for VERSION
  ///
  /// In en, this message translates to:
  /// **'Identifier distinguishing a software revision.'**
  String get gameHintWord272Version;

  /// Word Guess hint for REVISION
  ///
  /// In en, this message translates to:
  /// **'An identifiable version of a document or codebase.'**
  String get gameHintWord273Revision;

  /// Word Guess hint for WEBHOOK
  ///
  /// In en, this message translates to:
  /// **'HTTP notification sent when an event occurs.'**
  String get gameHintWord274Webhook;

  /// Word Guess hint for RUNBOOK
  ///
  /// In en, this message translates to:
  /// **'Documented procedure for operating or recovering a system.'**
  String get gameHintWord275Runbook;

  /// Word Guess hint for WORKSPACE
  ///
  /// In en, this message translates to:
  /// **'Directory or scope containing working project resources.'**
  String get gameHintWord276Workspace;

  /// Word Guess hint for CREDENTIALS
  ///
  /// In en, this message translates to:
  /// **'Authentication material used to access a system.'**
  String get gameHintWord277Credentials;

  /// Word Guess hint for TRIGGER
  ///
  /// In en, this message translates to:
  /// **'Event or condition that starts a pipeline.'**
  String get gameHintWord278Trigger;

  /// Word Guess hint for PARAMETER
  ///
  /// In en, this message translates to:
  /// **'Named input supplied to a job or function.'**
  String get gameHintWord279Parameter;

  /// Word Guess hint for ACCESS
  ///
  /// In en, this message translates to:
  /// **'Ability to use a resource subject to authorization.'**
  String get gameHintWord280Access;

  /// Word Guess hint for MODULE
  ///
  /// In en, this message translates to:
  /// **'Reusable group of infrastructure definitions.'**
  String get gameHintWord281Module;

  /// Word Guess hint for PROVIDER
  ///
  /// In en, this message translates to:
  /// **'Terraform plugin connecting configuration to an external API.'**
  String get gameHintWord282Provider;

  /// Word Guess hint for RESOURCE
  ///
  /// In en, this message translates to:
  /// **'Managed infrastructure object declared in configuration.'**
  String get gameHintWord283Resource;

  /// Word Guess hint for VARIABLE
  ///
  /// In en, this message translates to:
  /// **'Named input value used by configuration or code.'**
  String get gameHintWord284Variable;

  /// Word Guess hint for OUTPUT
  ///
  /// In en, this message translates to:
  /// **'Exposed value returned by an infrastructure configuration.'**
  String get gameHintWord285Output;

  /// Word Guess hint for TFSTATE
  ///
  /// In en, this message translates to:
  /// **'File suffix associated with Terraform state snapshots.'**
  String get gameHintWord286Tfstate;

  /// Word Guess hint for TFVARS
  ///
  /// In en, this message translates to:
  /// **'File suffix used for Terraform input variable values.'**
  String get gameHintWord287Tfvars;

  /// Word Guess hint for BACKEND
  ///
  /// In en, this message translates to:
  /// **'Terraform configuration controlling state storage.'**
  String get gameHintWord288Backend;

  /// Word Guess hint for PLAN
  ///
  /// In en, this message translates to:
  /// **'Terraform preview of proposed infrastructure changes.'**
  String get gameHintWord289Plan;

  /// Word Guess hint for APPLY
  ///
  /// In en, this message translates to:
  /// **'Terraform operation that executes proposed changes.'**
  String get gameHintWord290Apply;

  /// Word Guess hint for DESTROY
  ///
  /// In en, this message translates to:
  /// **'Terraform operation removing managed infrastructure.'**
  String get gameHintWord291Destroy;

  /// Word Guess hint for IMPORT
  ///
  /// In en, this message translates to:
  /// **'Brings an existing resource under infrastructure management.'**
  String get gameHintWord292Import;

  /// Word Guess hint for REFRESH
  ///
  /// In en, this message translates to:
  /// **'Synchronizes recorded state with actual infrastructure.'**
  String get gameHintWord293Refresh;

  /// Word Guess hint for VALIDATE
  ///
  /// In en, this message translates to:
  /// **'Checks configuration syntax and internal consistency.'**
  String get gameHintWord294Validate;

  /// Word Guess hint for FMT
  ///
  /// In en, this message translates to:
  /// **'Terraform command applying canonical configuration formatting.'**
  String get gameHintWord295Fmt;

  /// Word Guess hint for INIT
  ///
  /// In en, this message translates to:
  /// **'Initializes Terraform providers and the working directory.'**
  String get gameHintWord296Init;

  /// Word Guess hint for EXECUTOR
  ///
  /// In en, this message translates to:
  /// **'Jenkins worker slot that can run a build.'**
  String get gameHintWord297Executor;

  /// Word Guess hint for DEPENDENCIES
  ///
  /// In en, this message translates to:
  /// **'Relationships requiring one component before another.'**
  String get gameHintWord298Dependencies;

  /// Word Guess hint for DRIFT
  ///
  /// In en, this message translates to:
  /// **'Difference between declared and actual infrastructure state.'**
  String get gameHintWord299Drift;

  /// Word Guess hint for LOCKING
  ///
  /// In en, this message translates to:
  /// **'Prevents concurrent writers from changing shared state.'**
  String get gameHintWord300Locking;

  /// Word Guess hint for PLAYBOOK
  ///
  /// In en, this message translates to:
  /// **'Ansible document describing automation plays and tasks.'**
  String get gameHintWord301Playbook;

  /// Word Guess hint for INVENTORY
  ///
  /// In en, this message translates to:
  /// **'Ansible collection of managed hosts and groups.'**
  String get gameHintWord302Inventory;

  /// Word Guess hint for FACTS
  ///
  /// In en, this message translates to:
  /// **'System information gathered about managed hosts.'**
  String get gameHintWord303Facts;

  /// Word Guess hint for TASK
  ///
  /// In en, this message translates to:
  /// **'An individual unit of work in automation.'**
  String get gameHintWord304Task;

  /// Word Guess hint for HANDLER
  ///
  /// In en, this message translates to:
  /// **'Ansible task executed when notified by a change.'**
  String get gameHintWord305Handler;

  /// Word Guess hint for NOTIFY
  ///
  /// In en, this message translates to:
  /// **'Ansible directive queuing a handler after a changed task.'**
  String get gameHintWord306Notify;

  /// Word Guess hint for BECOME
  ///
  /// In en, this message translates to:
  /// **'Ansible setting enabling privilege escalation.'**
  String get gameHintWord307Become;

  /// Word Guess hint for VAULT
  ///
  /// In en, this message translates to:
  /// **'Ansible feature for encrypting sensitive automation data.'**
  String get gameHintWord308Vault;

  /// Word Guess hint for REGISTER
  ///
  /// In en, this message translates to:
  /// **'Ansible directive saving a task result into a variable.'**
  String get gameHintWord309Register;

  /// Word Guess hint for WHEN
  ///
  /// In en, this message translates to:
  /// **'Ansible keyword controlling conditional task execution.'**
  String get gameHintWord310When;

  /// Word Guess hint for LOOP
  ///
  /// In en, this message translates to:
  /// **'Repeats an automation task over a collection.'**
  String get gameHintWord311Loop;

  /// Word Guess hint for INCLUDE
  ///
  /// In en, this message translates to:
  /// **'Loads reusable automation content dynamically.'**
  String get gameHintWord312Include;

  /// Word Guess hint for TAGS
  ///
  /// In en, this message translates to:
  /// **'Labels used to select subsets of automation tasks.'**
  String get gameHintWord313Tags;

  /// Word Guess hint for TEMPLATE
  ///
  /// In en, this message translates to:
  /// **'File rendered with variables before deployment.'**
  String get gameHintWord314Template;

  /// Word Guess hint for JINJA
  ///
  /// In en, this message translates to:
  /// **'Template language used by Ansible.'**
  String get gameHintWord315Jinja;

  /// Word Guess hint for ABSTRACTION
  ///
  /// In en, this message translates to:
  /// **'Hiding implementation details behind a simpler interface.'**
  String get gameHintWord316Abstraction;

  /// Word Guess hint for AGILE
  ///
  /// In en, this message translates to:
  /// **'Iterative software delivery approach emphasizing feedback.'**
  String get gameHintWord317Agile;

  /// Word Guess hint for PUPPET
  ///
  /// In en, this message translates to:
  /// **'Configuration management tool using declarative manifests.'**
  String get gameHintWord318Puppet;

  /// Word Guess hint for AIRFLOW
  ///
  /// In en, this message translates to:
  /// **'Platform for scheduling and orchestrating workflow DAGs.'**
  String get gameHintWord319Airflow;

  /// Word Guess hint for ARGO
  ///
  /// In en, this message translates to:
  /// **'Cloud-native project family including a GitOps delivery controller.'**
  String get gameHintWord320Argo;

  /// Word Guess hint for RDS
  ///
  /// In en, this message translates to:
  /// **'AWS managed relational database service abbreviation.'**
  String get gameHintWord321Rds;

  /// Word Guess hint for SQS
  ///
  /// In en, this message translates to:
  /// **'AWS managed message queue abbreviation.'**
  String get gameHintWord322Sqs;

  /// Word Guess hint for SNS
  ///
  /// In en, this message translates to:
  /// **'AWS publish-subscribe notification service abbreviation.'**
  String get gameHintWord323Sns;

  /// Word Guess hint for SES
  ///
  /// In en, this message translates to:
  /// **'AWS email sending service abbreviation.'**
  String get gameHintWord324Ses;

  /// Word Guess hint for IAM
  ///
  /// In en, this message translates to:
  /// **'Cloud identity and access management abbreviation.'**
  String get gameHintWord325Iam;

  /// Word Guess hint for KMS
  ///
  /// In en, this message translates to:
  /// **'AWS encryption key management service abbreviation.'**
  String get gameHintWord326Kms;

  /// Word Guess hint for WAF
  ///
  /// In en, this message translates to:
  /// **'Firewall filtering application-layer web requests.'**
  String get gameHintWord327Waf;

  /// Word Guess hint for EKS
  ///
  /// In en, this message translates to:
  /// **'AWS managed Kubernetes service abbreviation.'**
  String get gameHintWord328Eks;

  /// Word Guess hint for ECS
  ///
  /// In en, this message translates to:
  /// **'AWS managed container orchestration service abbreviation.'**
  String get gameHintWord329Ecs;

  /// Word Guess hint for ECR
  ///
  /// In en, this message translates to:
  /// **'AWS container image registry abbreviation.'**
  String get gameHintWord330Ecr;

  /// Word Guess hint for AURORA
  ///
  /// In en, this message translates to:
  /// **'AWS relational database compatible with MySQL and PostgreSQL.'**
  String get gameHintWord331Aurora;

  /// Word Guess hint for REDSHIFT
  ///
  /// In en, this message translates to:
  /// **'AWS analytics data warehouse.'**
  String get gameHintWord332Redshift;

  /// Word Guess hint for NEPTUNE
  ///
  /// In en, this message translates to:
  /// **'AWS managed graph database.'**
  String get gameHintWord333Neptune;

  /// Word Guess hint for ELASTICACHE
  ///
  /// In en, this message translates to:
  /// **'AWS managed in-memory caching service.'**
  String get gameHintWord334Elasticache;

  /// Word Guess hint for ATHENA
  ///
  /// In en, this message translates to:
  /// **'AWS service querying object-storage data with SQL.'**
  String get gameHintWord335Athena;

  /// Word Guess hint for GLUE
  ///
  /// In en, this message translates to:
  /// **'AWS serverless data integration and ETL service.'**
  String get gameHintWord336Glue;

  /// Word Guess hint for EMR
  ///
  /// In en, this message translates to:
  /// **'AWS platform for managed big-data processing clusters.'**
  String get gameHintWord337Emr;

  /// Word Guess hint for LAMBDA
  ///
  /// In en, this message translates to:
  /// **'AWS service executing functions without managing servers.'**
  String get gameHintWord338Lambda;

  /// Word Guess hint for CLOUDFRONT
  ///
  /// In en, this message translates to:
  /// **'AWS global content delivery network.'**
  String get gameHintWord339Cloudfront;

  /// Word Guess hint for CLOUDWATCH
  ///
  /// In en, this message translates to:
  /// **'AWS service collecting metrics, logs, and alarms.'**
  String get gameHintWord340Cloudwatch;

  /// Word Guess hint for CLOUDSHELL
  ///
  /// In en, this message translates to:
  /// **'AWS browser-based shell environment.'**
  String get gameHintWord341Cloudshell;

  /// Word Guess hint for CODECOMMIT
  ///
  /// In en, this message translates to:
  /// **'AWS managed Git repository service.'**
  String get gameHintWord342Codecommit;

  /// Word Guess hint for CODEBUILD
  ///
  /// In en, this message translates to:
  /// **'AWS service compiling source and running build tests.'**
  String get gameHintWord343Codebuild;

  /// Word Guess hint for CODEDEPLOY
  ///
  /// In en, this message translates to:
  /// **'AWS automated application deployment service.'**
  String get gameHintWord344Codedeploy;

  /// Word Guess hint for CODEPIPELINE
  ///
  /// In en, this message translates to:
  /// **'AWS continuous delivery pipeline service.'**
  String get gameHintWord345Codepipeline;

  /// Word Guess hint for GUARDDUTY
  ///
  /// In en, this message translates to:
  /// **'AWS intelligent threat detection service.'**
  String get gameHintWord346Guardduty;

  /// Word Guess hint for INSPECTOR
  ///
  /// In en, this message translates to:
  /// **'AWS service assessing workloads for vulnerabilities.'**
  String get gameHintWord347Inspector;

  /// Word Guess hint for MACIE
  ///
  /// In en, this message translates to:
  /// **'AWS service discovering sensitive data in object storage.'**
  String get gameHintWord348Macie;

  /// Word Guess hint for SHIELD
  ///
  /// In en, this message translates to:
  /// **'AWS managed DDoS protection service.'**
  String get gameHintWord349Shield;

  /// Word Guess hint for SNOWBALL
  ///
  /// In en, this message translates to:
  /// **'AWS physical appliance for large data transfers.'**
  String get gameHintWord350Snowball;

  /// Word Guess hint for SNOWCONE
  ///
  /// In en, this message translates to:
  /// **'Small rugged device in the AWS offline transfer family.'**
  String get gameHintWord351Snowcone;

  /// Word Guess hint for DATASYNC
  ///
  /// In en, this message translates to:
  /// **'AWS automated online data transfer service.'**
  String get gameHintWord352Datasync;

  /// Word Guess hint for MSK
  ///
  /// In en, this message translates to:
  /// **'AWS managed Apache Kafka service abbreviation.'**
  String get gameHintWord353Msk;

  /// Word Guess hint for BACKUP
  ///
  /// In en, this message translates to:
  /// **'Copy of data retained for recovery.'**
  String get gameHintWord354Backup;

  /// Word Guess hint for TRANSCRIBE
  ///
  /// In en, this message translates to:
  /// **'AWS service converting speech to text.'**
  String get gameHintWord355Transcribe;

  /// Word Guess hint for TRANSLATE
  ///
  /// In en, this message translates to:
  /// **'AWS service translating text between languages.'**
  String get gameHintWord356Translate;

  /// Word Guess hint for REKOGNITION
  ///
  /// In en, this message translates to:
  /// **'AWS service analyzing images and video.'**
  String get gameHintWord357Rekognition;

  /// Word Guess hint for COMPREHEND
  ///
  /// In en, this message translates to:
  /// **'AWS natural-language analysis service.'**
  String get gameHintWord358Comprehend;

  /// Word Guess hint for TEXTRACT
  ///
  /// In en, this message translates to:
  /// **'AWS service extracting text and tables from documents.'**
  String get gameHintWord359Textract;

  /// Word Guess hint for SAGEMAKER
  ///
  /// In en, this message translates to:
  /// **'AWS platform for building and deploying machine learning models.'**
  String get gameHintWord360Sagemaker;

  /// Word Guess hint for SPANNER
  ///
  /// In en, this message translates to:
  /// **'Google Cloud globally distributed relational database.'**
  String get gameHintWord361Spanner;

  /// Word Guess hint for PUB
  ///
  /// In en, this message translates to:
  /// **'Publishing half of the publish-subscribe messaging pattern.'**
  String get gameHintWord362Pub;

  /// Word Guess hint for SUB
  ///
  /// In en, this message translates to:
  /// **'Subscriber half of the publish-subscribe messaging pattern.'**
  String get gameHintWord363Sub;

  /// Word Guess hint for FUNCTIONS
  ///
  /// In en, this message translates to:
  /// **'Event-driven units of code offered by serverless platforms.'**
  String get gameHintWord364Functions;

  /// Word Guess hint for APP
  ///
  /// In en, this message translates to:
  /// **'Short form for a software application.'**
  String get gameHintWord365App;

  /// Word Guess hint for ENGINE
  ///
  /// In en, this message translates to:
  /// **'Execution component in names such as Compute Engine.'**
  String get gameHintWord366Engine;

  /// Word Guess hint for COMPUTE
  ///
  /// In en, this message translates to:
  /// **'Processing capacity supplied by virtual machines or containers.'**
  String get gameHintWord367Compute;

  /// Word Guess hint for NETWORK
  ///
  /// In en, this message translates to:
  /// **'Connected systems exchanging data.'**
  String get gameHintWord368Network;

  /// Word Guess hint for SECURITY
  ///
  /// In en, this message translates to:
  /// **'Protection of systems and information against threats.'**
  String get gameHintWord369Security;

  /// Word Guess hint for IDENTITY
  ///
  /// In en, this message translates to:
  /// **'Representation of a user or service used for access decisions.'**
  String get gameHintWord370Identity;

  /// Word Guess hint for MONITORING
  ///
  /// In en, this message translates to:
  /// **'Continuous observation of system health and behavior.'**
  String get gameHintWord371Monitoring;

  /// Word Guess hint for LOGGING
  ///
  /// In en, this message translates to:
  /// **'Recording discrete application and system events.'**
  String get gameHintWord372Logging;

  /// Word Guess hint for TRACE
  ///
  /// In en, this message translates to:
  /// **'Record of a request path across service calls.'**
  String get gameHintWord373Trace;

  /// Word Guess hint for METRICS
  ///
  /// In en, this message translates to:
  /// **'Numeric measurements of system behavior over time.'**
  String get gameHintWord374Metrics;

  /// Word Guess hint for ALERT
  ///
  /// In en, this message translates to:
  /// **'Notification that a monitored condition requires attention.'**
  String get gameHintWord375Alert;

  /// Word Guess hint for BILLING
  ///
  /// In en, this message translates to:
  /// **'Tracking and charging for consumed cloud services.'**
  String get gameHintWord376Billing;

  /// Word Guess hint for QUOTA
  ///
  /// In en, this message translates to:
  /// **'Limit on the quantity of a resource that can be consumed.'**
  String get gameHintWord377Quota;

  /// Word Guess hint for REGION
  ///
  /// In en, this message translates to:
  /// **'Geographical cloud deployment area containing availability zones.'**
  String get gameHintWord378Region;

  /// Word Guess hint for TENANCY
  ///
  /// In en, this message translates to:
  /// **'Arrangement describing how customers share infrastructure.'**
  String get gameHintWord379Tenancy;

  /// Word Guess hint for REGIONAL
  ///
  /// In en, this message translates to:
  /// **'Describes a resource scoped to a cloud region.'**
  String get gameHintWord380Regional;

  /// Word Guess hint for COSMOS
  ///
  /// In en, this message translates to:
  /// **'Name of Azure globally distributed multi-model database.'**
  String get gameHintWord381Cosmos;

  /// Word Guess hint for SYNAPSE
  ///
  /// In en, this message translates to:
  /// **'Azure analytics platform combining warehousing and data processing.'**
  String get gameHintWord382Synapse;

  /// Word Guess hint for SENTINEL
  ///
  /// In en, this message translates to:
  /// **'Microsoft cloud-native security information and event platform.'**
  String get gameHintWord383Sentinel;

  /// Word Guess hint for DEFENDER
  ///
  /// In en, this message translates to:
  /// **'Microsoft security product family protecting cloud workloads.'**
  String get gameHintWord384Defender;

  /// Word Guess hint for ENTRA
  ///
  /// In en, this message translates to:
  /// **'Microsoft identity product family replacing Azure AD branding.'**
  String get gameHintWord385Entra;

  /// Word Guess hint for ARM
  ///
  /// In en, this message translates to:
  /// **'Azure Resource Manager abbreviation.'**
  String get gameHintWord386Arm;

  /// Word Guess hint for ARC
  ///
  /// In en, this message translates to:
  /// **'Azure service extending management to resources outside Azure.'**
  String get gameHintWord387Arc;

  /// Word Guess hint for AKS
  ///
  /// In en, this message translates to:
  /// **'Azure managed Kubernetes service abbreviation.'**
  String get gameHintWord388Aks;

  /// Word Guess hint for ARMOR
  ///
  /// In en, this message translates to:
  /// **'Google Cloud web protection service name suffix.'**
  String get gameHintWord389Armor;

  /// Word Guess hint for BLOB
  ///
  /// In en, this message translates to:
  /// **'Azure object-storage data type.'**
  String get gameHintWord390Blob;

  /// Word Guess hint for FILES
  ///
  /// In en, this message translates to:
  /// **'Azure service offering managed network file shares.'**
  String get gameHintWord391Files;

  /// Word Guess hint for DISK
  ///
  /// In en, this message translates to:
  /// **'Block-storage device attached to a virtual machine.'**
  String get gameHintWord392Disk;

  /// Word Guess hint for FUNCTION
  ///
  /// In en, this message translates to:
  /// **'Callable block of code that can return a result.'**
  String get gameHintWord393Function;

  /// Word Guess hint for LOGIC
  ///
  /// In en, this message translates to:
  /// **'Azure app service category for workflow integration.'**
  String get gameHintWord394Logic;

  /// Word Guess hint for INSIGHTS
  ///
  /// In en, this message translates to:
  /// **'Azure application telemetry product name suffix.'**
  String get gameHintWord395Insights;

  /// Word Guess hint for TRAFFIC
  ///
  /// In en, this message translates to:
  /// **'Data flowing between network endpoints.'**
  String get gameHintWord396Traffic;

  /// Word Guess hint for MANAGER
  ///
  /// In en, this message translates to:
  /// **'Azure Resource product name suffix for its control plane.'**
  String get gameHintWord397Manager;

  /// Word Guess hint for BASTION
  ///
  /// In en, this message translates to:
  /// **'Managed or hardened entry point for private host access.'**
  String get gameHintWord398Bastion;

  /// Word Guess hint for FRONT
  ///
  /// In en, this message translates to:
  /// **'First word in Azure global entry-point service Front Door.'**
  String get gameHintWord399Front;

  /// Word Guess hint for DOOR
  ///
  /// In en, this message translates to:
  /// **'Second word in Azure global entry-point service Front Door.'**
  String get gameHintWord400Door;

  /// Word Guess hint for JAVASCRIPT
  ///
  /// In en, this message translates to:
  /// **'Programming language widely used in browsers and Node runtimes.'**
  String get gameHintWord401Javascript;

  /// Word Guess hint for PERL
  ///
  /// In en, this message translates to:
  /// **'Scripting language known for text processing and regular expressions.'**
  String get gameHintWord402Perl;

  /// Word Guess hint for POWERSHELL
  ///
  /// In en, this message translates to:
  /// **'Object-oriented shell and automation language from Microsoft.'**
  String get gameHintWord403Powershell;

  /// Word Guess hint for JAVA
  ///
  /// In en, this message translates to:
  /// **'JVM language used to implement Jenkins.'**
  String get gameHintWord404Java;

  /// Word Guess hint for JSON
  ///
  /// In en, this message translates to:
  /// **'Lightweight data format with objects and arrays.'**
  String get gameHintWord405Json;

  /// Word Guess hint for XML
  ///
  /// In en, this message translates to:
  /// **'Markup format using nested named tags.'**
  String get gameHintWord406Xml;

  /// Word Guess hint for HTML
  ///
  /// In en, this message translates to:
  /// **'Markup language used to structure web pages.'**
  String get gameHintWord407Html;

  /// Word Guess hint for CSS
  ///
  /// In en, this message translates to:
  /// **'Stylesheet language controlling web presentation.'**
  String get gameHintWord408Css;

  /// Word Guess hint for STRING
  ///
  /// In en, this message translates to:
  /// **'Sequence of text characters.'**
  String get gameHintWord409String;

  /// Word Guess hint for ARRAY
  ///
  /// In en, this message translates to:
  /// **'Indexed collection of elements.'**
  String get gameHintWord410Array;

  /// Word Guess hint for HASH
  ///
  /// In en, this message translates to:
  /// **'Associative key-value collection in Ruby and Perl.'**
  String get gameHintWord411Hash;

  /// Word Guess hint for OBJECT
  ///
  /// In en, this message translates to:
  /// **'Runtime value with properties and behavior.'**
  String get gameHintWord412Object;

  /// Word Guess hint for CLASS
  ///
  /// In en, this message translates to:
  /// **'Definition used to construct objects in class-based languages.'**
  String get gameHintWord413Class;

  /// Word Guess hint for METHOD
  ///
  /// In en, this message translates to:
  /// **'Function associated with an object or class.'**
  String get gameHintWord414Method;

  /// Word Guess hint for INTERFACE
  ///
  /// In en, this message translates to:
  /// **'Contract describing operations a component exposes.'**
  String get gameHintWord415Interface;

  /// Word Guess hint for SUBCLASS
  ///
  /// In en, this message translates to:
  /// **'Class derived from another class.'**
  String get gameHintWord416Subclass;

  /// Word Guess hint for SUPER
  ///
  /// In en, this message translates to:
  /// **'Keyword used to invoke parent-class behavior.'**
  String get gameHintWord417Super;

  /// Word Guess hint for PROTECTED
  ///
  /// In en, this message translates to:
  /// **'Visibility level restricting access to class-related contexts.'**
  String get gameHintWord418Protected;

  /// Word Guess hint for EXCEPTION
  ///
  /// In en, this message translates to:
  /// **'Runtime condition that interrupts normal control flow.'**
  String get gameHintWord419Exception;

  /// Word Guess hint for REGEX
  ///
  /// In en, this message translates to:
  /// **'Pattern notation used for matching text.'**
  String get gameHintWord420Regex;

  /// Word Guess hint for LEXICAL
  ///
  /// In en, this message translates to:
  /// **'Describes scope determined by source-code structure.'**
  String get gameHintWord421Lexical;

  /// Word Guess hint for SCALAR
  ///
  /// In en, this message translates to:
  /// **'Single-valued variable category in Perl.'**
  String get gameHintWord422Scalar;

  /// Word Guess hint for TUPLE
  ///
  /// In en, this message translates to:
  /// **'Immutable ordered collection in Python.'**
  String get gameHintWord423Tuple;

  /// Word Guess hint for LIST
  ///
  /// In en, this message translates to:
  /// **'Mutable ordered collection in Python.'**
  String get gameHintWord424List;

  /// Word Guess hint for DICT
  ///
  /// In en, this message translates to:
  /// **'Python built-in mapping type name.'**
  String get gameHintWord425Dict;

  /// Word Guess hint for DICTIONARY
  ///
  /// In en, this message translates to:
  /// **'Collection mapping keys to associated values.'**
  String get gameHintWord426Dictionary;

  /// Word Guess hint for SET
  ///
  /// In en, this message translates to:
  /// **'Collection of distinct values.'**
  String get gameHintWord427Set;

  /// Word Guess hint for BOOLEAN
  ///
  /// In en, this message translates to:
  /// **'Data type representing true or false.'**
  String get gameHintWord428Boolean;

  /// Word Guess hint for INTEGER
  ///
  /// In en, this message translates to:
  /// **'Numeric type representing whole numbers.'**
  String get gameHintWord429Integer;

  /// Word Guess hint for FLOAT
  ///
  /// In en, this message translates to:
  /// **'Numeric type representing floating-point values.'**
  String get gameHintWord430Float;

  /// Word Guess hint for DOUBLE
  ///
  /// In en, this message translates to:
  /// **'Double-precision floating-point type.'**
  String get gameHintWord431Double;

  /// Word Guess hint for NULL
  ///
  /// In en, this message translates to:
  /// **'Value representing the absence of an object or result.'**
  String get gameHintWord432Null;

  /// Word Guess hint for UNDEFINED
  ///
  /// In en, this message translates to:
  /// **'JavaScript value for a missing assigned value.'**
  String get gameHintWord433Undefined;

  /// Word Guess hint for PROMISE
  ///
  /// In en, this message translates to:
  /// **'JavaScript object representing an eventual asynchronous result.'**
  String get gameHintWord434Promise;

  /// Word Guess hint for ASYNC
  ///
  /// In en, this message translates to:
  /// **'Keyword marking an asynchronous function.'**
  String get gameHintWord435Async;

  /// Word Guess hint for AWAIT
  ///
  /// In en, this message translates to:
  /// **'Keyword that waits for an asynchronous result.'**
  String get gameHintWord436Await;

  /// Word Guess hint for CALLBACK
  ///
  /// In en, this message translates to:
  /// **'Function passed to be invoked by another operation.'**
  String get gameHintWord437Callback;

  /// Word Guess hint for CLOSURE
  ///
  /// In en, this message translates to:
  /// **'Function retaining access to its surrounding lexical scope.'**
  String get gameHintWord438Closure;

  /// Word Guess hint for GENERATOR
  ///
  /// In en, this message translates to:
  /// **'Function producing a sequence lazily through yielded values.'**
  String get gameHintWord439Generator;

  /// Word Guess hint for ITERATOR
  ///
  /// In en, this message translates to:
  /// **'Object advancing through values in a collection.'**
  String get gameHintWord440Iterator;

  /// Word Guess hint for PRINT
  ///
  /// In en, this message translates to:
  /// **'Common function writing a value to output.'**
  String get gameHintWord441Print;

  /// Word Guess hint for INPUT
  ///
  /// In en, this message translates to:
  /// **'Python function reading a line from standard input.'**
  String get gameHintWord442Input;

  /// Word Guess hint for OPEN
  ///
  /// In en, this message translates to:
  /// **'Function used to obtain a file handle.'**
  String get gameHintWord443Open;

  /// Word Guess hint for CLOSE
  ///
  /// In en, this message translates to:
  /// **'Operation releasing an open file or connection.'**
  String get gameHintWord444Close;

  /// Word Guess hint for READ
  ///
  /// In en, this message translates to:
  /// **'Operation obtaining data from a stream or file.'**
  String get gameHintWord445Read;

  /// Word Guess hint for WRITE
  ///
  /// In en, this message translates to:
  /// **'Operation sending data to a stream or file.'**
  String get gameHintWord446Write;

  /// Word Guess hint for APPEND
  ///
  /// In en, this message translates to:
  /// **'Adds an item to the end of a collection.'**
  String get gameHintWord447Append;

  /// Word Guess hint for SPLIT
  ///
  /// In en, this message translates to:
  /// **'Breaks text into substrings using a delimiter.'**
  String get gameHintWord448Split;

  /// Word Guess hint for JOIN
  ///
  /// In en, this message translates to:
  /// **'Combines a sequence of strings using a separator.'**
  String get gameHintWord449Join;

  /// Word Guess hint for STRIP
  ///
  /// In en, this message translates to:
  /// **'Removes surrounding whitespace from a Python string.'**
  String get gameHintWord450Strip;

  /// Word Guess hint for CHOMP
  ///
  /// In en, this message translates to:
  /// **'Removes a trailing record separator in Perl or Ruby.'**
  String get gameHintWord451Chomp;

  /// Word Guess hint for MAP
  ///
  /// In en, this message translates to:
  /// **'Applies a transformation to each item in a collection.'**
  String get gameHintWord452Map;

  /// Word Guess hint for FILTER
  ///
  /// In en, this message translates to:
  /// **'Keeps collection items satisfying a predicate.'**
  String get gameHintWord453Filter;

  /// Word Guess hint for REDUCE
  ///
  /// In en, this message translates to:
  /// **'Combines a collection into an accumulated result.'**
  String get gameHintWord454Reduce;

  /// Word Guess hint for RANGE
  ///
  /// In en, this message translates to:
  /// **'Python type representing an arithmetic sequence of integers.'**
  String get gameHintWord455Range;

  /// Word Guess hint for LENGTH
  ///
  /// In en, this message translates to:
  /// **'Property or method returning the size of a collection.'**
  String get gameHintWord456Length;

  /// Word Guess hint for LEN
  ///
  /// In en, this message translates to:
  /// **'Python built-in function returning collection size.'**
  String get gameHintWord457Len;

  /// Word Guess hint for TYPE
  ///
  /// In en, this message translates to:
  /// **'Python function returning an object type.'**
  String get gameHintWord458Type;

  /// Word Guess hint for ISINSTANCE
  ///
  /// In en, this message translates to:
  /// **'Python function checking membership in a type hierarchy.'**
  String get gameHintWord459Isinstance;

  /// Word Guess hint for YIELD
  ///
  /// In en, this message translates to:
  /// **'Keyword producing a value from a generator.'**
  String get gameHintWord460Yield;

  /// Word Guess hint for SAAS
  ///
  /// In en, this message translates to:
  /// **'Cloud model delivering complete software applications.'**
  String get gameHintWord461Saas;

  /// Word Guess hint for PAAS
  ///
  /// In en, this message translates to:
  /// **'Cloud model supplying a managed application development platform.'**
  String get gameHintWord462Paas;

  /// Word Guess hint for IAAS
  ///
  /// In en, this message translates to:
  /// **'Cloud model supplying virtual compute, storage, and networking.'**
  String get gameHintWord463Iaas;

  /// Word Guess hint for HYBRID
  ///
  /// In en, this message translates to:
  /// **'Cloud approach combining private and public infrastructure.'**
  String get gameHintWord464Hybrid;

  /// Word Guess hint for ARCHIVE
  ///
  /// In en, this message translates to:
  /// **'Long-term storage of infrequently accessed data.'**
  String get gameHintWord465Archive;

  /// Word Guess hint for PUBLIC
  ///
  /// In en, this message translates to:
  /// **'Cloud ownership model offering services to multiple customers.'**
  String get gameHintWord466Public;

  /// Word Guess hint for PRIVATE
  ///
  /// In en, this message translates to:
  /// **'Cloud model dedicated to a single organization.'**
  String get gameHintWord467Private;

  /// Word Guess hint for SCALABILITY
  ///
  /// In en, this message translates to:
  /// **'Ability to handle growing load by adding resources.'**
  String get gameHintWord468Scalability;

  /// Word Guess hint for AVAILABILITY
  ///
  /// In en, this message translates to:
  /// **'Degree to which a service remains accessible when needed.'**
  String get gameHintWord469Availability;

  /// Word Guess hint for RESILIENCE
  ///
  /// In en, this message translates to:
  /// **'Ability to withstand and recover from failures.'**
  String get gameHintWord470Resilience;

  /// Word Guess hint for REDUNDANCY
  ///
  /// In en, this message translates to:
  /// **'Duplicate components reducing single points of failure.'**
  String get gameHintWord471Redundancy;

  /// Word Guess hint for DISASTER
  ///
  /// In en, this message translates to:
  /// **'Major outage addressed by a recovery strategy.'**
  String get gameHintWord472Disaster;

  /// Word Guess hint for RECOVERY
  ///
  /// In en, this message translates to:
  /// **'Restoring service or data after failure.'**
  String get gameHintWord473Recovery;

  /// Word Guess hint for REPLICATE
  ///
  /// In en, this message translates to:
  /// **'Copy data or workloads to another location.'**
  String get gameHintWord474Replicate;

  /// Word Guess hint for SNAPSHOTTING
  ///
  /// In en, this message translates to:
  /// **'Taking point-in-time copies of data or system state.'**
  String get gameHintWord475Snapshotting;

  /// Word Guess hint for RESTORE
  ///
  /// In en, this message translates to:
  /// **'Operation recovering data from a saved copy.'**
  String get gameHintWord476Restore;

  /// Word Guess hint for RESIDENCY
  ///
  /// In en, this message translates to:
  /// **'Requirement defining the geographical location of stored data.'**
  String get gameHintWord477Residency;

  /// Word Guess hint for COMPLIANCE
  ///
  /// In en, this message translates to:
  /// **'Meeting required regulations and organizational controls.'**
  String get gameHintWord478Compliance;

  /// Word Guess hint for GOVERNANCE
  ///
  /// In en, this message translates to:
  /// **'Policies and processes controlling technology usage.'**
  String get gameHintWord479Governance;

  /// Word Guess hint for AUDIT
  ///
  /// In en, this message translates to:
  /// **'Review of recorded activities and compliance evidence.'**
  String get gameHintWord480Audit;

  /// Word Guess hint for TOKEN
  ///
  /// In en, this message translates to:
  /// **'Credential or symbol representing authorization or identity.'**
  String get gameHintWord481Token;

  /// Word Guess hint for OAUTH
  ///
  /// In en, this message translates to:
  /// **'Authorization framework allowing delegated access.'**
  String get gameHintWord482Oauth;

  /// Word Guess hint for SAML
  ///
  /// In en, this message translates to:
  /// **'XML-based standard commonly used for enterprise single sign-on.'**
  String get gameHintWord483Saml;

  /// Word Guess hint for CMDLET
  ///
  /// In en, this message translates to:
  /// **'A specialized command used in PowerShell pipelines.'**
  String get gameHintWord484Cmdlet;

  /// Word Guess hint for ALGORITHM
  ///
  /// In en, this message translates to:
  /// **'Defined sequence of steps for solving a computational problem.'**
  String get gameHintWord485Algorithm;

  /// Word Guess hint for KEY
  ///
  /// In en, this message translates to:
  /// **'Value used to control encryption or identify stored data.'**
  String get gameHintWord486Key;

  /// Word Guess hint for ALIAS
  ///
  /// In en, this message translates to:
  /// **'Alternative name for a shell command or resource.'**
  String get gameHintWord487Alias;

  /// Word Guess hint for AMEND
  ///
  /// In en, this message translates to:
  /// **'Git commit option that replaces the most recent commit.'**
  String get gameHintWord488Amend;

  /// Word Guess hint for ALLSIGNED
  ///
  /// In en, this message translates to:
  /// **'PowerShell execution policy requiring signed scripts.'**
  String get gameHintWord489Allsigned;

  /// Word Guess hint for REMOTESIGNED
  ///
  /// In en, this message translates to:
  /// **'PowerShell policy requiring signatures on downloaded scripts.'**
  String get gameHintWord490Remotesigned;

  /// Word Guess hint for ACL
  ///
  /// In en, this message translates to:
  /// **'List defining permissions for users or systems.'**
  String get gameHintWord491Acl;

  /// Word Guess hint for UID
  ///
  /// In en, this message translates to:
  /// **'Numeric identifier assigned to a Unix user.'**
  String get gameHintWord492Uid;

  /// Word Guess hint for SETGID
  ///
  /// In en, this message translates to:
  /// **'Permission bit affecting group identity during execution or inheritance.'**
  String get gameHintWord493Setgid;

  /// Word Guess hint for SETFACL
  ///
  /// In en, this message translates to:
  /// **'Linux command setting file access control lists.'**
  String get gameHintWord494Setfacl;

  /// Word Guess hint for ISOLATION
  ///
  /// In en, this message translates to:
  /// **'Separation preventing workloads from interfering with each other.'**
  String get gameHintWord495Isolation;

  /// Word Guess hint for SIGHUP
  ///
  /// In en, this message translates to:
  /// **'Unix hangup signal often used to request configuration reloads.'**
  String get gameHintWord496Sighup;

  /// Word Guess hint for SIGINT
  ///
  /// In en, this message translates to:
  /// **'Unix interrupt signal commonly generated with Control-C.'**
  String get gameHintWord497Sigint;

  /// Word Guess hint for SIGSTOP
  ///
  /// In en, this message translates to:
  /// **'Unix signal pausing a process without terminating it.'**
  String get gameHintWord498Sigstop;

  /// Word Guess hint for SECRETS
  ///
  /// In en, this message translates to:
  /// **'Sensitive values such as passwords and access keys.'**
  String get gameHintWord499Secrets;

  /// Word Guess hint for SECURE
  ///
  /// In en, this message translates to:
  /// **'Describes a connection protected against unauthorized access.'**
  String get gameHintWord500Secure;

  /// Settings tile title for the app font option
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get fontSettingsTitle;

  /// Title of the font picker screen
  ///
  /// In en, this message translates to:
  /// **'Change Font'**
  String get fontChangeFont;

  /// Font option that uses the device's own font
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get fontSystemDefault;

  /// Label shown before a font preview sentence
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get fontPreview;

  /// Sample sentence rendered in each font option
  ///
  /// In en, this message translates to:
  /// **'Learn DevOps one question at a time'**
  String get fontPreviewSample;

  /// Accessibility/status label for the active font
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get fontSelected;

  /// Explains custom fonts only cover Latin letters
  ///
  /// In en, this message translates to:
  /// **'Custom fonts apply to Latin letters. Other scripts keep your device\'s font.'**
  String get fontLatinOnlyNote;

  /// Description of the System Default font option
  ///
  /// In en, this message translates to:
  /// **'Your device\'s built-in font'**
  String get fontDescSystem;

  /// Style description for Montserrat
  ///
  /// In en, this message translates to:
  /// **'Geometric sans-serif'**
  String get fontDescGeometric;

  /// Style description for Poppins
  ///
  /// In en, this message translates to:
  /// **'Geometric rounded sans-serif'**
  String get fontDescGeometricRounded;

  /// Style description for Rubik
  ///
  /// In en, this message translates to:
  /// **'Friendly sans-serif'**
  String get fontDescFriendly;

  /// Style description for Oswald
  ///
  /// In en, this message translates to:
  /// **'Condensed'**
  String get fontDescCondensed;

  /// Style description for Nunito
  ///
  /// In en, this message translates to:
  /// **'Rounded sans-serif'**
  String get fontDescRounded;

  /// Style description for Comfortaa
  ///
  /// In en, this message translates to:
  /// **'Rounded display'**
  String get fontDescRoundedDisplay;

  /// No description provided for @gameScene3dScene.
  ///
  /// In en, this message translates to:
  /// **'3D Scene {value1}'**
  String gameScene3dScene(String value1);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'as', 'bn', 'de', 'doi', 'en', 'es', 'fr', 'gom', 'gu', 'hi', 'id', 'it', 'ja', 'kn', 'mai', 'ml', 'mni', 'mr', 'ne', 'or', 'pa', 'pt', 'ru', 'sa', 'sat', 'sd', 'ta', 'te', 'tr', 'ur', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'as': return AppLocalizationsAs();
    case 'bn': return AppLocalizationsBn();
    case 'de': return AppLocalizationsDe();
    case 'doi': return AppLocalizationsDoi();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'gom': return AppLocalizationsGom();
    case 'gu': return AppLocalizationsGu();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'kn': return AppLocalizationsKn();
    case 'mai': return AppLocalizationsMai();
    case 'ml': return AppLocalizationsMl();
    case 'mni': return AppLocalizationsMni();
    case 'mr': return AppLocalizationsMr();
    case 'ne': return AppLocalizationsNe();
    case 'or': return AppLocalizationsOr();
    case 'pa': return AppLocalizationsPa();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'sa': return AppLocalizationsSa();
    case 'sat': return AppLocalizationsSat();
    case 'sd': return AppLocalizationsSd();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
    case 'tr': return AppLocalizationsTr();
    case 'ur': return AppLocalizationsUr();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
