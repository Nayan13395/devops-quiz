// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTour => 'Tour do app';

  @override
  String get skipTour => 'Pular tour';

  @override
  String get finishTour => 'Concluir tour';

  @override
  String tourStep(int current, int total) {
    return 'Etapa $current de $total';
  }

  @override
  String get tourMenuTitle => 'Menu de navegação';

  @override
  String get tourSearch => 'Digite um assunto aqui para encontrar categorias de quiz.';

  @override
  String get tourCategory => 'Toque em DevOps para um quiz misto. Outras categorias oferecem conjuntos de perguntas. Salve perguntas para revisar depois.';

  @override
  String get tourMenu => 'Toque neste botão para abrir o menu de navegação.';

  @override
  String get tourLearning => 'Abra Aprendizado para ver cartões. Deslize em qualquer direção, embaralhe, ative a troca automática ou salve um cartão.';

  @override
  String get tourGames => 'Jogue para ganhar pontos. Jogos com níveis dão 100 pontos por nível concluído; dicas custam 20 pontos.';

  @override
  String get tourAchievements => 'Veja suas conquistas aqui. Popups anunciam novas conquistas e temas disponíveis.';

  @override
  String get tourSettings => 'Escolha idioma, tema e som. Abra Dados salvos para ver favoritos ou Tour do app para repetir este guia.';

  @override
  String get achievementUnlocked => 'Conquista desbloqueada!';

  @override
  String get themeUnlocked => 'Novo tema disponível!';

  @override
  String get themeUnlockedMessage => 'Agora você pode escolher este tema em Configurações > Temas.';

  @override
  String get gameSounds => 'Sons do jogo';

  @override
  String get gameSoundsDescription => 'Efeitos para jogos e quizzes. Verifique o volume e o modo silencioso do dispositivo.';

  @override
  String get testSound => 'Testar som';

  @override
  String get soundSettingBusy => 'Aguarde...';

  @override
  String get soundSettingError => 'Não foi possível carregar ou salvar a configuração de som. Tente novamente.';

  @override
  String get soundPlaybackError => 'Não foi possível reproduzir o som. Verifique as configurações de áudio do dispositivo ou navegador.';

  @override
  String get saveData => 'Dados salvos';

  @override
  String get learningTranslationUnavailable => 'Este cartão ainda não foi traduzido para o idioma selecionado.';

  @override
  String get saveQuestion => 'Salvar pergunta';

  @override
  String defaultPortQuestion(String service) {
    return 'Qual é a porta padrão de $service?';
  }

  @override
  String get removeSavedItem => 'Remover dos salvos';

  @override
  String get noSavedData => 'Nada salvo ainda. Marque cartões de aprendizagem ou perguntas de um quiz como favoritos.';

  @override
  String get savedDataError => 'Não foi possível carregar ou atualizar os dados salvos. Tente novamente.';

  @override
  String get savedItemUnavailable => 'Este item salvo não está mais disponível.';

  @override
  String get correctAnswer => 'Resposta correta';

  @override
  String get retry => 'Tentar novamente';

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
  String get dailyQuizCompletedMessage => 'Você já concluiu o quiz diário de hoje.\n\nVolte amanhã para um novo desafio!';

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
  String get aboutDescription => 'O DevOps Quiz ajuda os estudantes a se prepararem para entrevistas e certificações com milhares de perguntas cuidadosamente selecionadas sobre Linux, Docker, Kubernetes, redes, Git, Jenkins, Terraform, Ansible e outras tecnologias DevOps.';

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
  String get shareMessage1 => 'Eu fiz';

  @override
  String get shareMessage2 => 'no Quiz DevOps!';

  @override
  String get downloadApp => 'Baixe o aplicativo:';

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
  String get practiceMore => 'Bom trabalho! Com um pouco mais de prática você pontuará ainda mais.';

  @override
  String get keepLearning => 'Continue aprendendo e tente novamente. Você vai melhorar com a prática.';

  @override
  String get everyExpertStarted => 'Todo especialista começou como iniciante. Pratique e volte mais forte!';

  @override
  String get quizInstructions => 'Instruções do quiz';

  @override
  String get instruction1 => 'Cada set contém 25 perguntas.';

  @override
  String get instruction2 => 'Você tem 30 segundos por pergunta.';

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
  String get instruction8 => 'Cada resposta correta vale 10 pontos.';

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
  String hiUser(String name) {
    return 'Olá $name';
  }

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
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Fiz $score/$totalQuestions no quiz #DevOps de hoje!\n\n🏆 Pontos: $earnedPoints\n🔥 Bônus: $bonusPoints\n📊 Porcentagem: $percentage%\n\nVocê consegue superar minha pontuação?\n\nBaixe o app:';
  }

  @override
  String get gameUiSpinWheel => 'Girar Roda';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Gire e ganhe pontos de bônus';

  @override
  String get gameUiScratchCard => 'Raspadinha';

  @override
  String get gameUiScratchToRevealAReward => 'Raspe para revelar uma recompensa';

  @override
  String get gameUiLuckySlots => 'Caça-níqueis da Sorte';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Gire os rolos e ganhe pontos';

  @override
  String get gameUiMysteryDeal => 'Oferta Misteriosa';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Escolha uma caixa misteriosa e responda';

  @override
  String get gameUiMemoryMatch => 'Jogo da Memória';

  @override
  String get gameUiMatchDevOpsPairs => 'Combine pares de DevOps';

  @override
  String get gameUiWordGuess => 'Adivinhe a Palavra';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Adivinhe palavras de DevOps ao longo dos níveis';

  @override
  String get gameUiFindWords => 'Encontre Palavras';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Procure em uma grade por termos de DevOps escondidos';

  @override
  String get gameUiSpotTheDifference => 'Encontre as Diferenças';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Encontre cinco mudanças entre duas cenas ilustradas';

  @override
  String get gameUiJigsawPuzzle => 'Quebra-cabeça';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Remonte imagens HD compartilhadas de animais e natureza';

  @override
  String get gameUiHighOrLow => 'Maior ou Menor';

  @override
  String get gameUiBuildAStreak => 'Construa uma sequência';

  @override
  String get gameUiTrueOrFalseBlitz => 'Blitz de Verdadeiro ou Falso';

  @override
  String get gameUiQuickAnswerQuiz => 'Quiz de resposta rápida';

  @override
  String get gameUiCommandMatch => 'Combinar Comandos';

  @override
  String get gameUiMatchCommandsToMeanings => 'Combine comandos com seus significados';

  @override
  String get gameUiPortMaster => 'Mestre das Portas';

  @override
  String get gameUiGuessDefaultPorts => 'Adivinhe as portas padrão';

  @override
  String get gameUiTicTacToe => 'Jogo da Velha';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X jogo da velha contra o computador';

  @override
  String get gameUiConnectFour => 'Ligue Quatro';

  @override
  String get gameUiDropFourDiscs => 'Solte quatro discos';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Corra contra bots';

  @override
  String get gameUiChess => 'Xadrez';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Tabuleiro de xadrez com movimentos legais para dois jogadores';

  @override
  String get gameUiSnakeAndLadders => 'Cobras e Escadas';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Jogo de tabuleiro com dados, cobras e escadas para dois jogadores';

  @override
  String get gameUiGames => 'Jogos 🎮';

  @override
  String get gameUiPlayEarn => 'Jogue e Ganhe';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Jogue e ganhe pontos de bônus!';

  @override
  String get gameUiSearchGames => 'Pesquisar jogos';

  @override
  String get gameUiClearSearch => 'Limpar pesquisa';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Nenhum jogo corresponde a \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Gire e ganhe pontos de bônus.';

  @override
  String get gameUiScratchToRevealYourReward => 'Raspe para revelar sua recompensa.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Gire os rolos e ganhe pontos.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Escolha uma caixa misteriosa e responda corretamente para ganhar pontos.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Combine pares de DevOps para ganhar pontos.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Adivinhe o termo de DevOps em 6 tentativas.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Procure em uma grade por termos de DevOps escondidos.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Deslize para encontrar palavras de DevOps em 500 níveis.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Encontre cinco mudanças entre duas cenas ilustradas.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Remonte imagens HD compartilhadas de animais e natureza.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Construa uma sequência e garanta seus pontos.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Vença o relógio com respostas rápidas.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Blitz de Verdadeiro ou Falso 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Combine comandos com o que eles fazem.';

  @override
  String get gameUiCommandMatch670a76e => 'Combinar Comandos 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Adivinhe as portas padrão com 3 vidas.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Mestre das Portas 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Jogue O/X contra o computador.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Solte quatro discos em linha para vencer.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Corra com suas peças contra três bots.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Xadrez local para dois jogadores com movimentos legais.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Jogue uma partida de xadrez legal para dois jogadores.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Jogo de tabuleiro com dados para dois jogadores.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Corrida até 100. Suba escadas e desvie das cobras.';

  @override
  String get gameUiPlay => 'Jogar';

  @override
  String get gameUiWheelStopped => 'A roda parou!';

  @override
  String get gameUiYourRewardIs => 'Sua recompensa é';

  @override
  String get gameUiPOINTS => 'PONTOS';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Responda corretamente a 1 pergunta do quiz para resgatar esta recompensa.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Resposta errada = recompensa perdida.';

  @override
  String get gameUiAnswerQuestion => 'Responder Pergunta';

  @override
  String get gameUiSpinWheele449982 => '🎡 Girar Roda';

  @override
  String get gameUiDailySpin => 'Giro Diário';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Gire a roda e depois responda a uma pergunta para resgatar sua recompensa!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Você já usou o giro de hoje.';

  @override
  String get gameUiSpinning => 'Girando...';

  @override
  String get gameUiSPINNOW => 'GIRAR AGORA';

  @override
  String get gameUiCOMEBACKTOMORROW => 'VOLTE AMANHÃ';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Recompensa de hoje: ⭐ $value1 pontos';
  }

  @override
  String get gameUiBackToGames => 'Voltar aos Jogos';

  @override
  String get gameUiSPIN => 'GIRAR';

  @override
  String get gameUiRewardRevealed => 'Recompensa Revelada!';

  @override
  String get gameUiYouFound => 'Você encontrou';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Raspadinha';

  @override
  String get gameUiDailyScratch => 'Raspadinha Diária';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Raspe o cartão para revelar a recompensa de hoje!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Você já usou a raspadinha de hoje.';

  @override
  String get gameUiAlreadyScratched => 'Já Raspado';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Volte amanhã para outra recompensa.';

  @override
  String get gameUiYouRevealed => 'Você revelou';

  @override
  String get gameUiSCRATCHHERE => 'RASPE AQUI  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => '777 da Sorte!';

  @override
  String get gameUiYourReward => 'Sua recompensa';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Caça-níqueis da Sorte';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Gire os rolos e depois responda a uma pergunta para resgatar a recompensa!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Você já jogou hoje.';

  @override
  String get gameUiSPINNING => 'GIRANDO...';

  @override
  String get gameUiROLLNOW => 'JOGAR AGORA';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 pontos disponíveis!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Não foi possível verificar o estado do Negócio Misterioso: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Caixa $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 PONTOS';
  }

  @override
  String get gameUiStartQuestion => 'Iniciar pergunta';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Negócio Misterioso';

  @override
  String get gameUiMysteryDealCompleted => 'Negócio Misterioso concluído!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Você já jogou o Negócio Misterioso hoje.';

  @override
  String get gameUiTodayYouWon => 'Hoje você ganhou';

  @override
  String get gameUiTodaySReward => 'Recompensa de hoje';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 PONTOS';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 PONTOS PERDIDOS';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Volte amanhã para outra caixa misteriosa!';

  @override
  String get gameUiChooseYourMysteryBox => 'Escolha a sua caixa misteriosa';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Cada caixa contém uma recompensa oculta entre 10 e 1000 pontos.';

  @override
  String get gameUiPickOnlyOneBox => 'Escolha apenas uma caixa!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Todos os $value1 níveis concluídos!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Nível $value1 concluído!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Concluído em $value1 movimentos.\nVocê ganhou $value2 pontos!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Concluído em $value1 movimentos.\nEste nível já havia sido concluído.';
  }

  @override
  String get gameUiNextLevel => 'Próximo nível';

  @override
  String get gameUiDone => 'Concluído';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Jogo da Memória 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Todos os 100 níveis concluídos!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Você concluiu todos os níveis do Jogo da Memória. Muito bem!';

  @override
  String get gameUiChooseLevel => 'Escolher nível';

  @override
  String gameUiMoves(String value1) {
    return 'Movimentos: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Nível $value1 de $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 pares';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Memorize o nível $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Encontre $value1 pares correspondentes';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Logótipo do DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Capítulo 1 · Restaurar o pipeline de build';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Capítulo 2 · Escalar a plataforma de nuvem';

  @override
  String get gameUiChapter3ProtectProduction => 'Capítulo 3 · Proteger a produção';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Use todas as $value1 letras restantes para enviar.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Todos os níveis concluídos!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Nível $value1 concluído!';
  }

  @override
  String get gameUiTryAgain => 'Tentar novamente';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'A palavra era $value1. Você ganhou $value2 pontos.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'A palavra era $value1. Você ganhou $value2 pontos após $value3 dica.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'A palavra era $value1. Você ganhou $value2 pontos após $value3 dicas.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'A palavra era $value1. O nível $value2 ainda está à sua espera.';
  }

  @override
  String get gameUiFinish => 'Terminar';

  @override
  String get gameUiNextLevel254fd73 => 'Próximo nível';

  @override
  String get gameUiRetryLevel => 'Repetir nível';

  @override
  String get gameUiHowToPlay => 'Como jogar';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Cada nível tem uma palavra de DevOps. Palavras com menos de cinco letras começam sem letras gratuitas; palavras mais longas começam com uma. Use o conjunto de letras para formar a resposta e pressione Enter. As dicas revelam outra letra e custam 20 pontos do seu saldo. Cada nível concluído vale 100 pontos.';

  @override
  String get gameUiGotIt => 'Entendi';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Todos os $value1 níveis concluídos!';
  }

  @override
  String get gameUiEasy => 'Fácil';

  @override
  String get gameUiMedium => 'Médio';

  @override
  String get gameUiHard => 'Difícil';

  @override
  String get gameUiHowToPlay13a6b22 => 'Como jogar';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Nível $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Recompensa $value1 pts · dicas usadas $value2';
  }

  @override
  String get gameUiHint20Pts => 'Dica · −20 pts';

  @override
  String get gameUiEnter => 'Enter';

  @override
  String get gameUiDelete => 'Apagar';

  @override
  String get gameUiDragThroughAWord => 'Arraste sobre uma palavra';

  @override
  String get gameUiDragThroughEachWord => 'Arraste sobre cada palavra';

  @override
  String get gameUiReleaseToSelect => 'Solte para selecionar';

  @override
  String gameUiFound(String value1) {
    return 'Encontrado $value1';
  }

  @override
  String get gameUiNoWordThere => 'Nenhuma palavra aqui';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 já encontrado';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Procure $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Todos os níveis concluídos!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Você encontrou todas as palavras e ganhou $value1 pontos.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Você encontrou todas as palavras. Este nível já havia sido concluído.';

  @override
  String get gameUiAll500LevelsComplete => 'Todos os 500 níveis concluídos!';

  @override
  String get gameUiReviewLevels => 'Rever níveis';

  @override
  String gameUiLeft(String value1) {
    return '$value1 restantes';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 pts';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Não foi possível guardar o progresso. Tente novamente.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Você ganhou $value1 pontos!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Você já concluiu esta imagem. Sem pontos adicionais ao repetir.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Você concluiu todas as imagens!';

  @override
  String get gameUiLevels => 'Níveis';

  @override
  String get gameUiPictureB => 'Imagem B';

  @override
  String get gameUiPictureA => 'Imagem A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Não foi possível carregar a imagem. Tentar novamente';

  @override
  String get gameUiResetZoom => 'Repor zoom';

  @override
  String get gameUiZoomBothPictures => 'Ampliar ambas as imagens';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Dica · $value1 pontos por dica';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Não foi possível carregar o progresso. Tentar novamente';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Nível $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Todas as diferenças encontradas!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Encontre $count diferenças. Toque em cada uma em qualquer uma das imagens.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Erros: $value1  ·  Dicas: $value2 (−$value3 pts)  ·  $value4 níveis concluídos';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Próximo nível: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Puzzle $value1 concluído!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Imagem concluída em $value1 movimentos. Você ganhou $value2 pontos.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Imagem concluída em $value1 movimentos.';
  }

  @override
  String get gameUiNextPuzzle => 'Próximo puzzle';

  @override
  String get gameUiAllPuzzlesComplete => 'Todos os puzzles concluídos';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Peça de puzzle $value1 de $value2, colocada corretamente';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Peça de puzzle $value1 de $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Escolher puzzle';

  @override
  String get gameUiShufflePieces => 'Embaralhar peças';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Não foi possível carregar a imagem do quebra-cabeça.';

  @override
  String get gameUiPreviousPuzzle => 'Quebra-cabeça anterior';

  @override
  String gameUiPuzzle(String value1) {
    return 'Quebra-cabeça $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 movimentos';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Arraste as peças para trocá-las ou toque em duas peças.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 quebra-cabeças resolvidos  ·  $value3 pontos cada';
  }

  @override
  String get gameUiGameOver => 'Fim de jogo';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'O número era $value1.\nSequência: $value2\nVocê ganhou $value3 pontos!\n\nVolte amanhã para outra chance!';
  }

  @override
  String get gameUiHigherOrLower => 'Maior ou Menor 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Você já jogou hoje!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Você jogou em $value1/$value2/$value3.\n\nVolte amanhã para construir uma nova sequência!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Você já jogou hoje.\n\nVolte amanhã para outra chance!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Sequência: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Pontos: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'O próximo número será maior ou menor?';

  @override
  String get gameUiLower => 'Menor';

  @override
  String get gameUiHigher => 'Maior';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Blitz de Verdadeiro ou Falso ⚡';

  @override
  String get gameUiTimeSUp => 'O tempo acabou!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Respostas corretas: $value1\nMelhor sequência: $value2\n${value3}Você ganhou $value4 pontos!\n\nVolte amanhã para outra rodada!';
  }

  @override
  String get gameUiStreakBonus20 => 'Bônus de sequência: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'A resposta exibida é verdadeira ou falsa?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 perguntas em $value2 categorias';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Você tem $value1 segundos. Cada resposta correta vale $value2 pontos. Uma resposta errada custa $value3 segundos. Alcance uma sequência de 5 para ganhar um bônus de +20.';
  }

  @override
  String get gameUiRoundTimer => 'Cronômetro da rodada';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 segundos';
  }

  @override
  String get gameUiStart => 'Iniciar';

  @override
  String get gameUiTrue => 'Verdadeiro';

  @override
  String get gameUiFalse => 'Falso';

  @override
  String get gameUiCommandMatch26b0e70 => 'Associação de Comandos 🔗';

  @override
  String get gameUiAllMatched => 'Tudo associado!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Erros: $value1\nVocê ganhou $value2 pontos!\n\nVolte amanhã para novos comandos!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Rodada $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Toque em um comando e depois no seu significado.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Agora toque no significado correspondente.';

  @override
  String get gameUiPortMaster9c730cf => 'Mestre das Portas 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Mestre das Portas!';

  @override
  String get gameUiOutOfLives => 'Sem vidas';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Respostas corretas: $value1\nVocê ganhou $value2 pontos!\n\nVolte amanhã para outra rodada!';
  }

  @override
  String get gameUiYouEarned10Points => 'Você ganhou 10 pontos!';

  @override
  String get gameUiYouWin => 'Você venceu!';

  @override
  String gameUiWins(String value1) {
    return '$value1 venceu!';
  }

  @override
  String get gameUiXWins => 'X venceu!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) venceu!';
  }

  @override
  String get gameUiComputerWins => 'O computador venceu';

  @override
  String get gameUiOWins => 'O venceu!';

  @override
  String get gameUiPlayer2OWins => 'Jogador 2 (O) venceu!';

  @override
  String get gameUiItSADraw => 'Empate';

  @override
  String get gameUiYourTurn => 'Sua vez';

  @override
  String gameUiSTurn(String value1) {
    return 'Vez de $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'O computador está pensando';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Jogador $value1 para jogar';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 para jogar';
  }

  @override
  String get gameUiPlayer2ToMove => 'Jogador 2 para jogar';

  @override
  String get gameUiNewRound => 'Nova rodada';

  @override
  String get gameUiVsComputer => 'Contra o computador';

  @override
  String get gameUi2Players => '2 jogadores';

  @override
  String get gameUiYou => 'Você';

  @override
  String get gameUiDraws => 'Empates';

  @override
  String get gameUiPlayer2 => 'Jogador 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Célula $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Jogar novamente';

  @override
  String get gameUiConnectFourWin20Points => 'Vitória no Connect Four: 20 pontos!';

  @override
  String get gameUiBotWins => 'O bot venceu!';

  @override
  String get gameUiRed => 'Vermelho';

  @override
  String get gameUiYellow => 'Amarelo';

  @override
  String get gameUiBoardFullDraw => 'Tabuleiro cheio — empate';

  @override
  String get gameUiBotIsThinking => 'O bot está pensando';

  @override
  String get gameUiBotTurn => 'Vez do bot';

  @override
  String get gameUiNewGame => 'Novo jogo';

  @override
  String get gameUiVsBot => 'Contra o bot';

  @override
  String get gameUi2Player => '2 jogadores';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Jogue contra o bot · toque em uma coluna para soltar um disco';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Dois jogadores · toque em uma coluna para soltar um disco';

  @override
  String gameUiColumn(String value1) {
    return 'Coluna $value1';
  }

  @override
  String get gameUiYouRed => 'Você · Vermelho';

  @override
  String get gameUiRedPlayer1 => 'Vermelho · Jogador 1';

  @override
  String get gameUiBotYellow => 'Bot · Amarelo';

  @override
  String get gameUiYellowPlayer2 => 'Amarelo · Jogador 2';

  @override
  String get gameUiLudoMatchStats => 'Estatísticas das partidas de Ludo';

  @override
  String get gameUiNoCompletedMatchesYet => 'Nenhuma partida concluída ainda.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Jogadas $value1  ·  Vitórias $value2  ·  Derrotas $value3';
  }

  @override
  String get gameUiClose => 'Fechar';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Campeão de Ludo! Você ganhou 50 pontos.';

  @override
  String get gameUiNewLudoGame => 'Novo jogo de Ludo';

  @override
  String get gameUiBotOpponents => 'Bots adversários';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Iniciar uma nova partida substitui o seu jogo salvo.';

  @override
  String get gameUiCancel => 'Cancelar';

  @override
  String get gameUiStartGame => 'Iniciar jogo';

  @override
  String get gameUiPlayerColours => 'Cores dos jogadores';

  @override
  String get gameUiApply => 'Aplicar';

  @override
  String get gameUiMatchStats => 'Estatísticas da partida';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 vence por xeque-mate';
  }

  @override
  String get gameUiBlack => 'Preto';

  @override
  String get gameUiWhite => 'Branco';

  @override
  String get gameUiComputerWinsByCheckmate => 'O computador vence por xeque-mate';

  @override
  String get gameUiYouWinByCheckmate => 'Você vence por xeque-mate';

  @override
  String get gameUiDrawByStalemate => 'Empate por afogamento';

  @override
  String get gameUiDraw => 'Empate';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Xeque';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Xeque-mate! Você ganhou 50 pontos.';

  @override
  String get gameUiStartANewGame => 'Iniciar um novo jogo?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Alterar o modo de jogador substitui a partida salva.';

  @override
  String get gameUiComputer => 'Computador';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Brancas / Jogador 2 · Pretas';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Você é as Brancas · O computador é as Pretas';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Brancas) · Computador (Pretas)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Você é as Pretas · O computador é as Brancas';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Pretas) · Computador (Brancas)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 joga os dados primeiro';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 joga os dados novamente';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 deve jogar os dados';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Vitória na Cobras e Escadas: 100 pontos!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Alterar os jogadores substitui o jogo salvo.';

  @override
  String get gameUiStartANewLevel => 'Iniciar um novo nível?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Alterar os níveis substitui o jogo salvo.';

  @override
  String get gameUiChangeLevel => 'Alterar nível';

  @override
  String get gameUiPlayers => 'Jogadores';

  @override
  String get gameUiPlayAgainstBot => 'Jogar contra o bot';

  @override
  String get gameUi3Players => '3 jogadores';

  @override
  String get gameUi4Players => '4 jogadores';

  @override
  String get gameUiLevel1709305 => 'Nível';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Nível $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 jogadores · Nível $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Jogar dados';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 em $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Não foi possível carregar a pergunta: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Resposta correta!';

  @override
  String get gameUiWrongAnswer => 'Resposta errada';

  @override
  String get gameUiYouClaimedYourReward => 'Você resgatou sua recompensa!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Adicionado ao seu total de pontos.';

  @override
  String get gameUiTheCorrectAnswerWas => 'A resposta correta era:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Recompensa de $value1 ponto(s) perdida.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Seus pontos existentes não foram deduzidos.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Volte amanhã e tente novamente.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Não foi possível carregar a pergunta.';

  @override
  String get gameUiYourReward677fa6e => 'Sua recompensa';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 PONTOS';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Responda corretamente para resgatá-la!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Volte amanhã para outra rodada.';

  @override
  String get gameUiGreen => 'Verde';

  @override
  String get gameUiBlue => 'Azul';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 está pensando';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: escolha uma peça';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: jogue o dado';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dado $value1';
  }

  @override
  String get gameUiRollDice => 'Jogar dado';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 peça $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Jogador $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Robô $value1';
  }

  @override
  String get gameUiBot => 'Robô';

  @override
  String get gameUiHintInsufficientPoints => 'Você precisa de 20 pontos para usar uma dica.';

  @override
  String get gameUiHintPurchaseFailed => 'Não foi possível comprar uma dica. Tente novamente.';

  @override
  String get gameUiChessKing => 'rei';

  @override
  String get gameUiChessQueen => 'rainha';

  @override
  String get gameUiChessRook => 'torre';

  @override
  String get gameUiChessBishop => 'bispo';

  @override
  String get gameUiChessKnight => 'cavalo';

  @override
  String get gameUiChessPawn => 'peão';

  @override
  String get gameUiChessEmpty => 'vazio';

  @override
  String get gameSceneLampAndFlowers => 'Lâmpada e flores';

  @override
  String get gameSceneGardenFriends => 'Amigos do jardim';

  @override
  String get gameSceneUnderwaterExplorers => 'Exploradores submarinos';

  @override
  String get gameSceneOceanOrca => 'Orca do oceano';

  @override
  String get gameSceneFoxInTheMeadow => 'Raposa no prado';

  @override
  String get gameSceneYellowSubmarine => 'Submarino amarelo';

  @override
  String get gameSceneTurkeyInTheClearing => 'Peru na clareira';

  @override
  String get gameSceneSafariWateringHole => 'Bebedouro do safári';

  @override
  String get gameSceneJungleCompanions => 'Companheiros da selva';

  @override
  String get gameSceneGoldenPuppyGarden => 'Jardim do cachorrinho dourado';

  @override
  String get gameSceneSeaTurtleReef => 'Recife da tartaruga-marinha';

  @override
  String get gameSceneCoralReefFriends => 'Amigos do recife de coral';

  @override
  String get gameSceneSharedClownfish => 'Peixe-palhaço compartilhado';

  @override
  String get gameSceneLittleDinosaur => 'Dinossauro pequeno';

  @override
  String get gameSceneSafariCompanions => 'Companheiros de safári';

  @override
  String get gameSceneSwirlingFlowers => 'Flores rodopiantes';

  @override
  String get gameSceneGardenKitten => 'Gatinho do jardim';

  @override
  String get gameSceneBlueOcean => 'Oceano azul';

  @override
  String get gameSceneCastlePrincess => 'Princesa do castelo';

  @override
  String get gameSceneRedCar => 'Carro vermelho';

  @override
  String get gameSceneGardenPuppy => 'Cachorrinho do jardim';

  @override
  String get gameSceneSpaceExplorer => 'Explorador espacial';

  @override
  String get gameSceneEnchantedReadingForest => 'Floresta encantada da leitura';

  @override
  String get gameSceneDevopsInfinityCycle => 'Ciclo infinito do DevOps';

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
  String get gameSceneNetworking => 'Redes';

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
  String get gameSceneWinterFestivalFair => 'Feira do festival de inverno';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Close do herói de armadura';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Herói de armadura em carmesim';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Flores escuras de plumeria';

  @override
  String get gameSceneMangroveBoardwalk => 'Passarela do manguezal';

  @override
  String get gameSceneTropicalPalmReflections => 'Reflexos de palmeiras tropicais';

  @override
  String get gameSceneMaskedFigureInShadow => 'Figura mascarada na sombra';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Companheiro elétrico ao pôr do sol';

  @override
  String get gameSceneTrainerAndFireDragon => 'Treinador e dragão de fogo';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Máscara de luta livre cravejada de joias';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Lutador em pinceladas vermelhas';

  @override
  String get gameSceneWrestlingChampionSalute => 'Saudação do campeão de luta livre';

  @override
  String get gameSceneMorningAtTheBakery => 'Manhã na padaria';

  @override
  String get gameSceneGreenhousePottingBench => 'Bancada de plantio da estufa';

  @override
  String get gameSceneHarborFishingBoat => 'Barco de pesca do porto';

  @override
  String get gameSceneAtticObservatory => 'Observatório no sótão';

  @override
  String get gameSceneToyMakerSWorkshop => 'Oficina do fabricante de brinquedos';

  @override
  String get gameSceneWoodlandCampsite => 'Acampamento na floresta';

  @override
  String get gameSceneAfternoonMusicRoom => 'Sala de música à tarde';

  @override
  String get gameSceneSeasideIceCreamStand => 'Barraca de sorvete à beira-mar';

  @override
  String get gameSceneLibraryReadingNook => 'Cantinho de leitura da biblioteca';

  @override
  String get gameSceneSewingStudio => 'Ateliê de costura';

  @override
  String get gameSceneFruitMarket => 'Mercado de frutas';

  @override
  String get gameSceneKoiCourtyard => 'Pátio dos kois';

  @override
  String get gameSceneArtistSAtelier => 'Ateliê do artista';

  @override
  String get gameSceneMountainRailway => 'Ferrovia de montanha';

  @override
  String get gameSceneCountryKitchen => 'Cozinha rústica';

  @override
  String get gameScenePotteryWorkshop => 'Oficina de cerâmica';

  @override
  String get gameSceneBeachPicnic => 'Piquenique na praia';

  @override
  String get gameSceneFlowerShop => 'Floricultura';

  @override
  String get gameSceneClockmakerSWorkshop => 'Oficina do relojoeiro';

  @override
  String get gameSceneRainyCafeTerrace => 'Terraço de café em dia de chuva';

  @override
  String get gameSceneCastleHerbGarden => 'Jardim de ervas do castelo';

  @override
  String get gameSceneClassroomArtCorner => 'Cantinho de arte da sala de aula';

  @override
  String get gameSceneAquariumShop => 'Loja de aquários';

  @override
  String get gameSceneAutumnLeafCollection => 'Coleção de folhas de outono';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Árvore solitária sob a lua';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Flor de outono em um galho';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Raposa entre folhas verdes';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Canoa em um lago coberto de lírios';

  @override
  String get gameSceneDewDropsOnALeaf => 'Gotas de orvalho em uma folha';

  @override
  String get gameSceneStagInATurquoiseLake => 'Cervo em um lago turquesa';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Bicicleta sob uma lua laranja';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Tigre-branco acima do vale';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Duas árvores na água azul';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Pescaria ao lado de um cão fiel';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Lírios ao lado de um lago de montanha';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Cervo na margem rosada do rio';

  @override
  String get gameSceneTropicalHutAtSunset => 'Cabana tropical ao pôr do sol';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Raposa contemplando um vale alpino';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Pôr do sol através de um bosque encantado';

  @override
  String get learningControlTitle => 'Aprender DevOps';

  @override
  String get learningControlAllCategories => 'Todas as categorias';

  @override
  String get learningControlSearchCards => 'Pesquisar cartões';

  @override
  String get learningControlClearSearch => 'Limpar pesquisa';

  @override
  String get learningControlCategory => 'Categoria';

  @override
  String get learningControlShowAll => 'Mostrar todos os cartões';

  @override
  String learningControlShowSaved(int count) {
    return 'Mostrar cartões salvos ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Desativar embaralhamento';

  @override
  String get learningControlShuffleOn => 'Embaralhar cartões';

  @override
  String get learningControlAutoOff => 'Parar troca automática';

  @override
  String get learningControlAutoOn => 'Troca automática a cada 10 segundos';

  @override
  String get learningControlNoSaved => 'Ainda não há cartões salvos';

  @override
  String get learningControlNoMatches => 'Nenhum cartão correspondente';

  @override
  String get learningControlResetFilters => 'Redefinir filtros';

  @override
  String get learningControlPrevious => 'Anterior';

  @override
  String get learningControlNext => 'Próximo';

  @override
  String get learningControlProgress => 'Progresso';

  @override
  String get learningControlRemoveSaved => 'Remover dos salvos';

  @override
  String get learningControlSaveCard => 'Salvar cartão';

  @override
  String get learningControlExample => 'Exemplo';

  @override
  String get learningControlCopyExample => 'Copiar exemplo';

  @override
  String get learningControlExampleCopied => 'Exemplo copiado';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Nível $value1 concluído';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Jogar nível $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Conclua o nível $value1 para desbloquear';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Bônus de login diário';

  @override
  String get sharedDialogThanksForComingBack => 'Obrigado por voltar!';

  @override
  String get sharedDialogDailyRewardAdded => 'Sua recompensa diária foi adicionada ao seu total de pontos.';

  @override
  String get sharedDialogAwesome => 'Incrível!';

  @override
  String get accountWelcomeGuest => 'Convidado';

  @override
  String get accountWelcomeGuestUser => 'Usuário convidado';

  @override
  String get accountWelcomeUser => 'Usuário';

  @override
  String get accountWelcomePlayingAsGuest => 'Jogando como convidado';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Conectar conta do Google';

  @override
  String get accountWelcomeGoogleConnected => 'Conta do Google conectada com sucesso! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'O login foi cancelado.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Falha ao conectar: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Sair';

  @override
  String get accountWelcomeSignOutTitle => 'Sair da conta?';

  @override
  String get accountWelcomeSignOutMessage => 'Tem certeza de que deseja sair? Você precisará fazer login novamente para acessar seu progresso salvo.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Falha ao sair: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Redefinir dados do aplicativo?';

  @override
  String get accountWelcomeResetAppMessage => 'Isso excluirá permanentemente TODOS os seus pontos, ofensivas, histórico de jogos e configurações. Você será desconectado e retornará à tela inicial. Esta ação não pode ser desfeita.';

  @override
  String get accountWelcomeResetEverything => 'Redefinir tudo';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Falha ao redefinir: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Cancelar';

  @override
  String get accountWelcomeResetAppData => 'Redefinir dados do aplicativo';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Limpar todos os pontos, ofensivas e configurações';

  @override
  String get accountWelcomeFooter => 'Aplicativo DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Tradução ainda não disponível';

  @override
  String get accountWelcomeContinueWithGoogle => 'Continuar com o Google';

  @override
  String get accountWelcomeSigningIn => 'Entrando...';

  @override
  String get accountWelcomeOr => 'OU';

  @override
  String get accountWelcomeContinueAsGuest => 'Continuar como convidado';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Você pode fazer login mais tarde no seu perfil.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Você pode começar como convidado e fazer login mais tarde.';

  @override
  String get accountWelcomeGreetingGuest => 'Bem-vindo';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Bem-vindo, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'O login do Google foi concluído, mas nenhuma conta de usuário foi retornada.';

  @override
  String get accountWelcomeErrorEmailExists => 'Este e-mail já possui uma conta usando outro método de login.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Esta conta do Google já está vinculada a outra conta.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'A credencial de autenticação do Google é inválida ou expirou.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Esta conta foi desativada.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'O login com o Google não está ativado no momento.';

  @override
  String get accountWelcomeErrorNetwork => 'Erro de rede. Verifique sua conexão com a internet e tente novamente.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Muitas tentativas de login. Aguarde e tente novamente.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Nenhuma informação adicional sobre o erro.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Falha no login do Google.\n\nCódigo: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Erro no login do Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Não foi possível continuar como convidado. Tente novamente.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'O login com o Google estará disponível em breve.';

  @override
  String get accountWelcomeLoginTagline => 'Aprenda • Pratique • Compita • Ganhe';

  @override
  String get accountWelcomeCountryRegion => 'País / região';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'País / região: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Pesquisar país';

  @override
  String get accountWelcomeCountryNotSelected => 'Não selecionado';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Por que o DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ questões práticas';

  @override
  String get accountWelcomeFeatureLanguages => 'Suporte a vários idiomas';

  @override
  String get accountWelcomeFeatureStreaks => 'Ofensivas e classificações';

  @override
  String get accountWelcomeFeatureGames => 'Jogos e desafios';

  @override
  String get accountWelcomeFeatureCloud => 'Nuvem e DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bônus e recompensas';

  @override
  String get accountWelcomePracticeOnTheGo => 'Pratique em qualquer lugar';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Instale o aplicativo Android e aprenda offline, onde estiver.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Disponível no Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Sequência de $days dias';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Mantenha uma sequência de $days dias.';
  }

  @override
  String get achLocYearStreakTitle => 'Sequência de 1 ano';

  @override
  String get achLocFirstQuizTitle => 'Primeiro Quiz';

  @override
  String get achLocFirstQuizDescription => 'Conclua o seu primeiro quiz.';

  @override
  String get achLocQuiz10Title => 'Explorador de Quiz';

  @override
  String get achLocQuiz10Description => 'Conclua 10 questionários.';

  @override
  String get achLocPoints1000Title => '1000 Pontos';

  @override
  String get achLocPoints1000Description => 'Ganhe 1000 pontos no total no Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Pontuação Perfeita';

  @override
  String get achLocPerfectScoreDescription => 'Obtenha 100% em qualquer quiz.';

  @override
  String get achLocQuiz25Title => 'Entusiasta de Quiz';

  @override
  String get achLocQuiz25Description => 'Conclua 25 questionários.';

  @override
  String get achLocQuiz50Title => 'Mestre de Quiz';

  @override
  String get achLocQuiz50Description => 'Conclua 50 questionários.';

  @override
  String get achLocQuiz100Title => 'Clube dos Cem';

  @override
  String get achLocQuiz100Description => 'Conclua 100 questionários.';

  @override
  String get achLocQuiz250Title => 'Lenda do Quiz';

  @override
  String get achLocQuiz250Description => 'Conclua 250 questionários.';

  @override
  String get achLocPoints5000Title => '5.000 Pontos';

  @override
  String get achLocPoints5000Description => 'Ganhe 5.000 pontos no total.';

  @override
  String get achLocPoints10000Title => '10.000 Pontos';

  @override
  String get achLocPoints10000Description => 'Ganhe 10.000 pontos no total.';

  @override
  String get achLocPoints50000Title => '50.000 Pontos';

  @override
  String get achLocPoints50000Description => 'Ganhe 50.000 pontos no total.';

  @override
  String get achLocPoints100000Title => '100.000 Pontos';

  @override
  String get achLocPoints100000Description => 'Ganhe 100.000 pontos no total.';

  @override
  String get achLocDaily1Title => 'Iniciante Diário';

  @override
  String get achLocDaily1Description => 'Conclua o seu primeiro Quiz Diário.';

  @override
  String get achLocDaily7Title => 'Hábito Diário';

  @override
  String get achLocDaily7Description => 'Conclua 7 Quizzes Diários.';

  @override
  String get achLocDaily30Title => 'Campeão Diário';

  @override
  String get achLocDaily30Description => 'Conclua 30 Quizzes Diários.';

  @override
  String get achLocSets5Title => 'Iniciante de Conjuntos';

  @override
  String get achLocSets5Description => 'Conclua 5 conjuntos de quiz.';

  @override
  String get achLocSets25Title => 'Colecionador de Conjuntos';

  @override
  String get achLocSets25Description => 'Conclua 25 conjuntos de quiz.';

  @override
  String get achLocSets50Title => 'Mestre de Conjuntos';

  @override
  String get achLocSets50Description => 'Conclua 50 conjuntos de quiz.';

  @override
  String get achLocSets100Title => 'Lenda de Conjuntos';

  @override
  String get achLocSets100Description => 'Conclua 100 conjuntos de quiz.';

  @override
  String get achLocCert1Title => 'Primeiro Certificado';

  @override
  String get achLocCert1Description => 'Ganhe o seu primeiro certificado de categoria.';

  @override
  String get achLocCert5Title => 'Profissional Certificado';

  @override
  String get achLocCert5Description => 'Ganhe 5 certificados de categoria.';

  @override
  String get achLocCert21Title => 'Totalmente Certificado';

  @override
  String get achLocCert21Description => 'Ganhe um certificado em todas as 21 categorias.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Grátis de 7 a 14 de fev. todos os anos';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Grátis de 8 a 15 de mar. todos os anos';

  @override
  String get achLocThemeLight => 'Claro';

  @override
  String get achLocThemeDark => 'Escuro';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Pôr do sol';

  @override
  String get achLocThemeCoffee => 'Café';

  @override
  String get achLocThemeTea => 'Chá';

  @override
  String get achLocThemeOcean => 'Oceano';

  @override
  String get achLocThemeSolarFlare => 'Explosão Solar';

  @override
  String get achLocThemeForest => 'Floresta';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Roxo Cibernético';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Meia-noite';

  @override
  String get achLocThemeDarkGrey => 'Cinza Escuro';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Dia dos Namorados';

  @override
  String get achLocThemeDqSpecial => 'DQ Especial';

  @override
  String get achLocThemeArmy => 'Exército';

  @override
  String get achLocThemeSpiderMan => 'Homem-Aranha';

  @override
  String get achLocThemeKrrish => 'Krrish';

  @override
  String get achLocThemeIronMan => 'Homem de Ferro';

  @override
  String get achLocThemeCaptainAmerica => 'Capitão América';

  @override
  String get achLocThemeThor => 'Thor';

  @override
  String get achLocThemeHulk => 'Hulk';

  @override
  String get achLocThemeBlackWidow => 'Viúva Negra';

  @override
  String get achLocThemeHawkeye => 'Gavião Arqueiro';

  @override
  String get achLocThemeBlackPanther => 'Pantera Negra';

  @override
  String get achLocThemeScarletWitch => 'Feiticeira Escarlate';

  @override
  String get achLocThemeVision => 'Visão';

  @override
  String get achLocThemeAntMan => 'Homem-Formiga';

  @override
  String get achLocThemeCaptainMarvel => 'Capitã Marvel';

  @override
  String get achLocThemeDoctorStrange => 'Doutor Estranho';

  @override
  String get achLocThemeAvengers => 'Vingadores';

  @override
  String get achLocThemeBatman => 'Batman';

  @override
  String get achLocThemeSuperman => 'Superman';

  @override
  String get achLocThemeWonderWoman => 'Mulher-Maravilha';

  @override
  String get achLocThemeFlash => 'Flash';

  @override
  String get achLocThemeAquaman => 'Aquaman';

  @override
  String get achLocThemeGreenLantern => 'Lanterna Verde';

  @override
  String get achLocThemeCyborg => 'Ciborgue';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'Heróis DC';

  @override
  String get achLocThemeRainbow => 'Arco-íris';

  @override
  String get achLocThemeDiamond => 'Diamante';

  @override
  String get achLocThemeLegendary => 'Lendário';

  @override
  String get gameHintCmd001LsLa => 'Lista todos os arquivos com detalhes';

  @override
  String get gameHintCmd002Grep => 'Pesquisa texto usando um padrão';

  @override
  String get gameHintCmd003Chmod => 'Altera as permissões de arquivos';

  @override
  String get gameHintCmd004DfH => 'Mostra o espaço livre em disco';

  @override
  String get gameHintCmd005TailF => 'Acompanha um arquivo de log em crescimento';

  @override
  String get gameHintCmd006PsAux => 'Lista os processos em execução';

  @override
  String get gameHintCmd007GitClone => 'Copia um repositório remoto';

  @override
  String get gameHintCmd008GitStash => 'Guarda alterações não commitadas';

  @override
  String get gameHintCmd009GitRebase => 'Reaplica commits sobre uma nova base';

  @override
  String get gameHintCmd010GitBlame => 'Mostra quem alterou cada linha';

  @override
  String get gameHintCmd011DockerPs => 'Lista os contêineres em execução';

  @override
  String get gameHintCmd012DockerBuild => 'Cria uma imagem a partir de um Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Mostra a saída do contêiner';

  @override
  String get gameHintCmd014DockerExec => 'Executa um comando dentro de um contêiner';

  @override
  String get gameHintCmd015KubectlGetPods => 'Lista os pods de um namespace';

  @override
  String get gameHintCmd016KubectlApply => 'Cria recursos a partir de um arquivo';

  @override
  String get gameHintCmd017KubectlDescribe => 'Mostra informações detalhadas do recurso';

  @override
  String get gameHintCmd018KubectlScale => 'Altera o número de réplicas';

  @override
  String get gameHintCmd019TerraformInit => 'Baixa os provedores e prepara o ambiente';

  @override
  String get gameHintCmd020TerraformPlan => 'Pré-visualiza as mudanças na infraestrutura';

  @override
  String get gameHintCmd021TerraformApply => 'Cria ou atualiza a infraestrutura';

  @override
  String get gameHintCmd022TerraformDestroy => 'Remove a infraestrutura gerenciada';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Executa um playbook de automação';

  @override
  String get gameHintCmd024Ping => 'Testa a acessibilidade com ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Mostra o caminho até um host';

  @override
  String get gameHintCmd026Curl => 'Transfere dados de uma URL';

  @override
  String get gameHintCmd027Ssh => 'Faz login em uma máquina remota com segurança';

  @override
  String get gameHintCmd028CrontabE => 'Edita tarefas agendadas';

  @override
  String get gameHintCmd029SystemctlStatus => 'Verifica o estado de um serviço';

  @override
  String get gameHintCmd030HelmInstall => 'Implanta um chart no Kubernetes';

  @override
  String get gameHintWord001Git => 'Rastreia alterações no código-fonte.';

  @override
  String get gameHintWord002Aws => 'Plataforma de nuvem da Amazon.';

  @override
  String get gameHintWord003Api => 'Um contrato que permite a comunicação entre sistemas de software.';

  @override
  String get gameHintWord004Dns => 'Traduz nomes de domínio em endereços IP.';

  @override
  String get gameHintWord005Cli => 'Uma interface baseada em texto para executar comandos.';

  @override
  String get gameHintWord006Cpu => 'O processador que executa instruções.';

  @override
  String get gameHintWord007Ram => 'Memória temporária usada por programas em execução.';

  @override
  String get gameHintWord008Ssh => 'Protocolo seguro para acesso remoto ao shell.';

  @override
  String get gameHintWord009Yaml => 'Um formato de serialização de dados legível por humanos.';

  @override
  String get gameHintWord010Linux => 'Kernel de sistema operacional de código aberto e sua família.';

  @override
  String get gameHintWord011Bash => 'Um shell de comandos Unix popular.';

  @override
  String get gameHintWord012Cloud => 'Computação sob demanda entregue por uma rede.';

  @override
  String get gameHintWord013Docker => 'Uma plataforma para criar e executar contêineres.';

  @override
  String get gameHintWord014Azure => 'Plataforma de nuvem da Microsoft.';

  @override
  String get gameHintWord015Python => 'Uma linguagem de script e programação muito usada.';

  @override
  String get gameHintWord016Github => 'Um popular serviço hospedado de colaboração com Git.';

  @override
  String get gameHintWord017Bgp => 'Protocolo de roteamento que troca rotas entre sistemas autônomos.';

  @override
  String get gameHintWord018Jenkins => 'Um servidor de automação frequentemente usado para CI.';

  @override
  String get gameHintWord019Port => 'Um ponto de extremidade numerado usado por serviços de rede.';

  @override
  String get gameHintWord020Proxy => 'Um servidor que encaminha requisições em nome de clientes.';

  @override
  String get gameHintWord021Cache => 'Um armazenamento rápido para dados reutilizados com frequência.';

  @override
  String get gameHintWord022Cron => 'Agendador Unix para comandos recorrentes.';

  @override
  String get gameHintWord023Bicep => 'Linguagem declarativa do Azure para infraestrutura como código.';

  @override
  String get gameHintWord024Apigee => 'Plataforma do Google Cloud para gerenciamento centralizado de API.';

  @override
  String get gameHintWord025Root => 'Conta de administrador privilegiada em sistemas do tipo Unix.';

  @override
  String get gameHintWord026Nginx => 'Servidor web e proxy reverso.';

  @override
  String get gameHintWord027Redis => 'Armazenamento de dados em memória frequentemente usado como cache.';

  @override
  String get gameHintWord028Mysql => 'Popular sistema de banco de dados relacional.';

  @override
  String get gameHintWord029Ruby => 'Linguagem de programação usada por ferramentas como o Chef.';

  @override
  String get gameHintWord030Helm => 'Gerenciador de pacotes comumente usado com Kubernetes.';

  @override
  String get gameHintWord031Pod => 'Menor unidade implantável no Kubernetes.';

  @override
  String get gameHintWord032Image => 'Modelo somente leitura usado para criar um contêiner.';

  @override
  String get gameHintWord033Build => 'Cria um artefato a partir do código-fonte e das dependências.';

  @override
  String get gameHintWord034Deploy => 'Publica uma aplicação em um ambiente.';

  @override
  String get gameHintWord035Terraform => 'Ferramenta da HashiCorp para infraestrutura como código.';

  @override
  String get gameHintWord036Ansible => 'Ferramenta de automação e configuração sem agente.';

  @override
  String get gameHintWord037Kubectl => 'Cliente de linha de comando para Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Abreviação de Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Modelo operacional que usa o Git como fonte da verdade.';

  @override
  String get gameHintWord040Pipeline => 'Sequência automatizada de etapas de build, teste e lançamento.';

  @override
  String get gameHintWord041Container => 'Processo isolado empacotado com suas dependências.';

  @override
  String get gameHintWord042Cluster => 'Grupo de máquinas gerenciadas como um sistema compartilhado.';

  @override
  String get gameHintWord043Ingress => 'Objeto de API do Kubernetes para roteamento HTTP externo.';

  @override
  String get gameHintWord044Firewall => 'Filtra o tráfego de rede conforme regras de segurança.';

  @override
  String get gameHintWord045Subnet => 'Subdivisão lógica de uma rede IP.';

  @override
  String get gameHintWord046Gateway => 'Nó de rede que conecta redes diferentes.';

  @override
  String get gameHintWord047Router => 'Encaminha pacotes entre redes.';

  @override
  String get gameHintWord048Switch => 'Conecta dispositivos dentro de uma rede local.';

  @override
  String get gameHintWord049Repository => 'Armazenamento gerenciado de código-fonte ou pacotes.';

  @override
  String get gameHintWord050Systemd => 'Sistema init e gerenciador de serviços do Linux.';

  @override
  String get gameHintWord051Journalctl => 'Comando usado para ler os logs do journal do systemd.';

  @override
  String get gameHintWord052Permission => 'Regra que controla quem pode ler, gravar ou executar.';

  @override
  String get gameHintWord053Alloydb => 'Banco de dados gerenciado do Google Cloud compatível com PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Objeto do Kubernetes para configurações não secretas.';

  @override
  String get gameHintWord055Secret => 'Objeto do Kubernetes destinado a dados sensíveis.';

  @override
  String get gameHintWord056Persistent => 'Descreve armazenamento que sobrevive à reinicialização de uma carga de trabalho.';

  @override
  String get gameHintWord057Volume => 'Armazenamento de sistema de arquivos montado em um contêiner.';

  @override
  String get gameHintWord058Storage => 'Local persistente para arquivos, objetos ou blocos.';

  @override
  String get gameHintWord059Replica => 'Cópia de uma instância de carga de trabalho mantida para escala ou confiabilidade.';

  @override
  String get gameHintWord060Deployment => 'Controlador do Kubernetes para pods de aplicações sem estado.';

  @override
  String get gameHintWord061Dockerfile => 'Instruções usadas para criar uma imagem Docker.';

  @override
  String get gameHintWord062Database => 'Repositório organizado consultado por aplicações.';

  @override
  String get gameHintWord063Automation => 'Uso de software para executar tarefas repetíveis sem etapas manuais.';

  @override
  String get gameHintWord064Anthos => 'Plataforma do Google Cloud para gerenciar clusters em diversos ambientes.';

  @override
  String get gameHintWord065Bigquery => 'Serviço do Google Cloud para análise de dados em grande escala.';

  @override
  String get gameHintWord066Bigtable => 'Banco de dados NoSQL de colunas amplas do Google Cloud para análises.';

  @override
  String get gameHintWord067Loadbalancer => 'Distribui o tráfego recebido entre vários backends.';

  @override
  String get gameHintWord068Prometheus => 'Sistema de monitoramento que armazena métricas de séries temporais.';

  @override
  String get gameHintWord069Grafana => 'Plataforma para consultar e visualizar dados de observabilidade.';

  @override
  String get gameHintWord070Cloudant => 'Banco de dados de documentos NoSQL JSON gerenciado da IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Serviço da AWS que registra a atividade de API para auditoria.';

  @override
  String get gameHintWord072Statefulset => 'Controlador do Kubernetes para cargas que precisam de identidade estável.';

  @override
  String get gameHintWord073Daemonset => 'Controlador do Kubernetes que executa um pod em nós selecionados.';

  @override
  String get gameHintWord074Serviceaccount => 'Identidade do Kubernetes usada por uma carga de trabalho ou processo.';

  @override
  String get gameHintWord075Networkpolicy => 'Recurso do Kubernetes que controla o tráfego de rede dos pods.';

  @override
  String get gameHintWord076Certificate => 'Documento digital usado para estabelecer identidade em TLS.';

  @override
  String get gameHintWord077Encryption => 'Transforma dados para que somente partes autorizadas possam lê-los.';

  @override
  String get gameHintWord078Observability => 'Capacidade de inferir o comportamento do sistema a partir de suas saídas.';

  @override
  String get gameHintWord079Coredns => 'Servidor DNS comumente usado em clusters Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Projeto para gerenciar recursos de nuvem por meio de APIs do Kubernetes.';

  @override
  String get gameHintWord081Failover => 'Troca para um componente em espera após uma falha.';

  @override
  String get gameHintWord082Idempotency => 'Propriedade em que repetir uma operação tem o mesmo efeito que executá-la uma vez.';

  @override
  String get gameHintWord083Dataflow => 'Serviço do Google Cloud para processamento de dados em fluxo e em lote.';

  @override
  String get gameHintWord084Orchestration => 'Gerenciamento coordenado de várias cargas de trabalho automatizadas.';

  @override
  String get gameHintWord085Dataplex => 'Serviço do Google Cloud para descobrir e governar dados corporativos.';

  @override
  String get gameHintWord086Serverless => 'Modelo de execução em que o gerenciamento da infraestrutura é abstraído.';

  @override
  String get gameHintWord087Distributed => 'Sistema cujos componentes são executados em várias máquinas conectadas em rede.';

  @override
  String get gameHintWord088Dataproc => 'Ambiente gerenciado de Apache Spark e Hadoop do Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'Banco de dados NoSQL da AWS frequentemente usado para bloqueio de estado do Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Preparação de infraestrutura ou recursos para uso.';

  @override
  String get gameHintWord091Elasticsearch => 'Mecanismo de busca comumente usado para logging centralizado.';

  @override
  String get gameHintWord092Etcd => 'Armazenamento chave-valor que guarda o estado do cluster Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Processo de verificar quem é um usuário ou serviço.';

  @override
  String get gameHintWord094Authorization => 'Processo de decidir o que uma identidade pode fazer.';

  @override
  String get gameHintWord095Expressroute => 'Serviço do Azure para conectividade privada dedicada com data centers.';

  @override
  String get gameHintWord096Configuration => 'Definições que determinam como o software se comporta.';

  @override
  String get gameHintWord097Infrastructure => 'Recursos de computação, rede e armazenamento que sustentam aplicações.';

  @override
  String get gameHintWord098Fastconnect => 'Serviço do Oracle Cloud para conexões de rede privadas dedicadas.';

  @override
  String get gameHintWord099Containerd => 'Runtime de contêineres padrão do setor usado pelo Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Plataforma de orquestração de contêineres.';

  @override
  String get gameHintWord101Http => 'Protocolo de aplicação usado para requisitar recursos da web.';

  @override
  String get gameHintWord102Https => 'Versão criptografada do protocolo de requisição web.';

  @override
  String get gameHintWord103Tcp => 'Protocolo de transporte que oferece entrega confiável e ordenada.';

  @override
  String get gameHintWord104Udp => 'Protocolo de transporte sem conexão usado para datagramas.';

  @override
  String get gameHintWord105Tls => 'Protocolo que protege os dados trocados em uma rede.';

  @override
  String get gameHintWord106Ssl => 'Antecessor mais antigo do protocolo moderno de segurança de transporte.';

  @override
  String get gameHintWord107Ftp => 'Protocolo tradicional para transferência de arquivos.';

  @override
  String get gameHintWord108Sftp => 'Protocolo de transferência de arquivos transportado sobre uma conexão shell segura.';

  @override
  String get gameHintWord109Smtp => 'Protocolo usado para enviar e-mail entre servidores.';

  @override
  String get gameHintWord110Snmp => 'Protocolo usado para gerenciar e monitorar dispositivos de rede.';

  @override
  String get gameHintWord111Icmp => 'Protocolo que transporta erros de rede e mensagens de ping.';

  @override
  String get gameHintWord112Arp => 'Resolve endereços IPv4 locais em endereços de hardware.';

  @override
  String get gameHintWord113Dhcp => 'Concede automaticamente configuração de IP a clientes da rede.';

  @override
  String get gameHintWord114Nat => 'Reescreve endereços de rede quando pacotes atravessam um gateway.';

  @override
  String get gameHintWord115Vpn => 'Túnel criptografado que conecta redes ou usuários remotos.';

  @override
  String get gameHintWord116Vpc => 'Rede virtual isolada em uma nuvem pública.';

  @override
  String get gameHintWord117Vlan => 'Separação lógica de uma rede comutada.';

  @override
  String get gameHintWord118Wan => 'Rede que abrange uma ampla área geográfica.';

  @override
  String get gameHintWord119Lan => 'Rede que conecta dispositivos em uma área local.';

  @override
  String get gameHintWord120Cdn => 'Rede de borda distribuída que armazena em cache o conteúdo entregue.';

  @override
  String get gameHintWord121Cidr => 'Notação que expressa um prefixo de rede com um comprimento após a barra.';

  @override
  String get gameHintWord122Host => 'Um computador ou ponto de extremidade conectado a uma rede.';

  @override
  String get gameHintWord123Hostname => 'Nome legível por humanos atribuído a uma máquina em rede.';

  @override
  String get gameHintWord124Domain => 'Área administrativa nomeada no sistema de nomes da internet.';

  @override
  String get gameHintWord125Zone => 'Parte administrativa de um namespace DNS.';

  @override
  String get gameHintWord126Record => 'Uma entrada individual em um banco de dados DNS.';

  @override
  String get gameHintWord127Aaaa => 'Tipo de registro DNS que resolve um nome para um endereço IPv6.';

  @override
  String get gameHintWord128Ptr => 'Tipo de registro DNS usado para consultas reversas de endereço.';

  @override
  String get gameHintWord129Txt => 'Tipo de registro DNS que armazena valores de texto.';

  @override
  String get gameHintWord130Cname => 'Registro DNS que faz de um nome um alias de outro.';

  @override
  String get gameHintWord131Route => 'Uma entrada de caminho que direciona pacotes a um destino.';

  @override
  String get gameHintWord132Routing => 'Seleção de caminhos para o tráfego entre redes.';

  @override
  String get gameHintWord133Packet => 'Uma unidade de dados transmitida por uma rede.';

  @override
  String get gameHintWord134Protocol => 'Regras acordadas para a comunicação entre sistemas.';

  @override
  String get gameHintWord135Ack => 'Flag do TCP que confirma o recebimento de dados.';

  @override
  String get gameHintWord136Bandwidth => 'Capacidade de um link de comunicação.';

  @override
  String get gameHintWord137Latency => 'Atraso até que uma requisição ou pacote receba resposta.';

  @override
  String get gameHintWord138Throughput => 'Quantidade de trabalho útil ou dados processados por unidade de tempo.';

  @override
  String get gameHintWord139Mtu => 'Maior tamanho de pacote que um link pode transmitir sem fragmentação.';

  @override
  String get gameHintWord140Alpn => 'Extensão do TLS que negocia um protocolo da camada de aplicação.';

  @override
  String get gameHintWord141Grep => 'Procura em linhas de texto por um padrão correspondente.';

  @override
  String get gameHintWord142Sed => 'Editor de fluxo comumente usado para substituições de texto.';

  @override
  String get gameHintWord143Lscpu => 'Comando do Linux que exibe a arquitetura do processador e detalhes dos núcleos.';

  @override
  String get gameHintWord144Find => 'Pesquisa uma árvore de diretórios usando predicados de arquivo.';

  @override
  String get gameHintWord145Lsblk => 'Comando do Linux que lista dispositivos de bloco e suas relações.';

  @override
  String get gameHintWord146Sort => 'Ordena linhas de texto.';

  @override
  String get gameHintWord147Uniq => 'Filtra linhas duplicadas adjacentes.';

  @override
  String get gameHintWord148Head => 'Imprime o início de um arquivo.';

  @override
  String get gameHintWord149Tail => 'Imprime o fim de um arquivo e pode acompanhar logs em crescimento.';

  @override
  String get gameHintWord150Cat => 'Concatena arquivos e imprime seu conteúdo.';

  @override
  String get gameHintWord151Cut => 'Extrai campos ou colunas de caracteres selecionados das linhas.';

  @override
  String get gameHintWord152Tee => 'Copia a entrada padrão para arquivos e para a saída padrão.';

  @override
  String get gameHintWord153Echo => 'Escreve seus argumentos na saída padrão.';

  @override
  String get gameHintWord154Printf => 'Imprime texto formatado a partir de um shell ou programa.';

  @override
  String get gameHintWord155Touch => 'Atualiza os carimbos de data e hora de um arquivo ou cria um arquivo vazio.';

  @override
  String get gameHintWord156Mkdir => 'Cria diretórios.';

  @override
  String get gameHintWord157Rmdir => 'Remove diretórios vazios.';

  @override
  String get gameHintWord158Chmod => 'Altera os bits de permissão de arquivos Unix.';

  @override
  String get gameHintWord159Chown => 'Altera a propriedade de arquivos.';

  @override
  String get gameHintWord160Chgrp => 'Altera o grupo proprietário de um arquivo.';

  @override
  String get gameHintWord161Pwd => 'Imprime o diretório de trabalho atual.';

  @override
  String get gameHintWord162Apt => 'Ferramenta de gerenciamento de pacotes usada em sistemas baseados em Debian.';

  @override
  String get gameHintWord163Top => 'Exibição interativa de processos e do uso de recursos do sistema.';

  @override
  String get gameHintWord164Agent => 'Componente de software que executa ou reporta trabalho em um host.';

  @override
  String get gameHintWord165Kill => 'Envia um sinal a um processo por meio de seu identificador.';

  @override
  String get gameHintWord166Signal => 'Notificação entregue a um processo pelo sistema operacional.';

  @override
  String get gameHintWord167Sigkill => 'Sinal Unix que encerra um processo imediatamente.';

  @override
  String get gameHintWord168Nice => 'Inicia um processo com prioridade de escalonamento ajustada.';

  @override
  String get gameHintWord169Renice => 'Altera a prioridade de escalonamento de um processo em execução.';

  @override
  String get gameHintWord170Jobs => 'Lista os jobs gerenciados pelo shell atual.';

  @override
  String get gameHintWord171Nohup => 'Executa um comando ignorando sinais de desconexão.';

  @override
  String get gameHintWord172Screen => 'Multiplexador de terminal que oferece suporte a sessões destacáveis.';

  @override
  String get gameHintWord173Uptime => 'Informa há quanto tempo um sistema está em execução.';

  @override
  String get gameHintWord174Uname => 'Imprime informações do sistema e do kernel.';

  @override
  String get gameHintWord175Whoami => 'Imprime o nome do usuário atual efetivo.';

  @override
  String get gameHintWord176Umask => 'Define a máscara de permissões usada ao criar arquivos.';

  @override
  String get gameHintWord177Usermod => 'Comando do Linux que modifica uma conta de usuário existente.';

  @override
  String get gameHintWord178Crontab => 'Edita ou lista tarefas de shell recorrentes agendadas.';

  @override
  String get gameHintWord179Findmnt => 'Comando do Linux que exibe informações dos sistemas de arquivos montados.';

  @override
  String get gameHintWord180Mount => 'Anexa um sistema de arquivos à árvore de diretórios.';

  @override
  String get gameHintWord181Sigterm => 'Sinal Unix que solicita o encerramento gracioso de um processo.';

  @override
  String get gameHintWord182Fstab => 'Tabela do sistema que descreve os sistemas de arquivos a montar.';

  @override
  String get gameHintWord183Swap => 'Espaço em disco usado para complementar a memória física.';

  @override
  String get gameHintWord184Tmpfs => 'Sistema de arquivos temporário apoiado por memória virtual.';

  @override
  String get gameHintWord185Proc => 'Sistema de arquivos virtual do Linux que expõe informações de processos e do kernel.';

  @override
  String get gameHintWord186Syslog => 'Protocolo padrão de logging e formato de mensagem.';

  @override
  String get gameHintWord187Dmesg => 'Exibe mensagens do buffer circular do kernel.';

  @override
  String get gameHintWord188Free => 'Informa a memória do sistema usada e disponível.';

  @override
  String get gameHintWord189Stat => 'Exibe metadados detalhados de um arquivo.';

  @override
  String get gameHintWord190Lsof => 'Lista arquivos abertos e os processos que os mantêm.';

  @override
  String get gameHintWord191Netstat => 'Exibe conexões de rede e informações de roteamento.';

  @override
  String get gameHintWord192Checksum => 'Valor calculado usado para detectar alterações ou corrupção nos dados.';

  @override
  String get gameHintWord193Ping => 'Testa a acessibilidade da rede usando requisições echo.';

  @override
  String get gameHintWord194Traceroute => 'Mostra os saltos intermediários até um destino de rede.';

  @override
  String get gameHintWord195Resolver => 'Componente DNS que busca respostas para consultas de nomes.';

  @override
  String get gameHintWord196Nslookup => 'Consulta nomes e endereços DNS.';

  @override
  String get gameHintWord197Telnet => 'Protocolo legado de terminal remoto sem criptografia.';

  @override
  String get gameHintWord198Tftp => 'Protocolo simples de transferência de arquivos baseado em UDP.';

  @override
  String get gameHintWord199Daemon => 'Processo de serviço em segundo plano em sistemas do tipo Unix.';

  @override
  String get gameHintWord200Kernel => 'Componente central que gerencia os recursos do sistema operacional.';

  @override
  String get gameHintWord201Commit => 'Um instantâneo registrado de alterações no controle de versão.';

  @override
  String get gameHintWord202Branch => 'Referência móvel que representa uma linha de desenvolvimento.';

  @override
  String get gameHintWord203Merge => 'Combina históricos de diferentes linhas de desenvolvimento.';

  @override
  String get gameHintWord204Rebase => 'Reaplica commits sobre um commit base diferente.';

  @override
  String get gameHintWord205Clone => 'Cria uma cópia local de um repositório remoto.';

  @override
  String get gameHintWord206Fetch => 'Baixa objetos e referências remotos sem fazer merge.';

  @override
  String get gameHintWord207Pull => 'Busca alterações e as integra à branch atual.';

  @override
  String get gameHintWord208Push => 'Envia commits locais para um repositório remoto.';

  @override
  String get gameHintWord209Stash => 'Salva temporariamente alterações não commitadas da árvore de trabalho.';

  @override
  String get gameHintWord210Revert => 'Cria um commit que desfaz outro commit.';

  @override
  String get gameHintWord211Reset => 'Move uma referência do Git e pode redefinir o índice ou os arquivos de trabalho.';

  @override
  String get gameHintWord212Reflog => 'Histórico local de atualizações das referências do Git.';

  @override
  String get gameHintWord213Diff => 'Exibe as diferenças entre versões ou arquivos.';

  @override
  String get gameHintWord214Status => 'Informa arquivos em stage, modificados e não rastreados.';

  @override
  String get gameHintWord215Checkout => 'Comando do Git para trocar de revisão ou restaurar arquivos.';

  @override
  String get gameHintWord216Tag => 'Referência nomeada comumente usada para marcar um lançamento.';

  @override
  String get gameHintWord217Remote => 'Conexão nomeada com outro repositório.';

  @override
  String get gameHintWord218Origin => 'Nome padrão atribuído ao remoto de um repositório clonado.';

  @override
  String get gameHintWord219Upstream => 'Branch remota de rastreamento associada a uma branch local.';

  @override
  String get gameHintWord220Worktree => 'Um diretório de trabalho com checkout vinculado a um repositório.';

  @override
  String get gameHintWord221Registry => 'Serviço que armazena e distribui imagens de contêiner.';

  @override
  String get gameHintWord222Digest => 'Identificador baseado em conteúdo de uma imagem de contêiner.';

  @override
  String get gameHintWord223Layer => 'Alterações no sistema de arquivos que formam parte de uma imagem de contêiner.';

  @override
  String get gameHintWord224Entrypoint => 'Instrução do Dockerfile que define o executável principal do contêiner.';

  @override
  String get gameHintWord225Cmd => 'Instrução do Dockerfile que especifica um comando ou argumentos padrão.';

  @override
  String get gameHintWord226Workdir => 'Instrução do Dockerfile que define o diretório de trabalho.';

  @override
  String get gameHintWord227Copy => 'Instrução do Dockerfile que copia arquivos do contexto de build para uma imagem.';

  @override
  String get gameHintWord228Add => 'Instrução do Dockerfile que também pode extrair arquivos compactados locais.';

  @override
  String get gameHintWord229Run => 'Instrução do Dockerfile que executa um comando em tempo de build.';

  @override
  String get gameHintWord230Env => 'Instrução do Dockerfile que define variáveis de ambiente.';

  @override
  String get gameHintWord231Arg => 'Instrução do Dockerfile que declara uma variável de tempo de build.';

  @override
  String get gameHintWord232Expose => 'Instrução do Dockerfile que documenta uma porta do contêiner.';

  @override
  String get gameHintWord233User => 'Instrução do Dockerfile que escolhe a conta para os comandos seguintes.';

  @override
  String get gameHintWord234Healthcheck => 'Instrução que descreve como testar a saúde do contêiner.';

  @override
  String get gameHintWord235Shebang => 'Primeira linha de um script que identifica o interpretador a executar.';

  @override
  String get gameHintWord236Compose => 'Ferramenta do Docker para definir e executar aplicações com vários contêineres.';

  @override
  String get gameHintWord237Bridge => 'Driver de rede comum do Docker para rede local de contêineres.';

  @override
  String get gameHintWord238Overlay => 'Rede que abrange contêineres em vários hosts.';

  @override
  String get gameHintWord239None => 'Driver de rede do Docker que desativa a rede do contêiner.';

  @override
  String get gameHintWord240Prune => 'Remove recursos de contêiner não utilizados.';

  @override
  String get gameHintWord241Replicaset => 'Controlador do Kubernetes que mantém um número desejado de pods.';

  @override
  String get gameHintWord242Service => 'Abstração do Kubernetes que oferece acesso estável aos pods.';

  @override
  String get gameHintWord243Endpoints => 'Endereços que sustentam um serviço do Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Escopo lógico que agrupa recursos do Kubernetes.';

  @override
  String get gameHintWord245Node => 'Máquina worker que hospeda pods do Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Agente em cada nó que gerencia a execução dos pods.';

  @override
  String get gameHintWord247Pvc => 'Solicitação do Kubernetes por armazenamento persistente.';

  @override
  String get gameHintWord248Apiserver => 'Componente do plano de controle do Kubernetes que expõe a API do cluster.';

  @override
  String get gameHintWord249Role => 'Conjunto nomeado de permissões no controle de acesso baseado em papéis.';

  @override
  String get gameHintWord250Resourcequota => 'Objeto do Kubernetes que limita o consumo de recursos em um namespace.';

  @override
  String get gameHintWord251Selector => 'Expressão que seleciona recursos por seus rótulos.';

  @override
  String get gameHintWord252Taint => 'Propriedade de um nó que repele pods sem uma toleration correspondente.';

  @override
  String get gameHintWord253Toleration => 'Configuração de pod que permite o agendamento em um nó com taint.';

  @override
  String get gameHintWord254Cordon => 'Marca um nó do Kubernetes como não agendável.';

  @override
  String get gameHintWord255Uncordon => 'Torna um nó isolado novamente agendável.';

  @override
  String get gameHintWord256Drain => 'Remove cargas de trabalho com segurança antes da manutenção do nó.';

  @override
  String get gameHintWord257Job => 'Carga de trabalho do Kubernetes que executa uma tarefa até a conclusão.';

  @override
  String get gameHintWord258Cronjob => 'Carga de trabalho do Kubernetes que cria jobs conforme um agendamento.';

  @override
  String get gameHintWord259Readiness => 'Sonda que indica se um contêiner pode receber tráfego.';

  @override
  String get gameHintWord260Liveness => 'Sonda que indica se um contêiner precisa ser reiniciado.';

  @override
  String get gameHintWord261Canary => 'Abordagem de lançamento que expõe uma nova versão a uma pequena parcela do tráfego.';

  @override
  String get gameHintWord262Rolling => 'Estratégia de atualização que substitui gradualmente as instâncias em execução.';

  @override
  String get gameHintWord263Rollback => 'Restaura uma versão da aplicação que funcionava anteriormente.';

  @override
  String get gameHintWord264Rollout => 'Implantação progressiva de uma nova versão da aplicação.';

  @override
  String get gameHintWord265Recreate => 'Estratégia de implantação que para os pods antigos antes de iniciar os substitutos.';

  @override
  String get gameHintWord266Blue => 'Um dos dois ambientes em um lançamento blue-green.';

  @override
  String get gameHintWord267Green => 'O outro ambiente em um lançamento blue-green.';

  @override
  String get gameHintWord268Artifact => 'Saída versionada produzida por um pipeline de build.';

  @override
  String get gameHintWord269Staging => 'Ambiente de pré-produção usado para validar lançamentos.';

  @override
  String get gameHintWord270Production => 'Ambiente que atende usuários finais reais.';

  @override
  String get gameHintWord271Release => 'Uma versão de software entregue para uso.';

  @override
  String get gameHintWord272Version => 'Identificador que distingue uma revisão de software.';

  @override
  String get gameHintWord273Revision => 'Uma versão identificável de um documento ou base de código.';

  @override
  String get gameHintWord274Webhook => 'Notificação HTTP enviada quando ocorre um evento.';

  @override
  String get gameHintWord275Runbook => 'Procedimento documentado para operar ou recuperar um sistema.';

  @override
  String get gameHintWord276Workspace => 'Diretório ou escopo que contém os recursos de trabalho de um projeto.';

  @override
  String get gameHintWord277Credentials => 'Material de autenticação usado para acessar um sistema.';

  @override
  String get gameHintWord278Trigger => 'Evento ou condição que inicia um pipeline.';

  @override
  String get gameHintWord279Parameter => 'Entrada nomeada fornecida a um job ou função.';

  @override
  String get gameHintWord280Access => 'Capacidade de usar um recurso sujeita a autorização.';

  @override
  String get gameHintWord281Module => 'Grupo reutilizável de definições de infraestrutura.';

  @override
  String get gameHintWord282Provider => 'Plugin do Terraform que conecta a configuração a uma API externa.';

  @override
  String get gameHintWord283Resource => 'Objeto de infraestrutura gerenciado declarado na configuração.';

  @override
  String get gameHintWord284Variable => 'Valor de entrada nomeado usado por configuração ou código.';

  @override
  String get gameHintWord285Output => 'Valor exposto retornado por uma configuração de infraestrutura.';

  @override
  String get gameHintWord286Tfstate => 'Sufixo de arquivo associado a instantâneos de estado do Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Sufixo de arquivo usado para valores de variáveis de entrada do Terraform.';

  @override
  String get gameHintWord288Backend => 'Configuração do Terraform que controla o armazenamento do estado.';

  @override
  String get gameHintWord289Plan => 'Pré-visualização do Terraform das mudanças propostas na infraestrutura.';

  @override
  String get gameHintWord290Apply => 'Operação do Terraform que executa as mudanças propostas.';

  @override
  String get gameHintWord291Destroy => 'Operação do Terraform que remove a infraestrutura gerenciada.';

  @override
  String get gameHintWord292Import => 'Coloca um recurso existente sob gerenciamento da infraestrutura.';

  @override
  String get gameHintWord293Refresh => 'Sincroniza o estado registrado com a infraestrutura real.';

  @override
  String get gameHintWord294Validate => 'Verifica a sintaxe e a consistência interna da configuração.';

  @override
  String get gameHintWord295Fmt => 'Comando do Terraform que aplica a formatação canônica da configuração.';

  @override
  String get gameHintWord296Init => 'Inicializa os provedores do Terraform e o diretório de trabalho.';

  @override
  String get gameHintWord297Executor => 'Vaga de worker do Jenkins que pode executar um build.';

  @override
  String get gameHintWord298Dependencies => 'Relações que exigem um componente antes de outro.';

  @override
  String get gameHintWord299Drift => 'Diferença entre o estado declarado e o estado real da infraestrutura.';

  @override
  String get gameHintWord300Locking => 'Impede que gravadores concorrentes alterem o estado compartilhado.';

  @override
  String get gameHintWord301Playbook => 'Documento do Ansible que descreve plays e tarefas de automação.';

  @override
  String get gameHintWord302Inventory => 'Coleção do Ansible de hosts e grupos gerenciados.';

  @override
  String get gameHintWord303Facts => 'Informações do sistema coletadas sobre os hosts gerenciados.';

  @override
  String get gameHintWord304Task => 'Uma unidade individual de trabalho na automação.';

  @override
  String get gameHintWord305Handler => 'Tarefa do Ansible executada quando notificada por uma mudança.';

  @override
  String get gameHintWord306Notify => 'Diretiva do Ansible que enfileira um handler após uma tarefa com mudança.';

  @override
  String get gameHintWord307Become => 'Configuração do Ansible que habilita a elevação de privilégios.';

  @override
  String get gameHintWord308Vault => 'Recurso do Ansible para criptografar dados sensíveis de automação.';

  @override
  String get gameHintWord309Register => 'Diretiva do Ansible que salva o resultado de uma tarefa em uma variável.';

  @override
  String get gameHintWord310When => 'Palavra-chave do Ansible que controla a execução condicional de tarefas.';

  @override
  String get gameHintWord311Loop => 'Repete uma tarefa de automação sobre uma coleção.';

  @override
  String get gameHintWord312Include => 'Carrega conteúdo de automação reutilizável dinamicamente.';

  @override
  String get gameHintWord313Tags => 'Rótulos usados para selecionar subconjuntos de tarefas de automação.';

  @override
  String get gameHintWord314Template => 'Arquivo renderizado com variáveis antes da implantação.';

  @override
  String get gameHintWord315Jinja => 'Linguagem de template usada pelo Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Ocultar detalhes de implementação atrás de uma interface mais simples.';

  @override
  String get gameHintWord317Agile => 'Abordagem iterativa de entrega de software que enfatiza o feedback.';

  @override
  String get gameHintWord318Puppet => 'Ferramenta de gerenciamento de configuração que usa manifestos declarativos.';

  @override
  String get gameHintWord319Airflow => 'Plataforma para agendar e orquestrar DAGs de fluxos de trabalho.';

  @override
  String get gameHintWord320Argo => 'Família de projetos cloud-native que inclui um controlador de entrega GitOps.';

  @override
  String get gameHintWord321Rds => 'Abreviação do serviço de banco de dados relacional gerenciado da AWS.';

  @override
  String get gameHintWord322Sqs => 'Abreviação da fila de mensagens gerenciada da AWS.';

  @override
  String get gameHintWord323Sns => 'Abreviação do serviço de notificação publish-subscribe da AWS.';

  @override
  String get gameHintWord324Ses => 'Abreviação do serviço de envio de e-mail da AWS.';

  @override
  String get gameHintWord325Iam => 'Abreviação de gerenciamento de identidade e acesso na nuvem.';

  @override
  String get gameHintWord326Kms => 'Abreviação do serviço de gerenciamento de chaves de criptografia da AWS.';

  @override
  String get gameHintWord327Waf => 'Firewall que filtra requisições web da camada de aplicação.';

  @override
  String get gameHintWord328Eks => 'Abreviação do serviço Kubernetes gerenciado da AWS.';

  @override
  String get gameHintWord329Ecs => 'Abreviação do serviço de orquestração de contêineres gerenciado da AWS.';

  @override
  String get gameHintWord330Ecr => 'Abreviação do registro de imagens de contêiner da AWS.';

  @override
  String get gameHintWord331Aurora => 'Banco de dados relacional da AWS compatível com MySQL e PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Data warehouse analítico da AWS.';

  @override
  String get gameHintWord333Neptune => 'Banco de dados de grafos gerenciado da AWS.';

  @override
  String get gameHintWord334Elasticache => 'Serviço de cache em memória gerenciado da AWS.';

  @override
  String get gameHintWord335Athena => 'Serviço da AWS que consulta dados de armazenamento de objetos com SQL.';

  @override
  String get gameHintWord336Glue => 'Serviço serverless de integração de dados e ETL da AWS.';

  @override
  String get gameHintWord337Emr => 'Plataforma da AWS para clusters gerenciados de processamento de big data.';

  @override
  String get gameHintWord338Lambda => 'Serviço da AWS que executa funções sem gerenciar servidores.';

  @override
  String get gameHintWord339Cloudfront => 'Rede global de entrega de conteúdo da AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Serviço da AWS que coleta métricas, logs e alarmes.';

  @override
  String get gameHintWord341Cloudshell => 'Ambiente shell da AWS baseado em navegador.';

  @override
  String get gameHintWord342Codecommit => 'Serviço de repositório Git gerenciado da AWS.';

  @override
  String get gameHintWord343Codebuild => 'Serviço da AWS que compila código-fonte e executa testes de build.';

  @override
  String get gameHintWord344Codedeploy => 'Serviço de implantação automatizada de aplicações da AWS.';

  @override
  String get gameHintWord345Codepipeline => 'Serviço de pipeline de entrega contínua da AWS.';

  @override
  String get gameHintWord346Guardduty => 'Serviço inteligente de detecção de ameaças da AWS.';

  @override
  String get gameHintWord347Inspector => 'Serviço da AWS que avalia vulnerabilidades em cargas de trabalho.';

  @override
  String get gameHintWord348Macie => 'Serviço da AWS que descobre dados sensíveis em armazenamento de objetos.';

  @override
  String get gameHintWord349Shield => 'Serviço gerenciado de proteção contra DDoS da AWS.';

  @override
  String get gameHintWord350Snowball => 'Appliance físico da AWS para transferências de grandes volumes de dados.';

  @override
  String get gameHintWord351Snowcone => 'Dispositivo pequeno e robusto da família de transferência offline da AWS.';

  @override
  String get gameHintWord352Datasync => 'Serviço da AWS de transferência automatizada de dados online.';

  @override
  String get gameHintWord353Msk => 'Abreviação do serviço Apache Kafka gerenciado da AWS.';

  @override
  String get gameHintWord354Backup => 'Cópia de dados mantida para recuperação.';

  @override
  String get gameHintWord355Transcribe => 'Serviço da AWS que converte fala em texto.';

  @override
  String get gameHintWord356Translate => 'Serviço da AWS que traduz texto entre idiomas.';

  @override
  String get gameHintWord357Rekognition => 'Serviço da AWS que analisa imagens e vídeos.';

  @override
  String get gameHintWord358Comprehend => 'Serviço de análise de linguagem natural da AWS.';

  @override
  String get gameHintWord359Textract => 'Serviço da AWS que extrai texto e tabelas de documentos.';

  @override
  String get gameHintWord360Sagemaker => 'Plataforma da AWS para criar e implantar modelos de aprendizado de máquina.';

  @override
  String get gameHintWord361Spanner => 'Banco de dados relacional distribuído globalmente do Google Cloud.';

  @override
  String get gameHintWord362Pub => 'Metade de publicação do padrão de mensagens publish-subscribe.';

  @override
  String get gameHintWord363Sub => 'Metade de assinante do padrão de mensagens publish-subscribe.';

  @override
  String get gameHintWord364Functions => 'Unidades de código orientadas a eventos oferecidas por plataformas serverless.';

  @override
  String get gameHintWord365App => 'Forma abreviada de aplicação de software.';

  @override
  String get gameHintWord366Engine => 'Componente de execução em nomes como Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Capacidade de processamento fornecida por máquinas virtuais ou contêineres.';

  @override
  String get gameHintWord368Network => 'Sistemas conectados que trocam dados.';

  @override
  String get gameHintWord369Security => 'Proteção de sistemas e informações contra ameaças.';

  @override
  String get gameHintWord370Identity => 'Representação de um usuário ou serviço usada em decisões de acesso.';

  @override
  String get gameHintWord371Monitoring => 'Observação contínua da saúde e do comportamento do sistema.';

  @override
  String get gameHintWord372Logging => 'Registro de eventos discretos de aplicações e do sistema.';

  @override
  String get gameHintWord373Trace => 'Registro do caminho de uma requisição entre chamadas de serviço.';

  @override
  String get gameHintWord374Metrics => 'Medições numéricas do comportamento do sistema ao longo do tempo.';

  @override
  String get gameHintWord375Alert => 'Notificação de que uma condição monitorada exige atenção.';

  @override
  String get gameHintWord376Billing => 'Acompanhamento e cobrança dos serviços de nuvem consumidos.';

  @override
  String get gameHintWord377Quota => 'Limite da quantidade de um recurso que pode ser consumida.';

  @override
  String get gameHintWord378Region => 'Área geográfica de implantação na nuvem que contém zonas de disponibilidade.';

  @override
  String get gameHintWord379Tenancy => 'Arranjo que descreve como os clientes compartilham a infraestrutura.';

  @override
  String get gameHintWord380Regional => 'Descreve um recurso com escopo em uma região da nuvem.';

  @override
  String get gameHintWord381Cosmos => 'Nome do banco de dados multimodelo distribuído globalmente do Azure.';

  @override
  String get gameHintWord382Synapse => 'Plataforma de análise do Azure que combina data warehouse e processamento de dados.';

  @override
  String get gameHintWord383Sentinel => 'Plataforma nativa de nuvem da Microsoft para informações e eventos de segurança.';

  @override
  String get gameHintWord384Defender => 'Família de produtos de segurança da Microsoft que protege cargas de trabalho na nuvem.';

  @override
  String get gameHintWord385Entra => 'Família de produtos de identidade da Microsoft que substitui a marca Azure AD.';

  @override
  String get gameHintWord386Arm => 'Abreviação de Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Serviço do Azure que estende o gerenciamento a recursos fora do Azure.';

  @override
  String get gameHintWord388Aks => 'Abreviação do serviço Kubernetes gerenciado do Azure.';

  @override
  String get gameHintWord389Armor => 'Sufixo do nome do serviço de proteção web do Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Tipo de dado de armazenamento de objetos do Azure.';

  @override
  String get gameHintWord391Files => 'Serviço do Azure que oferece compartilhamentos de arquivos de rede gerenciados.';

  @override
  String get gameHintWord392Disk => 'Dispositivo de armazenamento em bloco anexado a uma máquina virtual.';

  @override
  String get gameHintWord393Function => 'Bloco de código chamável que pode retornar um resultado.';

  @override
  String get gameHintWord394Logic => 'Categoria de serviço de aplicativos do Azure para integração de fluxos de trabalho.';

  @override
  String get gameHintWord395Insights => 'Sufixo do nome do produto de telemetria de aplicações do Azure.';

  @override
  String get gameHintWord396Traffic => 'Dados que fluem entre pontos de extremidade da rede.';

  @override
  String get gameHintWord397Manager => 'Sufixo do nome do produto Azure Resource para seu plano de controle.';

  @override
  String get gameHintWord398Bastion => 'Ponto de entrada gerenciado ou reforçado para acesso a hosts privados.';

  @override
  String get gameHintWord399Front => 'Primeira palavra do serviço global de ponto de entrada do Azure, Front Door.';

  @override
  String get gameHintWord400Door => 'Segunda palavra do serviço global de ponto de entrada do Azure, Front Door.';

  @override
  String get gameHintWord401Javascript => 'Linguagem de programação muito usada em navegadores e em runtimes Node.';

  @override
  String get gameHintWord402Perl => 'Linguagem de script conhecida pelo processamento de texto e expressões regulares.';

  @override
  String get gameHintWord403Powershell => 'Shell orientado a objetos e linguagem de automação da Microsoft.';

  @override
  String get gameHintWord404Java => 'Linguagem da JVM usada para implementar o Jenkins.';

  @override
  String get gameHintWord405Json => 'Formato de dados leve com objetos e arrays.';

  @override
  String get gameHintWord406Xml => 'Formato de marcação que usa tags nomeadas aninhadas.';

  @override
  String get gameHintWord407Html => 'Linguagem de marcação usada para estruturar páginas web.';

  @override
  String get gameHintWord408Css => 'Linguagem de folhas de estilo que controla a apresentação na web.';

  @override
  String get gameHintWord409String => 'Sequência de caracteres de texto.';

  @override
  String get gameHintWord410Array => 'Coleção indexada de elementos.';

  @override
  String get gameHintWord411Hash => 'Coleção associativa de chave-valor em Ruby e Perl.';

  @override
  String get gameHintWord412Object => 'Valor em tempo de execução com propriedades e comportamento.';

  @override
  String get gameHintWord413Class => 'Definição usada para construir objetos em linguagens baseadas em classes.';

  @override
  String get gameHintWord414Method => 'Função associada a um objeto ou classe.';

  @override
  String get gameHintWord415Interface => 'Contrato que descreve as operações expostas por um componente.';

  @override
  String get gameHintWord416Subclass => 'Classe derivada de outra classe.';

  @override
  String get gameHintWord417Super => 'Palavra-chave usada para invocar o comportamento da classe pai.';

  @override
  String get gameHintWord418Protected => 'Nível de visibilidade que restringe o acesso a contextos relacionados à classe.';

  @override
  String get gameHintWord419Exception => 'Condição em tempo de execução que interrompe o fluxo de controle normal.';

  @override
  String get gameHintWord420Regex => 'Notação de padrões usada para correspondência de texto.';

  @override
  String get gameHintWord421Lexical => 'Descreve um escopo determinado pela estrutura do código-fonte.';

  @override
  String get gameHintWord422Scalar => 'Categoria de variável de valor único em Perl.';

  @override
  String get gameHintWord423Tuple => 'Coleção ordenada imutável em Python.';

  @override
  String get gameHintWord424List => 'Coleção ordenada mutável em Python.';

  @override
  String get gameHintWord425Dict => 'Nome do tipo de mapeamento nativo do Python.';

  @override
  String get gameHintWord426Dictionary => 'Coleção que mapeia chaves a valores associados.';

  @override
  String get gameHintWord427Set => 'Coleção de valores distintos.';

  @override
  String get gameHintWord428Boolean => 'Tipo de dado que representa verdadeiro ou falso.';

  @override
  String get gameHintWord429Integer => 'Tipo numérico que representa números inteiros.';

  @override
  String get gameHintWord430Float => 'Tipo numérico que representa valores de ponto flutuante.';

  @override
  String get gameHintWord431Double => 'Tipo de ponto flutuante de precisão dupla.';

  @override
  String get gameHintWord432Null => 'Valor que representa a ausência de um objeto ou resultado.';

  @override
  String get gameHintWord433Undefined => 'Valor do JavaScript para um valor atribuído ausente.';

  @override
  String get gameHintWord434Promise => 'Objeto do JavaScript que representa um resultado assíncrono futuro.';

  @override
  String get gameHintWord435Async => 'Palavra-chave que marca uma função assíncrona.';

  @override
  String get gameHintWord436Await => 'Palavra-chave que aguarda um resultado assíncrono.';

  @override
  String get gameHintWord437Callback => 'Função passada para ser invocada por outra operação.';

  @override
  String get gameHintWord438Closure => 'Função que mantém acesso ao escopo léxico que a envolve.';

  @override
  String get gameHintWord439Generator => 'Função que produz uma sequência de forma preguiçosa por meio de valores emitidos.';

  @override
  String get gameHintWord440Iterator => 'Objeto que avança pelos valores de uma coleção.';

  @override
  String get gameHintWord441Print => 'Função comum que escreve um valor na saída.';

  @override
  String get gameHintWord442Input => 'Função do Python que lê uma linha da entrada padrão.';

  @override
  String get gameHintWord443Open => 'Função usada para obter um identificador de arquivo.';

  @override
  String get gameHintWord444Close => 'Operação que libera um arquivo ou conexão aberta.';

  @override
  String get gameHintWord445Read => 'Operação que obtém dados de um fluxo ou arquivo.';

  @override
  String get gameHintWord446Write => 'Operação que envia dados a um fluxo ou arquivo.';

  @override
  String get gameHintWord447Append => 'Adiciona um item ao final de uma coleção.';

  @override
  String get gameHintWord448Split => 'Divide texto em substrings usando um delimitador.';

  @override
  String get gameHintWord449Join => 'Combina uma sequência de strings usando um separador.';

  @override
  String get gameHintWord450Strip => 'Remove espaços em branco ao redor de uma string Python.';

  @override
  String get gameHintWord451Chomp => 'Remove um separador de registro final em Perl ou Ruby.';

  @override
  String get gameHintWord452Map => 'Aplica uma transformação a cada item de uma coleção.';

  @override
  String get gameHintWord453Filter => 'Mantém os itens da coleção que satisfazem um predicado.';

  @override
  String get gameHintWord454Reduce => 'Combina uma coleção em um resultado acumulado.';

  @override
  String get gameHintWord455Range => 'Tipo do Python que representa uma sequência aritmética de inteiros.';

  @override
  String get gameHintWord456Length => 'Propriedade ou método que retorna o tamanho de uma coleção.';

  @override
  String get gameHintWord457Len => 'Função nativa do Python que retorna o tamanho de uma coleção.';

  @override
  String get gameHintWord458Type => 'Função do Python que retorna o tipo de um objeto.';

  @override
  String get gameHintWord459Isinstance => 'Função do Python que verifica a pertinência a uma hierarquia de tipos.';

  @override
  String get gameHintWord460Yield => 'Palavra-chave que produz um valor a partir de um gerador.';

  @override
  String get gameHintWord461Saas => 'Modelo de nuvem que entrega aplicações de software completas.';

  @override
  String get gameHintWord462Paas => 'Modelo de nuvem que fornece uma plataforma gerenciada de desenvolvimento de aplicações.';

  @override
  String get gameHintWord463Iaas => 'Modelo de nuvem que fornece computação, armazenamento e rede virtuais.';

  @override
  String get gameHintWord464Hybrid => 'Abordagem de nuvem que combina infraestrutura privada e pública.';

  @override
  String get gameHintWord465Archive => 'Armazenamento de longo prazo de dados acessados raramente.';

  @override
  String get gameHintWord466Public => 'Modelo de propriedade de nuvem que oferece serviços a vários clientes.';

  @override
  String get gameHintWord467Private => 'Modelo de nuvem dedicado a uma única organização.';

  @override
  String get gameHintWord468Scalability => 'Capacidade de lidar com carga crescente adicionando recursos.';

  @override
  String get gameHintWord469Availability => 'Grau em que um serviço permanece acessível quando necessário.';

  @override
  String get gameHintWord470Resilience => 'Capacidade de suportar falhas e se recuperar delas.';

  @override
  String get gameHintWord471Redundancy => 'Componentes duplicados que reduzem pontos únicos de falha.';

  @override
  String get gameHintWord472Disaster => 'Grande interrupção tratada por uma estratégia de recuperação.';

  @override
  String get gameHintWord473Recovery => 'Restauração de serviço ou dados após uma falha.';

  @override
  String get gameHintWord474Replicate => 'Copiar dados ou cargas de trabalho para outro local.';

  @override
  String get gameHintWord475Snapshotting => 'Criação de cópias de dados ou do estado do sistema em um ponto no tempo.';

  @override
  String get gameHintWord476Restore => 'Operação que recupera dados a partir de uma cópia salva.';

  @override
  String get gameHintWord477Residency => 'Requisito que define a localização geográfica dos dados armazenados.';

  @override
  String get gameHintWord478Compliance => 'Cumprimento de regulamentos e controles organizacionais exigidos.';

  @override
  String get gameHintWord479Governance => 'Políticas e processos que controlam o uso da tecnologia.';

  @override
  String get gameHintWord480Audit => 'Revisão das atividades registradas e das evidências de conformidade.';

  @override
  String get gameHintWord481Token => 'Credencial ou símbolo que representa autorização ou identidade.';

  @override
  String get gameHintWord482Oauth => 'Framework de autorização que permite acesso delegado.';

  @override
  String get gameHintWord483Saml => 'Padrão baseado em XML comumente usado para single sign-on corporativo.';

  @override
  String get gameHintWord484Cmdlet => 'Um comando especializado usado em pipelines do PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Sequência definida de passos para resolver um problema computacional.';

  @override
  String get gameHintWord486Key => 'Valor usado para controlar a criptografia ou identificar dados armazenados.';

  @override
  String get gameHintWord487Alias => 'Nome alternativo para um comando de shell ou recurso.';

  @override
  String get gameHintWord488Amend => 'Opção de commit do Git que substitui o commit mais recente.';

  @override
  String get gameHintWord489Allsigned => 'Política de execução do PowerShell que exige scripts assinados.';

  @override
  String get gameHintWord490Remotesigned => 'Política do PowerShell que exige assinaturas em scripts baixados.';

  @override
  String get gameHintWord491Acl => 'Lista que define permissões para usuários ou sistemas.';

  @override
  String get gameHintWord492Uid => 'Identificador numérico atribuído a um usuário Unix.';

  @override
  String get gameHintWord493Setgid => 'Bit de permissão que afeta a identidade do grupo durante a execução ou herança.';

  @override
  String get gameHintWord494Setfacl => 'Comando do Linux que define listas de controle de acesso de arquivos.';

  @override
  String get gameHintWord495Isolation => 'Separação que impede que cargas de trabalho interfiram umas nas outras.';

  @override
  String get gameHintWord496Sighup => 'Sinal Unix de desconexão frequentemente usado para solicitar recarga de configuração.';

  @override
  String get gameHintWord497Sigint => 'Sinal Unix de interrupção comumente gerado com Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Sinal Unix que pausa um processo sem encerrá-lo.';

  @override
  String get gameHintWord499Secrets => 'Valores sensíveis, como senhas e chaves de acesso.';

  @override
  String get gameHintWord500Secure => 'Descreve uma conexão protegida contra acesso não autorizado.';

  @override
  String get fontSettingsTitle => 'Fonte';

  @override
  String get fontChangeFont => 'Alterar fonte';

  @override
  String get fontSystemDefault => 'Padrão do sistema';

  @override
  String get fontPreview => 'Prévia';

  @override
  String get fontPreviewSample => 'Aprenda DevOps uma pergunta de cada vez';

  @override
  String get fontSelected => 'Selecionada';

  @override
  String get fontLatinOnlyNote => 'As fontes personalizadas se aplicam às letras latinas. Outros sistemas de escrita mantêm a fonte do seu dispositivo.';

  @override
  String get fontDescSystem => 'A fonte integrada do seu dispositivo';

  @override
  String get fontDescGeometric => 'Sem serifa geométrica';

  @override
  String get fontDescGeometricRounded => 'Sem serifa geométrica arredondada';

  @override
  String get fontDescFriendly => 'Sem serifa amigável';

  @override
  String get fontDescCondensed => 'Condensada';

  @override
  String get fontDescRounded => 'Sem serifa arredondada';

  @override
  String get fontDescRoundedDisplay => 'Display arredondada';

  @override
  String gameScene3dScene(String value1) {
    return 'Cena 3D $value1';
  }
}
