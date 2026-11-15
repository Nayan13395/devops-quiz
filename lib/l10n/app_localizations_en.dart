// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTour => 'App tour';

  @override
  String get skipTour => 'Skip tour';

  @override
  String get finishTour => 'Finish tour';

  @override
  String tourStep(int current, int total) {
    return 'Step $current of $total';
  }

  @override
  String get tourMenuTitle => 'Navigation menu';

  @override
  String get tourSearch => 'Type a topic here to find matching quiz categories.';

  @override
  String get tourCategory => 'Tap DevOps for a mixed quiz. Other categories offer question sets. Bookmark questions to review them later.';

  @override
  String get tourMenu => 'Tap this button to open the navigation menu.';

  @override
  String get tourLearning => 'Open Learning for cards. Swipe in any direction, shuffle, auto-swap, or bookmark a card.';

  @override
  String get tourGames => 'Play games to earn points. Level-based games give 100 points per completed level; hints cost 20 points.';

  @override
  String get tourAchievements => 'View your achievements here. Popups announce new achievements and available themes.';

  @override
  String get tourSettings => 'Choose your language, theme and sound settings. Open Save data to review bookmarks, or App tour to replay this guide.';

  @override
  String get achievementUnlocked => 'Achievement unlocked!';

  @override
  String get themeUnlocked => 'New theme available!';

  @override
  String get themeUnlockedMessage => 'You can now select this theme in Settings > Themes.';

  @override
  String get gameSounds => 'Game sounds';

  @override
  String get gameSoundsDescription => 'Effects for games and quizzes. Check device volume and silent mode.';

  @override
  String get testSound => 'Test sound';

  @override
  String get soundSettingBusy => 'Please wait...';

  @override
  String get soundSettingError => 'Could not load or save the sound setting. Please try again.';

  @override
  String get soundPlaybackError => 'Could not play sound. Check your device or browser audio settings.';

  @override
  String get saveData => 'Save data';

  @override
  String get learningTranslationUnavailable => 'This card has not yet been translated into the selected language.';

  @override
  String get saveQuestion => 'Save question';

  @override
  String defaultPortQuestion(String service) {
    return 'What is the default port for $service?';
  }

  @override
  String get removeSavedItem => 'Remove from saved';

  @override
  String get noSavedData => 'Nothing saved yet. Bookmark cards in Learning or questions in a quiz.';

  @override
  String get savedDataError => 'Could not load or update saved data. Please try again.';

  @override
  String get savedItemUnavailable => 'This saved item is no longer available.';

  @override
  String get correctAnswer => 'Correct answer';

  @override
  String get retry => 'Retry';

  @override
  String get certificates => 'Certificates';

  @override
  String get whatsNew => 'What\'s New';

  @override
  String get settings => 'Settings';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Start Quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Switch Category';

  @override
  String get dailyQuiz => 'Daily Quiz';

  @override
  String get dailyQuizCompleted => 'Daily Quiz Completed';

  @override
  String get dailyQuizCompletedMessage => 'You have already completed today\'s Daily Quiz.\n\nCome back tomorrow for a new challenge!';

  @override
  String get leaderboard => 'Leaderboard';

  @override
  String get shareApp => 'Share App';

  @override
  String get rateApp => 'Rate App';

  @override
  String get about => 'About';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Home';

  @override
  String get games => 'Games';

  @override
  String get referAndEarn => 'Refer & Earn';

  @override
  String get themes => 'Themes';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Developer';

  @override
  String get contact => 'Contact';

  @override
  String get learning => 'Learning';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Connect with me';

  @override
  String get aboutDescription => 'DevOps Quiz helps learners prepare for interviews and certifications through thousands of carefully selected questions covering Linux, Docker, Kubernetes, Networking, Git, Jenkins, Terraform, Ansible and other DevOps technologies.';

  @override
  String get quizResult => 'Quiz Result';

  @override
  String get outstanding => 'Outstanding!';

  @override
  String get greatJob => 'Great Job!';

  @override
  String get goodEffort => 'Good Effort!';

  @override
  String get keepPracticing => 'Keep Practicing!';

  @override
  String get dontGiveUp => 'Don\'t Give Up!';

  @override
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

  @override
  String get score => 'Score';

  @override
  String get points => 'Points';

  @override
  String get percentage => 'Percentage';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Perfect Score Bonus';

  @override
  String get shareScore => 'Share Score';

  @override
  String get restartQuiz => 'Restart Quiz';

  @override
  String get backToCategories => 'Back to Categories';

  @override
  String get greatProgress => 'Well done! You\'re making great progress.';

  @override
  String get practiceMore => 'Good work! A little more practice and you\'ll score even higher.';

  @override
  String get keepLearning => 'Keep learning and try again. You\'ll improve with practice.';

  @override
  String get everyExpertStarted => 'Every expert started as a beginner. Practice and come back stronger!';

  @override
  String get quizInstructions => 'Quiz Instructions';

  @override
  String get instruction1 => 'Each set contains 25 questions.';

  @override
  String get instruction2 => 'You have 30 seconds per question.';

  @override
  String get instruction3 => 'Green = Correct Answer.';

  @override
  String get instruction4 => 'Red = Wrong Answer.';

  @override
  String get instruction5 => 'Answer cannot be changed.';

  @override
  String get instruction6 => 'Back button is for review only.';

  @override
  String get instruction7 => 'Score is shown after completion.';

  @override
  String get instruction8 => 'Each correct answer earns 10 points.';

  @override
  String excellentPerformance(Object expert) {
    return 'Excellent performance! You\'re a $expert.';
  }

  @override
  String get selectCategory => 'Select Category';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Select Set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Questions';

  @override
  String get noScoresYet => 'No Scores Yet';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Welcome to DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Hi $name';
  }

  @override
  String get challengeMode => 'Challenge Mode';

  @override
  String get challenge => 'Challenge';

  @override
  String get question => 'Question';

  @override
  String get reward => 'Reward';

  @override
  String get survivalMode => 'Survival Mode';

  @override
  String get speedChallenge => 'Speed Challenge';

  @override
  String get dailyChallenge => 'Daily Challenge';

  @override
  String get ultimateChallenge => 'Ultimate Challenge';

  @override
  String get timeLeft => 'Time Left';

  @override
  String get completed => 'Completed';

  @override
  String get locked => 'Locked';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get submit => 'Submit';

  @override
  String get achievements => 'Achievements';

  @override
  String get streak => 'Streak';

  @override
  String get days => 'Days';

  @override
  String get tomorrowsReward => 'Tomorrow\'s Reward';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 I scored $score/$totalQuestions in today\'s #DevOps Quiz!\n\n🏆 Points: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Percentage: $percentage%\n\nCan you beat my score?\n\nDownload the app:';
  }

  @override
  String get gameUiSpinWheel => 'Spin Wheel';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Spin and win bonus points';

  @override
  String get gameUiScratchCard => 'Scratch Card';

  @override
  String get gameUiScratchToRevealAReward => 'Scratch to reveal a reward';

  @override
  String get gameUiLuckySlots => 'Lucky Slots';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Roll the slots and win points';

  @override
  String get gameUiMysteryDeal => 'Mystery Deal';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Pick a mystery box and answer';

  @override
  String get gameUiMemoryMatch => 'Memory Match';

  @override
  String get gameUiMatchDevOpsPairs => 'Match DevOps pairs';

  @override
  String get gameUiWordGuess => 'Word Guess';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Guess DevOps words through levels';

  @override
  String get gameUiFindWords => 'Find Words';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Search a grid for hidden DevOps terms';

  @override
  String get gameUiSpotTheDifference => 'Spot the Difference';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Find five changes between two illustrated scenes';

  @override
  String get gameUiJigsawPuzzle => 'Jigsaw Puzzle';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Rebuild shared HD animal and nature pictures';

  @override
  String get gameUiHighOrLow => 'High or Low';

  @override
  String get gameUiBuildAStreak => 'Build a streak';

  @override
  String get gameUiTrueOrFalseBlitz => 'True or False Blitz';

  @override
  String get gameUiQuickAnswerQuiz => 'Quick answer quiz';

  @override
  String get gameUiCommandMatch => 'Command Match';

  @override
  String get gameUiMatchCommandsToMeanings => 'Match commands to meanings';

  @override
  String get gameUiPortMaster => 'Port Master';

  @override
  String get gameUiGuessDefaultPorts => 'Guess default ports';

  @override
  String get gameUiTicTacToe => 'Tic-Tac-Toe';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X noughts and crosses computer';

  @override
  String get gameUiConnectFour => 'Connect Four';

  @override
  String get gameUiDropFourDiscs => 'Drop four discs';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Race against bots';

  @override
  String get gameUiChess => 'Chess';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Chess board legal moves two players';

  @override
  String get gameUiSnakeAndLadders => 'Snake and Ladders';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Dice board snakes ladders two players';

  @override
  String get gameUiGames => 'Games 🎮';

  @override
  String get gameUiPlayEarn => 'Play & Earn';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Play games and earn bonus points!';

  @override
  String get gameUiSearchGames => 'Search games';

  @override
  String get gameUiClearSearch => 'Clear search';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'No games match \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Spin & win bonus points.';

  @override
  String get gameUiScratchToRevealYourReward => 'Scratch to reveal your reward.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Roll the slots & win points.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Pick a mystery box and answer correctly to win points.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Match DevOps pairs to earn points.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Guess the DevOps term in 6 tries.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Search a grid for hidden DevOps terms.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Swipe to find DevOps words in 500 levels.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Find five changes between two illustrated scenes.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Rebuild shared HD animal and nature pictures.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Build a streak and bank your points.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Beat the clock with quick answers.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'True or False Blitz 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Match commands to what they do.';

  @override
  String get gameUiCommandMatch670a76e => 'Command Match 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Guess default ports with 3 lives.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Port Master 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Play O/X against the computer.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Drop four discs in a row to win.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Race your pieces against three bots.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Local two-player chess with legal moves.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Play a legal two-player chess match.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Two-player dice board game.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Race to 100. Climb ladders and dodge snakes.';

  @override
  String get gameUiPlay => 'Play';

  @override
  String get gameUiWheelStopped => 'Wheel Stopped!';

  @override
  String get gameUiYourRewardIs => 'Your reward is';

  @override
  String get gameUiPOINTS => 'POINTS';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Answer 1 quiz question correctly to claim this reward.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Wrong answer = reward lost.';

  @override
  String get gameUiAnswerQuestion => 'Answer Question';

  @override
  String get gameUiSpinWheele449982 => '🎡 Spin Wheel';

  @override
  String get gameUiDailySpin => 'Daily Spin';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Spin the wheel, then answer a question to claim your reward!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'You have already used today\'s spin.';

  @override
  String get gameUiSpinning => 'Spinning...';

  @override
  String get gameUiSPINNOW => 'SPIN NOW';

  @override
  String get gameUiCOMEBACKTOMORROW => 'COME BACK TOMORROW';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Today\'s reward: ⭐ $value1 points';
  }

  @override
  String get gameUiBackToGames => 'Back to Games';

  @override
  String get gameUiSPIN => 'SPIN';

  @override
  String get gameUiRewardRevealed => 'Reward Revealed!';

  @override
  String get gameUiYouFound => 'You found';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Scratch Card';

  @override
  String get gameUiDailyScratch => 'Daily Scratch';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Scratch the card to reveal today\'s reward!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'You have already used today\'s scratch card.';

  @override
  String get gameUiAlreadyScratched => 'Already Scratched';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Come back tomorrow for another reward.';

  @override
  String get gameUiYouRevealed => 'You revealed';

  @override
  String get gameUiSCRATCHHERE => 'SCRATCH HERE  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => 'Lucky 777!';

  @override
  String get gameUiYourReward => 'Your reward';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Lucky Slots';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Roll the slots, then answer a question to claim the reward!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'You have already played today.';

  @override
  String get gameUiSPINNING => 'SPINNING...';

  @override
  String get gameUiROLLNOW => 'ROLL NOW';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 points available!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Unable to check Mystery Deal status: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Box $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 POINTS';
  }

  @override
  String get gameUiStartQuestion => 'Start Question';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Mystery Deal';

  @override
  String get gameUiMysteryDealCompleted => 'Mystery Deal Completed!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'You have already played Mystery Deal today.';

  @override
  String get gameUiTodayYouWon => 'Today you won';

  @override
  String get gameUiTodaySReward => 'Today\'s reward';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 POINTS';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 POINTS LOST';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Come back tomorrow for another mystery box!';

  @override
  String get gameUiChooseYourMysteryBox => 'Choose Your Mystery Box';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Each box contains a hidden reward between 10 and 1000 points.';

  @override
  String get gameUiPickOnlyOneBox => 'Pick only one box!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'All $value1 levels complete!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Level $value1 complete!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Completed in $value1 moves.\nYou earned $value2 points!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Completed in $value1 moves.\nThis level was already cleared.';
  }

  @override
  String get gameUiNextLevel => 'Next level';

  @override
  String get gameUiDone => 'Done';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Memory Match 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'All 100 levels complete!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'You completed every Memory Match level. Well played!';

  @override
  String get gameUiChooseLevel => 'Choose level';

  @override
  String gameUiMoves(String value1) {
    return 'Moves: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Level $value1 of $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 pairs';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Memorize Level $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Find $value1 matching pairs';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz logo';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Chapter 1 · Restore the build pipeline';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Chapter 2 · Scale the cloud platform';

  @override
  String get gameUiChapter3ProtectProduction => 'Chapter 3 · Protect production';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Use all $value1 remaining letters to submit.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'All Levels Complete!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Level $value1 Complete!';
  }

  @override
  String get gameUiTryAgain => 'Try Again';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'The word was $value1. You earned $value2 points.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'The word was $value1. You earned $value2 points after $value3 hint.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'The word was $value1. You earned $value2 points after $value3 hints.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'The word was $value1. Level $value2 is still waiting for you.';
  }

  @override
  String get gameUiFinish => 'Finish';

  @override
  String get gameUiNextLevel254fd73 => 'Next Level';

  @override
  String get gameUiRetryLevel => 'Retry Level';

  @override
  String get gameUiHowToPlay => 'How to Play';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Each level has one DevOps word. Words shorter than five letters start with no free letters; longer words start with one. Use the letter rack to build the answer and press Enter. Hints reveal another letter and cost 20 points from your balance. Each completed level earns 100 points.';

  @override
  String get gameUiGotIt => 'Got it';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'All $value1 Levels Complete!';
  }

  @override
  String get gameUiEasy => 'Easy';

  @override
  String get gameUiMedium => 'Medium';

  @override
  String get gameUiHard => 'Hard';

  @override
  String get gameUiHowToPlay13a6b22 => 'How to play';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Level $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Reward $value1 pts · hints used $value2';
  }

  @override
  String get gameUiHint20Pts => 'Hint · −20 pts';

  @override
  String get gameUiEnter => 'Enter';

  @override
  String get gameUiDelete => 'Delete';

  @override
  String get gameUiDragThroughAWord => 'Drag through a word';

  @override
  String get gameUiDragThroughEachWord => 'Drag through each word';

  @override
  String get gameUiReleaseToSelect => 'Release to select';

  @override
  String gameUiFound(String value1) {
    return 'Found $value1';
  }

  @override
  String get gameUiNoWordThere => 'No word there';

  @override
  String gameUiAlreadyFound(String value1) {
    return 'Already found $value1';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Look for $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'All levels complete!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'You found every word and earned $value1 points.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'You found every word. This level was already cleared.';

  @override
  String get gameUiAll500LevelsComplete => 'All 500 levels complete!';

  @override
  String get gameUiReviewLevels => 'Review levels';

  @override
  String gameUiLeft(String value1) {
    return '$value1 left';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 pts';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Could not save progress. Please try again.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'You earned $value1 points!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'You already completed this picture. No additional points on replay.';

  @override
  String get gameUiYouCompletedEveryPicture => 'You completed every picture!';

  @override
  String get gameUiLevels => 'Levels';

  @override
  String get gameUiPictureB => 'Picture B';

  @override
  String get gameUiPictureA => 'Picture A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Picture could not load. Retry';

  @override
  String get gameUiResetZoom => 'Reset zoom';

  @override
  String get gameUiZoomBothPictures => 'Zoom both pictures';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Hint · $value1 points per hint';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Could not load progress. Retry';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Level $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'All differences found!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Find $count differences. Tap each one in either picture.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Misses: $value1  ·  Hints: $value2 (−$value3 pts)  ·  $value4 levels complete';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Next level: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Puzzle $value1 complete!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Picture complete in $value1 moves. You earned $value2 points.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Picture complete in $value1 moves.';
  }

  @override
  String get gameUiNextPuzzle => 'Next puzzle';

  @override
  String get gameUiAllPuzzlesComplete => 'All puzzles complete';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Puzzle piece $value1 of $value2, correctly placed';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Puzzle piece $value1 of $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Choose puzzle';

  @override
  String get gameUiShufflePieces => 'Shuffle pieces';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Unable to load the puzzle picture.';

  @override
  String get gameUiPreviousPuzzle => 'Previous puzzle';

  @override
  String gameUiPuzzle(String value1) {
    return 'Puzzle $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 moves';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Drag pieces to swap them, or tap two pieces.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 puzzles solved  ·  $value3 points each';
  }

  @override
  String get gameUiGameOver => 'Game Over';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'The number was $value1.\nStreak: $value2\nYou earned $value3 points!\n\nCome back tomorrow for another chance!';
  }

  @override
  String get gameUiHigherOrLower => 'Higher or Lower 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Already Played Today!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'You played on $value1/$value2/$value3.\n\nCome back tomorrow to build a new streak!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'You have already played today.\n\nCome back tomorrow for another chance!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Streak: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Points: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Will the next number be higher or lower?';

  @override
  String get gameUiLower => 'Lower';

  @override
  String get gameUiHigher => 'Higher';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'True or False Blitz ⚡';

  @override
  String get gameUiTimeSUp => 'Time\'s Up!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Correct answers: $value1\nBest streak: $value2\n${value3}You earned $value4 points!\n\nCome back tomorrow for another round!';
  }

  @override
  String get gameUiStreakBonus20 => 'Streak bonus: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'Is the shown answer true or false?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 questions across $value2 categories';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'You have $value1 seconds. Each correct answer earns $value2 points. A wrong answer costs $value3 seconds. Reach a streak of 5 for a +20 bonus.';
  }

  @override
  String get gameUiRoundTimer => 'Round timer';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 seconds';
  }

  @override
  String get gameUiStart => 'Start';

  @override
  String get gameUiTrue => 'True';

  @override
  String get gameUiFalse => 'False';

  @override
  String get gameUiCommandMatch26b0e70 => 'Command Match 🔗';

  @override
  String get gameUiAllMatched => 'All Matched!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Mistakes: $value1\nYou earned $value2 points!\n\nCome back tomorrow for new commands!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Round $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Tap a command, then tap its meaning.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Now tap the matching meaning.';

  @override
  String get gameUiPortMaster9c730cf => 'Port Master 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Port Master!';

  @override
  String get gameUiOutOfLives => 'Out of Lives';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Correct answers: $value1\nYou earned $value2 points!\n\nCome back tomorrow for another round!';
  }

  @override
  String get gameUiYouEarned10Points => 'You earned 10 points!';

  @override
  String get gameUiYouWin => 'You win!';

  @override
  String gameUiWins(String value1) {
    return '$value1 wins!';
  }

  @override
  String get gameUiXWins => 'X wins!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) wins!';
  }

  @override
  String get gameUiComputerWins => 'Computer wins';

  @override
  String get gameUiOWins => 'O wins!';

  @override
  String get gameUiPlayer2OWins => 'Player 2 (O) wins!';

  @override
  String get gameUiItSADraw => 'It\'s a draw';

  @override
  String get gameUiYourTurn => 'Your turn';

  @override
  String gameUiSTurn(String value1) {
    return '$value1\'s turn';
  }

  @override
  String get gameUiComputerIsThinking => 'Computer is thinking';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Player $value1 to move';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 to move';
  }

  @override
  String get gameUiPlayer2ToMove => 'Player 2 to move';

  @override
  String get gameUiNewRound => 'New round';

  @override
  String get gameUiVsComputer => 'Vs computer';

  @override
  String get gameUi2Players => '2 players';

  @override
  String get gameUiYou => 'You';

  @override
  String get gameUiDraws => 'Draws';

  @override
  String get gameUiPlayer2 => 'Player 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Cell $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Play again';

  @override
  String get gameUiConnectFourWin20Points => 'Connect Four win: 20 points!';

  @override
  String get gameUiBotWins => 'Bot wins!';

  @override
  String get gameUiRed => 'Red';

  @override
  String get gameUiYellow => 'Yellow';

  @override
  String get gameUiBoardFullDraw => 'Board full — draw';

  @override
  String get gameUiBotIsThinking => 'Bot is thinking';

  @override
  String get gameUiBotTurn => 'Bot turn';

  @override
  String get gameUiNewGame => 'New game';

  @override
  String get gameUiVsBot => 'Vs Bot';

  @override
  String get gameUi2Player => '2 Player';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Play against the bot · tap a column to drop a disc';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Two players · tap a column to drop a disc';

  @override
  String gameUiColumn(String value1) {
    return 'Column $value1';
  }

  @override
  String get gameUiYouRed => 'You · Red';

  @override
  String get gameUiRedPlayer1 => 'Red · Player 1';

  @override
  String get gameUiBotYellow => 'Bot · Yellow';

  @override
  String get gameUiYellowPlayer2 => 'Yellow · Player 2';

  @override
  String get gameUiLudoMatchStats => 'Ludo match stats';

  @override
  String get gameUiNoCompletedMatchesYet => 'No completed matches yet.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Played $value1  ·  Won $value2  ·  Lost $value3';
  }

  @override
  String get gameUiClose => 'Close';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Ludo champion! You earned 50 points.';

  @override
  String get gameUiNewLudoGame => 'New Ludo game';

  @override
  String get gameUiBotOpponents => 'Bot opponents';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Starting a new match replaces your saved game.';

  @override
  String get gameUiCancel => 'Cancel';

  @override
  String get gameUiStartGame => 'Start game';

  @override
  String get gameUiPlayerColours => 'Player colours';

  @override
  String get gameUiApply => 'Apply';

  @override
  String get gameUiMatchStats => 'Match stats';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 wins by checkmate';
  }

  @override
  String get gameUiBlack => 'Black';

  @override
  String get gameUiWhite => 'White';

  @override
  String get gameUiComputerWinsByCheckmate => 'Computer wins by checkmate';

  @override
  String get gameUiYouWinByCheckmate => 'You win by checkmate';

  @override
  String get gameUiDrawByStalemate => 'Draw by stalemate';

  @override
  String get gameUiDraw => 'Draw';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Check';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Checkmate! You earned 50 points.';

  @override
  String get gameUiStartANewGame => 'Start a new game?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Changing the player mode replaces the saved match.';

  @override
  String get gameUiComputer => 'Computer';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · White / Player 2 · Black';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'You are White · Computer is Black';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (White) · Computer (Black)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'You are Black · Computer is White';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Black) · Computer (White)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 rolls first';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 rolls again';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 to roll';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Snake and Ladders win: 100 points!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Changing players replaces the saved game.';

  @override
  String get gameUiStartANewLevel => 'Start a new level?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Changing levels replaces the saved game.';

  @override
  String get gameUiChangeLevel => 'Change level';

  @override
  String get gameUiPlayers => 'Players';

  @override
  String get gameUiPlayAgainstBot => 'Play against bot';

  @override
  String get gameUi3Players => '3 players';

  @override
  String get gameUi4Players => '4 players';

  @override
  String get gameUiLevel1709305 => 'Level';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Level $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 players · Level $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Roll';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 on $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Unable to load question: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Correct Answer!';

  @override
  String get gameUiWrongAnswer => 'Wrong Answer';

  @override
  String get gameUiYouClaimedYourReward => 'You claimed your reward!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Added to your total points.';

  @override
  String get gameUiTheCorrectAnswerWas => 'The correct answer was:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 point reward lost.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Your existing points were not deducted.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Come back tomorrow and try again.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Unable to load question.';

  @override
  String get gameUiYourReward677fa6e => 'Your Reward';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 POINTS';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Answer correctly to claim it!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Come back tomorrow for another round.';

  @override
  String get gameUiGreen => 'Green';

  @override
  String get gameUiBlue => 'Blue';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 is thinking';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: choose a piece';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: roll the dice';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dice $value1';
  }

  @override
  String get gameUiRollDice => 'Roll dice';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 piece $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Player $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'You need 20 points to use a hint.';

  @override
  String get gameUiHintPurchaseFailed => 'Could not purchase a hint. Please try again.';

  @override
  String get gameUiChessKing => 'king';

  @override
  String get gameUiChessQueen => 'queen';

  @override
  String get gameUiChessRook => 'rook';

  @override
  String get gameUiChessBishop => 'bishop';

  @override
  String get gameUiChessKnight => 'knight';

  @override
  String get gameUiChessPawn => 'pawn';

  @override
  String get gameUiChessEmpty => 'empty';

  @override
  String get gameSceneLampAndFlowers => 'Lamp and flowers';

  @override
  String get gameSceneGardenFriends => 'Garden friends';

  @override
  String get gameSceneUnderwaterExplorers => 'Underwater explorers';

  @override
  String get gameSceneOceanOrca => 'Ocean orca';

  @override
  String get gameSceneFoxInTheMeadow => 'Fox in the meadow';

  @override
  String get gameSceneYellowSubmarine => 'Yellow submarine';

  @override
  String get gameSceneTurkeyInTheClearing => 'Turkey in the clearing';

  @override
  String get gameSceneSafariWateringHole => 'Safari watering hole';

  @override
  String get gameSceneJungleCompanions => 'Jungle companions';

  @override
  String get gameSceneGoldenPuppyGarden => 'Golden puppy garden';

  @override
  String get gameSceneSeaTurtleReef => 'Sea turtle reef';

  @override
  String get gameSceneCoralReefFriends => 'Coral reef friends';

  @override
  String get gameSceneSharedClownfish => 'Shared clownfish';

  @override
  String get gameSceneLittleDinosaur => 'Little dinosaur';

  @override
  String get gameSceneSafariCompanions => 'Safari companions';

  @override
  String get gameSceneSwirlingFlowers => 'Swirling flowers';

  @override
  String get gameSceneGardenKitten => 'Garden kitten';

  @override
  String get gameSceneBlueOcean => 'Blue ocean';

  @override
  String get gameSceneCastlePrincess => 'Castle princess';

  @override
  String get gameSceneRedCar => 'Red car';

  @override
  String get gameSceneGardenPuppy => 'Garden puppy';

  @override
  String get gameSceneSpaceExplorer => 'Space explorer';

  @override
  String get gameSceneEnchantedReadingForest => 'Enchanted reading forest';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps infinity cycle';

  @override
  String get gameSceneAnsible => 'Ansible';

  @override
  String get gameSceneAws => 'AWS';

  @override
  String get gameSceneAzure => 'Azure';

  @override
  String get gameSceneBashScripting => 'Bash Scripting';

  @override
  String get gameSceneDocker => 'Docker';

  @override
  String get gameSceneGcp => 'GCP';

  @override
  String get gameSceneGit => 'Git';

  @override
  String get gameSceneHybridCloud => 'Hybrid Cloud';

  @override
  String get gameSceneIbmCloud => 'IBM Cloud';

  @override
  String get gameSceneJavascript => 'JavaScript';

  @override
  String get gameSceneJenkins => 'Jenkins';

  @override
  String get gameSceneKubernetes => 'Kubernetes';

  @override
  String get gameSceneLinux => 'Linux';

  @override
  String get gameSceneMultiCloud => 'Multi Cloud';

  @override
  String get gameSceneNetworking => 'Networking';

  @override
  String get gameSceneOracleCloud => 'Oracle Cloud';

  @override
  String get gameScenePerl => 'Perl';

  @override
  String get gameScenePowershell => 'PowerShell';

  @override
  String get gameScenePython => 'Python';

  @override
  String get gameSceneRuby => 'Ruby';

  @override
  String get gameSceneTerraform => 'Terraform';

  @override
  String get gameSceneWinterFestivalFair => 'Winter festival fair';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Armored hero close-up';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Armored hero in crimson';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Dark plumeria blossoms';

  @override
  String get gameSceneMangroveBoardwalk => 'Mangrove boardwalk';

  @override
  String get gameSceneTropicalPalmReflections => 'Tropical palm reflections';

  @override
  String get gameSceneMaskedFigureInShadow => 'Masked figure in shadow';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Electric companion at sunset';

  @override
  String get gameSceneTrainerAndFireDragon => 'Trainer and fire dragon';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Jewel-studded wrestling mask';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Wrestler in red brushstrokes';

  @override
  String get gameSceneWrestlingChampionSalute => 'Wrestling champion salute';

  @override
  String get gameSceneMorningAtTheBakery => 'Morning at the bakery';

  @override
  String get gameSceneGreenhousePottingBench => 'Greenhouse potting bench';

  @override
  String get gameSceneHarborFishingBoat => 'Harbor fishing boat';

  @override
  String get gameSceneAtticObservatory => 'Attic observatory';

  @override
  String get gameSceneToyMakerSWorkshop => 'Toy maker\'s workshop';

  @override
  String get gameSceneWoodlandCampsite => 'Woodland campsite';

  @override
  String get gameSceneAfternoonMusicRoom => 'Afternoon music room';

  @override
  String get gameSceneSeasideIceCreamStand => 'Seaside ice cream stand';

  @override
  String get gameSceneLibraryReadingNook => 'Library reading nook';

  @override
  String get gameSceneSewingStudio => 'Sewing studio';

  @override
  String get gameSceneFruitMarket => 'Fruit market';

  @override
  String get gameSceneKoiCourtyard => 'Koi courtyard';

  @override
  String get gameSceneArtistSAtelier => 'Artist\'s atelier';

  @override
  String get gameSceneMountainRailway => 'Mountain railway';

  @override
  String get gameSceneCountryKitchen => 'Country kitchen';

  @override
  String get gameScenePotteryWorkshop => 'Pottery workshop';

  @override
  String get gameSceneBeachPicnic => 'Beach picnic';

  @override
  String get gameSceneFlowerShop => 'Flower shop';

  @override
  String get gameSceneClockmakerSWorkshop => 'Clockmaker\'s workshop';

  @override
  String get gameSceneRainyCafeTerrace => 'Rainy cafe terrace';

  @override
  String get gameSceneCastleHerbGarden => 'Castle herb garden';

  @override
  String get gameSceneClassroomArtCorner => 'Classroom art corner';

  @override
  String get gameSceneAquariumShop => 'Aquarium shop';

  @override
  String get gameSceneAutumnLeafCollection => 'Autumn leaf collection';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Lone tree beneath the moon';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Autumn blossom on a branch';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Fox among green leaves';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Canoe on a lily-covered lake';

  @override
  String get gameSceneDewDropsOnALeaf => 'Dew drops on a leaf';

  @override
  String get gameSceneStagInATurquoiseLake => 'Stag in a turquoise lake';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Bicycle beneath an orange moon';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'White tiger above the valley';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Two trees in blue water';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Fishing beside a faithful dog';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Lilies beside a mountain lake';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Deer at the pink riverside';

  @override
  String get gameSceneTropicalHutAtSunset => 'Tropical hut at sunset';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Fox overlooking an alpine valley';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Sunset through an enchanted grove';

  @override
  String get learningControlTitle => 'DevOps Learning';

  @override
  String get learningControlAllCategories => 'All categories';

  @override
  String get learningControlSearchCards => 'Search cards';

  @override
  String get learningControlClearSearch => 'Clear search';

  @override
  String get learningControlCategory => 'Category';

  @override
  String get learningControlShowAll => 'Show all cards';

  @override
  String learningControlShowSaved(int count) {
    return 'Show saved cards ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Turn shuffle off';

  @override
  String get learningControlShuffleOn => 'Shuffle cards';

  @override
  String get learningControlAutoOff => 'Stop auto swap';

  @override
  String get learningControlAutoOn => 'Auto swap every 10 seconds';

  @override
  String get learningControlNoSaved => 'No saved cards yet';

  @override
  String get learningControlNoMatches => 'No matching cards';

  @override
  String get learningControlResetFilters => 'Reset filters';

  @override
  String get learningControlPrevious => 'Previous';

  @override
  String get learningControlNext => 'Next';

  @override
  String get learningControlProgress => 'Progress';

  @override
  String get learningControlRemoveSaved => 'Remove from saved';

  @override
  String get learningControlSaveCard => 'Save card';

  @override
  String get learningControlExample => 'Example';

  @override
  String get learningControlCopyExample => 'Copy example';

  @override
  String get learningControlExampleCopied => 'Example copied';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Level $value1 completed';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Play level $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Complete level $value1 to unlock';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Daily Login Bonus';

  @override
  String get sharedDialogThanksForComingBack => 'Thanks for coming back!';

  @override
  String get sharedDialogDailyRewardAdded => 'Your daily reward has been added to your total points.';

  @override
  String get sharedDialogAwesome => 'Awesome!';

  @override
  String get accountWelcomeGuest => 'Guest';

  @override
  String get accountWelcomeGuestUser => 'Guest User';

  @override
  String get accountWelcomeUser => 'User';

  @override
  String get accountWelcomePlayingAsGuest => 'Playing as Guest';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Connect Google Account';

  @override
  String get accountWelcomeGoogleConnected => 'Google account connected successfully! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Sign-in was cancelled.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Failed to connect: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Sign Out';

  @override
  String get accountWelcomeSignOutTitle => 'Sign Out?';

  @override
  String get accountWelcomeSignOutMessage => 'Are you sure you want to sign out? You will need to sign in again to access your saved progress.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Sign out failed: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Reset App Data?';

  @override
  String get accountWelcomeResetAppMessage => 'This will permanently delete ALL your points, streaks, game history, and settings. You will be signed out and returned to the start screen. This cannot be undone.';

  @override
  String get accountWelcomeResetEverything => 'Reset Everything';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Reset failed: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Cancel';

  @override
  String get accountWelcomeResetAppData => 'Reset App Data';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Clear all points, streaks, and settings';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz App';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Translation not available yet';

  @override
  String get accountWelcomeContinueWithGoogle => 'Continue with Google';

  @override
  String get accountWelcomeSigningIn => 'Signing in...';

  @override
  String get accountWelcomeOr => 'OR';

  @override
  String get accountWelcomeContinueAsGuest => 'Continue as Guest';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'You can sign in later from your profile.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'You can start as a guest and sign in later.';

  @override
  String get accountWelcomeGreetingGuest => 'Welcome';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Welcome, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google Sign-In completed, but no user account was returned.';

  @override
  String get accountWelcomeErrorEmailExists => 'This email already has an account using another sign-in method.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'This Google account is already linked to another account.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'The Google authentication credential is invalid or expired.';

  @override
  String get accountWelcomeErrorUserDisabled => 'This account has been disabled.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google Sign-In is currently not enabled.';

  @override
  String get accountWelcomeErrorNetwork => 'Network error. Please check your internet connection and try again.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Too many sign-in attempts. Please wait and try again.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'No additional error information.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google Sign-In failed.\n\nCode: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google Sign-In error:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Unable to continue as guest. Please try again.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google Sign-In will be available soon.';

  @override
  String get accountWelcomeLoginTagline => 'Learn • Practice • Compete • Earn';

  @override
  String get accountWelcomeCountryRegion => 'Country / region';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Country / region: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Search country';

  @override
  String get accountWelcomeCountryNotSelected => 'Not selected';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Why DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ practice questions';

  @override
  String get accountWelcomeFeatureLanguages => 'Multi-language support';

  @override
  String get accountWelcomeFeatureStreaks => 'Streaks & Leaderboards';

  @override
  String get accountWelcomeFeatureGames => 'Games & Challenges';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud & DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonus & Rewards';

  @override
  String get accountWelcomePracticeOnTheGo => 'Practice on the go';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Install the Android app and learn offline, anywhere.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Get it on Google Play';

  @override
  String achLocStreakTitle(String days) {
    return '$days Day Streak';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Maintain a $days-day streak.';
  }

  @override
  String get achLocYearStreakTitle => '1 Year Streak';

  @override
  String get achLocFirstQuizTitle => 'First Quiz';

  @override
  String get achLocFirstQuizDescription => 'Complete your first quiz.';

  @override
  String get achLocQuiz10Title => 'Quiz Explorer';

  @override
  String get achLocQuiz10Description => 'Complete 10 quizzes.';

  @override
  String get achLocPoints1000Title => '1000 Points';

  @override
  String get achLocPoints1000Description => 'Earn 1000 total points in Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Perfect Score';

  @override
  String get achLocPerfectScoreDescription => 'Score 100% in any quiz.';

  @override
  String get achLocQuiz25Title => 'Quiz Enthusiast';

  @override
  String get achLocQuiz25Description => 'Complete 25 quizzes.';

  @override
  String get achLocQuiz50Title => 'Quiz Master';

  @override
  String get achLocQuiz50Description => 'Complete 50 quizzes.';

  @override
  String get achLocQuiz100Title => 'Century Club';

  @override
  String get achLocQuiz100Description => 'Complete 100 quizzes.';

  @override
  String get achLocQuiz250Title => 'Quiz Legend';

  @override
  String get achLocQuiz250Description => 'Complete 250 quizzes.';

  @override
  String get achLocPoints5000Title => '5,000 Points';

  @override
  String get achLocPoints5000Description => 'Earn 5,000 total points.';

  @override
  String get achLocPoints10000Title => '10,000 Points';

  @override
  String get achLocPoints10000Description => 'Earn 10,000 total points.';

  @override
  String get achLocPoints50000Title => '50,000 Points';

  @override
  String get achLocPoints50000Description => 'Earn 50,000 total points.';

  @override
  String get achLocPoints100000Title => '100,000 Points';

  @override
  String get achLocPoints100000Description => 'Earn 100,000 total points.';

  @override
  String get achLocDaily1Title => 'Daily Starter';

  @override
  String get achLocDaily1Description => 'Complete your first Daily Quiz.';

  @override
  String get achLocDaily7Title => 'Daily Habit';

  @override
  String get achLocDaily7Description => 'Complete 7 Daily Quizzes.';

  @override
  String get achLocDaily30Title => 'Daily Champion';

  @override
  String get achLocDaily30Description => 'Complete 30 Daily Quizzes.';

  @override
  String get achLocSets5Title => 'Set Starter';

  @override
  String get achLocSets5Description => 'Finish 5 quiz sets.';

  @override
  String get achLocSets25Title => 'Set Collector';

  @override
  String get achLocSets25Description => 'Finish 25 quiz sets.';

  @override
  String get achLocSets50Title => 'Set Master';

  @override
  String get achLocSets50Description => 'Finish 50 quiz sets.';

  @override
  String get achLocSets100Title => 'Set Legend';

  @override
  String get achLocSets100Description => 'Finish 100 quiz sets.';

  @override
  String get achLocCert1Title => 'First Certificate';

  @override
  String get achLocCert1Description => 'Earn your first category certificate.';

  @override
  String get achLocCert5Title => 'Certified Pro';

  @override
  String get achLocCert5Description => 'Earn 5 category certificates.';

  @override
  String get achLocCert21Title => 'Fully Certified';

  @override
  String get achLocCert21Description => 'Earn a certificate in all 21 categories.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Free Feb 7-14 each year';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Free Mar 8-15 each year';

  @override
  String get achLocThemeLight => 'Light';

  @override
  String get achLocThemeDark => 'Dark';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Sunset';

  @override
  String get achLocThemeCoffee => 'Coffee';

  @override
  String get achLocThemeTea => 'Tea';

  @override
  String get achLocThemeOcean => 'Ocean';

  @override
  String get achLocThemeSolarFlare => 'Solar Flare';

  @override
  String get achLocThemeForest => 'Forest';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Cyber Purple';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Midnight';

  @override
  String get achLocThemeDarkGrey => 'Dark Grey';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Valentine Day';

  @override
  String get achLocThemeDqSpecial => 'DQ Special';

  @override
  String get achLocThemeArmy => 'Army';

  @override
  String get achLocThemeSpiderMan => 'Spider-Man';

  @override
  String get achLocThemeKrrish => 'Krrish';

  @override
  String get achLocThemeIronMan => 'Iron Man';

  @override
  String get achLocThemeCaptainAmerica => 'Captain America';

  @override
  String get achLocThemeThor => 'Thor';

  @override
  String get achLocThemeHulk => 'Hulk';

  @override
  String get achLocThemeBlackWidow => 'Black Widow';

  @override
  String get achLocThemeHawkeye => 'Hawkeye';

  @override
  String get achLocThemeBlackPanther => 'Black Panther';

  @override
  String get achLocThemeScarletWitch => 'Scarlet Witch';

  @override
  String get achLocThemeVision => 'Vision';

  @override
  String get achLocThemeAntMan => 'Ant-Man';

  @override
  String get achLocThemeCaptainMarvel => 'Captain Marvel';

  @override
  String get achLocThemeDoctorStrange => 'Doctor Strange';

  @override
  String get achLocThemeAvengers => 'Avengers';

  @override
  String get achLocThemeBatman => 'Batman';

  @override
  String get achLocThemeSuperman => 'Superman';

  @override
  String get achLocThemeWonderWoman => 'Wonder Woman';

  @override
  String get achLocThemeFlash => 'Flash';

  @override
  String get achLocThemeAquaman => 'Aquaman';

  @override
  String get achLocThemeGreenLantern => 'Green Lantern';

  @override
  String get achLocThemeCyborg => 'Cyborg';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'DC Heroes';

  @override
  String get achLocThemeRainbow => 'Rainbow';

  @override
  String get achLocThemeDiamond => 'Diamond';

  @override
  String get achLocThemeLegendary => 'Legendary';

  @override
  String get gameHintCmd001LsLa => 'List all files with details';

  @override
  String get gameHintCmd002Grep => 'Search text using a pattern';

  @override
  String get gameHintCmd003Chmod => 'Change file permissions';

  @override
  String get gameHintCmd004DfH => 'Show free disk space';

  @override
  String get gameHintCmd005TailF => 'Follow a growing log file';

  @override
  String get gameHintCmd006PsAux => 'List running processes';

  @override
  String get gameHintCmd007GitClone => 'Copy a remote repository';

  @override
  String get gameHintCmd008GitStash => 'Shelve uncommitted changes';

  @override
  String get gameHintCmd009GitRebase => 'Reapply commits on a new base';

  @override
  String get gameHintCmd010GitBlame => 'Show who changed each line';

  @override
  String get gameHintCmd011DockerPs => 'List running containers';

  @override
  String get gameHintCmd012DockerBuild => 'Create an image from a Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Show container output';

  @override
  String get gameHintCmd014DockerExec => 'Run a command inside a container';

  @override
  String get gameHintCmd015KubectlGetPods => 'List pods in a namespace';

  @override
  String get gameHintCmd016KubectlApply => 'Create resources from a file';

  @override
  String get gameHintCmd017KubectlDescribe => 'Show detailed resource info';

  @override
  String get gameHintCmd018KubectlScale => 'Change the number of replicas';

  @override
  String get gameHintCmd019TerraformInit => 'Download providers and set up';

  @override
  String get gameHintCmd020TerraformPlan => 'Preview infrastructure changes';

  @override
  String get gameHintCmd021TerraformApply => 'Create or update infrastructure';

  @override
  String get gameHintCmd022TerraformDestroy => 'Remove managed infrastructure';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Run an automation playbook';

  @override
  String get gameHintCmd024Ping => 'Test reachability with ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Show the path to a host';

  @override
  String get gameHintCmd026Curl => 'Transfer data from a URL';

  @override
  String get gameHintCmd027Ssh => 'Log in to a remote machine securely';

  @override
  String get gameHintCmd028CrontabE => 'Edit scheduled jobs';

  @override
  String get gameHintCmd029SystemctlStatus => 'Check a service state';

  @override
  String get gameHintCmd030HelmInstall => 'Deploy a chart to Kubernetes';

  @override
  String get gameHintWord001Git => 'Tracks changes in source code.';

  @override
  String get gameHintWord002Aws => 'Amazon\'s cloud platform.';

  @override
  String get gameHintWord003Api => 'A contract that lets software systems communicate.';

  @override
  String get gameHintWord004Dns => 'Translates domain names into IP addresses.';

  @override
  String get gameHintWord005Cli => 'A text-based interface for running commands.';

  @override
  String get gameHintWord006Cpu => 'The processor that executes instructions.';

  @override
  String get gameHintWord007Ram => 'Temporary memory used by running programs.';

  @override
  String get gameHintWord008Ssh => 'Secure protocol for remote shell access.';

  @override
  String get gameHintWord009Yaml => 'A human-readable data serialization format.';

  @override
  String get gameHintWord010Linux => 'Open-source operating system kernel and family.';

  @override
  String get gameHintWord011Bash => 'A popular Unix command shell.';

  @override
  String get gameHintWord012Cloud => 'On-demand computing delivered over a network.';

  @override
  String get gameHintWord013Docker => 'A platform for building and running containers.';

  @override
  String get gameHintWord014Azure => 'Microsoft\'s cloud platform.';

  @override
  String get gameHintWord015Python => 'A widely used scripting and programming language.';

  @override
  String get gameHintWord016Github => 'A popular hosted Git collaboration service.';

  @override
  String get gameHintWord017Bgp => 'Routing protocol that exchanges routes between autonomous systems.';

  @override
  String get gameHintWord018Jenkins => 'An automation server often used for CI.';

  @override
  String get gameHintWord019Port => 'A numbered endpoint used by network services.';

  @override
  String get gameHintWord020Proxy => 'A server that forwards requests for clients.';

  @override
  String get gameHintWord021Cache => 'A fast store for frequently reused data.';

  @override
  String get gameHintWord022Cron => 'Unix scheduler for recurring commands.';

  @override
  String get gameHintWord023Bicep => 'Azure\'s declarative language for infrastructure as code.';

  @override
  String get gameHintWord024Apigee => 'Google Cloud platform for centralized API management.';

  @override
  String get gameHintWord025Root => 'Privileged administrator account on Unix-like systems.';

  @override
  String get gameHintWord026Nginx => 'Web server and reverse proxy.';

  @override
  String get gameHintWord027Redis => 'In-memory data store often used as a cache.';

  @override
  String get gameHintWord028Mysql => 'Popular relational database system.';

  @override
  String get gameHintWord029Ruby => 'Programming language used by tools such as Chef.';

  @override
  String get gameHintWord030Helm => 'Package manager commonly used with Kubernetes.';

  @override
  String get gameHintWord031Pod => 'Smallest deployable unit in Kubernetes.';

  @override
  String get gameHintWord032Image => 'Read-only template used to create a container.';

  @override
  String get gameHintWord033Build => 'Creates an artifact from source and dependencies.';

  @override
  String get gameHintWord034Deploy => 'Releases an application into an environment.';

  @override
  String get gameHintWord035Terraform => 'HashiCorp tool for infrastructure as code.';

  @override
  String get gameHintWord036Ansible => 'Agentless automation and configuration tool.';

  @override
  String get gameHintWord037Kubectl => 'Command-line client for Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform abbreviation.';

  @override
  String get gameHintWord039Gitops => 'Operational model that uses Git as the source of truth.';

  @override
  String get gameHintWord040Pipeline => 'Automated sequence of build, test, and release stages.';

  @override
  String get gameHintWord041Container => 'Isolated process packaged with its dependencies.';

  @override
  String get gameHintWord042Cluster => 'Group of machines managed as a shared system.';

  @override
  String get gameHintWord043Ingress => 'Kubernetes API object for external HTTP routing.';

  @override
  String get gameHintWord044Firewall => 'Filters network traffic according to security rules.';

  @override
  String get gameHintWord045Subnet => 'Logical subdivision of an IP network.';

  @override
  String get gameHintWord046Gateway => 'Network node that connects different networks.';

  @override
  String get gameHintWord047Router => 'Forwards packets between networks.';

  @override
  String get gameHintWord048Switch => 'Connects devices within a local network.';

  @override
  String get gameHintWord049Repository => 'Managed storage for source code or packages.';

  @override
  String get gameHintWord050Systemd => 'Linux init system and service manager.';

  @override
  String get gameHintWord051Journalctl => 'Command used to read systemd journal logs.';

  @override
  String get gameHintWord052Permission => 'Rule that controls who can read, write, or execute.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud managed PostgreSQL-compatible database.';

  @override
  String get gameHintWord054Configmap => 'Kubernetes object for non-secret configuration.';

  @override
  String get gameHintWord055Secret => 'Kubernetes object intended for sensitive data.';

  @override
  String get gameHintWord056Persistent => 'Describes storage that survives a workload restart.';

  @override
  String get gameHintWord057Volume => 'Filesystem storage mounted into a container.';

  @override
  String get gameHintWord058Storage => 'Persistent place for files, objects, or blocks.';

  @override
  String get gameHintWord059Replica => 'Copy of a workload instance maintained for scale or reliability.';

  @override
  String get gameHintWord060Deployment => 'Kubernetes controller for stateless application pods.';

  @override
  String get gameHintWord061Dockerfile => 'Instructions used to build a Docker image.';

  @override
  String get gameHintWord062Database => 'Organized store queried by applications.';

  @override
  String get gameHintWord063Automation => 'Using software to perform repeatable tasks without manual steps.';

  @override
  String get gameHintWord064Anthos => 'Google Cloud platform for managing clusters across environments.';

  @override
  String get gameHintWord065Bigquery => 'Google Cloud service for large-scale data analytics.';

  @override
  String get gameHintWord066Bigtable => 'Google Cloud wide-column NoSQL database for analytics.';

  @override
  String get gameHintWord067Loadbalancer => 'Distributes incoming traffic among multiple backends.';

  @override
  String get gameHintWord068Prometheus => 'Monitoring system that stores time-series metrics.';

  @override
  String get gameHintWord069Grafana => 'Platform for querying and visualizing observability data.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud managed NoSQL JSON document database.';

  @override
  String get gameHintWord071Cloudtrail => 'AWS service that records API activity for auditing.';

  @override
  String get gameHintWord072Statefulset => 'Kubernetes controller for workloads that need stable identity.';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes controller that runs a pod on selected nodes.';

  @override
  String get gameHintWord074Serviceaccount => 'Kubernetes identity used by a workload or process.';

  @override
  String get gameHintWord075Networkpolicy => 'Kubernetes resource that controls pod network traffic.';

  @override
  String get gameHintWord076Certificate => 'Digital document used to establish identity in TLS.';

  @override
  String get gameHintWord077Encryption => 'Transforms data so only authorized parties can read it.';

  @override
  String get gameHintWord078Observability => 'Ability to infer system behavior from its outputs.';

  @override
  String get gameHintWord079Coredns => 'DNS server commonly used inside Kubernetes clusters.';

  @override
  String get gameHintWord080Crossplane => 'Project for managing cloud resources through Kubernetes APIs.';

  @override
  String get gameHintWord081Failover => 'Switch to a standby component after a failure.';

  @override
  String get gameHintWord082Idempotency => 'Property where repeating an operation has the same effect as doing it once.';

  @override
  String get gameHintWord083Dataflow => 'Google Cloud service for stream and batch data processing.';

  @override
  String get gameHintWord084Orchestration => 'Coordinated management of multiple automated workloads.';

  @override
  String get gameHintWord085Dataplex => 'Google Cloud service for discovering and governing enterprise data.';

  @override
  String get gameHintWord086Serverless => 'Execution model where infrastructure management is abstracted away.';

  @override
  String get gameHintWord087Distributed => 'System whose components run across multiple networked machines.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud managed Apache Spark and Hadoop environment.';

  @override
  String get gameHintWord089Dynamodb => 'AWS NoSQL database often used for Terraform state locking.';

  @override
  String get gameHintWord090Provisioning => 'Preparing infrastructure or resources for use.';

  @override
  String get gameHintWord091Elasticsearch => 'Search engine commonly used for centralized logging.';

  @override
  String get gameHintWord092Etcd => 'Key-value store that holds Kubernetes cluster state.';

  @override
  String get gameHintWord093Authentication => 'Process of verifying who a user or service is.';

  @override
  String get gameHintWord094Authorization => 'Process of deciding what an identity is allowed to do.';

  @override
  String get gameHintWord095Expressroute => 'Azure service for dedicated private connectivity to data centers.';

  @override
  String get gameHintWord096Configuration => 'Settings that determine how software behaves.';

  @override
  String get gameHintWord097Infrastructure => 'Compute, network, and storage resources supporting applications.';

  @override
  String get gameHintWord098Fastconnect => 'Oracle Cloud service for dedicated private network connections.';

  @override
  String get gameHintWord099Containerd => 'Industry-standard container runtime used by Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Container orchestration platform.';

  @override
  String get gameHintWord101Http => 'Application protocol used to request web resources.';

  @override
  String get gameHintWord102Https => 'Encrypted version of the web request protocol.';

  @override
  String get gameHintWord103Tcp => 'Transport protocol providing reliable ordered delivery.';

  @override
  String get gameHintWord104Udp => 'Connectionless transport protocol used for datagrams.';

  @override
  String get gameHintWord105Tls => 'Protocol securing data exchanged over a network.';

  @override
  String get gameHintWord106Ssl => 'Older predecessor of the modern transport security protocol.';

  @override
  String get gameHintWord107Ftp => 'Traditional protocol for transferring files.';

  @override
  String get gameHintWord108Sftp => 'File transfer protocol carried over a secure shell connection.';

  @override
  String get gameHintWord109Smtp => 'Protocol used to send email between servers.';

  @override
  String get gameHintWord110Snmp => 'Protocol used to manage and monitor network devices.';

  @override
  String get gameHintWord111Icmp => 'Protocol carrying network errors and ping messages.';

  @override
  String get gameHintWord112Arp => 'Resolves local IPv4 addresses to hardware addresses.';

  @override
  String get gameHintWord113Dhcp => 'Automatically leases IP configuration to network clients.';

  @override
  String get gameHintWord114Nat => 'Rewrites network addresses as packets cross a gateway.';

  @override
  String get gameHintWord115Vpn => 'Encrypted tunnel connecting remote networks or users.';

  @override
  String get gameHintWord116Vpc => 'Isolated virtual network in a public cloud.';

  @override
  String get gameHintWord117Vlan => 'Logical separation of a switched network.';

  @override
  String get gameHintWord118Wan => 'Network spanning a broad geographical area.';

  @override
  String get gameHintWord119Lan => 'Network connecting devices within a local area.';

  @override
  String get gameHintWord120Cdn => 'Distributed edge network that caches delivered content.';

  @override
  String get gameHintWord121Cidr => 'Notation expressing a network prefix with a slash length.';

  @override
  String get gameHintWord122Host => 'A computer or endpoint connected to a network.';

  @override
  String get gameHintWord123Hostname => 'Human-readable name assigned to a networked machine.';

  @override
  String get gameHintWord124Domain => 'Named administrative area in the internet naming system.';

  @override
  String get gameHintWord125Zone => 'Administrative portion of a DNS namespace.';

  @override
  String get gameHintWord126Record => 'An individual entry in a DNS database.';

  @override
  String get gameHintWord127Aaaa => 'DNS record type resolving a name to an IPv6 address.';

  @override
  String get gameHintWord128Ptr => 'DNS record type used for reverse address lookups.';

  @override
  String get gameHintWord129Txt => 'DNS record type that stores text values.';

  @override
  String get gameHintWord130Cname => 'DNS record that makes one name an alias of another.';

  @override
  String get gameHintWord131Route => 'A path entry directing packets toward a destination.';

  @override
  String get gameHintWord132Routing => 'Selecting paths for traffic between networks.';

  @override
  String get gameHintWord133Packet => 'A unit of data transmitted across a network.';

  @override
  String get gameHintWord134Protocol => 'Agreed rules for communication between systems.';

  @override
  String get gameHintWord135Ack => 'TCP flag acknowledging receipt of data.';

  @override
  String get gameHintWord136Bandwidth => 'Capacity of a communication link.';

  @override
  String get gameHintWord137Latency => 'Delay before a request or packet receives a response.';

  @override
  String get gameHintWord138Throughput => 'Amount of useful work or data processed per unit time.';

  @override
  String get gameHintWord139Mtu => 'Largest packet size a link can transmit without fragmentation.';

  @override
  String get gameHintWord140Alpn => 'TLS extension negotiating an application-layer protocol.';

  @override
  String get gameHintWord141Grep => 'Searches text lines for a matching pattern.';

  @override
  String get gameHintWord142Sed => 'Stream editor commonly used for text substitutions.';

  @override
  String get gameHintWord143Lscpu => 'Linux command displaying processor architecture and core details.';

  @override
  String get gameHintWord144Find => 'Searches a directory tree using file predicates.';

  @override
  String get gameHintWord145Lsblk => 'Linux command listing block devices and their relationships.';

  @override
  String get gameHintWord146Sort => 'Orders lines of text.';

  @override
  String get gameHintWord147Uniq => 'Filters adjacent duplicate lines.';

  @override
  String get gameHintWord148Head => 'Prints the beginning of a file.';

  @override
  String get gameHintWord149Tail => 'Prints the end of a file and can follow appended logs.';

  @override
  String get gameHintWord150Cat => 'Concatenates files and prints their contents.';

  @override
  String get gameHintWord151Cut => 'Extracts selected fields or character columns from lines.';

  @override
  String get gameHintWord152Tee => 'Copies standard input to files and standard output.';

  @override
  String get gameHintWord153Echo => 'Writes its arguments to standard output.';

  @override
  String get gameHintWord154Printf => 'Prints formatted text from a shell or program.';

  @override
  String get gameHintWord155Touch => 'Updates file timestamps or creates an empty file.';

  @override
  String get gameHintWord156Mkdir => 'Creates directories.';

  @override
  String get gameHintWord157Rmdir => 'Removes empty directories.';

  @override
  String get gameHintWord158Chmod => 'Changes Unix file permission bits.';

  @override
  String get gameHintWord159Chown => 'Changes file ownership.';

  @override
  String get gameHintWord160Chgrp => 'Changes the group ownership of a file.';

  @override
  String get gameHintWord161Pwd => 'Prints the current working directory.';

  @override
  String get gameHintWord162Apt => 'Package management tool used by Debian-based systems.';

  @override
  String get gameHintWord163Top => 'Interactive display of processes and system resource usage.';

  @override
  String get gameHintWord164Agent => 'Software component executing or reporting work on a host.';

  @override
  String get gameHintWord165Kill => 'Sends a signal to a process by its identifier.';

  @override
  String get gameHintWord166Signal => 'Notification delivered to a process by the operating system.';

  @override
  String get gameHintWord167Sigkill => 'Unix signal that immediately terminates a process.';

  @override
  String get gameHintWord168Nice => 'Starts a process with an adjusted scheduling priority.';

  @override
  String get gameHintWord169Renice => 'Changes scheduling priority for a running process.';

  @override
  String get gameHintWord170Jobs => 'Lists jobs managed by the current shell.';

  @override
  String get gameHintWord171Nohup => 'Runs a command while ignoring hangup signals.';

  @override
  String get gameHintWord172Screen => 'Terminal multiplexer that supports detachable sessions.';

  @override
  String get gameHintWord173Uptime => 'Reports how long a system has been running.';

  @override
  String get gameHintWord174Uname => 'Prints system and kernel information.';

  @override
  String get gameHintWord175Whoami => 'Prints the effective current user name.';

  @override
  String get gameHintWord176Umask => 'Sets the permission mask used when creating files.';

  @override
  String get gameHintWord177Usermod => 'Linux command that modifies an existing user account.';

  @override
  String get gameHintWord178Crontab => 'Edits or lists scheduled recurring shell jobs.';

  @override
  String get gameHintWord179Findmnt => 'Linux command displaying mounted filesystem information.';

  @override
  String get gameHintWord180Mount => 'Attaches a filesystem to the directory tree.';

  @override
  String get gameHintWord181Sigterm => 'Unix signal requesting graceful process termination.';

  @override
  String get gameHintWord182Fstab => 'System table describing filesystems to mount.';

  @override
  String get gameHintWord183Swap => 'Disk-backed space used to supplement physical memory.';

  @override
  String get gameHintWord184Tmpfs => 'Temporary filesystem backed by virtual memory.';

  @override
  String get gameHintWord185Proc => 'Linux virtual filesystem exposing process and kernel information.';

  @override
  String get gameHintWord186Syslog => 'Standard logging protocol and message format.';

  @override
  String get gameHintWord187Dmesg => 'Displays messages from the kernel ring buffer.';

  @override
  String get gameHintWord188Free => 'Reports used and available system memory.';

  @override
  String get gameHintWord189Stat => 'Displays detailed file metadata.';

  @override
  String get gameHintWord190Lsof => 'Lists open files and the processes holding them.';

  @override
  String get gameHintWord191Netstat => 'Displays network connections and routing information.';

  @override
  String get gameHintWord192Checksum => 'Calculated value used to detect changes or corruption in data.';

  @override
  String get gameHintWord193Ping => 'Tests network reachability using echo requests.';

  @override
  String get gameHintWord194Traceroute => 'Shows intermediate hops toward a network destination.';

  @override
  String get gameHintWord195Resolver => 'DNS component that looks up answers to name queries.';

  @override
  String get gameHintWord196Nslookup => 'Looks up DNS names and addresses.';

  @override
  String get gameHintWord197Telnet => 'Legacy unencrypted remote terminal protocol.';

  @override
  String get gameHintWord198Tftp => 'Simple UDP-based file transfer protocol.';

  @override
  String get gameHintWord199Daemon => 'Background service process on Unix-like systems.';

  @override
  String get gameHintWord200Kernel => 'Core component managing operating system resources.';

  @override
  String get gameHintWord201Commit => 'A recorded snapshot of changes in version control.';

  @override
  String get gameHintWord202Branch => 'Movable reference representing a line of development.';

  @override
  String get gameHintWord203Merge => 'Combines histories from different development lines.';

  @override
  String get gameHintWord204Rebase => 'Replays commits on top of a different base commit.';

  @override
  String get gameHintWord205Clone => 'Creates a local copy of a remote repository.';

  @override
  String get gameHintWord206Fetch => 'Downloads remote objects and references without merging.';

  @override
  String get gameHintWord207Pull => 'Fetches changes and integrates them into the current branch.';

  @override
  String get gameHintWord208Push => 'Sends local commits to a remote repository.';

  @override
  String get gameHintWord209Stash => 'Temporarily saves uncommitted working-tree changes.';

  @override
  String get gameHintWord210Revert => 'Creates a commit that undoes another commit.';

  @override
  String get gameHintWord211Reset => 'Moves a Git reference and can reset index or working files.';

  @override
  String get gameHintWord212Reflog => 'Local history of updates to Git references.';

  @override
  String get gameHintWord213Diff => 'Displays differences between versions or files.';

  @override
  String get gameHintWord214Status => 'Reports staged, modified, and untracked files.';

  @override
  String get gameHintWord215Checkout => 'Git command for switching revisions or restoring files.';

  @override
  String get gameHintWord216Tag => 'Named reference commonly marking a release.';

  @override
  String get gameHintWord217Remote => 'Named connection to another repository.';

  @override
  String get gameHintWord218Origin => 'Default name assigned to a cloned repository remote.';

  @override
  String get gameHintWord219Upstream => 'Remote tracking branch associated with a local branch.';

  @override
  String get gameHintWord220Worktree => 'A checked-out working directory linked to a repository.';

  @override
  String get gameHintWord221Registry => 'Service storing and distributing container images.';

  @override
  String get gameHintWord222Digest => 'Content-based identifier for a container image.';

  @override
  String get gameHintWord223Layer => 'Filesystem changes forming part of a container image.';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile instruction defining the main container executable.';

  @override
  String get gameHintWord225Cmd => 'Dockerfile instruction specifying a default command or arguments.';

  @override
  String get gameHintWord226Workdir => 'Dockerfile instruction setting the working directory.';

  @override
  String get gameHintWord227Copy => 'Dockerfile instruction copying build-context files into an image.';

  @override
  String get gameHintWord228Add => 'Dockerfile instruction that can also unpack local archives.';

  @override
  String get gameHintWord229Run => 'Dockerfile instruction executing a build-time command.';

  @override
  String get gameHintWord230Env => 'Dockerfile instruction defining environment variables.';

  @override
  String get gameHintWord231Arg => 'Dockerfile instruction declaring a build-time variable.';

  @override
  String get gameHintWord232Expose => 'Dockerfile instruction documenting a container port.';

  @override
  String get gameHintWord233User => 'Dockerfile instruction choosing the account for later commands.';

  @override
  String get gameHintWord234Healthcheck => 'Instruction describing how to test container health.';

  @override
  String get gameHintWord235Shebang => 'Script opening line identifying the interpreter to execute.';

  @override
  String get gameHintWord236Compose => 'Docker tool for defining and running multi-container applications.';

  @override
  String get gameHintWord237Bridge => 'Common Docker network driver for local container networking.';

  @override
  String get gameHintWord238Overlay => 'Network spanning containers on multiple hosts.';

  @override
  String get gameHintWord239None => 'Docker network driver that disables container networking.';

  @override
  String get gameHintWord240Prune => 'Removes unused container resources.';

  @override
  String get gameHintWord241Replicaset => 'Kubernetes controller maintaining a desired pod count.';

  @override
  String get gameHintWord242Service => 'Kubernetes abstraction providing stable access to pods.';

  @override
  String get gameHintWord243Endpoints => 'Addresses backing a Kubernetes service.';

  @override
  String get gameHintWord244Namespace => 'Logical scope grouping Kubernetes resources.';

  @override
  String get gameHintWord245Node => 'Worker machine hosting Kubernetes pods.';

  @override
  String get gameHintWord246Kubelet => 'Agent on each node that manages pod execution.';

  @override
  String get gameHintWord247Pvc => 'Kubernetes request for persistent storage.';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes control-plane component exposing the cluster API.';

  @override
  String get gameHintWord249Role => 'Named set of permissions in role-based access control.';

  @override
  String get gameHintWord250Resourcequota => 'Kubernetes object limiting resource consumption in a namespace.';

  @override
  String get gameHintWord251Selector => 'Expression matching resources by their labels.';

  @override
  String get gameHintWord252Taint => 'Node property that repels pods lacking a matching toleration.';

  @override
  String get gameHintWord253Toleration => 'Pod setting allowing scheduling onto a tainted node.';

  @override
  String get gameHintWord254Cordon => 'Marks a Kubernetes node unschedulable.';

  @override
  String get gameHintWord255Uncordon => 'Makes a cordoned node schedulable again.';

  @override
  String get gameHintWord256Drain => 'Safely evicts workloads before node maintenance.';

  @override
  String get gameHintWord257Job => 'Kubernetes workload that runs a task to completion.';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes workload that creates jobs on a schedule.';

  @override
  String get gameHintWord259Readiness => 'Probe indicating whether a container can receive traffic.';

  @override
  String get gameHintWord260Liveness => 'Probe indicating whether a container needs restarting.';

  @override
  String get gameHintWord261Canary => 'Release approach exposing a new version to a small traffic share.';

  @override
  String get gameHintWord262Rolling => 'Update strategy gradually replacing running instances.';

  @override
  String get gameHintWord263Rollback => 'Restores a previously working application version.';

  @override
  String get gameHintWord264Rollout => 'Progressive deployment of a new application version.';

  @override
  String get gameHintWord265Recreate => 'Deployment strategy stopping old pods before starting replacements.';

  @override
  String get gameHintWord266Blue => 'One of the two environments in a blue-green release.';

  @override
  String get gameHintWord267Green => 'The other environment in a blue-green release.';

  @override
  String get gameHintWord268Artifact => 'Versioned output produced by a build pipeline.';

  @override
  String get gameHintWord269Staging => 'Pre-production environment used for release validation.';

  @override
  String get gameHintWord270Production => 'Environment serving real end users.';

  @override
  String get gameHintWord271Release => 'A software version delivered for use.';

  @override
  String get gameHintWord272Version => 'Identifier distinguishing a software revision.';

  @override
  String get gameHintWord273Revision => 'An identifiable version of a document or codebase.';

  @override
  String get gameHintWord274Webhook => 'HTTP notification sent when an event occurs.';

  @override
  String get gameHintWord275Runbook => 'Documented procedure for operating or recovering a system.';

  @override
  String get gameHintWord276Workspace => 'Directory or scope containing working project resources.';

  @override
  String get gameHintWord277Credentials => 'Authentication material used to access a system.';

  @override
  String get gameHintWord278Trigger => 'Event or condition that starts a pipeline.';

  @override
  String get gameHintWord279Parameter => 'Named input supplied to a job or function.';

  @override
  String get gameHintWord280Access => 'Ability to use a resource subject to authorization.';

  @override
  String get gameHintWord281Module => 'Reusable group of infrastructure definitions.';

  @override
  String get gameHintWord282Provider => 'Terraform plugin connecting configuration to an external API.';

  @override
  String get gameHintWord283Resource => 'Managed infrastructure object declared in configuration.';

  @override
  String get gameHintWord284Variable => 'Named input value used by configuration or code.';

  @override
  String get gameHintWord285Output => 'Exposed value returned by an infrastructure configuration.';

  @override
  String get gameHintWord286Tfstate => 'File suffix associated with Terraform state snapshots.';

  @override
  String get gameHintWord287Tfvars => 'File suffix used for Terraform input variable values.';

  @override
  String get gameHintWord288Backend => 'Terraform configuration controlling state storage.';

  @override
  String get gameHintWord289Plan => 'Terraform preview of proposed infrastructure changes.';

  @override
  String get gameHintWord290Apply => 'Terraform operation that executes proposed changes.';

  @override
  String get gameHintWord291Destroy => 'Terraform operation removing managed infrastructure.';

  @override
  String get gameHintWord292Import => 'Brings an existing resource under infrastructure management.';

  @override
  String get gameHintWord293Refresh => 'Synchronizes recorded state with actual infrastructure.';

  @override
  String get gameHintWord294Validate => 'Checks configuration syntax and internal consistency.';

  @override
  String get gameHintWord295Fmt => 'Terraform command applying canonical configuration formatting.';

  @override
  String get gameHintWord296Init => 'Initializes Terraform providers and the working directory.';

  @override
  String get gameHintWord297Executor => 'Jenkins worker slot that can run a build.';

  @override
  String get gameHintWord298Dependencies => 'Relationships requiring one component before another.';

  @override
  String get gameHintWord299Drift => 'Difference between declared and actual infrastructure state.';

  @override
  String get gameHintWord300Locking => 'Prevents concurrent writers from changing shared state.';

  @override
  String get gameHintWord301Playbook => 'Ansible document describing automation plays and tasks.';

  @override
  String get gameHintWord302Inventory => 'Ansible collection of managed hosts and groups.';

  @override
  String get gameHintWord303Facts => 'System information gathered about managed hosts.';

  @override
  String get gameHintWord304Task => 'An individual unit of work in automation.';

  @override
  String get gameHintWord305Handler => 'Ansible task executed when notified by a change.';

  @override
  String get gameHintWord306Notify => 'Ansible directive queuing a handler after a changed task.';

  @override
  String get gameHintWord307Become => 'Ansible setting enabling privilege escalation.';

  @override
  String get gameHintWord308Vault => 'Ansible feature for encrypting sensitive automation data.';

  @override
  String get gameHintWord309Register => 'Ansible directive saving a task result into a variable.';

  @override
  String get gameHintWord310When => 'Ansible keyword controlling conditional task execution.';

  @override
  String get gameHintWord311Loop => 'Repeats an automation task over a collection.';

  @override
  String get gameHintWord312Include => 'Loads reusable automation content dynamically.';

  @override
  String get gameHintWord313Tags => 'Labels used to select subsets of automation tasks.';

  @override
  String get gameHintWord314Template => 'File rendered with variables before deployment.';

  @override
  String get gameHintWord315Jinja => 'Template language used by Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Hiding implementation details behind a simpler interface.';

  @override
  String get gameHintWord317Agile => 'Iterative software delivery approach emphasizing feedback.';

  @override
  String get gameHintWord318Puppet => 'Configuration management tool using declarative manifests.';

  @override
  String get gameHintWord319Airflow => 'Platform for scheduling and orchestrating workflow DAGs.';

  @override
  String get gameHintWord320Argo => 'Cloud-native project family including a GitOps delivery controller.';

  @override
  String get gameHintWord321Rds => 'AWS managed relational database service abbreviation.';

  @override
  String get gameHintWord322Sqs => 'AWS managed message queue abbreviation.';

  @override
  String get gameHintWord323Sns => 'AWS publish-subscribe notification service abbreviation.';

  @override
  String get gameHintWord324Ses => 'AWS email sending service abbreviation.';

  @override
  String get gameHintWord325Iam => 'Cloud identity and access management abbreviation.';

  @override
  String get gameHintWord326Kms => 'AWS encryption key management service abbreviation.';

  @override
  String get gameHintWord327Waf => 'Firewall filtering application-layer web requests.';

  @override
  String get gameHintWord328Eks => 'AWS managed Kubernetes service abbreviation.';

  @override
  String get gameHintWord329Ecs => 'AWS managed container orchestration service abbreviation.';

  @override
  String get gameHintWord330Ecr => 'AWS container image registry abbreviation.';

  @override
  String get gameHintWord331Aurora => 'AWS relational database compatible with MySQL and PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'AWS analytics data warehouse.';

  @override
  String get gameHintWord333Neptune => 'AWS managed graph database.';

  @override
  String get gameHintWord334Elasticache => 'AWS managed in-memory caching service.';

  @override
  String get gameHintWord335Athena => 'AWS service querying object-storage data with SQL.';

  @override
  String get gameHintWord336Glue => 'AWS serverless data integration and ETL service.';

  @override
  String get gameHintWord337Emr => 'AWS platform for managed big-data processing clusters.';

  @override
  String get gameHintWord338Lambda => 'AWS service executing functions without managing servers.';

  @override
  String get gameHintWord339Cloudfront => 'AWS global content delivery network.';

  @override
  String get gameHintWord340Cloudwatch => 'AWS service collecting metrics, logs, and alarms.';

  @override
  String get gameHintWord341Cloudshell => 'AWS browser-based shell environment.';

  @override
  String get gameHintWord342Codecommit => 'AWS managed Git repository service.';

  @override
  String get gameHintWord343Codebuild => 'AWS service compiling source and running build tests.';

  @override
  String get gameHintWord344Codedeploy => 'AWS automated application deployment service.';

  @override
  String get gameHintWord345Codepipeline => 'AWS continuous delivery pipeline service.';

  @override
  String get gameHintWord346Guardduty => 'AWS intelligent threat detection service.';

  @override
  String get gameHintWord347Inspector => 'AWS service assessing workloads for vulnerabilities.';

  @override
  String get gameHintWord348Macie => 'AWS service discovering sensitive data in object storage.';

  @override
  String get gameHintWord349Shield => 'AWS managed DDoS protection service.';

  @override
  String get gameHintWord350Snowball => 'AWS physical appliance for large data transfers.';

  @override
  String get gameHintWord351Snowcone => 'Small rugged device in the AWS offline transfer family.';

  @override
  String get gameHintWord352Datasync => 'AWS automated online data transfer service.';

  @override
  String get gameHintWord353Msk => 'AWS managed Apache Kafka service abbreviation.';

  @override
  String get gameHintWord354Backup => 'Copy of data retained for recovery.';

  @override
  String get gameHintWord355Transcribe => 'AWS service converting speech to text.';

  @override
  String get gameHintWord356Translate => 'AWS service translating text between languages.';

  @override
  String get gameHintWord357Rekognition => 'AWS service analyzing images and video.';

  @override
  String get gameHintWord358Comprehend => 'AWS natural-language analysis service.';

  @override
  String get gameHintWord359Textract => 'AWS service extracting text and tables from documents.';

  @override
  String get gameHintWord360Sagemaker => 'AWS platform for building and deploying machine learning models.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud globally distributed relational database.';

  @override
  String get gameHintWord362Pub => 'Publishing half of the publish-subscribe messaging pattern.';

  @override
  String get gameHintWord363Sub => 'Subscriber half of the publish-subscribe messaging pattern.';

  @override
  String get gameHintWord364Functions => 'Event-driven units of code offered by serverless platforms.';

  @override
  String get gameHintWord365App => 'Short form for a software application.';

  @override
  String get gameHintWord366Engine => 'Execution component in names such as Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Processing capacity supplied by virtual machines or containers.';

  @override
  String get gameHintWord368Network => 'Connected systems exchanging data.';

  @override
  String get gameHintWord369Security => 'Protection of systems and information against threats.';

  @override
  String get gameHintWord370Identity => 'Representation of a user or service used for access decisions.';

  @override
  String get gameHintWord371Monitoring => 'Continuous observation of system health and behavior.';

  @override
  String get gameHintWord372Logging => 'Recording discrete application and system events.';

  @override
  String get gameHintWord373Trace => 'Record of a request path across service calls.';

  @override
  String get gameHintWord374Metrics => 'Numeric measurements of system behavior over time.';

  @override
  String get gameHintWord375Alert => 'Notification that a monitored condition requires attention.';

  @override
  String get gameHintWord376Billing => 'Tracking and charging for consumed cloud services.';

  @override
  String get gameHintWord377Quota => 'Limit on the quantity of a resource that can be consumed.';

  @override
  String get gameHintWord378Region => 'Geographical cloud deployment area containing availability zones.';

  @override
  String get gameHintWord379Tenancy => 'Arrangement describing how customers share infrastructure.';

  @override
  String get gameHintWord380Regional => 'Describes a resource scoped to a cloud region.';

  @override
  String get gameHintWord381Cosmos => 'Name of Azure globally distributed multi-model database.';

  @override
  String get gameHintWord382Synapse => 'Azure analytics platform combining warehousing and data processing.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft cloud-native security information and event platform.';

  @override
  String get gameHintWord384Defender => 'Microsoft security product family protecting cloud workloads.';

  @override
  String get gameHintWord385Entra => 'Microsoft identity product family replacing Azure AD branding.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager abbreviation.';

  @override
  String get gameHintWord387Arc => 'Azure service extending management to resources outside Azure.';

  @override
  String get gameHintWord388Aks => 'Azure managed Kubernetes service abbreviation.';

  @override
  String get gameHintWord389Armor => 'Google Cloud web protection service name suffix.';

  @override
  String get gameHintWord390Blob => 'Azure object-storage data type.';

  @override
  String get gameHintWord391Files => 'Azure service offering managed network file shares.';

  @override
  String get gameHintWord392Disk => 'Block-storage device attached to a virtual machine.';

  @override
  String get gameHintWord393Function => 'Callable block of code that can return a result.';

  @override
  String get gameHintWord394Logic => 'Azure app service category for workflow integration.';

  @override
  String get gameHintWord395Insights => 'Azure application telemetry product name suffix.';

  @override
  String get gameHintWord396Traffic => 'Data flowing between network endpoints.';

  @override
  String get gameHintWord397Manager => 'Azure Resource product name suffix for its control plane.';

  @override
  String get gameHintWord398Bastion => 'Managed or hardened entry point for private host access.';

  @override
  String get gameHintWord399Front => 'First word in Azure global entry-point service Front Door.';

  @override
  String get gameHintWord400Door => 'Second word in Azure global entry-point service Front Door.';

  @override
  String get gameHintWord401Javascript => 'Programming language widely used in browsers and Node runtimes.';

  @override
  String get gameHintWord402Perl => 'Scripting language known for text processing and regular expressions.';

  @override
  String get gameHintWord403Powershell => 'Object-oriented shell and automation language from Microsoft.';

  @override
  String get gameHintWord404Java => 'JVM language used to implement Jenkins.';

  @override
  String get gameHintWord405Json => 'Lightweight data format with objects and arrays.';

  @override
  String get gameHintWord406Xml => 'Markup format using nested named tags.';

  @override
  String get gameHintWord407Html => 'Markup language used to structure web pages.';

  @override
  String get gameHintWord408Css => 'Stylesheet language controlling web presentation.';

  @override
  String get gameHintWord409String => 'Sequence of text characters.';

  @override
  String get gameHintWord410Array => 'Indexed collection of elements.';

  @override
  String get gameHintWord411Hash => 'Associative key-value collection in Ruby and Perl.';

  @override
  String get gameHintWord412Object => 'Runtime value with properties and behavior.';

  @override
  String get gameHintWord413Class => 'Definition used to construct objects in class-based languages.';

  @override
  String get gameHintWord414Method => 'Function associated with an object or class.';

  @override
  String get gameHintWord415Interface => 'Contract describing operations a component exposes.';

  @override
  String get gameHintWord416Subclass => 'Class derived from another class.';

  @override
  String get gameHintWord417Super => 'Keyword used to invoke parent-class behavior.';

  @override
  String get gameHintWord418Protected => 'Visibility level restricting access to class-related contexts.';

  @override
  String get gameHintWord419Exception => 'Runtime condition that interrupts normal control flow.';

  @override
  String get gameHintWord420Regex => 'Pattern notation used for matching text.';

  @override
  String get gameHintWord421Lexical => 'Describes scope determined by source-code structure.';

  @override
  String get gameHintWord422Scalar => 'Single-valued variable category in Perl.';

  @override
  String get gameHintWord423Tuple => 'Immutable ordered collection in Python.';

  @override
  String get gameHintWord424List => 'Mutable ordered collection in Python.';

  @override
  String get gameHintWord425Dict => 'Python built-in mapping type name.';

  @override
  String get gameHintWord426Dictionary => 'Collection mapping keys to associated values.';

  @override
  String get gameHintWord427Set => 'Collection of distinct values.';

  @override
  String get gameHintWord428Boolean => 'Data type representing true or false.';

  @override
  String get gameHintWord429Integer => 'Numeric type representing whole numbers.';

  @override
  String get gameHintWord430Float => 'Numeric type representing floating-point values.';

  @override
  String get gameHintWord431Double => 'Double-precision floating-point type.';

  @override
  String get gameHintWord432Null => 'Value representing the absence of an object or result.';

  @override
  String get gameHintWord433Undefined => 'JavaScript value for a missing assigned value.';

  @override
  String get gameHintWord434Promise => 'JavaScript object representing an eventual asynchronous result.';

  @override
  String get gameHintWord435Async => 'Keyword marking an asynchronous function.';

  @override
  String get gameHintWord436Await => 'Keyword that waits for an asynchronous result.';

  @override
  String get gameHintWord437Callback => 'Function passed to be invoked by another operation.';

  @override
  String get gameHintWord438Closure => 'Function retaining access to its surrounding lexical scope.';

  @override
  String get gameHintWord439Generator => 'Function producing a sequence lazily through yielded values.';

  @override
  String get gameHintWord440Iterator => 'Object advancing through values in a collection.';

  @override
  String get gameHintWord441Print => 'Common function writing a value to output.';

  @override
  String get gameHintWord442Input => 'Python function reading a line from standard input.';

  @override
  String get gameHintWord443Open => 'Function used to obtain a file handle.';

  @override
  String get gameHintWord444Close => 'Operation releasing an open file or connection.';

  @override
  String get gameHintWord445Read => 'Operation obtaining data from a stream or file.';

  @override
  String get gameHintWord446Write => 'Operation sending data to a stream or file.';

  @override
  String get gameHintWord447Append => 'Adds an item to the end of a collection.';

  @override
  String get gameHintWord448Split => 'Breaks text into substrings using a delimiter.';

  @override
  String get gameHintWord449Join => 'Combines a sequence of strings using a separator.';

  @override
  String get gameHintWord450Strip => 'Removes surrounding whitespace from a Python string.';

  @override
  String get gameHintWord451Chomp => 'Removes a trailing record separator in Perl or Ruby.';

  @override
  String get gameHintWord452Map => 'Applies a transformation to each item in a collection.';

  @override
  String get gameHintWord453Filter => 'Keeps collection items satisfying a predicate.';

  @override
  String get gameHintWord454Reduce => 'Combines a collection into an accumulated result.';

  @override
  String get gameHintWord455Range => 'Python type representing an arithmetic sequence of integers.';

  @override
  String get gameHintWord456Length => 'Property or method returning the size of a collection.';

  @override
  String get gameHintWord457Len => 'Python built-in function returning collection size.';

  @override
  String get gameHintWord458Type => 'Python function returning an object type.';

  @override
  String get gameHintWord459Isinstance => 'Python function checking membership in a type hierarchy.';

  @override
  String get gameHintWord460Yield => 'Keyword producing a value from a generator.';

  @override
  String get gameHintWord461Saas => 'Cloud model delivering complete software applications.';

  @override
  String get gameHintWord462Paas => 'Cloud model supplying a managed application development platform.';

  @override
  String get gameHintWord463Iaas => 'Cloud model supplying virtual compute, storage, and networking.';

  @override
  String get gameHintWord464Hybrid => 'Cloud approach combining private and public infrastructure.';

  @override
  String get gameHintWord465Archive => 'Long-term storage of infrequently accessed data.';

  @override
  String get gameHintWord466Public => 'Cloud ownership model offering services to multiple customers.';

  @override
  String get gameHintWord467Private => 'Cloud model dedicated to a single organization.';

  @override
  String get gameHintWord468Scalability => 'Ability to handle growing load by adding resources.';

  @override
  String get gameHintWord469Availability => 'Degree to which a service remains accessible when needed.';

  @override
  String get gameHintWord470Resilience => 'Ability to withstand and recover from failures.';

  @override
  String get gameHintWord471Redundancy => 'Duplicate components reducing single points of failure.';

  @override
  String get gameHintWord472Disaster => 'Major outage addressed by a recovery strategy.';

  @override
  String get gameHintWord473Recovery => 'Restoring service or data after failure.';

  @override
  String get gameHintWord474Replicate => 'Copy data or workloads to another location.';

  @override
  String get gameHintWord475Snapshotting => 'Taking point-in-time copies of data or system state.';

  @override
  String get gameHintWord476Restore => 'Operation recovering data from a saved copy.';

  @override
  String get gameHintWord477Residency => 'Requirement defining the geographical location of stored data.';

  @override
  String get gameHintWord478Compliance => 'Meeting required regulations and organizational controls.';

  @override
  String get gameHintWord479Governance => 'Policies and processes controlling technology usage.';

  @override
  String get gameHintWord480Audit => 'Review of recorded activities and compliance evidence.';

  @override
  String get gameHintWord481Token => 'Credential or symbol representing authorization or identity.';

  @override
  String get gameHintWord482Oauth => 'Authorization framework allowing delegated access.';

  @override
  String get gameHintWord483Saml => 'XML-based standard commonly used for enterprise single sign-on.';

  @override
  String get gameHintWord484Cmdlet => 'A specialized command used in PowerShell pipelines.';

  @override
  String get gameHintWord485Algorithm => 'Defined sequence of steps for solving a computational problem.';

  @override
  String get gameHintWord486Key => 'Value used to control encryption or identify stored data.';

  @override
  String get gameHintWord487Alias => 'Alternative name for a shell command or resource.';

  @override
  String get gameHintWord488Amend => 'Git commit option that replaces the most recent commit.';

  @override
  String get gameHintWord489Allsigned => 'PowerShell execution policy requiring signed scripts.';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell policy requiring signatures on downloaded scripts.';

  @override
  String get gameHintWord491Acl => 'List defining permissions for users or systems.';

  @override
  String get gameHintWord492Uid => 'Numeric identifier assigned to a Unix user.';

  @override
  String get gameHintWord493Setgid => 'Permission bit affecting group identity during execution or inheritance.';

  @override
  String get gameHintWord494Setfacl => 'Linux command setting file access control lists.';

  @override
  String get gameHintWord495Isolation => 'Separation preventing workloads from interfering with each other.';

  @override
  String get gameHintWord496Sighup => 'Unix hangup signal often used to request configuration reloads.';

  @override
  String get gameHintWord497Sigint => 'Unix interrupt signal commonly generated with Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Unix signal pausing a process without terminating it.';

  @override
  String get gameHintWord499Secrets => 'Sensitive values such as passwords and access keys.';

  @override
  String get gameHintWord500Secure => 'Describes a connection protected against unauthorized access.';

  @override
  String get fontSettingsTitle => 'Font';

  @override
  String get fontChangeFont => 'Change Font';

  @override
  String get fontSystemDefault => 'System Default';

  @override
  String get fontPreview => 'Preview';

  @override
  String get fontPreviewSample => 'Learn DevOps one question at a time';

  @override
  String get fontSelected => 'Selected';

  @override
  String get fontLatinOnlyNote => 'Custom fonts apply to Latin letters. Other scripts keep your device\'s font.';

  @override
  String get fontDescSystem => 'Your device\'s built-in font';

  @override
  String get fontDescGeometric => 'Geometric sans-serif';

  @override
  String get fontDescGeometricRounded => 'Geometric rounded sans-serif';

  @override
  String get fontDescFriendly => 'Friendly sans-serif';

  @override
  String get fontDescCondensed => 'Condensed';

  @override
  String get fontDescRounded => 'Rounded sans-serif';

  @override
  String get fontDescRoundedDisplay => 'Rounded display';

  @override
  String gameScene3dScene(String value1) {
    return '3D Scene $value1';
  }
}
