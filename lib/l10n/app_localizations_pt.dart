// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get certificates => 'Certificados';

  @override
  String get whatsNew => 'Novidades';

  @override
  String get settings => 'Configurações';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get english => 'Inglês';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marata';

  @override
  String get startQuiz => 'Iniciar quiz';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Mudar categoria';

  @override
  String get dailyQuiz => 'Quiz diário';

  @override
  String get dailyQuizCompleted => 'Quiz diário concluído';

  @override
  String get dailyQuizCompletedMessage =>
      'Você já concluiu o quiz diário de hoje.\n\nVolte amanhã para um novo desafio!';

  @override
  String get leaderboard => 'Classificação';

  @override
  String get shareApp => 'Compartilhar app';

  @override
  String get rateApp => 'Avaliar app';

  @override
  String get about => 'Sobre';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Início';

  @override
  String get games => 'Jogos';

  @override
  String get referAndEarn => 'Indique e ganhe';

  @override
  String get themes => 'Temas';

  @override
  String get version => 'Versão';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get contact => 'Contato';

  @override
  String get learning => 'Aprendizado';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Conecte-se comigo';

  @override
  String get aboutDescription =>
      'O DevOps Quiz ajuda os estudantes a se prepararem para entrevistas e certificações com milhares de perguntas cuidadosamente selecionadas sobre Linux, Docker, Kubernetes, redes, Git, Jenkins, Terraform, Ansible e outras tecnologias DevOps.';

  @override
  String get quizResult => 'Resultado do quiz';

  @override
  String get outstanding => 'Excelente!';

  @override
  String get greatJob => 'Ótimo trabalho!';

  @override
  String get goodEffort => 'Bom esforço!';

  @override
  String get keepPracticing => 'Continue praticando!';

  @override
  String get dontGiveUp => 'Não desista!';

  @override
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

  @override
  String get score => 'Pontuação';

  @override
  String get points => 'Pontos';

  @override
  String get percentage => 'Porcentagem';

  @override
  String get bonus => 'Bônus';

  @override
  String get perfectScoreBonus => 'Bônus de pontuação perfeita';

  @override
  String get shareScore => 'Compartilhar pontuação';

  @override
  String get restartQuiz => 'Reiniciar quiz';

  @override
  String get backToCategories => 'Voltar às categorias';

  @override
  String get greatProgress => 'Muito bem! Você está progredindo bastante.';

  @override
  String get practiceMore =>
      'Bom trabalho! Com um pouco mais de prática você pontuará ainda mais.';

  @override
  String get keepLearning =>
      'Continue aprendendo e tente novamente. Você vai melhorar com a prática.';

  @override
  String get everyExpertStarted =>
      'Todo especialista começou como iniciante. Pratique e volte mais forte!';

  @override
  String get quizInstructions => 'Instruções do quiz';

  @override
  String get instruction1 => 'Cada set contém 25 perguntas.';

  @override
  String get instruction2 => 'Você tem 15 segundos por pergunta.';

  @override
  String get instruction3 => 'Verde = resposta correta.';

  @override
  String get instruction4 => 'Vermelho = resposta incorreta.';

  @override
  String get instruction5 => 'A resposta não pode ser alterada.';

  @override
  String get instruction6 => 'O botão Voltar serve apenas para revisão.';

  @override
  String get instruction7 => 'A pontuação é exibida ao final.';

  @override
  String excellentPerformance(Object expert) {
    return 'Desempenho excelente! Você é um $expert.';
  }

  @override
  String get selectCategory => 'Selecionar categoria';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Selecionar set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Perguntas';

  @override
  String get noScoresYet => 'Ainda sem pontuações';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Bem-vindo ao DevOps Quiz';

  @override
  String get challengeMode => 'Modo desafio';

  @override
  String get challenge => 'Desafio';

  @override
  String get question => 'Pergunta';

  @override
  String get reward => 'Recompensa';

  @override
  String get survivalMode => 'Modo sobrevivência';

  @override
  String get speedChallenge => 'Desafio de velocidade';

  @override
  String get dailyChallenge => 'Desafio diário';

  @override
  String get ultimateChallenge => 'Desafio supremo';

  @override
  String get timeLeft => 'Tempo restante';

  @override
  String get completed => 'Concluído';

  @override
  String get locked => 'Bloqueado';

  @override
  String get back => 'Voltar';

  @override
  String get next => 'Próximo';

  @override
  String get submit => 'Enviar';

  @override
  String get achievements => 'Conquistas';

  @override
  String get streak => 'Sequência';

  @override
  String get days => 'Dias';

  @override
  String get tomorrowsReward => 'Recompensa de amanhã';

  @override
  String shareMessage(
    Object score,
    Object totalQuestions,
    Object earnedPoints,
    Object bonusPoints,
    Object percentage,
  ) {
    return '🎯 Fiz $score/$totalQuestions no quiz #DevOps de hoje!\n\n🏆 Pontos: $earnedPoints\n🔥 Bônus: $bonusPoints\n📊 Porcentagem: $percentage%\n\nVocê consegue superar minha pontuação?\n\nBaixe o app:';
  }
}
