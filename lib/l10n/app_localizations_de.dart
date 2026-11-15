// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTour => 'App-Tour';

  @override
  String get skipTour => 'Tour überspringen';

  @override
  String get finishTour => 'Tour beenden';

  @override
  String tourStep(int current, int total) {
    return 'Schritt $current von $total';
  }

  @override
  String get tourMenuTitle => 'Navigationsmenü';

  @override
  String get tourSearch => 'Gib hier ein Thema ein, um passende Quizkategorien zu finden.';

  @override
  String get tourCategory => 'Tippe für ein gemischtes Quiz auf DevOps. Andere Kategorien bieten Fragensätze. Speichere Fragen zum späteren Wiederholen.';

  @override
  String get tourMenu => 'Tippe auf diese Schaltfläche, um das Navigationsmenü zu öffnen.';

  @override
  String get tourLearning => 'Öffne Lernen für Lernkarten. Wische in jede Richtung, mische die Karten, nutze den automatischen Wechsel oder speichere eine Karte.';

  @override
  String get tourGames => 'Spiele und sammle Punkte. Spiele mit Leveln geben 100 Punkte je abgeschlossenem Level; Hinweise kosten 20 Punkte.';

  @override
  String get tourAchievements => 'Hier siehst du deine Erfolge. Popups melden neue Erfolge und verfügbare Designs.';

  @override
  String get tourSettings => 'Wähle Sprache, Design und Ton. Unter Gespeicherte Daten findest du Lesezeichen; die App-Tour zeigt diese Anleitung erneut.';

  @override
  String get achievementUnlocked => 'Erfolg freigeschaltet!';

  @override
  String get themeUnlocked => 'Neues Design verfügbar!';

  @override
  String get themeUnlockedMessage => 'Du kannst dieses Design jetzt unter Einstellungen > Designs auswählen.';

  @override
  String get gameSounds => 'Spielklänge';

  @override
  String get gameSoundsDescription => 'Effekte für Spiele und Quizfragen. Prüfe die Gerätelautstärke und den Lautlosmodus.';

  @override
  String get testSound => 'Ton testen';

  @override
  String get soundSettingBusy => 'Bitte warten...';

  @override
  String get soundSettingError => 'Die Toneinstellung konnte nicht geladen oder gespeichert werden. Bitte erneut versuchen.';

  @override
  String get soundPlaybackError => 'Der Ton konnte nicht abgespielt werden. Prüfe die Audioeinstellungen des Geräts oder Browsers.';

  @override
  String get saveData => 'Gespeicherte Daten';

  @override
  String get learningTranslationUnavailable => 'Diese Karte wurde noch nicht in die ausgewählte Sprache übersetzt.';

  @override
  String get saveQuestion => 'Frage speichern';

  @override
  String defaultPortQuestion(String service) {
    return 'Was ist der Standardport für $service?';
  }

  @override
  String get removeSavedItem => 'Aus gespeicherten Einträgen entfernen';

  @override
  String get noSavedData => 'Noch nichts gespeichert. Markiere Lernkarten oder Quizfragen mit einem Lesezeichen.';

  @override
  String get savedDataError => 'Gespeicherte Daten konnten nicht geladen oder aktualisiert werden. Bitte erneut versuchen.';

  @override
  String get savedItemUnavailable => 'Dieser gespeicherte Eintrag ist nicht mehr verfügbar.';

  @override
  String get correctAnswer => 'Richtige Antwort';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get certificates => 'Zertifikate';

  @override
  String get whatsNew => 'Neuigkeiten';

  @override
  String get settings => 'Einstellungen';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get lightMode => 'Heller Modus';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get english => 'Englisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Quiz starten';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Kategorie wechseln';

  @override
  String get dailyQuiz => 'Tägliches Quiz';

  @override
  String get dailyQuizCompleted => 'Tägliches Quiz abgeschlossen';

  @override
  String get dailyQuizCompletedMessage => 'Du hast das heutige tägliche Quiz bereits abgeschlossen.\n\nKomm morgen für eine neue Herausforderung wieder!';

  @override
  String get leaderboard => 'Bestenliste';

  @override
  String get shareApp => 'App teilen';

  @override
  String get rateApp => 'App bewerten';

  @override
  String get about => 'Über';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Start';

  @override
  String get games => 'Spiele';

  @override
  String get referAndEarn => 'Empfehlen & verdienen';

  @override
  String get themes => 'Designs';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Entwickler';

  @override
  String get contact => 'Kontakt';

  @override
  String get learning => 'Lernen';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Vernetze dich mit mir';

  @override
  String get aboutDescription => 'DevOps Quiz hilft Lernenden, sich mit Tausenden sorgfältig ausgewählten Fragen zu Linux, Docker, Kubernetes, Netzwerken, Git, Jenkins, Terraform, Ansible und weiteren DevOps-Technologien auf Vorstellungsgespräche und Zertifizierungen vorzubereiten.';

  @override
  String get quizResult => 'Quizergebnis';

  @override
  String get outstanding => 'Hervorragend!';

  @override
  String get greatJob => 'Tolle Arbeit!';

  @override
  String get goodEffort => 'Gute Leistung!';

  @override
  String get keepPracticing => 'Weiter üben!';

  @override
  String get dontGiveUp => 'Gib nicht auf!';

  @override
  String get shareMessage1 => 'Ich habe';

  @override
  String get shareMessage2 => 'im DevOps-Quiz erreicht!';

  @override
  String get downloadApp => 'App herunterladen:';

  @override
  String get score => 'Ergebnis';

  @override
  String get points => 'Punkte';

  @override
  String get percentage => 'Prozent';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Bonus für perfektes Ergebnis';

  @override
  String get shareScore => 'Ergebnis teilen';

  @override
  String get restartQuiz => 'Quiz neu starten';

  @override
  String get backToCategories => 'Zurück zu den Kategorien';

  @override
  String get greatProgress => 'Gut gemacht! Du machst große Fortschritte.';

  @override
  String get practiceMore => 'Gute Arbeit! Mit etwas mehr Übung erreichst du noch mehr Punkte.';

  @override
  String get keepLearning => 'Lerne weiter und versuche es erneut. Mit Übung wirst du besser.';

  @override
  String get everyExpertStarted => 'Jeder Experte war einmal Anfänger. Übe und komm stärker zurück!';

  @override
  String get quizInstructions => 'Quiz-Anleitung';

  @override
  String get instruction1 => 'Jedes Set enthält 25 Fragen.';

  @override
  String get instruction2 => 'Du hast 30 Sekunden pro Frage.';

  @override
  String get instruction3 => 'Grün = richtige Antwort.';

  @override
  String get instruction4 => 'Rot = falsche Antwort.';

  @override
  String get instruction5 => 'Die Antwort kann nicht geändert werden.';

  @override
  String get instruction6 => 'Die Zurück-Taste dient nur zur Wiederholung.';

  @override
  String get instruction7 => 'Das Ergebnis wird nach dem Abschluss angezeigt.';

  @override
  String get instruction8 => 'Jede richtige Antwort bringt 10 Punkte.';

  @override
  String excellentPerformance(Object expert) {
    return 'Ausgezeichnete Leistung! Du bist ein $expert.';
  }

  @override
  String get selectCategory => 'Kategorie auswählen';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Set auswählen';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Fragen';

  @override
  String get noScoresYet => 'Noch keine Ergebnisse';

  @override
  String get pointsShort => 'Pkt.';

  @override
  String get welcomeToDevOpsQuiz => 'Willkommen bei DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Hallo $name';
  }

  @override
  String get challengeMode => 'Herausforderungsmodus';

  @override
  String get challenge => 'Herausforderung';

  @override
  String get question => 'Frage';

  @override
  String get reward => 'Belohnung';

  @override
  String get survivalMode => 'Überlebensmodus';

  @override
  String get speedChallenge => 'Tempo-Challenge';

  @override
  String get dailyChallenge => 'Tägliche Challenge';

  @override
  String get ultimateChallenge => 'Ultimative Challenge';

  @override
  String get timeLeft => 'Verbleibende Zeit';

  @override
  String get completed => 'Abgeschlossen';

  @override
  String get locked => 'Gesperrt';

  @override
  String get back => 'Zurück';

  @override
  String get next => 'Weiter';

  @override
  String get submit => 'Absenden';

  @override
  String get achievements => 'Erfolge';

  @override
  String get streak => 'Serie';

  @override
  String get days => 'Tage';

  @override
  String get tomorrowsReward => 'Belohnung für morgen';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Ich habe $score/$totalQuestions im heutigen #DevOps-Quiz erreicht!\n\n🏆 Punkte: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Prozent: $percentage%\n\nKannst du mein Ergebnis schlagen?\n\nLade die App herunter:';
  }

  @override
  String get gameUiSpinWheel => 'Glücksrad';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Drehen und Bonuspunkte gewinnen';

  @override
  String get gameUiScratchCard => 'Rubbellos';

  @override
  String get gameUiScratchToRevealAReward => 'Rubbeln, um eine Belohnung aufzudecken';

  @override
  String get gameUiLuckySlots => 'Glücksautomat';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Walzen drehen und Punkte gewinnen';

  @override
  String get gameUiMysteryDeal => 'Geheimnisvoller Deal';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Wähle eine Geheimbox und antworte';

  @override
  String get gameUiMemoryMatch => 'Memory';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps-Paare zuordnen';

  @override
  String get gameUiWordGuess => 'Wörter raten';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'DevOps-Wörter über mehrere Level hinweg erraten';

  @override
  String get gameUiFindWords => 'Wörter finden';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Durchsuche ein Raster nach versteckten DevOps-Begriffen';

  @override
  String get gameUiSpotTheDifference => 'Unterschiede finden';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Finde fünf Unterschiede zwischen zwei illustrierten Szenen';

  @override
  String get gameUiJigsawPuzzle => 'Puzzle';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Gemeinsame HD-Tier- und Naturbilder wieder zusammensetzen';

  @override
  String get gameUiHighOrLow => 'Höher oder Tiefer';

  @override
  String get gameUiBuildAStreak => 'Eine Serie aufbauen';

  @override
  String get gameUiTrueOrFalseBlitz => 'Richtig-oder-Falsch-Blitz';

  @override
  String get gameUiQuickAnswerQuiz => 'Schnellantwort-Quiz';

  @override
  String get gameUiCommandMatch => 'Befehls-Zuordnung';

  @override
  String get gameUiMatchCommandsToMeanings => 'Befehle ihren Bedeutungen zuordnen';

  @override
  String get gameUiPortMaster => 'Port-Meister';

  @override
  String get gameUiGuessDefaultPorts => 'Standard-Ports erraten';

  @override
  String get gameUiTicTacToe => 'Tic-Tac-Toe';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X Drei gewinnt Computer';

  @override
  String get gameUiConnectFour => 'Vier gewinnt';

  @override
  String get gameUiDropFourDiscs => 'Vier Scheiben fallen lassen';

  @override
  String get gameUiLudo => 'Mensch ärgere dich nicht';

  @override
  String get gameUiRaceAgainstBots => 'Rennen gegen Bots';

  @override
  String get gameUiChess => 'Schach';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Schachbrett mit legalen Zügen für zwei Spieler';

  @override
  String get gameUiSnakeAndLadders => 'Schlangen und Leitern';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Würfelbrettspiel mit Schlangen und Leitern für zwei Spieler';

  @override
  String get gameUiGames => 'Spiele 🎮';

  @override
  String get gameUiPlayEarn => 'Spielen & Verdienen';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Spiele Spiele und verdiene Bonuspunkte!';

  @override
  String get gameUiSearchGames => 'Spiele suchen';

  @override
  String get gameUiClearSearch => 'Suche löschen';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Keine Spiele passen zu \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Drehen & Bonuspunkte gewinnen.';

  @override
  String get gameUiScratchToRevealYourReward => 'Rubbeln, um deine Belohnung aufzudecken.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Walzen drehen & Punkte gewinnen.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Wähle eine Geheimbox und antworte richtig, um Punkte zu gewinnen.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Ordne DevOps-Paare zu, um Punkte zu verdienen.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Errate den DevOps-Begriff in 6 Versuchen.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Durchsuche ein Raster nach versteckten DevOps-Begriffen.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Wische, um DevOps-Wörter in 500 Leveln zu finden.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Finde fünf Unterschiede zwischen zwei illustrierten Szenen.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Gemeinsame HD-Tier- und Naturbilder wieder zusammensetzen.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Baue eine Serie auf und sichere dir deine Punkte.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Schlage die Uhr mit schnellen Antworten.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Richtig-oder-Falsch-Blitz 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Ordne Befehle dem zu, was sie bewirken.';

  @override
  String get gameUiCommandMatch670a76e => 'Befehls-Zuordnung 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Errate Standard-Ports mit 3 Leben.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Port-Meister 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Spiele O/X gegen den Computer.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Lass vier Scheiben in einer Reihe fallen, um zu gewinnen.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Lass deine Spielfiguren gegen drei Bots antreten.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Lokales Zwei-Spieler-Schach mit legalen Zügen.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Spiele eine regelkonforme Schachpartie für zwei Spieler.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Würfelbrettspiel für zwei Spieler.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Rennen bis 100. Erklimme Leitern und weiche Schlangen aus.';

  @override
  String get gameUiPlay => 'Spielen';

  @override
  String get gameUiWheelStopped => 'Rad angehalten!';

  @override
  String get gameUiYourRewardIs => 'Deine Belohnung ist';

  @override
  String get gameUiPOINTS => 'PUNKTE';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Beantworte 1 Quizfrage richtig, um diese Belohnung zu erhalten.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Falsche Antwort = Belohnung verloren.';

  @override
  String get gameUiAnswerQuestion => 'Frage beantworten';

  @override
  String get gameUiSpinWheele449982 => '🎡 Glücksrad';

  @override
  String get gameUiDailySpin => 'Tägliche Drehung';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Drehe das Rad und beantworte dann eine Frage, um deine Belohnung zu erhalten!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Du hast die heutige Drehung bereits genutzt.';

  @override
  String get gameUiSpinning => 'Dreht sich...';

  @override
  String get gameUiSPINNOW => 'JETZT DREHEN';

  @override
  String get gameUiCOMEBACKTOMORROW => 'KOMM MORGEN WIEDER';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Heutige Belohnung: ⭐ $value1 Punkte';
  }

  @override
  String get gameUiBackToGames => 'Zurück zu den Spielen';

  @override
  String get gameUiSPIN => 'DREHEN';

  @override
  String get gameUiRewardRevealed => 'Belohnung aufgedeckt!';

  @override
  String get gameUiYouFound => 'Du hast gefunden';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Rubbellos';

  @override
  String get gameUiDailyScratch => 'Tägliches Rubbellos';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Rubble das Los, um die heutige Belohnung aufzudecken!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Du hast das heutige Rubbellos bereits verwendet.';

  @override
  String get gameUiAlreadyScratched => 'Bereits freigerubbelt';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Komm morgen wieder für eine weitere Belohnung.';

  @override
  String get gameUiYouRevealed => 'Du hast aufgedeckt';

  @override
  String get gameUiSCRATCHHERE => 'HIER RUBBELN  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => 'Glückszahl 777!';

  @override
  String get gameUiYourReward => 'Deine Belohnung';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Glücksautomat';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Drehe die Walzen und beantworte dann eine Frage, um die Belohnung zu erhalten!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Du hast heute bereits gespielt.';

  @override
  String get gameUiSPINNING => 'DREHT SICH...';

  @override
  String get gameUiROLLNOW => 'JETZT WÜRFELN';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 Punkte verfügbar!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Der Status des Geheimdeals kann nicht geprüft werden: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Box $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 PUNKTE';
  }

  @override
  String get gameUiStartQuestion => 'Frage starten';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Geheimdeal';

  @override
  String get gameUiMysteryDealCompleted => 'Geheimdeal abgeschlossen!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Du hast den Geheimdeal heute bereits gespielt.';

  @override
  String get gameUiTodayYouWon => 'Heute hast du gewonnen';

  @override
  String get gameUiTodaySReward => 'Heutige Belohnung';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 PUNKTE';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 PUNKTE VERLOREN';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Komm morgen wieder für eine weitere Geheimbox!';

  @override
  String get gameUiChooseYourMysteryBox => 'Wähle deine Geheimbox';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Jede Box enthält eine versteckte Belohnung zwischen 10 und 1000 Punkten.';

  @override
  String get gameUiPickOnlyOneBox => 'Wähle nur eine Box!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Alle $value1 Level abgeschlossen!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Level $value1 abgeschlossen!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'In $value1 Zügen abgeschlossen.\nDu hast $value2 Punkte verdient!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'In $value1 Zügen abgeschlossen.\nDieses Level wurde bereits gemeistert.';
  }

  @override
  String get gameUiNextLevel => 'Nächstes Level';

  @override
  String get gameUiDone => 'Fertig';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Memory-Paare 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Alle 100 Level abgeschlossen!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Du hast jedes Memory-Match-Level abgeschlossen. Gut gespielt!';

  @override
  String get gameUiChooseLevel => 'Level wählen';

  @override
  String gameUiMoves(String value1) {
    return 'Züge: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Level $value1 von $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 Paare';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Level $value1 einprägen';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Finde $value1 passende Paare';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps-Quiz-Logo';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Kapitel 1 · Die Build-Pipeline wiederherstellen';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Kapitel 2 · Die Cloud-Plattform skalieren';

  @override
  String get gameUiChapter3ProtectProduction => 'Kapitel 3 · Die Produktion schützen';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Verwende alle $value1 verbleibenden Buchstaben, um die Antwort abzusenden.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Alle Level abgeschlossen!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Level $value1 abgeschlossen!';
  }

  @override
  String get gameUiTryAgain => 'Erneut versuchen';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'Das Wort war $value1. Du hast $value2 Punkte verdient.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'Das Wort war $value1. Du hast $value2 Punkte nach $value3 Hinweis verdient.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'Das Wort war $value1. Du hast $value2 Punkte nach $value3 Hinweisen verdient.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'Das Wort war $value1. Level $value2 wartet noch auf dich.';
  }

  @override
  String get gameUiFinish => 'Beenden';

  @override
  String get gameUiNextLevel254fd73 => 'Nächstes Level';

  @override
  String get gameUiRetryLevel => 'Level wiederholen';

  @override
  String get gameUiHowToPlay => 'Spielanleitung';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Jedes Level hat ein DevOps-Wort. Wörter mit weniger als fünf Buchstaben starten ohne freie Buchstaben; längere Wörter starten mit einem. Baue die Antwort mit der Buchstabenleiste zusammen und drücke die Eingabetaste. Hinweise decken einen weiteren Buchstaben auf und kosten 20 Punkte von deinem Guthaben. Jedes abgeschlossene Level bringt 100 Punkte.';

  @override
  String get gameUiGotIt => 'Verstanden';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Alle $value1 Level abgeschlossen!';
  }

  @override
  String get gameUiEasy => 'Leicht';

  @override
  String get gameUiMedium => 'Mittel';

  @override
  String get gameUiHard => 'Schwer';

  @override
  String get gameUiHowToPlay13a6b22 => 'Spielanleitung';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Level $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Belohnung $value1 Pkt. · genutzte Hinweise $value2';
  }

  @override
  String get gameUiHint20Pts => 'Hinweis · −20 Pkt.';

  @override
  String get gameUiEnter => 'Eingabe';

  @override
  String get gameUiDelete => 'Löschen';

  @override
  String get gameUiDragThroughAWord => 'Ziehe über ein Wort';

  @override
  String get gameUiDragThroughEachWord => 'Ziehe über jedes Wort';

  @override
  String get gameUiReleaseToSelect => 'Loslassen zum Auswählen';

  @override
  String gameUiFound(String value1) {
    return '$value1 gefunden';
  }

  @override
  String get gameUiNoWordThere => 'Dort ist kein Wort';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 bereits gefunden';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Suche nach $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Alle Level abgeschlossen!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Du hast jedes Wort gefunden und $value1 Punkte verdient.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Du hast jedes Wort gefunden. Dieses Level wurde bereits gemeistert.';

  @override
  String get gameUiAll500LevelsComplete => 'Alle 500 Level abgeschlossen!';

  @override
  String get gameUiReviewLevels => 'Level ansehen';

  @override
  String gameUiLeft(String value1) {
    return '$value1 übrig';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 Pkt.';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Fortschritt konnte nicht gespeichert werden. Bitte versuche es erneut.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Du hast $value1 Punkte verdient!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Du hast dieses Bild bereits abgeschlossen. Bei einer Wiederholung gibt es keine zusätzlichen Punkte.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Du hast jedes Bild abgeschlossen!';

  @override
  String get gameUiLevels => 'Level';

  @override
  String get gameUiPictureB => 'Bild B';

  @override
  String get gameUiPictureA => 'Bild A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Bild konnte nicht geladen werden. Erneut versuchen';

  @override
  String get gameUiResetZoom => 'Zoom zurücksetzen';

  @override
  String get gameUiZoomBothPictures => 'Beide Bilder zoomen';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Hinweis · $value1 Punkte pro Hinweis';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Fortschritt konnte nicht geladen werden. Erneut versuchen';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Level $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Alle Unterschiede gefunden!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Finde $count Unterschiede. Tippe jeden davon in einem der beiden Bilder an.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Fehlversuche: $value1  ·  Hinweise: $value2 (−$value3 Pkt.)  ·  $value4 Level abgeschlossen';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Nächstes Level: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Puzzle $value1 abgeschlossen!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Bild in $value1 Zügen abgeschlossen. Du hast $value2 Punkte verdient.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Bild in $value1 Zügen abgeschlossen.';
  }

  @override
  String get gameUiNextPuzzle => 'Nächstes Puzzle';

  @override
  String get gameUiAllPuzzlesComplete => 'Alle Puzzles abgeschlossen';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Puzzleteil $value1 von $value2, richtig platziert';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Puzzleteil $value1 von $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Puzzle wählen';

  @override
  String get gameUiShufflePieces => 'Teile mischen';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Das Puzzlebild konnte nicht geladen werden.';

  @override
  String get gameUiPreviousPuzzle => 'Vorheriges Puzzle';

  @override
  String gameUiPuzzle(String value1) {
    return 'Puzzle $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 Züge';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Ziehe Teile, um sie zu tauschen, oder tippe auf zwei Teile.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 Puzzles gelöst  ·  je $value3 Punkte';
  }

  @override
  String get gameUiGameOver => 'Spiel vorbei';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Die Zahl war $value1.\nSerie: $value2\nDu hast $value3 Punkte verdient!\n\nKomm morgen wieder für eine neue Chance!';
  }

  @override
  String get gameUiHigherOrLower => 'Höher oder Tiefer 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Heute bereits gespielt!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Du hast am $value1/$value2/$value3 gespielt.\n\nKomm morgen wieder, um eine neue Serie aufzubauen!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Du hast heute bereits gespielt.\n\nKomm morgen wieder für eine neue Chance!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Serie: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Punkte: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Wird die nächste Zahl höher oder niedriger sein?';

  @override
  String get gameUiLower => 'Niedriger';

  @override
  String get gameUiHigher => 'Höher';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Wahr-oder-Falsch-Blitz ⚡';

  @override
  String get gameUiTimeSUp => 'Die Zeit ist um!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Richtige Antworten: $value1\nBeste Serie: $value2\n${value3}Du hast $value4 Punkte verdient!\n\nKomm morgen wieder für eine neue Runde!';
  }

  @override
  String get gameUiStreakBonus20 => 'Serienbonus: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'Ist die angezeigte Antwort wahr oder falsch?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 Fragen in $value2 Kategorien';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Du hast $value1 Sekunden. Jede richtige Antwort bringt $value2 Punkte. Eine falsche Antwort kostet $value3 Sekunden. Erreiche eine Serie von 5 für einen Bonus von +20.';
  }

  @override
  String get gameUiRoundTimer => 'Rundentimer';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 Sekunden';
  }

  @override
  String get gameUiStart => 'Start';

  @override
  String get gameUiTrue => 'Wahr';

  @override
  String get gameUiFalse => 'Falsch';

  @override
  String get gameUiCommandMatch26b0e70 => 'Befehls-Zuordnung 🔗';

  @override
  String get gameUiAllMatched => 'Alles zugeordnet!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Fehler: $value1\nDu hast $value2 Punkte verdient!\n\nKomm morgen wieder für neue Befehle!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Runde $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Tippe auf einen Befehl und dann auf seine Bedeutung.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Tippe jetzt auf die passende Bedeutung.';

  @override
  String get gameUiPortMaster9c730cf => 'Port-Meister 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Port-Meister!';

  @override
  String get gameUiOutOfLives => 'Keine Leben mehr';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Richtige Antworten: $value1\nDu hast $value2 Punkte verdient!\n\nKomm morgen wieder für eine neue Runde!';
  }

  @override
  String get gameUiYouEarned10Points => 'Du hast 10 Punkte verdient!';

  @override
  String get gameUiYouWin => 'Du gewinnst!';

  @override
  String gameUiWins(String value1) {
    return '$value1 gewinnt!';
  }

  @override
  String get gameUiXWins => 'X gewinnt!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) gewinnt!';
  }

  @override
  String get gameUiComputerWins => 'Der Computer gewinnt';

  @override
  String get gameUiOWins => 'O gewinnt!';

  @override
  String get gameUiPlayer2OWins => 'Spieler 2 (O) gewinnt!';

  @override
  String get gameUiItSADraw => 'Unentschieden';

  @override
  String get gameUiYourTurn => 'Du bist dran';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 ist dran';
  }

  @override
  String get gameUiComputerIsThinking => 'Der Computer denkt nach';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Spieler $value1 ist am Zug';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 ist am Zug';
  }

  @override
  String get gameUiPlayer2ToMove => 'Spieler 2 ist am Zug';

  @override
  String get gameUiNewRound => 'Neue Runde';

  @override
  String get gameUiVsComputer => 'Gegen Computer';

  @override
  String get gameUi2Players => '2 Spieler';

  @override
  String get gameUiYou => 'Du';

  @override
  String get gameUiDraws => 'Unentschieden';

  @override
  String get gameUiPlayer2 => 'Spieler 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Feld $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Nochmal spielen';

  @override
  String get gameUiConnectFourWin20Points => 'Vier-gewinnt-Sieg: 20 Punkte!';

  @override
  String get gameUiBotWins => 'Der Bot gewinnt!';

  @override
  String get gameUiRed => 'Rot';

  @override
  String get gameUiYellow => 'Gelb';

  @override
  String get gameUiBoardFullDraw => 'Brett voll — Unentschieden';

  @override
  String get gameUiBotIsThinking => 'Der Bot denkt nach';

  @override
  String get gameUiBotTurn => 'Zug des Bots';

  @override
  String get gameUiNewGame => 'Neues Spiel';

  @override
  String get gameUiVsBot => 'Gegen Bot';

  @override
  String get gameUi2Player => '2 Spieler';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Spiele gegen den Bot · tippe auf eine Spalte, um eine Scheibe einzuwerfen';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Zwei Spieler · tippe auf eine Spalte, um eine Scheibe einzuwerfen';

  @override
  String gameUiColumn(String value1) {
    return 'Spalte $value1';
  }

  @override
  String get gameUiYouRed => 'Du · Rot';

  @override
  String get gameUiRedPlayer1 => 'Rot · Spieler 1';

  @override
  String get gameUiBotYellow => 'Bot · Gelb';

  @override
  String get gameUiYellowPlayer2 => 'Gelb · Spieler 2';

  @override
  String get gameUiLudoMatchStats => 'Ludo-Spielstatistik';

  @override
  String get gameUiNoCompletedMatchesYet => 'Noch keine abgeschlossenen Spiele.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Gespielt $value1  ·  Gewonnen $value2  ·  Verloren $value3';
  }

  @override
  String get gameUiClose => 'Schließen';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Ludo-Champion! Du hast 50 Punkte verdient.';

  @override
  String get gameUiNewLudoGame => 'Neues Ludo-Spiel';

  @override
  String get gameUiBotOpponents => 'Bot-Gegner';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Ein neues Spiel zu starten ersetzt dein gespeichertes Spiel.';

  @override
  String get gameUiCancel => 'Abbrechen';

  @override
  String get gameUiStartGame => 'Spiel starten';

  @override
  String get gameUiPlayerColours => 'Spielerfarben';

  @override
  String get gameUiApply => 'Übernehmen';

  @override
  String get gameUiMatchStats => 'Spielstatistik';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 gewinnt durch Schachmatt';
  }

  @override
  String get gameUiBlack => 'Schwarz';

  @override
  String get gameUiWhite => 'Weiß';

  @override
  String get gameUiComputerWinsByCheckmate => 'Der Computer gewinnt durch Schachmatt';

  @override
  String get gameUiYouWinByCheckmate => 'Du gewinnst durch Schachmatt';

  @override
  String get gameUiDrawByStalemate => 'Unentschieden durch Patt';

  @override
  String get gameUiDraw => 'Unentschieden';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Schach';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Schachmatt! Du hast 50 Punkte verdient.';

  @override
  String get gameUiStartANewGame => 'Neues Spiel starten?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Wenn du den Spielermodus änderst, wird die gespeicherte Partie ersetzt.';

  @override
  String get gameUiComputer => 'Computer';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Weiß / Spieler 2 · Schwarz';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Du bist Weiß · Computer ist Schwarz';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Weiß) · Computer (Schwarz)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Du bist Schwarz · Computer ist Weiß';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Schwarz) · Computer (Weiß)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 würfelt zuerst';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 würfelt erneut';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 ist am Zug zu würfeln';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Sieg bei Schlangen und Leitern: 100 Punkte!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Wenn du die Spieler änderst, wird das gespeicherte Spiel ersetzt.';

  @override
  String get gameUiStartANewLevel => 'Neues Level starten?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Wenn du das Level wechselst, wird das gespeicherte Spiel ersetzt.';

  @override
  String get gameUiChangeLevel => 'Level wechseln';

  @override
  String get gameUiPlayers => 'Spieler';

  @override
  String get gameUiPlayAgainstBot => 'Gegen Bot spielen';

  @override
  String get gameUi3Players => '3 Spieler';

  @override
  String get gameUi4Players => '4 Spieler';

  @override
  String get gameUiLevel1709305 => 'Level';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Level $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 Spieler · Level $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Würfeln';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 auf $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Frage konnte nicht geladen werden: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Richtige Antwort!';

  @override
  String get gameUiWrongAnswer => 'Falsche Antwort';

  @override
  String get gameUiYouClaimedYourReward => 'Du hast deine Belohnung erhalten!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Zu deinen Gesamtpunkten hinzugefügt.';

  @override
  String get gameUiTheCorrectAnswerWas => 'Die richtige Antwort war:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 Punkte Belohnung verloren.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Deine vorhandenen Punkte wurden nicht abgezogen.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Komm morgen wieder und versuche es erneut.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Frage konnte nicht geladen werden.';

  @override
  String get gameUiYourReward677fa6e => 'Deine Belohnung';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 PUNKTE';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Antworte richtig, um sie zu erhalten!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Komm morgen für eine weitere Runde wieder.';

  @override
  String get gameUiGreen => 'Grün';

  @override
  String get gameUiBlue => 'Blau';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 denkt nach';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: Wähle eine Figur';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: Würfle';
  }

  @override
  String gameUiDice(String value1) {
    return 'Würfel $value1';
  }

  @override
  String get gameUiRollDice => 'Würfeln';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 Figur $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Spieler $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'Du brauchst 20 Punkte, um einen Hinweis zu verwenden.';

  @override
  String get gameUiHintPurchaseFailed => 'Der Hinweis konnte nicht gekauft werden. Bitte versuche es erneut.';

  @override
  String get gameUiChessKing => 'König';

  @override
  String get gameUiChessQueen => 'Dame';

  @override
  String get gameUiChessRook => 'Turm';

  @override
  String get gameUiChessBishop => 'Läufer';

  @override
  String get gameUiChessKnight => 'Springer';

  @override
  String get gameUiChessPawn => 'Bauer';

  @override
  String get gameUiChessEmpty => 'leer';

  @override
  String get gameSceneLampAndFlowers => 'Lampe und Blumen';

  @override
  String get gameSceneGardenFriends => 'Gartenfreunde';

  @override
  String get gameSceneUnderwaterExplorers => 'Unterwasserforscher';

  @override
  String get gameSceneOceanOrca => 'Orca im Ozean';

  @override
  String get gameSceneFoxInTheMeadow => 'Fuchs auf der Wiese';

  @override
  String get gameSceneYellowSubmarine => 'Gelbes U-Boot';

  @override
  String get gameSceneTurkeyInTheClearing => 'Truthahn auf der Lichtung';

  @override
  String get gameSceneSafariWateringHole => 'Safari-Wasserstelle';

  @override
  String get gameSceneJungleCompanions => 'Dschungelgefährten';

  @override
  String get gameSceneGoldenPuppyGarden => 'Garten mit goldenem Welpen';

  @override
  String get gameSceneSeaTurtleReef => 'Meeresschildkröte am Riff';

  @override
  String get gameSceneCoralReefFriends => 'Freunde am Korallenriff';

  @override
  String get gameSceneSharedClownfish => 'Geteilter Clownfisch';

  @override
  String get gameSceneLittleDinosaur => 'Kleiner Dinosaurier';

  @override
  String get gameSceneSafariCompanions => 'Safari-Gefährten';

  @override
  String get gameSceneSwirlingFlowers => 'Wirbelnde Blumen';

  @override
  String get gameSceneGardenKitten => 'Gartenkätzchen';

  @override
  String get gameSceneBlueOcean => 'Blauer Ozean';

  @override
  String get gameSceneCastlePrincess => 'Schlossprinzessin';

  @override
  String get gameSceneRedCar => 'Rotes Auto';

  @override
  String get gameSceneGardenPuppy => 'Gartenwelpe';

  @override
  String get gameSceneSpaceExplorer => 'Weltraumforscher';

  @override
  String get gameSceneEnchantedReadingForest => 'Verzauberter Lesewald';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps-Unendlichkeitszyklus';

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
  String get gameSceneNetworking => 'Netzwerke';

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
  String get gameSceneWinterFestivalFair => 'Winterfestmarkt';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Gepanzerter Held in Nahaufnahme';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Gepanzerter Held in Purpurrot';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Dunkle Plumeria-Blüten';

  @override
  String get gameSceneMangroveBoardwalk => 'Mangroven-Holzsteg';

  @override
  String get gameSceneTropicalPalmReflections => 'Tropische Palmenspiegelungen';

  @override
  String get gameSceneMaskedFigureInShadow => 'Maskierte Gestalt im Schatten';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Elektrischer Begleiter bei Sonnenuntergang';

  @override
  String get gameSceneTrainerAndFireDragon => 'Trainer und Feuerdrache';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Juwelenbesetzte Wrestling-Maske';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Wrestler in roten Pinselstrichen';

  @override
  String get gameSceneWrestlingChampionSalute => 'Gruß des Wrestling-Champions';

  @override
  String get gameSceneMorningAtTheBakery => 'Morgen in der Bäckerei';

  @override
  String get gameSceneGreenhousePottingBench => 'Pflanztisch im Gewächshaus';

  @override
  String get gameSceneHarborFishingBoat => 'Fischerboot im Hafen';

  @override
  String get gameSceneAtticObservatory => 'Sternwarte auf dem Dachboden';

  @override
  String get gameSceneToyMakerSWorkshop => 'Werkstatt des Spielzeugmachers';

  @override
  String get gameSceneWoodlandCampsite => 'Campingplatz im Wald';

  @override
  String get gameSceneAfternoonMusicRoom => 'Musikzimmer am Nachmittag';

  @override
  String get gameSceneSeasideIceCreamStand => 'Eisstand am Meer';

  @override
  String get gameSceneLibraryReadingNook => 'Leseecke in der Bibliothek';

  @override
  String get gameSceneSewingStudio => 'Nähatelier';

  @override
  String get gameSceneFruitMarket => 'Obstmarkt';

  @override
  String get gameSceneKoiCourtyard => 'Koi-Innenhof';

  @override
  String get gameSceneArtistSAtelier => 'Atelier des Künstlers';

  @override
  String get gameSceneMountainRailway => 'Bergbahn';

  @override
  String get gameSceneCountryKitchen => 'Landhausküche';

  @override
  String get gameScenePotteryWorkshop => 'Töpferwerkstatt';

  @override
  String get gameSceneBeachPicnic => 'Picknick am Strand';

  @override
  String get gameSceneFlowerShop => 'Blumenladen';

  @override
  String get gameSceneClockmakerSWorkshop => 'Werkstatt des Uhrmachers';

  @override
  String get gameSceneRainyCafeTerrace => 'Regnerische Caféterrasse';

  @override
  String get gameSceneCastleHerbGarden => 'Kräutergarten des Schlosses';

  @override
  String get gameSceneClassroomArtCorner => 'Kunstecke im Klassenzimmer';

  @override
  String get gameSceneAquariumShop => 'Aquaristikgeschäft';

  @override
  String get gameSceneAutumnLeafCollection => 'Herbstblättersammlung';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Einsamer Baum unter dem Mond';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Herbstblüte an einem Zweig';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Fuchs zwischen grünen Blättern';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Kanu auf einem seerosenbedeckten See';

  @override
  String get gameSceneDewDropsOnALeaf => 'Tautropfen auf einem Blatt';

  @override
  String get gameSceneStagInATurquoiseLake => 'Hirsch in einem türkisfarbenen See';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Fahrrad unter einem orangefarbenen Mond';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Weißer Tiger über dem Tal';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Zwei Bäume im blauen Wasser';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Angeln neben einem treuen Hund';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Lilien neben einem Bergsee';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Hirsch am rosa Flussufer';

  @override
  String get gameSceneTropicalHutAtSunset => 'Tropische Hütte bei Sonnenuntergang';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Fuchs mit Blick auf ein Alpental';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Sonnenuntergang durch einen verzauberten Hain';

  @override
  String get learningControlTitle => 'DevOps lernen';

  @override
  String get learningControlAllCategories => 'Alle Kategorien';

  @override
  String get learningControlSearchCards => 'Karten suchen';

  @override
  String get learningControlClearSearch => 'Suche löschen';

  @override
  String get learningControlCategory => 'Kategorie';

  @override
  String get learningControlShowAll => 'Alle Karten anzeigen';

  @override
  String learningControlShowSaved(int count) {
    return 'Gespeicherte Karten anzeigen ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Mischen ausschalten';

  @override
  String get learningControlShuffleOn => 'Karten mischen';

  @override
  String get learningControlAutoOff => 'Automatischen Wechsel beenden';

  @override
  String get learningControlAutoOn => 'Automatischer Wechsel alle 10 Sekunden';

  @override
  String get learningControlNoSaved => 'Noch keine Karten gespeichert';

  @override
  String get learningControlNoMatches => 'Keine passenden Karten';

  @override
  String get learningControlResetFilters => 'Filter zurücksetzen';

  @override
  String get learningControlPrevious => 'Zurück';

  @override
  String get learningControlNext => 'Weiter';

  @override
  String get learningControlProgress => 'Fortschritt';

  @override
  String get learningControlRemoveSaved => 'Aus Gespeichertem entfernen';

  @override
  String get learningControlSaveCard => 'Karte speichern';

  @override
  String get learningControlExample => 'Beispiel';

  @override
  String get learningControlCopyExample => 'Beispiel kopieren';

  @override
  String get learningControlExampleCopied => 'Beispiel kopiert';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Level $value1 abgeschlossen';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Level $value1 spielen';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Schließe Level $value1 ab, um es freizuschalten';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Täglicher Anmeldebonus';

  @override
  String get sharedDialogThanksForComingBack => 'Danke, dass du zurück bist!';

  @override
  String get sharedDialogDailyRewardAdded => 'Deine tägliche Belohnung wurde zu deinen Gesamtpunkten hinzugefügt.';

  @override
  String get sharedDialogAwesome => 'Großartig!';

  @override
  String get accountWelcomeGuest => 'Gast';

  @override
  String get accountWelcomeGuestUser => 'Gastnutzer';

  @override
  String get accountWelcomeUser => 'Nutzer';

  @override
  String get accountWelcomePlayingAsGuest => 'Spielt als Gast';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google-Konto verbinden';

  @override
  String get accountWelcomeGoogleConnected => 'Google-Konto erfolgreich verbunden! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Anmeldung wurde abgebrochen.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Verbindung fehlgeschlagen: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Abmelden';

  @override
  String get accountWelcomeSignOutTitle => 'Abmelden?';

  @override
  String get accountWelcomeSignOutMessage => 'Möchten Sie sich wirklich abmelden? Sie müssen sich erneut anmelden, um auf Ihren gespeicherten Fortschritt zuzugreifen.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Abmeldung fehlgeschlagen: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ App-Daten zurücksetzen?';

  @override
  String get accountWelcomeResetAppMessage => 'Dadurch werden ALLE Ihre Punkte, Serien, der Spielverlauf und die Einstellungen dauerhaft gelöscht. Sie werden abgemeldet und zum Startbildschirm zurückgeleitet. Dies kann nicht rückgängig gemacht werden.';

  @override
  String get accountWelcomeResetEverything => 'Alles zurücksetzen';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Zurücksetzen fehlgeschlagen: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Abbrechen';

  @override
  String get accountWelcomeResetAppData => 'App-Daten zurücksetzen';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Alle Punkte, Serien und Einstellungen löschen';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz App';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Übersetzung noch nicht verfügbar';

  @override
  String get accountWelcomeContinueWithGoogle => 'Weiter mit Google';

  @override
  String get accountWelcomeSigningIn => 'Anmeldung läuft...';

  @override
  String get accountWelcomeOr => 'ODER';

  @override
  String get accountWelcomeContinueAsGuest => 'Als Gast fortfahren';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Sie können sich später über Ihr Profil anmelden.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Sie können als Gast beginnen und sich später anmelden.';

  @override
  String get accountWelcomeGreetingGuest => 'Willkommen';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Willkommen, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Die Google-Anmeldung wurde abgeschlossen, aber es wurde kein Nutzerkonto zurückgegeben.';

  @override
  String get accountWelcomeErrorEmailExists => 'Für diese E-Mail-Adresse existiert bereits ein Konto mit einer anderen Anmeldemethode.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Dieses Google-Konto ist bereits mit einem anderen Konto verknüpft.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Die Google-Anmeldedaten sind ungültig oder abgelaufen.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Dieses Konto wurde deaktiviert.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Die Google-Anmeldung ist derzeit nicht aktiviert.';

  @override
  String get accountWelcomeErrorNetwork => 'Netzwerkfehler. Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Zu viele Anmeldeversuche. Bitte warten Sie und versuchen Sie es erneut.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Keine weiteren Fehlerinformationen.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google-Anmeldung fehlgeschlagen.\n\nCode: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google-Anmeldefehler:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Fortfahren als Gast nicht möglich. Bitte versuchen Sie es erneut.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Die Google-Anmeldung wird in Kürze verfügbar sein.';

  @override
  String get accountWelcomeLoginTagline => 'Lernen • Üben • Messen • Verdienen';

  @override
  String get accountWelcomeCountryRegion => 'Land / Region';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Land / Region: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Land suchen';

  @override
  String get accountWelcomeCountryNotSelected => 'Nicht ausgewählt';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Warum DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ Übungsfragen';

  @override
  String get accountWelcomeFeatureLanguages => 'Mehrsprachige Unterstützung';

  @override
  String get accountWelcomeFeatureStreaks => 'Serien & Bestenlisten';

  @override
  String get accountWelcomeFeatureGames => 'Spiele & Herausforderungen';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud & DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Boni & Belohnungen';

  @override
  String get accountWelcomePracticeOnTheGo => 'Unterwegs üben';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Installieren Sie die Android-App und lernen Sie überall offline.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Jetzt bei Google Play';

  @override
  String achLocStreakTitle(String days) {
    return '$days Tage in Folge';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Halte eine Serie von $days Tagen aufrecht.';
  }

  @override
  String get achLocYearStreakTitle => '1 Jahr in Folge';

  @override
  String get achLocFirstQuizTitle => 'Erstes Quiz';

  @override
  String get achLocFirstQuizDescription => 'Schließe dein erstes Quiz ab.';

  @override
  String get achLocQuiz10Title => 'Quiz-Entdecker';

  @override
  String get achLocQuiz10Description => 'Schließe 10 Quizze ab.';

  @override
  String get achLocPoints1000Title => '1000 Punkte';

  @override
  String get achLocPoints1000Description => 'Sammle insgesamt 1000 Punkte im Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Perfektes Ergebnis';

  @override
  String get achLocPerfectScoreDescription => 'Erreiche 100 % in einem beliebigen Quiz.';

  @override
  String get achLocQuiz25Title => 'Quiz-Begeisterter';

  @override
  String get achLocQuiz25Description => 'Schließe 25 Quizze ab.';

  @override
  String get achLocQuiz50Title => 'Quiz-Meister';

  @override
  String get achLocQuiz50Description => 'Schließe 50 Quizze ab.';

  @override
  String get achLocQuiz100Title => 'Hunderterclub';

  @override
  String get achLocQuiz100Description => 'Schließe 100 Quizze ab.';

  @override
  String get achLocQuiz250Title => 'Quiz-Legende';

  @override
  String get achLocQuiz250Description => 'Schließe 250 Quizze ab.';

  @override
  String get achLocPoints5000Title => '5.000 Punkte';

  @override
  String get achLocPoints5000Description => 'Sammle insgesamt 5.000 Punkte.';

  @override
  String get achLocPoints10000Title => '10.000 Punkte';

  @override
  String get achLocPoints10000Description => 'Sammle insgesamt 10.000 Punkte.';

  @override
  String get achLocPoints50000Title => '50.000 Punkte';

  @override
  String get achLocPoints50000Description => 'Sammle insgesamt 50.000 Punkte.';

  @override
  String get achLocPoints100000Title => '100.000 Punkte';

  @override
  String get achLocPoints100000Description => 'Sammle insgesamt 100.000 Punkte.';

  @override
  String get achLocDaily1Title => 'Täglicher Einstieg';

  @override
  String get achLocDaily1Description => 'Schließe dein erstes Tägliches Quiz ab.';

  @override
  String get achLocDaily7Title => 'Tägliche Gewohnheit';

  @override
  String get achLocDaily7Description => 'Schließe 7 Tägliche Quizze ab.';

  @override
  String get achLocDaily30Title => 'Täglicher Champion';

  @override
  String get achLocDaily30Description => 'Schließe 30 Tägliche Quizze ab.';

  @override
  String get achLocSets5Title => 'Set-Einsteiger';

  @override
  String get achLocSets5Description => 'Beende 5 Quiz-Sets.';

  @override
  String get achLocSets25Title => 'Set-Sammler';

  @override
  String get achLocSets25Description => 'Beende 25 Quiz-Sets.';

  @override
  String get achLocSets50Title => 'Set-Meister';

  @override
  String get achLocSets50Description => 'Beende 50 Quiz-Sets.';

  @override
  String get achLocSets100Title => 'Set-Legende';

  @override
  String get achLocSets100Description => 'Beende 100 Quiz-Sets.';

  @override
  String get achLocCert1Title => 'Erstes Zertifikat';

  @override
  String get achLocCert1Description => 'Erwirb dein erstes Kategoriezertifikat.';

  @override
  String get achLocCert5Title => 'Zertifizierter Profi';

  @override
  String get achLocCert5Description => 'Erwirb 5 Kategoriezertifikate.';

  @override
  String get achLocCert21Title => 'Vollständig zertifiziert';

  @override
  String get achLocCert21Description => 'Erwirb ein Zertifikat in allen 21 Kategorien.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Jedes Jahr kostenlos vom 7. bis 14. Feb.';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Jedes Jahr kostenlos vom 8. bis 15. März';

  @override
  String get achLocThemeLight => 'Hell';

  @override
  String get achLocThemeDark => 'Dunkel';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Sonnenuntergang';

  @override
  String get achLocThemeCoffee => 'Kaffee';

  @override
  String get achLocThemeTea => 'Tee';

  @override
  String get achLocThemeOcean => 'Ozean';

  @override
  String get achLocThemeSolarFlare => 'Sonneneruption';

  @override
  String get achLocThemeForest => 'Wald';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Cyber-Lila';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Mitternacht';

  @override
  String get achLocThemeDarkGrey => 'Dunkelgrau';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Valentinstag';

  @override
  String get achLocThemeDqSpecial => 'DQ Spezial';

  @override
  String get achLocThemeArmy => 'Armee';

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
  String get achLocThemeDc => 'DC-Helden';

  @override
  String get achLocThemeRainbow => 'Regenbogen';

  @override
  String get achLocThemeDiamond => 'Diamant';

  @override
  String get achLocThemeLegendary => 'Legendär';

  @override
  String get gameHintCmd001LsLa => 'Alle Dateien mit Details auflisten';

  @override
  String get gameHintCmd002Grep => 'Text anhand eines Musters suchen';

  @override
  String get gameHintCmd003Chmod => 'Dateiberechtigungen ändern';

  @override
  String get gameHintCmd004DfH => 'Freien Speicherplatz anzeigen';

  @override
  String get gameHintCmd005TailF => 'Einer wachsenden Logdatei folgen';

  @override
  String get gameHintCmd006PsAux => 'Laufende Prozesse auflisten';

  @override
  String get gameHintCmd007GitClone => 'Ein entferntes Repository kopieren';

  @override
  String get gameHintCmd008GitStash => 'Nicht committete Änderungen beiseitelegen';

  @override
  String get gameHintCmd009GitRebase => 'Commits auf einer neuen Basis erneut anwenden';

  @override
  String get gameHintCmd010GitBlame => 'Anzeigen, wer jede Zeile geändert hat';

  @override
  String get gameHintCmd011DockerPs => 'Laufende Container auflisten';

  @override
  String get gameHintCmd012DockerBuild => 'Ein Image aus einem Dockerfile erstellen';

  @override
  String get gameHintCmd013DockerLogs => 'Container-Ausgabe anzeigen';

  @override
  String get gameHintCmd014DockerExec => 'Einen Befehl in einem Container ausführen';

  @override
  String get gameHintCmd015KubectlGetPods => 'Pods in einem Namespace auflisten';

  @override
  String get gameHintCmd016KubectlApply => 'Ressourcen aus einer Datei erstellen';

  @override
  String get gameHintCmd017KubectlDescribe => 'Detaillierte Ressourceninfos anzeigen';

  @override
  String get gameHintCmd018KubectlScale => 'Die Anzahl der Replikate ändern';

  @override
  String get gameHintCmd019TerraformInit => 'Provider herunterladen und einrichten';

  @override
  String get gameHintCmd020TerraformPlan => 'Infrastrukturänderungen in der Vorschau anzeigen';

  @override
  String get gameHintCmd021TerraformApply => 'Infrastruktur erstellen oder aktualisieren';

  @override
  String get gameHintCmd022TerraformDestroy => 'Verwaltete Infrastruktur entfernen';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Ein Automatisierungs-Playbook ausführen';

  @override
  String get gameHintCmd024Ping => 'Erreichbarkeit mit ICMP testen';

  @override
  String get gameHintCmd025Traceroute => 'Den Pfad zu einem Host anzeigen';

  @override
  String get gameHintCmd026Curl => 'Daten von einer URL übertragen';

  @override
  String get gameHintCmd027Ssh => 'Sicher an einem entfernten Rechner anmelden';

  @override
  String get gameHintCmd028CrontabE => 'Geplante Aufgaben bearbeiten';

  @override
  String get gameHintCmd029SystemctlStatus => 'Den Status eines Dienstes prüfen';

  @override
  String get gameHintCmd030HelmInstall => 'Ein Chart in Kubernetes bereitstellen';

  @override
  String get gameHintWord001Git => 'Verfolgt Änderungen im Quellcode.';

  @override
  String get gameHintWord002Aws => 'Die Cloud-Plattform von Amazon.';

  @override
  String get gameHintWord003Api => 'Ein Vertrag, der die Kommunikation zwischen Softwaresystemen ermöglicht.';

  @override
  String get gameHintWord004Dns => 'Übersetzt Domainnamen in IP-Adressen.';

  @override
  String get gameHintWord005Cli => 'Eine textbasierte Schnittstelle zum Ausführen von Befehlen.';

  @override
  String get gameHintWord006Cpu => 'Der Prozessor, der Anweisungen ausführt.';

  @override
  String get gameHintWord007Ram => 'Temporärer Speicher, den laufende Programme verwenden.';

  @override
  String get gameHintWord008Ssh => 'Sicheres Protokoll für den Shell-Zugriff aus der Ferne.';

  @override
  String get gameHintWord009Yaml => 'Ein menschenlesbares Datenserialisierungsformat.';

  @override
  String get gameHintWord010Linux => 'Open-Source-Betriebssystemkernel und -Familie.';

  @override
  String get gameHintWord011Bash => 'Eine beliebte Unix-Befehlsshell.';

  @override
  String get gameHintWord012Cloud => 'Bedarfsgerechte Rechenleistung über ein Netzwerk.';

  @override
  String get gameHintWord013Docker => 'Eine Plattform zum Erstellen und Ausführen von Containern.';

  @override
  String get gameHintWord014Azure => 'Die Cloud-Plattform von Microsoft.';

  @override
  String get gameHintWord015Python => 'Eine weit verbreitete Skript- und Programmiersprache.';

  @override
  String get gameHintWord016Github => 'Ein beliebter gehosteter Git-Zusammenarbeitsdienst.';

  @override
  String get gameHintWord017Bgp => 'Routing-Protokoll, das Routen zwischen autonomen Systemen austauscht.';

  @override
  String get gameHintWord018Jenkins => 'Ein Automatisierungsserver, der oft für CI verwendet wird.';

  @override
  String get gameHintWord019Port => 'Ein nummerierter Endpunkt, den Netzwerkdienste nutzen.';

  @override
  String get gameHintWord020Proxy => 'Ein Server, der Anfragen für Clients weiterleitet.';

  @override
  String get gameHintWord021Cache => 'Ein schneller Speicher für häufig wiederverwendete Daten.';

  @override
  String get gameHintWord022Cron => 'Unix-Planer für wiederkehrende Befehle.';

  @override
  String get gameHintWord023Bicep => 'Die deklarative Sprache von Azure für Infrastructure as Code.';

  @override
  String get gameHintWord024Apigee => 'Google-Cloud-Plattform für zentrales API-Management.';

  @override
  String get gameHintWord025Root => 'Privilegiertes Administratorkonto auf Unix-ähnlichen Systemen.';

  @override
  String get gameHintWord026Nginx => 'Webserver und Reverse-Proxy.';

  @override
  String get gameHintWord027Redis => 'In-Memory-Datenspeicher, der oft als Cache dient.';

  @override
  String get gameHintWord028Mysql => 'Beliebtes relationales Datenbanksystem.';

  @override
  String get gameHintWord029Ruby => 'Programmiersprache, die von Tools wie Chef verwendet wird.';

  @override
  String get gameHintWord030Helm => 'Paketmanager, der häufig mit Kubernetes verwendet wird.';

  @override
  String get gameHintWord031Pod => 'Kleinste bereitstellbare Einheit in Kubernetes.';

  @override
  String get gameHintWord032Image => 'Schreibgeschützte Vorlage zum Erstellen eines Containers.';

  @override
  String get gameHintWord033Build => 'Erzeugt ein Artefakt aus Quellcode und Abhängigkeiten.';

  @override
  String get gameHintWord034Deploy => 'Veröffentlicht eine Anwendung in einer Umgebung.';

  @override
  String get gameHintWord035Terraform => 'HashiCorp-Tool für Infrastructure as Code.';

  @override
  String get gameHintWord036Ansible => 'Agentenloses Automatisierungs- und Konfigurationstool.';

  @override
  String get gameHintWord037Kubectl => 'Kommandozeilen-Client für Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Abkürzung für Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Betriebsmodell, das Git als maßgebliche Quelle nutzt.';

  @override
  String get gameHintWord040Pipeline => 'Automatisierte Abfolge von Build-, Test- und Release-Phasen.';

  @override
  String get gameHintWord041Container => 'Isolierter Prozess, verpackt mit seinen Abhängigkeiten.';

  @override
  String get gameHintWord042Cluster => 'Gruppe von Maschinen, die als gemeinsames System verwaltet wird.';

  @override
  String get gameHintWord043Ingress => 'Kubernetes-API-Objekt für externes HTTP-Routing.';

  @override
  String get gameHintWord044Firewall => 'Filtert Netzwerkverkehr nach Sicherheitsregeln.';

  @override
  String get gameHintWord045Subnet => 'Logische Unterteilung eines IP-Netzwerks.';

  @override
  String get gameHintWord046Gateway => 'Netzwerkknoten, der verschiedene Netzwerke verbindet.';

  @override
  String get gameHintWord047Router => 'Leitet Pakete zwischen Netzwerken weiter.';

  @override
  String get gameHintWord048Switch => 'Verbindet Geräte innerhalb eines lokalen Netzwerks.';

  @override
  String get gameHintWord049Repository => 'Verwalteter Speicher für Quellcode oder Pakete.';

  @override
  String get gameHintWord050Systemd => 'Linux-Init-System und Dienstmanager.';

  @override
  String get gameHintWord051Journalctl => 'Befehl zum Lesen der systemd-Journalprotokolle.';

  @override
  String get gameHintWord052Permission => 'Regel, die steuert, wer lesen, schreiben oder ausführen darf.';

  @override
  String get gameHintWord053Alloydb => 'Von Google Cloud verwaltete, PostgreSQL-kompatible Datenbank.';

  @override
  String get gameHintWord054Configmap => 'Kubernetes-Objekt für nicht geheime Konfiguration.';

  @override
  String get gameHintWord055Secret => 'Kubernetes-Objekt für sensible Daten.';

  @override
  String get gameHintWord056Persistent => 'Beschreibt Speicher, der einen Neustart der Workload überdauert.';

  @override
  String get gameHintWord057Volume => 'In einen Container eingebundener Dateisystemspeicher.';

  @override
  String get gameHintWord058Storage => 'Dauerhafter Ort für Dateien, Objekte oder Blöcke.';

  @override
  String get gameHintWord059Replica => 'Kopie einer Workload-Instanz für Skalierung oder Zuverlässigkeit.';

  @override
  String get gameHintWord060Deployment => 'Kubernetes-Controller für zustandslose Anwendungs-Pods.';

  @override
  String get gameHintWord061Dockerfile => 'Anweisungen zum Erstellen eines Docker-Images.';

  @override
  String get gameHintWord062Database => 'Organisierter Datenspeicher, den Anwendungen abfragen.';

  @override
  String get gameHintWord063Automation => 'Einsatz von Software, um wiederholbare Aufgaben ohne manuelle Schritte auszuführen.';

  @override
  String get gameHintWord064Anthos => 'Google-Cloud-Plattform zur Verwaltung von Clustern über Umgebungen hinweg.';

  @override
  String get gameHintWord065Bigquery => 'Google-Cloud-Dienst für Datenanalysen im großen Maßstab.';

  @override
  String get gameHintWord066Bigtable => 'Breitspaltige NoSQL-Datenbank von Google Cloud für Analysen.';

  @override
  String get gameHintWord067Loadbalancer => 'Verteilt eingehenden Datenverkehr auf mehrere Backends.';

  @override
  String get gameHintWord068Prometheus => 'Monitoring-System, das Zeitreihenmetriken speichert.';

  @override
  String get gameHintWord069Grafana => 'Plattform zum Abfragen und Visualisieren von Observability-Daten.';

  @override
  String get gameHintWord070Cloudant => 'Verwaltete NoSQL-JSON-Dokumentdatenbank von IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'AWS-Dienst, der API-Aktivitäten für Audits aufzeichnet.';

  @override
  String get gameHintWord072Statefulset => 'Kubernetes-Controller für Workloads mit stabiler Identität.';

  @override
  String get gameHintWord073Daemonset => 'Kubernetes-Controller, der einen Pod auf ausgewählten Nodes ausführt.';

  @override
  String get gameHintWord074Serviceaccount => 'Kubernetes-Identität, die eine Workload oder ein Prozess verwendet.';

  @override
  String get gameHintWord075Networkpolicy => 'Kubernetes-Ressource, die den Netzwerkverkehr von Pods steuert.';

  @override
  String get gameHintWord076Certificate => 'Digitales Dokument zur Identitätsfeststellung in TLS.';

  @override
  String get gameHintWord077Encryption => 'Wandelt Daten so um, dass nur autorisierte Parteien sie lesen können.';

  @override
  String get gameHintWord078Observability => 'Fähigkeit, das Systemverhalten aus seinen Ausgaben abzuleiten.';

  @override
  String get gameHintWord079Coredns => 'DNS-Server, der häufig in Kubernetes-Clustern verwendet wird.';

  @override
  String get gameHintWord080Crossplane => 'Projekt zur Verwaltung von Cloud-Ressourcen über Kubernetes-APIs.';

  @override
  String get gameHintWord081Failover => 'Wechsel zu einer Standby-Komponente nach einem Ausfall.';

  @override
  String get gameHintWord082Idempotency => 'Eigenschaft, bei der die Wiederholung einer Operation dieselbe Wirkung hat wie die einmalige Ausführung.';

  @override
  String get gameHintWord083Dataflow => 'Google-Cloud-Dienst für Stream- und Batch-Datenverarbeitung.';

  @override
  String get gameHintWord084Orchestration => 'Koordinierte Verwaltung mehrerer automatisierter Workloads.';

  @override
  String get gameHintWord085Dataplex => 'Google-Cloud-Dienst zum Entdecken und Steuern von Unternehmensdaten.';

  @override
  String get gameHintWord086Serverless => 'Ausführungsmodell, bei dem die Infrastrukturverwaltung abstrahiert wird.';

  @override
  String get gameHintWord087Distributed => 'System, dessen Komponenten auf mehreren vernetzten Maschinen laufen.';

  @override
  String get gameHintWord088Dataproc => 'Von Google Cloud verwaltete Apache-Spark- und Hadoop-Umgebung.';

  @override
  String get gameHintWord089Dynamodb => 'AWS-NoSQL-Datenbank, oft für das State-Locking von Terraform genutzt.';

  @override
  String get gameHintWord090Provisioning => 'Vorbereiten von Infrastruktur oder Ressourcen zur Nutzung.';

  @override
  String get gameHintWord091Elasticsearch => 'Suchmaschine, die häufig für zentrales Logging verwendet wird.';

  @override
  String get gameHintWord092Etcd => 'Schlüssel-Wert-Speicher, der den Zustand des Kubernetes-Clusters enthält.';

  @override
  String get gameHintWord093Authentication => 'Vorgang zur Überprüfung, wer ein Benutzer oder Dienst ist.';

  @override
  String get gameHintWord094Authorization => 'Vorgang, der entscheidet, was eine Identität tun darf.';

  @override
  String get gameHintWord095Expressroute => 'Azure-Dienst für dedizierte private Verbindungen zu Rechenzentren.';

  @override
  String get gameHintWord096Configuration => 'Einstellungen, die das Verhalten von Software bestimmen.';

  @override
  String get gameHintWord097Infrastructure => 'Rechen-, Netzwerk- und Speicherressourcen, die Anwendungen unterstützen.';

  @override
  String get gameHintWord098Fastconnect => 'Oracle-Cloud-Dienst für dedizierte private Netzwerkverbindungen.';

  @override
  String get gameHintWord099Containerd => 'Branchenübliche Container-Laufzeit, die von Kubernetes verwendet wird.';

  @override
  String get gameHintWord100Kubernetes => 'Plattform zur Container-Orchestrierung.';

  @override
  String get gameHintWord101Http => 'Anwendungsprotokoll zum Anfordern von Webressourcen.';

  @override
  String get gameHintWord102Https => 'Verschlüsselte Version des Web-Anfrageprotokolls.';

  @override
  String get gameHintWord103Tcp => 'Transportprotokoll mit zuverlässiger, geordneter Zustellung.';

  @override
  String get gameHintWord104Udp => 'Verbindungsloses Transportprotokoll für Datagramme.';

  @override
  String get gameHintWord105Tls => 'Protokoll zur Absicherung von über ein Netzwerk ausgetauschten Daten.';

  @override
  String get gameHintWord106Ssl => 'Älterer Vorgänger des modernen Transportsicherheitsprotokolls.';

  @override
  String get gameHintWord107Ftp => 'Traditionelles Protokoll zur Dateiübertragung.';

  @override
  String get gameHintWord108Sftp => 'Dateiübertragungsprotokoll über eine Secure-Shell-Verbindung.';

  @override
  String get gameHintWord109Smtp => 'Protokoll zum Senden von E-Mails zwischen Servern.';

  @override
  String get gameHintWord110Snmp => 'Protokoll zur Verwaltung und Überwachung von Netzwerkgeräten.';

  @override
  String get gameHintWord111Icmp => 'Protokoll, das Netzwerkfehler und Ping-Nachrichten überträgt.';

  @override
  String get gameHintWord112Arp => 'Löst lokale IPv4-Adressen in Hardwareadressen auf.';

  @override
  String get gameHintWord113Dhcp => 'Vergibt IP-Konfiguration automatisch an Netzwerk-Clients.';

  @override
  String get gameHintWord114Nat => 'Schreibt Netzwerkadressen um, wenn Pakete ein Gateway passieren.';

  @override
  String get gameHintWord115Vpn => 'Verschlüsselter Tunnel, der entfernte Netzwerke oder Benutzer verbindet.';

  @override
  String get gameHintWord116Vpc => 'Isoliertes virtuelles Netzwerk in einer Public Cloud.';

  @override
  String get gameHintWord117Vlan => 'Logische Trennung eines geswitchten Netzwerks.';

  @override
  String get gameHintWord118Wan => 'Netzwerk, das ein weites geografisches Gebiet umspannt.';

  @override
  String get gameHintWord119Lan => 'Netzwerk, das Geräte in einem lokalen Bereich verbindet.';

  @override
  String get gameHintWord120Cdn => 'Verteiltes Edge-Netzwerk, das ausgelieferte Inhalte zwischenspeichert.';

  @override
  String get gameHintWord121Cidr => 'Notation, die ein Netzwerkpräfix mit einer Schrägstrich-Länge angibt.';

  @override
  String get gameHintWord122Host => 'Ein Computer oder Endpunkt, der mit einem Netzwerk verbunden ist.';

  @override
  String get gameHintWord123Hostname => 'Menschenlesbarer Name, der einer vernetzten Maschine zugewiesen ist.';

  @override
  String get gameHintWord124Domain => 'Benannter Verwaltungsbereich im Namenssystem des Internets.';

  @override
  String get gameHintWord125Zone => 'Verwaltungsabschnitt eines DNS-Namensraums.';

  @override
  String get gameHintWord126Record => 'Ein einzelner Eintrag in einer DNS-Datenbank.';

  @override
  String get gameHintWord127Aaaa => 'DNS-Eintragstyp, der einen Namen zu einer IPv6-Adresse auflöst.';

  @override
  String get gameHintWord128Ptr => 'DNS-Eintragstyp für umgekehrte Adressabfragen.';

  @override
  String get gameHintWord129Txt => 'DNS-Eintragstyp, der Textwerte speichert.';

  @override
  String get gameHintWord130Cname => 'DNS-Eintrag, der einen Namen zum Alias eines anderen macht.';

  @override
  String get gameHintWord131Route => 'Ein Pfadeintrag, der Pakete zu einem Ziel lenkt.';

  @override
  String get gameHintWord132Routing => 'Auswahl von Pfaden für den Verkehr zwischen Netzwerken.';

  @override
  String get gameHintWord133Packet => 'Eine über ein Netzwerk übertragene Dateneinheit.';

  @override
  String get gameHintWord134Protocol => 'Vereinbarte Regeln für die Kommunikation zwischen Systemen.';

  @override
  String get gameHintWord135Ack => 'TCP-Flag, das den Empfang von Daten bestätigt.';

  @override
  String get gameHintWord136Bandwidth => 'Kapazität einer Kommunikationsverbindung.';

  @override
  String get gameHintWord137Latency => 'Verzögerung, bis eine Anfrage oder ein Paket eine Antwort erhält.';

  @override
  String get gameHintWord138Throughput => 'Menge an nützlicher Arbeit oder Daten, die pro Zeiteinheit verarbeitet wird.';

  @override
  String get gameHintWord139Mtu => 'Größte Paketgröße, die eine Verbindung ohne Fragmentierung übertragen kann.';

  @override
  String get gameHintWord140Alpn => 'TLS-Erweiterung zur Aushandlung eines Anwendungsschichtprotokolls.';

  @override
  String get gameHintWord141Grep => 'Durchsucht Textzeilen nach einem passenden Muster.';

  @override
  String get gameHintWord142Sed => 'Stream-Editor, der häufig für Textersetzungen verwendet wird.';

  @override
  String get gameHintWord143Lscpu => 'Linux-Befehl, der Prozessorarchitektur und Kerndetails anzeigt.';

  @override
  String get gameHintWord144Find => 'Durchsucht einen Verzeichnisbaum mithilfe von Dateiprädikaten.';

  @override
  String get gameHintWord145Lsblk => 'Linux-Befehl, der Blockgeräte und ihre Beziehungen auflistet.';

  @override
  String get gameHintWord146Sort => 'Ordnet Textzeilen.';

  @override
  String get gameHintWord147Uniq => 'Filtert aufeinanderfolgende doppelte Zeilen.';

  @override
  String get gameHintWord148Head => 'Gibt den Anfang einer Datei aus.';

  @override
  String get gameHintWord149Tail => 'Gibt das Ende einer Datei aus und kann angehängten Logs folgen.';

  @override
  String get gameHintWord150Cat => 'Verkettet Dateien und gibt deren Inhalt aus.';

  @override
  String get gameHintWord151Cut => 'Extrahiert ausgewählte Felder oder Zeichenspalten aus Zeilen.';

  @override
  String get gameHintWord152Tee => 'Kopiert die Standardeingabe in Dateien und die Standardausgabe.';

  @override
  String get gameHintWord153Echo => 'Schreibt seine Argumente in die Standardausgabe.';

  @override
  String get gameHintWord154Printf => 'Gibt formatierten Text aus einer Shell oder einem Programm aus.';

  @override
  String get gameHintWord155Touch => 'Aktualisiert Dateizeitstempel oder erstellt eine leere Datei.';

  @override
  String get gameHintWord156Mkdir => 'Erstellt Verzeichnisse.';

  @override
  String get gameHintWord157Rmdir => 'Entfernt leere Verzeichnisse.';

  @override
  String get gameHintWord158Chmod => 'Ändert die Unix-Dateiberechtigungsbits.';

  @override
  String get gameHintWord159Chown => 'Ändert den Dateibesitzer.';

  @override
  String get gameHintWord160Chgrp => 'Ändert die Gruppenzugehörigkeit einer Datei.';

  @override
  String get gameHintWord161Pwd => 'Gibt das aktuelle Arbeitsverzeichnis aus.';

  @override
  String get gameHintWord162Apt => 'Paketverwaltungstool für Debian-basierte Systeme.';

  @override
  String get gameHintWord163Top => 'Interaktive Anzeige von Prozessen und Systemressourcennutzung.';

  @override
  String get gameHintWord164Agent => 'Softwarekomponente, die auf einem Host Arbeit ausführt oder meldet.';

  @override
  String get gameHintWord165Kill => 'Sendet ein Signal an einen Prozess anhand seiner Kennung.';

  @override
  String get gameHintWord166Signal => 'Benachrichtigung, die das Betriebssystem an einen Prozess zustellt.';

  @override
  String get gameHintWord167Sigkill => 'Unix-Signal, das einen Prozess sofort beendet.';

  @override
  String get gameHintWord168Nice => 'Startet einen Prozess mit angepasster Scheduling-Priorität.';

  @override
  String get gameHintWord169Renice => 'Ändert die Scheduling-Priorität eines laufenden Prozesses.';

  @override
  String get gameHintWord170Jobs => 'Listet die von der aktuellen Shell verwalteten Jobs auf.';

  @override
  String get gameHintWord171Nohup => 'Führt einen Befehl aus und ignoriert dabei Hangup-Signale.';

  @override
  String get gameHintWord172Screen => 'Terminal-Multiplexer mit abtrennbaren Sitzungen.';

  @override
  String get gameHintWord173Uptime => 'Zeigt an, wie lange ein System schon läuft.';

  @override
  String get gameHintWord174Uname => 'Gibt System- und Kernelinformationen aus.';

  @override
  String get gameHintWord175Whoami => 'Gibt den effektiven aktuellen Benutzernamen aus.';

  @override
  String get gameHintWord176Umask => 'Legt die Berechtigungsmaske fest, die beim Erstellen von Dateien gilt.';

  @override
  String get gameHintWord177Usermod => 'Linux-Befehl, der ein bestehendes Benutzerkonto ändert.';

  @override
  String get gameHintWord178Crontab => 'Bearbeitet oder listet geplante, wiederkehrende Shell-Jobs.';

  @override
  String get gameHintWord179Findmnt => 'Linux-Befehl, der Informationen zu eingehängten Dateisystemen anzeigt.';

  @override
  String get gameHintWord180Mount => 'Hängt ein Dateisystem in den Verzeichnisbaum ein.';

  @override
  String get gameHintWord181Sigterm => 'Unix-Signal, das eine ordnungsgemäße Beendigung des Prozesses anfordert.';

  @override
  String get gameHintWord182Fstab => 'Systemtabelle, die einzubindende Dateisysteme beschreibt.';

  @override
  String get gameHintWord183Swap => 'Datenträgerbasierter Bereich, der den physischen Speicher ergänzt.';

  @override
  String get gameHintWord184Tmpfs => 'Temporäres Dateisystem, das auf virtuellem Speicher basiert.';

  @override
  String get gameHintWord185Proc => 'Virtuelles Linux-Dateisystem, das Prozess- und Kernelinformationen bereitstellt.';

  @override
  String get gameHintWord186Syslog => 'Standardisiertes Logging-Protokoll und Nachrichtenformat.';

  @override
  String get gameHintWord187Dmesg => 'Zeigt Meldungen aus dem Kernel-Ringpuffer an.';

  @override
  String get gameHintWord188Free => 'Zeigt belegten und verfügbaren Systemspeicher an.';

  @override
  String get gameHintWord189Stat => 'Zeigt detaillierte Dateimetadaten an.';

  @override
  String get gameHintWord190Lsof => 'Listet offene Dateien und die Prozesse auf, die sie halten.';

  @override
  String get gameHintWord191Netstat => 'Zeigt Netzwerkverbindungen und Routing-Informationen an.';

  @override
  String get gameHintWord192Checksum => 'Berechneter Wert zur Erkennung von Änderungen oder Beschädigungen in Daten.';

  @override
  String get gameHintWord193Ping => 'Testet die Netzwerkerreichbarkeit mit Echo-Anfragen.';

  @override
  String get gameHintWord194Traceroute => 'Zeigt Zwischenstationen auf dem Weg zu einem Netzwerkziel.';

  @override
  String get gameHintWord195Resolver => 'DNS-Komponente, die Antworten auf Namensanfragen nachschlägt.';

  @override
  String get gameHintWord196Nslookup => 'Schlägt DNS-Namen und -Adressen nach.';

  @override
  String get gameHintWord197Telnet => 'Veraltetes unverschlüsseltes Protokoll für entfernte Terminals.';

  @override
  String get gameHintWord198Tftp => 'Einfaches UDP-basiertes Dateiübertragungsprotokoll.';

  @override
  String get gameHintWord199Daemon => 'Hintergrunddienst-Prozess auf Unix-ähnlichen Systemen.';

  @override
  String get gameHintWord200Kernel => 'Kernkomponente, die Betriebssystemressourcen verwaltet.';

  @override
  String get gameHintWord201Commit => 'Ein aufgezeichneter Schnappschuss von Änderungen in der Versionskontrolle.';

  @override
  String get gameHintWord202Branch => 'Verschiebbare Referenz, die eine Entwicklungslinie darstellt.';

  @override
  String get gameHintWord203Merge => 'Führt Verläufe verschiedener Entwicklungslinien zusammen.';

  @override
  String get gameHintWord204Rebase => 'Spielt Commits auf einem anderen Basis-Commit erneut ab.';

  @override
  String get gameHintWord205Clone => 'Erstellt eine lokale Kopie eines entfernten Repositorys.';

  @override
  String get gameHintWord206Fetch => 'Lädt entfernte Objekte und Referenzen herunter, ohne zu mergen.';

  @override
  String get gameHintWord207Pull => 'Holt Änderungen und integriert sie in den aktuellen Branch.';

  @override
  String get gameHintWord208Push => 'Sendet lokale Commits an ein entferntes Repository.';

  @override
  String get gameHintWord209Stash => 'Speichert nicht committete Änderungen im Arbeitsverzeichnis vorübergehend.';

  @override
  String get gameHintWord210Revert => 'Erstellt einen Commit, der einen anderen Commit rückgängig macht.';

  @override
  String get gameHintWord211Reset => 'Verschiebt eine Git-Referenz und kann Index oder Arbeitsdateien zurücksetzen.';

  @override
  String get gameHintWord212Reflog => 'Lokaler Verlauf der Aktualisierungen von Git-Referenzen.';

  @override
  String get gameHintWord213Diff => 'Zeigt Unterschiede zwischen Versionen oder Dateien an.';

  @override
  String get gameHintWord214Status => 'Zeigt gestagte, geänderte und nicht verfolgte Dateien an.';

  @override
  String get gameHintWord215Checkout => 'Git-Befehl zum Wechseln von Revisionen oder Wiederherstellen von Dateien.';

  @override
  String get gameHintWord216Tag => 'Benannte Referenz, die häufig ein Release markiert.';

  @override
  String get gameHintWord217Remote => 'Benannte Verbindung zu einem anderen Repository.';

  @override
  String get gameHintWord218Origin => 'Standardname für das Remote eines geklonten Repositorys.';

  @override
  String get gameHintWord219Upstream => 'Remote-Tracking-Branch, der einem lokalen Branch zugeordnet ist.';

  @override
  String get gameHintWord220Worktree => 'Ein ausgechecktes Arbeitsverzeichnis, das mit einem Repository verknüpft ist.';

  @override
  String get gameHintWord221Registry => 'Dienst, der Container-Images speichert und verteilt.';

  @override
  String get gameHintWord222Digest => 'Inhaltsbasierte Kennung eines Container-Images.';

  @override
  String get gameHintWord223Layer => 'Dateisystemänderungen, die einen Teil eines Container-Images bilden.';

  @override
  String get gameHintWord224Entrypoint => 'Dockerfile-Anweisung, die die Hauptausführungsdatei des Containers festlegt.';

  @override
  String get gameHintWord225Cmd => 'Dockerfile-Anweisung, die einen Standardbefehl oder Argumente festlegt.';

  @override
  String get gameHintWord226Workdir => 'Dockerfile-Anweisung, die das Arbeitsverzeichnis festlegt.';

  @override
  String get gameHintWord227Copy => 'Dockerfile-Anweisung, die Dateien aus dem Build-Kontext in ein Image kopiert.';

  @override
  String get gameHintWord228Add => 'Dockerfile-Anweisung, die auch lokale Archive entpacken kann.';

  @override
  String get gameHintWord229Run => 'Dockerfile-Anweisung, die einen Befehl zur Build-Zeit ausführt.';

  @override
  String get gameHintWord230Env => 'Dockerfile-Anweisung, die Umgebungsvariablen definiert.';

  @override
  String get gameHintWord231Arg => 'Dockerfile-Anweisung, die eine Build-Zeit-Variable deklariert.';

  @override
  String get gameHintWord232Expose => 'Dockerfile-Anweisung, die einen Container-Port dokumentiert.';

  @override
  String get gameHintWord233User => 'Dockerfile-Anweisung, die das Konto für spätere Befehle wählt.';

  @override
  String get gameHintWord234Healthcheck => 'Anweisung, die beschreibt, wie der Zustand eines Containers getestet wird.';

  @override
  String get gameHintWord235Shebang => 'Erste Zeile eines Skripts, die den auszuführenden Interpreter angibt.';

  @override
  String get gameHintWord236Compose => 'Docker-Tool zum Definieren und Ausführen von Multi-Container-Anwendungen.';

  @override
  String get gameHintWord237Bridge => 'Gängiger Docker-Netzwerktreiber für lokale Container-Netzwerke.';

  @override
  String get gameHintWord238Overlay => 'Netzwerk, das Container auf mehreren Hosts verbindet.';

  @override
  String get gameHintWord239None => 'Docker-Netzwerktreiber, der das Container-Netzwerk deaktiviert.';

  @override
  String get gameHintWord240Prune => 'Entfernt ungenutzte Container-Ressourcen.';

  @override
  String get gameHintWord241Replicaset => 'Kubernetes-Controller, der eine gewünschte Pod-Anzahl aufrechterhält.';

  @override
  String get gameHintWord242Service => 'Kubernetes-Abstraktion, die stabilen Zugriff auf Pods bietet.';

  @override
  String get gameHintWord243Endpoints => 'Adressen, die hinter einem Kubernetes-Service stehen.';

  @override
  String get gameHintWord244Namespace => 'Logischer Bereich, der Kubernetes-Ressourcen gruppiert.';

  @override
  String get gameHintWord245Node => 'Worker-Maschine, die Kubernetes-Pods hostet.';

  @override
  String get gameHintWord246Kubelet => 'Agent auf jedem Node, der die Ausführung von Pods verwaltet.';

  @override
  String get gameHintWord247Pvc => 'Kubernetes-Anforderung für persistenten Speicher.';

  @override
  String get gameHintWord248Apiserver => 'Kubernetes-Control-Plane-Komponente, die die Cluster-API bereitstellt.';

  @override
  String get gameHintWord249Role => 'Benannte Menge von Berechtigungen in der rollenbasierten Zugriffskontrolle.';

  @override
  String get gameHintWord250Resourcequota => 'Kubernetes-Objekt, das den Ressourcenverbrauch in einem Namespace begrenzt.';

  @override
  String get gameHintWord251Selector => 'Ausdruck, der Ressourcen anhand ihrer Labels auswählt.';

  @override
  String get gameHintWord252Taint => 'Node-Eigenschaft, die Pods ohne passende Toleration abweist.';

  @override
  String get gameHintWord253Toleration => 'Pod-Einstellung, die das Scheduling auf einen mit Taint versehenen Node erlaubt.';

  @override
  String get gameHintWord254Cordon => 'Markiert einen Kubernetes-Node als nicht planbar.';

  @override
  String get gameHintWord255Uncordon => 'Macht einen gesperrten Node wieder planbar.';

  @override
  String get gameHintWord256Drain => 'Verdrängt Workloads sicher vor Node-Wartungsarbeiten.';

  @override
  String get gameHintWord257Job => 'Kubernetes-Workload, die eine Aufgabe bis zum Abschluss ausführt.';

  @override
  String get gameHintWord258Cronjob => 'Kubernetes-Workload, die nach Zeitplan Jobs erstellt.';

  @override
  String get gameHintWord259Readiness => 'Probe, die anzeigt, ob ein Container Datenverkehr annehmen kann.';

  @override
  String get gameHintWord260Liveness => 'Probe, die anzeigt, ob ein Container neu gestartet werden muss.';

  @override
  String get gameHintWord261Canary => 'Release-Ansatz, bei dem eine neue Version nur einem kleinen Teil des Datenverkehrs ausgesetzt wird.';

  @override
  String get gameHintWord262Rolling => 'Update-Strategie, die laufende Instanzen schrittweise ersetzt.';

  @override
  String get gameHintWord263Rollback => 'Stellt eine zuvor funktionierende Anwendungsversion wieder her.';

  @override
  String get gameHintWord264Rollout => 'Schrittweise Bereitstellung einer neuen Anwendungsversion.';

  @override
  String get gameHintWord265Recreate => 'Deployment-Strategie, die alte Pods stoppt, bevor Ersatz-Pods starten.';

  @override
  String get gameHintWord266Blue => 'Eine der beiden Umgebungen bei einem Blue-Green-Release.';

  @override
  String get gameHintWord267Green => 'Die andere Umgebung bei einem Blue-Green-Release.';

  @override
  String get gameHintWord268Artifact => 'Versioniertes Ergebnis einer Build-Pipeline.';

  @override
  String get gameHintWord269Staging => 'Vorproduktionsumgebung zur Validierung von Releases.';

  @override
  String get gameHintWord270Production => 'Umgebung, die echte Endbenutzer bedient.';

  @override
  String get gameHintWord271Release => 'Eine zur Nutzung ausgelieferte Softwareversion.';

  @override
  String get gameHintWord272Version => 'Kennung, die einen Softwarestand unterscheidet.';

  @override
  String get gameHintWord273Revision => 'Eine identifizierbare Version eines Dokuments oder einer Codebasis.';

  @override
  String get gameHintWord274Webhook => 'HTTP-Benachrichtigung, die bei Eintritt eines Ereignisses gesendet wird.';

  @override
  String get gameHintWord275Runbook => 'Dokumentiertes Verfahren zum Betrieb oder zur Wiederherstellung eines Systems.';

  @override
  String get gameHintWord276Workspace => 'Verzeichnis oder Bereich mit den Arbeitsressourcen eines Projekts.';

  @override
  String get gameHintWord277Credentials => 'Authentifizierungsdaten für den Zugriff auf ein System.';

  @override
  String get gameHintWord278Trigger => 'Ereignis oder Bedingung, die eine Pipeline startet.';

  @override
  String get gameHintWord279Parameter => 'Benannte Eingabe, die einem Job oder einer Funktion übergeben wird.';

  @override
  String get gameHintWord280Access => 'Möglichkeit, eine Ressource unter Berücksichtigung der Autorisierung zu nutzen.';

  @override
  String get gameHintWord281Module => 'Wiederverwendbare Gruppe von Infrastrukturdefinitionen.';

  @override
  String get gameHintWord282Provider => 'Terraform-Plugin, das die Konfiguration mit einer externen API verbindet.';

  @override
  String get gameHintWord283Resource => 'Verwaltetes Infrastrukturobjekt, das in der Konfiguration deklariert ist.';

  @override
  String get gameHintWord284Variable => 'Benannter Eingabewert, den Konfiguration oder Code verwendet.';

  @override
  String get gameHintWord285Output => 'Bereitgestellter Wert, den eine Infrastrukturkonfiguration zurückgibt.';

  @override
  String get gameHintWord286Tfstate => 'Dateiendung für Terraform-State-Snapshots.';

  @override
  String get gameHintWord287Tfvars => 'Dateiendung für Eingabevariablenwerte von Terraform.';

  @override
  String get gameHintWord288Backend => 'Terraform-Konfiguration, die die Speicherung des States steuert.';

  @override
  String get gameHintWord289Plan => 'Terraform-Vorschau der geplanten Infrastrukturänderungen.';

  @override
  String get gameHintWord290Apply => 'Terraform-Operation, die die geplanten Änderungen ausführt.';

  @override
  String get gameHintWord291Destroy => 'Terraform-Operation, die verwaltete Infrastruktur entfernt.';

  @override
  String get gameHintWord292Import => 'Stellt eine bestehende Ressource unter Infrastrukturverwaltung.';

  @override
  String get gameHintWord293Refresh => 'Gleicht den erfassten State mit der tatsächlichen Infrastruktur ab.';

  @override
  String get gameHintWord294Validate => 'Prüft Konfigurationssyntax und interne Konsistenz.';

  @override
  String get gameHintWord295Fmt => 'Terraform-Befehl, der die kanonische Konfigurationsformatierung anwendet.';

  @override
  String get gameHintWord296Init => 'Initialisiert Terraform-Provider und das Arbeitsverzeichnis.';

  @override
  String get gameHintWord297Executor => 'Jenkins-Worker-Slot, der einen Build ausführen kann.';

  @override
  String get gameHintWord298Dependencies => 'Beziehungen, die eine Komponente vor einer anderen erfordern.';

  @override
  String get gameHintWord299Drift => 'Unterschied zwischen deklariertem und tatsächlichem Infrastrukturzustand.';

  @override
  String get gameHintWord300Locking => 'Verhindert, dass gleichzeitige Schreibzugriffe den gemeinsamen State ändern.';

  @override
  String get gameHintWord301Playbook => 'Ansible-Dokument, das Automatisierungs-Plays und -Tasks beschreibt.';

  @override
  String get gameHintWord302Inventory => 'Ansible-Sammlung verwalteter Hosts und Gruppen.';

  @override
  String get gameHintWord303Facts => 'Systeminformationen, die über verwaltete Hosts gesammelt werden.';

  @override
  String get gameHintWord304Task => 'Eine einzelne Arbeitseinheit in der Automatisierung.';

  @override
  String get gameHintWord305Handler => 'Ansible-Task, der bei Benachrichtigung über eine Änderung ausgeführt wird.';

  @override
  String get gameHintWord306Notify => 'Ansible-Direktive, die nach einem geänderten Task einen Handler einreiht.';

  @override
  String get gameHintWord307Become => 'Ansible-Einstellung, die Rechteerweiterung aktiviert.';

  @override
  String get gameHintWord308Vault => 'Ansible-Funktion zum Verschlüsseln sensibler Automatisierungsdaten.';

  @override
  String get gameHintWord309Register => 'Ansible-Direktive, die ein Task-Ergebnis in einer Variable speichert.';

  @override
  String get gameHintWord310When => 'Ansible-Schlüsselwort, das die bedingte Ausführung von Tasks steuert.';

  @override
  String get gameHintWord311Loop => 'Wiederholt einen Automatisierungs-Task über eine Sammlung.';

  @override
  String get gameHintWord312Include => 'Lädt wiederverwendbare Automatisierungsinhalte dynamisch.';

  @override
  String get gameHintWord313Tags => 'Labels zur Auswahl von Teilmengen von Automatisierungs-Tasks.';

  @override
  String get gameHintWord314Template => 'Datei, die vor der Bereitstellung mit Variablen gerendert wird.';

  @override
  String get gameHintWord315Jinja => 'Vorlagensprache, die Ansible verwendet.';

  @override
  String get gameHintWord316Abstraction => 'Verbirgt Implementierungsdetails hinter einer einfacheren Schnittstelle.';

  @override
  String get gameHintWord317Agile => 'Iterativer Ansatz zur Softwarebereitstellung mit Schwerpunkt auf Feedback.';

  @override
  String get gameHintWord318Puppet => 'Konfigurationsmanagement-Tool mit deklarativen Manifesten.';

  @override
  String get gameHintWord319Airflow => 'Plattform zum Planen und Orchestrieren von Workflow-DAGs.';

  @override
  String get gameHintWord320Argo => 'Cloud-native Projektfamilie mit einem GitOps-Delivery-Controller.';

  @override
  String get gameHintWord321Rds => 'Abkürzung für den verwalteten relationalen Datenbankdienst von AWS.';

  @override
  String get gameHintWord322Sqs => 'Abkürzung für die verwaltete Nachrichtenwarteschlange von AWS.';

  @override
  String get gameHintWord323Sns => 'Abkürzung für den Publish-Subscribe-Benachrichtigungsdienst von AWS.';

  @override
  String get gameHintWord324Ses => 'Abkürzung für den E-Mail-Versanddienst von AWS.';

  @override
  String get gameHintWord325Iam => 'Abkürzung für Cloud-Identitäts- und Zugriffsverwaltung.';

  @override
  String get gameHintWord326Kms => 'Abkürzung für den Schlüsselverwaltungsdienst für Verschlüsselung von AWS.';

  @override
  String get gameHintWord327Waf => 'Firewall, die Webanfragen auf Anwendungsebene filtert.';

  @override
  String get gameHintWord328Eks => 'Abkürzung für den verwalteten Kubernetes-Dienst von AWS.';

  @override
  String get gameHintWord329Ecs => 'Abkürzung für den verwalteten Container-Orchestrierungsdienst von AWS.';

  @override
  String get gameHintWord330Ecr => 'Abkürzung für die Container-Image-Registry von AWS.';

  @override
  String get gameHintWord331Aurora => 'Relationale AWS-Datenbank, kompatibel mit MySQL und PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Analytisches Data Warehouse von AWS.';

  @override
  String get gameHintWord333Neptune => 'Verwaltete Graphdatenbank von AWS.';

  @override
  String get gameHintWord334Elasticache => 'Verwalteter In-Memory-Caching-Dienst von AWS.';

  @override
  String get gameHintWord335Athena => 'AWS-Dienst, der Daten im Objektspeicher mit SQL abfragt.';

  @override
  String get gameHintWord336Glue => 'Serverloser Datenintegrations- und ETL-Dienst von AWS.';

  @override
  String get gameHintWord337Emr => 'AWS-Plattform für verwaltete Big-Data-Verarbeitungscluster.';

  @override
  String get gameHintWord338Lambda => 'AWS-Dienst, der Funktionen ausführt, ohne Server zu verwalten.';

  @override
  String get gameHintWord339Cloudfront => 'Globales Content-Delivery-Network von AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'AWS-Dienst, der Metriken, Logs und Alarme sammelt.';

  @override
  String get gameHintWord341Cloudshell => 'Browserbasierte Shell-Umgebung von AWS.';

  @override
  String get gameHintWord342Codecommit => 'Verwalteter Git-Repository-Dienst von AWS.';

  @override
  String get gameHintWord343Codebuild => 'AWS-Dienst, der Quellcode kompiliert und Build-Tests ausführt.';

  @override
  String get gameHintWord344Codedeploy => 'Automatisierter Anwendungsbereitstellungsdienst von AWS.';

  @override
  String get gameHintWord345Codepipeline => 'Continuous-Delivery-Pipeline-Dienst von AWS.';

  @override
  String get gameHintWord346Guardduty => 'Intelligenter Bedrohungserkennungsdienst von AWS.';

  @override
  String get gameHintWord347Inspector => 'AWS-Dienst, der Workloads auf Schwachstellen prüft.';

  @override
  String get gameHintWord348Macie => 'AWS-Dienst, der sensible Daten im Objektspeicher aufspürt.';

  @override
  String get gameHintWord349Shield => 'Verwalteter DDoS-Schutzdienst von AWS.';

  @override
  String get gameHintWord350Snowball => 'Physisches AWS-Gerät für große Datenübertragungen.';

  @override
  String get gameHintWord351Snowcone => 'Kleines, robustes Gerät aus der AWS-Familie für Offline-Übertragungen.';

  @override
  String get gameHintWord352Datasync => 'Automatisierter Online-Datenübertragungsdienst von AWS.';

  @override
  String get gameHintWord353Msk => 'Abkürzung für den verwalteten Apache-Kafka-Dienst von AWS.';

  @override
  String get gameHintWord354Backup => 'Aufbewahrte Datenkopie für die Wiederherstellung.';

  @override
  String get gameHintWord355Transcribe => 'AWS-Dienst, der Sprache in Text umwandelt.';

  @override
  String get gameHintWord356Translate => 'AWS-Dienst, der Text zwischen Sprachen übersetzt.';

  @override
  String get gameHintWord357Rekognition => 'AWS-Dienst, der Bilder und Videos analysiert.';

  @override
  String get gameHintWord358Comprehend => 'AWS-Dienst zur Analyse natürlicher Sprache.';

  @override
  String get gameHintWord359Textract => 'AWS-Dienst, der Text und Tabellen aus Dokumenten extrahiert.';

  @override
  String get gameHintWord360Sagemaker => 'AWS-Plattform zum Erstellen und Bereitstellen von Machine-Learning-Modellen.';

  @override
  String get gameHintWord361Spanner => 'Global verteilte relationale Datenbank von Google Cloud.';

  @override
  String get gameHintWord362Pub => 'Veröffentlichende Hälfte des Publish-Subscribe-Nachrichtenmusters.';

  @override
  String get gameHintWord363Sub => 'Abonnierende Hälfte des Publish-Subscribe-Nachrichtenmusters.';

  @override
  String get gameHintWord364Functions => 'Ereignisgesteuerte Codeeinheiten, die Serverless-Plattformen anbieten.';

  @override
  String get gameHintWord365App => 'Kurzform für eine Softwareanwendung.';

  @override
  String get gameHintWord366Engine => 'Ausführungskomponente in Namen wie Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Rechenkapazität, die von virtuellen Maschinen oder Containern bereitgestellt wird.';

  @override
  String get gameHintWord368Network => 'Verbundene Systeme, die Daten austauschen.';

  @override
  String get gameHintWord369Security => 'Schutz von Systemen und Informationen vor Bedrohungen.';

  @override
  String get gameHintWord370Identity => 'Darstellung eines Benutzers oder Dienstes für Zugriffsentscheidungen.';

  @override
  String get gameHintWord371Monitoring => 'Kontinuierliche Beobachtung von Systemzustand und -verhalten.';

  @override
  String get gameHintWord372Logging => 'Aufzeichnung einzelner Anwendungs- und Systemereignisse.';

  @override
  String get gameHintWord373Trace => 'Aufzeichnung des Pfads einer Anfrage über Dienstaufrufe hinweg.';

  @override
  String get gameHintWord374Metrics => 'Numerische Messwerte des Systemverhaltens über die Zeit.';

  @override
  String get gameHintWord375Alert => 'Benachrichtigung, dass ein überwachter Zustand Aufmerksamkeit erfordert.';

  @override
  String get gameHintWord376Billing => 'Erfassung und Abrechnung genutzter Cloud-Dienste.';

  @override
  String get gameHintWord377Quota => 'Limit für die Menge einer Ressource, die verbraucht werden kann.';

  @override
  String get gameHintWord378Region => 'Geografisches Cloud-Bereitstellungsgebiet mit Verfügbarkeitszonen.';

  @override
  String get gameHintWord379Tenancy => 'Anordnung, die beschreibt, wie Kunden sich Infrastruktur teilen.';

  @override
  String get gameHintWord380Regional => 'Beschreibt eine Ressource, die auf eine Cloud-Region begrenzt ist.';

  @override
  String get gameHintWord381Cosmos => 'Name der global verteilten Multi-Model-Datenbank von Azure.';

  @override
  String get gameHintWord382Synapse => 'Azure-Analyseplattform, die Data Warehousing und Datenverarbeitung vereint.';

  @override
  String get gameHintWord383Sentinel => 'Cloud-native Plattform von Microsoft für Sicherheitsinformationen und Ereignisverwaltung.';

  @override
  String get gameHintWord384Defender => 'Microsoft-Sicherheitsproduktfamilie zum Schutz von Cloud-Workloads.';

  @override
  String get gameHintWord385Entra => 'Microsoft-Identitätsproduktfamilie, die das Azure-AD-Branding ersetzt.';

  @override
  String get gameHintWord386Arm => 'Abkürzung für Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Azure-Dienst, der die Verwaltung auf Ressourcen außerhalb von Azure ausdehnt.';

  @override
  String get gameHintWord388Aks => 'Abkürzung für den verwalteten Kubernetes-Dienst von Azure.';

  @override
  String get gameHintWord389Armor => 'Namensbestandteil des Webschutzdienstes von Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Objektspeicher-Datentyp von Azure.';

  @override
  String get gameHintWord391Files => 'Azure-Dienst, der verwaltete Netzwerkdateifreigaben anbietet.';

  @override
  String get gameHintWord392Disk => 'Blockspeichergerät, das an eine virtuelle Maschine angeschlossen ist.';

  @override
  String get gameHintWord393Function => 'Aufrufbarer Codeblock, der ein Ergebnis zurückgeben kann.';

  @override
  String get gameHintWord394Logic => 'Azure-App-Service-Kategorie für Workflow-Integration.';

  @override
  String get gameHintWord395Insights => 'Namensbestandteil des Azure-Produkts für Anwendungstelemetrie.';

  @override
  String get gameHintWord396Traffic => 'Daten, die zwischen Netzwerkendpunkten fließen.';

  @override
  String get gameHintWord397Manager => 'Namensbestandteil des Azure-Resource-Produkts für dessen Control Plane.';

  @override
  String get gameHintWord398Bastion => 'Verwalteter oder gehärteter Einstiegspunkt für den Zugriff auf private Hosts.';

  @override
  String get gameHintWord399Front => 'Erstes Wort des globalen Azure-Einstiegsdienstes Front Door.';

  @override
  String get gameHintWord400Door => 'Zweites Wort des globalen Azure-Einstiegsdienstes Front Door.';

  @override
  String get gameHintWord401Javascript => 'Programmiersprache, die weit verbreitet in Browsern und Node-Laufzeiten verwendet wird.';

  @override
  String get gameHintWord402Perl => 'Skriptsprache, bekannt für Textverarbeitung und reguläre Ausdrücke.';

  @override
  String get gameHintWord403Powershell => 'Objektorientierte Shell und Automatisierungssprache von Microsoft.';

  @override
  String get gameHintWord404Java => 'JVM-Sprache, in der Jenkins implementiert ist.';

  @override
  String get gameHintWord405Json => 'Leichtgewichtiges Datenformat mit Objekten und Arrays.';

  @override
  String get gameHintWord406Xml => 'Auszeichnungsformat mit verschachtelten benannten Tags.';

  @override
  String get gameHintWord407Html => 'Auszeichnungssprache zur Strukturierung von Webseiten.';

  @override
  String get gameHintWord408Css => 'Stylesheet-Sprache zur Steuerung der Webdarstellung.';

  @override
  String get gameHintWord409String => 'Folge von Textzeichen.';

  @override
  String get gameHintWord410Array => 'Indizierte Sammlung von Elementen.';

  @override
  String get gameHintWord411Hash => 'Assoziative Schlüssel-Wert-Sammlung in Ruby und Perl.';

  @override
  String get gameHintWord412Object => 'Laufzeitwert mit Eigenschaften und Verhalten.';

  @override
  String get gameHintWord413Class => 'Definition zum Erzeugen von Objekten in klassenbasierten Sprachen.';

  @override
  String get gameHintWord414Method => 'Funktion, die einem Objekt oder einer Klasse zugeordnet ist.';

  @override
  String get gameHintWord415Interface => 'Vertrag, der die von einer Komponente bereitgestellten Operationen beschreibt.';

  @override
  String get gameHintWord416Subclass => 'Klasse, die von einer anderen Klasse abgeleitet ist.';

  @override
  String get gameHintWord417Super => 'Schlüsselwort zum Aufrufen des Verhaltens der Elternklasse.';

  @override
  String get gameHintWord418Protected => 'Sichtbarkeitsstufe, die den Zugriff auf klassenbezogene Kontexte beschränkt.';

  @override
  String get gameHintWord419Exception => 'Laufzeitbedingung, die den normalen Kontrollfluss unterbricht.';

  @override
  String get gameHintWord420Regex => 'Musternotation zum Abgleichen von Text.';

  @override
  String get gameHintWord421Lexical => 'Beschreibt einen Gültigkeitsbereich, der durch die Struktur des Quellcodes bestimmt wird.';

  @override
  String get gameHintWord422Scalar => 'Variablenkategorie für Einzelwerte in Perl.';

  @override
  String get gameHintWord423Tuple => 'Unveränderliche geordnete Sammlung in Python.';

  @override
  String get gameHintWord424List => 'Veränderliche geordnete Sammlung in Python.';

  @override
  String get gameHintWord425Dict => 'Name des eingebauten Mapping-Typs in Python.';

  @override
  String get gameHintWord426Dictionary => 'Sammlung, die Schlüssel zugehörigen Werten zuordnet.';

  @override
  String get gameHintWord427Set => 'Sammlung unterschiedlicher Werte.';

  @override
  String get gameHintWord428Boolean => 'Datentyp, der wahr oder falsch darstellt.';

  @override
  String get gameHintWord429Integer => 'Numerischer Typ für ganze Zahlen.';

  @override
  String get gameHintWord430Float => 'Numerischer Typ für Gleitkommawerte.';

  @override
  String get gameHintWord431Double => 'Gleitkommatyp mit doppelter Genauigkeit.';

  @override
  String get gameHintWord432Null => 'Wert, der das Fehlen eines Objekts oder Ergebnisses darstellt.';

  @override
  String get gameHintWord433Undefined => 'JavaScript-Wert für einen fehlenden zugewiesenen Wert.';

  @override
  String get gameHintWord434Promise => 'JavaScript-Objekt, das ein späteres asynchrones Ergebnis darstellt.';

  @override
  String get gameHintWord435Async => 'Schlüsselwort, das eine asynchrone Funktion kennzeichnet.';

  @override
  String get gameHintWord436Await => 'Schlüsselwort, das auf ein asynchrones Ergebnis wartet.';

  @override
  String get gameHintWord437Callback => 'Funktion, die übergeben wird, um von einer anderen Operation aufgerufen zu werden.';

  @override
  String get gameHintWord438Closure => 'Funktion, die den Zugriff auf ihren umgebenden lexikalischen Gültigkeitsbereich behält.';

  @override
  String get gameHintWord439Generator => 'Funktion, die eine Folge träge über gelieferte Werte erzeugt.';

  @override
  String get gameHintWord440Iterator => 'Objekt, das schrittweise durch die Werte einer Sammlung läuft.';

  @override
  String get gameHintWord441Print => 'Gängige Funktion, die einen Wert ausgibt.';

  @override
  String get gameHintWord442Input => 'Python-Funktion, die eine Zeile aus der Standardeingabe liest.';

  @override
  String get gameHintWord443Open => 'Funktion zum Erhalt eines Dateihandles.';

  @override
  String get gameHintWord444Close => 'Operation, die eine offene Datei oder Verbindung freigibt.';

  @override
  String get gameHintWord445Read => 'Operation, die Daten aus einem Stream oder einer Datei liest.';

  @override
  String get gameHintWord446Write => 'Operation, die Daten an einen Stream oder eine Datei sendet.';

  @override
  String get gameHintWord447Append => 'Fügt ein Element am Ende einer Sammlung hinzu.';

  @override
  String get gameHintWord448Split => 'Zerlegt Text mithilfe eines Trennzeichens in Teilzeichenketten.';

  @override
  String get gameHintWord449Join => 'Verbindet eine Folge von Zeichenketten mit einem Trennzeichen.';

  @override
  String get gameHintWord450Strip => 'Entfernt umgebende Leerzeichen aus einer Python-Zeichenkette.';

  @override
  String get gameHintWord451Chomp => 'Entfernt ein abschließendes Datensatztrennzeichen in Perl oder Ruby.';

  @override
  String get gameHintWord452Map => 'Wendet eine Transformation auf jedes Element einer Sammlung an.';

  @override
  String get gameHintWord453Filter => 'Behält Sammlungselemente, die ein Prädikat erfüllen.';

  @override
  String get gameHintWord454Reduce => 'Fasst eine Sammlung zu einem akkumulierten Ergebnis zusammen.';

  @override
  String get gameHintWord455Range => 'Python-Typ, der eine arithmetische Folge ganzer Zahlen darstellt.';

  @override
  String get gameHintWord456Length => 'Eigenschaft oder Methode, die die Größe einer Sammlung zurückgibt.';

  @override
  String get gameHintWord457Len => 'Eingebaute Python-Funktion, die die Größe einer Sammlung zurückgibt.';

  @override
  String get gameHintWord458Type => 'Python-Funktion, die den Typ eines Objekts zurückgibt.';

  @override
  String get gameHintWord459Isinstance => 'Python-Funktion, die die Zugehörigkeit zu einer Typhierarchie prüft.';

  @override
  String get gameHintWord460Yield => 'Schlüsselwort, das einen Wert aus einem Generator liefert.';

  @override
  String get gameHintWord461Saas => 'Cloud-Modell, das vollständige Softwareanwendungen bereitstellt.';

  @override
  String get gameHintWord462Paas => 'Cloud-Modell, das eine verwaltete Plattform für die Anwendungsentwicklung bereitstellt.';

  @override
  String get gameHintWord463Iaas => 'Cloud-Modell, das virtuelle Rechen-, Speicher- und Netzwerkressourcen bereitstellt.';

  @override
  String get gameHintWord464Hybrid => 'Cloud-Ansatz, der private und öffentliche Infrastruktur kombiniert.';

  @override
  String get gameHintWord465Archive => 'Langzeitspeicherung selten abgerufener Daten.';

  @override
  String get gameHintWord466Public => 'Cloud-Eigentumsmodell, das Dienste für mehrere Kunden anbietet.';

  @override
  String get gameHintWord467Private => 'Cloud-Modell, das einer einzelnen Organisation vorbehalten ist.';

  @override
  String get gameHintWord468Scalability => 'Fähigkeit, wachsende Last durch Hinzufügen von Ressourcen zu bewältigen.';

  @override
  String get gameHintWord469Availability => 'Grad, in dem ein Dienst bei Bedarf zugänglich bleibt.';

  @override
  String get gameHintWord470Resilience => 'Fähigkeit, Ausfällen standzuhalten und sich davon zu erholen.';

  @override
  String get gameHintWord471Redundancy => 'Doppelte Komponenten, die einzelne Ausfallpunkte verringern.';

  @override
  String get gameHintWord472Disaster => 'Schwerer Ausfall, der durch eine Wiederherstellungsstrategie abgedeckt wird.';

  @override
  String get gameHintWord473Recovery => 'Wiederherstellung von Dienst oder Daten nach einem Ausfall.';

  @override
  String get gameHintWord474Replicate => 'Daten oder Workloads an einen anderen Ort kopieren.';

  @override
  String get gameHintWord475Snapshotting => 'Erstellen von Kopien von Daten oder Systemzustand zu einem bestimmten Zeitpunkt.';

  @override
  String get gameHintWord476Restore => 'Operation, die Daten aus einer gespeicherten Kopie wiederherstellt.';

  @override
  String get gameHintWord477Residency => 'Anforderung, die den geografischen Speicherort von Daten festlegt.';

  @override
  String get gameHintWord478Compliance => 'Einhaltung erforderlicher Vorschriften und organisatorischer Kontrollen.';

  @override
  String get gameHintWord479Governance => 'Richtlinien und Prozesse zur Steuerung der Technologienutzung.';

  @override
  String get gameHintWord480Audit => 'Prüfung aufgezeichneter Aktivitäten und Compliance-Nachweise.';

  @override
  String get gameHintWord481Token => 'Berechtigungsnachweis oder Symbol für Autorisierung oder Identität.';

  @override
  String get gameHintWord482Oauth => 'Autorisierungsframework, das delegierten Zugriff ermöglicht.';

  @override
  String get gameHintWord483Saml => 'XML-basierter Standard, der häufig für Single Sign-On in Unternehmen genutzt wird.';

  @override
  String get gameHintWord484Cmdlet => 'Ein spezialisierter Befehl, der in PowerShell-Pipelines verwendet wird.';

  @override
  String get gameHintWord485Algorithm => 'Definierte Abfolge von Schritten zur Lösung eines Rechenproblems.';

  @override
  String get gameHintWord486Key => 'Wert zur Steuerung der Verschlüsselung oder zur Identifizierung gespeicherter Daten.';

  @override
  String get gameHintWord487Alias => 'Alternativer Name für einen Shell-Befehl oder eine Ressource.';

  @override
  String get gameHintWord488Amend => 'Git-Commit-Option, die den letzten Commit ersetzt.';

  @override
  String get gameHintWord489Allsigned => 'PowerShell-Ausführungsrichtlinie, die signierte Skripte verlangt.';

  @override
  String get gameHintWord490Remotesigned => 'PowerShell-Richtlinie, die Signaturen für heruntergeladene Skripte verlangt.';

  @override
  String get gameHintWord491Acl => 'Liste, die Berechtigungen für Benutzer oder Systeme festlegt.';

  @override
  String get gameHintWord492Uid => 'Numerische Kennung, die einem Unix-Benutzer zugewiesen ist.';

  @override
  String get gameHintWord493Setgid => 'Berechtigungsbit, das die Gruppenidentität bei Ausführung oder Vererbung beeinflusst.';

  @override
  String get gameHintWord494Setfacl => 'Linux-Befehl, der Zugriffskontrolllisten für Dateien setzt.';

  @override
  String get gameHintWord495Isolation => 'Trennung, die verhindert, dass Workloads sich gegenseitig stören.';

  @override
  String get gameHintWord496Sighup => 'Unix-Hangup-Signal, das oft zum Anfordern von Konfigurations-Reloads dient.';

  @override
  String get gameHintWord497Sigint => 'Unix-Interrupt-Signal, das üblicherweise mit Control-C erzeugt wird.';

  @override
  String get gameHintWord498Sigstop => 'Unix-Signal, das einen Prozess anhält, ohne ihn zu beenden.';

  @override
  String get gameHintWord499Secrets => 'Sensible Werte wie Passwörter und Zugriffsschlüssel.';

  @override
  String get gameHintWord500Secure => 'Beschreibt eine Verbindung, die vor unbefugtem Zugriff geschützt ist.';

  @override
  String get fontSettingsTitle => 'Schriftart';

  @override
  String get fontChangeFont => 'Schriftart ändern';

  @override
  String get fontSystemDefault => 'Systemstandard';

  @override
  String get fontPreview => 'Vorschau';

  @override
  String get fontPreviewSample => 'Lerne DevOps Frage für Frage';

  @override
  String get fontSelected => 'Ausgewählt';

  @override
  String get fontLatinOnlyNote => 'Eigene Schriftarten gelten für lateinische Buchstaben. Andere Schriftsysteme behalten die Schriftart deines Geräts.';

  @override
  String get fontDescSystem => 'Die integrierte Schriftart deines Geräts';

  @override
  String get fontDescGeometric => 'Geometrische Grotesk';

  @override
  String get fontDescGeometricRounded => 'Geometrische, abgerundete Grotesk';

  @override
  String get fontDescFriendly => 'Freundliche Grotesk';

  @override
  String get fontDescCondensed => 'Schmal';

  @override
  String get fontDescRounded => 'Abgerundete Grotesk';

  @override
  String get fontDescRoundedDisplay => 'Abgerundete Displayschrift';

  @override
  String gameScene3dScene(String value1) {
    return '3D-Szene $value1';
  }
}
