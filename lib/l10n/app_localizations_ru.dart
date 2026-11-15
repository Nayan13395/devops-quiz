// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTour => 'Обзор приложения';

  @override
  String get skipTour => 'Пропустить обзор';

  @override
  String get finishTour => 'Завершить обзор';

  @override
  String tourStep(int current, int total) {
    return 'Шаг $current из $total';
  }

  @override
  String get tourMenuTitle => 'Меню навигации';

  @override
  String get tourSearch => 'Введите тему, чтобы найти подходящие категории викторин.';

  @override
  String get tourCategory => 'Нажмите DevOps для смешанной викторины. Другие категории предлагают наборы вопросов. Сохраняйте вопросы для повторения.';

  @override
  String get tourMenu => 'Нажмите эту кнопку, чтобы открыть меню навигации.';

  @override
  String get tourLearning => 'Откройте Обучение для карточек. Листайте в любом направлении, перемешивайте, включайте автопереход или сохраняйте карточку.';

  @override
  String get tourGames => 'Играйте и получайте баллы. Игры с уровнями дают 100 баллов за пройденный уровень; подсказка стоит 20 баллов.';

  @override
  String get tourAchievements => 'Просматривайте достижения здесь. Всплывающие окна сообщают о новых достижениях и доступных темах.';

  @override
  String get tourSettings => 'Выберите язык, тему и звук. Откройте «Сохранённые данные» для закладок или «Обзор приложения», чтобы повторить руководство.';

  @override
  String get achievementUnlocked => 'Достижение разблокировано!';

  @override
  String get themeUnlocked => 'Доступна новая тема!';

  @override
  String get themeUnlockedMessage => 'Теперь эту тему можно выбрать в разделе «Настройки > Темы».';

  @override
  String get gameSounds => 'Звуки игры';

  @override
  String get gameSoundsDescription => 'Эффекты для игр и викторин. Проверьте громкость и беззвучный режим устройства.';

  @override
  String get testSound => 'Проверить звук';

  @override
  String get soundSettingBusy => 'Подождите...';

  @override
  String get soundSettingError => 'Не удалось загрузить или сохранить настройку звука. Попробуйте ещё раз.';

  @override
  String get soundPlaybackError => 'Не удалось воспроизвести звук. Проверьте настройки звука устройства или браузера.';

  @override
  String get saveData => 'Сохранённые данные';

  @override
  String get learningTranslationUnavailable => 'Эта карточка ещё не переведена на выбранный язык.';

  @override
  String get saveQuestion => 'Сохранить вопрос';

  @override
  String defaultPortQuestion(String service) {
    return 'Какой порт по умолчанию используется для $service?';
  }

  @override
  String get removeSavedItem => 'Удалить из сохранённого';

  @override
  String get noSavedData => 'Пока ничего не сохранено. Добавьте учебные карточки или вопросы викторины в закладки.';

  @override
  String get savedDataError => 'Не удалось загрузить или обновить сохранённые данные. Попробуйте ещё раз.';

  @override
  String get savedItemUnavailable => 'Этот сохранённый элемент больше недоступен.';

  @override
  String get correctAnswer => 'Правильный ответ';

  @override
  String get retry => 'Повторить';

  @override
  String get certificates => 'Сертификаты';

  @override
  String get whatsNew => 'Что нового';

  @override
  String get settings => 'Настройки';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get language => 'Язык';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get english => 'Английский';

  @override
  String get hindi => 'Хинди';

  @override
  String get marathi => 'Маратхи';

  @override
  String get startQuiz => 'Начать викторину';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Сменить категорию';

  @override
  String get dailyQuiz => 'Ежедневная викторина';

  @override
  String get dailyQuizCompleted => 'Ежедневная викторина пройдена';

  @override
  String get dailyQuizCompletedMessage => 'Вы уже прошли сегодняшнюю ежедневную викторину.\n\nВозвращайтесь завтра за новым испытанием!';

  @override
  String get leaderboard => 'Таблица лидеров';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String get rateApp => 'Оценить приложение';

  @override
  String get about => 'О приложении';

  @override
  String get ok => 'ОК';

  @override
  String get home => 'Главная';

  @override
  String get games => 'Игры';

  @override
  String get referAndEarn => 'Приглашай и зарабатывай';

  @override
  String get themes => 'Темы';

  @override
  String get version => 'Версия';

  @override
  String get developer => 'Разработчик';

  @override
  String get contact => 'Контакты';

  @override
  String get learning => 'Обучение';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Свяжитесь со мной';

  @override
  String get aboutDescription => 'DevOps Quiz помогает подготовиться к собеседованиям и сертификациям с помощью тысяч тщательно подобранных вопросов по Linux, Docker, Kubernetes, сетям, Git, Jenkins, Terraform, Ansible и другим технологиям DevOps.';

  @override
  String get quizResult => 'Результат викторины';

  @override
  String get outstanding => 'Превосходно!';

  @override
  String get greatJob => 'Отличная работа!';

  @override
  String get goodEffort => 'Хорошая попытка!';

  @override
  String get keepPracticing => 'Продолжайте практиковаться!';

  @override
  String get dontGiveUp => 'Не сдавайтесь!';

  @override
  String get shareMessage1 => 'Мой результат:';

  @override
  String get shareMessage2 => 'в викторине DevOps!';

  @override
  String get downloadApp => 'Скачайте приложение:';

  @override
  String get score => 'Счёт';

  @override
  String get points => 'Очки';

  @override
  String get percentage => 'Процент';

  @override
  String get bonus => 'Бонус';

  @override
  String get perfectScoreBonus => 'Бонус за идеальный результат';

  @override
  String get shareScore => 'Поделиться результатом';

  @override
  String get restartQuiz => 'Пройти заново';

  @override
  String get backToCategories => 'Назад к категориям';

  @override
  String get greatProgress => 'Отлично! Вы делаете большие успехи.';

  @override
  String get practiceMore => 'Хорошая работа! Ещё немного практики, и результат будет выше.';

  @override
  String get keepLearning => 'Продолжайте учиться и попробуйте снова. С практикой вы станете лучше.';

  @override
  String get everyExpertStarted => 'Каждый эксперт начинал новичком. Практикуйтесь и возвращайтесь сильнее!';

  @override
  String get quizInstructions => 'Правила викторины';

  @override
  String get instruction1 => 'В каждом наборе 25 вопросов.';

  @override
  String get instruction2 => 'На каждый вопрос даётся 30 секунд.';

  @override
  String get instruction3 => 'Зелёный = правильный ответ.';

  @override
  String get instruction4 => 'Красный = неправильный ответ.';

  @override
  String get instruction5 => 'Ответ нельзя изменить.';

  @override
  String get instruction6 => 'Кнопка «Назад» только для просмотра.';

  @override
  String get instruction7 => 'Результат показывается после завершения.';

  @override
  String get instruction8 => 'Каждый правильный ответ приносит 10 очков.';

  @override
  String excellentPerformance(Object expert) {
    return 'Отличный результат! Вы — $expert.';
  }

  @override
  String get selectCategory => 'Выберите категорию';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Выберите набор';

  @override
  String get set => 'Набор';

  @override
  String get questions => 'Вопросов';

  @override
  String get noScoresYet => 'Пока нет результатов';

  @override
  String get pointsShort => 'очк.';

  @override
  String get welcomeToDevOpsQuiz => 'Добро пожаловать в DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Привет, $name';
  }

  @override
  String get challengeMode => 'Режим испытаний';

  @override
  String get challenge => 'Испытание';

  @override
  String get question => 'Вопрос';

  @override
  String get reward => 'Награда';

  @override
  String get survivalMode => 'Режим выживания';

  @override
  String get speedChallenge => 'Испытание скоростью';

  @override
  String get dailyChallenge => 'Ежедневное испытание';

  @override
  String get ultimateChallenge => 'Главное испытание';

  @override
  String get timeLeft => 'Осталось времени';

  @override
  String get completed => 'Завершено';

  @override
  String get locked => 'Закрыто';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Далее';

  @override
  String get submit => 'Отправить';

  @override
  String get achievements => 'Достижения';

  @override
  String get streak => 'Серия';

  @override
  String get days => 'Дней';

  @override
  String get tomorrowsReward => 'Награда на завтра';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Я набрал $score/$totalQuestions в сегодняшней викторине #DevOps!\n\n🏆 Очки: $earnedPoints\n🔥 Бонус: $bonusPoints\n📊 Процент: $percentage%\n\nСможете побить мой результат?\n\nСкачайте приложение:';
  }

  @override
  String get gameUiSpinWheel => 'Крутить колесо';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Крутите и выигрывайте бонусные очки';

  @override
  String get gameUiScratchCard => 'Скретч-карта';

  @override
  String get gameUiScratchToRevealAReward => 'Сотрите защитный слой, чтобы открыть награду';

  @override
  String get gameUiLuckySlots => 'Счастливые слоты';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Крутите слоты и выигрывайте очки';

  @override
  String get gameUiMysteryDeal => 'Загадочная сделка';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Выберите загадочную коробку и ответьте';

  @override
  String get gameUiMemoryMatch => 'Найди пару';

  @override
  String get gameUiMatchDevOpsPairs => 'Найдите пары DevOps';

  @override
  String get gameUiWordGuess => 'Угадай слово';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Угадывайте слова DevOps, проходя уровни';

  @override
  String get gameUiFindWords => 'Найди слова';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Ищите в сетке скрытые термины DevOps';

  @override
  String get gameUiSpotTheDifference => 'Найди отличия';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Найдите пять отличий между двумя иллюстрированными сценами';

  @override
  String get gameUiJigsawPuzzle => 'Пазл';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Соберите общие HD-картинки с животными и природой';

  @override
  String get gameUiHighOrLow => 'Больше или меньше';

  @override
  String get gameUiBuildAStreak => 'Создайте серию';

  @override
  String get gameUiTrueOrFalseBlitz => 'Блиц «Верно или неверно»';

  @override
  String get gameUiQuickAnswerQuiz => 'Викторина на быстрый ответ';

  @override
  String get gameUiCommandMatch => 'Соответствие команд';

  @override
  String get gameUiMatchCommandsToMeanings => 'Сопоставьте команды с их значениями';

  @override
  String get gameUiPortMaster => 'Мастер портов';

  @override
  String get gameUiGuessDefaultPorts => 'Угадайте порты по умолчанию';

  @override
  String get gameUiTicTacToe => 'Крестики-нолики';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X крестики-нолики против компьютера';

  @override
  String get gameUiConnectFour => 'Четыре в ряд';

  @override
  String get gameUiDropFourDiscs => 'Бросьте четыре диска';

  @override
  String get gameUiLudo => 'Лудо';

  @override
  String get gameUiRaceAgainstBots => 'Гонка против ботов';

  @override
  String get gameUiChess => 'Шахматы';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Шахматная доска, допустимые ходы, два игрока';

  @override
  String get gameUiSnakeAndLadders => 'Змеи и лестницы';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Настольная игра с кубиком, змеи и лестницы, два игрока';

  @override
  String get gameUiGames => 'Игры 🎮';

  @override
  String get gameUiPlayEarn => 'Играй и зарабатывай';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Играйте в игры и зарабатывайте бонусные очки!';

  @override
  String get gameUiSearchGames => 'Поиск игр';

  @override
  String get gameUiClearSearch => 'Очистить поиск';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Нет игр, соответствующих «$value1»';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Крутите и выигрывайте бонусные очки.';

  @override
  String get gameUiScratchToRevealYourReward => 'Сотрите защитный слой, чтобы открыть свою награду.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Крутите слоты и выигрывайте очки.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Выберите загадочную коробку и ответьте правильно, чтобы выиграть очки.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Находите пары DevOps, чтобы зарабатывать очки.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Угадайте термин DevOps за 6 попыток.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Ищите в сетке скрытые термины DevOps.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Проводите пальцем, чтобы находить слова DevOps в 500 уровнях.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Найдите пять отличий между двумя иллюстрированными сценами.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Соберите общие HD-картинки с животными и природой.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Создайте серию и сохраните свои очки.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Успейте до конца времени, отвечая быстро.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Блиц «Верно или неверно» 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Сопоставьте команды с тем, что они делают.';

  @override
  String get gameUiCommandMatch670a76e => 'Соответствие команд 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Угадывайте порты по умолчанию, имея 3 жизни.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Мастер портов 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Играйте в O/X против компьютера.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Выстройте четыре диска в ряд, чтобы победить.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Гоняйте свои фишки наперегонки с тремя ботами.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Локальные шахматы для двух игроков с проверкой допустимых ходов.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Сыграйте шахматную партию для двух игроков по правилам.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Настольная игра с кубиком для двух игроков.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Гонка до 100. Поднимайтесь по лестницам и избегайте змей.';

  @override
  String get gameUiPlay => 'Играть';

  @override
  String get gameUiWheelStopped => 'Колесо остановилось!';

  @override
  String get gameUiYourRewardIs => 'Ваша награда:';

  @override
  String get gameUiPOINTS => 'ОЧКИ';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Ответьте правильно на 1 вопрос викторины, чтобы получить эту награду.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Неправильный ответ = награда потеряна.';

  @override
  String get gameUiAnswerQuestion => 'Ответить на вопрос';

  @override
  String get gameUiSpinWheele449982 => '🎡 Крутить колесо';

  @override
  String get gameUiDailySpin => 'Ежедневное вращение';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Крутите колесо, затем ответьте на вопрос, чтобы получить награду!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Вы уже использовали сегодняшнее вращение.';

  @override
  String get gameUiSpinning => 'Вращение...';

  @override
  String get gameUiSPINNOW => 'КРУТИТЬ СЕЙЧАС';

  @override
  String get gameUiCOMEBACKTOMORROW => 'ПРИХОДИТЕ ЗАВТРА';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Награда на сегодня: ⭐ $value1 очков';
  }

  @override
  String get gameUiBackToGames => 'Назад к играм';

  @override
  String get gameUiSPIN => 'КРУТИТЬ';

  @override
  String get gameUiRewardRevealed => 'Награда открыта!';

  @override
  String get gameUiYouFound => 'Вы нашли';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Скретч-карта';

  @override
  String get gameUiDailyScratch => 'Ежедневная скретч-карта';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Сотрите защитный слой карты, чтобы открыть сегодняшнюю награду!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Вы уже использовали сегодняшнюю скретч-карту.';

  @override
  String get gameUiAlreadyScratched => 'Уже стёрто';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Приходите завтра за новой наградой.';

  @override
  String get gameUiYouRevealed => 'Вы открыли';

  @override
  String get gameUiSCRATCHHERE => 'СТИРАЙТЕ ЗДЕСЬ  👆';

  @override
  String get gameUiJACKPOT777 => 'ДЖЕКПОТ 777!';

  @override
  String get gameUiLucky777 => 'Счастливые 777!';

  @override
  String get gameUiYourReward => 'Ваша награда';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Счастливые слоты';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Крутите слоты, затем ответьте на вопрос, чтобы получить награду!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Вы уже играли сегодня.';

  @override
  String get gameUiSPINNING => 'ВРАЩЕНИЕ...';

  @override
  String get gameUiROLLNOW => 'БРОСИТЬ СЕЙЧАС';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ДЖЕКПОТ! Доступно 777 очков!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Не удалось проверить статус Mystery Deal: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Коробка $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return 'ОЧКОВ: $value1';
  }

  @override
  String get gameUiStartQuestion => 'Начать вопрос';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Таинственная сделка';

  @override
  String get gameUiMysteryDealCompleted => 'Mystery Deal завершена!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Вы уже играли в Mystery Deal сегодня.';

  @override
  String get gameUiTodayYouWon => 'Сегодня вы выиграли';

  @override
  String get gameUiTodaySReward => 'Награда за сегодня';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 ОЧКОВ';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return 'ПОТЕРЯНО ОЧКОВ: $value1';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Возвращайтесь завтра за новой загадочной коробкой!';

  @override
  String get gameUiChooseYourMysteryBox => 'Выберите свою загадочную коробку';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'В каждой коробке скрыта награда от 10 до 1000 очков.';

  @override
  String get gameUiPickOnlyOneBox => 'Выберите только одну коробку!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Все уровни ($value1) пройдены!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Уровень $value1 пройден!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Пройдено за ходов: $value1.\nВы заработали очков: $value2!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Пройдено за ходов: $value1.\nЭтот уровень уже был пройден.';
  }

  @override
  String get gameUiNextLevel => 'Следующий уровень';

  @override
  String get gameUiDone => 'Готово';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Найди пару 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Все 100 уровней пройдены!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Вы прошли все уровни Memory Match. Отличная игра!';

  @override
  String get gameUiChooseLevel => 'Выберите уровень';

  @override
  String gameUiMoves(String value1) {
    return 'Ходов: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Уровень $value1 из $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return 'Пар: $value1';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Запомните уровень $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Найдите совпадающие пары: $value1';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Логотип DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Глава 1 · Восстановите конвейер сборки';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Глава 2 · Масштабируйте облачную платформу';

  @override
  String get gameUiChapter3ProtectProduction => 'Глава 3 · Защитите продакшен';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Для отправки используйте все оставшиеся буквы ($value1).';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Все уровни пройдены!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Уровень $value1 пройден!';
  }

  @override
  String get gameUiTryAgain => 'Попробовать снова';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'Слово было $value1. Вы заработали очков: $value2.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'Слово было $value1. Вы заработали очков: $value2 после подсказок: $value3.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'Слово было $value1. Вы заработали очков: $value2 после подсказок: $value3.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'Слово было $value1. Уровень $value2 всё ещё ждёт вас.';
  }

  @override
  String get gameUiFinish => 'Завершить';

  @override
  String get gameUiNextLevel254fd73 => 'Следующий уровень';

  @override
  String get gameUiRetryLevel => 'Повторить уровень';

  @override
  String get gameUiHowToPlay => 'Как играть';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'В каждом уровне одно слово из мира DevOps. Слова короче пяти букв начинаются без открытых букв; более длинные слова начинаются с одной открытой буквы. Используйте набор букв, чтобы составить ответ, и нажмите Enter. Подсказки открывают ещё одну букву и стоят 20 очков с вашего баланса. За каждый пройденный уровень начисляется 100 очков.';

  @override
  String get gameUiGotIt => 'Понятно';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Все уровни ($value1) пройдены!';
  }

  @override
  String get gameUiEasy => 'Легко';

  @override
  String get gameUiMedium => 'Средне';

  @override
  String get gameUiHard => 'Сложно';

  @override
  String get gameUiHowToPlay13a6b22 => 'Как играть';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Уровень $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Награда: $value1 очк. · использовано подсказок: $value2';
  }

  @override
  String get gameUiHint20Pts => 'Подсказка · −20 очк.';

  @override
  String get gameUiEnter => 'Ввод';

  @override
  String get gameUiDelete => 'Удалить';

  @override
  String get gameUiDragThroughAWord => 'Проведите пальцем по слову';

  @override
  String get gameUiDragThroughEachWord => 'Проведите пальцем по каждому слову';

  @override
  String get gameUiReleaseToSelect => 'Отпустите, чтобы выбрать';

  @override
  String gameUiFound(String value1) {
    return 'Найдено: $value1';
  }

  @override
  String get gameUiNoWordThere => 'Там нет слова';

  @override
  String gameUiAlreadyFound(String value1) {
    return 'Уже найдено: $value1';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Ищите: $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Все уровни пройдены!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Вы нашли все слова и заработали очков: $value1.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Вы нашли все слова. Этот уровень уже был пройден.';

  @override
  String get gameUiAll500LevelsComplete => 'Все 500 уровней пройдены!';

  @override
  String get gameUiReviewLevels => 'Просмотреть уровни';

  @override
  String gameUiLeft(String value1) {
    return 'Осталось: $value1';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 очк.';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Не удалось сохранить прогресс. Пожалуйста, попробуйте снова.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Вы заработали очков: $value1!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Вы уже прошли эту картинку. За повторное прохождение дополнительные очки не начисляются.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Вы прошли все картинки!';

  @override
  String get gameUiLevels => 'Уровни';

  @override
  String get gameUiPictureB => 'Картинка B';

  @override
  String get gameUiPictureA => 'Картинка A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Не удалось загрузить картинку. Повторить';

  @override
  String get gameUiResetZoom => 'Сбросить масштаб';

  @override
  String get gameUiZoomBothPictures => 'Масштабировать обе картинки';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Подсказка · очков за подсказку: $value1';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Не удалось загрузить прогресс. Повторить';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Уровень $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Все отличия найдены!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Найдите $count отличий. Нажимайте на каждое из них на любой из картинок.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Промахи: $value1  ·  Подсказки: $value2 (−$value3 очк.)  ·  Пройдено уровней: $value4';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Следующий уровень: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Пазл $value1 собран!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Картинка собрана за ходов: $value1. Вы заработали очков: $value2.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Картинка собрана за ходов: $value1.';
  }

  @override
  String get gameUiNextPuzzle => 'Следующий пазл';

  @override
  String get gameUiAllPuzzlesComplete => 'Все пазлы собраны';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Фрагмент пазла $value1 из $value2, размещён правильно';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Фрагмент пазла $value1 из $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Выберите пазл';

  @override
  String get gameUiShufflePieces => 'Перемешать фрагменты';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Не удалось загрузить картинку пазла.';

  @override
  String get gameUiPreviousPuzzle => 'Предыдущий пазл';

  @override
  String gameUiPuzzle(String value1) {
    return 'Пазл $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  ходов: $value5';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Перетащите фрагменты, чтобы поменять их местами, или коснитесь двух фрагментов.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return 'Решено пазлов: $value1 / $value2  ·  по $value3 очк. за каждый';
  }

  @override
  String get gameUiGameOver => 'Игра окончена';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Было загадано число $value1.\nСерия: $value2\nВы заработали очков: $value3!\n\nПриходите завтра за новой попыткой!';
  }

  @override
  String get gameUiHigherOrLower => 'Больше или меньше 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Вы уже играли сегодня!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Вы играли $value1/$value2/$value3.\n\nПриходите завтра, чтобы начать новую серию!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Вы уже играли сегодня.\n\nПриходите завтра за новой попыткой!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Серия: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Очки: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Следующее число будет больше или меньше?';

  @override
  String get gameUiLower => 'Меньше';

  @override
  String get gameUiHigher => 'Больше';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Блиц «Верно или неверно» ⚡';

  @override
  String get gameUiTimeSUp => 'Время вышло!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Правильных ответов: $value1\nЛучшая серия: $value2\n$value3Вы заработали очков: $value4!\n\nПриходите завтра за новым раундом!';
  }

  @override
  String get gameUiStreakBonus20 => 'Бонус за серию: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'Показанный ответ верный или неверный?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return 'Вопросов: $value1, категорий: $value2';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'У вас есть $value1 с. Каждый правильный ответ приносит $value2 очк. Неправильный ответ отнимает $value3 с. Достигните серии из 5 ответов, чтобы получить бонус +20.';
  }

  @override
  String get gameUiRoundTimer => 'Таймер раунда';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 с';
  }

  @override
  String get gameUiStart => 'Старт';

  @override
  String get gameUiTrue => 'Верно';

  @override
  String get gameUiFalse => 'Неверно';

  @override
  String get gameUiCommandMatch26b0e70 => 'Соответствие команд 🔗';

  @override
  String get gameUiAllMatched => 'Все пары найдены!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Ошибок: $value1\nВы заработали очков: $value2!\n\nПриходите завтра за новыми командами!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Раунд $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Коснитесь команды, затем её значения.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Теперь коснитесь подходящего значения.';

  @override
  String get gameUiPortMaster9c730cf => 'Мастер портов 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Мастер портов!';

  @override
  String get gameUiOutOfLives => 'Жизни закончились';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Правильных ответов: $value1\nВы заработали очков: $value2!\n\nПриходите завтра за новым раундом!';
  }

  @override
  String get gameUiYouEarned10Points => 'Вы заработали 10 очков!';

  @override
  String get gameUiYouWin => 'Вы победили!';

  @override
  String gameUiWins(String value1) {
    return '$value1 побеждает!';
  }

  @override
  String get gameUiXWins => 'X побеждает!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) побеждает!';
  }

  @override
  String get gameUiComputerWins => 'Компьютер побеждает';

  @override
  String get gameUiOWins => 'O побеждает!';

  @override
  String get gameUiPlayer2OWins => 'Игрок 2 (O) побеждает!';

  @override
  String get gameUiItSADraw => 'Ничья';

  @override
  String get gameUiYourTurn => 'Ваш ход';

  @override
  String gameUiSTurn(String value1) {
    return 'Ход игрока $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'Компьютер думает';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Ход игрока $value1';
  }

  @override
  String gameUiToMove(String value1) {
    return 'Ход: $value1';
  }

  @override
  String get gameUiPlayer2ToMove => 'Ход игрока 2';

  @override
  String get gameUiNewRound => 'Новый раунд';

  @override
  String get gameUiVsComputer => 'Против компьютера';

  @override
  String get gameUi2Players => '2 игрока';

  @override
  String get gameUiYou => 'Вы';

  @override
  String get gameUiDraws => 'Ничьи';

  @override
  String get gameUiPlayer2 => 'Игрок 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Клетка $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Играть снова';

  @override
  String get gameUiConnectFourWin20Points => 'Победа в «Четыре в ряд»: 20 очков!';

  @override
  String get gameUiBotWins => 'Бот побеждает!';

  @override
  String get gameUiRed => 'Красный';

  @override
  String get gameUiYellow => 'Жёлтый';

  @override
  String get gameUiBoardFullDraw => 'Поле заполнено — ничья';

  @override
  String get gameUiBotIsThinking => 'Бот думает';

  @override
  String get gameUiBotTurn => 'Ход бота';

  @override
  String get gameUiNewGame => 'Новая игра';

  @override
  String get gameUiVsBot => 'Против бота';

  @override
  String get gameUi2Player => '2 игрока';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Игра против бота · коснитесь столбца, чтобы бросить диск';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Два игрока · коснитесь столбца, чтобы бросить диск';

  @override
  String gameUiColumn(String value1) {
    return 'Столбец $value1';
  }

  @override
  String get gameUiYouRed => 'Вы · Красный';

  @override
  String get gameUiRedPlayer1 => 'Красный · Игрок 1';

  @override
  String get gameUiBotYellow => 'Бот · Жёлтый';

  @override
  String get gameUiYellowPlayer2 => 'Жёлтый · Игрок 2';

  @override
  String get gameUiLudoMatchStats => 'Статистика матчей в Лудо';

  @override
  String get gameUiNoCompletedMatchesYet => 'Завершённых матчей пока нет.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Сыграно: $value1  ·  Побед: $value2  ·  Поражений: $value3';
  }

  @override
  String get gameUiClose => 'Закрыть';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Чемпион Лудо! Вы заработали 50 очков.';

  @override
  String get gameUiNewLudoGame => 'Новая игра в Лудо';

  @override
  String get gameUiBotOpponents => 'Боты-соперники';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Начало нового матча заменит вашу сохранённую игру.';

  @override
  String get gameUiCancel => 'Отмена';

  @override
  String get gameUiStartGame => 'Начать игру';

  @override
  String get gameUiPlayerColours => 'Цвета игроков';

  @override
  String get gameUiApply => 'Применить';

  @override
  String get gameUiMatchStats => 'Статистика матчей';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 побеждает матом';
  }

  @override
  String get gameUiBlack => 'Чёрные';

  @override
  String get gameUiWhite => 'Белые';

  @override
  String get gameUiComputerWinsByCheckmate => 'Компьютер побеждает матом';

  @override
  String get gameUiYouWinByCheckmate => 'Вы победили матом';

  @override
  String get gameUiDrawByStalemate => 'Ничья из-за пата';

  @override
  String get gameUiDraw => 'Ничья';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Шах';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Мат! Вы заработали 50 очков.';

  @override
  String get gameUiStartANewGame => 'Начать новую игру?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Смена режима игроков заменит сохранённую партию.';

  @override
  String get gameUiComputer => 'Компьютер';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Белые / Игрок 2 · Чёрные';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Вы играете белыми · Компьютер играет чёрными';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (белые) · Компьютер (чёрные)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Вы играете чёрными · Компьютер играет белыми';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (чёрные) · Компьютер (белые)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 бросает первым';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 бросает снова';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1, ваш бросок';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Победа в «Змеях и лестницах»: 100 очков!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Смена игроков заменит сохранённую игру.';

  @override
  String get gameUiStartANewLevel => 'Начать новый уровень?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Смена уровня заменит сохранённую игру.';

  @override
  String get gameUiChangeLevel => 'Сменить уровень';

  @override
  String get gameUiPlayers => 'Игроки';

  @override
  String get gameUiPlayAgainstBot => 'Играть против бота';

  @override
  String get gameUi3Players => '3 игрока';

  @override
  String get gameUi4Players => '4 игрока';

  @override
  String get gameUiLevel1709305 => 'Уровень';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Уровень $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return 'Игроков: $value1 · Уровень $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Бросок';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 на $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Не удалось загрузить вопрос: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Правильный ответ!';

  @override
  String get gameUiWrongAnswer => 'Неправильный ответ';

  @override
  String get gameUiYouClaimedYourReward => 'Вы получили награду!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Добавлено к вашему общему счёту.';

  @override
  String get gameUiTheCorrectAnswerWas => 'Правильный ответ:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Награда в $value1 очк. потеряна.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Ваши имеющиеся очки не были списаны.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Возвращайтесь завтра и попробуйте снова.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Не удалось загрузить вопрос.';

  @override
  String get gameUiYourReward677fa6e => 'Ваша награда';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ ОЧКОВ: $value1';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Ответьте правильно, чтобы получить её!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Возвращайтесь завтра за новым раундом.';

  @override
  String get gameUiGreen => 'Зелёный';

  @override
  String get gameUiBlue => 'Синий';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 думает';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: выберите фишку';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: бросьте кубик';
  }

  @override
  String gameUiDice(String value1) {
    return 'Кубик $value1';
  }

  @override
  String get gameUiRollDice => 'Бросить кубик';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1, фишка $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Игрок $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Бот $value1';
  }

  @override
  String get gameUiBot => 'Бот';

  @override
  String get gameUiHintInsufficientPoints => 'Для использования подсказки нужно 20 очков.';

  @override
  String get gameUiHintPurchaseFailed => 'Не удалось купить подсказку. Пожалуйста, попробуйте ещё раз.';

  @override
  String get gameUiChessKing => 'король';

  @override
  String get gameUiChessQueen => 'ферзь';

  @override
  String get gameUiChessRook => 'ладья';

  @override
  String get gameUiChessBishop => 'слон';

  @override
  String get gameUiChessKnight => 'конь';

  @override
  String get gameUiChessPawn => 'пешка';

  @override
  String get gameUiChessEmpty => 'пусто';

  @override
  String get gameSceneLampAndFlowers => 'Лампа и цветы';

  @override
  String get gameSceneGardenFriends => 'Друзья в саду';

  @override
  String get gameSceneUnderwaterExplorers => 'Подводные исследователи';

  @override
  String get gameSceneOceanOrca => 'Океанская косатка';

  @override
  String get gameSceneFoxInTheMeadow => 'Лиса на лугу';

  @override
  String get gameSceneYellowSubmarine => 'Жёлтая подводная лодка';

  @override
  String get gameSceneTurkeyInTheClearing => 'Индейка на поляне';

  @override
  String get gameSceneSafariWateringHole => 'Водопой на сафари';

  @override
  String get gameSceneJungleCompanions => 'Спутники из джунглей';

  @override
  String get gameSceneGoldenPuppyGarden => 'Сад золотистого щенка';

  @override
  String get gameSceneSeaTurtleReef => 'Риф с морской черепахой';

  @override
  String get gameSceneCoralReefFriends => 'Друзья с коралловых рифов';

  @override
  String get gameSceneSharedClownfish => 'Общая рыба-клоун';

  @override
  String get gameSceneLittleDinosaur => 'Маленький динозавр';

  @override
  String get gameSceneSafariCompanions => 'Спутники по сафари';

  @override
  String get gameSceneSwirlingFlowers => 'Кружащиеся цветы';

  @override
  String get gameSceneGardenKitten => 'Котёнок в саду';

  @override
  String get gameSceneBlueOcean => 'Синий океан';

  @override
  String get gameSceneCastlePrincess => 'Принцесса в замке';

  @override
  String get gameSceneRedCar => 'Красная машина';

  @override
  String get gameSceneGardenPuppy => 'Щенок в саду';

  @override
  String get gameSceneSpaceExplorer => 'Космический исследователь';

  @override
  String get gameSceneEnchantedReadingForest => 'Зачарованный лес для чтения';

  @override
  String get gameSceneDevopsInfinityCycle => 'Бесконечный цикл DevOps';

  @override
  String get gameSceneAnsible => 'Автоматизация Ansible';

  @override
  String get gameSceneAws => 'Облако AWS';

  @override
  String get gameSceneAzure => 'Облако Azure';

  @override
  String get gameSceneBashScripting => 'Скрипты Bash';

  @override
  String get gameSceneDocker => 'Контейнеры Docker';

  @override
  String get gameSceneGcp => 'Облако GCP';

  @override
  String get gameSceneGit => 'Система Git';

  @override
  String get gameSceneHybridCloud => 'Гибридное облако';

  @override
  String get gameSceneIbmCloud => 'Облако IBM Cloud';

  @override
  String get gameSceneJavascript => 'Язык JavaScript';

  @override
  String get gameSceneJenkins => 'Сервер Jenkins';

  @override
  String get gameSceneKubernetes => 'Оркестратор Kubernetes';

  @override
  String get gameSceneLinux => 'Система Linux';

  @override
  String get gameSceneMultiCloud => 'Мультиоблако';

  @override
  String get gameSceneNetworking => 'Сети';

  @override
  String get gameSceneOracleCloud => 'Облако Oracle Cloud';

  @override
  String get gameScenePerl => 'Язык Perl';

  @override
  String get gameScenePowershell => 'Оболочка PowerShell';

  @override
  String get gameScenePython => 'Язык Python';

  @override
  String get gameSceneRuby => 'Язык Ruby';

  @override
  String get gameSceneTerraform => 'Инструмент Terraform';

  @override
  String get gameSceneWinterFestivalFair => 'Зимняя праздничная ярмарка';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Герой в доспехах крупным планом';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Герой в багровых доспехах';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Тёмные цветы плюмерии';

  @override
  String get gameSceneMangroveBoardwalk => 'Дощатая тропа в мангровых зарослях';

  @override
  String get gameSceneTropicalPalmReflections => 'Отражения тропических пальм';

  @override
  String get gameSceneMaskedFigureInShadow => 'Фигура в маске в тени';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Электрический спутник на закате';

  @override
  String get gameSceneTrainerAndFireDragon => 'Тренер и огненный дракон';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Борцовская маска, усыпанная драгоценными камнями';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Борец в красных мазках кисти';

  @override
  String get gameSceneWrestlingChampionSalute => 'Приветствие чемпиона по борьбе';

  @override
  String get gameSceneMorningAtTheBakery => 'Утро в пекарне';

  @override
  String get gameSceneGreenhousePottingBench => 'Стол для пересадки растений в теплице';

  @override
  String get gameSceneHarborFishingBoat => 'Рыбацкая лодка в гавани';

  @override
  String get gameSceneAtticObservatory => 'Обсерватория на чердаке';

  @override
  String get gameSceneToyMakerSWorkshop => 'Мастерская игрушечника';

  @override
  String get gameSceneWoodlandCampsite => 'Лагерь в лесу';

  @override
  String get gameSceneAfternoonMusicRoom => 'Музыкальная комната днём';

  @override
  String get gameSceneSeasideIceCreamStand => 'Киоск с мороженым на морском берегу';

  @override
  String get gameSceneLibraryReadingNook => 'Уголок для чтения в библиотеке';

  @override
  String get gameSceneSewingStudio => 'Швейная студия';

  @override
  String get gameSceneFruitMarket => 'Фруктовый рынок';

  @override
  String get gameSceneKoiCourtyard => 'Дворик с карпами кои';

  @override
  String get gameSceneArtistSAtelier => 'Ателье художника';

  @override
  String get gameSceneMountainRailway => 'Горная железная дорога';

  @override
  String get gameSceneCountryKitchen => 'Деревенская кухня';

  @override
  String get gameScenePotteryWorkshop => 'Гончарная мастерская';

  @override
  String get gameSceneBeachPicnic => 'Пикник на пляже';

  @override
  String get gameSceneFlowerShop => 'Цветочный магазин';

  @override
  String get gameSceneClockmakerSWorkshop => 'Мастерская часовщика';

  @override
  String get gameSceneRainyCafeTerrace => 'Терраса кафе в дождь';

  @override
  String get gameSceneCastleHerbGarden => 'Замковый сад трав';

  @override
  String get gameSceneClassroomArtCorner => 'Художественный уголок в классе';

  @override
  String get gameSceneAquariumShop => 'Магазин аквариумов';

  @override
  String get gameSceneAutumnLeafCollection => 'Коллекция осенних листьев';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Одинокое дерево под луной';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Осенний цветок на ветке';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Лиса среди зелёных листьев';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Каноэ на озере, покрытом кувшинками';

  @override
  String get gameSceneDewDropsOnALeaf => 'Капли росы на листе';

  @override
  String get gameSceneStagInATurquoiseLake => 'Олень в бирюзовом озере';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Велосипед под оранжевой луной';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Белый тигр над долиной';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Два дерева в синей воде';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Рыбалка рядом с верной собакой';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Лилии у горного озера';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Олень на розовом берегу реки';

  @override
  String get gameSceneTropicalHutAtSunset => 'Тропическая хижина на закате';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Лиса, смотрящая на альпийскую долину';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Закат сквозь волшебную рощу';

  @override
  String get learningControlTitle => 'Изучение DevOps';

  @override
  String get learningControlAllCategories => 'Все категории';

  @override
  String get learningControlSearchCards => 'Поиск карточек';

  @override
  String get learningControlClearSearch => 'Очистить поиск';

  @override
  String get learningControlCategory => 'Категория';

  @override
  String get learningControlShowAll => 'Показать все карточки';

  @override
  String learningControlShowSaved(int count) {
    return 'Показать сохранённые карточки ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Выключить перемешивание';

  @override
  String get learningControlShuffleOn => 'Перемешать карточки';

  @override
  String get learningControlAutoOff => 'Остановить автопереключение';

  @override
  String get learningControlAutoOn => 'Автопереключение каждые 10 секунд';

  @override
  String get learningControlNoSaved => 'Сохранённых карточек пока нет';

  @override
  String get learningControlNoMatches => 'Подходящих карточек нет';

  @override
  String get learningControlResetFilters => 'Сбросить фильтры';

  @override
  String get learningControlPrevious => 'Назад';

  @override
  String get learningControlNext => 'Далее';

  @override
  String get learningControlProgress => 'Прогресс';

  @override
  String get learningControlRemoveSaved => 'Удалить из сохранённых';

  @override
  String get learningControlSaveCard => 'Сохранить карточку';

  @override
  String get learningControlExample => 'Пример';

  @override
  String get learningControlCopyExample => 'Копировать пример';

  @override
  String get learningControlExampleCopied => 'Пример скопирован';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Уровень $value1 пройден';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Играть на уровне $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Пройдите уровень $value1, чтобы разблокировать';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Ежедневный бонус за вход';

  @override
  String get sharedDialogThanksForComingBack => 'Спасибо, что вернулись!';

  @override
  String get sharedDialogDailyRewardAdded => 'Ваша ежедневная награда добавлена к общему количеству очков.';

  @override
  String get sharedDialogAwesome => 'Великолепно!';

  @override
  String get accountWelcomeGuest => 'Гость';

  @override
  String get accountWelcomeGuestUser => 'Гостевой пользователь';

  @override
  String get accountWelcomeUser => 'Пользователь';

  @override
  String get accountWelcomePlayingAsGuest => 'Играет как гость';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Подключить аккаунт Google';

  @override
  String get accountWelcomeGoogleConnected => 'Аккаунт Google успешно подключён! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Вход был отменён.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Не удалось подключиться: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Выйти';

  @override
  String get accountWelcomeSignOutTitle => 'Выйти из аккаунта?';

  @override
  String get accountWelcomeSignOutMessage => 'Вы уверены, что хотите выйти? Вам нужно будет снова войти, чтобы получить доступ к сохранённому прогрессу.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Ошибка выхода: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Сбросить данные приложения?';

  @override
  String get accountWelcomeResetAppMessage => 'Это навсегда удалит ВСЕ ваши очки, серии, историю игр и настройки. Вы выйдете из аккаунта и вернётесь на начальный экран. Это действие нельзя отменить.';

  @override
  String get accountWelcomeResetEverything => 'Сбросить всё';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Ошибка сброса: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Отмена';

  @override
  String get accountWelcomeResetAppData => 'Сбросить данные приложения';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Очистить все очки, серии и настройки';

  @override
  String get accountWelcomeFooter => 'Приложение DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Перевод пока недоступен';

  @override
  String get accountWelcomeContinueWithGoogle => 'Продолжить через Google';

  @override
  String get accountWelcomeSigningIn => 'Выполняется вход...';

  @override
  String get accountWelcomeOr => 'ИЛИ';

  @override
  String get accountWelcomeContinueAsGuest => 'Продолжить как гость';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Вы сможете войти позже из своего профиля.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Вы можете начать как гость и войти позже.';

  @override
  String get accountWelcomeGreetingGuest => 'Добро пожаловать';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Добро пожаловать, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Вход через Google завершён, но аккаунт пользователя не был получен.';

  @override
  String get accountWelcomeErrorEmailExists => 'Для этого email уже существует аккаунт с другим способом входа.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Этот аккаунт Google уже привязан к другому аккаунту.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Учётные данные Google недействительны или срок их действия истёк.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Этот аккаунт был отключён.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Вход через Google в настоящее время не включён.';

  @override
  String get accountWelcomeErrorNetwork => 'Ошибка сети. Проверьте подключение к интернету и попробуйте снова.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Слишком много попыток входа. Пожалуйста, подождите и попробуйте снова.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Нет дополнительной информации об ошибке.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Не удалось войти через Google.\n\nКод: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Ошибка входа через Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Не удалось продолжить как гость. Попробуйте ещё раз.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Вход через Google скоро будет доступен.';

  @override
  String get accountWelcomeLoginTagline => 'Учитесь • Практикуйтесь • Соревнуйтесь • Зарабатывайте';

  @override
  String get accountWelcomeCountryRegion => 'Страна / регион';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Страна / регион: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Поиск страны';

  @override
  String get accountWelcomeCountryNotSelected => 'Не выбрано';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Почему DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ практических вопросов';

  @override
  String get accountWelcomeFeatureLanguages => 'Поддержка нескольких языков';

  @override
  String get accountWelcomeFeatureStreaks => 'Серии и таблицы лидеров';

  @override
  String get accountWelcomeFeatureGames => 'Игры и испытания';

  @override
  String get accountWelcomeFeatureCloud => 'Облако и DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Бонусы и награды';

  @override
  String get accountWelcomePracticeOnTheGo => 'Практикуйтесь в дороге';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Установите приложение для Android и учитесь офлайн где угодно.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Доступно в Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Серия: $days дн.';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Поддерживайте серию $days дн. подряд.';
  }

  @override
  String get achLocYearStreakTitle => 'Серия: 1 год';

  @override
  String get achLocFirstQuizTitle => 'Первая викторина';

  @override
  String get achLocFirstQuizDescription => 'Пройдите свою первую викторину.';

  @override
  String get achLocQuiz10Title => 'Исследователь викторин';

  @override
  String get achLocQuiz10Description => 'Пройдите 10 викторин.';

  @override
  String get achLocPoints1000Title => '1000 очков';

  @override
  String get achLocPoints1000Description => 'Заработайте в Quiz в общей сложности 1000 очков.';

  @override
  String get achLocPerfectScoreTitle => 'Идеальный результат';

  @override
  String get achLocPerfectScoreDescription => 'Наберите 100% в любой викторине.';

  @override
  String get achLocQuiz25Title => 'Энтузиаст викторин';

  @override
  String get achLocQuiz25Description => 'Пройдите 25 викторин.';

  @override
  String get achLocQuiz50Title => 'Мастер викторин';

  @override
  String get achLocQuiz50Description => 'Пройдите 50 викторин.';

  @override
  String get achLocQuiz100Title => 'Клуб сотни';

  @override
  String get achLocQuiz100Description => 'Пройдите 100 викторин.';

  @override
  String get achLocQuiz250Title => 'Легенда викторин';

  @override
  String get achLocQuiz250Description => 'Пройдите 250 викторин.';

  @override
  String get achLocPoints5000Title => '5 000 очков';

  @override
  String get achLocPoints5000Description => 'Заработайте в общей сложности 5 000 очков.';

  @override
  String get achLocPoints10000Title => '10 000 очков';

  @override
  String get achLocPoints10000Description => 'Заработайте в общей сложности 10 000 очков.';

  @override
  String get achLocPoints50000Title => '50 000 очков';

  @override
  String get achLocPoints50000Description => 'Заработайте в общей сложности 50 000 очков.';

  @override
  String get achLocPoints100000Title => '100 000 очков';

  @override
  String get achLocPoints100000Description => 'Заработайте в общей сложности 100 000 очков.';

  @override
  String get achLocDaily1Title => 'Начало дня';

  @override
  String get achLocDaily1Description => 'Пройдите свою первую ежедневную викторину.';

  @override
  String get achLocDaily7Title => 'Ежедневная привычка';

  @override
  String get achLocDaily7Description => 'Пройдите 7 ежедневных викторин.';

  @override
  String get achLocDaily30Title => 'Чемпион дня';

  @override
  String get achLocDaily30Description => 'Пройдите 30 ежедневных викторин.';

  @override
  String get achLocSets5Title => 'Начинающий коллекционер наборов';

  @override
  String get achLocSets5Description => 'Завершите 5 наборов викторин.';

  @override
  String get achLocSets25Title => 'Коллекционер наборов';

  @override
  String get achLocSets25Description => 'Завершите 25 наборов викторин.';

  @override
  String get achLocSets50Title => 'Мастер наборов';

  @override
  String get achLocSets50Description => 'Завершите 50 наборов викторин.';

  @override
  String get achLocSets100Title => 'Легенда наборов';

  @override
  String get achLocSets100Description => 'Завершите 100 наборов викторин.';

  @override
  String get achLocCert1Title => 'Первый сертификат';

  @override
  String get achLocCert1Description => 'Получите свой первый сертификат по категории.';

  @override
  String get achLocCert5Title => 'Сертифицированный профессионал';

  @override
  String get achLocCert5Description => 'Получите 5 сертификатов по категориям.';

  @override
  String get achLocCert21Title => 'Полностью сертифицирован';

  @override
  String get achLocCert21Description => 'Получите сертификат во всех 21 категориях.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Бесплатно 7–14 февраля каждый год';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Бесплатно 8–15 марта каждый год';

  @override
  String get achLocThemeLight => 'Светлая';

  @override
  String get achLocThemeDark => 'Тёмная';

  @override
  String get achLocThemeSakura => 'Сакура';

  @override
  String get achLocThemeSunset => 'Закат';

  @override
  String get achLocThemeCoffee => 'Кофе';

  @override
  String get achLocThemeTea => 'Чай';

  @override
  String get achLocThemeOcean => 'Океан';

  @override
  String get achLocThemeSolarFlare => 'Солнечная вспышка';

  @override
  String get achLocThemeForest => 'Лес';

  @override
  String get achLocThemeAurora => 'Аврора';

  @override
  String get achLocThemeMatrix => 'Матрица';

  @override
  String get achLocThemeCyberPurple => 'Кибер-пурпур';

  @override
  String get achLocThemeInferno => 'Инферно';

  @override
  String get achLocThemeMidnight => 'Полночь';

  @override
  String get achLocThemeDarkGrey => 'Тёмно-серый';

  @override
  String get achLocThemeBarbee => 'Барби';

  @override
  String get achLocThemeValentineDay => 'День святого Валентина';

  @override
  String get achLocThemeDqSpecial => 'Особая тема DQ';

  @override
  String get achLocThemeArmy => 'Армия';

  @override
  String get achLocThemeSpiderMan => 'Человек-паук';

  @override
  String get achLocThemeKrrish => 'Крриш';

  @override
  String get achLocThemeIronMan => 'Железный человек';

  @override
  String get achLocThemeCaptainAmerica => 'Капитан Америка';

  @override
  String get achLocThemeThor => 'Тор';

  @override
  String get achLocThemeHulk => 'Халк';

  @override
  String get achLocThemeBlackWidow => 'Чёрная вдова';

  @override
  String get achLocThemeHawkeye => 'Соколиный глаз';

  @override
  String get achLocThemeBlackPanther => 'Чёрная пантера';

  @override
  String get achLocThemeScarletWitch => 'Алая ведьма';

  @override
  String get achLocThemeVision => 'Вижн';

  @override
  String get achLocThemeAntMan => 'Человек-муравей';

  @override
  String get achLocThemeCaptainMarvel => 'Капитан Марвел';

  @override
  String get achLocThemeDoctorStrange => 'Доктор Стрэндж';

  @override
  String get achLocThemeAvengers => 'Мстители';

  @override
  String get achLocThemeBatman => 'Бэтмен';

  @override
  String get achLocThemeSuperman => 'Супермен';

  @override
  String get achLocThemeWonderWoman => 'Чудо-женщина';

  @override
  String get achLocThemeFlash => 'Флэш';

  @override
  String get achLocThemeAquaman => 'Аквамен';

  @override
  String get achLocThemeGreenLantern => 'Зелёный Фонарь';

  @override
  String get achLocThemeCyborg => 'Киборг';

  @override
  String get achLocThemeSupergirl => 'Супергёрл';

  @override
  String get achLocThemeDc => 'Герои DC';

  @override
  String get achLocThemeRainbow => 'Радуга';

  @override
  String get achLocThemeDiamond => 'Алмаз';

  @override
  String get achLocThemeLegendary => 'Легендарный';

  @override
  String get gameHintCmd001LsLa => 'Показать все файлы с подробностями';

  @override
  String get gameHintCmd002Grep => 'Искать текст по шаблону';

  @override
  String get gameHintCmd003Chmod => 'Изменить права доступа к файлу';

  @override
  String get gameHintCmd004DfH => 'Показать свободное место на диске';

  @override
  String get gameHintCmd005TailF => 'Следить за растущим лог-файлом';

  @override
  String get gameHintCmd006PsAux => 'Список запущенных процессов';

  @override
  String get gameHintCmd007GitClone => 'Скопировать удалённый репозиторий';

  @override
  String get gameHintCmd008GitStash => 'Отложить незафиксированные изменения';

  @override
  String get gameHintCmd009GitRebase => 'Применить коммиты заново на новой базе';

  @override
  String get gameHintCmd010GitBlame => 'Показать, кто изменил каждую строку';

  @override
  String get gameHintCmd011DockerPs => 'Список запущенных контейнеров';

  @override
  String get gameHintCmd012DockerBuild => 'Создать образ из Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Показать вывод контейнера';

  @override
  String get gameHintCmd014DockerExec => 'Выполнить команду внутри контейнера';

  @override
  String get gameHintCmd015KubectlGetPods => 'Список подов в пространстве имён';

  @override
  String get gameHintCmd016KubectlApply => 'Создать ресурсы из файла';

  @override
  String get gameHintCmd017KubectlDescribe => 'Показать подробную информацию о ресурсе';

  @override
  String get gameHintCmd018KubectlScale => 'Изменить количество реплик';

  @override
  String get gameHintCmd019TerraformInit => 'Загрузить провайдеры и выполнить настройку';

  @override
  String get gameHintCmd020TerraformPlan => 'Предварительный просмотр изменений инфраструктуры';

  @override
  String get gameHintCmd021TerraformApply => 'Создать или обновить инфраструктуру';

  @override
  String get gameHintCmd022TerraformDestroy => 'Удалить управляемую инфраструктуру';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Запустить плейбук автоматизации';

  @override
  String get gameHintCmd024Ping => 'Проверить доступность через ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Показать маршрут до узла';

  @override
  String get gameHintCmd026Curl => 'Передать данные по URL';

  @override
  String get gameHintCmd027Ssh => 'Безопасно войти на удалённую машину';

  @override
  String get gameHintCmd028CrontabE => 'Изменить запланированные задания';

  @override
  String get gameHintCmd029SystemctlStatus => 'Проверить состояние службы';

  @override
  String get gameHintCmd030HelmInstall => 'Развернуть чарт в Kubernetes';

  @override
  String get gameHintWord001Git => 'Отслеживает изменения в исходном коде.';

  @override
  String get gameHintWord002Aws => 'Облачная платформа Amazon.';

  @override
  String get gameHintWord003Api => 'Контракт, позволяющий программным системам взаимодействовать.';

  @override
  String get gameHintWord004Dns => 'Преобразует доменные имена в IP-адреса.';

  @override
  String get gameHintWord005Cli => 'Текстовый интерфейс для выполнения команд.';

  @override
  String get gameHintWord006Cpu => 'Процессор, выполняющий инструкции.';

  @override
  String get gameHintWord007Ram => 'Временная память для работающих программ.';

  @override
  String get gameHintWord008Ssh => 'Защищённый протокол удалённого доступа к оболочке.';

  @override
  String get gameHintWord009Yaml => 'Удобный для чтения формат сериализации данных.';

  @override
  String get gameHintWord010Linux => 'Ядро и семейство операционных систем с открытым исходным кодом.';

  @override
  String get gameHintWord011Bash => 'Популярная командная оболочка Unix.';

  @override
  String get gameHintWord012Cloud => 'Вычислительные ресурсы по требованию через сеть.';

  @override
  String get gameHintWord013Docker => 'Платформа для сборки и запуска контейнеров.';

  @override
  String get gameHintWord014Azure => 'Облачная платформа Microsoft.';

  @override
  String get gameHintWord015Python => 'Широко используемый язык сценариев и программирования.';

  @override
  String get gameHintWord016Github => 'Популярный хостинговый сервис совместной работы на базе Git.';

  @override
  String get gameHintWord017Bgp => 'Протокол маршрутизации, обменивающийся маршрутами между автономными системами.';

  @override
  String get gameHintWord018Jenkins => 'Сервер автоматизации, часто используемый для CI.';

  @override
  String get gameHintWord019Port => 'Пронумерованная конечная точка сетевых служб.';

  @override
  String get gameHintWord020Proxy => 'Сервер, пересылающий запросы от имени клиентов.';

  @override
  String get gameHintWord021Cache => 'Быстрое хранилище часто используемых данных.';

  @override
  String get gameHintWord022Cron => 'Планировщик Unix для повторяющихся команд.';

  @override
  String get gameHintWord023Bicep => 'Декларативный язык Azure для инфраструктуры как кода.';

  @override
  String get gameHintWord024Apigee => 'Платформа Google Cloud для централизованного управления API.';

  @override
  String get gameHintWord025Root => 'Привилегированная учётная запись администратора в Unix-подобных системах.';

  @override
  String get gameHintWord026Nginx => 'Веб-сервер и обратный прокси.';

  @override
  String get gameHintWord027Redis => 'Хранилище данных в памяти, часто используемое как кэш.';

  @override
  String get gameHintWord028Mysql => 'Популярная реляционная система баз данных.';

  @override
  String get gameHintWord029Ruby => 'Язык программирования, используемый в таких инструментах, как Chef.';

  @override
  String get gameHintWord030Helm => 'Менеджер пакетов, обычно используемый с Kubernetes.';

  @override
  String get gameHintWord031Pod => 'Наименьшая развёртываемая единица в Kubernetes.';

  @override
  String get gameHintWord032Image => 'Шаблон только для чтения для создания контейнера.';

  @override
  String get gameHintWord033Build => 'Создаёт артефакт из исходников и зависимостей.';

  @override
  String get gameHintWord034Deploy => 'Выпускает приложение в окружение.';

  @override
  String get gameHintWord035Terraform => 'Инструмент HashiCorp для инфраструктуры как кода.';

  @override
  String get gameHintWord036Ansible => 'Инструмент автоматизации и конфигурирования без агентов.';

  @override
  String get gameHintWord037Kubectl => 'Клиент командной строки для Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Сокращение от Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Операционная модель, где Git служит источником истины.';

  @override
  String get gameHintWord040Pipeline => 'Автоматизированная последовательность этапов сборки, тестирования и выпуска.';

  @override
  String get gameHintWord041Container => 'Изолированный процесс, упакованный вместе с зависимостями.';

  @override
  String get gameHintWord042Cluster => 'Группа машин, управляемая как единая система.';

  @override
  String get gameHintWord043Ingress => 'Объект Kubernetes API для внешней HTTP-маршрутизации.';

  @override
  String get gameHintWord044Firewall => 'Фильтрует сетевой трафик по правилам безопасности.';

  @override
  String get gameHintWord045Subnet => 'Логическое подразделение IP-сети.';

  @override
  String get gameHintWord046Gateway => 'Сетевой узел, соединяющий разные сети.';

  @override
  String get gameHintWord047Router => 'Пересылает пакеты между сетями.';

  @override
  String get gameHintWord048Switch => 'Соединяет устройства внутри локальной сети.';

  @override
  String get gameHintWord049Repository => 'Управляемое хранилище исходного кода или пакетов.';

  @override
  String get gameHintWord050Systemd => 'Система инициализации и менеджер служб Linux.';

  @override
  String get gameHintWord051Journalctl => 'Команда для чтения журналов systemd.';

  @override
  String get gameHintWord052Permission => 'Правило, определяющее, кто может читать, записывать или выполнять.';

  @override
  String get gameHintWord053Alloydb => 'Управляемая база данных Google Cloud, совместимая с PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Объект Kubernetes для несекретной конфигурации.';

  @override
  String get gameHintWord055Secret => 'Объект Kubernetes для конфиденциальных данных.';

  @override
  String get gameHintWord056Persistent => 'Описывает хранилище, переживающее перезапуск рабочей нагрузки.';

  @override
  String get gameHintWord057Volume => 'Хранилище файловой системы, смонтированное в контейнер.';

  @override
  String get gameHintWord058Storage => 'Постоянное место для файлов, объектов или блоков.';

  @override
  String get gameHintWord059Replica => 'Копия экземпляра рабочей нагрузки для масштабирования или надёжности.';

  @override
  String get gameHintWord060Deployment => 'Контроллер Kubernetes для подов приложений без состояния.';

  @override
  String get gameHintWord061Dockerfile => 'Инструкции для сборки образа Docker.';

  @override
  String get gameHintWord062Database => 'Организованное хранилище, к которому обращаются приложения.';

  @override
  String get gameHintWord063Automation => 'Использование программ для повторяемых задач без ручных действий.';

  @override
  String get gameHintWord064Anthos => 'Платформа Google Cloud для управления кластерами в разных окружениях.';

  @override
  String get gameHintWord065Bigquery => 'Сервис Google Cloud для крупномасштабной аналитики данных.';

  @override
  String get gameHintWord066Bigtable => 'Широкостолбцовая NoSQL-база данных Google Cloud для аналитики.';

  @override
  String get gameHintWord067Loadbalancer => 'Распределяет входящий трафик между несколькими бэкендами.';

  @override
  String get gameHintWord068Prometheus => 'Система мониторинга, хранящая метрики временных рядов.';

  @override
  String get gameHintWord069Grafana => 'Платформа для запросов и визуализации данных наблюдаемости.';

  @override
  String get gameHintWord070Cloudant => 'Управляемая документная NoSQL-база JSON в IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Сервис AWS, записывающий активность API для аудита.';

  @override
  String get gameHintWord072Statefulset => 'Контроллер Kubernetes для нагрузок со стабильной идентичностью.';

  @override
  String get gameHintWord073Daemonset => 'Контроллер Kubernetes, запускающий под на выбранных узлах.';

  @override
  String get gameHintWord074Serviceaccount => 'Идентичность Kubernetes для рабочей нагрузки или процесса.';

  @override
  String get gameHintWord075Networkpolicy => 'Ресурс Kubernetes, управляющий сетевым трафиком подов.';

  @override
  String get gameHintWord076Certificate => 'Цифровой документ для подтверждения личности в TLS.';

  @override
  String get gameHintWord077Encryption => 'Преобразует данные так, чтобы их могли прочитать только уполномоченные стороны.';

  @override
  String get gameHintWord078Observability => 'Возможность судить о поведении системы по её выходным данным.';

  @override
  String get gameHintWord079Coredns => 'DNS-сервер, часто используемый внутри кластеров Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Проект для управления облачными ресурсами через Kubernetes API.';

  @override
  String get gameHintWord081Failover => 'Переключение на резервный компонент после сбоя.';

  @override
  String get gameHintWord082Idempotency => 'Свойство, при котором повтор операции даёт тот же эффект, что и однократное выполнение.';

  @override
  String get gameHintWord083Dataflow => 'Сервис Google Cloud для потоковой и пакетной обработки данных.';

  @override
  String get gameHintWord084Orchestration => 'Согласованное управление несколькими автоматизированными рабочими нагрузками.';

  @override
  String get gameHintWord085Dataplex => 'Сервис Google Cloud для обнаружения и управления корпоративными данными.';

  @override
  String get gameHintWord086Serverless => 'Модель исполнения, где управление инфраструктурой скрыто.';

  @override
  String get gameHintWord087Distributed => 'Система, компоненты которой работают на нескольких машинах в сети.';

  @override
  String get gameHintWord088Dataproc => 'Управляемая среда Google Cloud для Apache Spark и Hadoop.';

  @override
  String get gameHintWord089Dynamodb => 'NoSQL-база AWS, часто используемая для блокировки состояния Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Подготовка инфраструктуры или ресурсов к использованию.';

  @override
  String get gameHintWord091Elasticsearch => 'Поисковый движок, часто используемый для централизованного логирования.';

  @override
  String get gameHintWord092Etcd => 'Хранилище «ключ-значение» с состоянием кластера Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Процесс проверки, кто такой пользователь или сервис.';

  @override
  String get gameHintWord094Authorization => 'Процесс определения, что разрешено делать субъекту.';

  @override
  String get gameHintWord095Expressroute => 'Сервис Azure для выделенного частного подключения к центрам обработки данных.';

  @override
  String get gameHintWord096Configuration => 'Параметры, определяющие поведение программы.';

  @override
  String get gameHintWord097Infrastructure => 'Вычислительные, сетевые и storage-ресурсы, поддерживающие приложения.';

  @override
  String get gameHintWord098Fastconnect => 'Сервис Oracle Cloud для выделенных частных сетевых подключений.';

  @override
  String get gameHintWord099Containerd => 'Отраслевой стандарт среды выполнения контейнеров, используемый в Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Платформа оркестрации контейнеров.';

  @override
  String get gameHintWord101Http => 'Прикладной протокол для запроса веб-ресурсов.';

  @override
  String get gameHintWord102Https => 'Зашифрованная версия протокола веб-запросов.';

  @override
  String get gameHintWord103Tcp => 'Транспортный протокол с надёжной упорядоченной доставкой.';

  @override
  String get gameHintWord104Udp => 'Транспортный протокол без установления соединения для датаграмм.';

  @override
  String get gameHintWord105Tls => 'Протокол защиты данных, передаваемых по сети.';

  @override
  String get gameHintWord106Ssl => 'Устаревший предшественник современного протокола защиты транспорта.';

  @override
  String get gameHintWord107Ftp => 'Традиционный протокол передачи файлов.';

  @override
  String get gameHintWord108Sftp => 'Протокол передачи файлов поверх защищённого shell-соединения.';

  @override
  String get gameHintWord109Smtp => 'Протокол отправки электронной почты между серверами.';

  @override
  String get gameHintWord110Snmp => 'Протокол управления и мониторинга сетевых устройств.';

  @override
  String get gameHintWord111Icmp => 'Протокол, передающий сетевые ошибки и ping-сообщения.';

  @override
  String get gameHintWord112Arp => 'Сопоставляет локальные адреса IPv4 с аппаратными адресами.';

  @override
  String get gameHintWord113Dhcp => 'Автоматически выдаёт IP-конфигурацию сетевым клиентам.';

  @override
  String get gameHintWord114Nat => 'Переписывает сетевые адреса при прохождении пакетов через шлюз.';

  @override
  String get gameHintWord115Vpn => 'Зашифрованный туннель, соединяющий удалённые сети или пользователей.';

  @override
  String get gameHintWord116Vpc => 'Изолированная виртуальная сеть в публичном облаке.';

  @override
  String get gameHintWord117Vlan => 'Логическое разделение коммутируемой сети.';

  @override
  String get gameHintWord118Wan => 'Сеть, охватывающая большую географическую область.';

  @override
  String get gameHintWord119Lan => 'Сеть, соединяющая устройства в пределах локальной зоны.';

  @override
  String get gameHintWord120Cdn => 'Распределённая периферийная сеть, кэширующая доставляемый контент.';

  @override
  String get gameHintWord121Cidr => 'Нотация, задающая сетевой префикс через косую черту и длину.';

  @override
  String get gameHintWord122Host => 'Компьютер или конечная точка, подключённая к сети.';

  @override
  String get gameHintWord123Hostname => 'Понятное человеку имя, присвоенное сетевой машине.';

  @override
  String get gameHintWord124Domain => 'Именованная административная область в системе имён интернета.';

  @override
  String get gameHintWord125Zone => 'Административная часть пространства имён DNS.';

  @override
  String get gameHintWord126Record => 'Отдельная запись в базе данных DNS.';

  @override
  String get gameHintWord127Aaaa => 'Тип записи DNS, сопоставляющий имя с адресом IPv6.';

  @override
  String get gameHintWord128Ptr => 'Тип записи DNS для обратного поиска по адресу.';

  @override
  String get gameHintWord129Txt => 'Тип записи DNS, хранящий текстовые значения.';

  @override
  String get gameHintWord130Cname => 'Запись DNS, делающая одно имя псевдонимом другого.';

  @override
  String get gameHintWord131Route => 'Запись о пути, направляющая пакеты к назначению.';

  @override
  String get gameHintWord132Routing => 'Выбор путей для трафика между сетями.';

  @override
  String get gameHintWord133Packet => 'Единица данных, передаваемая по сети.';

  @override
  String get gameHintWord134Protocol => 'Согласованные правила взаимодействия систем.';

  @override
  String get gameHintWord135Ack => 'Флаг TCP, подтверждающий получение данных.';

  @override
  String get gameHintWord136Bandwidth => 'Пропускная способность канала связи.';

  @override
  String get gameHintWord137Latency => 'Задержка до получения ответа на запрос или пакет.';

  @override
  String get gameHintWord138Throughput => 'Объём полезной работы или данных, обрабатываемый за единицу времени.';

  @override
  String get gameHintWord139Mtu => 'Наибольший размер пакета, передаваемый каналом без фрагментации.';

  @override
  String get gameHintWord140Alpn => 'Расширение TLS для согласования протокола прикладного уровня.';

  @override
  String get gameHintWord141Grep => 'Ищет строки текста, соответствующие шаблону.';

  @override
  String get gameHintWord142Sed => 'Потоковый редактор, часто используемый для замены текста.';

  @override
  String get gameHintWord143Lscpu => 'Команда Linux, показывающая архитектуру процессора и сведения о ядрах.';

  @override
  String get gameHintWord144Find => 'Ищет в дереве каталогов по условиям для файлов.';

  @override
  String get gameHintWord145Lsblk => 'Команда Linux, перечисляющая блочные устройства и их связи.';

  @override
  String get gameHintWord146Sort => 'Упорядочивает строки текста.';

  @override
  String get gameHintWord147Uniq => 'Отфильтровывает соседние повторяющиеся строки.';

  @override
  String get gameHintWord148Head => 'Выводит начало файла.';

  @override
  String get gameHintWord149Tail => 'Выводит конец файла и может следить за дописываемыми логами.';

  @override
  String get gameHintWord150Cat => 'Объединяет файлы и выводит их содержимое.';

  @override
  String get gameHintWord151Cut => 'Извлекает выбранные поля или столбцы символов из строк.';

  @override
  String get gameHintWord152Tee => 'Копирует стандартный ввод в файлы и на стандартный вывод.';

  @override
  String get gameHintWord153Echo => 'Записывает свои аргументы на стандартный вывод.';

  @override
  String get gameHintWord154Printf => 'Выводит форматированный текст из оболочки или программы.';

  @override
  String get gameHintWord155Touch => 'Обновляет метки времени файла или создаёт пустой файл.';

  @override
  String get gameHintWord156Mkdir => 'Создаёт каталоги.';

  @override
  String get gameHintWord157Rmdir => 'Удаляет пустые каталоги.';

  @override
  String get gameHintWord158Chmod => 'Изменяет биты прав доступа к файлам Unix.';

  @override
  String get gameHintWord159Chown => 'Изменяет владельца файла.';

  @override
  String get gameHintWord160Chgrp => 'Изменяет группу-владельца файла.';

  @override
  String get gameHintWord161Pwd => 'Выводит текущий рабочий каталог.';

  @override
  String get gameHintWord162Apt => 'Инструмент управления пакетами в системах на основе Debian.';

  @override
  String get gameHintWord163Top => 'Интерактивный вывод процессов и использования системных ресурсов.';

  @override
  String get gameHintWord164Agent => 'Программный компонент, выполняющий работу или передающий отчёты на хосте.';

  @override
  String get gameHintWord165Kill => 'Отправляет сигнал процессу по его идентификатору.';

  @override
  String get gameHintWord166Signal => 'Уведомление, доставляемое процессу операционной системой.';

  @override
  String get gameHintWord167Sigkill => 'Сигнал Unix, немедленно завершающий процесс.';

  @override
  String get gameHintWord168Nice => 'Запускает процесс с изменённым приоритетом планирования.';

  @override
  String get gameHintWord169Renice => 'Изменяет приоритет планирования работающего процесса.';

  @override
  String get gameHintWord170Jobs => 'Перечисляет задания, управляемые текущей оболочкой.';

  @override
  String get gameHintWord171Nohup => 'Запускает команду, игнорируя сигналы разрыва соединения.';

  @override
  String get gameHintWord172Screen => 'Терминальный мультиплексор с отсоединяемыми сеансами.';

  @override
  String get gameHintWord173Uptime => 'Показывает, как долго работает система.';

  @override
  String get gameHintWord174Uname => 'Выводит сведения о системе и ядре.';

  @override
  String get gameHintWord175Whoami => 'Выводит имя текущего эффективного пользователя.';

  @override
  String get gameHintWord176Umask => 'Задаёт маску прав, применяемую при создании файлов.';

  @override
  String get gameHintWord177Usermod => 'Команда Linux, изменяющая существующую учётную запись.';

  @override
  String get gameHintWord178Crontab => 'Изменяет или выводит список запланированных повторяющихся заданий.';

  @override
  String get gameHintWord179Findmnt => 'Команда Linux, показывающая сведения о смонтированных файловых системах.';

  @override
  String get gameHintWord180Mount => 'Подключает файловую систему к дереву каталогов.';

  @override
  String get gameHintWord181Sigterm => 'Сигнал Unix с запросом корректного завершения процесса.';

  @override
  String get gameHintWord182Fstab => 'Системная таблица с описанием монтируемых файловых систем.';

  @override
  String get gameHintWord183Swap => 'Дисковое пространство, дополняющее физическую память.';

  @override
  String get gameHintWord184Tmpfs => 'Временная файловая система на основе виртуальной памяти.';

  @override
  String get gameHintWord185Proc => 'Виртуальная файловая система Linux с информацией о процессах и ядре.';

  @override
  String get gameHintWord186Syslog => 'Стандартный протокол и формат сообщений журналирования.';

  @override
  String get gameHintWord187Dmesg => 'Показывает сообщения из кольцевого буфера ядра.';

  @override
  String get gameHintWord188Free => 'Показывает используемую и доступную память системы.';

  @override
  String get gameHintWord189Stat => 'Показывает подробные метаданные файла.';

  @override
  String get gameHintWord190Lsof => 'Перечисляет открытые файлы и удерживающие их процессы.';

  @override
  String get gameHintWord191Netstat => 'Показывает сетевые соединения и сведения о маршрутизации.';

  @override
  String get gameHintWord192Checksum => 'Вычисленное значение для обнаружения изменений или повреждения данных.';

  @override
  String get gameHintWord193Ping => 'Проверяет доступность по сети с помощью эхо-запросов.';

  @override
  String get gameHintWord194Traceroute => 'Показывает промежуточные узлы на пути к сетевому адресу назначения.';

  @override
  String get gameHintWord195Resolver => 'Компонент DNS, находящий ответы на запросы имён.';

  @override
  String get gameHintWord196Nslookup => 'Выполняет поиск имён и адресов DNS.';

  @override
  String get gameHintWord197Telnet => 'Устаревший незашифрованный протокол удалённого терминала.';

  @override
  String get gameHintWord198Tftp => 'Простой протокол передачи файлов на основе UDP.';

  @override
  String get gameHintWord199Daemon => 'Фоновый служебный процесс в Unix-подобных системах.';

  @override
  String get gameHintWord200Kernel => 'Основной компонент, управляющий ресурсами операционной системы.';

  @override
  String get gameHintWord201Commit => 'Зафиксированный снимок изменений в системе контроля версий.';

  @override
  String get gameHintWord202Branch => 'Перемещаемая ссылка, представляющая линию разработки.';

  @override
  String get gameHintWord203Merge => 'Объединяет истории разных линий разработки.';

  @override
  String get gameHintWord204Rebase => 'Воспроизводит коммиты поверх другого базового коммита.';

  @override
  String get gameHintWord205Clone => 'Создаёт локальную копию удалённого репозитория.';

  @override
  String get gameHintWord206Fetch => 'Загружает удалённые объекты и ссылки без слияния.';

  @override
  String get gameHintWord207Pull => 'Получает изменения и интегрирует их в текущую ветку.';

  @override
  String get gameHintWord208Push => 'Отправляет локальные коммиты в удалённый репозиторий.';

  @override
  String get gameHintWord209Stash => 'Временно сохраняет незафиксированные изменения рабочего дерева.';

  @override
  String get gameHintWord210Revert => 'Создаёт коммит, отменяющий другой коммит.';

  @override
  String get gameHintWord211Reset => 'Перемещает ссылку Git и может сбросить индекс или рабочие файлы.';

  @override
  String get gameHintWord212Reflog => 'Локальная история обновлений ссылок Git.';

  @override
  String get gameHintWord213Diff => 'Показывает различия между версиями или файлами.';

  @override
  String get gameHintWord214Status => 'Показывает проиндексированные, изменённые и неотслеживаемые файлы.';

  @override
  String get gameHintWord215Checkout => 'Команда Git для переключения ревизий или восстановления файлов.';

  @override
  String get gameHintWord216Tag => 'Именованная ссылка, обычно отмечающая релиз.';

  @override
  String get gameHintWord217Remote => 'Именованное подключение к другому репозиторию.';

  @override
  String get gameHintWord218Origin => 'Имя по умолчанию для удалённого репозитория, из которого выполнено клонирование.';

  @override
  String get gameHintWord219Upstream => 'Удалённая отслеживаемая ветка, связанная с локальной веткой.';

  @override
  String get gameHintWord220Worktree => 'Извлечённый рабочий каталог, связанный с репозиторием.';

  @override
  String get gameHintWord221Registry => 'Сервис хранения и распространения образов контейнеров.';

  @override
  String get gameHintWord222Digest => 'Идентификатор образа контейнера на основе его содержимого.';

  @override
  String get gameHintWord223Layer => 'Изменения файловой системы, составляющие часть образа контейнера.';

  @override
  String get gameHintWord224Entrypoint => 'Инструкция Dockerfile, задающая основной исполняемый файл контейнера.';

  @override
  String get gameHintWord225Cmd => 'Инструкция Dockerfile, задающая команду или аргументы по умолчанию.';

  @override
  String get gameHintWord226Workdir => 'Инструкция Dockerfile, задающая рабочий каталог.';

  @override
  String get gameHintWord227Copy => 'Инструкция Dockerfile, копирующая файлы контекста сборки в образ.';

  @override
  String get gameHintWord228Add => 'Инструкция Dockerfile, которая также может распаковывать локальные архивы.';

  @override
  String get gameHintWord229Run => 'Инструкция Dockerfile, выполняющая команду во время сборки.';

  @override
  String get gameHintWord230Env => 'Инструкция Dockerfile, задающая переменные окружения.';

  @override
  String get gameHintWord231Arg => 'Инструкция Dockerfile, объявляющая переменную времени сборки.';

  @override
  String get gameHintWord232Expose => 'Инструкция Dockerfile, документирующая порт контейнера.';

  @override
  String get gameHintWord233User => 'Инструкция Dockerfile, выбирающая учётную запись для последующих команд.';

  @override
  String get gameHintWord234Healthcheck => 'Инструкция, описывающая проверку работоспособности контейнера.';

  @override
  String get gameHintWord235Shebang => 'Первая строка скрипта, указывающая интерпретатор для выполнения.';

  @override
  String get gameHintWord236Compose => 'Инструмент Docker для описания и запуска многоконтейнерных приложений.';

  @override
  String get gameHintWord237Bridge => 'Распространённый сетевой драйвер Docker для локальной сети контейнеров.';

  @override
  String get gameHintWord238Overlay => 'Сеть, охватывающая контейнеры на нескольких хостах.';

  @override
  String get gameHintWord239None => 'Сетевой драйвер Docker, отключающий сеть контейнера.';

  @override
  String get gameHintWord240Prune => 'Удаляет неиспользуемые ресурсы контейнеров.';

  @override
  String get gameHintWord241Replicaset => 'Контроллер Kubernetes, поддерживающий нужное число подов.';

  @override
  String get gameHintWord242Service => 'Абстракция Kubernetes, обеспечивающая стабильный доступ к подам.';

  @override
  String get gameHintWord243Endpoints => 'Адреса, стоящие за сервисом Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Логическая область, группирующая ресурсы Kubernetes.';

  @override
  String get gameHintWord245Node => 'Рабочая машина, на которой размещаются поды Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Агент на каждом узле, управляющий запуском подов.';

  @override
  String get gameHintWord247Pvc => 'Запрос Kubernetes на постоянное хранилище.';

  @override
  String get gameHintWord248Apiserver => 'Компонент плоскости управления Kubernetes, предоставляющий API кластера.';

  @override
  String get gameHintWord249Role => 'Именованный набор разрешений в ролевом управлении доступом.';

  @override
  String get gameHintWord250Resourcequota => 'Объект Kubernetes, ограничивающий потребление ресурсов в пространстве имён.';

  @override
  String get gameHintWord251Selector => 'Выражение, выбирающее ресурсы по их меткам.';

  @override
  String get gameHintWord252Taint => 'Свойство узла, отталкивающее поды без соответствующего допуска.';

  @override
  String get gameHintWord253Toleration => 'Настройка пода, разрешающая размещение на узле с taint.';

  @override
  String get gameHintWord254Cordon => 'Помечает узел Kubernetes как недоступный для планирования.';

  @override
  String get gameHintWord255Uncordon => 'Снова делает изолированный узел доступным для планирования.';

  @override
  String get gameHintWord256Drain => 'Безопасно выселяет нагрузки перед обслуживанием узла.';

  @override
  String get gameHintWord257Job => 'Нагрузка Kubernetes, выполняющая задачу до завершения.';

  @override
  String get gameHintWord258Cronjob => 'Нагрузка Kubernetes, создающая задания по расписанию.';

  @override
  String get gameHintWord259Readiness => 'Проба, показывающая, может ли контейнер принимать трафик.';

  @override
  String get gameHintWord260Liveness => 'Проба, показывающая, нужно ли перезапустить контейнер.';

  @override
  String get gameHintWord261Canary => 'Подход к выпуску, при котором новая версия получает малую долю трафика.';

  @override
  String get gameHintWord262Rolling => 'Стратегия обновления с постепенной заменой работающих экземпляров.';

  @override
  String get gameHintWord263Rollback => 'Восстанавливает ранее работавшую версию приложения.';

  @override
  String get gameHintWord264Rollout => 'Поэтапное развёртывание новой версии приложения.';

  @override
  String get gameHintWord265Recreate => 'Стратегия развёртывания: остановить старые поды, затем запустить новые.';

  @override
  String get gameHintWord266Blue => 'Одно из двух окружений при выпуске по схеме blue-green.';

  @override
  String get gameHintWord267Green => 'Другое окружение при выпуске по схеме blue-green.';

  @override
  String get gameHintWord268Artifact => 'Версионируемый результат работы конвейера сборки.';

  @override
  String get gameHintWord269Staging => 'Предпродуктивное окружение для проверки релиза.';

  @override
  String get gameHintWord270Production => 'Окружение, обслуживающее реальных конечных пользователей.';

  @override
  String get gameHintWord271Release => 'Версия программы, предоставленная для использования.';

  @override
  String get gameHintWord272Version => 'Идентификатор, отличающий ревизию программы.';

  @override
  String get gameHintWord273Revision => 'Идентифицируемая версия документа или кодовой базы.';

  @override
  String get gameHintWord274Webhook => 'HTTP-уведомление, отправляемое при наступлении события.';

  @override
  String get gameHintWord275Runbook => 'Документированная процедура эксплуатации или восстановления системы.';

  @override
  String get gameHintWord276Workspace => 'Каталог или область с рабочими ресурсами проекта.';

  @override
  String get gameHintWord277Credentials => 'Данные аутентификации для доступа к системе.';

  @override
  String get gameHintWord278Trigger => 'Событие или условие, запускающее конвейер.';

  @override
  String get gameHintWord279Parameter => 'Именованный входной параметр задания или функции.';

  @override
  String get gameHintWord280Access => 'Возможность использовать ресурс при наличии авторизации.';

  @override
  String get gameHintWord281Module => 'Переиспользуемая группа описаний инфраструктуры.';

  @override
  String get gameHintWord282Provider => 'Плагин Terraform, связывающий конфигурацию с внешним API.';

  @override
  String get gameHintWord283Resource => 'Управляемый объект инфраструктуры, объявленный в конфигурации.';

  @override
  String get gameHintWord284Variable => 'Именованное входное значение для конфигурации или кода.';

  @override
  String get gameHintWord285Output => 'Значение, возвращаемое конфигурацией инфраструктуры.';

  @override
  String get gameHintWord286Tfstate => 'Суффикс файла, связанный со снимками состояния Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Суффикс файла для входных значений переменных Terraform.';

  @override
  String get gameHintWord288Backend => 'Конфигурация Terraform, управляющая хранением состояния.';

  @override
  String get gameHintWord289Plan => 'Предварительный просмотр предлагаемых изменений инфраструктуры в Terraform.';

  @override
  String get gameHintWord290Apply => 'Операция Terraform, выполняющая предложенные изменения.';

  @override
  String get gameHintWord291Destroy => 'Операция Terraform, удаляющая управляемую инфраструктуру.';

  @override
  String get gameHintWord292Import => 'Берёт существующий ресурс под управление инфраструктурой.';

  @override
  String get gameHintWord293Refresh => 'Синхронизирует записанное состояние с реальной инфраструктурой.';

  @override
  String get gameHintWord294Validate => 'Проверяет синтаксис и внутреннюю согласованность конфигурации.';

  @override
  String get gameHintWord295Fmt => 'Команда Terraform, применяющая канонический формат конфигурации.';

  @override
  String get gameHintWord296Init => 'Инициализирует провайдеры Terraform и рабочий каталог.';

  @override
  String get gameHintWord297Executor => 'Рабочий слот Jenkins, способный выполнять сборку.';

  @override
  String get gameHintWord298Dependencies => 'Связи, требующие одного компонента перед другим.';

  @override
  String get gameHintWord299Drift => 'Расхождение между объявленным и фактическим состоянием инфраструктуры.';

  @override
  String get gameHintWord300Locking => 'Не позволяет параллельным записывающим менять общее состояние.';

  @override
  String get gameHintWord301Playbook => 'Документ Ansible, описывающий сценарии и задачи автоматизации.';

  @override
  String get gameHintWord302Inventory => 'Набор управляемых хостов и групп в Ansible.';

  @override
  String get gameHintWord303Facts => 'Системная информация, собранная об управляемых хостах.';

  @override
  String get gameHintWord304Task => 'Отдельная единица работы в автоматизации.';

  @override
  String get gameHintWord305Handler => 'Задача Ansible, выполняемая по уведомлению об изменении.';

  @override
  String get gameHintWord306Notify => 'Директива Ansible, ставящая обработчик в очередь после изменившей задачи.';

  @override
  String get gameHintWord307Become => 'Настройка Ansible, включающая повышение привилегий.';

  @override
  String get gameHintWord308Vault => 'Функция Ansible для шифрования конфиденциальных данных автоматизации.';

  @override
  String get gameHintWord309Register => 'Директива Ansible, сохраняющая результат задачи в переменную.';

  @override
  String get gameHintWord310When => 'Ключевое слово Ansible для условного выполнения задач.';

  @override
  String get gameHintWord311Loop => 'Повторяет задачу автоматизации для каждого элемента коллекции.';

  @override
  String get gameHintWord312Include => 'Динамически загружает переиспользуемое содержимое автоматизации.';

  @override
  String get gameHintWord313Tags => 'Метки для выбора подмножеств задач автоматизации.';

  @override
  String get gameHintWord314Template => 'Файл, обрабатываемый с подстановкой переменных перед развёртыванием.';

  @override
  String get gameHintWord315Jinja => 'Язык шаблонов, используемый в Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Сокрытие деталей реализации за более простым интерфейсом.';

  @override
  String get gameHintWord317Agile => 'Итеративный подход к поставке ПО с упором на обратную связь.';

  @override
  String get gameHintWord318Puppet => 'Инструмент управления конфигурацией с декларативными манифестами.';

  @override
  String get gameHintWord319Airflow => 'Платформа для планирования и оркестрации рабочих процессов в виде DAG.';

  @override
  String get gameHintWord320Argo => 'Семейство облачно-ориентированных проектов, включая контроллер доставки GitOps.';

  @override
  String get gameHintWord321Rds => 'Сокращение от управляемого реляционного сервиса баз данных AWS.';

  @override
  String get gameHintWord322Sqs => 'Сокращение от управляемой очереди сообщений AWS.';

  @override
  String get gameHintWord323Sns => 'Сокращение от сервиса уведомлений AWS по модели публикации и подписки.';

  @override
  String get gameHintWord324Ses => 'Сокращение от сервиса отправки электронной почты AWS.';

  @override
  String get gameHintWord325Iam => 'Сокращение от облачного управления идентификацией и доступом.';

  @override
  String get gameHintWord326Kms => 'Сокращение от сервиса управления ключами шифрования AWS.';

  @override
  String get gameHintWord327Waf => 'Межсетевой экран, фильтрующий веб-запросы прикладного уровня.';

  @override
  String get gameHintWord328Eks => 'Сокращение от управляемого сервиса Kubernetes в AWS.';

  @override
  String get gameHintWord329Ecs => 'Сокращение от управляемого сервиса оркестрации контейнеров AWS.';

  @override
  String get gameHintWord330Ecr => 'Сокращение от реестра образов контейнеров AWS.';

  @override
  String get gameHintWord331Aurora => 'Реляционная база данных AWS, совместимая с MySQL и PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Аналитическое хранилище данных AWS.';

  @override
  String get gameHintWord333Neptune => 'Управляемая графовая база данных AWS.';

  @override
  String get gameHintWord334Elasticache => 'Управляемый сервис кэширования в памяти AWS.';

  @override
  String get gameHintWord335Athena => 'Сервис AWS для запросов к данным в объектном хранилище через SQL.';

  @override
  String get gameHintWord336Glue => 'Бессерверный сервис интеграции данных и ETL в AWS.';

  @override
  String get gameHintWord337Emr => 'Платформа AWS для управляемых кластеров обработки больших данных.';

  @override
  String get gameHintWord338Lambda => 'Сервис AWS для выполнения функций без управления серверами.';

  @override
  String get gameHintWord339Cloudfront => 'Глобальная сеть доставки контента AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Сервис AWS, собирающий метрики, логи и оповещения.';

  @override
  String get gameHintWord341Cloudshell => 'Браузерная среда оболочки AWS.';

  @override
  String get gameHintWord342Codecommit => 'Управляемый сервис репозиториев Git в AWS.';

  @override
  String get gameHintWord343Codebuild => 'Сервис AWS для компиляции исходников и запуска тестов сборки.';

  @override
  String get gameHintWord344Codedeploy => 'Сервис автоматизированного развёртывания приложений AWS.';

  @override
  String get gameHintWord345Codepipeline => 'Сервис конвейеров непрерывной доставки AWS.';

  @override
  String get gameHintWord346Guardduty => 'Интеллектуальный сервис обнаружения угроз AWS.';

  @override
  String get gameHintWord347Inspector => 'Сервис AWS для оценки уязвимостей рабочих нагрузок.';

  @override
  String get gameHintWord348Macie => 'Сервис AWS для обнаружения конфиденциальных данных в объектном хранилище.';

  @override
  String get gameHintWord349Shield => 'Управляемый сервис защиты от DDoS в AWS.';

  @override
  String get gameHintWord350Snowball => 'Физическое устройство AWS для передачи больших объёмов данных.';

  @override
  String get gameHintWord351Snowcone => 'Небольшое защищённое устройство из семейства офлайн-передачи AWS.';

  @override
  String get gameHintWord352Datasync => 'Сервис AWS для автоматизированной онлайн-передачи данных.';

  @override
  String get gameHintWord353Msk => 'Сокращение от управляемого сервиса Apache Kafka в AWS.';

  @override
  String get gameHintWord354Backup => 'Копия данных, хранимая для восстановления.';

  @override
  String get gameHintWord355Transcribe => 'Сервис AWS для преобразования речи в текст.';

  @override
  String get gameHintWord356Translate => 'Сервис AWS для перевода текста между языками.';

  @override
  String get gameHintWord357Rekognition => 'Сервис AWS для анализа изображений и видео.';

  @override
  String get gameHintWord358Comprehend => 'Сервис AWS для анализа естественного языка.';

  @override
  String get gameHintWord359Textract => 'Сервис AWS для извлечения текста и таблиц из документов.';

  @override
  String get gameHintWord360Sagemaker => 'Платформа AWS для создания и развёртывания моделей машинного обучения.';

  @override
  String get gameHintWord361Spanner => 'Глобально распределённая реляционная база данных Google Cloud.';

  @override
  String get gameHintWord362Pub => 'Издающая часть шаблона обмена сообщениями «публикация-подписка».';

  @override
  String get gameHintWord363Sub => 'Подписывающаяся часть шаблона обмена сообщениями «публикация-подписка».';

  @override
  String get gameHintWord364Functions => 'Управляемые событиями фрагменты кода в бессерверных платформах.';

  @override
  String get gameHintWord365App => 'Краткая форма слова «приложение».';

  @override
  String get gameHintWord366Engine => 'Исполняющий компонент в названиях вроде Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Вычислительная мощность, предоставляемая виртуальными машинами или контейнерами.';

  @override
  String get gameHintWord368Network => 'Связанные системы, обменивающиеся данными.';

  @override
  String get gameHintWord369Security => 'Защита систем и информации от угроз.';

  @override
  String get gameHintWord370Identity => 'Представление пользователя или сервиса для принятия решений о доступе.';

  @override
  String get gameHintWord371Monitoring => 'Непрерывное наблюдение за состоянием и поведением системы.';

  @override
  String get gameHintWord372Logging => 'Запись отдельных событий приложений и систем.';

  @override
  String get gameHintWord373Trace => 'Запись пути запроса через вызовы сервисов.';

  @override
  String get gameHintWord374Metrics => 'Числовые измерения поведения системы во времени.';

  @override
  String get gameHintWord375Alert => 'Уведомление о том, что отслеживаемое условие требует внимания.';

  @override
  String get gameHintWord376Billing => 'Учёт и оплата потреблённых облачных сервисов.';

  @override
  String get gameHintWord377Quota => 'Ограничение количества ресурса, которое можно потребить.';

  @override
  String get gameHintWord378Region => 'Географическая область облачного развёртывания с зонами доступности.';

  @override
  String get gameHintWord379Tenancy => 'Схема, описывающая, как клиенты совместно используют инфраструктуру.';

  @override
  String get gameHintWord380Regional => 'Описывает ресурс, привязанный к облачному региону.';

  @override
  String get gameHintWord381Cosmos => 'Название глобально распределённой мультимодельной базы данных Azure.';

  @override
  String get gameHintWord382Synapse => 'Аналитическая платформа Azure, сочетающая хранилище данных и их обработку.';

  @override
  String get gameHintWord383Sentinel => 'Облачная платформа Microsoft для управления информацией и событиями безопасности.';

  @override
  String get gameHintWord384Defender => 'Семейство продуктов безопасности Microsoft для защиты облачных нагрузок.';

  @override
  String get gameHintWord385Entra => 'Семейство продуктов идентификации Microsoft, заменившее бренд Azure AD.';

  @override
  String get gameHintWord386Arm => 'Сокращение от Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Сервис Azure, распространяющий управление на ресурсы вне Azure.';

  @override
  String get gameHintWord388Aks => 'Сокращение от управляемого сервиса Kubernetes в Azure.';

  @override
  String get gameHintWord389Armor => 'Суффикс названия сервиса веб-защиты Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Тип данных объектного хранилища Azure.';

  @override
  String get gameHintWord391Files => 'Сервис Azure с управляемыми сетевыми файловыми ресурсами.';

  @override
  String get gameHintWord392Disk => 'Блочное устройство хранения, подключённое к виртуальной машине.';

  @override
  String get gameHintWord393Function => 'Вызываемый блок кода, который может вернуть результат.';

  @override
  String get gameHintWord394Logic => 'Категория сервисов приложений Azure для интеграции рабочих процессов.';

  @override
  String get gameHintWord395Insights => 'Суффикс названия продукта телеметрии приложений Azure.';

  @override
  String get gameHintWord396Traffic => 'Данные, передаваемые между сетевыми конечными точками.';

  @override
  String get gameHintWord397Manager => 'Суффикс названия продукта Azure Resource, обозначающий его плоскость управления.';

  @override
  String get gameHintWord398Bastion => 'Управляемая или защищённая точка входа для доступа к приватным хостам.';

  @override
  String get gameHintWord399Front => 'Первое слово в названии глобального сервиса входа Azure Front Door.';

  @override
  String get gameHintWord400Door => 'Второе слово в названии глобального сервиса входа Azure Front Door.';

  @override
  String get gameHintWord401Javascript => 'Язык программирования, широко используемый в браузерах и средах Node.';

  @override
  String get gameHintWord402Perl => 'Язык сценариев, известный обработкой текста и регулярными выражениями.';

  @override
  String get gameHintWord403Powershell => 'Объектно-ориентированная оболочка и язык автоматизации от Microsoft.';

  @override
  String get gameHintWord404Java => 'Язык для JVM, на котором реализован Jenkins.';

  @override
  String get gameHintWord405Json => 'Лёгкий формат данных с объектами и массивами.';

  @override
  String get gameHintWord406Xml => 'Формат разметки со вложенными именованными тегами.';

  @override
  String get gameHintWord407Html => 'Язык разметки для структурирования веб-страниц.';

  @override
  String get gameHintWord408Css => 'Язык таблиц стилей, управляющий веб-представлением.';

  @override
  String get gameHintWord409String => 'Последовательность текстовых символов.';

  @override
  String get gameHintWord410Array => 'Индексированная коллекция элементов.';

  @override
  String get gameHintWord411Hash => 'Ассоциативная коллекция «ключ-значение» в Ruby и Perl.';

  @override
  String get gameHintWord412Object => 'Значение времени выполнения со свойствами и поведением.';

  @override
  String get gameHintWord413Class => 'Определение для создания объектов в языках на основе классов.';

  @override
  String get gameHintWord414Method => 'Функция, связанная с объектом или классом.';

  @override
  String get gameHintWord415Interface => 'Контракт, описывающий операции, предоставляемые компонентом.';

  @override
  String get gameHintWord416Subclass => 'Класс, производный от другого класса.';

  @override
  String get gameHintWord417Super => 'Ключевое слово для вызова поведения родительского класса.';

  @override
  String get gameHintWord418Protected => 'Уровень видимости, ограничивающий доступ контекстами, связанными с классом.';

  @override
  String get gameHintWord419Exception => 'Условие времени выполнения, прерывающее обычный ход управления.';

  @override
  String get gameHintWord420Regex => 'Шаблонная нотация для сопоставления текста.';

  @override
  String get gameHintWord421Lexical => 'Описывает область видимости, определяемую структурой исходного кода.';

  @override
  String get gameHintWord422Scalar => 'Категория переменных с одним значением в Perl.';

  @override
  String get gameHintWord423Tuple => 'Неизменяемая упорядоченная коллекция в Python.';

  @override
  String get gameHintWord424List => 'Изменяемая упорядоченная коллекция в Python.';

  @override
  String get gameHintWord425Dict => 'Имя встроенного типа отображения в Python.';

  @override
  String get gameHintWord426Dictionary => 'Коллекция, сопоставляющая ключи со значениями.';

  @override
  String get gameHintWord427Set => 'Коллекция уникальных значений.';

  @override
  String get gameHintWord428Boolean => 'Тип данных, представляющий истину или ложь.';

  @override
  String get gameHintWord429Integer => 'Числовой тип для целых чисел.';

  @override
  String get gameHintWord430Float => 'Числовой тип для значений с плавающей запятой.';

  @override
  String get gameHintWord431Double => 'Тип с плавающей запятой двойной точности.';

  @override
  String get gameHintWord432Null => 'Значение, обозначающее отсутствие объекта или результата.';

  @override
  String get gameHintWord433Undefined => 'Значение JavaScript для отсутствующего присвоенного значения.';

  @override
  String get gameHintWord434Promise => 'Объект JavaScript, представляющий будущий асинхронный результат.';

  @override
  String get gameHintWord435Async => 'Ключевое слово, помечающее асинхронную функцию.';

  @override
  String get gameHintWord436Await => 'Ключевое слово, ожидающее асинхронный результат.';

  @override
  String get gameHintWord437Callback => 'Функция, передаваемая для вызова другой операцией.';

  @override
  String get gameHintWord438Closure => 'Функция, сохраняющая доступ к окружающей лексической области.';

  @override
  String get gameHintWord439Generator => 'Функция, лениво порождающая последовательность через yield-значения.';

  @override
  String get gameHintWord440Iterator => 'Объект, последовательно перебирающий значения коллекции.';

  @override
  String get gameHintWord441Print => 'Распространённая функция вывода значения.';

  @override
  String get gameHintWord442Input => 'Функция Python, читающая строку со стандартного ввода.';

  @override
  String get gameHintWord443Open => 'Функция для получения дескриптора файла.';

  @override
  String get gameHintWord444Close => 'Операция освобождения открытого файла или соединения.';

  @override
  String get gameHintWord445Read => 'Операция получения данных из потока или файла.';

  @override
  String get gameHintWord446Write => 'Операция отправки данных в поток или файл.';

  @override
  String get gameHintWord447Append => 'Добавляет элемент в конец коллекции.';

  @override
  String get gameHintWord448Split => 'Разбивает текст на подстроки по разделителю.';

  @override
  String get gameHintWord449Join => 'Объединяет последовательность строк через разделитель.';

  @override
  String get gameHintWord450Strip => 'Удаляет пробелы по краям строки Python.';

  @override
  String get gameHintWord451Chomp => 'Удаляет завершающий разделитель записей в Perl или Ruby.';

  @override
  String get gameHintWord452Map => 'Применяет преобразование к каждому элементу коллекции.';

  @override
  String get gameHintWord453Filter => 'Оставляет элементы коллекции, удовлетворяющие предикату.';

  @override
  String get gameHintWord454Reduce => 'Сворачивает коллекцию в накопленный результат.';

  @override
  String get gameHintWord455Range => 'Тип Python, представляющий арифметическую последовательность целых чисел.';

  @override
  String get gameHintWord456Length => 'Свойство или метод, возвращающий размер коллекции.';

  @override
  String get gameHintWord457Len => 'Встроенная функция Python, возвращающая размер коллекции.';

  @override
  String get gameHintWord458Type => 'Функция Python, возвращающая тип объекта.';

  @override
  String get gameHintWord459Isinstance => 'Функция Python, проверяющая принадлежность к иерархии типов.';

  @override
  String get gameHintWord460Yield => 'Ключевое слово, выдающее значение из генератора.';

  @override
  String get gameHintWord461Saas => 'Облачная модель, предоставляющая готовые программные приложения.';

  @override
  String get gameHintWord462Paas => 'Облачная модель, предоставляющая управляемую платформу разработки приложений.';

  @override
  String get gameHintWord463Iaas => 'Облачная модель, предоставляющая виртуальные вычисления, хранилище и сеть.';

  @override
  String get gameHintWord464Hybrid => 'Облачный подход, сочетающий частную и публичную инфраструктуру.';

  @override
  String get gameHintWord465Archive => 'Долговременное хранение редко используемых данных.';

  @override
  String get gameHintWord466Public => 'Модель владения облаком, предлагающая услуги многим клиентам.';

  @override
  String get gameHintWord467Private => 'Облачная модель, выделенная одной организации.';

  @override
  String get gameHintWord468Scalability => 'Способность справляться с ростом нагрузки за счёт добавления ресурсов.';

  @override
  String get gameHintWord469Availability => 'Степень доступности сервиса, когда он необходим.';

  @override
  String get gameHintWord470Resilience => 'Способность выдерживать сбои и восстанавливаться после них.';

  @override
  String get gameHintWord471Redundancy => 'Дублирование компонентов для снижения числа единых точек отказа.';

  @override
  String get gameHintWord472Disaster => 'Крупный сбой, для которого предусмотрена стратегия восстановления.';

  @override
  String get gameHintWord473Recovery => 'Восстановление сервиса или данных после сбоя.';

  @override
  String get gameHintWord474Replicate => 'Копировать данные или нагрузки в другое место.';

  @override
  String get gameHintWord475Snapshotting => 'Создание копий данных или состояния системы на момент времени.';

  @override
  String get gameHintWord476Restore => 'Операция восстановления данных из сохранённой копии.';

  @override
  String get gameHintWord477Residency => 'Требование, определяющее географическое расположение хранимых данных.';

  @override
  String get gameHintWord478Compliance => 'Соблюдение необходимых норм и организационных мер контроля.';

  @override
  String get gameHintWord479Governance => 'Политики и процессы, регулирующие использование технологий.';

  @override
  String get gameHintWord480Audit => 'Проверка записанных действий и свидетельств соответствия.';

  @override
  String get gameHintWord481Token => 'Учётные данные или символ, представляющий авторизацию или идентичность.';

  @override
  String get gameHintWord482Oauth => 'Фреймворк авторизации, допускающий делегированный доступ.';

  @override
  String get gameHintWord483Saml => 'Стандарт на основе XML, часто используемый для корпоративного единого входа.';

  @override
  String get gameHintWord484Cmdlet => 'Специализированная команда, используемая в конвейерах PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Определённая последовательность шагов для решения вычислительной задачи.';

  @override
  String get gameHintWord486Key => 'Значение для управления шифрованием или идентификации хранимых данных.';

  @override
  String get gameHintWord487Alias => 'Альтернативное имя команды оболочки или ресурса.';

  @override
  String get gameHintWord488Amend => 'Параметр коммита Git, заменяющий последний коммит.';

  @override
  String get gameHintWord489Allsigned => 'Политика выполнения PowerShell, требующая подписанных скриптов.';

  @override
  String get gameHintWord490Remotesigned => 'Политика PowerShell, требующая подписей для загруженных скриптов.';

  @override
  String get gameHintWord491Acl => 'Список, определяющий права пользователей или систем.';

  @override
  String get gameHintWord492Uid => 'Числовой идентификатор пользователя Unix.';

  @override
  String get gameHintWord493Setgid => 'Бит прав, влияющий на идентичность группы при выполнении или наследовании.';

  @override
  String get gameHintWord494Setfacl => 'Команда Linux, задающая списки управления доступом к файлам.';

  @override
  String get gameHintWord495Isolation => 'Разделение, не позволяющее нагрузкам мешать друг другу.';

  @override
  String get gameHintWord496Sighup => 'Сигнал Unix о разрыве связи, часто используемый для перезагрузки конфигурации.';

  @override
  String get gameHintWord497Sigint => 'Сигнал прерывания Unix, обычно вызываемый нажатием Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Сигнал Unix, приостанавливающий процесс без его завершения.';

  @override
  String get gameHintWord499Secrets => 'Конфиденциальные значения, например пароли и ключи доступа.';

  @override
  String get gameHintWord500Secure => 'Описывает соединение, защищённое от несанкционированного доступа.';

  @override
  String get fontSettingsTitle => 'Шрифт';

  @override
  String get fontChangeFont => 'Изменить шрифт';

  @override
  String get fontSystemDefault => 'Системный по умолчанию';

  @override
  String get fontPreview => 'Предпросмотр';

  @override
  String get fontPreviewSample => 'Изучайте DevOps вопрос за вопросом';

  @override
  String get fontSelected => 'Выбрано';

  @override
  String get fontLatinOnlyNote => 'Пользовательские шрифты применяются к латинским буквам. Для других письменностей сохраняется шрифт устройства.';

  @override
  String get fontDescSystem => 'Встроенный шрифт вашего устройства';

  @override
  String get fontDescGeometric => 'Геометрический гротеск';

  @override
  String get fontDescGeometricRounded => 'Геометрический скруглённый гротеск';

  @override
  String get fontDescFriendly => 'Дружелюбный гротеск';

  @override
  String get fontDescCondensed => 'Узкий';

  @override
  String get fontDescRounded => 'Скруглённый гротеск';

  @override
  String get fontDescRoundedDisplay => 'Скруглённый акцидентный';

  @override
  String gameScene3dScene(String value1) {
    return '3D-сцена $value1';
  }
}
