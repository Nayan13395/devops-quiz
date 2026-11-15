// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTour => 'Visite de l\'application';

  @override
  String get skipTour => 'Passer la visite';

  @override
  String get finishTour => 'Terminer la visite';

  @override
  String tourStep(int current, int total) {
    return 'Étape $current sur $total';
  }

  @override
  String get tourMenuTitle => 'Menu de navigation';

  @override
  String get tourSearch => 'Saisissez un sujet ici pour trouver des catégories de quiz.';

  @override
  String get tourCategory => 'Touchez DevOps pour un quiz mixte. Les autres catégories proposent des séries de questions. Enregistrez des questions pour les revoir plus tard.';

  @override
  String get tourMenu => 'Touchez ce bouton pour ouvrir le menu de navigation.';

  @override
  String get tourLearning => 'Ouvrez Apprentissage pour les cartes. Balayez dans toutes les directions, mélangez, activez le défilement automatique ou enregistrez une carte.';

  @override
  String get tourGames => 'Jouez pour gagner des points. Les jeux à niveaux donnent 100 points par niveau terminé ; un indice coûte 20 points.';

  @override
  String get tourAchievements => 'Consultez vos succès ici. Des fenêtres annoncent les nouveaux succès et les thèmes disponibles.';

  @override
  String get tourSettings => 'Choisissez la langue, le thème et le son. Ouvrez Données enregistrées pour vos favoris ou Visite de l\'application pour revoir ce guide.';

  @override
  String get achievementUnlocked => 'Succès débloqué !';

  @override
  String get themeUnlocked => 'Nouveau thème disponible !';

  @override
  String get themeUnlockedMessage => 'Vous pouvez choisir ce thème dans Paramètres > Thèmes.';

  @override
  String get gameSounds => 'Sons du jeu';

  @override
  String get gameSoundsDescription => 'Effets pour les jeux et les quiz. Vérifiez le volume et le mode silencieux de l\'appareil.';

  @override
  String get testSound => 'Tester le son';

  @override
  String get soundSettingBusy => 'Veuillez patienter...';

  @override
  String get soundSettingError => 'Impossible de charger ou d\'enregistrer le réglage du son. Réessayez.';

  @override
  String get soundPlaybackError => 'Impossible de jouer le son. Vérifiez les paramètres audio de l\'appareil ou du navigateur.';

  @override
  String get saveData => 'Données enregistrées';

  @override
  String get learningTranslationUnavailable => 'Cette carte n\'a pas encore été traduite dans la langue sélectionnée.';

  @override
  String get saveQuestion => 'Enregistrer la question';

  @override
  String defaultPortQuestion(String service) {
    return 'Quel est le port par défaut de $service ?';
  }

  @override
  String get removeSavedItem => 'Retirer des éléments enregistrés';

  @override
  String get noSavedData => 'Aucun élément enregistré. Ajoutez des cartes d\'apprentissage ou des questions de quiz aux favoris.';

  @override
  String get savedDataError => 'Impossible de charger ou de mettre à jour les données enregistrées. Réessayez.';

  @override
  String get savedItemUnavailable => 'Cet élément enregistré n\'est plus disponible.';

  @override
  String get correctAnswer => 'Bonne réponse';

  @override
  String get retry => 'Réessayer';

  @override
  String get certificates => 'Certificats';

  @override
  String get whatsNew => 'Nouveautés';

  @override
  String get settings => 'Paramètres';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get lightMode => 'Mode clair';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String get english => 'Anglais';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Commencer le quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Changer de catégorie';

  @override
  String get dailyQuiz => 'Quiz du jour';

  @override
  String get dailyQuizCompleted => 'Quiz du jour terminé';

  @override
  String get dailyQuizCompletedMessage => 'Vous avez déjà terminé le quiz du jour.\n\nRevenez demain pour un nouveau défi !';

  @override
  String get leaderboard => 'Classement';

  @override
  String get shareApp => 'Partager l\'appli';

  @override
  String get rateApp => 'Noter l\'appli';

  @override
  String get about => 'À propos';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Accueil';

  @override
  String get games => 'Jeux';

  @override
  String get referAndEarn => 'Parrainez et gagnez';

  @override
  String get themes => 'Thèmes';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Développeur';

  @override
  String get contact => 'Contact';

  @override
  String get learning => 'Apprentissage';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Connectez-vous avec moi';

  @override
  String get aboutDescription => 'DevOps Quiz aide les apprenants à se préparer aux entretiens et aux certifications grâce à des milliers de questions soigneusement choisies sur Linux, Docker, Kubernetes, les réseaux, Git, Jenkins, Terraform, Ansible et d\'autres technologies DevOps.';

  @override
  String get quizResult => 'Résultat du quiz';

  @override
  String get outstanding => 'Exceptionnel !';

  @override
  String get greatJob => 'Excellent travail !';

  @override
  String get goodEffort => 'Bel effort !';

  @override
  String get keepPracticing => 'Continuez à vous entraîner !';

  @override
  String get dontGiveUp => 'N\'abandonnez pas !';

  @override
  String get shareMessage1 => 'J\'ai obtenu';

  @override
  String get shareMessage2 => 'au quiz DevOps !';

  @override
  String get downloadApp => 'Téléchargez l\'application :';

  @override
  String get score => 'Score';

  @override
  String get points => 'Points';

  @override
  String get percentage => 'Pourcentage';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Bonus score parfait';

  @override
  String get shareScore => 'Partager le score';

  @override
  String get restartQuiz => 'Recommencer le quiz';

  @override
  String get backToCategories => 'Retour aux catégories';

  @override
  String get greatProgress => 'Bravo ! Vous progressez très bien.';

  @override
  String get practiceMore => 'Bon travail ! Encore un peu d\'entraînement et vous ferez encore mieux.';

  @override
  String get keepLearning => 'Continuez à apprendre et réessayez. Vous progresserez avec la pratique.';

  @override
  String get everyExpertStarted => 'Chaque expert a commencé comme débutant. Entraînez-vous et revenez plus fort !';

  @override
  String get quizInstructions => 'Instructions du quiz';

  @override
  String get instruction1 => 'Chaque série contient 25 questions.';

  @override
  String get instruction2 => 'Vous avez 30 secondes par question.';

  @override
  String get instruction3 => 'Vert = bonne réponse.';

  @override
  String get instruction4 => 'Rouge = mauvaise réponse.';

  @override
  String get instruction5 => 'La réponse ne peut pas être modifiée.';

  @override
  String get instruction6 => 'Le bouton Retour sert uniquement à réviser.';

  @override
  String get instruction7 => 'Le score s\'affiche à la fin.';

  @override
  String get instruction8 => 'Chaque bonne réponse rapporte 10 points.';

  @override
  String excellentPerformance(Object expert) {
    return 'Performance excellente ! Vous êtes un $expert.';
  }

  @override
  String get selectCategory => 'Choisir une catégorie';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Choisir une série';

  @override
  String get set => 'Série';

  @override
  String get questions => 'Questions';

  @override
  String get noScoresYet => 'Aucun score pour le moment';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Bienvenue dans DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Salut $name';
  }

  @override
  String get challengeMode => 'Mode défi';

  @override
  String get challenge => 'Défi';

  @override
  String get question => 'Question';

  @override
  String get reward => 'Récompense';

  @override
  String get survivalMode => 'Mode survie';

  @override
  String get speedChallenge => 'Défi de vitesse';

  @override
  String get dailyChallenge => 'Défi du jour';

  @override
  String get ultimateChallenge => 'Défi ultime';

  @override
  String get timeLeft => 'Temps restant';

  @override
  String get completed => 'Terminé';

  @override
  String get locked => 'Verrouillé';

  @override
  String get back => 'Retour';

  @override
  String get next => 'Suivant';

  @override
  String get submit => 'Valider';

  @override
  String get achievements => 'Succès';

  @override
  String get streak => 'Série de jours';

  @override
  String get days => 'Jours';

  @override
  String get tomorrowsReward => 'Récompense de demain';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 J\'ai obtenu $score/$totalQuestions au quiz #DevOps du jour !\n\n🏆 Points : $earnedPoints\n🔥 Bonus : $bonusPoints\n📊 Pourcentage : $percentage%\n\nPouvez-vous battre mon score ?\n\nTéléchargez l\'appli :';
  }

  @override
  String get gameUiSpinWheel => 'Tourner la roue';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Tournez et gagnez des points bonus';

  @override
  String get gameUiScratchCard => 'Carte à gratter';

  @override
  String get gameUiScratchToRevealAReward => 'Grattez pour révéler une récompense';

  @override
  String get gameUiLuckySlots => 'Machines à sous chanceuses';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Lancez les rouleaux et gagnez des points';

  @override
  String get gameUiMysteryDeal => 'Offre mystère';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Choisissez une boîte mystère et répondez';

  @override
  String get gameUiMemoryMatch => 'Jeu de mémoire';

  @override
  String get gameUiMatchDevOpsPairs => 'Associez les paires DevOps';

  @override
  String get gameUiWordGuess => 'Devinez le mot';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Devinez des mots DevOps au fil des niveaux';

  @override
  String get gameUiFindWords => 'Mots à trouver';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Cherchez dans une grille des termes DevOps cachés';

  @override
  String get gameUiSpotTheDifference => 'Trouvez les différences';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Trouvez cinq changements entre deux scènes illustrées';

  @override
  String get gameUiJigsawPuzzle => 'Puzzle';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Reconstituez des images HD partagées d\'animaux et de nature';

  @override
  String get gameUiHighOrLow => 'Plus ou moins';

  @override
  String get gameUiBuildAStreak => 'Construisez une série';

  @override
  String get gameUiTrueOrFalseBlitz => 'Blitz Vrai ou Faux';

  @override
  String get gameUiQuickAnswerQuiz => 'Quiz à réponse rapide';

  @override
  String get gameUiCommandMatch => 'Association de commandes';

  @override
  String get gameUiMatchCommandsToMeanings => 'Associez les commandes à leur signification';

  @override
  String get gameUiPortMaster => 'Maître des ports';

  @override
  String get gameUiGuessDefaultPorts => 'Devinez les ports par défaut';

  @override
  String get gameUiTicTacToe => 'Morpion';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'Morpion O X contre l\'ordinateur';

  @override
  String get gameUiConnectFour => 'Puissance 4';

  @override
  String get gameUiDropFourDiscs => 'Faites tomber quatre jetons';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Course contre des bots';

  @override
  String get gameUiChess => 'Échecs';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Échiquier, coups légaux, deux joueurs';

  @override
  String get gameUiSnakeAndLadders => 'Serpents et échelles';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Jeu de plateau à dés, serpents et échelles, deux joueurs';

  @override
  String get gameUiGames => 'Jeux 🎮';

  @override
  String get gameUiPlayEarn => 'Jouer et gagner';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Jouez et gagnez des points bonus !';

  @override
  String get gameUiSearchGames => 'Rechercher des jeux';

  @override
  String get gameUiClearSearch => 'Effacer la recherche';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Aucun jeu ne correspond à « $value1 »';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Tournez et gagnez des points bonus.';

  @override
  String get gameUiScratchToRevealYourReward => 'Grattez pour révéler votre récompense.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Lancez les rouleaux et gagnez des points.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Choisissez une boîte mystère et répondez correctement pour gagner des points.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Associez les paires DevOps pour gagner des points.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Devinez le terme DevOps en 6 essais.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Cherchez dans une grille des termes DevOps cachés.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Balayez pour trouver des mots DevOps en 500 niveaux.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Trouvez cinq changements entre deux scènes illustrées.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Reconstituez des images HD partagées d\'animaux et de nature.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Construisez une série et encaissez vos points.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Battez la montre avec des réponses rapides.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Blitz Vrai ou Faux 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Associez les commandes à ce qu\'elles font.';

  @override
  String get gameUiCommandMatch670a76e => 'Association de commandes 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Devinez les ports par défaut avec 3 vies.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Maître des ports 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Jouez au O/X contre l\'ordinateur.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Alignez quatre jetons pour gagner.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Faites avancer vos pions en course contre trois bots.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Échecs local à deux joueurs avec coups légaux.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Jouez une partie d\'échecs légale à deux joueurs.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Jeu de plateau à dés pour deux joueurs.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Course jusqu\'à 100. Grimpez les échelles et évitez les serpents.';

  @override
  String get gameUiPlay => 'Jouer';

  @override
  String get gameUiWheelStopped => 'La roue s\'est arrêtée !';

  @override
  String get gameUiYourRewardIs => 'Votre récompense est de';

  @override
  String get gameUiPOINTS => 'POINTS';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Répondez correctement à 1 question du quiz pour obtenir cette récompense.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Mauvaise réponse = récompense perdue.';

  @override
  String get gameUiAnswerQuestion => 'Répondre à la question';

  @override
  String get gameUiSpinWheele449982 => '🎡 Tourner la roue';

  @override
  String get gameUiDailySpin => 'Tour quotidien';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Tournez la roue, puis répondez à une question pour obtenir votre récompense !';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Vous avez déjà utilisé le tour d\'aujourd\'hui.';

  @override
  String get gameUiSpinning => 'La roue tourne...';

  @override
  String get gameUiSPINNOW => 'TOURNER MAINTENANT';

  @override
  String get gameUiCOMEBACKTOMORROW => 'REVENEZ DEMAIN';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Récompense du jour : ⭐ $value1 points';
  }

  @override
  String get gameUiBackToGames => 'Retour aux jeux';

  @override
  String get gameUiSPIN => 'TOURNER';

  @override
  String get gameUiRewardRevealed => 'Récompense révélée !';

  @override
  String get gameUiYouFound => 'Vous avez trouvé';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Carte à gratter';

  @override
  String get gameUiDailyScratch => 'Grattage quotidien';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Grattez la carte pour révéler la récompense du jour !';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Vous avez déjà utilisé la carte à gratter d\'aujourd\'hui.';

  @override
  String get gameUiAlreadyScratched => 'Déjà gratté';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Revenez demain pour une autre récompense.';

  @override
  String get gameUiYouRevealed => 'Vous avez révélé';

  @override
  String get gameUiSCRATCHHERE => 'GRATTEZ ICI  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777 !';

  @override
  String get gameUiLucky777 => '777 chanceux !';

  @override
  String get gameUiYourReward => 'Votre récompense';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Machines à sous chanceuses';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Lancez les rouleaux, puis répondez à une question pour obtenir la récompense !';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Vous avez déjà joué aujourd\'hui.';

  @override
  String get gameUiSPINNING => 'ÇA TOURNE...';

  @override
  String get gameUiROLLNOW => 'LANCER MAINTENANT';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT ! 777 points disponibles !';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Impossible de vérifier l\'état de l\'Offre mystère : $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Boîte $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 POINTS';
  }

  @override
  String get gameUiStartQuestion => 'Commencer la question';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Offre mystère';

  @override
  String get gameUiMysteryDealCompleted => 'Offre mystère terminée !';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Vous avez déjà joué à l\'Offre mystère aujourd\'hui.';

  @override
  String get gameUiTodayYouWon => 'Aujourd\'hui, vous avez gagné';

  @override
  String get gameUiTodaySReward => 'Récompense du jour';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 POINTS';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 POINTS PERDUS';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Revenez demain pour une nouvelle boîte mystère !';

  @override
  String get gameUiChooseYourMysteryBox => 'Choisissez votre boîte mystère';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Chaque boîte contient une récompense cachée comprise entre 10 et 1000 points.';

  @override
  String get gameUiPickOnlyOneBox => 'Choisissez une seule boîte !';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Les $value1 niveaux sont terminés !';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Niveau $value1 terminé !';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Terminé en $value1 coups.\nVous avez gagné $value2 points !';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Terminé en $value1 coups.\nCe niveau avait déjà été réussi.';
  }

  @override
  String get gameUiNextLevel => 'Niveau suivant';

  @override
  String get gameUiDone => 'Terminé';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Jeu de paires mémoire 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Les 100 niveaux sont terminés !';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Vous avez terminé tous les niveaux du jeu de paires mémoire. Bien joué !';

  @override
  String get gameUiChooseLevel => 'Choisir le niveau';

  @override
  String gameUiMoves(String value1) {
    return 'Coups : $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Niveau $value1 sur $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 paires';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Mémorisez le niveau $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Trouvez $value1 paires identiques';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Logo de DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Chapitre 1 · Restaurer le pipeline de build';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Chapitre 2 · Faire évoluer la plateforme cloud';

  @override
  String get gameUiChapter3ProtectProduction => 'Chapitre 3 · Protéger la production';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Utilisez les $value1 lettres restantes pour valider.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Tous les niveaux sont terminés !';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Niveau $value1 terminé !';
  }

  @override
  String get gameUiTryAgain => 'Réessayer';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'Le mot était $value1. Vous avez gagné $value2 points.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'Le mot était $value1. Vous avez gagné $value2 points après $value3 indice.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'Le mot était $value1. Vous avez gagné $value2 points après $value3 indices.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'Le mot était $value1. Le niveau $value2 vous attend toujours.';
  }

  @override
  String get gameUiFinish => 'Terminer';

  @override
  String get gameUiNextLevel254fd73 => 'Niveau suivant';

  @override
  String get gameUiRetryLevel => 'Rejouer le niveau';

  @override
  String get gameUiHowToPlay => 'Comment jouer';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Chaque niveau comporte un mot DevOps. Les mots de moins de cinq lettres commencent sans lettre offerte ; les mots plus longs commencent avec une lettre offerte. Utilisez le bac de lettres pour construire la réponse, puis appuyez sur Entrée. Les indices révèlent une autre lettre et coûtent 20 points de votre solde. Chaque niveau terminé rapporte 100 points.';

  @override
  String get gameUiGotIt => 'Compris';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Les $value1 niveaux sont terminés !';
  }

  @override
  String get gameUiEasy => 'Facile';

  @override
  String get gameUiMedium => 'Moyen';

  @override
  String get gameUiHard => 'Difficile';

  @override
  String get gameUiHowToPlay13a6b22 => 'Comment jouer';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Niveau $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Récompense $value1 pts · indices utilisés $value2';
  }

  @override
  String get gameUiHint20Pts => 'Indice · −20 pts';

  @override
  String get gameUiEnter => 'Entrée';

  @override
  String get gameUiDelete => 'Supprimer';

  @override
  String get gameUiDragThroughAWord => 'Faites glisser sur un mot';

  @override
  String get gameUiDragThroughEachWord => 'Faites glisser sur chaque mot';

  @override
  String get gameUiReleaseToSelect => 'Relâchez pour sélectionner';

  @override
  String gameUiFound(String value1) {
    return '$value1 trouvé';
  }

  @override
  String get gameUiNoWordThere => 'Aucun mot ici';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 déjà trouvé';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Cherchez $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Tous les niveaux sont terminés !';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Vous avez trouvé tous les mots et gagné $value1 points.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Vous avez trouvé tous les mots. Ce niveau avait déjà été réussi.';

  @override
  String get gameUiAll500LevelsComplete => 'Les 500 niveaux sont terminés !';

  @override
  String get gameUiReviewLevels => 'Revoir les niveaux';

  @override
  String gameUiLeft(String value1) {
    return '$value1 restant(s)';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 pts';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Impossible d\'enregistrer la progression. Veuillez réessayer.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Vous avez gagné $value1 points !';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Vous avez déjà terminé cette image. Aucun point supplémentaire en cas de nouvelle partie.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Vous avez terminé toutes les images !';

  @override
  String get gameUiLevels => 'Niveaux';

  @override
  String get gameUiPictureB => 'Image B';

  @override
  String get gameUiPictureA => 'Image A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Impossible de charger l\'image. Réessayer';

  @override
  String get gameUiResetZoom => 'Réinitialiser le zoom';

  @override
  String get gameUiZoomBothPictures => 'Zoomer sur les deux images';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Indice · $value1 points par indice';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Impossible de charger la progression. Réessayer';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Niveau $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Toutes les différences ont été trouvées !';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Trouvez $count différences. Touchez chacune d\'elles sur l\'une ou l\'autre image.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Erreurs : $value1  ·  Indices : $value2 (−$value3 pts)  ·  $value4 niveaux terminés';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Niveau suivant : $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Puzzle $value1 terminé !';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Image terminée en $value1 coups. Vous avez gagné $value2 points.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Image terminée en $value1 coups.';
  }

  @override
  String get gameUiNextPuzzle => 'Puzzle suivant';

  @override
  String get gameUiAllPuzzlesComplete => 'Tous les puzzles sont terminés';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Pièce de puzzle $value1 sur $value2, correctement placée';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Pièce de puzzle $value1 sur $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Choisir le puzzle';

  @override
  String get gameUiShufflePieces => 'Mélanger les pièces';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Impossible de charger l\'image du puzzle.';

  @override
  String get gameUiPreviousPuzzle => 'Puzzle précédent';

  @override
  String gameUiPuzzle(String value1) {
    return 'Puzzle $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 coups';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Faites glisser des pièces pour les échanger, ou touchez deux pièces.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 puzzles résolus  ·  $value3 points chacun';
  }

  @override
  String get gameUiGameOver => 'Partie terminée';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Le nombre était $value1.\nSérie : $value2\nVous avez gagné $value3 points !\n\nRevenez demain pour une nouvelle chance !';
  }

  @override
  String get gameUiHigherOrLower => 'Plus ou moins 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Déjà joué aujourd\'hui !';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Vous avez joué le $value1/$value2/$value3.\n\nRevenez demain pour construire une nouvelle série !';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Vous avez déjà joué aujourd\'hui.\n\nRevenez demain pour une nouvelle chance !';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Série : $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Points : $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Le prochain nombre sera-t-il plus grand ou plus petit ?';

  @override
  String get gameUiLower => 'Plus petit';

  @override
  String get gameUiHigher => 'Plus grand';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Blitz Vrai ou Faux ⚡';

  @override
  String get gameUiTimeSUp => 'Temps écoulé !';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Bonnes réponses : $value1\nMeilleure série : $value2\n${value3}Vous avez gagné $value4 points !\n\nRevenez demain pour une nouvelle manche !';
  }

  @override
  String get gameUiStreakBonus20 => 'Bonus de série : +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'La réponse affichée est-elle vraie ou fausse ?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 questions réparties dans $value2 catégories';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Vous avez $value1 secondes. Chaque bonne réponse rapporte $value2 points. Une mauvaise réponse coûte $value3 secondes. Atteignez une série de 5 pour un bonus de +20.';
  }

  @override
  String get gameUiRoundTimer => 'Minuteur de manche';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 secondes';
  }

  @override
  String get gameUiStart => 'Démarrer';

  @override
  String get gameUiTrue => 'Vrai';

  @override
  String get gameUiFalse => 'Faux';

  @override
  String get gameUiCommandMatch26b0e70 => 'Association de commandes 🔗';

  @override
  String get gameUiAllMatched => 'Tout est associé !';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Erreurs : $value1\nVous avez gagné $value2 points !\n\nRevenez demain pour de nouvelles commandes !';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Manche $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Touchez une commande, puis touchez sa signification.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Touchez maintenant la signification correspondante.';

  @override
  String get gameUiPortMaster9c730cf => 'Maître des ports 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Maître des ports !';

  @override
  String get gameUiOutOfLives => 'Plus de vies';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Bonnes réponses : $value1\nVous avez gagné $value2 points !\n\nRevenez demain pour une nouvelle manche !';
  }

  @override
  String get gameUiYouEarned10Points => 'Vous avez gagné 10 points !';

  @override
  String get gameUiYouWin => 'Vous gagnez !';

  @override
  String gameUiWins(String value1) {
    return '$value1 gagne !';
  }

  @override
  String get gameUiXWins => 'X gagne !';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) gagne !';
  }

  @override
  String get gameUiComputerWins => 'L\'ordinateur gagne';

  @override
  String get gameUiOWins => 'O gagne !';

  @override
  String get gameUiPlayer2OWins => 'Le joueur 2 (O) gagne !';

  @override
  String get gameUiItSADraw => 'Match nul';

  @override
  String get gameUiYourTurn => 'À vous de jouer';

  @override
  String gameUiSTurn(String value1) {
    return 'Tour de $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'L\'ordinateur réfléchit';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Le joueur $value1 doit jouer';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 doit jouer';
  }

  @override
  String get gameUiPlayer2ToMove => 'Le joueur 2 doit jouer';

  @override
  String get gameUiNewRound => 'Nouvelle manche';

  @override
  String get gameUiVsComputer => 'Contre l\'ordinateur';

  @override
  String get gameUi2Players => '2 joueurs';

  @override
  String get gameUiYou => 'Vous';

  @override
  String get gameUiDraws => 'Matchs nuls';

  @override
  String get gameUiPlayer2 => 'Joueur 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Case $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Rejouer';

  @override
  String get gameUiConnectFourWin20Points => 'Victoire au Puissance 4 : 20 points !';

  @override
  String get gameUiBotWins => 'Le bot gagne !';

  @override
  String get gameUiRed => 'Rouge';

  @override
  String get gameUiYellow => 'Jaune';

  @override
  String get gameUiBoardFullDraw => 'Plateau plein — match nul';

  @override
  String get gameUiBotIsThinking => 'Le bot réfléchit';

  @override
  String get gameUiBotTurn => 'Tour du bot';

  @override
  String get gameUiNewGame => 'Nouvelle partie';

  @override
  String get gameUiVsBot => 'Contre le bot';

  @override
  String get gameUi2Player => '2 joueurs';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Jouez contre le bot · touchez une colonne pour déposer un jeton';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Deux joueurs · touchez une colonne pour déposer un jeton';

  @override
  String gameUiColumn(String value1) {
    return 'Colonne $value1';
  }

  @override
  String get gameUiYouRed => 'Vous · Rouge';

  @override
  String get gameUiRedPlayer1 => 'Rouge · Joueur 1';

  @override
  String get gameUiBotYellow => 'Bot · Jaune';

  @override
  String get gameUiYellowPlayer2 => 'Jaune · Joueur 2';

  @override
  String get gameUiLudoMatchStats => 'Statistiques des parties de Ludo';

  @override
  String get gameUiNoCompletedMatchesYet => 'Aucune partie terminée pour l\'instant.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Jouées $value1  ·  Gagnées $value2  ·  Perdues $value3';
  }

  @override
  String get gameUiClose => 'Fermer';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Champion du Ludo ! Vous avez gagné 50 points.';

  @override
  String get gameUiNewLudoGame => 'Nouvelle partie de Ludo';

  @override
  String get gameUiBotOpponents => 'Adversaires bots';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Démarrer une nouvelle partie remplace votre partie sauvegardée.';

  @override
  String get gameUiCancel => 'Annuler';

  @override
  String get gameUiStartGame => 'Démarrer la partie';

  @override
  String get gameUiPlayerColours => 'Couleurs des joueurs';

  @override
  String get gameUiApply => 'Appliquer';

  @override
  String get gameUiMatchStats => 'Statistiques des parties';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 gagne par échec et mat';
  }

  @override
  String get gameUiBlack => 'Noir';

  @override
  String get gameUiWhite => 'Blanc';

  @override
  String get gameUiComputerWinsByCheckmate => 'L\'ordinateur gagne par échec et mat';

  @override
  String get gameUiYouWinByCheckmate => 'Vous gagnez par échec et mat';

  @override
  String get gameUiDrawByStalemate => 'Match nul par pat';

  @override
  String get gameUiDraw => 'Match nul';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Échec';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Échec et mat ! Vous avez gagné 50 points.';

  @override
  String get gameUiStartANewGame => 'Commencer une nouvelle partie ?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Changer le mode de jeu remplace la partie enregistrée.';

  @override
  String get gameUiComputer => 'Ordinateur';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Blancs / Joueur 2 · Noirs';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Vous jouez les Blancs · L\'ordinateur joue les Noirs';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Blancs) · Ordinateur (Noirs)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Vous jouez les Noirs · L\'ordinateur joue les Blancs';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Noirs) · Ordinateur (Blancs)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 lance les dés en premier';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 relance les dés';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 doit lancer les dés';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Victoire au jeu des serpents et échelles : 100 points !';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Changer les joueurs remplace la partie enregistrée.';

  @override
  String get gameUiStartANewLevel => 'Commencer un nouveau niveau ?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Changer de niveau remplace la partie enregistrée.';

  @override
  String get gameUiChangeLevel => 'Changer de niveau';

  @override
  String get gameUiPlayers => 'Joueurs';

  @override
  String get gameUiPlayAgainstBot => 'Jouer contre le robot';

  @override
  String get gameUi3Players => '3 joueurs';

  @override
  String get gameUi4Players => '4 joueurs';

  @override
  String get gameUiLevel1709305 => 'Niveau';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Niveau $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 joueurs · Niveau $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Lancer';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 sur $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Impossible de charger la question : $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Bonne réponse !';

  @override
  String get gameUiWrongAnswer => 'Mauvaise réponse';

  @override
  String get gameUiYouClaimedYourReward => 'Vous avez réclamé votre récompense !';

  @override
  String get gameUiAddedToYourTotalPoints => 'Ajouté à votre total de points.';

  @override
  String get gameUiTheCorrectAnswerWas => 'La bonne réponse était :';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Récompense de $value1 point(s) perdue.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Vos points existants n\'ont pas été déduits.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Revenez demain et réessayez.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Impossible de charger la question.';

  @override
  String get gameUiYourReward677fa6e => 'Votre récompense';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 POINTS';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Répondez correctement pour la réclamer !';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Revenez demain pour une autre manche.';

  @override
  String get gameUiGreen => 'Vert';

  @override
  String get gameUiBlue => 'Bleu';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 réfléchit';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1 : choisissez un pion';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1 : lancez le dé';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dé $value1';
  }

  @override
  String get gameUiRollDice => 'Lancer le dé';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 pion $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Joueur $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Robot $value1';
  }

  @override
  String get gameUiBot => 'Robot';

  @override
  String get gameUiHintInsufficientPoints => 'Vous avez besoin de 20 points pour utiliser un indice.';

  @override
  String get gameUiHintPurchaseFailed => 'Impossible d\'acheter un indice. Veuillez réessayer.';

  @override
  String get gameUiChessKing => 'roi';

  @override
  String get gameUiChessQueen => 'dame';

  @override
  String get gameUiChessRook => 'tour';

  @override
  String get gameUiChessBishop => 'fou';

  @override
  String get gameUiChessKnight => 'cavalier';

  @override
  String get gameUiChessPawn => 'pion';

  @override
  String get gameUiChessEmpty => 'vide';

  @override
  String get gameSceneLampAndFlowers => 'Lampe et fleurs';

  @override
  String get gameSceneGardenFriends => 'Amis du jardin';

  @override
  String get gameSceneUnderwaterExplorers => 'Explorateurs sous-marins';

  @override
  String get gameSceneOceanOrca => 'Orque de l\'océan';

  @override
  String get gameSceneFoxInTheMeadow => 'Renard dans la prairie';

  @override
  String get gameSceneYellowSubmarine => 'Sous-marin jaune';

  @override
  String get gameSceneTurkeyInTheClearing => 'Dindon dans la clairière';

  @override
  String get gameSceneSafariWateringHole => 'Point d\'eau du safari';

  @override
  String get gameSceneJungleCompanions => 'Compagnons de la jungle';

  @override
  String get gameSceneGoldenPuppyGarden => 'Jardin du chiot doré';

  @override
  String get gameSceneSeaTurtleReef => 'Récif de la tortue de mer';

  @override
  String get gameSceneCoralReefFriends => 'Amis du récif corallien';

  @override
  String get gameSceneSharedClownfish => 'Poisson-clown partagé';

  @override
  String get gameSceneLittleDinosaur => 'Petit dinosaure';

  @override
  String get gameSceneSafariCompanions => 'Compagnons de safari';

  @override
  String get gameSceneSwirlingFlowers => 'Fleurs tourbillonnantes';

  @override
  String get gameSceneGardenKitten => 'Chaton du jardin';

  @override
  String get gameSceneBlueOcean => 'Océan bleu';

  @override
  String get gameSceneCastlePrincess => 'Princesse du château';

  @override
  String get gameSceneRedCar => 'Voiture rouge';

  @override
  String get gameSceneGardenPuppy => 'Chiot du jardin';

  @override
  String get gameSceneSpaceExplorer => 'Explorateur spatial';

  @override
  String get gameSceneEnchantedReadingForest => 'Forêt de lecture enchantée';

  @override
  String get gameSceneDevopsInfinityCycle => 'Cycle infini DevOps';

  @override
  String get gameSceneAnsible => 'Ansible';

  @override
  String get gameSceneAws => 'AWS';

  @override
  String get gameSceneAzure => 'Azure';

  @override
  String get gameSceneBashScripting => 'Scripts Bash';

  @override
  String get gameSceneDocker => 'Docker';

  @override
  String get gameSceneGcp => 'GCP';

  @override
  String get gameSceneGit => 'Git';

  @override
  String get gameSceneHybridCloud => 'Cloud hybride';

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
  String get gameSceneMultiCloud => 'Multicloud';

  @override
  String get gameSceneNetworking => 'Réseaux';

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
  String get gameSceneWinterFestivalFair => 'Foire du festival d\'hiver';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Gros plan sur un héros en armure';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Héros en armure cramoisie';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Fleurs de frangipanier sombres';

  @override
  String get gameSceneMangroveBoardwalk => 'Promenade en bois dans la mangrove';

  @override
  String get gameSceneTropicalPalmReflections => 'Reflets de palmiers tropicaux';

  @override
  String get gameSceneMaskedFigureInShadow => 'Silhouette masquée dans l\'ombre';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Compagnon électrique au coucher du soleil';

  @override
  String get gameSceneTrainerAndFireDragon => 'Dresseur et dragon de feu';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Masque de catch incrusté de bijoux';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Catcheur en coups de pinceau rouges';

  @override
  String get gameSceneWrestlingChampionSalute => 'Salut du champion de catch';

  @override
  String get gameSceneMorningAtTheBakery => 'Matin à la boulangerie';

  @override
  String get gameSceneGreenhousePottingBench => 'Établi de rempotage de la serre';

  @override
  String get gameSceneHarborFishingBoat => 'Bateau de pêche du port';

  @override
  String get gameSceneAtticObservatory => 'Observatoire du grenier';

  @override
  String get gameSceneToyMakerSWorkshop => 'Atelier du fabricant de jouets';

  @override
  String get gameSceneWoodlandCampsite => 'Campement en forêt';

  @override
  String get gameSceneAfternoonMusicRoom => 'Salle de musique l\'après-midi';

  @override
  String get gameSceneSeasideIceCreamStand => 'Stand de glaces en bord de mer';

  @override
  String get gameSceneLibraryReadingNook => 'Coin lecture de la bibliothèque';

  @override
  String get gameSceneSewingStudio => 'Atelier de couture';

  @override
  String get gameSceneFruitMarket => 'Marché aux fruits';

  @override
  String get gameSceneKoiCourtyard => 'Cour aux carpes koï';

  @override
  String get gameSceneArtistSAtelier => 'Atelier de l\'artiste';

  @override
  String get gameSceneMountainRailway => 'Chemin de fer de montagne';

  @override
  String get gameSceneCountryKitchen => 'Cuisine de campagne';

  @override
  String get gameScenePotteryWorkshop => 'Atelier de poterie';

  @override
  String get gameSceneBeachPicnic => 'Pique-nique à la plage';

  @override
  String get gameSceneFlowerShop => 'Boutique de fleurs';

  @override
  String get gameSceneClockmakerSWorkshop => 'Atelier de l\'horloger';

  @override
  String get gameSceneRainyCafeTerrace => 'Terrasse de café sous la pluie';

  @override
  String get gameSceneCastleHerbGarden => 'Jardin d\'herbes aromatiques du château';

  @override
  String get gameSceneClassroomArtCorner => 'Coin art de la salle de classe';

  @override
  String get gameSceneAquariumShop => 'Boutique d\'aquariums';

  @override
  String get gameSceneAutumnLeafCollection => 'Collection de feuilles d\'automne';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Arbre solitaire sous la lune';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Fleur d\'automne sur une branche';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Renard parmi les feuilles vertes';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Canoë sur un lac couvert de nénuphars';

  @override
  String get gameSceneDewDropsOnALeaf => 'Gouttes de rosée sur une feuille';

  @override
  String get gameSceneStagInATurquoiseLake => 'Cerf dans un lac turquoise';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Vélo sous une lune orange';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Tigre blanc au-dessus de la vallée';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Deux arbres dans l\'eau bleue';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Pêche aux côtés d\'un chien fidèle';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Lys au bord d\'un lac de montagne';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Cerf sur la berge rose';

  @override
  String get gameSceneTropicalHutAtSunset => 'Cabane tropicale au coucher du soleil';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Renard surplombant une vallée alpine';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Coucher de soleil à travers un bosquet enchanté';

  @override
  String get learningControlTitle => 'Apprendre DevOps';

  @override
  String get learningControlAllCategories => 'Toutes les catégories';

  @override
  String get learningControlSearchCards => 'Rechercher des cartes';

  @override
  String get learningControlClearSearch => 'Effacer la recherche';

  @override
  String get learningControlCategory => 'Catégorie';

  @override
  String get learningControlShowAll => 'Afficher toutes les cartes';

  @override
  String learningControlShowSaved(int count) {
    return 'Afficher les cartes enregistrées ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Désactiver le mélange';

  @override
  String get learningControlShuffleOn => 'Mélanger les cartes';

  @override
  String get learningControlAutoOff => 'Arrêter le défilement automatique';

  @override
  String get learningControlAutoOn => 'Défilement automatique toutes les 10 secondes';

  @override
  String get learningControlNoSaved => 'Aucune carte enregistrée pour le moment';

  @override
  String get learningControlNoMatches => 'Aucune carte correspondante';

  @override
  String get learningControlResetFilters => 'Réinitialiser les filtres';

  @override
  String get learningControlPrevious => 'Précédent';

  @override
  String get learningControlNext => 'Suivant';

  @override
  String get learningControlProgress => 'Progression';

  @override
  String get learningControlRemoveSaved => 'Retirer des éléments enregistrés';

  @override
  String get learningControlSaveCard => 'Enregistrer la carte';

  @override
  String get learningControlExample => 'Exemple';

  @override
  String get learningControlCopyExample => 'Copier l\'exemple';

  @override
  String get learningControlExampleCopied => 'Exemple copié';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Niveau $value1 terminé';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Jouer au niveau $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Terminez le niveau $value1 pour le débloquer';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Bonus de connexion quotidienne';

  @override
  String get sharedDialogThanksForComingBack => 'Merci d\'être revenu !';

  @override
  String get sharedDialogDailyRewardAdded => 'Votre récompense quotidienne a été ajoutée à votre total de points.';

  @override
  String get sharedDialogAwesome => 'Génial !';

  @override
  String get accountWelcomeGuest => 'Invité';

  @override
  String get accountWelcomeGuestUser => 'Utilisateur invité';

  @override
  String get accountWelcomeUser => 'Utilisateur';

  @override
  String get accountWelcomePlayingAsGuest => 'Joue en tant qu\'invité';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Connecter un compte Google';

  @override
  String get accountWelcomeGoogleConnected => 'Compte Google connecté avec succès ! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'La connexion a été annulée.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Échec de la connexion : $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Se déconnecter';

  @override
  String get accountWelcomeSignOutTitle => 'Se déconnecter ?';

  @override
  String get accountWelcomeSignOutMessage => 'Voulez-vous vraiment vous déconnecter ? Vous devrez vous reconnecter pour accéder à votre progression sauvegardée.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Échec de la déconnexion : $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Réinitialiser les données de l\'application ?';

  @override
  String get accountWelcomeResetAppMessage => 'Cela supprimera définitivement TOUS vos points, séries, historique de jeu et paramètres. Vous serez déconnecté et renvoyé à l\'écran d\'accueil. Cette action est irréversible.';

  @override
  String get accountWelcomeResetEverything => 'Tout réinitialiser';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Échec de la réinitialisation : $value1';
  }

  @override
  String get accountWelcomeCancel => 'Annuler';

  @override
  String get accountWelcomeResetAppData => 'Réinitialiser les données de l\'application';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Effacer tous les points, séries et paramètres';

  @override
  String get accountWelcomeFooter => 'Application DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Traduction pas encore disponible';

  @override
  String get accountWelcomeContinueWithGoogle => 'Continuer avec Google';

  @override
  String get accountWelcomeSigningIn => 'Connexion en cours...';

  @override
  String get accountWelcomeOr => 'OU';

  @override
  String get accountWelcomeContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Vous pourrez vous connecter plus tard depuis votre profil.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Vous pouvez commencer en tant qu\'invité et vous connecter plus tard.';

  @override
  String get accountWelcomeGreetingGuest => 'Bienvenue';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Bienvenue, $value1 !';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'La connexion Google est terminée, mais aucun compte utilisateur n\'a été renvoyé.';

  @override
  String get accountWelcomeErrorEmailExists => 'Cet e-mail possède déjà un compte utilisant une autre méthode de connexion.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Ce compte Google est déjà associé à un autre compte.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'L\'identifiant d\'authentification Google est invalide ou a expiré.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Ce compte a été désactivé.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'La connexion avec Google n\'est pas activée actuellement.';

  @override
  String get accountWelcomeErrorNetwork => 'Erreur réseau. Veuillez vérifier votre connexion Internet et réessayer.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Trop de tentatives de connexion. Veuillez patienter et réessayer.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Aucune information d\'erreur supplémentaire.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Échec de la connexion Google.\n\nCode : $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Erreur de connexion Google :\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Impossible de continuer en tant qu\'invité. Veuillez réessayer.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'La connexion avec Google sera bientôt disponible.';

  @override
  String get accountWelcomeLoginTagline => 'Apprendre • Pratiquer • Rivaliser • Gagner';

  @override
  String get accountWelcomeCountryRegion => 'Pays / région';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Pays / région : $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Rechercher un pays';

  @override
  String get accountWelcomeCountryNotSelected => 'Non sélectionné';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Pourquoi DevOps Quiz ?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ questions d\'entraînement';

  @override
  String get accountWelcomeFeatureLanguages => 'Support multilingue';

  @override
  String get accountWelcomeFeatureStreaks => 'Séries et classements';

  @override
  String get accountWelcomeFeatureGames => 'Jeux et défis';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud et DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonus et récompenses';

  @override
  String get accountWelcomePracticeOnTheGo => 'Entraînez-vous partout';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Installez l\'application Android et apprenez hors ligne, où que vous soyez.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Disponible sur Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Série de $days jours';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Maintenez une série de $days jours.';
  }

  @override
  String get achLocYearStreakTitle => 'Série d\'un an';

  @override
  String get achLocFirstQuizTitle => 'Premier quiz';

  @override
  String get achLocFirstQuizDescription => 'Terminez votre premier quiz.';

  @override
  String get achLocQuiz10Title => 'Explorateur de quiz';

  @override
  String get achLocQuiz10Description => 'Terminez 10 quiz.';

  @override
  String get achLocPoints1000Title => '1000 points';

  @override
  String get achLocPoints1000Description => 'Gagnez 1000 points au total dans Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Score parfait';

  @override
  String get achLocPerfectScoreDescription => 'Obtenez 100 % à n\'importe quel quiz.';

  @override
  String get achLocQuiz25Title => 'Passionné de quiz';

  @override
  String get achLocQuiz25Description => 'Terminez 25 quiz.';

  @override
  String get achLocQuiz50Title => 'Maître des quiz';

  @override
  String get achLocQuiz50Description => 'Terminez 50 quiz.';

  @override
  String get achLocQuiz100Title => 'Club des cent';

  @override
  String get achLocQuiz100Description => 'Terminez 100 quiz.';

  @override
  String get achLocQuiz250Title => 'Légende des quiz';

  @override
  String get achLocQuiz250Description => 'Terminez 250 quiz.';

  @override
  String get achLocPoints5000Title => '5 000 points';

  @override
  String get achLocPoints5000Description => 'Gagnez 5 000 points au total.';

  @override
  String get achLocPoints10000Title => '10 000 points';

  @override
  String get achLocPoints10000Description => 'Gagnez 10 000 points au total.';

  @override
  String get achLocPoints50000Title => '50 000 points';

  @override
  String get achLocPoints50000Description => 'Gagnez 50 000 points au total.';

  @override
  String get achLocPoints100000Title => '100 000 points';

  @override
  String get achLocPoints100000Description => 'Gagnez 100 000 points au total.';

  @override
  String get achLocDaily1Title => 'Débutant du jour';

  @override
  String get achLocDaily1Description => 'Terminez votre premier quiz quotidien.';

  @override
  String get achLocDaily7Title => 'Habitude quotidienne';

  @override
  String get achLocDaily7Description => 'Terminez 7 quiz quotidiens.';

  @override
  String get achLocDaily30Title => 'Champion du quotidien';

  @override
  String get achLocDaily30Description => 'Terminez 30 quiz quotidiens.';

  @override
  String get achLocSets5Title => 'Débutant en séries';

  @override
  String get achLocSets5Description => 'Terminez 5 séries de quiz.';

  @override
  String get achLocSets25Title => 'Collectionneur de séries';

  @override
  String get achLocSets25Description => 'Terminez 25 séries de quiz.';

  @override
  String get achLocSets50Title => 'Maître des séries';

  @override
  String get achLocSets50Description => 'Terminez 50 séries de quiz.';

  @override
  String get achLocSets100Title => 'Légende des séries';

  @override
  String get achLocSets100Description => 'Terminez 100 séries de quiz.';

  @override
  String get achLocCert1Title => 'Premier certificat';

  @override
  String get achLocCert1Description => 'Obtenez votre premier certificat de catégorie.';

  @override
  String get achLocCert5Title => 'Pro certifié';

  @override
  String get achLocCert5Description => 'Obtenez 5 certificats de catégorie.';

  @override
  String get achLocCert21Title => 'Entièrement certifié';

  @override
  String get achLocCert21Description => 'Obtenez un certificat dans les 21 catégories.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Gratuit du 7 au 14 févr. chaque année';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Gratuit du 8 au 15 mars chaque année';

  @override
  String get achLocThemeLight => 'Clair';

  @override
  String get achLocThemeDark => 'Sombre';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Coucher de soleil';

  @override
  String get achLocThemeCoffee => 'Café';

  @override
  String get achLocThemeTea => 'Thé';

  @override
  String get achLocThemeOcean => 'Océan';

  @override
  String get achLocThemeSolarFlare => 'Éruption solaire';

  @override
  String get achLocThemeForest => 'Forêt';

  @override
  String get achLocThemeAurora => 'Aurore';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Violet cyber';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Minuit';

  @override
  String get achLocThemeDarkGrey => 'Gris foncé';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Saint-Valentin';

  @override
  String get achLocThemeDqSpecial => 'DQ Spécial';

  @override
  String get achLocThemeArmy => 'Armée';

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
  String get achLocThemeDc => 'Héros DC';

  @override
  String get achLocThemeRainbow => 'Arc-en-ciel';

  @override
  String get achLocThemeDiamond => 'Diamant';

  @override
  String get achLocThemeLegendary => 'Légendaire';

  @override
  String get gameHintCmd001LsLa => 'Lister tous les fichiers avec leurs détails';

  @override
  String get gameHintCmd002Grep => 'Rechercher du texte selon un motif';

  @override
  String get gameHintCmd003Chmod => 'Modifier les permissions d\'un fichier';

  @override
  String get gameHintCmd004DfH => 'Afficher l\'espace disque libre';

  @override
  String get gameHintCmd005TailF => 'Suivre un fichier journal en croissance';

  @override
  String get gameHintCmd006PsAux => 'Lister les processus en cours';

  @override
  String get gameHintCmd007GitClone => 'Copier un dépôt distant';

  @override
  String get gameHintCmd008GitStash => 'Mettre de côté les modifications non validées';

  @override
  String get gameHintCmd009GitRebase => 'Réappliquer des commits sur une nouvelle base';

  @override
  String get gameHintCmd010GitBlame => 'Afficher qui a modifié chaque ligne';

  @override
  String get gameHintCmd011DockerPs => 'Lister les conteneurs en cours d\'exécution';

  @override
  String get gameHintCmd012DockerBuild => 'Créer une image à partir d\'un Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Afficher la sortie d\'un conteneur';

  @override
  String get gameHintCmd014DockerExec => 'Exécuter une commande dans un conteneur';

  @override
  String get gameHintCmd015KubectlGetPods => 'Lister les pods d\'un espace de noms';

  @override
  String get gameHintCmd016KubectlApply => 'Créer des ressources à partir d\'un fichier';

  @override
  String get gameHintCmd017KubectlDescribe => 'Afficher les informations détaillées d\'une ressource';

  @override
  String get gameHintCmd018KubectlScale => 'Modifier le nombre de réplicas';

  @override
  String get gameHintCmd019TerraformInit => 'Télécharger les providers et configurer';

  @override
  String get gameHintCmd020TerraformPlan => 'Prévisualiser les changements d\'infrastructure';

  @override
  String get gameHintCmd021TerraformApply => 'Créer ou mettre à jour l\'infrastructure';

  @override
  String get gameHintCmd022TerraformDestroy => 'Supprimer l\'infrastructure gérée';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Exécuter un playbook d\'automatisation';

  @override
  String get gameHintCmd024Ping => 'Tester l\'accessibilité avec ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Afficher le chemin vers un hôte';

  @override
  String get gameHintCmd026Curl => 'Transférer des données depuis une URL';

  @override
  String get gameHintCmd027Ssh => 'Se connecter en toute sécurité à une machine distante';

  @override
  String get gameHintCmd028CrontabE => 'Modifier les tâches planifiées';

  @override
  String get gameHintCmd029SystemctlStatus => 'Vérifier l\'état d\'un service';

  @override
  String get gameHintCmd030HelmInstall => 'Déployer un chart sur Kubernetes';

  @override
  String get gameHintWord001Git => 'Suit les modifications du code source.';

  @override
  String get gameHintWord002Aws => 'Plateforme cloud d\'Amazon.';

  @override
  String get gameHintWord003Api => 'Un contrat qui permet aux systèmes logiciels de communiquer.';

  @override
  String get gameHintWord004Dns => 'Traduit les noms de domaine en adresses IP.';

  @override
  String get gameHintWord005Cli => 'Une interface textuelle pour exécuter des commandes.';

  @override
  String get gameHintWord006Cpu => 'Le processeur qui exécute les instructions.';

  @override
  String get gameHintWord007Ram => 'Mémoire temporaire utilisée par les programmes en cours d\'exécution.';

  @override
  String get gameHintWord008Ssh => 'Protocole sécurisé d\'accès distant à un shell.';

  @override
  String get gameHintWord009Yaml => 'Un format de sérialisation de données lisible par l\'humain.';

  @override
  String get gameHintWord010Linux => 'Noyau et famille de systèmes d\'exploitation open source.';

  @override
  String get gameHintWord011Bash => 'Un interpréteur de commandes Unix populaire.';

  @override
  String get gameHintWord012Cloud => 'Informatique à la demande fournie via un réseau.';

  @override
  String get gameHintWord013Docker => 'Une plateforme pour créer et exécuter des conteneurs.';

  @override
  String get gameHintWord014Azure => 'Plateforme cloud de Microsoft.';

  @override
  String get gameHintWord015Python => 'Un langage de script et de programmation très répandu.';

  @override
  String get gameHintWord016Github => 'Un service d\'hébergement collaboratif Git populaire.';

  @override
  String get gameHintWord017Bgp => 'Protocole de routage qui échange des routes entre systèmes autonomes.';

  @override
  String get gameHintWord018Jenkins => 'Un serveur d\'automatisation souvent utilisé pour CI.';

  @override
  String get gameHintWord019Port => 'Un point de terminaison numéroté utilisé par les services réseau.';

  @override
  String get gameHintWord020Proxy => 'Un serveur qui relaie les requêtes pour des clients.';

  @override
  String get gameHintWord021Cache => 'Un stockage rapide pour les données fréquemment réutilisées.';

  @override
  String get gameHintWord022Cron => 'Planificateur Unix pour les commandes récurrentes.';

  @override
  String get gameHintWord023Bicep => 'Langage déclaratif d\'Azure pour l\'infrastructure en tant que code.';

  @override
  String get gameHintWord024Apigee => 'Plateforme Google Cloud pour la gestion centralisée des API.';

  @override
  String get gameHintWord025Root => 'Compte administrateur privilégié sur les systèmes de type Unix.';

  @override
  String get gameHintWord026Nginx => 'Serveur web et proxy inverse.';

  @override
  String get gameHintWord027Redis => 'Magasin de données en mémoire souvent utilisé comme cache.';

  @override
  String get gameHintWord028Mysql => 'Système de base de données relationnelle populaire.';

  @override
  String get gameHintWord029Ruby => 'Langage de programmation utilisé par des outils comme Chef.';

  @override
  String get gameHintWord030Helm => 'Gestionnaire de paquets couramment utilisé avec Kubernetes.';

  @override
  String get gameHintWord031Pod => 'Plus petite unité déployable dans Kubernetes.';

  @override
  String get gameHintWord032Image => 'Modèle en lecture seule utilisé pour créer un conteneur.';

  @override
  String get gameHintWord033Build => 'Crée un artefact à partir du code source et des dépendances.';

  @override
  String get gameHintWord034Deploy => 'Met une application en production dans un environnement.';

  @override
  String get gameHintWord035Terraform => 'Outil de HashiCorp pour l\'infrastructure en tant que code.';

  @override
  String get gameHintWord036Ansible => 'Outil d\'automatisation et de configuration sans agent.';

  @override
  String get gameHintWord037Kubectl => 'Client en ligne de commande pour Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Abréviation de Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Modèle opérationnel qui utilise Git comme source de vérité.';

  @override
  String get gameHintWord040Pipeline => 'Séquence automatisée d\'étapes de build, de test et de livraison.';

  @override
  String get gameHintWord041Container => 'Processus isolé empaqueté avec ses dépendances.';

  @override
  String get gameHintWord042Cluster => 'Groupe de machines géré comme un système partagé.';

  @override
  String get gameHintWord043Ingress => 'Objet API Kubernetes pour le routage HTTP externe.';

  @override
  String get gameHintWord044Firewall => 'Filtre le trafic réseau selon des règles de sécurité.';

  @override
  String get gameHintWord045Subnet => 'Subdivision logique d\'un réseau IP.';

  @override
  String get gameHintWord046Gateway => 'Nœud réseau qui relie différents réseaux.';

  @override
  String get gameHintWord047Router => 'Transmet les paquets entre les réseaux.';

  @override
  String get gameHintWord048Switch => 'Relie les appareils au sein d\'un réseau local.';

  @override
  String get gameHintWord049Repository => 'Stockage géré pour le code source ou les paquets.';

  @override
  String get gameHintWord050Systemd => 'Système d\'initialisation et gestionnaire de services Linux.';

  @override
  String get gameHintWord051Journalctl => 'Commande utilisée pour lire les journaux de systemd.';

  @override
  String get gameHintWord052Permission => 'Règle qui contrôle qui peut lire, écrire ou exécuter.';

  @override
  String get gameHintWord053Alloydb => 'Base de données gérée de Google Cloud compatible avec PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Objet Kubernetes pour la configuration non secrète.';

  @override
  String get gameHintWord055Secret => 'Objet Kubernetes destiné aux données sensibles.';

  @override
  String get gameHintWord056Persistent => 'Décrit un stockage qui survit au redémarrage d\'une charge de travail.';

  @override
  String get gameHintWord057Volume => 'Stockage de système de fichiers monté dans un conteneur.';

  @override
  String get gameHintWord058Storage => 'Emplacement persistant pour des fichiers, objets ou blocs.';

  @override
  String get gameHintWord059Replica => 'Copie d\'une instance de charge de travail maintenue pour la montée en charge ou la fiabilité.';

  @override
  String get gameHintWord060Deployment => 'Contrôleur Kubernetes pour les pods d\'applications sans état.';

  @override
  String get gameHintWord061Dockerfile => 'Instructions utilisées pour construire une image Docker.';

  @override
  String get gameHintWord062Database => 'Magasin organisé interrogé par les applications.';

  @override
  String get gameHintWord063Automation => 'Utilisation de logiciels pour exécuter des tâches répétables sans étapes manuelles.';

  @override
  String get gameHintWord064Anthos => 'Plateforme Google Cloud pour gérer des clusters dans différents environnements.';

  @override
  String get gameHintWord065Bigquery => 'Service Google Cloud pour l\'analyse de données à grande échelle.';

  @override
  String get gameHintWord066Bigtable => 'Base de données NoSQL à colonnes larges de Google Cloud pour l\'analytique.';

  @override
  String get gameHintWord067Loadbalancer => 'Répartit le trafic entrant entre plusieurs backends.';

  @override
  String get gameHintWord068Prometheus => 'Système de supervision qui stocke des métriques de séries temporelles.';

  @override
  String get gameHintWord069Grafana => 'Plateforme pour interroger et visualiser des données d\'observabilité.';

  @override
  String get gameHintWord070Cloudant => 'Base de données documentaire NoSQL JSON gérée d\'IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Service AWS qui enregistre l\'activité des API pour l\'audit.';

  @override
  String get gameHintWord072Statefulset => 'Contrôleur Kubernetes pour les charges de travail nécessitant une identité stable.';

  @override
  String get gameHintWord073Daemonset => 'Contrôleur Kubernetes qui exécute un pod sur des nœuds sélectionnés.';

  @override
  String get gameHintWord074Serviceaccount => 'Identité Kubernetes utilisée par une charge de travail ou un processus.';

  @override
  String get gameHintWord075Networkpolicy => 'Ressource Kubernetes qui contrôle le trafic réseau des pods.';

  @override
  String get gameHintWord076Certificate => 'Document numérique utilisé pour établir une identité dans TLS.';

  @override
  String get gameHintWord077Encryption => 'Transforme les données pour que seules les parties autorisées puissent les lire.';

  @override
  String get gameHintWord078Observability => 'Capacité à déduire le comportement d\'un système à partir de ses sorties.';

  @override
  String get gameHintWord079Coredns => 'Serveur DNS couramment utilisé dans les clusters Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Projet pour gérer des ressources cloud via les API Kubernetes.';

  @override
  String get gameHintWord081Failover => 'Basculement vers un composant de secours après une panne.';

  @override
  String get gameHintWord082Idempotency => 'Propriété selon laquelle répéter une opération a le même effet que l\'effectuer une seule fois.';

  @override
  String get gameHintWord083Dataflow => 'Service Google Cloud pour le traitement de données en flux et par lots.';

  @override
  String get gameHintWord084Orchestration => 'Gestion coordonnée de plusieurs charges de travail automatisées.';

  @override
  String get gameHintWord085Dataplex => 'Service Google Cloud pour découvrir et gouverner les données d\'entreprise.';

  @override
  String get gameHintWord086Serverless => 'Modèle d\'exécution où la gestion de l\'infrastructure est abstraite.';

  @override
  String get gameHintWord087Distributed => 'Système dont les composants s\'exécutent sur plusieurs machines en réseau.';

  @override
  String get gameHintWord088Dataproc => 'Environnement géré Apache Spark et Hadoop de Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'Base de données NoSQL AWS souvent utilisée pour le verrouillage d\'état Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Préparation de l\'infrastructure ou des ressources pour leur utilisation.';

  @override
  String get gameHintWord091Elasticsearch => 'Moteur de recherche couramment utilisé pour la journalisation centralisée.';

  @override
  String get gameHintWord092Etcd => 'Magasin clé-valeur qui contient l\'état du cluster Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Processus de vérification de l\'identité d\'un utilisateur ou d\'un service.';

  @override
  String get gameHintWord094Authorization => 'Processus qui décide de ce qu\'une identité est autorisée à faire.';

  @override
  String get gameHintWord095Expressroute => 'Service Azure pour une connectivité privée dédiée vers les centres de données.';

  @override
  String get gameHintWord096Configuration => 'Paramètres qui déterminent le comportement d\'un logiciel.';

  @override
  String get gameHintWord097Infrastructure => 'Ressources de calcul, de réseau et de stockage qui soutiennent les applications.';

  @override
  String get gameHintWord098Fastconnect => 'Service Oracle Cloud pour des connexions réseau privées dédiées.';

  @override
  String get gameHintWord099Containerd => 'Environnement d\'exécution de conteneurs standard de l\'industrie utilisé par Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Plateforme d\'orchestration de conteneurs.';

  @override
  String get gameHintWord101Http => 'Protocole applicatif utilisé pour demander des ressources web.';

  @override
  String get gameHintWord102Https => 'Version chiffrée du protocole de requête web.';

  @override
  String get gameHintWord103Tcp => 'Protocole de transport offrant une livraison fiable et ordonnée.';

  @override
  String get gameHintWord104Udp => 'Protocole de transport sans connexion utilisé pour les datagrammes.';

  @override
  String get gameHintWord105Tls => 'Protocole sécurisant les données échangées sur un réseau.';

  @override
  String get gameHintWord106Ssl => 'Ancien prédécesseur du protocole moderne de sécurité du transport.';

  @override
  String get gameHintWord107Ftp => 'Protocole traditionnel de transfert de fichiers.';

  @override
  String get gameHintWord108Sftp => 'Protocole de transfert de fichiers acheminé via une connexion shell sécurisée.';

  @override
  String get gameHintWord109Smtp => 'Protocole utilisé pour envoyer des e-mails entre serveurs.';

  @override
  String get gameHintWord110Snmp => 'Protocole utilisé pour gérer et superviser les équipements réseau.';

  @override
  String get gameHintWord111Icmp => 'Protocole transportant les erreurs réseau et les messages ping.';

  @override
  String get gameHintWord112Arp => 'Résout les adresses IPv4 locales en adresses matérielles.';

  @override
  String get gameHintWord113Dhcp => 'Attribue automatiquement une configuration IP aux clients du réseau.';

  @override
  String get gameHintWord114Nat => 'Réécrit les adresses réseau lorsque les paquets traversent une passerelle.';

  @override
  String get gameHintWord115Vpn => 'Tunnel chiffré reliant des réseaux ou des utilisateurs distants.';

  @override
  String get gameHintWord116Vpc => 'Réseau virtuel isolé dans un cloud public.';

  @override
  String get gameHintWord117Vlan => 'Séparation logique d\'un réseau commuté.';

  @override
  String get gameHintWord118Wan => 'Réseau couvrant une vaste zone géographique.';

  @override
  String get gameHintWord119Lan => 'Réseau reliant des appareils dans une zone locale.';

  @override
  String get gameHintWord120Cdn => 'Réseau périphérique distribué qui met en cache le contenu livré.';

  @override
  String get gameHintWord121Cidr => 'Notation exprimant un préfixe réseau avec une longueur après une barre oblique.';

  @override
  String get gameHintWord122Host => 'Un ordinateur ou point de terminaison connecté à un réseau.';

  @override
  String get gameHintWord123Hostname => 'Nom lisible par l\'humain attribué à une machine en réseau.';

  @override
  String get gameHintWord124Domain => 'Zone administrative nommée dans le système de nommage d\'Internet.';

  @override
  String get gameHintWord125Zone => 'Partie administrative d\'un espace de noms DNS.';

  @override
  String get gameHintWord126Record => 'Une entrée individuelle dans une base de données DNS.';

  @override
  String get gameHintWord127Aaaa => 'Type d\'enregistrement DNS résolvant un nom en adresse IPv6.';

  @override
  String get gameHintWord128Ptr => 'Type d\'enregistrement DNS utilisé pour les recherches d\'adresses inversées.';

  @override
  String get gameHintWord129Txt => 'Type d\'enregistrement DNS qui stocke des valeurs textuelles.';

  @override
  String get gameHintWord130Cname => 'Enregistrement DNS qui fait d\'un nom l\'alias d\'un autre.';

  @override
  String get gameHintWord131Route => 'Une entrée de chemin dirigeant les paquets vers une destination.';

  @override
  String get gameHintWord132Routing => 'Sélection des chemins pour le trafic entre réseaux.';

  @override
  String get gameHintWord133Packet => 'Une unité de données transmise sur un réseau.';

  @override
  String get gameHintWord134Protocol => 'Règles convenues pour la communication entre systèmes.';

  @override
  String get gameHintWord135Ack => 'Indicateur TCP accusant réception de données.';

  @override
  String get gameHintWord136Bandwidth => 'Capacité d\'une liaison de communication.';

  @override
  String get gameHintWord137Latency => 'Délai avant qu\'une requête ou un paquet reçoive une réponse.';

  @override
  String get gameHintWord138Throughput => 'Quantité de travail utile ou de données traitées par unité de temps.';

  @override
  String get gameHintWord139Mtu => 'Plus grande taille de paquet qu\'une liaison peut transmettre sans fragmentation.';

  @override
  String get gameHintWord140Alpn => 'Extension TLS négociant un protocole de couche application.';

  @override
  String get gameHintWord141Grep => 'Recherche dans les lignes de texte un motif correspondant.';

  @override
  String get gameHintWord142Sed => 'Éditeur de flux couramment utilisé pour les substitutions de texte.';

  @override
  String get gameHintWord143Lscpu => 'Commande Linux affichant l\'architecture du processeur et les détails des cœurs.';

  @override
  String get gameHintWord144Find => 'Recherche dans une arborescence à l\'aide de prédicats sur les fichiers.';

  @override
  String get gameHintWord145Lsblk => 'Commande Linux listant les périphériques de bloc et leurs relations.';

  @override
  String get gameHintWord146Sort => 'Trie les lignes de texte.';

  @override
  String get gameHintWord147Uniq => 'Filtre les lignes en double adjacentes.';

  @override
  String get gameHintWord148Head => 'Affiche le début d\'un fichier.';

  @override
  String get gameHintWord149Tail => 'Affiche la fin d\'un fichier et peut suivre les journaux en ajout.';

  @override
  String get gameHintWord150Cat => 'Concatène des fichiers et affiche leur contenu.';

  @override
  String get gameHintWord151Cut => 'Extrait des champs ou colonnes de caractères sélectionnés dans les lignes.';

  @override
  String get gameHintWord152Tee => 'Copie l\'entrée standard vers des fichiers et la sortie standard.';

  @override
  String get gameHintWord153Echo => 'Écrit ses arguments sur la sortie standard.';

  @override
  String get gameHintWord154Printf => 'Affiche du texte formaté depuis un shell ou un programme.';

  @override
  String get gameHintWord155Touch => 'Met à jour les horodatages d\'un fichier ou crée un fichier vide.';

  @override
  String get gameHintWord156Mkdir => 'Crée des répertoires.';

  @override
  String get gameHintWord157Rmdir => 'Supprime les répertoires vides.';

  @override
  String get gameHintWord158Chmod => 'Modifie les bits de permission des fichiers Unix.';

  @override
  String get gameHintWord159Chown => 'Modifie le propriétaire d\'un fichier.';

  @override
  String get gameHintWord160Chgrp => 'Modifie le groupe propriétaire d\'un fichier.';

  @override
  String get gameHintWord161Pwd => 'Affiche le répertoire de travail courant.';

  @override
  String get gameHintWord162Apt => 'Outil de gestion de paquets utilisé par les systèmes basés sur Debian.';

  @override
  String get gameHintWord163Top => 'Affichage interactif des processus et de l\'utilisation des ressources système.';

  @override
  String get gameHintWord164Agent => 'Composant logiciel exécutant ou rapportant du travail sur un hôte.';

  @override
  String get gameHintWord165Kill => 'Envoie un signal à un processus via son identifiant.';

  @override
  String get gameHintWord166Signal => 'Notification remise à un processus par le système d\'exploitation.';

  @override
  String get gameHintWord167Sigkill => 'Signal Unix qui termine immédiatement un processus.';

  @override
  String get gameHintWord168Nice => 'Démarre un processus avec une priorité d\'ordonnancement ajustée.';

  @override
  String get gameHintWord169Renice => 'Modifie la priorité d\'ordonnancement d\'un processus en cours.';

  @override
  String get gameHintWord170Jobs => 'Liste les tâches gérées par le shell courant.';

  @override
  String get gameHintWord171Nohup => 'Exécute une commande en ignorant les signaux de déconnexion.';

  @override
  String get gameHintWord172Screen => 'Multiplexeur de terminal prenant en charge des sessions détachables.';

  @override
  String get gameHintWord173Uptime => 'Indique depuis combien de temps un système fonctionne.';

  @override
  String get gameHintWord174Uname => 'Affiche les informations du système et du noyau.';

  @override
  String get gameHintWord175Whoami => 'Affiche le nom de l\'utilisateur courant effectif.';

  @override
  String get gameHintWord176Umask => 'Définit le masque de permissions utilisé lors de la création de fichiers.';

  @override
  String get gameHintWord177Usermod => 'Commande Linux qui modifie un compte utilisateur existant.';

  @override
  String get gameHintWord178Crontab => 'Modifie ou liste les tâches shell récurrentes planifiées.';

  @override
  String get gameHintWord179Findmnt => 'Commande Linux affichant les informations des systèmes de fichiers montés.';

  @override
  String get gameHintWord180Mount => 'Attache un système de fichiers à l\'arborescence de répertoires.';

  @override
  String get gameHintWord181Sigterm => 'Signal Unix demandant l\'arrêt propre d\'un processus.';

  @override
  String get gameHintWord182Fstab => 'Table système décrivant les systèmes de fichiers à monter.';

  @override
  String get gameHintWord183Swap => 'Espace sur disque utilisé pour compléter la mémoire physique.';

  @override
  String get gameHintWord184Tmpfs => 'Système de fichiers temporaire reposant sur la mémoire virtuelle.';

  @override
  String get gameHintWord185Proc => 'Système de fichiers virtuel Linux exposant des informations sur les processus et le noyau.';

  @override
  String get gameHintWord186Syslog => 'Protocole de journalisation standard et format de message.';

  @override
  String get gameHintWord187Dmesg => 'Affiche les messages du tampon circulaire du noyau.';

  @override
  String get gameHintWord188Free => 'Indique la mémoire système utilisée et disponible.';

  @override
  String get gameHintWord189Stat => 'Affiche les métadonnées détaillées d\'un fichier.';

  @override
  String get gameHintWord190Lsof => 'Liste les fichiers ouverts et les processus qui les détiennent.';

  @override
  String get gameHintWord191Netstat => 'Affiche les connexions réseau et les informations de routage.';

  @override
  String get gameHintWord192Checksum => 'Valeur calculée utilisée pour détecter les changements ou la corruption des données.';

  @override
  String get gameHintWord193Ping => 'Teste l\'accessibilité réseau à l\'aide de requêtes d\'écho.';

  @override
  String get gameHintWord194Traceroute => 'Affiche les sauts intermédiaires vers une destination réseau.';

  @override
  String get gameHintWord195Resolver => 'Composant DNS qui recherche les réponses aux requêtes de noms.';

  @override
  String get gameHintWord196Nslookup => 'Recherche des noms et adresses DNS.';

  @override
  String get gameHintWord197Telnet => 'Ancien protocole de terminal distant non chiffré.';

  @override
  String get gameHintWord198Tftp => 'Protocole simple de transfert de fichiers basé sur UDP.';

  @override
  String get gameHintWord199Daemon => 'Processus de service en arrière-plan sur les systèmes de type Unix.';

  @override
  String get gameHintWord200Kernel => 'Composant central gérant les ressources du système d\'exploitation.';

  @override
  String get gameHintWord201Commit => 'Un instantané enregistré des modifications dans le contrôle de version.';

  @override
  String get gameHintWord202Branch => 'Référence mobile représentant une ligne de développement.';

  @override
  String get gameHintWord203Merge => 'Combine les historiques de différentes lignes de développement.';

  @override
  String get gameHintWord204Rebase => 'Rejoue des commits au-dessus d\'un autre commit de base.';

  @override
  String get gameHintWord205Clone => 'Crée une copie locale d\'un dépôt distant.';

  @override
  String get gameHintWord206Fetch => 'Télécharge les objets et références distants sans fusionner.';

  @override
  String get gameHintWord207Pull => 'Récupère les modifications et les intègre dans la branche courante.';

  @override
  String get gameHintWord208Push => 'Envoie les commits locaux vers un dépôt distant.';

  @override
  String get gameHintWord209Stash => 'Sauvegarde temporairement les modifications non validées de l\'arbre de travail.';

  @override
  String get gameHintWord210Revert => 'Crée un commit qui annule un autre commit.';

  @override
  String get gameHintWord211Reset => 'Déplace une référence Git et peut réinitialiser l\'index ou les fichiers de travail.';

  @override
  String get gameHintWord212Reflog => 'Historique local des mises à jour des références Git.';

  @override
  String get gameHintWord213Diff => 'Affiche les différences entre des versions ou des fichiers.';

  @override
  String get gameHintWord214Status => 'Indique les fichiers indexés, modifiés et non suivis.';

  @override
  String get gameHintWord215Checkout => 'Commande Git pour changer de révision ou restaurer des fichiers.';

  @override
  String get gameHintWord216Tag => 'Référence nommée marquant couramment une version.';

  @override
  String get gameHintWord217Remote => 'Connexion nommée vers un autre dépôt.';

  @override
  String get gameHintWord218Origin => 'Nom par défaut attribué au dépôt distant d\'un clone.';

  @override
  String get gameHintWord219Upstream => 'Branche distante suivie associée à une branche locale.';

  @override
  String get gameHintWord220Worktree => 'Un répertoire de travail extrait lié à un dépôt.';

  @override
  String get gameHintWord221Registry => 'Service qui stocke et distribue des images de conteneurs.';

  @override
  String get gameHintWord222Digest => 'Identifiant basé sur le contenu d\'une image de conteneur.';

  @override
  String get gameHintWord223Layer => 'Modifications du système de fichiers formant une partie d\'une image de conteneur.';

  @override
  String get gameHintWord224Entrypoint => 'Instruction Dockerfile définissant l\'exécutable principal du conteneur.';

  @override
  String get gameHintWord225Cmd => 'Instruction Dockerfile précisant une commande ou des arguments par défaut.';

  @override
  String get gameHintWord226Workdir => 'Instruction Dockerfile définissant le répertoire de travail.';

  @override
  String get gameHintWord227Copy => 'Instruction Dockerfile copiant des fichiers du contexte de build dans une image.';

  @override
  String get gameHintWord228Add => 'Instruction Dockerfile pouvant aussi décompresser des archives locales.';

  @override
  String get gameHintWord229Run => 'Instruction Dockerfile exécutant une commande au moment du build.';

  @override
  String get gameHintWord230Env => 'Instruction Dockerfile définissant des variables d\'environnement.';

  @override
  String get gameHintWord231Arg => 'Instruction Dockerfile déclarant une variable de build.';

  @override
  String get gameHintWord232Expose => 'Instruction Dockerfile documentant un port de conteneur.';

  @override
  String get gameHintWord233User => 'Instruction Dockerfile choisissant le compte pour les commandes suivantes.';

  @override
  String get gameHintWord234Healthcheck => 'Instruction décrivant comment tester la santé d\'un conteneur.';

  @override
  String get gameHintWord235Shebang => 'Première ligne d\'un script identifiant l\'interpréteur à exécuter.';

  @override
  String get gameHintWord236Compose => 'Outil Docker pour définir et exécuter des applications multi-conteneurs.';

  @override
  String get gameHintWord237Bridge => 'Pilote réseau Docker courant pour la mise en réseau locale des conteneurs.';

  @override
  String get gameHintWord238Overlay => 'Réseau couvrant des conteneurs sur plusieurs hôtes.';

  @override
  String get gameHintWord239None => 'Pilote réseau Docker qui désactive la mise en réseau des conteneurs.';

  @override
  String get gameHintWord240Prune => 'Supprime les ressources de conteneurs inutilisées.';

  @override
  String get gameHintWord241Replicaset => 'Contrôleur Kubernetes maintenant un nombre de pods souhaité.';

  @override
  String get gameHintWord242Service => 'Abstraction Kubernetes fournissant un accès stable aux pods.';

  @override
  String get gameHintWord243Endpoints => 'Adresses derrière un service Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Portée logique regroupant des ressources Kubernetes.';

  @override
  String get gameHintWord245Node => 'Machine de travail hébergeant des pods Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Agent sur chaque nœud qui gère l\'exécution des pods.';

  @override
  String get gameHintWord247Pvc => 'Demande Kubernetes de stockage persistant.';

  @override
  String get gameHintWord248Apiserver => 'Composant du plan de contrôle Kubernetes exposant l\'API du cluster.';

  @override
  String get gameHintWord249Role => 'Ensemble nommé de permissions dans le contrôle d\'accès basé sur les rôles.';

  @override
  String get gameHintWord250Resourcequota => 'Objet Kubernetes limitant la consommation de ressources dans un espace de noms.';

  @override
  String get gameHintWord251Selector => 'Expression qui sélectionne des ressources selon leurs étiquettes.';

  @override
  String get gameHintWord252Taint => 'Propriété de nœud qui repousse les pods sans tolération correspondante.';

  @override
  String get gameHintWord253Toleration => 'Paramètre de pod permettant la planification sur un nœud marqué d\'un taint.';

  @override
  String get gameHintWord254Cordon => 'Marque un nœud Kubernetes comme non planifiable.';

  @override
  String get gameHintWord255Uncordon => 'Rend de nouveau planifiable un nœud isolé.';

  @override
  String get gameHintWord256Drain => 'Évacue les charges de travail en toute sécurité avant la maintenance d\'un nœud.';

  @override
  String get gameHintWord257Job => 'Charge de travail Kubernetes qui exécute une tâche jusqu\'à son terme.';

  @override
  String get gameHintWord258Cronjob => 'Charge de travail Kubernetes qui crée des jobs selon un calendrier.';

  @override
  String get gameHintWord259Readiness => 'Sonde indiquant si un conteneur peut recevoir du trafic.';

  @override
  String get gameHintWord260Liveness => 'Sonde indiquant si un conteneur doit être redémarré.';

  @override
  String get gameHintWord261Canary => 'Approche de livraison exposant une nouvelle version à une petite part du trafic.';

  @override
  String get gameHintWord262Rolling => 'Stratégie de mise à jour remplaçant progressivement les instances en cours.';

  @override
  String get gameHintWord263Rollback => 'Restaure une version d\'application qui fonctionnait précédemment.';

  @override
  String get gameHintWord264Rollout => 'Déploiement progressif d\'une nouvelle version d\'application.';

  @override
  String get gameHintWord265Recreate => 'Stratégie de déploiement arrêtant les anciens pods avant de démarrer les remplaçants.';

  @override
  String get gameHintWord266Blue => 'L\'un des deux environnements d\'une livraison blue-green.';

  @override
  String get gameHintWord267Green => 'L\'autre environnement d\'une livraison blue-green.';

  @override
  String get gameHintWord268Artifact => 'Sortie versionnée produite par un pipeline de build.';

  @override
  String get gameHintWord269Staging => 'Environnement de préproduction utilisé pour valider les livraisons.';

  @override
  String get gameHintWord270Production => 'Environnement servant les vrais utilisateurs finaux.';

  @override
  String get gameHintWord271Release => 'Une version logicielle livrée pour utilisation.';

  @override
  String get gameHintWord272Version => 'Identifiant distinguant une révision logicielle.';

  @override
  String get gameHintWord273Revision => 'Une version identifiable d\'un document ou d\'une base de code.';

  @override
  String get gameHintWord274Webhook => 'Notification HTTP envoyée lorsqu\'un événement se produit.';

  @override
  String get gameHintWord275Runbook => 'Procédure documentée pour exploiter ou rétablir un système.';

  @override
  String get gameHintWord276Workspace => 'Répertoire ou portée contenant les ressources de travail d\'un projet.';

  @override
  String get gameHintWord277Credentials => 'Éléments d\'authentification utilisés pour accéder à un système.';

  @override
  String get gameHintWord278Trigger => 'Événement ou condition qui démarre un pipeline.';

  @override
  String get gameHintWord279Parameter => 'Entrée nommée fournie à un job ou à une fonction.';

  @override
  String get gameHintWord280Access => 'Capacité d\'utiliser une ressource sous réserve d\'autorisation.';

  @override
  String get gameHintWord281Module => 'Groupe réutilisable de définitions d\'infrastructure.';

  @override
  String get gameHintWord282Provider => 'Plugin Terraform reliant la configuration à une API externe.';

  @override
  String get gameHintWord283Resource => 'Objet d\'infrastructure géré déclaré dans la configuration.';

  @override
  String get gameHintWord284Variable => 'Valeur d\'entrée nommée utilisée par la configuration ou le code.';

  @override
  String get gameHintWord285Output => 'Valeur exposée renvoyée par une configuration d\'infrastructure.';

  @override
  String get gameHintWord286Tfstate => 'Suffixe de fichier associé aux instantanés d\'état Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Suffixe de fichier utilisé pour les valeurs des variables d\'entrée Terraform.';

  @override
  String get gameHintWord288Backend => 'Configuration Terraform contrôlant le stockage de l\'état.';

  @override
  String get gameHintWord289Plan => 'Aperçu Terraform des changements d\'infrastructure proposés.';

  @override
  String get gameHintWord290Apply => 'Opération Terraform qui exécute les changements proposés.';

  @override
  String get gameHintWord291Destroy => 'Opération Terraform supprimant l\'infrastructure gérée.';

  @override
  String get gameHintWord292Import => 'Place une ressource existante sous la gestion de l\'infrastructure.';

  @override
  String get gameHintWord293Refresh => 'Synchronise l\'état enregistré avec l\'infrastructure réelle.';

  @override
  String get gameHintWord294Validate => 'Vérifie la syntaxe et la cohérence interne de la configuration.';

  @override
  String get gameHintWord295Fmt => 'Commande Terraform appliquant le formatage canonique de la configuration.';

  @override
  String get gameHintWord296Init => 'Initialise les providers Terraform et le répertoire de travail.';

  @override
  String get gameHintWord297Executor => 'Emplacement de travail Jenkins pouvant exécuter un build.';

  @override
  String get gameHintWord298Dependencies => 'Relations exigeant un composant avant un autre.';

  @override
  String get gameHintWord299Drift => 'Écart entre l\'état déclaré et l\'état réel de l\'infrastructure.';

  @override
  String get gameHintWord300Locking => 'Empêche des écrivains concurrents de modifier un état partagé.';

  @override
  String get gameHintWord301Playbook => 'Document Ansible décrivant des plays et des tâches d\'automatisation.';

  @override
  String get gameHintWord302Inventory => 'Collection Ansible d\'hôtes et de groupes gérés.';

  @override
  String get gameHintWord303Facts => 'Informations système collectées sur les hôtes gérés.';

  @override
  String get gameHintWord304Task => 'Une unité de travail individuelle dans l\'automatisation.';

  @override
  String get gameHintWord305Handler => 'Tâche Ansible exécutée lorsqu\'un changement la notifie.';

  @override
  String get gameHintWord306Notify => 'Directive Ansible mettant un handler en file d\'attente après une tâche ayant modifié quelque chose.';

  @override
  String get gameHintWord307Become => 'Paramètre Ansible activant l\'élévation de privilèges.';

  @override
  String get gameHintWord308Vault => 'Fonctionnalité Ansible pour chiffrer les données d\'automatisation sensibles.';

  @override
  String get gameHintWord309Register => 'Directive Ansible enregistrant le résultat d\'une tâche dans une variable.';

  @override
  String get gameHintWord310When => 'Mot-clé Ansible contrôlant l\'exécution conditionnelle d\'une tâche.';

  @override
  String get gameHintWord311Loop => 'Répète une tâche d\'automatisation sur une collection.';

  @override
  String get gameHintWord312Include => 'Charge dynamiquement du contenu d\'automatisation réutilisable.';

  @override
  String get gameHintWord313Tags => 'Étiquettes utilisées pour sélectionner des sous-ensembles de tâches d\'automatisation.';

  @override
  String get gameHintWord314Template => 'Fichier rendu avec des variables avant le déploiement.';

  @override
  String get gameHintWord315Jinja => 'Langage de modèles utilisé par Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Masquer les détails d\'implémentation derrière une interface plus simple.';

  @override
  String get gameHintWord317Agile => 'Approche itérative de livraison logicielle mettant l\'accent sur le retour d\'expérience.';

  @override
  String get gameHintWord318Puppet => 'Outil de gestion de configuration utilisant des manifestes déclaratifs.';

  @override
  String get gameHintWord319Airflow => 'Plateforme pour planifier et orchestrer des DAG de workflows.';

  @override
  String get gameHintWord320Argo => 'Famille de projets cloud-native incluant un contrôleur de livraison GitOps.';

  @override
  String get gameHintWord321Rds => 'Abréviation du service de base de données relationnelle géré d\'AWS.';

  @override
  String get gameHintWord322Sqs => 'Abréviation de la file de messages gérée d\'AWS.';

  @override
  String get gameHintWord323Sns => 'Abréviation du service de notification publication-abonnement d\'AWS.';

  @override
  String get gameHintWord324Ses => 'Abréviation du service d\'envoi d\'e-mails d\'AWS.';

  @override
  String get gameHintWord325Iam => 'Abréviation de la gestion des identités et des accès dans le cloud.';

  @override
  String get gameHintWord326Kms => 'Abréviation du service de gestion des clés de chiffrement d\'AWS.';

  @override
  String get gameHintWord327Waf => 'Pare-feu filtrant les requêtes web de la couche application.';

  @override
  String get gameHintWord328Eks => 'Abréviation du service Kubernetes géré d\'AWS.';

  @override
  String get gameHintWord329Ecs => 'Abréviation du service d\'orchestration de conteneurs géré d\'AWS.';

  @override
  String get gameHintWord330Ecr => 'Abréviation du registre d\'images de conteneurs d\'AWS.';

  @override
  String get gameHintWord331Aurora => 'Base de données relationnelle AWS compatible avec MySQL et PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Entrepôt de données analytique d\'AWS.';

  @override
  String get gameHintWord333Neptune => 'Base de données de graphes gérée d\'AWS.';

  @override
  String get gameHintWord334Elasticache => 'Service de cache en mémoire géré d\'AWS.';

  @override
  String get gameHintWord335Athena => 'Service AWS interrogeant des données de stockage d\'objets avec SQL.';

  @override
  String get gameHintWord336Glue => 'Service AWS serverless d\'intégration de données et d\'ETL.';

  @override
  String get gameHintWord337Emr => 'Plateforme AWS pour des clusters gérés de traitement de big data.';

  @override
  String get gameHintWord338Lambda => 'Service AWS exécutant des fonctions sans gérer de serveurs.';

  @override
  String get gameHintWord339Cloudfront => 'Réseau mondial de diffusion de contenu d\'AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Service AWS collectant métriques, journaux et alarmes.';

  @override
  String get gameHintWord341Cloudshell => 'Environnement shell d\'AWS accessible depuis le navigateur.';

  @override
  String get gameHintWord342Codecommit => 'Service de dépôt Git géré d\'AWS.';

  @override
  String get gameHintWord343Codebuild => 'Service AWS compilant le code source et exécutant les tests de build.';

  @override
  String get gameHintWord344Codedeploy => 'Service AWS de déploiement automatisé d\'applications.';

  @override
  String get gameHintWord345Codepipeline => 'Service AWS de pipeline de livraison continue.';

  @override
  String get gameHintWord346Guardduty => 'Service AWS intelligent de détection des menaces.';

  @override
  String get gameHintWord347Inspector => 'Service AWS évaluant les charges de travail à la recherche de vulnérabilités.';

  @override
  String get gameHintWord348Macie => 'Service AWS découvrant les données sensibles dans le stockage d\'objets.';

  @override
  String get gameHintWord349Shield => 'Service AWS géré de protection contre les DDoS.';

  @override
  String get gameHintWord350Snowball => 'Appareil physique AWS pour les transferts de données volumineux.';

  @override
  String get gameHintWord351Snowcone => 'Petit appareil robuste de la famille AWS de transfert hors ligne.';

  @override
  String get gameHintWord352Datasync => 'Service AWS de transfert de données en ligne automatisé.';

  @override
  String get gameHintWord353Msk => 'Abréviation du service Apache Kafka géré d\'AWS.';

  @override
  String get gameHintWord354Backup => 'Copie de données conservée pour la restauration.';

  @override
  String get gameHintWord355Transcribe => 'Service AWS convertissant la parole en texte.';

  @override
  String get gameHintWord356Translate => 'Service AWS traduisant du texte entre langues.';

  @override
  String get gameHintWord357Rekognition => 'Service AWS analysant les images et les vidéos.';

  @override
  String get gameHintWord358Comprehend => 'Service AWS d\'analyse du langage naturel.';

  @override
  String get gameHintWord359Textract => 'Service AWS extrayant le texte et les tableaux des documents.';

  @override
  String get gameHintWord360Sagemaker => 'Plateforme AWS pour créer et déployer des modèles d\'apprentissage automatique.';

  @override
  String get gameHintWord361Spanner => 'Base de données relationnelle mondialement distribuée de Google Cloud.';

  @override
  String get gameHintWord362Pub => 'Moitié publication du modèle de messagerie publication-abonnement.';

  @override
  String get gameHintWord363Sub => 'Moitié abonné du modèle de messagerie publication-abonnement.';

  @override
  String get gameHintWord364Functions => 'Unités de code événementielles proposées par les plateformes serverless.';

  @override
  String get gameHintWord365App => 'Forme abrégée d\'une application logicielle.';

  @override
  String get gameHintWord366Engine => 'Composant d\'exécution dans des noms tels que Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Capacité de traitement fournie par des machines virtuelles ou des conteneurs.';

  @override
  String get gameHintWord368Network => 'Systèmes connectés échangeant des données.';

  @override
  String get gameHintWord369Security => 'Protection des systèmes et des informations contre les menaces.';

  @override
  String get gameHintWord370Identity => 'Représentation d\'un utilisateur ou d\'un service utilisée pour les décisions d\'accès.';

  @override
  String get gameHintWord371Monitoring => 'Observation continue de la santé et du comportement d\'un système.';

  @override
  String get gameHintWord372Logging => 'Enregistrement d\'événements distincts d\'application et de système.';

  @override
  String get gameHintWord373Trace => 'Enregistrement du chemin d\'une requête à travers les appels de services.';

  @override
  String get gameHintWord374Metrics => 'Mesures numériques du comportement d\'un système au fil du temps.';

  @override
  String get gameHintWord375Alert => 'Notification indiquant qu\'une condition surveillée requiert de l\'attention.';

  @override
  String get gameHintWord376Billing => 'Suivi et facturation des services cloud consommés.';

  @override
  String get gameHintWord377Quota => 'Limite sur la quantité d\'une ressource pouvant être consommée.';

  @override
  String get gameHintWord378Region => 'Zone géographique de déploiement cloud contenant des zones de disponibilité.';

  @override
  String get gameHintWord379Tenancy => 'Organisation décrivant comment les clients partagent l\'infrastructure.';

  @override
  String get gameHintWord380Regional => 'Décrit une ressource limitée à une région cloud.';

  @override
  String get gameHintWord381Cosmos => 'Nom de la base de données multi-modèle mondialement distribuée d\'Azure.';

  @override
  String get gameHintWord382Synapse => 'Plateforme d\'analytique Azure combinant entrepôt de données et traitement de données.';

  @override
  String get gameHintWord383Sentinel => 'Plateforme cloud-native de gestion des informations et des événements de sécurité de Microsoft.';

  @override
  String get gameHintWord384Defender => 'Famille de produits de sécurité Microsoft protégeant les charges de travail cloud.';

  @override
  String get gameHintWord385Entra => 'Famille de produits d\'identité Microsoft remplaçant la marque Azure AD.';

  @override
  String get gameHintWord386Arm => 'Abréviation d\'Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Service Azure étendant la gestion aux ressources hors d\'Azure.';

  @override
  String get gameHintWord388Aks => 'Abréviation du service Kubernetes géré d\'Azure.';

  @override
  String get gameHintWord389Armor => 'Suffixe du nom du service de protection web de Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Type de données de stockage d\'objets d\'Azure.';

  @override
  String get gameHintWord391Files => 'Service Azure proposant des partages de fichiers réseau gérés.';

  @override
  String get gameHintWord392Disk => 'Périphérique de stockage en mode bloc attaché à une machine virtuelle.';

  @override
  String get gameHintWord393Function => 'Bloc de code appelable pouvant renvoyer un résultat.';

  @override
  String get gameHintWord394Logic => 'Catégorie d\'Azure App Service pour l\'intégration de workflows.';

  @override
  String get gameHintWord395Insights => 'Suffixe du nom du produit de télémétrie applicative d\'Azure.';

  @override
  String get gameHintWord396Traffic => 'Données circulant entre des points de terminaison réseau.';

  @override
  String get gameHintWord397Manager => 'Suffixe du nom du produit Azure Resource pour son plan de contrôle.';

  @override
  String get gameHintWord398Bastion => 'Point d\'entrée géré ou renforcé pour l\'accès à des hôtes privés.';

  @override
  String get gameHintWord399Front => 'Premier mot du service de point d\'entrée mondial d\'Azure Front Door.';

  @override
  String get gameHintWord400Door => 'Deuxième mot du service de point d\'entrée mondial d\'Azure Front Door.';

  @override
  String get gameHintWord401Javascript => 'Langage de programmation très utilisé dans les navigateurs et les environnements Node.';

  @override
  String get gameHintWord402Perl => 'Langage de script connu pour le traitement de texte et les expressions régulières.';

  @override
  String get gameHintWord403Powershell => 'Shell orienté objet et langage d\'automatisation de Microsoft.';

  @override
  String get gameHintWord404Java => 'Langage JVM utilisé pour implémenter Jenkins.';

  @override
  String get gameHintWord405Json => 'Format de données léger avec objets et tableaux.';

  @override
  String get gameHintWord406Xml => 'Format de balisage utilisant des balises nommées imbriquées.';

  @override
  String get gameHintWord407Html => 'Langage de balisage utilisé pour structurer les pages web.';

  @override
  String get gameHintWord408Css => 'Langage de feuilles de style contrôlant la présentation web.';

  @override
  String get gameHintWord409String => 'Séquence de caractères de texte.';

  @override
  String get gameHintWord410Array => 'Collection indexée d\'éléments.';

  @override
  String get gameHintWord411Hash => 'Collection associative clé-valeur en Ruby et Perl.';

  @override
  String get gameHintWord412Object => 'Valeur d\'exécution dotée de propriétés et de comportements.';

  @override
  String get gameHintWord413Class => 'Définition utilisée pour construire des objets dans les langages à classes.';

  @override
  String get gameHintWord414Method => 'Fonction associée à un objet ou à une classe.';

  @override
  String get gameHintWord415Interface => 'Contrat décrivant les opérations qu\'un composant expose.';

  @override
  String get gameHintWord416Subclass => 'Classe dérivée d\'une autre classe.';

  @override
  String get gameHintWord417Super => 'Mot-clé utilisé pour invoquer le comportement de la classe parente.';

  @override
  String get gameHintWord418Protected => 'Niveau de visibilité restreignant l\'accès aux contextes liés à la classe.';

  @override
  String get gameHintWord419Exception => 'Condition d\'exécution qui interrompt le flux de contrôle normal.';

  @override
  String get gameHintWord420Regex => 'Notation de motif utilisée pour faire correspondre du texte.';

  @override
  String get gameHintWord421Lexical => 'Décrit une portée déterminée par la structure du code source.';

  @override
  String get gameHintWord422Scalar => 'Catégorie de variable à valeur unique en Perl.';

  @override
  String get gameHintWord423Tuple => 'Collection ordonnée immuable en Python.';

  @override
  String get gameHintWord424List => 'Collection ordonnée modifiable en Python.';

  @override
  String get gameHintWord425Dict => 'Nom du type de mappage intégré de Python.';

  @override
  String get gameHintWord426Dictionary => 'Collection associant des clés à des valeurs.';

  @override
  String get gameHintWord427Set => 'Collection de valeurs distinctes.';

  @override
  String get gameHintWord428Boolean => 'Type de données représentant vrai ou faux.';

  @override
  String get gameHintWord429Integer => 'Type numérique représentant des nombres entiers.';

  @override
  String get gameHintWord430Float => 'Type numérique représentant des valeurs à virgule flottante.';

  @override
  String get gameHintWord431Double => 'Type à virgule flottante en double précision.';

  @override
  String get gameHintWord432Null => 'Valeur représentant l\'absence d\'objet ou de résultat.';

  @override
  String get gameHintWord433Undefined => 'Valeur JavaScript pour une valeur affectée manquante.';

  @override
  String get gameHintWord434Promise => 'Objet JavaScript représentant un résultat asynchrone à venir.';

  @override
  String get gameHintWord435Async => 'Mot-clé marquant une fonction asynchrone.';

  @override
  String get gameHintWord436Await => 'Mot-clé qui attend un résultat asynchrone.';

  @override
  String get gameHintWord437Callback => 'Fonction transmise pour être invoquée par une autre opération.';

  @override
  String get gameHintWord438Closure => 'Fonction conservant l\'accès à sa portée lexicale environnante.';

  @override
  String get gameHintWord439Generator => 'Fonction produisant une séquence paresseusement via des valeurs cédées.';

  @override
  String get gameHintWord440Iterator => 'Objet parcourant les valeurs d\'une collection.';

  @override
  String get gameHintWord441Print => 'Fonction courante écrivant une valeur en sortie.';

  @override
  String get gameHintWord442Input => 'Fonction Python lisant une ligne depuis l\'entrée standard.';

  @override
  String get gameHintWord443Open => 'Fonction utilisée pour obtenir un descripteur de fichier.';

  @override
  String get gameHintWord444Close => 'Opération libérant un fichier ou une connexion ouverts.';

  @override
  String get gameHintWord445Read => 'Opération obtenant des données depuis un flux ou un fichier.';

  @override
  String get gameHintWord446Write => 'Opération envoyant des données vers un flux ou un fichier.';

  @override
  String get gameHintWord447Append => 'Ajoute un élément à la fin d\'une collection.';

  @override
  String get gameHintWord448Split => 'Découpe du texte en sous-chaînes à l\'aide d\'un délimiteur.';

  @override
  String get gameHintWord449Join => 'Combine une séquence de chaînes à l\'aide d\'un séparateur.';

  @override
  String get gameHintWord450Strip => 'Supprime les espaces environnants d\'une chaîne Python.';

  @override
  String get gameHintWord451Chomp => 'Supprime un séparateur d\'enregistrement final en Perl ou Ruby.';

  @override
  String get gameHintWord452Map => 'Applique une transformation à chaque élément d\'une collection.';

  @override
  String get gameHintWord453Filter => 'Conserve les éléments d\'une collection qui satisfont un prédicat.';

  @override
  String get gameHintWord454Reduce => 'Combine une collection en un résultat accumulé.';

  @override
  String get gameHintWord455Range => 'Type Python représentant une suite arithmétique d\'entiers.';

  @override
  String get gameHintWord456Length => 'Propriété ou méthode renvoyant la taille d\'une collection.';

  @override
  String get gameHintWord457Len => 'Fonction intégrée de Python renvoyant la taille d\'une collection.';

  @override
  String get gameHintWord458Type => 'Fonction Python renvoyant le type d\'un objet.';

  @override
  String get gameHintWord459Isinstance => 'Fonction Python vérifiant l\'appartenance à une hiérarchie de types.';

  @override
  String get gameHintWord460Yield => 'Mot-clé produisant une valeur à partir d\'un générateur.';

  @override
  String get gameHintWord461Saas => 'Modèle cloud fournissant des applications logicielles complètes.';

  @override
  String get gameHintWord462Paas => 'Modèle cloud fournissant une plateforme gérée de développement d\'applications.';

  @override
  String get gameHintWord463Iaas => 'Modèle cloud fournissant du calcul, du stockage et du réseau virtuels.';

  @override
  String get gameHintWord464Hybrid => 'Approche cloud combinant infrastructure privée et publique.';

  @override
  String get gameHintWord465Archive => 'Stockage à long terme de données rarement consultées.';

  @override
  String get gameHintWord466Public => 'Modèle de propriété cloud offrant des services à plusieurs clients.';

  @override
  String get gameHintWord467Private => 'Modèle cloud dédié à une seule organisation.';

  @override
  String get gameHintWord468Scalability => 'Capacité à gérer une charge croissante en ajoutant des ressources.';

  @override
  String get gameHintWord469Availability => 'Degré auquel un service reste accessible en cas de besoin.';

  @override
  String get gameHintWord470Resilience => 'Capacité à résister aux pannes et à s\'en remettre.';

  @override
  String get gameHintWord471Redundancy => 'Composants dupliqués réduisant les points de défaillance uniques.';

  @override
  String get gameHintWord472Disaster => 'Panne majeure traitée par une stratégie de reprise.';

  @override
  String get gameHintWord473Recovery => 'Rétablissement d\'un service ou de données après une panne.';

  @override
  String get gameHintWord474Replicate => 'Copier des données ou des charges de travail vers un autre emplacement.';

  @override
  String get gameHintWord475Snapshotting => 'Prise de copies instantanées des données ou de l\'état du système.';

  @override
  String get gameHintWord476Restore => 'Opération récupérant des données à partir d\'une copie sauvegardée.';

  @override
  String get gameHintWord477Residency => 'Exigence définissant l\'emplacement géographique des données stockées.';

  @override
  String get gameHintWord478Compliance => 'Respect des réglementations et des contrôles organisationnels requis.';

  @override
  String get gameHintWord479Governance => 'Politiques et processus contrôlant l\'utilisation de la technologie.';

  @override
  String get gameHintWord480Audit => 'Examen des activités enregistrées et des preuves de conformité.';

  @override
  String get gameHintWord481Token => 'Justificatif ou symbole représentant une autorisation ou une identité.';

  @override
  String get gameHintWord482Oauth => 'Cadre d\'autorisation permettant un accès délégué.';

  @override
  String get gameHintWord483Saml => 'Standard basé sur XML couramment utilisé pour l\'authentification unique en entreprise.';

  @override
  String get gameHintWord484Cmdlet => 'Une commande spécialisée utilisée dans les pipelines PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Séquence définie d\'étapes pour résoudre un problème de calcul.';

  @override
  String get gameHintWord486Key => 'Valeur utilisée pour contrôler le chiffrement ou identifier des données stockées.';

  @override
  String get gameHintWord487Alias => 'Nom alternatif pour une commande shell ou une ressource.';

  @override
  String get gameHintWord488Amend => 'Option de commit Git qui remplace le commit le plus récent.';

  @override
  String get gameHintWord489Allsigned => 'Politique d\'exécution PowerShell exigeant des scripts signés.';

  @override
  String get gameHintWord490Remotesigned => 'Politique PowerShell exigeant des signatures sur les scripts téléchargés.';

  @override
  String get gameHintWord491Acl => 'Liste définissant les permissions des utilisateurs ou des systèmes.';

  @override
  String get gameHintWord492Uid => 'Identifiant numérique attribué à un utilisateur Unix.';

  @override
  String get gameHintWord493Setgid => 'Bit de permission affectant l\'identité de groupe lors de l\'exécution ou de l\'héritage.';

  @override
  String get gameHintWord494Setfacl => 'Commande Linux définissant les listes de contrôle d\'accès des fichiers.';

  @override
  String get gameHintWord495Isolation => 'Séparation empêchant les charges de travail de se perturber mutuellement.';

  @override
  String get gameHintWord496Sighup => 'Signal Unix de déconnexion souvent utilisé pour demander le rechargement de la configuration.';

  @override
  String get gameHintWord497Sigint => 'Signal Unix d\'interruption couramment généré avec Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Signal Unix mettant un processus en pause sans le terminer.';

  @override
  String get gameHintWord499Secrets => 'Valeurs sensibles telles que les mots de passe et les clés d\'accès.';

  @override
  String get gameHintWord500Secure => 'Décrit une connexion protégée contre les accès non autorisés.';

  @override
  String get fontSettingsTitle => 'Police';

  @override
  String get fontChangeFont => 'Changer de police';

  @override
  String get fontSystemDefault => 'Police du système';

  @override
  String get fontPreview => 'Aperçu';

  @override
  String get fontPreviewSample => 'Apprends DevOps question après question';

  @override
  String get fontSelected => 'Sélectionnée';

  @override
  String get fontLatinOnlyNote => 'Les polices personnalisées s\'appliquent aux lettres latines. Les autres écritures conservent la police de ton appareil.';

  @override
  String get fontDescSystem => 'La police intégrée de ton appareil';

  @override
  String get fontDescGeometric => 'Sans empattement géométrique';

  @override
  String get fontDescGeometricRounded => 'Sans empattement géométrique arrondie';

  @override
  String get fontDescFriendly => 'Sans empattement conviviale';

  @override
  String get fontDescCondensed => 'Condensée';

  @override
  String get fontDescRounded => 'Sans empattement arrondie';

  @override
  String get fontDescRoundedDisplay => 'Display arrondie';

  @override
  String gameScene3dScene(String value1) {
    return 'Scène 3D $value1';
  }
}
