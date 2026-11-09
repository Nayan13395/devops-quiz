// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

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
  String get instruction2 => 'Hai 15 secondi per ogni domanda.';

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
}
