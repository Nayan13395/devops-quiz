// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

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
  String get dailyQuizCompletedMessage =>
      'Ya completaste el cuestionario diario de hoy.\n\n¡Vuelve mañana para un nuevo reto!';

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
  String get aboutDescription =>
      'DevOps Quiz ayuda a los estudiantes a prepararse para entrevistas y certificaciones con miles de preguntas cuidadosamente seleccionadas sobre Linux, Docker, Kubernetes, redes, Git, Jenkins, Terraform, Ansible y otras tecnologías DevOps.';

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
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

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
  String get practiceMore =>
      '¡Buen trabajo! Con un poco más de práctica obtendrás una puntuación aún mayor.';

  @override
  String get keepLearning =>
      'Sigue aprendiendo e inténtalo de nuevo. Mejorarás con la práctica.';

  @override
  String get everyExpertStarted =>
      'Todo experto empezó como principiante. ¡Practica y vuelve más fuerte!';

  @override
  String get quizInstructions => 'Instrucciones del cuestionario';

  @override
  String get instruction1 => 'Cada set contiene 25 preguntas.';

  @override
  String get instruction2 => 'Tienes 15 segundos por pregunta.';

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
  String shareMessage(
    Object score,
    Object totalQuestions,
    Object earnedPoints,
    Object bonusPoints,
    Object percentage,
  ) {
    return '🎯 ¡Obtuve $score/$totalQuestions en el cuestionario #DevOps de hoy!\n\n🏆 Puntos: $earnedPoints\n🔥 Bonificación: $bonusPoints\n📊 Porcentaje: $percentage%\n\n¿Puedes superar mi puntuación?\n\nDescarga la app:';
  }
}
