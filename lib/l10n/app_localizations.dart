import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_mr.dart';

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
    Locale('en'),
    Locale('hi'),
    Locale('mr')
  ];

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
  /// **'You have 15 seconds per question.'**
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

  /// No description provided for @shareMessage.
  ///
  /// In en, this message translates to:
  /// **'🎯 I scored {score}/{totalQuestions} in today\'s #DevOps Quiz!\n\n🏆 Points: {earnedPoints}\n🔥 Bonus: {bonusPoints}\n📊 Percentage: {percentage}%\n\nCan you beat my score?\n\nDownload the app:'**
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
    case 'mr': return AppLocalizationsMr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
