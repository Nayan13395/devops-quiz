// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTour => 'Guía de la app';

  @override
  String get skipTour => 'Omitir guía';

  @override
  String get finishTour => 'Terminar guía';

  @override
  String tourStep(int current, int total) {
    return 'Paso $current de $total';
  }

  @override
  String get tourMenuTitle => 'Menú de navegación';

  @override
  String get tourSearch => 'Escribe un tema aquí para encontrar categorías de cuestionarios.';

  @override
  String get tourCategory => 'Toca DevOps para un cuestionario mixto. Las demás categorías ofrecen grupos de preguntas. Guarda preguntas para repasarlas después.';

  @override
  String get tourMenu => 'Toca este botón para abrir el menú de navegación.';

  @override
  String get tourLearning => 'Abre Aprendizaje para ver tarjetas. Desliza en cualquier dirección, mezcla, activa el cambio automático o guarda una tarjeta.';

  @override
  String get tourGames => 'Juega para ganar puntos. Los juegos por niveles dan 100 puntos por nivel completado; las pistas cuestan 20 puntos.';

  @override
  String get tourAchievements => 'Consulta tus logros aquí. Las ventanas emergentes anuncian nuevos logros y temas disponibles.';

  @override
  String get tourSettings => 'Elige idioma, tema y sonido. Abre Datos guardados para ver tus marcadores o Guía de la app para repetir este recorrido.';

  @override
  String get achievementUnlocked => '¡Logro desbloqueado!';

  @override
  String get themeUnlocked => '¡Nuevo tema disponible!';

  @override
  String get themeUnlockedMessage => 'Ya puedes elegir este tema en Ajustes > Temas.';

  @override
  String get gameSounds => 'Sonidos del juego';

  @override
  String get gameSoundsDescription => 'Efectos para juegos y cuestionarios. Comprueba el volumen y el modo silencioso del dispositivo.';

  @override
  String get testSound => 'Probar sonido';

  @override
  String get soundSettingBusy => 'Espera...';

  @override
  String get soundSettingError => 'No se pudo cargar o guardar el ajuste de sonido. Inténtalo de nuevo.';

  @override
  String get soundPlaybackError => 'No se pudo reproducir el sonido. Comprueba los ajustes de audio del dispositivo o navegador.';

  @override
  String get saveData => 'Datos guardados';

  @override
  String get learningTranslationUnavailable => 'Esta tarjeta aún no se ha traducido al idioma seleccionado.';

  @override
  String get saveQuestion => 'Guardar pregunta';

  @override
  String defaultPortQuestion(String service) {
    return '¿Cuál es el puerto predeterminado de $service?';
  }

  @override
  String get removeSavedItem => 'Quitar de guardados';

  @override
  String get noSavedData => 'Aún no hay nada guardado. Marca tarjetas de aprendizaje o preguntas de un cuestionario.';

  @override
  String get savedDataError => 'No se pudieron cargar o actualizar los datos guardados. Inténtalo de nuevo.';

  @override
  String get savedItemUnavailable => 'Este elemento guardado ya no está disponible.';

  @override
  String get correctAnswer => 'Respuesta correcta';

  @override
  String get retry => 'Reintentar';

  @override
  String get certificates => 'Certificados';

  @override
  String get whatsNew => 'Novedades';

  @override
  String get settings => 'Ajustes';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get english => 'Inglés';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Maratí';

  @override
  String get startQuiz => 'Iniciar cuestionario';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Cambiar categoría';

  @override
  String get dailyQuiz => 'Cuestionario diario';

  @override
  String get dailyQuizCompleted => 'Cuestionario diario completado';

  @override
  String get dailyQuizCompletedMessage => 'Ya completaste el cuestionario diario de hoy.\n\n¡Vuelve mañana para un nuevo reto!';

  @override
  String get leaderboard => 'Clasificación';

  @override
  String get shareApp => 'Compartir app';

  @override
  String get rateApp => 'Valorar app';

  @override
  String get about => 'Acerca de';

  @override
  String get ok => 'Aceptar';

  @override
  String get home => 'Inicio';

  @override
  String get games => 'Juegos';

  @override
  String get referAndEarn => 'Invita y gana';

  @override
  String get themes => 'Temas';

  @override
  String get version => 'Versión';

  @override
  String get developer => 'Desarrollador';

  @override
  String get contact => 'Contacto';

  @override
  String get learning => 'Aprendizaje';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Conecta conmigo';

  @override
  String get aboutDescription => 'DevOps Quiz ayuda a los estudiantes a prepararse para entrevistas y certificaciones con miles de preguntas cuidadosamente seleccionadas sobre Linux, Docker, Kubernetes, redes, Git, Jenkins, Terraform, Ansible y otras tecnologías DevOps.';

  @override
  String get quizResult => 'Resultado del cuestionario';

  @override
  String get outstanding => '¡Sobresaliente!';

  @override
  String get greatJob => '¡Buen trabajo!';

  @override
  String get goodEffort => '¡Buen esfuerzo!';

  @override
  String get keepPracticing => '¡Sigue practicando!';

  @override
  String get dontGiveUp => '¡No te rindas!';

  @override
  String get shareMessage1 => 'Obtuve';

  @override
  String get shareMessage2 => 'en el cuestionario de DevOps.';

  @override
  String get downloadApp => 'Descarga la aplicación:';

  @override
  String get score => 'Puntuación';

  @override
  String get points => 'Puntos';

  @override
  String get percentage => 'Porcentaje';

  @override
  String get bonus => 'Bonificación';

  @override
  String get perfectScoreBonus => 'Bonificación por puntuación perfecta';

  @override
  String get shareScore => 'Compartir puntuación';

  @override
  String get restartQuiz => 'Reiniciar cuestionario';

  @override
  String get backToCategories => 'Volver a categorías';

  @override
  String get greatProgress => '¡Bien hecho! Estás progresando mucho.';

  @override
  String get practiceMore => '¡Buen trabajo! Con un poco más de práctica obtendrás una puntuación aún mayor.';

  @override
  String get keepLearning => 'Sigue aprendiendo e inténtalo de nuevo. Mejorarás con la práctica.';

  @override
  String get everyExpertStarted => 'Todo experto empezó como principiante. ¡Practica y vuelve más fuerte!';

  @override
  String get quizInstructions => 'Instrucciones del cuestionario';

  @override
  String get instruction1 => 'Cada set contiene 25 preguntas.';

  @override
  String get instruction2 => 'Tienes 30 segundos por pregunta.';

  @override
  String get instruction3 => 'Verde = respuesta correcta.';

  @override
  String get instruction4 => 'Rojo = respuesta incorrecta.';

  @override
  String get instruction5 => 'No se puede cambiar la respuesta.';

  @override
  String get instruction6 => 'El botón Atrás es solo para revisar.';

  @override
  String get instruction7 => 'La puntuación se muestra al terminar.';

  @override
  String get instruction8 => 'Cada respuesta correcta otorga 10 puntos.';

  @override
  String excellentPerformance(Object expert) {
    return '¡Excelente desempeño! Eres un $expert.';
  }

  @override
  String get selectCategory => 'Seleccionar categoría';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Seleccionar set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Preguntas';

  @override
  String get noScoresYet => 'Aún no hay puntuaciones';

  @override
  String get pointsShort => 'pts';

  @override
  String get welcomeToDevOpsQuiz => 'Bienvenido a DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Hola $name';
  }

  @override
  String get challengeMode => 'Modo desafío';

  @override
  String get challenge => 'Desafío';

  @override
  String get question => 'Pregunta';

  @override
  String get reward => 'Recompensa';

  @override
  String get survivalMode => 'Modo supervivencia';

  @override
  String get speedChallenge => 'Desafío de velocidad';

  @override
  String get dailyChallenge => 'Desafío diario';

  @override
  String get ultimateChallenge => 'Desafío definitivo';

  @override
  String get timeLeft => 'Tiempo restante';

  @override
  String get completed => 'Completado';

  @override
  String get locked => 'Bloqueado';

  @override
  String get back => 'Atrás';

  @override
  String get next => 'Siguiente';

  @override
  String get submit => 'Enviar';

  @override
  String get achievements => 'Logros';

  @override
  String get streak => 'Racha';

  @override
  String get days => 'Días';

  @override
  String get tomorrowsReward => 'Recompensa de mañana';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 ¡Obtuve $score/$totalQuestions en el cuestionario #DevOps de hoy!\n\n🏆 Puntos: $earnedPoints\n🔥 Bonificación: $bonusPoints\n📊 Porcentaje: $percentage%\n\n¿Puedes superar mi puntuación?\n\nDescarga la app:';
  }

  @override
  String get gameUiSpinWheel => 'Girar la ruleta';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Gira y gana puntos extra';

  @override
  String get gameUiScratchCard => 'Tarjeta rasca y gana';

  @override
  String get gameUiScratchToRevealAReward => 'Rasca para descubrir una recompensa';

  @override
  String get gameUiLuckySlots => 'Tragamonedas de la suerte';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Gira los rodillos y gana puntos';

  @override
  String get gameUiMysteryDeal => 'Trato misterioso';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Elige una caja misteriosa y responde';

  @override
  String get gameUiMemoryMatch => 'Juego de memoria';

  @override
  String get gameUiMatchDevOpsPairs => 'Empareja pares de DevOps';

  @override
  String get gameUiWordGuess => 'Adivina la palabra';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Adivina palabras de DevOps a lo largo de los niveles';

  @override
  String get gameUiFindWords => 'Encuentra palabras';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Busca en una cuadrícula términos de DevOps ocultos';

  @override
  String get gameUiSpotTheDifference => 'Encuentra las diferencias';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Encuentra cinco cambios entre dos escenas ilustradas';

  @override
  String get gameUiJigsawPuzzle => 'Rompecabezas';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Reconstruye imágenes HD compartidas de animales y naturaleza';

  @override
  String get gameUiHighOrLow => 'Mayor o menor';

  @override
  String get gameUiBuildAStreak => 'Construye una racha';

  @override
  String get gameUiTrueOrFalseBlitz => 'Blitz de verdadero o falso';

  @override
  String get gameUiQuickAnswerQuiz => 'Cuestionario de respuesta rápida';

  @override
  String get gameUiCommandMatch => 'Emparejar comandos';

  @override
  String get gameUiMatchCommandsToMeanings => 'Relaciona comandos con sus significados';

  @override
  String get gameUiPortMaster => 'Maestro de puertos';

  @override
  String get gameUiGuessDefaultPorts => 'Adivina los puertos predeterminados';

  @override
  String get gameUiTicTacToe => 'Tres en raya';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X tres en raya contra la computadora';

  @override
  String get gameUiConnectFour => 'Conecta cuatro';

  @override
  String get gameUiDropFourDiscs => 'Deja caer cuatro discos';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Carrera contra bots';

  @override
  String get gameUiChess => 'Ajedrez';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Tablero de ajedrez con movimientos legales para dos jugadores';

  @override
  String get gameUiSnakeAndLadders => 'Serpientes y escaleras';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Juego de tablero con dados, serpientes y escaleras para dos jugadores';

  @override
  String get gameUiGames => 'Juegos 🎮';

  @override
  String get gameUiPlayEarn => 'Juega y gana';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => '¡Juega y gana puntos extra!';

  @override
  String get gameUiSearchGames => 'Buscar juegos';

  @override
  String get gameUiClearSearch => 'Borrar búsqueda';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Ningún juego coincide con \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Gira y gana puntos extra.';

  @override
  String get gameUiScratchToRevealYourReward => 'Rasca para descubrir tu recompensa.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Gira los rodillos y gana puntos.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Elige una caja misteriosa y responde correctamente para ganar puntos.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Empareja pares de DevOps para ganar puntos.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Adivina el término de DevOps en 6 intentos.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Busca en una cuadrícula términos de DevOps ocultos.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Desliza para encontrar palabras de DevOps en 500 niveles.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Encuentra cinco cambios entre dos escenas ilustradas.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Reconstruye imágenes HD compartidas de animales y naturaleza.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Construye una racha y asegura tus puntos.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Vence al reloj con respuestas rápidas.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Blitz de verdadero o falso 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Relaciona los comandos con lo que hacen.';

  @override
  String get gameUiCommandMatch670a76e => 'Emparejar comandos 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Adivina los puertos predeterminados con 3 vidas.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Maestro de puertos 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Juega O/X contra la computadora.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Deja caer cuatro discos en línea para ganar.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Corre con tus fichas contra tres bots.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Ajedrez local para dos jugadores con movimientos legales.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Juega una partida de ajedrez legal para dos jugadores.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Juego de tablero con dados para dos jugadores.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Carrera hasta el 100. Sube escaleras y esquiva serpientes.';

  @override
  String get gameUiPlay => 'Jugar';

  @override
  String get gameUiWheelStopped => '¡La ruleta se detuvo!';

  @override
  String get gameUiYourRewardIs => 'Tu recompensa es';

  @override
  String get gameUiPOINTS => 'PUNTOS';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Responde correctamente 1 pregunta del cuestionario para reclamar esta recompensa.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Respuesta incorrecta = recompensa perdida.';

  @override
  String get gameUiAnswerQuestion => 'Responder pregunta';

  @override
  String get gameUiSpinWheele449982 => '🎡 Girar la ruleta';

  @override
  String get gameUiDailySpin => 'Giro diario';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => '¡Gira la ruleta y luego responde una pregunta para reclamar tu recompensa!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Ya usaste el giro de hoy.';

  @override
  String get gameUiSpinning => 'Girando...';

  @override
  String get gameUiSPINNOW => 'GIRAR AHORA';

  @override
  String get gameUiCOMEBACKTOMORROW => 'VUELVE MAÑANA';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Recompensa de hoy: ⭐ $value1 puntos';
  }

  @override
  String get gameUiBackToGames => 'Volver a los juegos';

  @override
  String get gameUiSPIN => 'GIRAR';

  @override
  String get gameUiRewardRevealed => '¡Recompensa descubierta!';

  @override
  String get gameUiYouFound => 'Encontraste';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Tarjeta rasca y gana';

  @override
  String get gameUiDailyScratch => 'Rasca diario';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => '¡Rasca la tarjeta para descubrir la recompensa de hoy!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Ya usaste la tarjeta rasca y gana de hoy.';

  @override
  String get gameUiAlreadyScratched => 'Ya rascada';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Vuelve mañana para obtener otra recompensa.';

  @override
  String get gameUiYouRevealed => 'Descubriste';

  @override
  String get gameUiSCRATCHHERE => 'RASCA AQUÍ  👆';

  @override
  String get gameUiJACKPOT777 => '¡JACKPOT 777!';

  @override
  String get gameUiLucky777 => '¡777 de la suerte!';

  @override
  String get gameUiYourReward => 'Tu recompensa';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Tragamonedas de la suerte';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => '¡Gira los rodillos y luego responde una pregunta para reclamar la recompensa!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Ya jugaste hoy.';

  @override
  String get gameUiSPINNING => 'GIRANDO...';

  @override
  String get gameUiROLLNOW => 'TIRAR AHORA';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ¡PREMIO GORDO! ¡777 puntos disponibles!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'No se puede comprobar el estado de Trato Misterioso: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Caja $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 PUNTOS';
  }

  @override
  String get gameUiStartQuestion => 'Iniciar pregunta';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Trato Misterioso';

  @override
  String get gameUiMysteryDealCompleted => '¡Trato Misterioso completado!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Ya has jugado a Trato Misterioso hoy.';

  @override
  String get gameUiTodayYouWon => 'Hoy has ganado';

  @override
  String get gameUiTodaySReward => 'Recompensa de hoy';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 PUNTOS';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 PUNTOS PERDIDOS';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => '¡Vuelve mañana para otra caja misteriosa!';

  @override
  String get gameUiChooseYourMysteryBox => 'Elige tu caja misteriosa';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Cada caja contiene una recompensa oculta de entre 10 y 1000 puntos.';

  @override
  String get gameUiPickOnlyOneBox => '¡Elige solo una caja!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return '¡Los $value1 niveles completados!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return '¡Nivel $value1 completado!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Completado en $value1 movimientos.\n¡Has ganado $value2 puntos!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Completado en $value1 movimientos.\nEste nivel ya estaba superado.';
  }

  @override
  String get gameUiNextLevel => 'Siguiente nivel';

  @override
  String get gameUiDone => 'Hecho';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Parejas de memoria 🧠';

  @override
  String get gameUiAll100LevelsComplete => '¡Los 100 niveles completados!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Has completado todos los niveles de Parejas de memoria. ¡Bien jugado!';

  @override
  String get gameUiChooseLevel => 'Elegir nivel';

  @override
  String gameUiMoves(String value1) {
    return 'Movimientos: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Nivel $value1 de $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 parejas';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Memoriza el nivel $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Encuentra $value1 parejas iguales';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Logotipo de DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Capítulo 1 · Restaura el pipeline de compilación';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Capítulo 2 · Escala la plataforma en la nube';

  @override
  String get gameUiChapter3ProtectProduction => 'Capítulo 3 · Protege producción';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Usa las $value1 letras restantes para enviar.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => '¡Todos los niveles completados!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return '¡Nivel $value1 completado!';
  }

  @override
  String get gameUiTryAgain => 'Inténtalo de nuevo';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'La palabra era $value1. Has ganado $value2 puntos.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'La palabra era $value1. Has ganado $value2 puntos tras $value3 pista.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'La palabra era $value1. Has ganado $value2 puntos tras $value3 pistas.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'La palabra era $value1. El nivel $value2 aún te está esperando.';
  }

  @override
  String get gameUiFinish => 'Finalizar';

  @override
  String get gameUiNextLevel254fd73 => 'Siguiente nivel';

  @override
  String get gameUiRetryLevel => 'Reintentar nivel';

  @override
  String get gameUiHowToPlay => 'Cómo jugar';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Cada nivel tiene una palabra de DevOps. Las palabras de menos de cinco letras empiezan sin letras gratis; las más largas empiezan con una. Usa el panel de letras para formar la respuesta y pulsa Enter. Las pistas revelan otra letra y cuestan 20 puntos de tu saldo. Cada nivel completado otorga 100 puntos.';

  @override
  String get gameUiGotIt => 'Entendido';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return '¡Los $value1 niveles completados!';
  }

  @override
  String get gameUiEasy => 'Fácil';

  @override
  String get gameUiMedium => 'Medio';

  @override
  String get gameUiHard => 'Difícil';

  @override
  String get gameUiHowToPlay13a6b22 => 'Cómo jugar';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Nivel $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Recompensa $value1 pts · pistas usadas $value2';
  }

  @override
  String get gameUiHint20Pts => 'Pista · −20 pts';

  @override
  String get gameUiEnter => 'Enter';

  @override
  String get gameUiDelete => 'Borrar';

  @override
  String get gameUiDragThroughAWord => 'Arrastra sobre una palabra';

  @override
  String get gameUiDragThroughEachWord => 'Arrastra sobre cada palabra';

  @override
  String get gameUiReleaseToSelect => 'Suelta para seleccionar';

  @override
  String gameUiFound(String value1) {
    return 'Encontrada $value1';
  }

  @override
  String get gameUiNoWordThere => 'No hay ninguna palabra ahí';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 ya encontrada';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Busca $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => '¡Todos los niveles completados!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Has encontrado todas las palabras y ganado $value1 puntos.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Has encontrado todas las palabras. Este nivel ya estaba superado.';

  @override
  String get gameUiAll500LevelsComplete => '¡Los 500 niveles completados!';

  @override
  String get gameUiReviewLevels => 'Revisar niveles';

  @override
  String gameUiLeft(String value1) {
    return 'Quedan $value1';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 pts';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'No se pudo guardar el progreso. Inténtalo de nuevo.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return '¡Has ganado $value1 puntos!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Ya has completado esta imagen. No hay puntos adicionales al repetirla.';

  @override
  String get gameUiYouCompletedEveryPicture => '¡Has completado todas las imágenes!';

  @override
  String get gameUiLevels => 'Niveles';

  @override
  String get gameUiPictureB => 'Imagen B';

  @override
  String get gameUiPictureA => 'Imagen A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'No se pudo cargar la imagen. Reintentar';

  @override
  String get gameUiResetZoom => 'Restablecer zoom';

  @override
  String get gameUiZoomBothPictures => 'Ampliar ambas imágenes';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Pista · $value1 puntos por pista';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'No se pudo cargar el progreso. Reintentar';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Nivel $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => '¡Todas las diferencias encontradas!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Encuentra $count diferencias. Toca cada una en cualquiera de las imágenes.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Fallos: $value1  ·  Pistas: $value2 (−$value3 pts)  ·  $value4 niveles completados';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Siguiente nivel: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return '¡Puzle $value1 completado!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Imagen completada en $value1 movimientos. Has ganado $value2 puntos.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Imagen completada en $value1 movimientos.';
  }

  @override
  String get gameUiNextPuzzle => 'Siguiente puzle';

  @override
  String get gameUiAllPuzzlesComplete => 'Todos los puzles completados';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Pieza de puzle $value1 de $value2, colocada correctamente';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Pieza de puzle $value1 de $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Elegir puzle';

  @override
  String get gameUiShufflePieces => 'Mezclar piezas';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'No se puede cargar la imagen del rompecabezas.';

  @override
  String get gameUiPreviousPuzzle => 'Rompecabezas anterior';

  @override
  String gameUiPuzzle(String value1) {
    return 'Rompecabezas $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 movimientos';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Arrastra las piezas para intercambiarlas, o toca dos piezas.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 rompecabezas resueltos  ·  $value3 puntos cada uno';
  }

  @override
  String get gameUiGameOver => 'Fin del juego';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'El número era $value1.\nRacha: $value2\n¡Ganaste $value3 puntos!\n\n¡Vuelve mañana para tener otra oportunidad!';
  }

  @override
  String get gameUiHigherOrLower => 'Mayor o menor 📈';

  @override
  String get gameUiAlreadyPlayedToday => '¡Ya jugaste hoy!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Jugaste el $value1/$value2/$value3.\n\n¡Vuelve mañana para construir una nueva racha!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Ya has jugado hoy.\n\n¡Vuelve mañana para tener otra oportunidad!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Racha: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Puntos: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => '¿El siguiente número será mayor o menor?';

  @override
  String get gameUiLower => 'Menor';

  @override
  String get gameUiHigher => 'Mayor';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Blitz de verdadero o falso ⚡';

  @override
  String get gameUiTimeSUp => '¡Se acabó el tiempo!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Respuestas correctas: $value1\nMejor racha: $value2\n$value3¡Ganaste $value4 puntos!\n\n¡Vuelve mañana para otra ronda!';
  }

  @override
  String get gameUiStreakBonus20 => 'Bono de racha: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => '¿La respuesta mostrada es verdadera o falsa?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 preguntas en $value2 categorías';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Tienes $value1 segundos. Cada respuesta correcta otorga $value2 puntos. Una respuesta incorrecta cuesta $value3 segundos. Alcanza una racha de 5 para obtener un bono de +20.';
  }

  @override
  String get gameUiRoundTimer => 'Temporizador de ronda';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 segundos';
  }

  @override
  String get gameUiStart => 'Iniciar';

  @override
  String get gameUiTrue => 'Verdadero';

  @override
  String get gameUiFalse => 'Falso';

  @override
  String get gameUiCommandMatch26b0e70 => 'Emparejar comandos 🔗';

  @override
  String get gameUiAllMatched => '¡Todo emparejado!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Errores: $value1\n¡Ganaste $value2 puntos!\n\n¡Vuelve mañana para nuevos comandos!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Ronda $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Toca un comando y luego toca su significado.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Ahora toca el significado correspondiente.';

  @override
  String get gameUiPortMaster9c730cf => 'Maestro de puertos 🔌';

  @override
  String get gameUiPortMastera796b69 => '¡Maestro de puertos!';

  @override
  String get gameUiOutOfLives => 'Sin vidas';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Respuestas correctas: $value1\n¡Ganaste $value2 puntos!\n\n¡Vuelve mañana para otra ronda!';
  }

  @override
  String get gameUiYouEarned10Points => '¡Ganaste 10 puntos!';

  @override
  String get gameUiYouWin => '¡Ganaste!';

  @override
  String gameUiWins(String value1) {
    return '¡$value1 gana!';
  }

  @override
  String get gameUiXWins => '¡X gana!';

  @override
  String gameUiXWins8443126(String value1) {
    return '¡$value1 (X) gana!';
  }

  @override
  String get gameUiComputerWins => 'Gana la computadora';

  @override
  String get gameUiOWins => '¡O gana!';

  @override
  String get gameUiPlayer2OWins => '¡El jugador 2 (O) gana!';

  @override
  String get gameUiItSADraw => 'Es un empate';

  @override
  String get gameUiYourTurn => 'Tu turno';

  @override
  String gameUiSTurn(String value1) {
    return 'Turno de $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'La computadora está pensando';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Le toca mover al jugador $value1';
  }

  @override
  String gameUiToMove(String value1) {
    return 'Le toca mover a $value1';
  }

  @override
  String get gameUiPlayer2ToMove => 'Le toca mover al jugador 2';

  @override
  String get gameUiNewRound => 'Nueva ronda';

  @override
  String get gameUiVsComputer => 'Contra la computadora';

  @override
  String get gameUi2Players => '2 jugadores';

  @override
  String get gameUiYou => 'Tú';

  @override
  String get gameUiDraws => 'Empates';

  @override
  String get gameUiPlayer2 => 'Jugador 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Casilla $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Jugar de nuevo';

  @override
  String get gameUiConnectFourWin20Points => 'Victoria en Conecta 4: ¡20 puntos!';

  @override
  String get gameUiBotWins => '¡El bot gana!';

  @override
  String get gameUiRed => 'Rojo';

  @override
  String get gameUiYellow => 'Amarillo';

  @override
  String get gameUiBoardFullDraw => 'Tablero lleno — empate';

  @override
  String get gameUiBotIsThinking => 'El bot está pensando';

  @override
  String get gameUiBotTurn => 'Turno del bot';

  @override
  String get gameUiNewGame => 'Nuevo juego';

  @override
  String get gameUiVsBot => 'Contra el bot';

  @override
  String get gameUi2Player => '2 jugadores';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Juega contra el bot · toca una columna para soltar una ficha';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Dos jugadores · toca una columna para soltar una ficha';

  @override
  String gameUiColumn(String value1) {
    return 'Columna $value1';
  }

  @override
  String get gameUiYouRed => 'Tú · Rojo';

  @override
  String get gameUiRedPlayer1 => 'Rojo · Jugador 1';

  @override
  String get gameUiBotYellow => 'Bot · Amarillo';

  @override
  String get gameUiYellowPlayer2 => 'Amarillo · Jugador 2';

  @override
  String get gameUiLudoMatchStats => 'Estadísticas de partidas de Ludo';

  @override
  String get gameUiNoCompletedMatchesYet => 'Aún no hay partidas completadas.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Jugadas $value1  ·  Ganadas $value2  ·  Perdidas $value3';
  }

  @override
  String get gameUiClose => 'Cerrar';

  @override
  String get gameUiLudoChampionYouEarned50Points => '¡Campeón de Ludo! Ganaste 50 puntos.';

  @override
  String get gameUiNewLudoGame => 'Nuevo juego de Ludo';

  @override
  String get gameUiBotOpponents => 'Oponentes bot';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Iniciar una nueva partida reemplaza tu juego guardado.';

  @override
  String get gameUiCancel => 'Cancelar';

  @override
  String get gameUiStartGame => 'Iniciar juego';

  @override
  String get gameUiPlayerColours => 'Colores de los jugadores';

  @override
  String get gameUiApply => 'Aplicar';

  @override
  String get gameUiMatchStats => 'Estadísticas de partidas';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 gana por jaque mate';
  }

  @override
  String get gameUiBlack => 'Negro';

  @override
  String get gameUiWhite => 'Blanco';

  @override
  String get gameUiComputerWinsByCheckmate => 'La computadora gana por jaque mate';

  @override
  String get gameUiYouWinByCheckmate => 'Ganas por jaque mate';

  @override
  String get gameUiDrawByStalemate => 'Empate por rey ahogado';

  @override
  String get gameUiDraw => 'Empate';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Jaque';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => '¡Jaque mate! Has ganado 50 puntos.';

  @override
  String get gameUiStartANewGame => '¿Empezar una partida nueva?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Cambiar el modo de jugadores reemplaza la partida guardada.';

  @override
  String get gameUiComputer => 'Ordenador';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Blancas / Jugador 2 · Negras';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Tú juegas con blancas · El ordenador juega con negras';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Blancas) · Ordenador (Negras)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Tú juegas con negras · El ordenador juega con blancas';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Negras) · Ordenador (Blancas)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 tira primero';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 vuelve a tirar';
  }

  @override
  String gameUiToRoll(String value1) {
    return 'Le toca tirar a $value1';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Victoria en Serpientes y Escaleras: ¡100 puntos!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Cambiar los jugadores reemplaza la partida guardada.';

  @override
  String get gameUiStartANewLevel => '¿Empezar un nivel nuevo?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Cambiar de nivel reemplaza la partida guardada.';

  @override
  String get gameUiChangeLevel => 'Cambiar de nivel';

  @override
  String get gameUiPlayers => 'Jugadores';

  @override
  String get gameUiPlayAgainstBot => 'Jugar contra el bot';

  @override
  String get gameUi3Players => '3 jugadores';

  @override
  String get gameUi4Players => '4 jugadores';

  @override
  String get gameUiLevel1709305 => 'Nivel';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Nivel $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 jugadores · Nivel $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Tirar';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 en $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'No se pudo cargar la pregunta: $value1';
  }

  @override
  String get gameUiCorrectAnswer => '¡Respuesta correcta!';

  @override
  String get gameUiWrongAnswer => 'Respuesta incorrecta';

  @override
  String get gameUiYouClaimedYourReward => '¡Has reclamado tu recompensa!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Añadido a tus puntos totales.';

  @override
  String get gameUiTheCorrectAnswerWas => 'La respuesta correcta era:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Se perdió la recompensa de $value1 puntos.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'No se descontaron tus puntos actuales.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Vuelve mañana e inténtalo de nuevo.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'No se pudo cargar la pregunta.';

  @override
  String get gameUiYourReward677fa6e => 'Tu recompensa';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 PUNTOS';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => '¡Responde correctamente para reclamarla!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Vuelve mañana para otra ronda.';

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
    return '$value1: elige una ficha';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: tira el dado';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dado $value1';
  }

  @override
  String get gameUiRollDice => 'Tirar el dado';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 ficha $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Jugador $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'Necesitas 20 puntos para usar una pista.';

  @override
  String get gameUiHintPurchaseFailed => 'No se pudo comprar una pista. Inténtalo de nuevo.';

  @override
  String get gameUiChessKing => 'rey';

  @override
  String get gameUiChessQueen => 'dama';

  @override
  String get gameUiChessRook => 'torre';

  @override
  String get gameUiChessBishop => 'alfil';

  @override
  String get gameUiChessKnight => 'caballo';

  @override
  String get gameUiChessPawn => 'peón';

  @override
  String get gameUiChessEmpty => 'vacía';

  @override
  String get gameSceneLampAndFlowers => 'Lámpara y flores';

  @override
  String get gameSceneGardenFriends => 'Amigos del jardín';

  @override
  String get gameSceneUnderwaterExplorers => 'Exploradores submarinos';

  @override
  String get gameSceneOceanOrca => 'Orca del océano';

  @override
  String get gameSceneFoxInTheMeadow => 'Zorro en el prado';

  @override
  String get gameSceneYellowSubmarine => 'Submarino amarillo';

  @override
  String get gameSceneTurkeyInTheClearing => 'Pavo en el claro';

  @override
  String get gameSceneSafariWateringHole => 'Abrevadero del safari';

  @override
  String get gameSceneJungleCompanions => 'Compañeros de la selva';

  @override
  String get gameSceneGoldenPuppyGarden => 'Jardín del cachorro dorado';

  @override
  String get gameSceneSeaTurtleReef => 'Arrecife de la tortuga marina';

  @override
  String get gameSceneCoralReefFriends => 'Amigos del arrecife de coral';

  @override
  String get gameSceneSharedClownfish => 'Pez payaso compartido';

  @override
  String get gameSceneLittleDinosaur => 'Dinosaurio pequeño';

  @override
  String get gameSceneSafariCompanions => 'Compañeros de safari';

  @override
  String get gameSceneSwirlingFlowers => 'Flores en remolino';

  @override
  String get gameSceneGardenKitten => 'Gatito del jardín';

  @override
  String get gameSceneBlueOcean => 'Océano azul';

  @override
  String get gameSceneCastlePrincess => 'Princesa del castillo';

  @override
  String get gameSceneRedCar => 'Coche rojo';

  @override
  String get gameSceneGardenPuppy => 'Cachorro del jardín';

  @override
  String get gameSceneSpaceExplorer => 'Explorador espacial';

  @override
  String get gameSceneEnchantedReadingForest => 'Bosque encantado de lectura';

  @override
  String get gameSceneDevopsInfinityCycle => 'Ciclo infinito de DevOps';

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
  String get gameSceneWinterFestivalFair => 'Feria del festival de invierno';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Primer plano del héroe acorazado';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Héroe acorazado de carmesí';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Flores oscuras de plumeria';

  @override
  String get gameSceneMangroveBoardwalk => 'Pasarela del manglar';

  @override
  String get gameSceneTropicalPalmReflections => 'Reflejos de palmeras tropicales';

  @override
  String get gameSceneMaskedFigureInShadow => 'Figura enmascarada en la sombra';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Compañero eléctrico al atardecer';

  @override
  String get gameSceneTrainerAndFireDragon => 'Entrenador y dragón de fuego';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Máscara de lucha libre incrustada de joyas';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Luchador en pinceladas rojas';

  @override
  String get gameSceneWrestlingChampionSalute => 'Saludo del campeón de lucha libre';

  @override
  String get gameSceneMorningAtTheBakery => 'Mañana en la panadería';

  @override
  String get gameSceneGreenhousePottingBench => 'Mesa de trasplante del invernadero';

  @override
  String get gameSceneHarborFishingBoat => 'Barco pesquero del puerto';

  @override
  String get gameSceneAtticObservatory => 'Observatorio en el desván';

  @override
  String get gameSceneToyMakerSWorkshop => 'Taller del juguetero';

  @override
  String get gameSceneWoodlandCampsite => 'Campamento en el bosque';

  @override
  String get gameSceneAfternoonMusicRoom => 'Sala de música por la tarde';

  @override
  String get gameSceneSeasideIceCreamStand => 'Puesto de helados junto al mar';

  @override
  String get gameSceneLibraryReadingNook => 'Rincón de lectura de la biblioteca';

  @override
  String get gameSceneSewingStudio => 'Estudio de costura';

  @override
  String get gameSceneFruitMarket => 'Mercado de frutas';

  @override
  String get gameSceneKoiCourtyard => 'Patio de los koi';

  @override
  String get gameSceneArtistSAtelier => 'Taller del artista';

  @override
  String get gameSceneMountainRailway => 'Ferrocarril de montaña';

  @override
  String get gameSceneCountryKitchen => 'Cocina campestre';

  @override
  String get gameScenePotteryWorkshop => 'Taller de cerámica';

  @override
  String get gameSceneBeachPicnic => 'Picnic en la playa';

  @override
  String get gameSceneFlowerShop => 'Floristería';

  @override
  String get gameSceneClockmakerSWorkshop => 'Taller del relojero';

  @override
  String get gameSceneRainyCafeTerrace => 'Terraza de cafetería bajo la lluvia';

  @override
  String get gameSceneCastleHerbGarden => 'Jardín de hierbas del castillo';

  @override
  String get gameSceneClassroomArtCorner => 'Rincón de arte del aula';

  @override
  String get gameSceneAquariumShop => 'Tienda de acuarios';

  @override
  String get gameSceneAutumnLeafCollection => 'Colección de hojas de otoño';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Árbol solitario bajo la luna';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Flor otoñal en una rama';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Zorro entre hojas verdes';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Canoa en un lago cubierto de nenúfares';

  @override
  String get gameSceneDewDropsOnALeaf => 'Gotas de rocío en una hoja';

  @override
  String get gameSceneStagInATurquoiseLake => 'Ciervo en un lago turquesa';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Bicicleta bajo una luna naranja';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Tigre blanco sobre el valle';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Dos árboles en aguas azules';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Pesca junto a un perro fiel';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Lirios junto a un lago de montaña';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Ciervo en la orilla rosada del río';

  @override
  String get gameSceneTropicalHutAtSunset => 'Cabaña tropical al atardecer';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Zorro contemplando un valle alpino';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Atardecer a través de un bosquecillo encantado';

  @override
  String get learningControlTitle => 'Aprender DevOps';

  @override
  String get learningControlAllCategories => 'Todas las categorías';

  @override
  String get learningControlSearchCards => 'Buscar tarjetas';

  @override
  String get learningControlClearSearch => 'Borrar búsqueda';

  @override
  String get learningControlCategory => 'Categoría';

  @override
  String get learningControlShowAll => 'Mostrar todas las tarjetas';

  @override
  String learningControlShowSaved(int count) {
    return 'Mostrar tarjetas guardadas ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Desactivar el orden aleatorio';

  @override
  String get learningControlShuffleOn => 'Mezclar tarjetas';

  @override
  String get learningControlAutoOff => 'Detener el cambio automático';

  @override
  String get learningControlAutoOn => 'Cambio automático cada 10 segundos';

  @override
  String get learningControlNoSaved => 'Aún no hay tarjetas guardadas';

  @override
  String get learningControlNoMatches => 'No hay tarjetas coincidentes';

  @override
  String get learningControlResetFilters => 'Restablecer filtros';

  @override
  String get learningControlPrevious => 'Anterior';

  @override
  String get learningControlNext => 'Siguiente';

  @override
  String get learningControlProgress => 'Progreso';

  @override
  String get learningControlRemoveSaved => 'Quitar de guardados';

  @override
  String get learningControlSaveCard => 'Guardar tarjeta';

  @override
  String get learningControlExample => 'Ejemplo';

  @override
  String get learningControlCopyExample => 'Copiar ejemplo';

  @override
  String get learningControlExampleCopied => 'Ejemplo copiado';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Nivel $value1 completado';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Jugar nivel $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Completa el nivel $value1 para desbloquear';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Bonificación de inicio de sesión diario';

  @override
  String get sharedDialogThanksForComingBack => '¡Gracias por volver!';

  @override
  String get sharedDialogDailyRewardAdded => 'Tu recompensa diaria se ha añadido a tu total de puntos.';

  @override
  String get sharedDialogAwesome => '¡Genial!';

  @override
  String get accountWelcomeGuest => 'Invitado';

  @override
  String get accountWelcomeGuestUser => 'Usuario invitado';

  @override
  String get accountWelcomeUser => 'Usuario';

  @override
  String get accountWelcomePlayingAsGuest => 'Jugando como invitado';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Conectar cuenta de Google';

  @override
  String get accountWelcomeGoogleConnected => '¡Cuenta de Google conectada correctamente! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Se canceló el inicio de sesión.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Error al conectar: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Cerrar sesión';

  @override
  String get accountWelcomeSignOutTitle => '¿Cerrar sesión?';

  @override
  String get accountWelcomeSignOutMessage => '¿Seguro que quieres cerrar sesión? Tendrás que volver a iniciar sesión para acceder a tu progreso guardado.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Error al cerrar sesión: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ ¿Restablecer los datos de la aplicación?';

  @override
  String get accountWelcomeResetAppMessage => 'Esto eliminará de forma permanente TODOS tus puntos, rachas, historial de juegos y ajustes. Se cerrará tu sesión y volverás a la pantalla de inicio. Esta acción no se puede deshacer.';

  @override
  String get accountWelcomeResetEverything => 'Restablecer todo';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Error al restablecer: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Cancelar';

  @override
  String get accountWelcomeResetAppData => 'Restablecer datos de la aplicación';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Borrar todos los puntos, rachas y ajustes';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz App';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Traducción aún no disponible';

  @override
  String get accountWelcomeContinueWithGoogle => 'Continuar con Google';

  @override
  String get accountWelcomeSigningIn => 'Iniciando sesión...';

  @override
  String get accountWelcomeOr => 'O';

  @override
  String get accountWelcomeContinueAsGuest => 'Continuar como invitado';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Puedes iniciar sesión más tarde desde tu perfil.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Puedes empezar como invitado e iniciar sesión más tarde.';

  @override
  String get accountWelcomeGreetingGuest => 'Bienvenido';

  @override
  String accountWelcomeUserToast(String value1) {
    return '¡Bienvenido, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'El inicio de sesión con Google se completó, pero no se devolvió ninguna cuenta de usuario.';

  @override
  String get accountWelcomeErrorEmailExists => 'Este correo electrónico ya tiene una cuenta que usa otro método de inicio de sesión.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Esta cuenta de Google ya está vinculada a otra cuenta.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'La credencial de autenticación de Google no es válida o ha caducado.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Esta cuenta ha sido deshabilitada.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'El inicio de sesión con Google no está habilitado actualmente.';

  @override
  String get accountWelcomeErrorNetwork => 'Error de red. Comprueba tu conexión a internet e inténtalo de nuevo.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Demasiados intentos de inicio de sesión. Espera e inténtalo de nuevo.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'No hay información adicional del error.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Error en el inicio de sesión con Google.\n\nCódigo: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Error de inicio de sesión con Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'No se puede continuar como invitado. Inténtalo de nuevo.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'El inicio de sesión con Google estará disponible pronto.';

  @override
  String get accountWelcomeLoginTagline => 'Aprende • Practica • Compite • Gana';

  @override
  String get accountWelcomeCountryRegion => 'País / región';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'País / región: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Buscar país';

  @override
  String get accountWelcomeCountryNotSelected => 'No seleccionado';

  @override
  String get accountWelcomeWhyDevOpsQuiz => '¿Por qué DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => 'Más de 3000 preguntas de práctica';

  @override
  String get accountWelcomeFeatureLanguages => 'Compatibilidad con varios idiomas';

  @override
  String get accountWelcomeFeatureStreaks => 'Rachas y clasificaciones';

  @override
  String get accountWelcomeFeatureGames => 'Juegos y desafíos';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud y DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonificaciones y recompensas';

  @override
  String get accountWelcomePracticeOnTheGo => 'Practica donde quieras';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Instala la aplicación de Android y aprende sin conexión, en cualquier lugar.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Consíguelo en Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Racha de $days días';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Mantén una racha de $days días.';
  }

  @override
  String get achLocYearStreakTitle => 'Racha de 1 año';

  @override
  String get achLocFirstQuizTitle => 'Primer cuestionario';

  @override
  String get achLocFirstQuizDescription => 'Completa tu primer cuestionario.';

  @override
  String get achLocQuiz10Title => 'Explorador de cuestionarios';

  @override
  String get achLocQuiz10Description => 'Completa 10 cuestionarios.';

  @override
  String get achLocPoints1000Title => '1000 puntos';

  @override
  String get achLocPoints1000Description => 'Gana 1000 puntos en total en Quiz.';

  @override
  String get achLocPerfectScoreTitle => 'Puntuación perfecta';

  @override
  String get achLocPerfectScoreDescription => 'Obtén un 100 % en cualquier cuestionario.';

  @override
  String get achLocQuiz25Title => 'Entusiasta de los cuestionarios';

  @override
  String get achLocQuiz25Description => 'Completa 25 cuestionarios.';

  @override
  String get achLocQuiz50Title => 'Maestro de los cuestionarios';

  @override
  String get achLocQuiz50Description => 'Completa 50 cuestionarios.';

  @override
  String get achLocQuiz100Title => 'Club del centenar';

  @override
  String get achLocQuiz100Description => 'Completa 100 cuestionarios.';

  @override
  String get achLocQuiz250Title => 'Leyenda de los cuestionarios';

  @override
  String get achLocQuiz250Description => 'Completa 250 cuestionarios.';

  @override
  String get achLocPoints5000Title => '5000 puntos';

  @override
  String get achLocPoints5000Description => 'Gana 5000 puntos en total.';

  @override
  String get achLocPoints10000Title => '10 000 puntos';

  @override
  String get achLocPoints10000Description => 'Gana 10 000 puntos en total.';

  @override
  String get achLocPoints50000Title => '50 000 puntos';

  @override
  String get achLocPoints50000Description => 'Gana 50 000 puntos en total.';

  @override
  String get achLocPoints100000Title => '100 000 puntos';

  @override
  String get achLocPoints100000Description => 'Gana 100 000 puntos en total.';

  @override
  String get achLocDaily1Title => 'Inicio diario';

  @override
  String get achLocDaily1Description => 'Completa tu primer Cuestionario diario.';

  @override
  String get achLocDaily7Title => 'Hábito diario';

  @override
  String get achLocDaily7Description => 'Completa 7 Cuestionarios diarios.';

  @override
  String get achLocDaily30Title => 'Campeón diario';

  @override
  String get achLocDaily30Description => 'Completa 30 Cuestionarios diarios.';

  @override
  String get achLocSets5Title => 'Iniciado en conjuntos';

  @override
  String get achLocSets5Description => 'Termina 5 conjuntos de cuestionarios.';

  @override
  String get achLocSets25Title => 'Coleccionista de conjuntos';

  @override
  String get achLocSets25Description => 'Termina 25 conjuntos de cuestionarios.';

  @override
  String get achLocSets50Title => 'Maestro de conjuntos';

  @override
  String get achLocSets50Description => 'Termina 50 conjuntos de cuestionarios.';

  @override
  String get achLocSets100Title => 'Leyenda de conjuntos';

  @override
  String get achLocSets100Description => 'Termina 100 conjuntos de cuestionarios.';

  @override
  String get achLocCert1Title => 'Primer certificado';

  @override
  String get achLocCert1Description => 'Gana tu primer certificado de categoría.';

  @override
  String get achLocCert5Title => 'Profesional certificado';

  @override
  String get achLocCert5Description => 'Gana 5 certificados de categoría.';

  @override
  String get achLocCert21Title => 'Totalmente certificado';

  @override
  String get achLocCert21Description => 'Gana un certificado en las 21 categorías.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Gratis del 7 al 14 de febrero de cada año';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Gratis del 8 al 15 de marzo de cada año';

  @override
  String get achLocThemeLight => 'Claro';

  @override
  String get achLocThemeDark => 'Oscuro';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Atardecer';

  @override
  String get achLocThemeCoffee => 'Café';

  @override
  String get achLocThemeTea => 'Té';

  @override
  String get achLocThemeOcean => 'Océano';

  @override
  String get achLocThemeSolarFlare => 'Llamarada solar';

  @override
  String get achLocThemeForest => 'Bosque';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Púrpura Cibernético';

  @override
  String get achLocThemeInferno => 'Infierno';

  @override
  String get achLocThemeMidnight => 'Medianoche';

  @override
  String get achLocThemeDarkGrey => 'Gris Oscuro';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Día de San Valentín';

  @override
  String get achLocThemeDqSpecial => 'Especial DQ';

  @override
  String get achLocThemeArmy => 'Ejército';

  @override
  String get achLocThemeSpiderMan => 'Spider-Man';

  @override
  String get achLocThemeKrrish => 'Krrish';

  @override
  String get achLocThemeIronMan => 'Iron Man';

  @override
  String get achLocThemeCaptainAmerica => 'Capitán América';

  @override
  String get achLocThemeThor => 'Thor';

  @override
  String get achLocThemeHulk => 'Hulk';

  @override
  String get achLocThemeBlackWidow => 'Viuda Negra';

  @override
  String get achLocThemeHawkeye => 'Ojo de Halcón';

  @override
  String get achLocThemeBlackPanther => 'Pantera Negra';

  @override
  String get achLocThemeScarletWitch => 'Bruja Escarlata';

  @override
  String get achLocThemeVision => 'Visión';

  @override
  String get achLocThemeAntMan => 'Ant-Man';

  @override
  String get achLocThemeCaptainMarvel => 'Capitana Marvel';

  @override
  String get achLocThemeDoctorStrange => 'Doctor Strange';

  @override
  String get achLocThemeAvengers => 'Vengadores';

  @override
  String get achLocThemeBatman => 'Batman';

  @override
  String get achLocThemeSuperman => 'Superman';

  @override
  String get achLocThemeWonderWoman => 'Mujer Maravilla';

  @override
  String get achLocThemeFlash => 'Flash';

  @override
  String get achLocThemeAquaman => 'Aquaman';

  @override
  String get achLocThemeGreenLantern => 'Linterna Verde';

  @override
  String get achLocThemeCyborg => 'Cyborg';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'Héroes de DC';

  @override
  String get achLocThemeRainbow => 'Arcoíris';

  @override
  String get achLocThemeDiamond => 'Diamante';

  @override
  String get achLocThemeLegendary => 'Legendario';

  @override
  String get gameHintCmd001LsLa => 'Lista todos los archivos con detalles';

  @override
  String get gameHintCmd002Grep => 'Busca texto mediante un patrón';

  @override
  String get gameHintCmd003Chmod => 'Cambia los permisos de archivos';

  @override
  String get gameHintCmd004DfH => 'Muestra el espacio libre en disco';

  @override
  String get gameHintCmd005TailF => 'Sigue un archivo de registro en crecimiento';

  @override
  String get gameHintCmd006PsAux => 'Lista los procesos en ejecución';

  @override
  String get gameHintCmd007GitClone => 'Copia un repositorio remoto';

  @override
  String get gameHintCmd008GitStash => 'Aparta los cambios sin confirmar';

  @override
  String get gameHintCmd009GitRebase => 'Reaplica commits sobre una nueva base';

  @override
  String get gameHintCmd010GitBlame => 'Muestra quién cambió cada línea';

  @override
  String get gameHintCmd011DockerPs => 'Lista los contenedores en ejecución';

  @override
  String get gameHintCmd012DockerBuild => 'Crea una imagen a partir de un Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Muestra la salida del contenedor';

  @override
  String get gameHintCmd014DockerExec => 'Ejecuta un comando dentro de un contenedor';

  @override
  String get gameHintCmd015KubectlGetPods => 'Lista los pods de un espacio de nombres';

  @override
  String get gameHintCmd016KubectlApply => 'Crea recursos a partir de un archivo';

  @override
  String get gameHintCmd017KubectlDescribe => 'Muestra información detallada del recurso';

  @override
  String get gameHintCmd018KubectlScale => 'Cambia el número de réplicas';

  @override
  String get gameHintCmd019TerraformInit => 'Descarga proveedores y prepara el entorno';

  @override
  String get gameHintCmd020TerraformPlan => 'Previsualiza los cambios de infraestructura';

  @override
  String get gameHintCmd021TerraformApply => 'Crea o actualiza la infraestructura';

  @override
  String get gameHintCmd022TerraformDestroy => 'Elimina la infraestructura administrada';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Ejecuta un playbook de automatización';

  @override
  String get gameHintCmd024Ping => 'Prueba la accesibilidad con ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Muestra la ruta hasta un host';

  @override
  String get gameHintCmd026Curl => 'Transfiere datos desde una URL';

  @override
  String get gameHintCmd027Ssh => 'Inicia sesión de forma segura en una máquina remota';

  @override
  String get gameHintCmd028CrontabE => 'Edita las tareas programadas';

  @override
  String get gameHintCmd029SystemctlStatus => 'Comprueba el estado de un servicio';

  @override
  String get gameHintCmd030HelmInstall => 'Despliega un chart en Kubernetes';

  @override
  String get gameHintWord001Git => 'Registra los cambios en el código fuente.';

  @override
  String get gameHintWord002Aws => 'La plataforma en la nube de Amazon.';

  @override
  String get gameHintWord003Api => 'Un contrato que permite que los sistemas de software se comuniquen.';

  @override
  String get gameHintWord004Dns => 'Traduce nombres de dominio en direcciones IP.';

  @override
  String get gameHintWord005Cli => 'Una interfaz de texto para ejecutar comandos.';

  @override
  String get gameHintWord006Cpu => 'El procesador que ejecuta las instrucciones.';

  @override
  String get gameHintWord007Ram => 'Memoria temporal usada por los programas en ejecución.';

  @override
  String get gameHintWord008Ssh => 'Protocolo seguro para acceso remoto a la shell.';

  @override
  String get gameHintWord009Yaml => 'Un formato de serialización de datos legible para humanos.';

  @override
  String get gameHintWord010Linux => 'Núcleo y familia de sistemas operativos de código abierto.';

  @override
  String get gameHintWord011Bash => 'Una shell de comandos de Unix muy popular.';

  @override
  String get gameHintWord012Cloud => 'Computación bajo demanda entregada a través de una red.';

  @override
  String get gameHintWord013Docker => 'Una plataforma para crear y ejecutar contenedores.';

  @override
  String get gameHintWord014Azure => 'La plataforma en la nube de Microsoft.';

  @override
  String get gameHintWord015Python => 'Un lenguaje de scripting y programación muy utilizado.';

  @override
  String get gameHintWord016Github => 'Un popular servicio alojado de colaboración con Git.';

  @override
  String get gameHintWord017Bgp => 'Protocolo de enrutamiento que intercambia rutas entre sistemas autónomos.';

  @override
  String get gameHintWord018Jenkins => 'Un servidor de automatización muy usado para CI.';

  @override
  String get gameHintWord019Port => 'Un punto final numerado usado por los servicios de red.';

  @override
  String get gameHintWord020Proxy => 'Un servidor que reenvía solicitudes en nombre de los clientes.';

  @override
  String get gameHintWord021Cache => 'Un almacén rápido para datos reutilizados con frecuencia.';

  @override
  String get gameHintWord022Cron => 'Planificador de Unix para comandos recurrentes.';

  @override
  String get gameHintWord023Bicep => 'Lenguaje declarativo de Azure para infraestructura como código.';

  @override
  String get gameHintWord024Apigee => 'Plataforma de Google Cloud para la gestión centralizada de API.';

  @override
  String get gameHintWord025Root => 'Cuenta de administrador con privilegios en sistemas tipo Unix.';

  @override
  String get gameHintWord026Nginx => 'Servidor web y proxy inverso.';

  @override
  String get gameHintWord027Redis => 'Almacén de datos en memoria, a menudo usado como caché.';

  @override
  String get gameHintWord028Mysql => 'Popular sistema de base de datos relacional.';

  @override
  String get gameHintWord029Ruby => 'Lenguaje de programación usado por herramientas como Chef.';

  @override
  String get gameHintWord030Helm => 'Gestor de paquetes habitual con Kubernetes.';

  @override
  String get gameHintWord031Pod => 'La unidad desplegable más pequeña en Kubernetes.';

  @override
  String get gameHintWord032Image => 'Plantilla de solo lectura usada para crear un contenedor.';

  @override
  String get gameHintWord033Build => 'Crea un artefacto a partir del código fuente y las dependencias.';

  @override
  String get gameHintWord034Deploy => 'Publica una aplicación en un entorno.';

  @override
  String get gameHintWord035Terraform => 'Herramienta de HashiCorp para infraestructura como código.';

  @override
  String get gameHintWord036Ansible => 'Herramienta de automatización y configuración sin agentes.';

  @override
  String get gameHintWord037Kubectl => 'Cliente de línea de comandos para Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Abreviatura de Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Modelo operativo que usa Git como fuente de verdad.';

  @override
  String get gameHintWord040Pipeline => 'Secuencia automatizada de etapas de compilación, prueba y lanzamiento.';

  @override
  String get gameHintWord041Container => 'Proceso aislado empaquetado con sus dependencias.';

  @override
  String get gameHintWord042Cluster => 'Grupo de máquinas gestionadas como un sistema compartido.';

  @override
  String get gameHintWord043Ingress => 'Objeto de la API de Kubernetes para el enrutamiento HTTP externo.';

  @override
  String get gameHintWord044Firewall => 'Filtra el tráfico de red según reglas de seguridad.';

  @override
  String get gameHintWord045Subnet => 'Subdivisión lógica de una red IP.';

  @override
  String get gameHintWord046Gateway => 'Nodo de red que conecta redes distintas.';

  @override
  String get gameHintWord047Router => 'Reenvía paquetes entre redes.';

  @override
  String get gameHintWord048Switch => 'Conecta dispositivos dentro de una red local.';

  @override
  String get gameHintWord049Repository => 'Almacenamiento gestionado para código fuente o paquetes.';

  @override
  String get gameHintWord050Systemd => 'Sistema de inicio y gestor de servicios de Linux.';

  @override
  String get gameHintWord051Journalctl => 'Comando usado para leer los registros del journal de systemd.';

  @override
  String get gameHintWord052Permission => 'Regla que controla quién puede leer, escribir o ejecutar.';

  @override
  String get gameHintWord053Alloydb => 'Base de datos administrada de Google Cloud compatible con PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Objeto de Kubernetes para configuración no secreta.';

  @override
  String get gameHintWord055Secret => 'Objeto de Kubernetes destinado a datos sensibles.';

  @override
  String get gameHintWord056Persistent => 'Describe un almacenamiento que sobrevive al reinicio de una carga de trabajo.';

  @override
  String get gameHintWord057Volume => 'Almacenamiento del sistema de archivos montado en un contenedor.';

  @override
  String get gameHintWord058Storage => 'Lugar persistente para archivos, objetos o bloques.';

  @override
  String get gameHintWord059Replica => 'Copia de una instancia de carga de trabajo mantenida por escala o fiabilidad.';

  @override
  String get gameHintWord060Deployment => 'Controlador de Kubernetes para pods de aplicaciones sin estado.';

  @override
  String get gameHintWord061Dockerfile => 'Instrucciones usadas para construir una imagen de Docker.';

  @override
  String get gameHintWord062Database => 'Almacén organizado consultado por las aplicaciones.';

  @override
  String get gameHintWord063Automation => 'Uso de software para realizar tareas repetibles sin pasos manuales.';

  @override
  String get gameHintWord064Anthos => 'Plataforma de Google Cloud para gestionar clústeres en distintos entornos.';

  @override
  String get gameHintWord065Bigquery => 'Servicio de Google Cloud para análisis de datos a gran escala.';

  @override
  String get gameHintWord066Bigtable => 'Base de datos NoSQL de columnas anchas de Google Cloud para análisis.';

  @override
  String get gameHintWord067Loadbalancer => 'Distribuye el tráfico entrante entre varios backends.';

  @override
  String get gameHintWord068Prometheus => 'Sistema de monitorización que almacena métricas de series temporales.';

  @override
  String get gameHintWord069Grafana => 'Plataforma para consultar y visualizar datos de observabilidad.';

  @override
  String get gameHintWord070Cloudant => 'Base de datos de documentos NoSQL JSON administrada de IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Servicio de AWS que registra la actividad de la API para auditoría.';

  @override
  String get gameHintWord072Statefulset => 'Controlador de Kubernetes para cargas de trabajo que necesitan identidad estable.';

  @override
  String get gameHintWord073Daemonset => 'Controlador de Kubernetes que ejecuta un pod en nodos seleccionados.';

  @override
  String get gameHintWord074Serviceaccount => 'Identidad de Kubernetes usada por una carga de trabajo o proceso.';

  @override
  String get gameHintWord075Networkpolicy => 'Recurso de Kubernetes que controla el tráfico de red de los pods.';

  @override
  String get gameHintWord076Certificate => 'Documento digital usado para establecer identidad en TLS.';

  @override
  String get gameHintWord077Encryption => 'Transforma los datos para que solo las partes autorizadas puedan leerlos.';

  @override
  String get gameHintWord078Observability => 'Capacidad de inferir el comportamiento de un sistema a partir de sus salidas.';

  @override
  String get gameHintWord079Coredns => 'Servidor DNS habitual dentro de clústeres de Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Proyecto para gestionar recursos en la nube mediante las API de Kubernetes.';

  @override
  String get gameHintWord081Failover => 'Cambio a un componente en espera tras un fallo.';

  @override
  String get gameHintWord082Idempotency => 'Propiedad por la que repetir una operación tiene el mismo efecto que hacerla una vez.';

  @override
  String get gameHintWord083Dataflow => 'Servicio de Google Cloud para procesamiento de datos en flujo y por lotes.';

  @override
  String get gameHintWord084Orchestration => 'Gestión coordinada de múltiples cargas de trabajo automatizadas.';

  @override
  String get gameHintWord085Dataplex => 'Servicio de Google Cloud para descubrir y gobernar datos empresariales.';

  @override
  String get gameHintWord086Serverless => 'Modelo de ejecución donde la gestión de la infraestructura queda abstraída.';

  @override
  String get gameHintWord087Distributed => 'Sistema cuyos componentes se ejecutan en varias máquinas conectadas en red.';

  @override
  String get gameHintWord088Dataproc => 'Entorno administrado de Apache Spark y Hadoop de Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'Base de datos NoSQL de AWS, a menudo usada para el bloqueo del estado de Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Preparar infraestructura o recursos para su uso.';

  @override
  String get gameHintWord091Elasticsearch => 'Motor de búsqueda habitual para el registro centralizado.';

  @override
  String get gameHintWord092Etcd => 'Almacén clave-valor que guarda el estado del clúster de Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Proceso de verificar quién es un usuario o servicio.';

  @override
  String get gameHintWord094Authorization => 'Proceso de decidir qué se le permite hacer a una identidad.';

  @override
  String get gameHintWord095Expressroute => 'Servicio de Azure para conectividad privada dedicada con centros de datos.';

  @override
  String get gameHintWord096Configuration => 'Ajustes que determinan cómo se comporta el software.';

  @override
  String get gameHintWord097Infrastructure => 'Recursos de cómputo, red y almacenamiento que respaldan las aplicaciones.';

  @override
  String get gameHintWord098Fastconnect => 'Servicio de Oracle Cloud para conexiones de red privadas dedicadas.';

  @override
  String get gameHintWord099Containerd => 'Entorno de ejecución de contenedores estándar de la industria usado por Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Plataforma de orquestación de contenedores.';

  @override
  String get gameHintWord101Http => 'Protocolo de aplicación usado para solicitar recursos web.';

  @override
  String get gameHintWord102Https => 'Versión cifrada del protocolo de solicitudes web.';

  @override
  String get gameHintWord103Tcp => 'Protocolo de transporte que ofrece entrega fiable y ordenada.';

  @override
  String get gameHintWord104Udp => 'Protocolo de transporte sin conexión usado para datagramas.';

  @override
  String get gameHintWord105Tls => 'Protocolo que protege los datos intercambiados a través de una red.';

  @override
  String get gameHintWord106Ssl => 'Antiguo predecesor del protocolo moderno de seguridad de transporte.';

  @override
  String get gameHintWord107Ftp => 'Protocolo tradicional para transferir archivos.';

  @override
  String get gameHintWord108Sftp => 'Protocolo de transferencia de archivos sobre una conexión de shell segura.';

  @override
  String get gameHintWord109Smtp => 'Protocolo usado para enviar correo electrónico entre servidores.';

  @override
  String get gameHintWord110Snmp => 'Protocolo usado para administrar y monitorizar dispositivos de red.';

  @override
  String get gameHintWord111Icmp => 'Protocolo que transporta errores de red y mensajes de ping.';

  @override
  String get gameHintWord112Arp => 'Resuelve direcciones IPv4 locales a direcciones de hardware.';

  @override
  String get gameHintWord113Dhcp => 'Asigna automáticamente configuración IP a los clientes de red.';

  @override
  String get gameHintWord114Nat => 'Reescribe direcciones de red cuando los paquetes cruzan una puerta de enlace.';

  @override
  String get gameHintWord115Vpn => 'Túnel cifrado que conecta redes o usuarios remotos.';

  @override
  String get gameHintWord116Vpc => 'Red virtual aislada en una nube pública.';

  @override
  String get gameHintWord117Vlan => 'Separación lógica de una red conmutada.';

  @override
  String get gameHintWord118Wan => 'Red que abarca un área geográfica amplia.';

  @override
  String get gameHintWord119Lan => 'Red que conecta dispositivos dentro de un área local.';

  @override
  String get gameHintWord120Cdn => 'Red de borde distribuida que almacena en caché el contenido entregado.';

  @override
  String get gameHintWord121Cidr => 'Notación que expresa un prefijo de red con una longitud tras una barra.';

  @override
  String get gameHintWord122Host => 'Un equipo o punto final conectado a una red.';

  @override
  String get gameHintWord123Hostname => 'Nombre legible asignado a una máquina en red.';

  @override
  String get gameHintWord124Domain => 'Área administrativa con nombre en el sistema de nombres de internet.';

  @override
  String get gameHintWord125Zone => 'Porción administrativa de un espacio de nombres DNS.';

  @override
  String get gameHintWord126Record => 'Una entrada individual en una base de datos DNS.';

  @override
  String get gameHintWord127Aaaa => 'Tipo de registro DNS que resuelve un nombre a una dirección IPv6.';

  @override
  String get gameHintWord128Ptr => 'Tipo de registro DNS usado para búsquedas inversas de direcciones.';

  @override
  String get gameHintWord129Txt => 'Tipo de registro DNS que almacena valores de texto.';

  @override
  String get gameHintWord130Cname => 'Registro DNS que convierte un nombre en alias de otro.';

  @override
  String get gameHintWord131Route => 'Una entrada de ruta que dirige los paquetes hacia un destino.';

  @override
  String get gameHintWord132Routing => 'Selección de rutas para el tráfico entre redes.';

  @override
  String get gameHintWord133Packet => 'Una unidad de datos transmitida a través de una red.';

  @override
  String get gameHintWord134Protocol => 'Reglas acordadas para la comunicación entre sistemas.';

  @override
  String get gameHintWord135Ack => 'Indicador de TCP que confirma la recepción de datos.';

  @override
  String get gameHintWord136Bandwidth => 'Capacidad de un enlace de comunicación.';

  @override
  String get gameHintWord137Latency => 'Retraso antes de que una solicitud o paquete reciba respuesta.';

  @override
  String get gameHintWord138Throughput => 'Cantidad de trabajo útil o datos procesados por unidad de tiempo.';

  @override
  String get gameHintWord139Mtu => 'Tamaño máximo de paquete que un enlace puede transmitir sin fragmentación.';

  @override
  String get gameHintWord140Alpn => 'Extensión de TLS que negocia un protocolo de la capa de aplicación.';

  @override
  String get gameHintWord141Grep => 'Busca en líneas de texto un patrón coincidente.';

  @override
  String get gameHintWord142Sed => 'Editor de flujo habitual para sustituciones de texto.';

  @override
  String get gameHintWord143Lscpu => 'Comando de Linux que muestra la arquitectura del procesador y detalles de los núcleos.';

  @override
  String get gameHintWord144Find => 'Busca en un árbol de directorios usando predicados de archivo.';

  @override
  String get gameHintWord145Lsblk => 'Comando de Linux que lista dispositivos de bloque y sus relaciones.';

  @override
  String get gameHintWord146Sort => 'Ordena líneas de texto.';

  @override
  String get gameHintWord147Uniq => 'Filtra líneas duplicadas adyacentes.';

  @override
  String get gameHintWord148Head => 'Imprime el principio de un archivo.';

  @override
  String get gameHintWord149Tail => 'Imprime el final de un archivo y puede seguir registros que se van añadiendo.';

  @override
  String get gameHintWord150Cat => 'Concatena archivos e imprime su contenido.';

  @override
  String get gameHintWord151Cut => 'Extrae campos o columnas de caracteres seleccionados de las líneas.';

  @override
  String get gameHintWord152Tee => 'Copia la entrada estándar a archivos y a la salida estándar.';

  @override
  String get gameHintWord153Echo => 'Escribe sus argumentos en la salida estándar.';

  @override
  String get gameHintWord154Printf => 'Imprime texto con formato desde una shell o programa.';

  @override
  String get gameHintWord155Touch => 'Actualiza las marcas de tiempo de archivos o crea un archivo vacío.';

  @override
  String get gameHintWord156Mkdir => 'Crea directorios.';

  @override
  String get gameHintWord157Rmdir => 'Elimina directorios vacíos.';

  @override
  String get gameHintWord158Chmod => 'Cambia los bits de permisos de archivos de Unix.';

  @override
  String get gameHintWord159Chown => 'Cambia la propiedad de un archivo.';

  @override
  String get gameHintWord160Chgrp => 'Cambia el grupo propietario de un archivo.';

  @override
  String get gameHintWord161Pwd => 'Imprime el directorio de trabajo actual.';

  @override
  String get gameHintWord162Apt => 'Herramienta de gestión de paquetes usada por sistemas basados en Debian.';

  @override
  String get gameHintWord163Top => 'Vista interactiva de procesos y uso de recursos del sistema.';

  @override
  String get gameHintWord164Agent => 'Componente de software que ejecuta o informa de trabajo en un host.';

  @override
  String get gameHintWord165Kill => 'Envía una señal a un proceso mediante su identificador.';

  @override
  String get gameHintWord166Signal => 'Notificación entregada a un proceso por el sistema operativo.';

  @override
  String get gameHintWord167Sigkill => 'Señal de Unix que termina un proceso de inmediato.';

  @override
  String get gameHintWord168Nice => 'Inicia un proceso con una prioridad de planificación ajustada.';

  @override
  String get gameHintWord169Renice => 'Cambia la prioridad de planificación de un proceso en ejecución.';

  @override
  String get gameHintWord170Jobs => 'Lista los trabajos gestionados por la shell actual.';

  @override
  String get gameHintWord171Nohup => 'Ejecuta un comando ignorando las señales de desconexión.';

  @override
  String get gameHintWord172Screen => 'Multiplexor de terminal que admite sesiones desvinculables.';

  @override
  String get gameHintWord173Uptime => 'Informa de cuánto tiempo lleva en ejecución un sistema.';

  @override
  String get gameHintWord174Uname => 'Imprime información del sistema y del kernel.';

  @override
  String get gameHintWord175Whoami => 'Imprime el nombre del usuario efectivo actual.';

  @override
  String get gameHintWord176Umask => 'Establece la máscara de permisos usada al crear archivos.';

  @override
  String get gameHintWord177Usermod => 'Comando de Linux que modifica una cuenta de usuario existente.';

  @override
  String get gameHintWord178Crontab => 'Edita o lista tareas recurrentes programadas de la shell.';

  @override
  String get gameHintWord179Findmnt => 'Comando de Linux que muestra información de los sistemas de archivos montados.';

  @override
  String get gameHintWord180Mount => 'Adjunta un sistema de archivos al árbol de directorios.';

  @override
  String get gameHintWord181Sigterm => 'Señal de Unix que solicita la terminación ordenada de un proceso.';

  @override
  String get gameHintWord182Fstab => 'Tabla del sistema que describe los sistemas de archivos a montar.';

  @override
  String get gameHintWord183Swap => 'Espacio respaldado en disco usado para complementar la memoria física.';

  @override
  String get gameHintWord184Tmpfs => 'Sistema de archivos temporal respaldado por memoria virtual.';

  @override
  String get gameHintWord185Proc => 'Sistema de archivos virtual de Linux que expone información de procesos y del kernel.';

  @override
  String get gameHintWord186Syslog => 'Protocolo estándar de registro y formato de mensajes.';

  @override
  String get gameHintWord187Dmesg => 'Muestra los mensajes del búfer circular del kernel.';

  @override
  String get gameHintWord188Free => 'Informa de la memoria del sistema usada y disponible.';

  @override
  String get gameHintWord189Stat => 'Muestra metadatos detallados de un archivo.';

  @override
  String get gameHintWord190Lsof => 'Lista los archivos abiertos y los procesos que los mantienen.';

  @override
  String get gameHintWord191Netstat => 'Muestra conexiones de red e información de enrutamiento.';

  @override
  String get gameHintWord192Checksum => 'Valor calculado usado para detectar cambios o corrupción en los datos.';

  @override
  String get gameHintWord193Ping => 'Prueba la accesibilidad de red mediante solicitudes de eco.';

  @override
  String get gameHintWord194Traceroute => 'Muestra los saltos intermedios hacia un destino de red.';

  @override
  String get gameHintWord195Resolver => 'Componente DNS que busca respuestas a consultas de nombres.';

  @override
  String get gameHintWord196Nslookup => 'Consulta nombres y direcciones DNS.';

  @override
  String get gameHintWord197Telnet => 'Protocolo de terminal remota heredado y sin cifrar.';

  @override
  String get gameHintWord198Tftp => 'Protocolo sencillo de transferencia de archivos basado en UDP.';

  @override
  String get gameHintWord199Daemon => 'Proceso de servicio en segundo plano en sistemas tipo Unix.';

  @override
  String get gameHintWord200Kernel => 'Componente central que gestiona los recursos del sistema operativo.';

  @override
  String get gameHintWord201Commit => 'Una instantánea registrada de cambios en el control de versiones.';

  @override
  String get gameHintWord202Branch => 'Referencia móvil que representa una línea de desarrollo.';

  @override
  String get gameHintWord203Merge => 'Combina historiales de distintas líneas de desarrollo.';

  @override
  String get gameHintWord204Rebase => 'Reproduce commits sobre un commit base diferente.';

  @override
  String get gameHintWord205Clone => 'Crea una copia local de un repositorio remoto.';

  @override
  String get gameHintWord206Fetch => 'Descarga objetos y referencias remotos sin fusionar.';

  @override
  String get gameHintWord207Pull => 'Obtiene cambios y los integra en la rama actual.';

  @override
  String get gameHintWord208Push => 'Envía commits locales a un repositorio remoto.';

  @override
  String get gameHintWord209Stash => 'Guarda temporalmente los cambios sin confirmar del árbol de trabajo.';

  @override
  String get gameHintWord210Revert => 'Crea un commit que deshace otro commit.';

  @override
  String get gameHintWord211Reset => 'Mueve una referencia de Git y puede restablecer el índice o los archivos de trabajo.';

  @override
  String get gameHintWord212Reflog => 'Historial local de actualizaciones de referencias de Git.';

  @override
  String get gameHintWord213Diff => 'Muestra las diferencias entre versiones o archivos.';

  @override
  String get gameHintWord214Status => 'Informa de archivos preparados, modificados y sin seguimiento.';

  @override
  String get gameHintWord215Checkout => 'Comando de Git para cambiar de revisión o restaurar archivos.';

  @override
  String get gameHintWord216Tag => 'Referencia con nombre que suele marcar una versión.';

  @override
  String get gameHintWord217Remote => 'Conexión con nombre a otro repositorio.';

  @override
  String get gameHintWord218Origin => 'Nombre predeterminado asignado al remoto de un repositorio clonado.';

  @override
  String get gameHintWord219Upstream => 'Rama de seguimiento remota asociada a una rama local.';

  @override
  String get gameHintWord220Worktree => 'Un directorio de trabajo extraído vinculado a un repositorio.';

  @override
  String get gameHintWord221Registry => 'Servicio que almacena y distribuye imágenes de contenedor.';

  @override
  String get gameHintWord222Digest => 'Identificador basado en el contenido de una imagen de contenedor.';

  @override
  String get gameHintWord223Layer => 'Cambios del sistema de archivos que forman parte de una imagen de contenedor.';

  @override
  String get gameHintWord224Entrypoint => 'Instrucción de Dockerfile que define el ejecutable principal del contenedor.';

  @override
  String get gameHintWord225Cmd => 'Instrucción de Dockerfile que especifica un comando o argumentos predeterminados.';

  @override
  String get gameHintWord226Workdir => 'Instrucción de Dockerfile que establece el directorio de trabajo.';

  @override
  String get gameHintWord227Copy => 'Instrucción de Dockerfile que copia archivos del contexto de compilación a una imagen.';

  @override
  String get gameHintWord228Add => 'Instrucción de Dockerfile que también puede descomprimir archivos locales.';

  @override
  String get gameHintWord229Run => 'Instrucción de Dockerfile que ejecuta un comando en tiempo de compilación.';

  @override
  String get gameHintWord230Env => 'Instrucción de Dockerfile que define variables de entorno.';

  @override
  String get gameHintWord231Arg => 'Instrucción de Dockerfile que declara una variable de tiempo de compilación.';

  @override
  String get gameHintWord232Expose => 'Instrucción de Dockerfile que documenta un puerto del contenedor.';

  @override
  String get gameHintWord233User => 'Instrucción de Dockerfile que elige la cuenta para los comandos posteriores.';

  @override
  String get gameHintWord234Healthcheck => 'Instrucción que describe cómo comprobar la salud del contenedor.';

  @override
  String get gameHintWord235Shebang => 'Primera línea de un script que identifica el intérprete a ejecutar.';

  @override
  String get gameHintWord236Compose => 'Herramienta de Docker para definir y ejecutar aplicaciones multicontenedor.';

  @override
  String get gameHintWord237Bridge => 'Controlador de red de Docker habitual para la red local de contenedores.';

  @override
  String get gameHintWord238Overlay => 'Red que abarca contenedores en varios hosts.';

  @override
  String get gameHintWord239None => 'Controlador de red de Docker que desactiva la red del contenedor.';

  @override
  String get gameHintWord240Prune => 'Elimina recursos de contenedor no utilizados.';

  @override
  String get gameHintWord241Replicaset => 'Controlador de Kubernetes que mantiene un número deseado de pods.';

  @override
  String get gameHintWord242Service => 'Abstracción de Kubernetes que proporciona acceso estable a los pods.';

  @override
  String get gameHintWord243Endpoints => 'Direcciones que respaldan un servicio de Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Ámbito lógico que agrupa recursos de Kubernetes.';

  @override
  String get gameHintWord245Node => 'Máquina trabajadora que aloja pods de Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Agente en cada nodo que gestiona la ejecución de los pods.';

  @override
  String get gameHintWord247Pvc => 'Solicitud de Kubernetes de almacenamiento persistente.';

  @override
  String get gameHintWord248Apiserver => 'Componente del plano de control de Kubernetes que expone la API del clúster.';

  @override
  String get gameHintWord249Role => 'Conjunto con nombre de permisos en el control de acceso basado en roles.';

  @override
  String get gameHintWord250Resourcequota => 'Objeto de Kubernetes que limita el consumo de recursos en un espacio de nombres.';

  @override
  String get gameHintWord251Selector => 'Expresión que selecciona recursos según sus etiquetas.';

  @override
  String get gameHintWord252Taint => 'Propiedad de un nodo que repele los pods sin una tolerancia coincidente.';

  @override
  String get gameHintWord253Toleration => 'Ajuste de un pod que permite su programación en un nodo con taint.';

  @override
  String get gameHintWord254Cordon => 'Marca un nodo de Kubernetes como no programable.';

  @override
  String get gameHintWord255Uncordon => 'Vuelve a hacer programable un nodo acordonado.';

  @override
  String get gameHintWord256Drain => 'Desaloja de forma segura las cargas de trabajo antes del mantenimiento de un nodo.';

  @override
  String get gameHintWord257Job => 'Carga de trabajo de Kubernetes que ejecuta una tarea hasta completarla.';

  @override
  String get gameHintWord258Cronjob => 'Carga de trabajo de Kubernetes que crea jobs según una programación.';

  @override
  String get gameHintWord259Readiness => 'Sonda que indica si un contenedor puede recibir tráfico.';

  @override
  String get gameHintWord260Liveness => 'Sonda que indica si un contenedor necesita reiniciarse.';

  @override
  String get gameHintWord261Canary => 'Enfoque de lanzamiento que expone una nueva versión a una pequeña parte del tráfico.';

  @override
  String get gameHintWord262Rolling => 'Estrategia de actualización que reemplaza gradualmente las instancias en ejecución.';

  @override
  String get gameHintWord263Rollback => 'Restaura una versión de la aplicación que funcionaba anteriormente.';

  @override
  String get gameHintWord264Rollout => 'Despliegue progresivo de una nueva versión de la aplicación.';

  @override
  String get gameHintWord265Recreate => 'Estrategia de despliegue que detiene los pods antiguos antes de iniciar los de reemplazo.';

  @override
  String get gameHintWord266Blue => 'Uno de los dos entornos en un lanzamiento blue-green.';

  @override
  String get gameHintWord267Green => 'El otro entorno en un lanzamiento blue-green.';

  @override
  String get gameHintWord268Artifact => 'Resultado versionado producido por un pipeline de compilación.';

  @override
  String get gameHintWord269Staging => 'Entorno de preproducción usado para validar lanzamientos.';

  @override
  String get gameHintWord270Production => 'Entorno que atiende a usuarios finales reales.';

  @override
  String get gameHintWord271Release => 'Una versión de software entregada para su uso.';

  @override
  String get gameHintWord272Version => 'Identificador que distingue una revisión de software.';

  @override
  String get gameHintWord273Revision => 'Una versión identificable de un documento o base de código.';

  @override
  String get gameHintWord274Webhook => 'Notificación HTTP enviada cuando ocurre un evento.';

  @override
  String get gameHintWord275Runbook => 'Procedimiento documentado para operar o recuperar un sistema.';

  @override
  String get gameHintWord276Workspace => 'Directorio o ámbito que contiene los recursos de trabajo de un proyecto.';

  @override
  String get gameHintWord277Credentials => 'Material de autenticación usado para acceder a un sistema.';

  @override
  String get gameHintWord278Trigger => 'Evento o condición que inicia un pipeline.';

  @override
  String get gameHintWord279Parameter => 'Entrada con nombre proporcionada a un trabajo o función.';

  @override
  String get gameHintWord280Access => 'Capacidad de usar un recurso sujeta a autorización.';

  @override
  String get gameHintWord281Module => 'Grupo reutilizable de definiciones de infraestructura.';

  @override
  String get gameHintWord282Provider => 'Plugin de Terraform que conecta la configuración con una API externa.';

  @override
  String get gameHintWord283Resource => 'Objeto de infraestructura administrado declarado en la configuración.';

  @override
  String get gameHintWord284Variable => 'Valor de entrada con nombre usado por la configuración o el código.';

  @override
  String get gameHintWord285Output => 'Valor expuesto devuelto por una configuración de infraestructura.';

  @override
  String get gameHintWord286Tfstate => 'Sufijo de archivo asociado a las instantáneas de estado de Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Sufijo de archivo usado para los valores de variables de entrada de Terraform.';

  @override
  String get gameHintWord288Backend => 'Configuración de Terraform que controla el almacenamiento del estado.';

  @override
  String get gameHintWord289Plan => 'Vista previa de Terraform de los cambios de infraestructura propuestos.';

  @override
  String get gameHintWord290Apply => 'Operación de Terraform que ejecuta los cambios propuestos.';

  @override
  String get gameHintWord291Destroy => 'Operación de Terraform que elimina la infraestructura administrada.';

  @override
  String get gameHintWord292Import => 'Incorpora un recurso existente a la gestión de infraestructura.';

  @override
  String get gameHintWord293Refresh => 'Sincroniza el estado registrado con la infraestructura real.';

  @override
  String get gameHintWord294Validate => 'Comprueba la sintaxis y la coherencia interna de la configuración.';

  @override
  String get gameHintWord295Fmt => 'Comando de Terraform que aplica el formato canónico a la configuración.';

  @override
  String get gameHintWord296Init => 'Inicializa los proveedores de Terraform y el directorio de trabajo.';

  @override
  String get gameHintWord297Executor => 'Ranura de trabajo de Jenkins que puede ejecutar una compilación.';

  @override
  String get gameHintWord298Dependencies => 'Relaciones que exigen un componente antes que otro.';

  @override
  String get gameHintWord299Drift => 'Diferencia entre el estado declarado y el real de la infraestructura.';

  @override
  String get gameHintWord300Locking => 'Impide que escritores concurrentes modifiquen el estado compartido.';

  @override
  String get gameHintWord301Playbook => 'Documento de Ansible que describe plays y tareas de automatización.';

  @override
  String get gameHintWord302Inventory => 'Colección de Ansible de hosts y grupos administrados.';

  @override
  String get gameHintWord303Facts => 'Información del sistema recopilada sobre los hosts administrados.';

  @override
  String get gameHintWord304Task => 'Una unidad individual de trabajo en la automatización.';

  @override
  String get gameHintWord305Handler => 'Tarea de Ansible que se ejecuta cuando es notificada por un cambio.';

  @override
  String get gameHintWord306Notify => 'Directiva de Ansible que encola un handler tras una tarea que cambió algo.';

  @override
  String get gameHintWord307Become => 'Ajuste de Ansible que habilita la elevación de privilegios.';

  @override
  String get gameHintWord308Vault => 'Función de Ansible para cifrar datos sensibles de automatización.';

  @override
  String get gameHintWord309Register => 'Directiva de Ansible que guarda el resultado de una tarea en una variable.';

  @override
  String get gameHintWord310When => 'Palabra clave de Ansible que controla la ejecución condicional de tareas.';

  @override
  String get gameHintWord311Loop => 'Repite una tarea de automatización sobre una colección.';

  @override
  String get gameHintWord312Include => 'Carga contenido de automatización reutilizable de forma dinámica.';

  @override
  String get gameHintWord313Tags => 'Etiquetas usadas para seleccionar subconjuntos de tareas de automatización.';

  @override
  String get gameHintWord314Template => 'Archivo que se renderiza con variables antes del despliegue.';

  @override
  String get gameHintWord315Jinja => 'Lenguaje de plantillas usado por Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Ocultar los detalles de implementación tras una interfaz más simple.';

  @override
  String get gameHintWord317Agile => 'Enfoque iterativo de entrega de software que prioriza la retroalimentación.';

  @override
  String get gameHintWord318Puppet => 'Herramienta de gestión de configuración que usa manifiestos declarativos.';

  @override
  String get gameHintWord319Airflow => 'Plataforma para programar y orquestar DAG de flujos de trabajo.';

  @override
  String get gameHintWord320Argo => 'Familia de proyectos nativos de la nube que incluye un controlador de entrega GitOps.';

  @override
  String get gameHintWord321Rds => 'Abreviatura del servicio de base de datos relacional administrado de AWS.';

  @override
  String get gameHintWord322Sqs => 'Abreviatura de la cola de mensajes administrada de AWS.';

  @override
  String get gameHintWord323Sns => 'Abreviatura del servicio de notificaciones de publicación-suscripción de AWS.';

  @override
  String get gameHintWord324Ses => 'Abreviatura del servicio de envío de correo de AWS.';

  @override
  String get gameHintWord325Iam => 'Abreviatura de gestión de identidades y accesos en la nube.';

  @override
  String get gameHintWord326Kms => 'Abreviatura del servicio de gestión de claves de cifrado de AWS.';

  @override
  String get gameHintWord327Waf => 'Firewall que filtra solicitudes web de la capa de aplicación.';

  @override
  String get gameHintWord328Eks => 'Abreviatura del servicio de Kubernetes administrado de AWS.';

  @override
  String get gameHintWord329Ecs => 'Abreviatura del servicio de orquestación de contenedores administrado de AWS.';

  @override
  String get gameHintWord330Ecr => 'Abreviatura del registro de imágenes de contenedor de AWS.';

  @override
  String get gameHintWord331Aurora => 'Base de datos relacional de AWS compatible con MySQL y PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Almacén de datos analítico de AWS.';

  @override
  String get gameHintWord333Neptune => 'Base de datos de grafos administrada de AWS.';

  @override
  String get gameHintWord334Elasticache => 'Servicio de caché en memoria administrado de AWS.';

  @override
  String get gameHintWord335Athena => 'Servicio de AWS que consulta datos de almacenamiento de objetos con SQL.';

  @override
  String get gameHintWord336Glue => 'Servicio sin servidor de AWS para integración de datos y ETL.';

  @override
  String get gameHintWord337Emr => 'Plataforma de AWS para clústeres administrados de procesamiento de big data.';

  @override
  String get gameHintWord338Lambda => 'Servicio de AWS que ejecuta funciones sin administrar servidores.';

  @override
  String get gameHintWord339Cloudfront => 'Red global de entrega de contenido de AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Servicio de AWS que recopila métricas, registros y alarmas.';

  @override
  String get gameHintWord341Cloudshell => 'Entorno de shell de AWS basado en navegador.';

  @override
  String get gameHintWord342Codecommit => 'Servicio de repositorios Git administrado de AWS.';

  @override
  String get gameHintWord343Codebuild => 'Servicio de AWS que compila código fuente y ejecuta pruebas de compilación.';

  @override
  String get gameHintWord344Codedeploy => 'Servicio de AWS de despliegue automatizado de aplicaciones.';

  @override
  String get gameHintWord345Codepipeline => 'Servicio de AWS de pipelines de entrega continua.';

  @override
  String get gameHintWord346Guardduty => 'Servicio inteligente de detección de amenazas de AWS.';

  @override
  String get gameHintWord347Inspector => 'Servicio de AWS que evalúa vulnerabilidades en las cargas de trabajo.';

  @override
  String get gameHintWord348Macie => 'Servicio de AWS que descubre datos sensibles en el almacenamiento de objetos.';

  @override
  String get gameHintWord349Shield => 'Servicio administrado de protección contra DDoS de AWS.';

  @override
  String get gameHintWord350Snowball => 'Dispositivo físico de AWS para transferencias de datos de gran tamaño.';

  @override
  String get gameHintWord351Snowcone => 'Dispositivo pequeño y robusto de la familia de transferencia sin conexión de AWS.';

  @override
  String get gameHintWord352Datasync => 'Servicio de AWS de transferencia de datos en línea automatizada.';

  @override
  String get gameHintWord353Msk => 'Abreviatura del servicio administrado de Apache Kafka de AWS.';

  @override
  String get gameHintWord354Backup => 'Copia de datos conservada para su recuperación.';

  @override
  String get gameHintWord355Transcribe => 'Servicio de AWS que convierte voz en texto.';

  @override
  String get gameHintWord356Translate => 'Servicio de AWS que traduce texto entre idiomas.';

  @override
  String get gameHintWord357Rekognition => 'Servicio de AWS que analiza imágenes y vídeo.';

  @override
  String get gameHintWord358Comprehend => 'Servicio de AWS de análisis de lenguaje natural.';

  @override
  String get gameHintWord359Textract => 'Servicio de AWS que extrae texto y tablas de documentos.';

  @override
  String get gameHintWord360Sagemaker => 'Plataforma de AWS para crear y desplegar modelos de aprendizaje automático.';

  @override
  String get gameHintWord361Spanner => 'Base de datos relacional distribuida globalmente de Google Cloud.';

  @override
  String get gameHintWord362Pub => 'La mitad de publicación del patrón de mensajería de publicación-suscripción.';

  @override
  String get gameHintWord363Sub => 'La mitad de suscriptor del patrón de mensajería de publicación-suscripción.';

  @override
  String get gameHintWord364Functions => 'Unidades de código basadas en eventos que ofrecen las plataformas sin servidor.';

  @override
  String get gameHintWord365App => 'Forma abreviada de aplicación de software.';

  @override
  String get gameHintWord366Engine => 'Componente de ejecución en nombres como Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Capacidad de procesamiento suministrada por máquinas virtuales o contenedores.';

  @override
  String get gameHintWord368Network => 'Sistemas conectados que intercambian datos.';

  @override
  String get gameHintWord369Security => 'Protección de sistemas e información frente a amenazas.';

  @override
  String get gameHintWord370Identity => 'Representación de un usuario o servicio usada para decisiones de acceso.';

  @override
  String get gameHintWord371Monitoring => 'Observación continua de la salud y el comportamiento del sistema.';

  @override
  String get gameHintWord372Logging => 'Registro de eventos discretos de aplicaciones y sistemas.';

  @override
  String get gameHintWord373Trace => 'Registro del recorrido de una solicitud a través de llamadas entre servicios.';

  @override
  String get gameHintWord374Metrics => 'Mediciones numéricas del comportamiento del sistema a lo largo del tiempo.';

  @override
  String get gameHintWord375Alert => 'Notificación de que una condición monitorizada requiere atención.';

  @override
  String get gameHintWord376Billing => 'Seguimiento y cobro de los servicios en la nube consumidos.';

  @override
  String get gameHintWord377Quota => 'Límite de la cantidad de un recurso que se puede consumir.';

  @override
  String get gameHintWord378Region => 'Área geográfica de despliegue en la nube que contiene zonas de disponibilidad.';

  @override
  String get gameHintWord379Tenancy => 'Disposición que describe cómo los clientes comparten la infraestructura.';

  @override
  String get gameHintWord380Regional => 'Describe un recurso limitado al ámbito de una región de la nube.';

  @override
  String get gameHintWord381Cosmos => 'Nombre de la base de datos multimodelo distribuida globalmente de Azure.';

  @override
  String get gameHintWord382Synapse => 'Plataforma de análisis de Azure que combina almacenamiento de datos y procesamiento.';

  @override
  String get gameHintWord383Sentinel => 'Plataforma nativa de la nube de Microsoft para información y eventos de seguridad.';

  @override
  String get gameHintWord384Defender => 'Familia de productos de seguridad de Microsoft que protege cargas de trabajo en la nube.';

  @override
  String get gameHintWord385Entra => 'Familia de productos de identidad de Microsoft que reemplaza la marca Azure AD.';

  @override
  String get gameHintWord386Arm => 'Abreviatura de Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Servicio de Azure que extiende la gestión a recursos fuera de Azure.';

  @override
  String get gameHintWord388Aks => 'Abreviatura del servicio de Kubernetes administrado de Azure.';

  @override
  String get gameHintWord389Armor => 'Sufijo del nombre del servicio de protección web de Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Tipo de dato de almacenamiento de objetos de Azure.';

  @override
  String get gameHintWord391Files => 'Servicio de Azure que ofrece recursos compartidos de archivos en red administrados.';

  @override
  String get gameHintWord392Disk => 'Dispositivo de almacenamiento en bloques conectado a una máquina virtual.';

  @override
  String get gameHintWord393Function => 'Bloque de código invocable que puede devolver un resultado.';

  @override
  String get gameHintWord394Logic => 'Categoría de Azure App Service para la integración de flujos de trabajo.';

  @override
  String get gameHintWord395Insights => 'Sufijo del nombre del producto de telemetría de aplicaciones de Azure.';

  @override
  String get gameHintWord396Traffic => 'Datos que fluyen entre puntos finales de red.';

  @override
  String get gameHintWord397Manager => 'Sufijo del nombre del producto Azure Resource para su plano de control.';

  @override
  String get gameHintWord398Bastion => 'Punto de entrada administrado o reforzado para el acceso a hosts privados.';

  @override
  String get gameHintWord399Front => 'Primera palabra del servicio global de punto de entrada de Azure Front Door.';

  @override
  String get gameHintWord400Door => 'Segunda palabra del servicio global de punto de entrada de Azure Front Door.';

  @override
  String get gameHintWord401Javascript => 'Lenguaje de programación muy usado en navegadores y entornos Node.';

  @override
  String get gameHintWord402Perl => 'Lenguaje de scripting conocido por el procesamiento de texto y las expresiones regulares.';

  @override
  String get gameHintWord403Powershell => 'Shell orientada a objetos y lenguaje de automatización de Microsoft.';

  @override
  String get gameHintWord404Java => 'Lenguaje de la JVM usado para implementar Jenkins.';

  @override
  String get gameHintWord405Json => 'Formato de datos ligero con objetos y arreglos.';

  @override
  String get gameHintWord406Xml => 'Formato de marcado que usa etiquetas con nombre anidadas.';

  @override
  String get gameHintWord407Html => 'Lenguaje de marcado usado para estructurar páginas web.';

  @override
  String get gameHintWord408Css => 'Lenguaje de hojas de estilo que controla la presentación web.';

  @override
  String get gameHintWord409String => 'Secuencia de caracteres de texto.';

  @override
  String get gameHintWord410Array => 'Colección indexada de elementos.';

  @override
  String get gameHintWord411Hash => 'Colección asociativa de clave-valor en Ruby y Perl.';

  @override
  String get gameHintWord412Object => 'Valor en tiempo de ejecución con propiedades y comportamiento.';

  @override
  String get gameHintWord413Class => 'Definición usada para construir objetos en lenguajes basados en clases.';

  @override
  String get gameHintWord414Method => 'Función asociada a un objeto o clase.';

  @override
  String get gameHintWord415Interface => 'Contrato que describe las operaciones que expone un componente.';

  @override
  String get gameHintWord416Subclass => 'Clase derivada de otra clase.';

  @override
  String get gameHintWord417Super => 'Palabra clave usada para invocar el comportamiento de la clase padre.';

  @override
  String get gameHintWord418Protected => 'Nivel de visibilidad que restringe el acceso a contextos relacionados con la clase.';

  @override
  String get gameHintWord419Exception => 'Condición en tiempo de ejecución que interrumpe el flujo de control normal.';

  @override
  String get gameHintWord420Regex => 'Notación de patrones usada para coincidir texto.';

  @override
  String get gameHintWord421Lexical => 'Describe un ámbito determinado por la estructura del código fuente.';

  @override
  String get gameHintWord422Scalar => 'Categoría de variable de un solo valor en Perl.';

  @override
  String get gameHintWord423Tuple => 'Colección ordenada inmutable en Python.';

  @override
  String get gameHintWord424List => 'Colección ordenada mutable en Python.';

  @override
  String get gameHintWord425Dict => 'Nombre del tipo de mapeo incorporado de Python.';

  @override
  String get gameHintWord426Dictionary => 'Colección que asocia claves con valores.';

  @override
  String get gameHintWord427Set => 'Colección de valores distintos.';

  @override
  String get gameHintWord428Boolean => 'Tipo de dato que representa verdadero o falso.';

  @override
  String get gameHintWord429Integer => 'Tipo numérico que representa números enteros.';

  @override
  String get gameHintWord430Float => 'Tipo numérico que representa valores de coma flotante.';

  @override
  String get gameHintWord431Double => 'Tipo de coma flotante de doble precisión.';

  @override
  String get gameHintWord432Null => 'Valor que representa la ausencia de un objeto o resultado.';

  @override
  String get gameHintWord433Undefined => 'Valor de JavaScript para un valor asignado que falta.';

  @override
  String get gameHintWord434Promise => 'Objeto de JavaScript que representa un resultado asíncrono futuro.';

  @override
  String get gameHintWord435Async => 'Palabra clave que marca una función asíncrona.';

  @override
  String get gameHintWord436Await => 'Palabra clave que espera un resultado asíncrono.';

  @override
  String get gameHintWord437Callback => 'Función pasada para ser invocada por otra operación.';

  @override
  String get gameHintWord438Closure => 'Función que conserva acceso a su ámbito léxico circundante.';

  @override
  String get gameHintWord439Generator => 'Función que produce una secuencia de forma perezosa mediante valores cedidos.';

  @override
  String get gameHintWord440Iterator => 'Objeto que avanza por los valores de una colección.';

  @override
  String get gameHintWord441Print => 'Función común que escribe un valor en la salida.';

  @override
  String get gameHintWord442Input => 'Función de Python que lee una línea de la entrada estándar.';

  @override
  String get gameHintWord443Open => 'Función usada para obtener un manejador de archivo.';

  @override
  String get gameHintWord444Close => 'Operación que libera un archivo o conexión abiertos.';

  @override
  String get gameHintWord445Read => 'Operación que obtiene datos de un flujo o archivo.';

  @override
  String get gameHintWord446Write => 'Operación que envía datos a un flujo o archivo.';

  @override
  String get gameHintWord447Append => 'Añade un elemento al final de una colección.';

  @override
  String get gameHintWord448Split => 'Divide el texto en subcadenas usando un delimitador.';

  @override
  String get gameHintWord449Join => 'Combina una secuencia de cadenas usando un separador.';

  @override
  String get gameHintWord450Strip => 'Elimina los espacios en blanco circundantes de una cadena de Python.';

  @override
  String get gameHintWord451Chomp => 'Elimina un separador de registro final en Perl o Ruby.';

  @override
  String get gameHintWord452Map => 'Aplica una transformación a cada elemento de una colección.';

  @override
  String get gameHintWord453Filter => 'Conserva los elementos de una colección que cumplen un predicado.';

  @override
  String get gameHintWord454Reduce => 'Combina una colección en un resultado acumulado.';

  @override
  String get gameHintWord455Range => 'Tipo de Python que representa una secuencia aritmética de enteros.';

  @override
  String get gameHintWord456Length => 'Propiedad o método que devuelve el tamaño de una colección.';

  @override
  String get gameHintWord457Len => 'Función incorporada de Python que devuelve el tamaño de una colección.';

  @override
  String get gameHintWord458Type => 'Función de Python que devuelve el tipo de un objeto.';

  @override
  String get gameHintWord459Isinstance => 'Función de Python que comprueba la pertenencia a una jerarquía de tipos.';

  @override
  String get gameHintWord460Yield => 'Palabra clave que produce un valor desde un generador.';

  @override
  String get gameHintWord461Saas => 'Modelo de nube que entrega aplicaciones de software completas.';

  @override
  String get gameHintWord462Paas => 'Modelo de nube que suministra una plataforma administrada de desarrollo de aplicaciones.';

  @override
  String get gameHintWord463Iaas => 'Modelo de nube que suministra cómputo, almacenamiento y redes virtuales.';

  @override
  String get gameHintWord464Hybrid => 'Enfoque de nube que combina infraestructura privada y pública.';

  @override
  String get gameHintWord465Archive => 'Almacenamiento a largo plazo de datos a los que se accede con poca frecuencia.';

  @override
  String get gameHintWord466Public => 'Modelo de propiedad de la nube que ofrece servicios a múltiples clientes.';

  @override
  String get gameHintWord467Private => 'Modelo de nube dedicado a una sola organización.';

  @override
  String get gameHintWord468Scalability => 'Capacidad de manejar una carga creciente añadiendo recursos.';

  @override
  String get gameHintWord469Availability => 'Grado en que un servicio permanece accesible cuando se necesita.';

  @override
  String get gameHintWord470Resilience => 'Capacidad de resistir y recuperarse de fallos.';

  @override
  String get gameHintWord471Redundancy => 'Componentes duplicados que reducen los puntos únicos de fallo.';

  @override
  String get gameHintWord472Disaster => 'Interrupción grave abordada mediante una estrategia de recuperación.';

  @override
  String get gameHintWord473Recovery => 'Restauración del servicio o los datos tras un fallo.';

  @override
  String get gameHintWord474Replicate => 'Copiar datos o cargas de trabajo a otra ubicación.';

  @override
  String get gameHintWord475Snapshotting => 'Tomar copias de datos o del estado del sistema en un momento dado.';

  @override
  String get gameHintWord476Restore => 'Operación que recupera datos desde una copia guardada.';

  @override
  String get gameHintWord477Residency => 'Requisito que define la ubicación geográfica de los datos almacenados.';

  @override
  String get gameHintWord478Compliance => 'Cumplimiento de las normativas y controles organizativos exigidos.';

  @override
  String get gameHintWord479Governance => 'Políticas y procesos que controlan el uso de la tecnología.';

  @override
  String get gameHintWord480Audit => 'Revisión de las actividades registradas y de las pruebas de cumplimiento.';

  @override
  String get gameHintWord481Token => 'Credencial o símbolo que representa autorización o identidad.';

  @override
  String get gameHintWord482Oauth => 'Marco de autorización que permite el acceso delegado.';

  @override
  String get gameHintWord483Saml => 'Estándar basado en XML habitual para el inicio de sesión único empresarial.';

  @override
  String get gameHintWord484Cmdlet => 'Un comando especializado usado en los pipelines de PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Secuencia definida de pasos para resolver un problema computacional.';

  @override
  String get gameHintWord486Key => 'Valor usado para controlar el cifrado o identificar datos almacenados.';

  @override
  String get gameHintWord487Alias => 'Nombre alternativo para un comando o recurso de la shell.';

  @override
  String get gameHintWord488Amend => 'Opción de commit de Git que reemplaza el commit más reciente.';

  @override
  String get gameHintWord489Allsigned => 'Política de ejecución de PowerShell que exige scripts firmados.';

  @override
  String get gameHintWord490Remotesigned => 'Política de PowerShell que exige firmas en los scripts descargados.';

  @override
  String get gameHintWord491Acl => 'Lista que define permisos para usuarios o sistemas.';

  @override
  String get gameHintWord492Uid => 'Identificador numérico asignado a un usuario de Unix.';

  @override
  String get gameHintWord493Setgid => 'Bit de permiso que afecta a la identidad de grupo durante la ejecución o la herencia.';

  @override
  String get gameHintWord494Setfacl => 'Comando de Linux que establece listas de control de acceso de archivos.';

  @override
  String get gameHintWord495Isolation => 'Separación que impide que las cargas de trabajo interfieran entre sí.';

  @override
  String get gameHintWord496Sighup => 'Señal de desconexión de Unix, a menudo usada para solicitar recargas de configuración.';

  @override
  String get gameHintWord497Sigint => 'Señal de interrupción de Unix que se genera habitualmente con Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Señal de Unix que pausa un proceso sin terminarlo.';

  @override
  String get gameHintWord499Secrets => 'Valores sensibles como contraseñas y claves de acceso.';

  @override
  String get gameHintWord500Secure => 'Describe una conexión protegida contra accesos no autorizados.';

  @override
  String get fontSettingsTitle => 'Fuente';

  @override
  String get fontChangeFont => 'Cambiar fuente';

  @override
  String get fontSystemDefault => 'Predeterminada del sistema';

  @override
  String get fontPreview => 'Vista previa';

  @override
  String get fontPreviewSample => 'Aprende DevOps pregunta a pregunta';

  @override
  String get fontSelected => 'Seleccionada';

  @override
  String get fontLatinOnlyNote => 'Las fuentes personalizadas se aplican a las letras latinas. Los demás sistemas de escritura conservan la fuente de tu dispositivo.';

  @override
  String get fontDescSystem => 'La fuente integrada de tu dispositivo';

  @override
  String get fontDescGeometric => 'Sans serif geométrica';

  @override
  String get fontDescGeometricRounded => 'Sans serif geométrica redondeada';

  @override
  String get fontDescFriendly => 'Sans serif amigable';

  @override
  String get fontDescCondensed => 'Condensada';

  @override
  String get fontDescRounded => 'Sans serif redondeada';

  @override
  String get fontDescRoundedDisplay => 'Display redondeada';

  @override
  String gameScene3dScene(String value1) {
    return 'Escena 3D $value1';
  }
}
