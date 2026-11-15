// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTour => 'Guida dell\'app';

  @override
  String get skipTour => 'Salta guida';

  @override
  String get finishTour => 'Termina guida';

  @override
  String tourStep(int current, int total) {
    return 'Passaggio $current di $total';
  }

  @override
  String get tourMenuTitle => 'Menu di navigazione';

  @override
  String get tourSearch => 'Scrivi un argomento qui per trovare categorie di quiz.';

  @override
  String get tourCategory => 'Tocca DevOps per un quiz misto. Le altre categorie offrono serie di domande. Salva le domande per rivederle dopo.';

  @override
  String get tourMenu => 'Tocca questo pulsante per aprire il menu di navigazione.';

  @override
  String get tourLearning => 'Apri Apprendimento per le schede. Scorri in ogni direzione, mescola, attiva il cambio automatico o salva una scheda.';

  @override
  String get tourGames => 'Gioca per guadagnare punti. I giochi a livelli danno 100 punti per livello completato; un suggerimento costa 20 punti.';

  @override
  String get tourAchievements => 'Consulta i tuoi obiettivi qui. I popup annunciano nuovi obiettivi raggiunti e temi disponibili.';

  @override
  String get tourSettings => 'Scegli lingua, tema e audio. Apri Dati salvati per i preferiti o Guida dell\'app per ripetere questo percorso.';

  @override
  String get achievementUnlocked => 'Obiettivo sbloccato!';

  @override
  String get themeUnlocked => 'Nuovo tema disponibile!';

  @override
  String get themeUnlockedMessage => 'Ora puoi scegliere questo tema in Impostazioni > Temi.';

  @override
  String get gameSounds => 'Suoni del gioco';

  @override
  String get gameSoundsDescription => 'Effetti per giochi e quiz. Controlla il volume e la modalità silenziosa del dispositivo.';

  @override
  String get testSound => 'Prova il suono';

  @override
  String get soundSettingBusy => 'Attendi...';

  @override
  String get soundSettingError => 'Impossibile caricare o salvare l\'impostazione audio. Riprova.';

  @override
  String get soundPlaybackError => 'Impossibile riprodurre il suono. Controlla le impostazioni audio del dispositivo o del browser.';

  @override
  String get saveData => 'Dati salvati';

  @override
  String get learningTranslationUnavailable => 'Questa scheda non è ancora stata tradotta nella lingua selezionata.';

  @override
  String get saveQuestion => 'Salva domanda';

  @override
  String defaultPortQuestion(String service) {
    return 'Qual è la porta predefinita di $service?';
  }

  @override
  String get removeSavedItem => 'Rimuovi dai salvati';

  @override
  String get noSavedData => 'Non hai ancora salvato nulla. Aggiungi ai preferiti le schede di apprendimento o le domande dei quiz.';

  @override
  String get savedDataError => 'Impossibile caricare o aggiornare i dati salvati. Riprova.';

  @override
  String get savedItemUnavailable => 'Questo elemento salvato non è più disponibile.';

  @override
  String get correctAnswer => 'Risposta corretta';

  @override
  String get retry => 'Riprova';

  @override
  String get certificates => 'Certificati';

  @override
  String get whatsNew => 'Novità';

  @override
  String get settings => 'Impostazioni';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get lightMode => 'Modalità chiara';

  @override
  String get language => 'Lingua';

  @override
  String get selectLanguage => 'Seleziona lingua';

  @override
  String get english => 'Inglese';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Avvia il quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Cambia categoria';

  @override
  String get dailyQuiz => 'Quiz giornaliero';

  @override
  String get dailyQuizCompleted => 'Quiz giornaliero completato';

  @override
  String get dailyQuizCompletedMessage => 'Hai già completato il quiz giornaliero di oggi.\n\nTorna domani per una nuova sfida!';

  @override
  String get leaderboard => 'Classifica';

  @override
  String get shareApp => 'Condividi l\'app';

  @override
  String get rateApp => 'Valuta l\'app';

  @override
  String get about => 'Informazioni';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Home';

  @override
  String get games => 'Giochi';

  @override
  String get referAndEarn => 'Invita e guadagna';

  @override
  String get themes => 'Temi';

  @override
  String get version => 'Versione';

  @override
  String get developer => 'Sviluppatore';

  @override
  String get contact => 'Contatti';

  @override
  String get learning => 'Apprendimento';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Contattami';

  @override
  String get aboutDescription => 'DevOps Quiz aiuta a prepararsi a colloqui e certificazioni con migliaia di domande selezionate su Linux, Docker, Kubernetes, reti, Git, Jenkins, Terraform, Ansible e altre tecnologie DevOps.';

  @override
  String get quizResult => 'Risultato del quiz';

  @override
  String get outstanding => 'Straordinario!';

  @override
  String get greatJob => 'Ottimo lavoro!';

  @override
  String get goodEffort => 'Buon impegno!';

  @override
  String get keepPracticing => 'Continua a esercitarti!';

  @override
  String get dontGiveUp => 'Non arrenderti!';

  @override
  String get shareMessage1 => 'Ho totalizzato';

  @override
  String get shareMessage2 => 'in DevOps Quiz!';

  @override
  String get downloadApp => 'Scarica l\'app:';

  @override
  String get score => 'Punteggio';

  @override
  String get points => 'Punti';

  @override
  String get percentage => 'Percentuale';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Bonus punteggio perfetto';

  @override
  String get shareScore => 'Condividi il punteggio';

  @override
  String get restartQuiz => 'Ricomincia il quiz';

  @override
  String get backToCategories => 'Torna alle categorie';

  @override
  String get greatProgress => 'Ben fatto! Stai facendo grandi progressi.';

  @override
  String get practiceMore => 'Ottimo lavoro! Con un po\' di pratica in più otterrai un punteggio ancora migliore.';

  @override
  String get keepLearning => 'Continua a imparare e riprova. Migliorerai con la pratica.';

  @override
  String get everyExpertStarted => 'Ogni esperto ha iniziato da principiante. Esercitati e torna più preparato!';

  @override
  String get quizInstructions => 'Istruzioni del quiz';

  @override
  String get instruction1 => 'Ogni set contiene 25 domande.';

  @override
  String get instruction2 => 'Hai 30 secondi per ogni domanda.';

  @override
  String get instruction3 => 'Verde = risposta corretta.';

  @override
  String get instruction4 => 'Rosso = risposta errata.';

  @override
  String get instruction5 => 'La risposta non può essere modificata.';

  @override
  String get instruction6 => 'Il pulsante Indietro serve solo per rivedere.';

  @override
  String get instruction7 => 'Il punteggio viene mostrato al termine.';

  @override
  String get instruction8 => 'Ogni risposta corretta vale 10 punti.';

  @override
  String excellentPerformance(Object expert) {
    return 'Prestazione eccellente! Sei un $expert.';
  }

  @override
  String get selectCategory => 'Seleziona categoria';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Seleziona set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Domande';

  @override
  String get noScoresYet => 'Nessun punteggio';

  @override
  String get pointsShort => 'pt';

  @override
  String get welcomeToDevOpsQuiz => 'Benvenuto/a in DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Ciao $name';
  }

  @override
  String get challengeMode => 'Modalità sfida';

  @override
  String get challenge => 'Sfida';

  @override
  String get question => 'Domanda';

  @override
  String get reward => 'Ricompensa';

  @override
  String get survivalMode => 'Modalità sopravvivenza';

  @override
  String get speedChallenge => 'Sfida a tempo';

  @override
  String get dailyChallenge => 'Sfida giornaliera';

  @override
  String get ultimateChallenge => 'Sfida finale';

  @override
  String get timeLeft => 'Tempo rimanente';

  @override
  String get completed => 'Completato';

  @override
  String get locked => 'Bloccato';

  @override
  String get back => 'Indietro';

  @override
  String get next => 'Avanti';

  @override
  String get submit => 'Invia';

  @override
  String get achievements => 'Obiettivi';

  @override
  String get streak => 'Serie';

  @override
  String get days => 'Giorni';

  @override
  String get tomorrowsReward => 'Ricompensa di domani';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Ho totalizzato $score/$totalQuestions nel #DevOps Quiz di oggi!\n\n🏆 Punti: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Percentuale: $percentage%\n\nRiesci a battere il mio punteggio?\n\nScarica l\'app:';
  }

  @override
  String get gameUiSpinWheel => 'Gira la ruota';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Gira e vinci punti bonus';

  @override
  String get gameUiScratchCard => 'Gratta e vinci';

  @override
  String get gameUiScratchToRevealAReward => 'Gratta per scoprire un premio';

  @override
  String get gameUiLuckySlots => 'Slot fortunate';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Fai girare le slot e vinci punti';

  @override
  String get gameUiMysteryDeal => 'Offerta misteriosa';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Scegli una scatola misteriosa e rispondi';

  @override
  String get gameUiMemoryMatch => 'Memory';

  @override
  String get gameUiMatchDevOpsPairs => 'Abbina le coppie DevOps';

  @override
  String get gameUiWordGuess => 'Indovina la parola';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Indovina le parole DevOps livello dopo livello';

  @override
  String get gameUiFindWords => 'Trova le parole';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Cerca in una griglia i termini DevOps nascosti';

  @override
  String get gameUiSpotTheDifference => 'Trova le differenze';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Trova cinque differenze tra due scene illustrate';

  @override
  String get gameUiJigsawPuzzle => 'Puzzle';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Ricostruisci immagini HD condivise di animali e natura';

  @override
  String get gameUiHighOrLow => 'Più alto o più basso';

  @override
  String get gameUiBuildAStreak => 'Costruisci una serie vincente';

  @override
  String get gameUiTrueOrFalseBlitz => 'Blitz Vero o Falso';

  @override
  String get gameUiQuickAnswerQuiz => 'Quiz a risposta rapida';

  @override
  String get gameUiCommandMatch => 'Abbina i comandi';

  @override
  String get gameUiMatchCommandsToMeanings => 'Abbina i comandi ai loro significati';

  @override
  String get gameUiPortMaster => 'Maestro delle porte';

  @override
  String get gameUiGuessDefaultPorts => 'Indovina le porte predefinite';

  @override
  String get gameUiTicTacToe => 'Tris';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'Tris O X contro il computer';

  @override
  String get gameUiConnectFour => 'Forza 4';

  @override
  String get gameUiDropFourDiscs => 'Lascia cadere quattro dischi';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Gareggia contro i bot';

  @override
  String get gameUiChess => 'Scacchi';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Scacchiera con mosse legali per due giocatori';

  @override
  String get gameUiSnakeAndLadders => 'Serpenti e scale';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Gioco da tavolo con dadi, serpenti e scale per due giocatori';

  @override
  String get gameUiGames => 'Giochi 🎮';

  @override
  String get gameUiPlayEarn => 'Gioca e guadagna';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Gioca e guadagna punti bonus!';

  @override
  String get gameUiSearchGames => 'Cerca giochi';

  @override
  String get gameUiClearSearch => 'Cancella ricerca';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Nessun gioco corrisponde a \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Gira e vinci punti bonus.';

  @override
  String get gameUiScratchToRevealYourReward => 'Gratta per scoprire il tuo premio.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Fai girare le slot e vinci punti.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Scegli una scatola misteriosa e rispondi correttamente per vincere punti.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Abbina le coppie DevOps per guadagnare punti.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Indovina il termine DevOps in 6 tentativi.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Cerca in una griglia i termini DevOps nascosti.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Scorri per trovare parole DevOps in 500 livelli.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Trova cinque differenze tra due scene illustrate.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Ricostruisci immagini HD condivise di animali e natura.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Costruisci una serie vincente e metti al sicuro i tuoi punti.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Batti il tempo con risposte rapide.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Blitz Vero o Falso 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Abbina i comandi a ciò che fanno.';

  @override
  String get gameUiCommandMatch670a76e => 'Abbina i comandi 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Indovina le porte predefinite con 3 vite.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Maestro delle porte 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Gioca a O/X contro il computer.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Lascia cadere quattro dischi in fila per vincere.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Fai gareggiare le tue pedine contro tre bot.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Scacchi locali per due giocatori con mosse legali.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Gioca una partita a scacchi legale per due giocatori.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Gioco da tavolo con dadi per due giocatori.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Corri fino a 100. Sali le scale e schiva i serpenti.';

  @override
  String get gameUiPlay => 'Gioca';

  @override
  String get gameUiWheelStopped => 'La ruota si è fermata!';

  @override
  String get gameUiYourRewardIs => 'Il tuo premio è';

  @override
  String get gameUiPOINTS => 'PUNTI';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Rispondi correttamente a 1 domanda del quiz per ottenere questo premio.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Risposta sbagliata = premio perso.';

  @override
  String get gameUiAnswerQuestion => 'Rispondi alla domanda';

  @override
  String get gameUiSpinWheele449982 => '🎡 Gira la ruota';

  @override
  String get gameUiDailySpin => 'Giro giornaliero';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Gira la ruota, poi rispondi a una domanda per ottenere il tuo premio!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Hai già usato il giro di oggi.';

  @override
  String get gameUiSpinning => 'Giro in corso...';

  @override
  String get gameUiSPINNOW => 'GIRA ORA';

  @override
  String get gameUiCOMEBACKTOMORROW => 'TORNA DOMANI';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Premio di oggi: ⭐ $value1 punti';
  }

  @override
  String get gameUiBackToGames => 'Torna ai giochi';

  @override
  String get gameUiSPIN => 'GIRA';

  @override
  String get gameUiRewardRevealed => 'Premio scoperto!';

  @override
  String get gameUiYouFound => 'Hai trovato';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Gratta e vinci';

  @override
  String get gameUiDailyScratch => 'Gratta giornaliero';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Gratta la carta per scoprire il premio di oggi!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Hai già usato il gratta e vinci di oggi.';

  @override
  String get gameUiAlreadyScratched => 'Già grattato';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Torna domani per un altro premio.';

  @override
  String get gameUiYouRevealed => 'Hai scoperto';

  @override
  String get gameUiSCRATCHHERE => 'GRATTA QUI  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => '777 fortunato!';

  @override
  String get gameUiYourReward => 'Il tuo premio';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Slot fortunate';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Fai girare le slot, poi rispondi a una domanda per ottenere il premio!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Hai già giocato oggi.';

  @override
  String get gameUiSPINNING => 'GIRO IN CORSO...';

  @override
  String get gameUiROLLNOW => 'TIRA ORA';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 punti disponibili!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Impossibile controllare lo stato di Offerta Misteriosa: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Scatola $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 PUNTI';
  }

  @override
  String get gameUiStartQuestion => 'Inizia domanda';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Offerta Misteriosa';

  @override
  String get gameUiMysteryDealCompleted => 'Offerta Misteriosa completata!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Hai già giocato a Offerta Misteriosa oggi.';

  @override
  String get gameUiTodayYouWon => 'Oggi hai vinto';

  @override
  String get gameUiTodaySReward => 'Premio di oggi';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 PUNTI';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 PUNTI PERSI';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Torna domani per un\'altra scatola misteriosa!';

  @override
  String get gameUiChooseYourMysteryBox => 'Scegli la tua scatola misteriosa';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Ogni scatola contiene un premio nascosto tra 10 e 1000 punti.';

  @override
  String get gameUiPickOnlyOneBox => 'Scegli una sola scatola!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Tutti i $value1 livelli completati!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Livello $value1 completato!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Completato in $value1 mosse.\nHai guadagnato $value2 punti!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Completato in $value1 mosse.\nQuesto livello era già stato superato.';
  }

  @override
  String get gameUiNextLevel => 'Livello successivo';

  @override
  String get gameUiDone => 'Fatto';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Abbina le coppie di memoria 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Tutti i 100 livelli completati!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Hai completato ogni livello di abbinamento di memoria. Ben giocato!';

  @override
  String get gameUiChooseLevel => 'Scegli il livello';

  @override
  String gameUiMoves(String value1) {
    return 'Mosse: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Livello $value1 di $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 coppie';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Memorizza il livello $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Trova $value1 coppie corrispondenti';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Logo di DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Capitolo 1 · Ripristina la pipeline di build';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Capitolo 2 · Scala la piattaforma cloud';

  @override
  String get gameUiChapter3ProtectProduction => 'Capitolo 3 · Proteggi la produzione';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Usa tutte le $value1 lettere rimanenti per inviare.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Tutti i livelli completati!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Livello $value1 completato!';
  }

  @override
  String get gameUiTryAgain => 'Riprova';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'La parola era $value1. Hai guadagnato $value2 punti.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'La parola era $value1. Hai guadagnato $value2 punti dopo $value3 suggerimento.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'La parola era $value1. Hai guadagnato $value2 punti dopo $value3 suggerimenti.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'La parola era $value1. Il livello $value2 ti sta ancora aspettando.';
  }

  @override
  String get gameUiFinish => 'Termina';

  @override
  String get gameUiNextLevel254fd73 => 'Livello successivo';

  @override
  String get gameUiRetryLevel => 'Riprova il livello';

  @override
  String get gameUiHowToPlay => 'Come si gioca';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Ogni livello ha una parola DevOps. Le parole di meno di cinque lettere iniziano senza lettere gratuite; quelle più lunghe ne hanno una. Usa il rack delle lettere per comporre la risposta e premi Invio. I suggerimenti rivelano un\'altra lettera e costano 20 punti dal tuo saldo. Ogni livello completato fa guadagnare 100 punti.';

  @override
  String get gameUiGotIt => 'Ho capito';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Tutti i $value1 livelli completati!';
  }

  @override
  String get gameUiEasy => 'Facile';

  @override
  String get gameUiMedium => 'Medio';

  @override
  String get gameUiHard => 'Difficile';

  @override
  String get gameUiHowToPlay13a6b22 => 'Come si gioca';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Livello $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Premio $value1 pt · suggerimenti usati $value2';
  }

  @override
  String get gameUiHint20Pts => 'Suggerimento · −20 pt';

  @override
  String get gameUiEnter => 'Invio';

  @override
  String get gameUiDelete => 'Elimina';

  @override
  String get gameUiDragThroughAWord => 'Trascina attraverso una parola';

  @override
  String get gameUiDragThroughEachWord => 'Trascina attraverso ogni parola';

  @override
  String get gameUiReleaseToSelect => 'Rilascia per selezionare';

  @override
  String gameUiFound(String value1) {
    return 'Trovata $value1';
  }

  @override
  String get gameUiNoWordThere => 'Nessuna parola qui';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 già trovata';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Cerca $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Tutti i livelli completati!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Hai trovato tutte le parole e guadagnato $value1 punti.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Hai trovato tutte le parole. Questo livello era già stato superato.';

  @override
  String get gameUiAll500LevelsComplete => 'Tutti i 500 livelli completati!';

  @override
  String get gameUiReviewLevels => 'Rivedi i livelli';

  @override
  String gameUiLeft(String value1) {
    return '$value1 rimasti';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 pt';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Impossibile salvare i progressi. Riprova.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Hai guadagnato $value1 punti!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Hai già completato questa immagine. Nessun punto aggiuntivo alla ripetizione.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Hai completato tutte le immagini!';

  @override
  String get gameUiLevels => 'Livelli';

  @override
  String get gameUiPictureB => 'Immagine B';

  @override
  String get gameUiPictureA => 'Immagine A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Impossibile caricare l\'immagine. Riprova';

  @override
  String get gameUiResetZoom => 'Reimposta zoom';

  @override
  String get gameUiZoomBothPictures => 'Ingrandisci entrambe le immagini';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Suggerimento · $value1 punti per suggerimento';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Impossibile caricare i progressi. Riprova';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Livello $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Tutte le differenze trovate!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Trova $count differenze. Tocca ciascuna in una qualsiasi delle due immagini.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Errori: $value1  ·  Suggerimenti: $value2 (−$value3 pt)  ·  $value4 livelli completati';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Livello successivo: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Puzzle $value1 completato!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Immagine completata in $value1 mosse. Hai guadagnato $value2 punti.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Immagine completata in $value1 mosse.';
  }

  @override
  String get gameUiNextPuzzle => 'Puzzle successivo';

  @override
  String get gameUiAllPuzzlesComplete => 'Tutti i puzzle completati';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Tassello del puzzle $value1 di $value2, posizionato correttamente';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Tassello del puzzle $value1 di $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Scegli il puzzle';

  @override
  String get gameUiShufflePieces => 'Mescola i tasselli';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Impossibile caricare l\'immagine del puzzle.';

  @override
  String get gameUiPreviousPuzzle => 'Puzzle precedente';

  @override
  String gameUiPuzzle(String value1) {
    return 'Puzzle $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 mosse';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Trascina i pezzi per scambiarli, oppure tocca due pezzi.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 puzzle risolti  ·  $value3 punti ciascuno';
  }

  @override
  String get gameUiGameOver => 'Game Over';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Il numero era $value1.\nSerie: $value2\nHai guadagnato $value3 punti!\n\nTorna domani per un\'altra possibilità!';
  }

  @override
  String get gameUiHigherOrLower => 'Più alto o più basso 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Hai già giocato oggi!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Hai giocato il $value1/$value2/$value3.\n\nTorna domani per costruire una nuova serie!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Hai già giocato oggi.\n\nTorna domani per un\'altra possibilità!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Serie: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Punti: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Il prossimo numero sarà più alto o più basso?';

  @override
  String get gameUiLower => 'Più basso';

  @override
  String get gameUiHigher => 'Più alto';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Vero o Falso Blitz ⚡';

  @override
  String get gameUiTimeSUp => 'Tempo scaduto!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Risposte corrette: $value1\nMigliore serie: $value2\n${value3}Hai guadagnato $value4 punti!\n\nTorna domani per un altro round!';
  }

  @override
  String get gameUiStreakBonus20 => 'Bonus serie: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'La risposta mostrata è vera o falsa?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 domande in $value2 categorie';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Hai $value1 secondi. Ogni risposta corretta fa guadagnare $value2 punti. Una risposta sbagliata costa $value3 secondi. Raggiungi una serie di 5 per un bonus di +20.';
  }

  @override
  String get gameUiRoundTimer => 'Timer del round';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 secondi';
  }

  @override
  String get gameUiStart => 'Inizia';

  @override
  String get gameUiTrue => 'Vero';

  @override
  String get gameUiFalse => 'Falso';

  @override
  String get gameUiCommandMatch26b0e70 => 'Abbina i comandi 🔗';

  @override
  String get gameUiAllMatched => 'Tutto abbinato!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Errori: $value1\nHai guadagnato $value2 punti!\n\nTorna domani per nuovi comandi!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Round $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Tocca un comando, poi tocca il suo significato.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Ora tocca il significato corrispondente.';

  @override
  String get gameUiPortMaster9c730cf => 'Maestro delle porte 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Maestro delle porte!';

  @override
  String get gameUiOutOfLives => 'Vite esaurite';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Risposte corrette: $value1\nHai guadagnato $value2 punti!\n\nTorna domani per un altro round!';
  }

  @override
  String get gameUiYouEarned10Points => 'Hai guadagnato 10 punti!';

  @override
  String get gameUiYouWin => 'Hai vinto!';

  @override
  String gameUiWins(String value1) {
    return '$value1 vince!';
  }

  @override
  String get gameUiXWins => 'Vince X!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) vince!';
  }

  @override
  String get gameUiComputerWins => 'Vince il computer';

  @override
  String get gameUiOWins => 'Vince O!';

  @override
  String get gameUiPlayer2OWins => 'Il giocatore 2 (O) vince!';

  @override
  String get gameUiItSADraw => 'È un pareggio';

  @override
  String get gameUiYourTurn => 'Tocca a te';

  @override
  String gameUiSTurn(String value1) {
    return 'Turno di $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'Il computer sta pensando';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Tocca al giocatore $value1';
  }

  @override
  String gameUiToMove(String value1) {
    return 'Tocca a $value1';
  }

  @override
  String get gameUiPlayer2ToMove => 'Tocca al giocatore 2';

  @override
  String get gameUiNewRound => 'Nuovo round';

  @override
  String get gameUiVsComputer => 'Contro il computer';

  @override
  String get gameUi2Players => '2 giocatori';

  @override
  String get gameUiYou => 'Tu';

  @override
  String get gameUiDraws => 'Pareggi';

  @override
  String get gameUiPlayer2 => 'Giocatore 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Cella $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Gioca ancora';

  @override
  String get gameUiConnectFourWin20Points => 'Vittoria a Forza 4: 20 punti!';

  @override
  String get gameUiBotWins => 'Vince il bot!';

  @override
  String get gameUiRed => 'Rosso';

  @override
  String get gameUiYellow => 'Giallo';

  @override
  String get gameUiBoardFullDraw => 'Tabellone pieno — pareggio';

  @override
  String get gameUiBotIsThinking => 'Il bot sta pensando';

  @override
  String get gameUiBotTurn => 'Turno del bot';

  @override
  String get gameUiNewGame => 'Nuova partita';

  @override
  String get gameUiVsBot => 'Contro il bot';

  @override
  String get gameUi2Player => '2 giocatori';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Gioca contro il bot · tocca una colonna per far cadere un disco';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Due giocatori · tocca una colonna per far cadere un disco';

  @override
  String gameUiColumn(String value1) {
    return 'Colonna $value1';
  }

  @override
  String get gameUiYouRed => 'Tu · Rosso';

  @override
  String get gameUiRedPlayer1 => 'Rosso · Giocatore 1';

  @override
  String get gameUiBotYellow => 'Bot · Giallo';

  @override
  String get gameUiYellowPlayer2 => 'Giallo · Giocatore 2';

  @override
  String get gameUiLudoMatchStats => 'Statistiche partite a Ludo';

  @override
  String get gameUiNoCompletedMatchesYet => 'Nessuna partita completata finora.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Giocate $value1  ·  Vinte $value2  ·  Perse $value3';
  }

  @override
  String get gameUiClose => 'Chiudi';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Campione di Ludo! Hai guadagnato 50 punti.';

  @override
  String get gameUiNewLudoGame => 'Nuova partita a Ludo';

  @override
  String get gameUiBotOpponents => 'Avversari bot';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Iniziare una nuova partita sostituisce la tua partita salvata.';

  @override
  String get gameUiCancel => 'Annulla';

  @override
  String get gameUiStartGame => 'Inizia partita';

  @override
  String get gameUiPlayerColours => 'Colori dei giocatori';

  @override
  String get gameUiApply => 'Applica';

  @override
  String get gameUiMatchStats => 'Statistiche partite';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 vince per scacco matto';
  }

  @override
  String get gameUiBlack => 'Nero';

  @override
  String get gameUiWhite => 'Bianco';

  @override
  String get gameUiComputerWinsByCheckmate => 'Il computer vince per scacco matto';

  @override
  String get gameUiYouWinByCheckmate => 'Vinci per scacco matto';

  @override
  String get gameUiDrawByStalemate => 'Pareggio per stallo';

  @override
  String get gameUiDraw => 'Pareggio';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Scacco';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Scacco matto! Hai guadagnato 50 punti.';

  @override
  String get gameUiStartANewGame => 'Iniziare una nuova partita?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Cambiando la modalità giocatore, la partita salvata verrà sostituita.';

  @override
  String get gameUiComputer => 'Computer';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Bianco / Giocatore 2 · Nero';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Tu sei Bianco · Il computer è Nero';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Bianco) · Computer (Nero)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Tu sei Nero · Il computer è Bianco';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Nero) · Computer (Bianco)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 tira per primo';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 tira di nuovo';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 deve tirare';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Vittoria a Serpenti e Scale: 100 punti!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Cambiando i giocatori, la partita salvata verrà sostituita.';

  @override
  String get gameUiStartANewLevel => 'Iniziare un nuovo livello?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Cambiando livello, la partita salvata verrà sostituita.';

  @override
  String get gameUiChangeLevel => 'Cambia livello';

  @override
  String get gameUiPlayers => 'Giocatori';

  @override
  String get gameUiPlayAgainstBot => 'Gioca contro il bot';

  @override
  String get gameUi3Players => '3 giocatori';

  @override
  String get gameUi4Players => '4 giocatori';

  @override
  String get gameUiLevel1709305 => 'Livello';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Livello $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 giocatori · Livello $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Tira';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 su $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Impossibile caricare la domanda: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Risposta corretta!';

  @override
  String get gameUiWrongAnswer => 'Risposta sbagliata';

  @override
  String get gameUiYouClaimedYourReward => 'Hai riscattato la tua ricompensa!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Aggiunti al tuo totale di punti.';

  @override
  String get gameUiTheCorrectAnswerWas => 'La risposta corretta era:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Ricompensa di $value1 punti persa.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'I tuoi punti esistenti non sono stati detratti.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Torna domani e riprova.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Impossibile caricare la domanda.';

  @override
  String get gameUiYourReward677fa6e => 'La tua ricompensa';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 PUNTI';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Rispondi correttamente per riscattarla!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Torna domani per un altro round.';

  @override
  String get gameUiGreen => 'Verde';

  @override
  String get gameUiBlue => 'Blu';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 sta pensando';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: scegli una pedina';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: tira il dado';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dado $value1';
  }

  @override
  String get gameUiRollDice => 'Tira il dado';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 pedina $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Giocatore $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'Servono 20 punti per usare un suggerimento.';

  @override
  String get gameUiHintPurchaseFailed => 'Impossibile acquistare un suggerimento. Riprova.';

  @override
  String get gameUiChessKing => 're';

  @override
  String get gameUiChessQueen => 'regina';

  @override
  String get gameUiChessRook => 'torre';

  @override
  String get gameUiChessBishop => 'alfiere';

  @override
  String get gameUiChessKnight => 'cavallo';

  @override
  String get gameUiChessPawn => 'pedone';

  @override
  String get gameUiChessEmpty => 'vuota';

  @override
  String get gameSceneLampAndFlowers => 'Lampada e fiori';

  @override
  String get gameSceneGardenFriends => 'Amici del giardino';

  @override
  String get gameSceneUnderwaterExplorers => 'Esploratori subacquei';

  @override
  String get gameSceneOceanOrca => 'Orca oceanica';

  @override
  String get gameSceneFoxInTheMeadow => 'Volpe nel prato';

  @override
  String get gameSceneYellowSubmarine => 'Sottomarino giallo';

  @override
  String get gameSceneTurkeyInTheClearing => 'Tacchino nella radura';

  @override
  String get gameSceneSafariWateringHole => 'Pozza d\'acqua del safari';

  @override
  String get gameSceneJungleCompanions => 'Compagni della giungla';

  @override
  String get gameSceneGoldenPuppyGarden => 'Giardino del cucciolo dorato';

  @override
  String get gameSceneSeaTurtleReef => 'Barriera corallina della tartaruga marina';

  @override
  String get gameSceneCoralReefFriends => 'Amici della barriera corallina';

  @override
  String get gameSceneSharedClownfish => 'Pesce pagliaccio condiviso';

  @override
  String get gameSceneLittleDinosaur => 'Piccolo dinosauro';

  @override
  String get gameSceneSafariCompanions => 'Compagni del safari';

  @override
  String get gameSceneSwirlingFlowers => 'Fiori vorticosi';

  @override
  String get gameSceneGardenKitten => 'Gattino del giardino';

  @override
  String get gameSceneBlueOcean => 'Oceano blu';

  @override
  String get gameSceneCastlePrincess => 'Principessa del castello';

  @override
  String get gameSceneRedCar => 'Auto rossa';

  @override
  String get gameSceneGardenPuppy => 'Cucciolo del giardino';

  @override
  String get gameSceneSpaceExplorer => 'Esploratore spaziale';

  @override
  String get gameSceneEnchantedReadingForest => 'Foresta incantata della lettura';

  @override
  String get gameSceneDevopsInfinityCycle => 'Ciclo infinito DevOps';

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
  String get gameSceneWinterFestivalFair => 'Fiera della festa invernale';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Primo piano dell\'eroe in armatura';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Eroe in armatura color cremisi';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Fiori scuri di plumeria';

  @override
  String get gameSceneMangroveBoardwalk => 'Passerella sulle mangrovie';

  @override
  String get gameSceneTropicalPalmReflections => 'Riflessi di palme tropicali';

  @override
  String get gameSceneMaskedFigureInShadow => 'Figura mascherata nell\'ombra';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Compagno elettrico al tramonto';

  @override
  String get gameSceneTrainerAndFireDragon => 'Allenatore e drago di fuoco';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Maschera da wrestling tempestata di gioielli';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Wrestler tra pennellate rosse';

  @override
  String get gameSceneWrestlingChampionSalute => 'Saluto del campione di wrestling';

  @override
  String get gameSceneMorningAtTheBakery => 'Mattina al forno';

  @override
  String get gameSceneGreenhousePottingBench => 'Banco da invasatura della serra';

  @override
  String get gameSceneHarborFishingBoat => 'Peschereccio del porto';

  @override
  String get gameSceneAtticObservatory => 'Osservatorio in soffitta';

  @override
  String get gameSceneToyMakerSWorkshop => 'Laboratorio del costruttore di giocattoli';

  @override
  String get gameSceneWoodlandCampsite => 'Campeggio nel bosco';

  @override
  String get gameSceneAfternoonMusicRoom => 'Sala di musica del pomeriggio';

  @override
  String get gameSceneSeasideIceCreamStand => 'Chiosco dei gelati sul mare';

  @override
  String get gameSceneLibraryReadingNook => 'Angolo lettura della biblioteca';

  @override
  String get gameSceneSewingStudio => 'Studio di cucito';

  @override
  String get gameSceneFruitMarket => 'Mercato della frutta';

  @override
  String get gameSceneKoiCourtyard => 'Cortile delle carpe koi';

  @override
  String get gameSceneArtistSAtelier => 'Atelier dell\'artista';

  @override
  String get gameSceneMountainRailway => 'Ferrovia di montagna';

  @override
  String get gameSceneCountryKitchen => 'Cucina di campagna';

  @override
  String get gameScenePotteryWorkshop => 'Laboratorio di ceramica';

  @override
  String get gameSceneBeachPicnic => 'Picnic sulla spiaggia';

  @override
  String get gameSceneFlowerShop => 'Negozio di fiori';

  @override
  String get gameSceneClockmakerSWorkshop => 'Laboratorio dell\'orologiaio';

  @override
  String get gameSceneRainyCafeTerrace => 'Terrazza del caffè sotto la pioggia';

  @override
  String get gameSceneCastleHerbGarden => 'Giardino delle erbe del castello';

  @override
  String get gameSceneClassroomArtCorner => 'Angolo artistico dell\'aula';

  @override
  String get gameSceneAquariumShop => 'Negozio di acquari';

  @override
  String get gameSceneAutumnLeafCollection => 'Collezione di foglie autunnali';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Albero solitario sotto la luna';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Fiore autunnale su un ramo';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Volpe tra le foglie verdi';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Canoa su un lago coperto di ninfee';

  @override
  String get gameSceneDewDropsOnALeaf => 'Gocce di rugiada su una foglia';

  @override
  String get gameSceneStagInATurquoiseLake => 'Cervo in un lago turchese';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Bicicletta sotto una luna arancione';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Tigre bianca sopra la valle';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Due alberi nell\'acqua blu';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Pesca accanto a un cane fedele';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Gigli accanto a un lago di montagna';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Cervo sulla riva rosa del fiume';

  @override
  String get gameSceneTropicalHutAtSunset => 'Capanna tropicale al tramonto';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Volpe che domina una valle alpina';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Tramonto attraverso un bosco incantato';

  @override
  String get learningControlTitle => 'Impara DevOps';

  @override
  String get learningControlAllCategories => 'Tutte le categorie';

  @override
  String get learningControlSearchCards => 'Cerca carte';

  @override
  String get learningControlClearSearch => 'Cancella ricerca';

  @override
  String get learningControlCategory => 'Categoria';

  @override
  String get learningControlShowAll => 'Mostra tutte le carte';

  @override
  String learningControlShowSaved(int count) {
    return 'Mostra carte salvate ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Disattiva mescolamento';

  @override
  String get learningControlShuffleOn => 'Mescola le carte';

  @override
  String get learningControlAutoOff => 'Interrompi cambio automatico';

  @override
  String get learningControlAutoOn => 'Cambio automatico ogni 10 secondi';

  @override
  String get learningControlNoSaved => 'Nessuna carta salvata finora';

  @override
  String get learningControlNoMatches => 'Nessuna carta corrispondente';

  @override
  String get learningControlResetFilters => 'Reimposta filtri';

  @override
  String get learningControlPrevious => 'Precedente';

  @override
  String get learningControlNext => 'Successiva';

  @override
  String get learningControlProgress => 'Avanzamento';

  @override
  String get learningControlRemoveSaved => 'Rimuovi dai salvati';

  @override
  String get learningControlSaveCard => 'Salva carta';

  @override
  String get learningControlExample => 'Esempio';

  @override
  String get learningControlCopyExample => 'Copia esempio';

  @override
  String get learningControlExampleCopied => 'Esempio copiato';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Livello $value1 completato';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Gioca il livello $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Completa il livello $value1 per sbloccare';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Bonus di accesso giornaliero';

  @override
  String get sharedDialogThanksForComingBack => 'Grazie per essere tornato!';

  @override
  String get sharedDialogDailyRewardAdded => 'La tua ricompensa giornaliera è stata aggiunta al tuo totale di punti.';

  @override
  String get sharedDialogAwesome => 'Fantastico!';

  @override
  String get accountWelcomeGuest => 'Ospite';

  @override
  String get accountWelcomeGuestUser => 'Utente ospite';

  @override
  String get accountWelcomeUser => 'Utente';

  @override
  String get accountWelcomePlayingAsGuest => 'Stai giocando come ospite';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Collega account Google';

  @override
  String get accountWelcomeGoogleConnected => 'Account Google collegato con successo! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'L\'accesso è stato annullato.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Connessione non riuscita: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Esci';

  @override
  String get accountWelcomeSignOutTitle => 'Uscire?';

  @override
  String get accountWelcomeSignOutMessage => 'Sei sicuro di voler uscire? Dovrai accedere di nuovo per visualizzare i tuoi progressi salvati.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Disconnessione non riuscita: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Reimpostare i dati dell\'app?';

  @override
  String get accountWelcomeResetAppMessage => 'Questo eliminerà definitivamente TUTTI i tuoi punti, le serie, la cronologia di gioco e le impostazioni. Verrai disconnesso e riportato alla schermata iniziale. Questa azione non può essere annullata.';

  @override
  String get accountWelcomeResetEverything => 'Reimposta tutto';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Reimpostazione non riuscita: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Annulla';

  @override
  String get accountWelcomeResetAppData => 'Reimposta dati dell\'app';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Cancella tutti i punti, le serie e le impostazioni';

  @override
  String get accountWelcomeFooter => 'App DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Traduzione non ancora disponibile';

  @override
  String get accountWelcomeContinueWithGoogle => 'Continua con Google';

  @override
  String get accountWelcomeSigningIn => 'Accesso in corso...';

  @override
  String get accountWelcomeOr => 'OPPURE';

  @override
  String get accountWelcomeContinueAsGuest => 'Continua come ospite';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Puoi accedere in seguito dal tuo profilo.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Puoi iniziare come ospite e accedere in seguito.';

  @override
  String get accountWelcomeGreetingGuest => 'Benvenuto';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Benvenuto, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'L\'accesso con Google è stato completato, ma non è stato restituito alcun account utente.';

  @override
  String get accountWelcomeErrorEmailExists => 'Questa email ha già un account che utilizza un altro metodo di accesso.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Questo account Google è già collegato a un altro account.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Le credenziali di autenticazione Google non sono valide o sono scadute.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Questo account è stato disabilitato.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'L\'accesso con Google non è attualmente abilitato.';

  @override
  String get accountWelcomeErrorNetwork => 'Errore di rete. Controlla la tua connessione Internet e riprova.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Troppi tentativi di accesso. Attendi e riprova.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Nessuna informazione aggiuntiva sull\'errore.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Accesso con Google non riuscito.\n\nCodice: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Errore di accesso con Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Impossibile continuare come ospite. Riprova.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'L\'accesso con Google sarà presto disponibile.';

  @override
  String get accountWelcomeLoginTagline => 'Impara • Pratica • Competi • Guadagna';

  @override
  String get accountWelcomeCountryRegion => 'Paese / regione';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Paese / regione: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Cerca paese';

  @override
  String get accountWelcomeCountryNotSelected => 'Non selezionato';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Perché DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ domande di pratica';

  @override
  String get accountWelcomeFeatureLanguages => 'Supporto multilingue';

  @override
  String get accountWelcomeFeatureStreaks => 'Serie e classifiche';

  @override
  String get accountWelcomeFeatureGames => 'Giochi e sfide';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud e DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonus e premi';

  @override
  String get accountWelcomePracticeOnTheGo => 'Fai pratica ovunque';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Installa l\'app Android e impara offline, ovunque ti trovi.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Disponibile su Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Serie di $days giorni';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Mantieni una serie di $days giorni.';
  }

  @override
  String get achLocYearStreakTitle => 'Serie di 1 anno';

  @override
  String get achLocFirstQuizTitle => 'Primo quiz';

  @override
  String get achLocFirstQuizDescription => 'Completa il tuo primo quiz.';

  @override
  String get achLocQuiz10Title => 'Esploratore di quiz';

  @override
  String get achLocQuiz10Description => 'Completa 10 quiz.';

  @override
  String get achLocPoints1000Title => '1000 punti';

  @override
  String get achLocPoints1000Description => 'Guadagna 1000 punti totali nel Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Punteggio perfetto';

  @override
  String get achLocPerfectScoreDescription => 'Ottieni il 100% in un qualsiasi quiz.';

  @override
  String get achLocQuiz25Title => 'Appassionato di quiz';

  @override
  String get achLocQuiz25Description => 'Completa 25 quiz.';

  @override
  String get achLocQuiz50Title => 'Maestro di quiz';

  @override
  String get achLocQuiz50Description => 'Completa 50 quiz.';

  @override
  String get achLocQuiz100Title => 'Club dei cento';

  @override
  String get achLocQuiz100Description => 'Completa 100 quiz.';

  @override
  String get achLocQuiz250Title => 'Leggenda dei quiz';

  @override
  String get achLocQuiz250Description => 'Completa 250 quiz.';

  @override
  String get achLocPoints5000Title => '5.000 punti';

  @override
  String get achLocPoints5000Description => 'Guadagna 5.000 punti totali.';

  @override
  String get achLocPoints10000Title => '10.000 punti';

  @override
  String get achLocPoints10000Description => 'Guadagna 10.000 punti totali.';

  @override
  String get achLocPoints50000Title => '50.000 punti';

  @override
  String get achLocPoints50000Description => 'Guadagna 50.000 punti totali.';

  @override
  String get achLocPoints100000Title => '100.000 punti';

  @override
  String get achLocPoints100000Description => 'Guadagna 100.000 punti totali.';

  @override
  String get achLocDaily1Title => 'Inizio giornaliero';

  @override
  String get achLocDaily1Description => 'Completa il tuo primo Quiz giornaliero.';

  @override
  String get achLocDaily7Title => 'Abitudine giornaliera';

  @override
  String get achLocDaily7Description => 'Completa 7 Quiz giornalieri.';

  @override
  String get achLocDaily30Title => 'Campione giornaliero';

  @override
  String get achLocDaily30Description => 'Completa 30 Quiz giornalieri.';

  @override
  String get achLocSets5Title => 'Principiante di set';

  @override
  String get achLocSets5Description => 'Termina 5 set di quiz.';

  @override
  String get achLocSets25Title => 'Collezionista di set';

  @override
  String get achLocSets25Description => 'Termina 25 set di quiz.';

  @override
  String get achLocSets50Title => 'Maestro dei set';

  @override
  String get achLocSets50Description => 'Termina 50 set di quiz.';

  @override
  String get achLocSets100Title => 'Leggenda dei set';

  @override
  String get achLocSets100Description => 'Termina 100 set di quiz.';

  @override
  String get achLocCert1Title => 'Primo certificato';

  @override
  String get achLocCert1Description => 'Ottieni il tuo primo certificato di categoria.';

  @override
  String get achLocCert5Title => 'Professionista certificato';

  @override
  String get achLocCert5Description => 'Ottieni 5 certificati di categoria.';

  @override
  String get achLocCert21Title => 'Totalmente certificato';

  @override
  String get achLocCert21Description => 'Ottieni un certificato in tutte le 21 categorie.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Gratis dal 7 al 14 feb di ogni anno';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Gratis dall\'8 al 15 mar di ogni anno';

  @override
  String get achLocThemeLight => 'Chiaro';

  @override
  String get achLocThemeDark => 'Scuro';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Tramonto';

  @override
  String get achLocThemeCoffee => 'Caffè';

  @override
  String get achLocThemeTea => 'Tè';

  @override
  String get achLocThemeOcean => 'Oceano';

  @override
  String get achLocThemeSolarFlare => 'Brillamento solare';

  @override
  String get achLocThemeForest => 'Foresta';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Viola Cyber';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Mezzanotte';

  @override
  String get achLocThemeDarkGrey => 'Grigio scuro';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'San Valentino';

  @override
  String get achLocThemeDqSpecial => 'DQ Speciale';

  @override
  String get achLocThemeArmy => 'Esercito';

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
  String get achLocThemeGreenLantern => 'Lanterna Verde';

  @override
  String get achLocThemeCyborg => 'Cyborg';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'Eroi DC';

  @override
  String get achLocThemeRainbow => 'Arcobaleno';

  @override
  String get achLocThemeDiamond => 'Diamante';

  @override
  String get achLocThemeLegendary => 'Leggendario';

  @override
  String get gameHintCmd001LsLa => 'Elenca tutti i file con i dettagli';

  @override
  String get gameHintCmd002Grep => 'Cerca testo usando un pattern';

  @override
  String get gameHintCmd003Chmod => 'Modifica i permessi dei file';

  @override
  String get gameHintCmd004DfH => 'Mostra lo spazio libero su disco';

  @override
  String get gameHintCmd005TailF => 'Segue un file di log in crescita';

  @override
  String get gameHintCmd006PsAux => 'Elenca i processi in esecuzione';

  @override
  String get gameHintCmd007GitClone => 'Copia un repository remoto';

  @override
  String get gameHintCmd008GitStash => 'Mette da parte le modifiche non committate';

  @override
  String get gameHintCmd009GitRebase => 'Riapplica i commit su una nuova base';

  @override
  String get gameHintCmd010GitBlame => 'Mostra chi ha modificato ogni riga';

  @override
  String get gameHintCmd011DockerPs => 'Elenca i container in esecuzione';

  @override
  String get gameHintCmd012DockerBuild => 'Crea un\'immagine da un Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Mostra l\'output del container';

  @override
  String get gameHintCmd014DockerExec => 'Esegue un comando dentro un container';

  @override
  String get gameHintCmd015KubectlGetPods => 'Elenca i pod in un namespace';

  @override
  String get gameHintCmd016KubectlApply => 'Crea risorse da un file';

  @override
  String get gameHintCmd017KubectlDescribe => 'Mostra informazioni dettagliate su una risorsa';

  @override
  String get gameHintCmd018KubectlScale => 'Cambia il numero di repliche';

  @override
  String get gameHintCmd019TerraformInit => 'Scarica i provider e configura';

  @override
  String get gameHintCmd020TerraformPlan => 'Anteprima delle modifiche all\'infrastruttura';

  @override
  String get gameHintCmd021TerraformApply => 'Crea o aggiorna l\'infrastruttura';

  @override
  String get gameHintCmd022TerraformDestroy => 'Rimuove l\'infrastruttura gestita';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Esegue un playbook di automazione';

  @override
  String get gameHintCmd024Ping => 'Verifica la raggiungibilità con ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Mostra il percorso verso un host';

  @override
  String get gameHintCmd026Curl => 'Trasferisce dati da un URL';

  @override
  String get gameHintCmd027Ssh => 'Accede a una macchina remota in modo sicuro';

  @override
  String get gameHintCmd028CrontabE => 'Modifica le attività pianificate';

  @override
  String get gameHintCmd029SystemctlStatus => 'Controlla lo stato di un servizio';

  @override
  String get gameHintCmd030HelmInstall => 'Distribuisce un chart su Kubernetes';

  @override
  String get gameHintWord001Git => 'Traccia le modifiche nel codice sorgente.';

  @override
  String get gameHintWord002Aws => 'La piattaforma cloud di Amazon.';

  @override
  String get gameHintWord003Api => 'Un contratto che permette ai sistemi software di comunicare.';

  @override
  String get gameHintWord004Dns => 'Traduce i nomi di dominio in indirizzi IP.';

  @override
  String get gameHintWord005Cli => 'Un\'interfaccia testuale per eseguire comandi.';

  @override
  String get gameHintWord006Cpu => 'Il processore che esegue le istruzioni.';

  @override
  String get gameHintWord007Ram => 'Memoria temporanea usata dai programmi in esecuzione.';

  @override
  String get gameHintWord008Ssh => 'Protocollo sicuro per l\'accesso remoto alla shell.';

  @override
  String get gameHintWord009Yaml => 'Un formato di serializzazione dei dati leggibile dall\'uomo.';

  @override
  String get gameHintWord010Linux => 'Kernel e famiglia di sistemi operativi open source.';

  @override
  String get gameHintWord011Bash => 'Una popolare shell di comandi Unix.';

  @override
  String get gameHintWord012Cloud => 'Risorse di calcolo on demand erogate tramite una rete.';

  @override
  String get gameHintWord013Docker => 'Una piattaforma per creare ed eseguire container.';

  @override
  String get gameHintWord014Azure => 'La piattaforma cloud di Microsoft.';

  @override
  String get gameHintWord015Python => 'Un linguaggio di scripting e programmazione molto diffuso.';

  @override
  String get gameHintWord016Github => 'Un popolare servizio di collaborazione Git ospitato.';

  @override
  String get gameHintWord017Bgp => 'Protocollo di routing che scambia rotte tra sistemi autonomi.';

  @override
  String get gameHintWord018Jenkins => 'Un server di automazione spesso usato per CI.';

  @override
  String get gameHintWord019Port => 'Un endpoint numerato usato dai servizi di rete.';

  @override
  String get gameHintWord020Proxy => 'Un server che inoltra le richieste per conto dei client.';

  @override
  String get gameHintWord021Cache => 'Un archivio veloce per dati riutilizzati di frequente.';

  @override
  String get gameHintWord022Cron => 'Scheduler Unix per comandi ricorrenti.';

  @override
  String get gameHintWord023Bicep => 'Linguaggio dichiarativo di Azure per l\'infrastruttura come codice.';

  @override
  String get gameHintWord024Apigee => 'Piattaforma Google Cloud per la gestione centralizzata delle API.';

  @override
  String get gameHintWord025Root => 'Account amministratore privilegiato nei sistemi di tipo Unix.';

  @override
  String get gameHintWord026Nginx => 'Web server e reverse proxy.';

  @override
  String get gameHintWord027Redis => 'Archivio dati in memoria spesso usato come cache.';

  @override
  String get gameHintWord028Mysql => 'Popolare sistema di database relazionale.';

  @override
  String get gameHintWord029Ruby => 'Linguaggio di programmazione usato da strumenti come Chef.';

  @override
  String get gameHintWord030Helm => 'Gestore di pacchetti comunemente usato con Kubernetes.';

  @override
  String get gameHintWord031Pod => 'La più piccola unità distribuibile in Kubernetes.';

  @override
  String get gameHintWord032Image => 'Modello di sola lettura usato per creare un container.';

  @override
  String get gameHintWord033Build => 'Crea un artefatto a partire da sorgenti e dipendenze.';

  @override
  String get gameHintWord034Deploy => 'Rilascia un\'applicazione in un ambiente.';

  @override
  String get gameHintWord035Terraform => 'Strumento HashiCorp per l\'infrastruttura come codice.';

  @override
  String get gameHintWord036Ansible => 'Strumento di automazione e configurazione senza agent.';

  @override
  String get gameHintWord037Kubectl => 'Client da riga di comando per Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Abbreviazione di Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Modello operativo che usa Git come fonte di verità.';

  @override
  String get gameHintWord040Pipeline => 'Sequenza automatizzata di fasi di build, test e rilascio.';

  @override
  String get gameHintWord041Container => 'Processo isolato impacchettato con le sue dipendenze.';

  @override
  String get gameHintWord042Cluster => 'Gruppo di macchine gestite come un sistema condiviso.';

  @override
  String get gameHintWord043Ingress => 'Oggetto API di Kubernetes per l\'instradamento HTTP esterno.';

  @override
  String get gameHintWord044Firewall => 'Filtra il traffico di rete secondo regole di sicurezza.';

  @override
  String get gameHintWord045Subnet => 'Suddivisione logica di una rete IP.';

  @override
  String get gameHintWord046Gateway => 'Nodo di rete che collega reti diverse.';

  @override
  String get gameHintWord047Router => 'Inoltra i pacchetti tra reti.';

  @override
  String get gameHintWord048Switch => 'Collega i dispositivi all\'interno di una rete locale.';

  @override
  String get gameHintWord049Repository => 'Archivio gestito per codice sorgente o pacchetti.';

  @override
  String get gameHintWord050Systemd => 'Sistema init e gestore dei servizi di Linux.';

  @override
  String get gameHintWord051Journalctl => 'Comando usato per leggere i log del journal di systemd.';

  @override
  String get gameHintWord052Permission => 'Regola che controlla chi può leggere, scrivere o eseguire.';

  @override
  String get gameHintWord053Alloydb => 'Database gestito di Google Cloud compatibile con PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Oggetto Kubernetes per la configurazione non riservata.';

  @override
  String get gameHintWord055Secret => 'Oggetto Kubernetes destinato a dati sensibili.';

  @override
  String get gameHintWord056Persistent => 'Descrive uno storage che sopravvive al riavvio di un carico di lavoro.';

  @override
  String get gameHintWord057Volume => 'Storage del filesystem montato in un container.';

  @override
  String get gameHintWord058Storage => 'Luogo persistente per file, oggetti o blocchi.';

  @override
  String get gameHintWord059Replica => 'Copia di un\'istanza di un carico di lavoro mantenuta per scalabilità o affidabilità.';

  @override
  String get gameHintWord060Deployment => 'Controller Kubernetes per pod di applicazioni stateless.';

  @override
  String get gameHintWord061Dockerfile => 'Istruzioni usate per creare un\'immagine Docker.';

  @override
  String get gameHintWord062Database => 'Archivio organizzato interrogato dalle applicazioni.';

  @override
  String get gameHintWord063Automation => 'Uso del software per eseguire attività ripetibili senza passaggi manuali.';

  @override
  String get gameHintWord064Anthos => 'Piattaforma Google Cloud per gestire cluster in più ambienti.';

  @override
  String get gameHintWord065Bigquery => 'Servizio Google Cloud per l\'analisi di dati su larga scala.';

  @override
  String get gameHintWord066Bigtable => 'Database NoSQL a colonne larghe di Google Cloud per l\'analisi.';

  @override
  String get gameHintWord067Loadbalancer => 'Distribuisce il traffico in ingresso tra più backend.';

  @override
  String get gameHintWord068Prometheus => 'Sistema di monitoraggio che memorizza metriche a serie temporali.';

  @override
  String get gameHintWord069Grafana => 'Piattaforma per interrogare e visualizzare dati di osservabilità.';

  @override
  String get gameHintWord070Cloudant => 'Database di documenti NoSQL JSON gestito di IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Servizio AWS che registra l\'attività delle API per l\'audit.';

  @override
  String get gameHintWord072Statefulset => 'Controller Kubernetes per carichi di lavoro che richiedono un\'identità stabile.';

  @override
  String get gameHintWord073Daemonset => 'Controller Kubernetes che esegue un pod sui nodi selezionati.';

  @override
  String get gameHintWord074Serviceaccount => 'Identità Kubernetes usata da un carico di lavoro o da un processo.';

  @override
  String get gameHintWord075Networkpolicy => 'Risorsa Kubernetes che controlla il traffico di rete dei pod.';

  @override
  String get gameHintWord076Certificate => 'Documento digitale usato per stabilire l\'identità in TLS.';

  @override
  String get gameHintWord077Encryption => 'Trasforma i dati in modo che solo le parti autorizzate possano leggerli.';

  @override
  String get gameHintWord078Observability => 'Capacità di dedurre il comportamento di un sistema dai suoi output.';

  @override
  String get gameHintWord079Coredns => 'Server DNS comunemente usato all\'interno dei cluster Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Progetto per gestire risorse cloud tramite le API di Kubernetes.';

  @override
  String get gameHintWord081Failover => 'Passaggio a un componente di riserva dopo un guasto.';

  @override
  String get gameHintWord082Idempotency => 'Proprietà per cui ripetere un\'operazione ha lo stesso effetto che eseguirla una volta.';

  @override
  String get gameHintWord083Dataflow => 'Servizio Google Cloud per l\'elaborazione di dati in streaming e batch.';

  @override
  String get gameHintWord084Orchestration => 'Gestione coordinata di più carichi di lavoro automatizzati.';

  @override
  String get gameHintWord085Dataplex => 'Servizio Google Cloud per scoprire e governare i dati aziendali.';

  @override
  String get gameHintWord086Serverless => 'Modello di esecuzione in cui la gestione dell\'infrastruttura è astratta.';

  @override
  String get gameHintWord087Distributed => 'Sistema i cui componenti girano su più macchine in rete.';

  @override
  String get gameHintWord088Dataproc => 'Ambiente Apache Spark e Hadoop gestito di Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'Database NoSQL di AWS spesso usato per il locking dello stato di Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Preparazione di infrastruttura o risorse per l\'uso.';

  @override
  String get gameHintWord091Elasticsearch => 'Motore di ricerca comunemente usato per il logging centralizzato.';

  @override
  String get gameHintWord092Etcd => 'Archivio chiave-valore che conserva lo stato del cluster Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Processo di verifica dell\'identità di un utente o servizio.';

  @override
  String get gameHintWord094Authorization => 'Processo che decide cosa un\'identità può fare.';

  @override
  String get gameHintWord095Expressroute => 'Servizio Azure per la connettività privata dedicata verso i data center.';

  @override
  String get gameHintWord096Configuration => 'Impostazioni che determinano il comportamento del software.';

  @override
  String get gameHintWord097Infrastructure => 'Risorse di calcolo, rete e storage che supportano le applicazioni.';

  @override
  String get gameHintWord098Fastconnect => 'Servizio Oracle Cloud per connessioni di rete private dedicate.';

  @override
  String get gameHintWord099Containerd => 'Runtime di container standard del settore usato da Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Piattaforma di orchestrazione di container.';

  @override
  String get gameHintWord101Http => 'Protocollo applicativo usato per richiedere risorse web.';

  @override
  String get gameHintWord102Https => 'Versione cifrata del protocollo per le richieste web.';

  @override
  String get gameHintWord103Tcp => 'Protocollo di trasporto che garantisce consegna affidabile e ordinata.';

  @override
  String get gameHintWord104Udp => 'Protocollo di trasporto senza connessione usato per i datagrammi.';

  @override
  String get gameHintWord105Tls => 'Protocollo che protegge i dati scambiati su una rete.';

  @override
  String get gameHintWord106Ssl => 'Vecchio predecessore del moderno protocollo di sicurezza del trasporto.';

  @override
  String get gameHintWord107Ftp => 'Protocollo tradizionale per il trasferimento di file.';

  @override
  String get gameHintWord108Sftp => 'Protocollo di trasferimento file trasportato su una connessione shell sicura.';

  @override
  String get gameHintWord109Smtp => 'Protocollo usato per inviare email tra server.';

  @override
  String get gameHintWord110Snmp => 'Protocollo usato per gestire e monitorare i dispositivi di rete.';

  @override
  String get gameHintWord111Icmp => 'Protocollo che trasporta errori di rete e messaggi ping.';

  @override
  String get gameHintWord112Arp => 'Risolve gli indirizzi IPv4 locali in indirizzi hardware.';

  @override
  String get gameHintWord113Dhcp => 'Assegna automaticamente la configurazione IP ai client di rete.';

  @override
  String get gameHintWord114Nat => 'Riscrive gli indirizzi di rete quando i pacchetti attraversano un gateway.';

  @override
  String get gameHintWord115Vpn => 'Tunnel cifrato che collega reti o utenti remoti.';

  @override
  String get gameHintWord116Vpc => 'Rete virtuale isolata in un cloud pubblico.';

  @override
  String get gameHintWord117Vlan => 'Separazione logica di una rete commutata.';

  @override
  String get gameHintWord118Wan => 'Rete che si estende su un\'ampia area geografica.';

  @override
  String get gameHintWord119Lan => 'Rete che collega dispositivi in un\'area locale.';

  @override
  String get gameHintWord120Cdn => 'Rete edge distribuita che mette in cache i contenuti erogati.';

  @override
  String get gameHintWord121Cidr => 'Notazione che esprime un prefisso di rete con una lunghezza dopo la barra.';

  @override
  String get gameHintWord122Host => 'Un computer o endpoint connesso a una rete.';

  @override
  String get gameHintWord123Hostname => 'Nome leggibile assegnato a una macchina in rete.';

  @override
  String get gameHintWord124Domain => 'Area amministrativa con nome nel sistema dei nomi di Internet.';

  @override
  String get gameHintWord125Zone => 'Porzione amministrativa di uno spazio dei nomi DNS.';

  @override
  String get gameHintWord126Record => 'Una singola voce in un database DNS.';

  @override
  String get gameHintWord127Aaaa => 'Tipo di record DNS che risolve un nome in un indirizzo IPv6.';

  @override
  String get gameHintWord128Ptr => 'Tipo di record DNS usato per le ricerche inverse degli indirizzi.';

  @override
  String get gameHintWord129Txt => 'Tipo di record DNS che memorizza valori di testo.';

  @override
  String get gameHintWord130Cname => 'Record DNS che rende un nome alias di un altro.';

  @override
  String get gameHintWord131Route => 'Voce di percorso che indirizza i pacchetti verso una destinazione.';

  @override
  String get gameHintWord132Routing => 'Selezione dei percorsi per il traffico tra reti.';

  @override
  String get gameHintWord133Packet => 'Unità di dati trasmessa attraverso una rete.';

  @override
  String get gameHintWord134Protocol => 'Regole concordate per la comunicazione tra sistemi.';

  @override
  String get gameHintWord135Ack => 'Flag TCP che conferma la ricezione dei dati.';

  @override
  String get gameHintWord136Bandwidth => 'Capacità di un collegamento di comunicazione.';

  @override
  String get gameHintWord137Latency => 'Ritardo prima che una richiesta o un pacchetto riceva una risposta.';

  @override
  String get gameHintWord138Throughput => 'Quantità di lavoro utile o dati elaborati per unità di tempo.';

  @override
  String get gameHintWord139Mtu => 'Dimensione massima del pacchetto che un collegamento può trasmettere senza frammentazione.';

  @override
  String get gameHintWord140Alpn => 'Estensione TLS che negozia un protocollo a livello applicativo.';

  @override
  String get gameHintWord141Grep => 'Cerca nelle righe di testo un pattern corrispondente.';

  @override
  String get gameHintWord142Sed => 'Editor di flusso comunemente usato per sostituzioni di testo.';

  @override
  String get gameHintWord143Lscpu => 'Comando Linux che mostra l\'architettura del processore e i dettagli dei core.';

  @override
  String get gameHintWord144Find => 'Cerca in un albero di directory usando predicati sui file.';

  @override
  String get gameHintWord145Lsblk => 'Comando Linux che elenca i dispositivi a blocchi e le loro relazioni.';

  @override
  String get gameHintWord146Sort => 'Ordina le righe di testo.';

  @override
  String get gameHintWord147Uniq => 'Filtra le righe duplicate adiacenti.';

  @override
  String get gameHintWord148Head => 'Stampa l\'inizio di un file.';

  @override
  String get gameHintWord149Tail => 'Stampa la fine di un file e può seguire i log in aggiunta.';

  @override
  String get gameHintWord150Cat => 'Concatena i file e ne stampa il contenuto.';

  @override
  String get gameHintWord151Cut => 'Estrae campi o colonne di caratteri selezionati dalle righe.';

  @override
  String get gameHintWord152Tee => 'Copia lo standard input nei file e nello standard output.';

  @override
  String get gameHintWord153Echo => 'Scrive i suoi argomenti sullo standard output.';

  @override
  String get gameHintWord154Printf => 'Stampa testo formattato da una shell o da un programma.';

  @override
  String get gameHintWord155Touch => 'Aggiorna i timestamp dei file o crea un file vuoto.';

  @override
  String get gameHintWord156Mkdir => 'Crea directory.';

  @override
  String get gameHintWord157Rmdir => 'Rimuove directory vuote.';

  @override
  String get gameHintWord158Chmod => 'Modifica i bit dei permessi dei file Unix.';

  @override
  String get gameHintWord159Chown => 'Modifica la proprietà di un file.';

  @override
  String get gameHintWord160Chgrp => 'Modifica il gruppo proprietario di un file.';

  @override
  String get gameHintWord161Pwd => 'Stampa la directory di lavoro corrente.';

  @override
  String get gameHintWord162Apt => 'Strumento di gestione dei pacchetti usato dai sistemi basati su Debian.';

  @override
  String get gameHintWord163Top => 'Visualizzazione interattiva dei processi e dell\'uso delle risorse di sistema.';

  @override
  String get gameHintWord164Agent => 'Componente software che esegue o segnala attività su un host.';

  @override
  String get gameHintWord165Kill => 'Invia un segnale a un processo tramite il suo identificatore.';

  @override
  String get gameHintWord166Signal => 'Notifica recapitata a un processo dal sistema operativo.';

  @override
  String get gameHintWord167Sigkill => 'Segnale Unix che termina immediatamente un processo.';

  @override
  String get gameHintWord168Nice => 'Avvia un processo con una priorità di scheduling modificata.';

  @override
  String get gameHintWord169Renice => 'Modifica la priorità di scheduling di un processo in esecuzione.';

  @override
  String get gameHintWord170Jobs => 'Elenca i job gestiti dalla shell corrente.';

  @override
  String get gameHintWord171Nohup => 'Esegue un comando ignorando i segnali di hangup.';

  @override
  String get gameHintWord172Screen => 'Multiplexer di terminale che supporta sessioni scollegabili.';

  @override
  String get gameHintWord173Uptime => 'Indica da quanto tempo un sistema è in esecuzione.';

  @override
  String get gameHintWord174Uname => 'Stampa le informazioni su sistema e kernel.';

  @override
  String get gameHintWord175Whoami => 'Stampa il nome dell\'utente corrente effettivo.';

  @override
  String get gameHintWord176Umask => 'Imposta la maschera dei permessi usata alla creazione dei file.';

  @override
  String get gameHintWord177Usermod => 'Comando Linux che modifica un account utente esistente.';

  @override
  String get gameHintWord178Crontab => 'Modifica o elenca i job di shell ricorrenti pianificati.';

  @override
  String get gameHintWord179Findmnt => 'Comando Linux che mostra le informazioni sui filesystem montati.';

  @override
  String get gameHintWord180Mount => 'Collega un filesystem all\'albero delle directory.';

  @override
  String get gameHintWord181Sigterm => 'Segnale Unix che richiede la terminazione ordinata di un processo.';

  @override
  String get gameHintWord182Fstab => 'Tabella di sistema che descrive i filesystem da montare.';

  @override
  String get gameHintWord183Swap => 'Spazio su disco usato per integrare la memoria fisica.';

  @override
  String get gameHintWord184Tmpfs => 'Filesystem temporaneo basato sulla memoria virtuale.';

  @override
  String get gameHintWord185Proc => 'Filesystem virtuale di Linux che espone informazioni su processi e kernel.';

  @override
  String get gameHintWord186Syslog => 'Protocollo di logging standard e formato dei messaggi.';

  @override
  String get gameHintWord187Dmesg => 'Mostra i messaggi del ring buffer del kernel.';

  @override
  String get gameHintWord188Free => 'Indica la memoria di sistema usata e disponibile.';

  @override
  String get gameHintWord189Stat => 'Mostra i metadati dettagliati di un file.';

  @override
  String get gameHintWord190Lsof => 'Elenca i file aperti e i processi che li usano.';

  @override
  String get gameHintWord191Netstat => 'Mostra le connessioni di rete e le informazioni di routing.';

  @override
  String get gameHintWord192Checksum => 'Valore calcolato usato per rilevare modifiche o corruzione nei dati.';

  @override
  String get gameHintWord193Ping => 'Verifica la raggiungibilità di rete tramite richieste echo.';

  @override
  String get gameHintWord194Traceroute => 'Mostra i salti intermedi verso una destinazione di rete.';

  @override
  String get gameHintWord195Resolver => 'Componente DNS che cerca le risposte alle query sui nomi.';

  @override
  String get gameHintWord196Nslookup => 'Cerca nomi e indirizzi DNS.';

  @override
  String get gameHintWord197Telnet => 'Protocollo di terminale remoto legacy non cifrato.';

  @override
  String get gameHintWord198Tftp => 'Semplice protocollo di trasferimento file basato su UDP.';

  @override
  String get gameHintWord199Daemon => 'Processo di servizio in background nei sistemi di tipo Unix.';

  @override
  String get gameHintWord200Kernel => 'Componente centrale che gestisce le risorse del sistema operativo.';

  @override
  String get gameHintWord201Commit => 'Uno snapshot registrato delle modifiche nel controllo di versione.';

  @override
  String get gameHintWord202Branch => 'Riferimento mobile che rappresenta una linea di sviluppo.';

  @override
  String get gameHintWord203Merge => 'Combina le cronologie di diverse linee di sviluppo.';

  @override
  String get gameHintWord204Rebase => 'Riesegue i commit sopra un commit base diverso.';

  @override
  String get gameHintWord205Clone => 'Crea una copia locale di un repository remoto.';

  @override
  String get gameHintWord206Fetch => 'Scarica oggetti e riferimenti remoti senza eseguire il merge.';

  @override
  String get gameHintWord207Pull => 'Recupera le modifiche e le integra nel branch corrente.';

  @override
  String get gameHintWord208Push => 'Invia i commit locali a un repository remoto.';

  @override
  String get gameHintWord209Stash => 'Salva temporaneamente le modifiche non committate dell\'albero di lavoro.';

  @override
  String get gameHintWord210Revert => 'Crea un commit che annulla un altro commit.';

  @override
  String get gameHintWord211Reset => 'Sposta un riferimento Git e può reimpostare l\'indice o i file di lavoro.';

  @override
  String get gameHintWord212Reflog => 'Cronologia locale degli aggiornamenti ai riferimenti Git.';

  @override
  String get gameHintWord213Diff => 'Mostra le differenze tra versioni o file.';

  @override
  String get gameHintWord214Status => 'Indica i file in staging, modificati e non tracciati.';

  @override
  String get gameHintWord215Checkout => 'Comando Git per passare a una revisione o ripristinare file.';

  @override
  String get gameHintWord216Tag => 'Riferimento con nome che di solito contrassegna una release.';

  @override
  String get gameHintWord217Remote => 'Connessione con nome a un altro repository.';

  @override
  String get gameHintWord218Origin => 'Nome predefinito assegnato al remote di un repository clonato.';

  @override
  String get gameHintWord219Upstream => 'Branch remoto di tracking associato a un branch locale.';

  @override
  String get gameHintWord220Worktree => 'Directory di lavoro estratta collegata a un repository.';

  @override
  String get gameHintWord221Registry => 'Servizio che archivia e distribuisce immagini di container.';

  @override
  String get gameHintWord222Digest => 'Identificatore basato sul contenuto di un\'immagine di container.';

  @override
  String get gameHintWord223Layer => 'Modifiche al filesystem che formano parte di un\'immagine di container.';

  @override
  String get gameHintWord224Entrypoint => 'Istruzione Dockerfile che definisce l\'eseguibile principale del container.';

  @override
  String get gameHintWord225Cmd => 'Istruzione Dockerfile che specifica un comando o argomenti predefiniti.';

  @override
  String get gameHintWord226Workdir => 'Istruzione Dockerfile che imposta la directory di lavoro.';

  @override
  String get gameHintWord227Copy => 'Istruzione Dockerfile che copia in un\'immagine i file del contesto di build.';

  @override
  String get gameHintWord228Add => 'Istruzione Dockerfile che può anche estrarre archivi locali.';

  @override
  String get gameHintWord229Run => 'Istruzione Dockerfile che esegue un comando in fase di build.';

  @override
  String get gameHintWord230Env => 'Istruzione Dockerfile che definisce variabili d\'ambiente.';

  @override
  String get gameHintWord231Arg => 'Istruzione Dockerfile che dichiara una variabile di build.';

  @override
  String get gameHintWord232Expose => 'Istruzione Dockerfile che documenta una porta del container.';

  @override
  String get gameHintWord233User => 'Istruzione Dockerfile che sceglie l\'account per i comandi successivi.';

  @override
  String get gameHintWord234Healthcheck => 'Istruzione che descrive come verificare lo stato di salute del container.';

  @override
  String get gameHintWord235Shebang => 'Prima riga di uno script che identifica l\'interprete da eseguire.';

  @override
  String get gameHintWord236Compose => 'Strumento Docker per definire ed eseguire applicazioni multi-container.';

  @override
  String get gameHintWord237Bridge => 'Driver di rete Docker comune per la rete locale dei container.';

  @override
  String get gameHintWord238Overlay => 'Rete che si estende su container di più host.';

  @override
  String get gameHintWord239None => 'Driver di rete Docker che disabilita la rete del container.';

  @override
  String get gameHintWord240Prune => 'Rimuove le risorse di container inutilizzate.';

  @override
  String get gameHintWord241Replicaset => 'Controller Kubernetes che mantiene il numero desiderato di pod.';

  @override
  String get gameHintWord242Service => 'Astrazione Kubernetes che fornisce accesso stabile ai pod.';

  @override
  String get gameHintWord243Endpoints => 'Indirizzi che sostengono un servizio Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Ambito logico che raggruppa le risorse Kubernetes.';

  @override
  String get gameHintWord245Node => 'Macchina worker che ospita i pod Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Agent su ogni nodo che gestisce l\'esecuzione dei pod.';

  @override
  String get gameHintWord247Pvc => 'Richiesta Kubernetes di storage persistente.';

  @override
  String get gameHintWord248Apiserver => 'Componente del control plane Kubernetes che espone l\'API del cluster.';

  @override
  String get gameHintWord249Role => 'Insieme nominato di permessi nel controllo degli accessi basato sui ruoli.';

  @override
  String get gameHintWord250Resourcequota => 'Oggetto Kubernetes che limita il consumo di risorse in un namespace.';

  @override
  String get gameHintWord251Selector => 'Espressione che individua le risorse tramite le loro etichette.';

  @override
  String get gameHintWord252Taint => 'Proprietà del nodo che respinge i pod privi di una toleration corrispondente.';

  @override
  String get gameHintWord253Toleration => 'Impostazione del pod che consente lo scheduling su un nodo con taint.';

  @override
  String get gameHintWord254Cordon => 'Contrassegna un nodo Kubernetes come non pianificabile.';

  @override
  String get gameHintWord255Uncordon => 'Rende di nuovo pianificabile un nodo con cordon.';

  @override
  String get gameHintWord256Drain => 'Rimuove in sicurezza i carichi di lavoro prima della manutenzione del nodo.';

  @override
  String get gameHintWord257Job => 'Carico di lavoro Kubernetes che esegue un\'attività fino al completamento.';

  @override
  String get gameHintWord258Cronjob => 'Carico di lavoro Kubernetes che crea job secondo una pianificazione.';

  @override
  String get gameHintWord259Readiness => 'Probe che indica se un container può ricevere traffico.';

  @override
  String get gameHintWord260Liveness => 'Probe che indica se un container deve essere riavviato.';

  @override
  String get gameHintWord261Canary => 'Approccio di rilascio che espone una nuova versione a una piccola quota di traffico.';

  @override
  String get gameHintWord262Rolling => 'Strategia di aggiornamento che sostituisce gradualmente le istanze in esecuzione.';

  @override
  String get gameHintWord263Rollback => 'Ripristina una versione dell\'applicazione che funzionava in precedenza.';

  @override
  String get gameHintWord264Rollout => 'Distribuzione progressiva di una nuova versione dell\'applicazione.';

  @override
  String get gameHintWord265Recreate => 'Strategia di deployment che ferma i vecchi pod prima di avviare i sostituti.';

  @override
  String get gameHintWord266Blue => 'Uno dei due ambienti in un rilascio blue-green.';

  @override
  String get gameHintWord267Green => 'L\'altro ambiente in un rilascio blue-green.';

  @override
  String get gameHintWord268Artifact => 'Output versionato prodotto da una pipeline di build.';

  @override
  String get gameHintWord269Staging => 'Ambiente di pre-produzione usato per la validazione del rilascio.';

  @override
  String get gameHintWord270Production => 'Ambiente che serve gli utenti finali reali.';

  @override
  String get gameHintWord271Release => 'Una versione del software consegnata per l\'uso.';

  @override
  String get gameHintWord272Version => 'Identificatore che distingue una revisione del software.';

  @override
  String get gameHintWord273Revision => 'Una versione identificabile di un documento o di una codebase.';

  @override
  String get gameHintWord274Webhook => 'Notifica HTTP inviata quando si verifica un evento.';

  @override
  String get gameHintWord275Runbook => 'Procedura documentata per gestire o ripristinare un sistema.';

  @override
  String get gameHintWord276Workspace => 'Directory o ambito che contiene le risorse di lavoro del progetto.';

  @override
  String get gameHintWord277Credentials => 'Materiale di autenticazione usato per accedere a un sistema.';

  @override
  String get gameHintWord278Trigger => 'Evento o condizione che avvia una pipeline.';

  @override
  String get gameHintWord279Parameter => 'Input con nome fornito a un job o a una funzione.';

  @override
  String get gameHintWord280Access => 'Possibilità di usare una risorsa, soggetta ad autorizzazione.';

  @override
  String get gameHintWord281Module => 'Gruppo riutilizzabile di definizioni di infrastruttura.';

  @override
  String get gameHintWord282Provider => 'Plugin Terraform che collega la configurazione a un\'API esterna.';

  @override
  String get gameHintWord283Resource => 'Oggetto di infrastruttura gestito dichiarato nella configurazione.';

  @override
  String get gameHintWord284Variable => 'Valore di input con nome usato da configurazione o codice.';

  @override
  String get gameHintWord285Output => 'Valore esposto restituito da una configurazione di infrastruttura.';

  @override
  String get gameHintWord286Tfstate => 'Suffisso di file associato agli snapshot di stato di Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Suffisso di file usato per i valori delle variabili di input di Terraform.';

  @override
  String get gameHintWord288Backend => 'Configurazione Terraform che controlla l\'archiviazione dello stato.';

  @override
  String get gameHintWord289Plan => 'Anteprima Terraform delle modifiche proposte all\'infrastruttura.';

  @override
  String get gameHintWord290Apply => 'Operazione Terraform che esegue le modifiche proposte.';

  @override
  String get gameHintWord291Destroy => 'Operazione Terraform che rimuove l\'infrastruttura gestita.';

  @override
  String get gameHintWord292Import => 'Porta una risorsa esistente sotto la gestione dell\'infrastruttura.';

  @override
  String get gameHintWord293Refresh => 'Sincronizza lo stato registrato con l\'infrastruttura effettiva.';

  @override
  String get gameHintWord294Validate => 'Controlla la sintassi e la coerenza interna della configurazione.';

  @override
  String get gameHintWord295Fmt => 'Comando Terraform che applica la formattazione canonica della configurazione.';

  @override
  String get gameHintWord296Init => 'Inizializza i provider Terraform e la directory di lavoro.';

  @override
  String get gameHintWord297Executor => 'Slot worker di Jenkins che può eseguire una build.';

  @override
  String get gameHintWord298Dependencies => 'Relazioni che richiedono un componente prima di un altro.';

  @override
  String get gameHintWord299Drift => 'Differenza tra lo stato dichiarato e quello effettivo dell\'infrastruttura.';

  @override
  String get gameHintWord300Locking => 'Impedisce a scrittori concorrenti di modificare lo stato condiviso.';

  @override
  String get gameHintWord301Playbook => 'Documento Ansible che descrive play e task di automazione.';

  @override
  String get gameHintWord302Inventory => 'Raccolta Ansible di host e gruppi gestiti.';

  @override
  String get gameHintWord303Facts => 'Informazioni di sistema raccolte sugli host gestiti.';

  @override
  String get gameHintWord304Task => 'Una singola unità di lavoro nell\'automazione.';

  @override
  String get gameHintWord305Handler => 'Task Ansible eseguito quando notificato da una modifica.';

  @override
  String get gameHintWord306Notify => 'Direttiva Ansible che mette in coda un handler dopo un task che ha apportato modifiche.';

  @override
  String get gameHintWord307Become => 'Impostazione Ansible che abilita l\'escalation dei privilegi.';

  @override
  String get gameHintWord308Vault => 'Funzionalità Ansible per cifrare dati di automazione sensibili.';

  @override
  String get gameHintWord309Register => 'Direttiva Ansible che salva il risultato di un task in una variabile.';

  @override
  String get gameHintWord310When => 'Parola chiave Ansible che controlla l\'esecuzione condizionale dei task.';

  @override
  String get gameHintWord311Loop => 'Ripete un task di automazione su una collezione.';

  @override
  String get gameHintWord312Include => 'Carica dinamicamente contenuti di automazione riutilizzabili.';

  @override
  String get gameHintWord313Tags => 'Etichette usate per selezionare sottoinsiemi di task di automazione.';

  @override
  String get gameHintWord314Template => 'File elaborato con variabili prima del deployment.';

  @override
  String get gameHintWord315Jinja => 'Linguaggio di template usato da Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Nascondere i dettagli di implementazione dietro un\'interfaccia più semplice.';

  @override
  String get gameHintWord317Agile => 'Approccio iterativo al rilascio del software che privilegia il feedback.';

  @override
  String get gameHintWord318Puppet => 'Strumento di gestione della configurazione basato su manifest dichiarativi.';

  @override
  String get gameHintWord319Airflow => 'Piattaforma per pianificare e orchestrare workflow DAG.';

  @override
  String get gameHintWord320Argo => 'Famiglia di progetti cloud-native che include un controller di delivery GitOps.';

  @override
  String get gameHintWord321Rds => 'Abbreviazione del servizio di database relazionale gestito di AWS.';

  @override
  String get gameHintWord322Sqs => 'Abbreviazione della coda di messaggi gestita di AWS.';

  @override
  String get gameHintWord323Sns => 'Abbreviazione del servizio di notifiche publish-subscribe di AWS.';

  @override
  String get gameHintWord324Ses => 'Abbreviazione del servizio di invio email di AWS.';

  @override
  String get gameHintWord325Iam => 'Abbreviazione di gestione di identità e accessi nel cloud.';

  @override
  String get gameHintWord326Kms => 'Abbreviazione del servizio di gestione delle chiavi di cifratura di AWS.';

  @override
  String get gameHintWord327Waf => 'Firewall che filtra le richieste web a livello applicativo.';

  @override
  String get gameHintWord328Eks => 'Abbreviazione del servizio Kubernetes gestito di AWS.';

  @override
  String get gameHintWord329Ecs => 'Abbreviazione del servizio di orchestrazione di container gestito di AWS.';

  @override
  String get gameHintWord330Ecr => 'Abbreviazione del registry di immagini di container di AWS.';

  @override
  String get gameHintWord331Aurora => 'Database relazionale AWS compatibile con MySQL e PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Data warehouse analitico di AWS.';

  @override
  String get gameHintWord333Neptune => 'Database a grafo gestito di AWS.';

  @override
  String get gameHintWord334Elasticache => 'Servizio di caching in memoria gestito di AWS.';

  @override
  String get gameHintWord335Athena => 'Servizio AWS che interroga con SQL i dati nell\'object storage.';

  @override
  String get gameHintWord336Glue => 'Servizio AWS serverless di integrazione dati ed ETL.';

  @override
  String get gameHintWord337Emr => 'Piattaforma AWS per cluster gestiti di elaborazione big data.';

  @override
  String get gameHintWord338Lambda => 'Servizio AWS che esegue funzioni senza gestire server.';

  @override
  String get gameHintWord339Cloudfront => 'Rete globale di distribuzione dei contenuti di AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Servizio AWS che raccoglie metriche, log e allarmi.';

  @override
  String get gameHintWord341Cloudshell => 'Ambiente shell di AWS basato su browser.';

  @override
  String get gameHintWord342Codecommit => 'Servizio di repository Git gestito di AWS.';

  @override
  String get gameHintWord343Codebuild => 'Servizio AWS che compila i sorgenti ed esegue i test di build.';

  @override
  String get gameHintWord344Codedeploy => 'Servizio AWS di deployment automatizzato delle applicazioni.';

  @override
  String get gameHintWord345Codepipeline => 'Servizio AWS di pipeline di continuous delivery.';

  @override
  String get gameHintWord346Guardduty => 'Servizio AWS di rilevamento intelligente delle minacce.';

  @override
  String get gameHintWord347Inspector => 'Servizio AWS che valuta le vulnerabilità dei carichi di lavoro.';

  @override
  String get gameHintWord348Macie => 'Servizio AWS che individua dati sensibili nell\'object storage.';

  @override
  String get gameHintWord349Shield => 'Servizio AWS gestito di protezione da DDoS.';

  @override
  String get gameHintWord350Snowball => 'Appliance fisica AWS per trasferimenti di grandi quantità di dati.';

  @override
  String get gameHintWord351Snowcone => 'Piccolo dispositivo robusto della famiglia di trasferimento offline di AWS.';

  @override
  String get gameHintWord352Datasync => 'Servizio AWS di trasferimento dati online automatizzato.';

  @override
  String get gameHintWord353Msk => 'Abbreviazione del servizio Apache Kafka gestito di AWS.';

  @override
  String get gameHintWord354Backup => 'Copia dei dati conservata per il ripristino.';

  @override
  String get gameHintWord355Transcribe => 'Servizio AWS che converte il parlato in testo.';

  @override
  String get gameHintWord356Translate => 'Servizio AWS che traduce testo tra lingue diverse.';

  @override
  String get gameHintWord357Rekognition => 'Servizio AWS che analizza immagini e video.';

  @override
  String get gameHintWord358Comprehend => 'Servizio AWS di analisi del linguaggio naturale.';

  @override
  String get gameHintWord359Textract => 'Servizio AWS che estrae testo e tabelle dai documenti.';

  @override
  String get gameHintWord360Sagemaker => 'Piattaforma AWS per creare e distribuire modelli di machine learning.';

  @override
  String get gameHintWord361Spanner => 'Database relazionale distribuito globalmente di Google Cloud.';

  @override
  String get gameHintWord362Pub => 'La metà di pubblicazione del pattern di messaggistica publish-subscribe.';

  @override
  String get gameHintWord363Sub => 'La metà di sottoscrizione del pattern di messaggistica publish-subscribe.';

  @override
  String get gameHintWord364Functions => 'Unità di codice guidate dagli eventi offerte dalle piattaforme serverless.';

  @override
  String get gameHintWord365App => 'Forma abbreviata di applicazione software.';

  @override
  String get gameHintWord366Engine => 'Componente di esecuzione in nomi come Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Capacità di elaborazione fornita da macchine virtuali o container.';

  @override
  String get gameHintWord368Network => 'Sistemi connessi che si scambiano dati.';

  @override
  String get gameHintWord369Security => 'Protezione di sistemi e informazioni dalle minacce.';

  @override
  String get gameHintWord370Identity => 'Rappresentazione di un utente o servizio usata per le decisioni di accesso.';

  @override
  String get gameHintWord371Monitoring => 'Osservazione continua dello stato e del comportamento del sistema.';

  @override
  String get gameHintWord372Logging => 'Registrazione di singoli eventi di applicazioni e sistema.';

  @override
  String get gameHintWord373Trace => 'Registro del percorso di una richiesta attraverso le chiamate tra servizi.';

  @override
  String get gameHintWord374Metrics => 'Misurazioni numeriche del comportamento del sistema nel tempo.';

  @override
  String get gameHintWord375Alert => 'Notifica che una condizione monitorata richiede attenzione.';

  @override
  String get gameHintWord376Billing => 'Monitoraggio e fatturazione dei servizi cloud consumati.';

  @override
  String get gameHintWord377Quota => 'Limite alla quantità di una risorsa che può essere consumata.';

  @override
  String get gameHintWord378Region => 'Area geografica di deployment cloud che contiene zone di disponibilità.';

  @override
  String get gameHintWord379Tenancy => 'Modello che descrive come i clienti condividono l\'infrastruttura.';

  @override
  String get gameHintWord380Regional => 'Descrive una risorsa con ambito limitato a una regione cloud.';

  @override
  String get gameHintWord381Cosmos => 'Nome del database multi-modello distribuito globalmente di Azure.';

  @override
  String get gameHintWord382Synapse => 'Piattaforma analitica Azure che combina data warehousing ed elaborazione dati.';

  @override
  String get gameHintWord383Sentinel => 'Piattaforma cloud-native Microsoft per la gestione di informazioni ed eventi di sicurezza.';

  @override
  String get gameHintWord384Defender => 'Famiglia di prodotti di sicurezza Microsoft che protegge i carichi di lavoro cloud.';

  @override
  String get gameHintWord385Entra => 'Famiglia di prodotti di identità Microsoft che sostituisce il marchio Azure AD.';

  @override
  String get gameHintWord386Arm => 'Abbreviazione di Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Servizio Azure che estende la gestione a risorse esterne ad Azure.';

  @override
  String get gameHintWord388Aks => 'Abbreviazione del servizio Kubernetes gestito di Azure.';

  @override
  String get gameHintWord389Armor => 'Suffisso del nome del servizio di protezione web di Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Tipo di dati di object storage di Azure.';

  @override
  String get gameHintWord391Files => 'Servizio Azure che offre condivisioni file di rete gestite.';

  @override
  String get gameHintWord392Disk => 'Dispositivo di block storage collegato a una macchina virtuale.';

  @override
  String get gameHintWord393Function => 'Blocco di codice richiamabile che può restituire un risultato.';

  @override
  String get gameHintWord394Logic => 'Categoria di servizi app di Azure per l\'integrazione dei workflow.';

  @override
  String get gameHintWord395Insights => 'Suffisso del nome del prodotto di telemetria applicativa di Azure.';

  @override
  String get gameHintWord396Traffic => 'Dati che fluiscono tra endpoint di rete.';

  @override
  String get gameHintWord397Manager => 'Suffisso del nome del prodotto Azure Resource per il suo control plane.';

  @override
  String get gameHintWord398Bastion => 'Punto di ingresso gestito o rafforzato per l\'accesso agli host privati.';

  @override
  String get gameHintWord399Front => 'Prima parola del servizio di punto di ingresso globale di Azure Front Door.';

  @override
  String get gameHintWord400Door => 'Seconda parola del servizio di punto di ingresso globale di Azure Front Door.';

  @override
  String get gameHintWord401Javascript => 'Linguaggio di programmazione molto usato nei browser e nei runtime Node.';

  @override
  String get gameHintWord402Perl => 'Linguaggio di scripting noto per l\'elaborazione di testo e le espressioni regolari.';

  @override
  String get gameHintWord403Powershell => 'Shell orientata agli oggetti e linguaggio di automazione di Microsoft.';

  @override
  String get gameHintWord404Java => 'Linguaggio JVM usato per implementare Jenkins.';

  @override
  String get gameHintWord405Json => 'Formato di dati leggero con oggetti e array.';

  @override
  String get gameHintWord406Xml => 'Formato di markup che usa tag nidificati con nome.';

  @override
  String get gameHintWord407Html => 'Linguaggio di markup usato per strutturare le pagine web.';

  @override
  String get gameHintWord408Css => 'Linguaggio di fogli di stile che controlla la presentazione web.';

  @override
  String get gameHintWord409String => 'Sequenza di caratteri di testo.';

  @override
  String get gameHintWord410Array => 'Collezione indicizzata di elementi.';

  @override
  String get gameHintWord411Hash => 'Collezione associativa chiave-valore in Ruby e Perl.';

  @override
  String get gameHintWord412Object => 'Valore a runtime con proprietà e comportamento.';

  @override
  String get gameHintWord413Class => 'Definizione usata per costruire oggetti nei linguaggi basati su classi.';

  @override
  String get gameHintWord414Method => 'Funzione associata a un oggetto o a una classe.';

  @override
  String get gameHintWord415Interface => 'Contratto che descrive le operazioni esposte da un componente.';

  @override
  String get gameHintWord416Subclass => 'Classe derivata da un\'altra classe.';

  @override
  String get gameHintWord417Super => 'Parola chiave usata per invocare il comportamento della classe padre.';

  @override
  String get gameHintWord418Protected => 'Livello di visibilità che limita l\'accesso ai contesti legati alla classe.';

  @override
  String get gameHintWord419Exception => 'Condizione a runtime che interrompe il normale flusso di controllo.';

  @override
  String get gameHintWord420Regex => 'Notazione di pattern usata per la corrispondenza del testo.';

  @override
  String get gameHintWord421Lexical => 'Descrive uno scope determinato dalla struttura del codice sorgente.';

  @override
  String get gameHintWord422Scalar => 'Categoria di variabile a valore singolo in Perl.';

  @override
  String get gameHintWord423Tuple => 'Collezione ordinata immutabile in Python.';

  @override
  String get gameHintWord424List => 'Collezione ordinata mutabile in Python.';

  @override
  String get gameHintWord425Dict => 'Nome del tipo di mapping integrato di Python.';

  @override
  String get gameHintWord426Dictionary => 'Collezione che associa chiavi a valori.';

  @override
  String get gameHintWord427Set => 'Collezione di valori distinti.';

  @override
  String get gameHintWord428Boolean => 'Tipo di dato che rappresenta vero o falso.';

  @override
  String get gameHintWord429Integer => 'Tipo numerico che rappresenta numeri interi.';

  @override
  String get gameHintWord430Float => 'Tipo numerico che rappresenta valori in virgola mobile.';

  @override
  String get gameHintWord431Double => 'Tipo in virgola mobile a doppia precisione.';

  @override
  String get gameHintWord432Null => 'Valore che rappresenta l\'assenza di un oggetto o di un risultato.';

  @override
  String get gameHintWord433Undefined => 'Valore JavaScript per un valore assegnato mancante.';

  @override
  String get gameHintWord434Promise => 'Oggetto JavaScript che rappresenta un eventuale risultato asincrono.';

  @override
  String get gameHintWord435Async => 'Parola chiave che contrassegna una funzione asincrona.';

  @override
  String get gameHintWord436Await => 'Parola chiave che attende un risultato asincrono.';

  @override
  String get gameHintWord437Callback => 'Funzione passata per essere invocata da un\'altra operazione.';

  @override
  String get gameHintWord438Closure => 'Funzione che mantiene l\'accesso al proprio scope lessicale circostante.';

  @override
  String get gameHintWord439Generator => 'Funzione che produce una sequenza in modo lazy tramite valori ceduti.';

  @override
  String get gameHintWord440Iterator => 'Oggetto che avanza attraverso i valori di una collezione.';

  @override
  String get gameHintWord441Print => 'Funzione comune che scrive un valore sull\'output.';

  @override
  String get gameHintWord442Input => 'Funzione Python che legge una riga dallo standard input.';

  @override
  String get gameHintWord443Open => 'Funzione usata per ottenere un handle di file.';

  @override
  String get gameHintWord444Close => 'Operazione che rilascia un file o una connessione aperti.';

  @override
  String get gameHintWord445Read => 'Operazione che ottiene dati da uno stream o da un file.';

  @override
  String get gameHintWord446Write => 'Operazione che invia dati a uno stream o a un file.';

  @override
  String get gameHintWord447Append => 'Aggiunge un elemento alla fine di una collezione.';

  @override
  String get gameHintWord448Split => 'Divide il testo in sottostringhe usando un delimitatore.';

  @override
  String get gameHintWord449Join => 'Combina una sequenza di stringhe usando un separatore.';

  @override
  String get gameHintWord450Strip => 'Rimuove gli spazi bianchi circostanti da una stringa Python.';

  @override
  String get gameHintWord451Chomp => 'Rimuove il separatore di record finale in Perl o Ruby.';

  @override
  String get gameHintWord452Map => 'Applica una trasformazione a ogni elemento di una collezione.';

  @override
  String get gameHintWord453Filter => 'Mantiene gli elementi della collezione che soddisfano un predicato.';

  @override
  String get gameHintWord454Reduce => 'Combina una collezione in un risultato accumulato.';

  @override
  String get gameHintWord455Range => 'Tipo Python che rappresenta una sequenza aritmetica di interi.';

  @override
  String get gameHintWord456Length => 'Proprietà o metodo che restituisce la dimensione di una collezione.';

  @override
  String get gameHintWord457Len => 'Funzione integrata di Python che restituisce la dimensione di una collezione.';

  @override
  String get gameHintWord458Type => 'Funzione Python che restituisce il tipo di un oggetto.';

  @override
  String get gameHintWord459Isinstance => 'Funzione Python che verifica l\'appartenenza a una gerarchia di tipi.';

  @override
  String get gameHintWord460Yield => 'Parola chiave che produce un valore da un generatore.';

  @override
  String get gameHintWord461Saas => 'Modello cloud che eroga applicazioni software complete.';

  @override
  String get gameHintWord462Paas => 'Modello cloud che fornisce una piattaforma gestita per lo sviluppo di applicazioni.';

  @override
  String get gameHintWord463Iaas => 'Modello cloud che fornisce calcolo, storage e rete virtuali.';

  @override
  String get gameHintWord464Hybrid => 'Approccio cloud che combina infrastruttura privata e pubblica.';

  @override
  String get gameHintWord465Archive => 'Archiviazione a lungo termine di dati a cui si accede raramente.';

  @override
  String get gameHintWord466Public => 'Modello di proprietà cloud che offre servizi a più clienti.';

  @override
  String get gameHintWord467Private => 'Modello cloud dedicato a una singola organizzazione.';

  @override
  String get gameHintWord468Scalability => 'Capacità di gestire un carico crescente aggiungendo risorse.';

  @override
  String get gameHintWord469Availability => 'Grado in cui un servizio rimane accessibile quando serve.';

  @override
  String get gameHintWord470Resilience => 'Capacità di resistere ai guasti e riprendersi da essi.';

  @override
  String get gameHintWord471Redundancy => 'Componenti duplicati che riducono i single point of failure.';

  @override
  String get gameHintWord472Disaster => 'Grave interruzione affrontata con una strategia di ripristino.';

  @override
  String get gameHintWord473Recovery => 'Ripristino di servizio o dati dopo un guasto.';

  @override
  String get gameHintWord474Replicate => 'Copia dati o carichi di lavoro in un\'altra posizione.';

  @override
  String get gameHintWord475Snapshotting => 'Creazione di copie puntuali di dati o dello stato del sistema.';

  @override
  String get gameHintWord476Restore => 'Operazione che recupera i dati da una copia salvata.';

  @override
  String get gameHintWord477Residency => 'Requisito che definisce la posizione geografica dei dati archiviati.';

  @override
  String get gameHintWord478Compliance => 'Rispetto di normative e controlli organizzativi richiesti.';

  @override
  String get gameHintWord479Governance => 'Politiche e processi che controllano l\'uso della tecnologia.';

  @override
  String get gameHintWord480Audit => 'Revisione delle attività registrate e delle prove di conformità.';

  @override
  String get gameHintWord481Token => 'Credenziale o simbolo che rappresenta autorizzazione o identità.';

  @override
  String get gameHintWord482Oauth => 'Framework di autorizzazione che consente l\'accesso delegato.';

  @override
  String get gameHintWord483Saml => 'Standard basato su XML comunemente usato per il single sign-on aziendale.';

  @override
  String get gameHintWord484Cmdlet => 'Comando specializzato usato nelle pipeline di PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Sequenza definita di passaggi per risolvere un problema computazionale.';

  @override
  String get gameHintWord486Key => 'Valore usato per controllare la cifratura o identificare dati archiviati.';

  @override
  String get gameHintWord487Alias => 'Nome alternativo per un comando di shell o una risorsa.';

  @override
  String get gameHintWord488Amend => 'Opzione di commit Git che sostituisce il commit più recente.';

  @override
  String get gameHintWord489Allsigned => 'Criterio di esecuzione di PowerShell che richiede script firmati.';

  @override
  String get gameHintWord490Remotesigned => 'Criterio di PowerShell che richiede firme sugli script scaricati.';

  @override
  String get gameHintWord491Acl => 'Elenco che definisce i permessi per utenti o sistemi.';

  @override
  String get gameHintWord492Uid => 'Identificatore numerico assegnato a un utente Unix.';

  @override
  String get gameHintWord493Setgid => 'Bit di permesso che influisce sull\'identità di gruppo durante l\'esecuzione o l\'ereditarietà.';

  @override
  String get gameHintWord494Setfacl => 'Comando Linux che imposta le liste di controllo degli accessi dei file.';

  @override
  String get gameHintWord495Isolation => 'Separazione che impedisce ai carichi di lavoro di interferire tra loro.';

  @override
  String get gameHintWord496Sighup => 'Segnale Unix di hangup spesso usato per richiedere il ricaricamento della configurazione.';

  @override
  String get gameHintWord497Sigint => 'Segnale Unix di interruzione comunemente generato con Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Segnale Unix che mette in pausa un processo senza terminarlo.';

  @override
  String get gameHintWord499Secrets => 'Valori sensibili come password e chiavi di accesso.';

  @override
  String get gameHintWord500Secure => 'Descrive una connessione protetta da accessi non autorizzati.';

  @override
  String get fontSettingsTitle => 'Carattere';

  @override
  String get fontChangeFont => 'Cambia carattere';

  @override
  String get fontSystemDefault => 'Predefinito di sistema';

  @override
  String get fontPreview => 'Anteprima';

  @override
  String get fontPreviewSample => 'Impara DevOps una domanda alla volta';

  @override
  String get fontSelected => 'Selezionato';

  @override
  String get fontLatinOnlyNote => 'I caratteri personalizzati si applicano alle lettere latine. Gli altri sistemi di scrittura mantengono il carattere del dispositivo.';

  @override
  String get fontDescSystem => 'Il carattere integrato del dispositivo';

  @override
  String get fontDescGeometric => 'Sans serif geometrico';

  @override
  String get fontDescGeometricRounded => 'Sans serif geometrico arrotondato';

  @override
  String get fontDescFriendly => 'Sans serif amichevole';

  @override
  String get fontDescCondensed => 'Condensato';

  @override
  String get fontDescRounded => 'Sans serif arrotondato';

  @override
  String get fontDescRoundedDisplay => 'Display arrotondato';

  @override
  String gameScene3dScene(String value1) {
    return 'Scena 3D $value1';
  }
}
