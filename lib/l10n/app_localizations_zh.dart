// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTour => '应用导览';

  @override
  String get skipTour => '跳过导览';

  @override
  String get finishTour => '结束导览';

  @override
  String tourStep(int current, int total) {
    return '第 $current 步，共 $total 步';
  }

  @override
  String get tourMenuTitle => '导航菜单';

  @override
  String get tourSearch => '在这里输入主题，查找相关的测验类别。';

  @override
  String get tourCategory => '点击 DevOps 开始混合测验。其他类别提供题目集。收藏题目即可稍后复习。';

  @override
  String get tourMenu => '点击此按钮打开导航菜单。';

  @override
  String get tourLearning => '打开学习查看卡片。可向任意方向滑动、随机排列、自动切换或收藏卡片。';

  @override
  String get tourGames => '玩游戏赚积分。关卡制游戏每完成一关获得100积分；每次提示花费20积分。';

  @override
  String get tourAchievements => '在这里查看成就。新的成就和可用主题会通过弹窗通知。';

  @override
  String get tourSettings => '选择语言、主题和声音设置。打开已保存的数据查看收藏，或打开应用导览重新查看本指南。';

  @override
  String get achievementUnlocked => '成就已解锁！';

  @override
  String get themeUnlocked => '新主题可用！';

  @override
  String get themeUnlockedMessage => '现在可以在“设置 > 主题”中选择此主题。';

  @override
  String get gameSounds => '游戏音效';

  @override
  String get gameSoundsDescription => '游戏和测验的音效。请检查设备音量和静音模式。';

  @override
  String get testSound => '测试声音';

  @override
  String get soundSettingBusy => '请稍候...';

  @override
  String get soundSettingError => '无法加载或保存声音设置。请重试。';

  @override
  String get soundPlaybackError => '无法播放声音。请检查设备或浏览器的音频设置。';

  @override
  String get saveData => '已保存的数据';

  @override
  String get learningTranslationUnavailable => '此卡片尚未翻译成所选语言。';

  @override
  String get saveQuestion => '保存题目';

  @override
  String defaultPortQuestion(String service) {
    return '$service的默认端口是什么？';
  }

  @override
  String get removeSavedItem => '从已保存中移除';

  @override
  String get noSavedData => '尚未保存任何内容。请收藏学习卡片或测验题目。';

  @override
  String get savedDataError => '无法加载或更新已保存的数据。请重试。';

  @override
  String get savedItemUnavailable => '此保存的项目已不可用。';

  @override
  String get correctAnswer => '正确答案';

  @override
  String get retry => '重试';

  @override
  String get certificates => '证书';

  @override
  String get whatsNew => '新功能';

  @override
  String get settings => '设置';

  @override
  String get darkMode => '深色模式';

  @override
  String get lightMode => '浅色模式';

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get english => '英语';

  @override
  String get hindi => '印地语';

  @override
  String get marathi => '马拉地语';

  @override
  String get startQuiz => '开始测验';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => '切换分类';

  @override
  String get dailyQuiz => '每日测验';

  @override
  String get dailyQuizCompleted => '每日测验已完成';

  @override
  String get dailyQuizCompletedMessage => '你已完成今天的每日测验。\n\n明天再来迎接新的挑战！';

  @override
  String get leaderboard => '排行榜';

  @override
  String get shareApp => '分享应用';

  @override
  String get rateApp => '评价应用';

  @override
  String get about => '关于';

  @override
  String get ok => '确定';

  @override
  String get home => '首页';

  @override
  String get games => '游戏';

  @override
  String get referAndEarn => '邀请有奖';

  @override
  String get themes => '主题';

  @override
  String get version => '版本';

  @override
  String get developer => '开发者';

  @override
  String get contact => '联系方式';

  @override
  String get learning => '学习';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => '与我联系';

  @override
  String get aboutDescription => 'DevOps Quiz 通过数千道精选题目帮助学习者准备面试和认证，涵盖 Linux、Docker、Kubernetes、网络、Git、Jenkins、Terraform、Ansible 等 DevOps 技术。';

  @override
  String get quizResult => '测验结果';

  @override
  String get outstanding => '太棒了！';

  @override
  String get greatJob => '做得好！';

  @override
  String get goodEffort => '不错的努力！';

  @override
  String get keepPracticing => '继续练习！';

  @override
  String get dontGiveUp => '不要放弃！';

  @override
  String get shareMessage1 => '我获得了';

  @override
  String get shareMessage2 => '（DevOps测验）！';

  @override
  String get downloadApp => '下载应用：';

  @override
  String get score => '得分';

  @override
  String get points => '积分';

  @override
  String get percentage => '百分比';

  @override
  String get bonus => '奖励';

  @override
  String get perfectScoreBonus => '满分奖励';

  @override
  String get shareScore => '分享成绩';

  @override
  String get restartQuiz => '重新测验';

  @override
  String get backToCategories => '返回分类';

  @override
  String get greatProgress => '做得好！你进步很大。';

  @override
  String get practiceMore => '不错！再多练习一点，你会得到更高的分数。';

  @override
  String get keepLearning => '继续学习，再试一次。多练习就会进步。';

  @override
  String get everyExpertStarted => '每位专家都曾是新手。多练习，变得更强！';

  @override
  String get quizInstructions => '测验说明';

  @override
  String get instruction1 => '每组包含 25 道题。';

  @override
  String get instruction2 => '每道题限时 30 秒。';

  @override
  String get instruction3 => '绿色 = 正确答案。';

  @override
  String get instruction4 => '红色 = 错误答案。';

  @override
  String get instruction5 => '答案不可更改。';

  @override
  String get instruction6 => '返回按钮仅用于回顾。';

  @override
  String get instruction7 => '完成后显示得分。';

  @override
  String get instruction8 => '每答对一题得 10 分。';

  @override
  String excellentPerformance(Object expert) {
    return '表现出色！你是$expert。';
  }

  @override
  String get selectCategory => '选择分类';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => '选择题组';

  @override
  String get set => '题组';

  @override
  String get questions => '道题';

  @override
  String get noScoresYet => '暂无成绩';

  @override
  String get pointsShort => '分';

  @override
  String get welcomeToDevOpsQuiz => '欢迎使用 DevOps Quiz';

  @override
  String hiUser(String name) {
    return '你好，$name';
  }

  @override
  String get challengeMode => '挑战模式';

  @override
  String get challenge => '挑战';

  @override
  String get question => '题目';

  @override
  String get reward => '奖励';

  @override
  String get survivalMode => '生存模式';

  @override
  String get speedChallenge => '速度挑战';

  @override
  String get dailyChallenge => '每日挑战';

  @override
  String get ultimateChallenge => '终极挑战';

  @override
  String get timeLeft => '剩余时间';

  @override
  String get completed => '已完成';

  @override
  String get locked => '已锁定';

  @override
  String get back => '返回';

  @override
  String get next => '下一题';

  @override
  String get submit => '提交';

  @override
  String get achievements => '成就';

  @override
  String get streak => '连续天数';

  @override
  String get days => '天';

  @override
  String get tomorrowsReward => '明日奖励';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 我在今天的 #DevOps 测验中得了 $score/$totalQuestions！\n\n🏆 积分：$earnedPoints\n🔥 奖励：$bonusPoints\n📊 百分比：$percentage%\n\n你能超过我的成绩吗？\n\n下载应用：';
  }

  @override
  String get gameUiSpinWheel => '转盘';

  @override
  String get gameUiSpinAndWinBonusPoints => '转动转盘赢取奖励积分';

  @override
  String get gameUiScratchCard => '刮刮卡';

  @override
  String get gameUiScratchToRevealAReward => '刮开揭晓奖励';

  @override
  String get gameUiLuckySlots => '幸运老虎机';

  @override
  String get gameUiRollTheSlotsAndWinPoints => '转动老虎机赢取积分';

  @override
  String get gameUiMysteryDeal => '神秘交易';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => '选择一个神秘盒子并回答问题';

  @override
  String get gameUiMemoryMatch => '记忆配对';

  @override
  String get gameUiMatchDevOpsPairs => '配对 DevOps 词组';

  @override
  String get gameUiWordGuess => '猜词';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => '逐关猜 DevOps 单词';

  @override
  String get gameUiFindWords => '找单词';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => '在网格中搜索隐藏的 DevOps 术语';

  @override
  String get gameUiSpotTheDifference => '找不同';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => '找出两幅插画场景之间的五处不同';

  @override
  String get gameUiJigsawPuzzle => '拼图';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => '重新拼合共享的 HD 动物与自然图片';

  @override
  String get gameUiHighOrLow => '猜大小';

  @override
  String get gameUiBuildAStreak => '建立连胜';

  @override
  String get gameUiTrueOrFalseBlitz => '判断题闪电战';

  @override
  String get gameUiQuickAnswerQuiz => '快速答题测验';

  @override
  String get gameUiCommandMatch => '命令配对';

  @override
  String get gameUiMatchCommandsToMeanings => '将命令与含义配对';

  @override
  String get gameUiPortMaster => '端口大师';

  @override
  String get gameUiGuessDefaultPorts => '猜默认端口';

  @override
  String get gameUiTicTacToe => '井字棋';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X 井字棋 人机对战';

  @override
  String get gameUiConnectFour => '四子连珠';

  @override
  String get gameUiDropFourDiscs => '落下四枚棋子';

  @override
  String get gameUiLudo => '飞行棋';

  @override
  String get gameUiRaceAgainstBots => '与机器人竞速';

  @override
  String get gameUiChess => '国际象棋';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => '国际象棋棋盘 合法走法 双人对战';

  @override
  String get gameUiSnakeAndLadders => '蛇梯棋';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => '骰子棋盘 蛇与梯子 双人对战';

  @override
  String get gameUiGames => '游戏 🎮';

  @override
  String get gameUiPlayEarn => '玩游戏赚积分';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => '玩游戏，赢取奖励积分！';

  @override
  String get gameUiSearchGames => '搜索游戏';

  @override
  String get gameUiClearSearch => '清除搜索';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '没有与“$value1”匹配的游戏';
  }

  @override
  String get gameUiSpinWinBonusPoints => '转动转盘，赢取奖励积分。';

  @override
  String get gameUiScratchToRevealYourReward => '刮开揭晓你的奖励。';

  @override
  String get gameUiRollTheSlotsWinPoints => '转动老虎机，赢取积分。';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => '选择一个神秘盒子并答对问题即可赢取积分。';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => '配对 DevOps 词组赚取积分。';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '在 6 次尝试内猜出 DevOps 术语。';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => '在网格中搜索隐藏的 DevOps 术语。';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '滑动屏幕，在 500 个关卡中找出 DevOps 单词。';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => '找出两幅插画场景之间的五处不同。';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => '重新拼合共享的 HD 动物与自然图片。';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => '建立连胜并存入你的积分。';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => '快速答题，与时间赛跑。';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => '判断题闪电战 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => '将命令与其功能配对。';

  @override
  String get gameUiCommandMatch670a76e => '命令配对 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => '拥有 3 条命，猜默认端口。';

  @override
  String get gameUiPortMaster8f5fd42 => '端口大师 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => '与电脑对战 O/X。';

  @override
  String get gameUiDropFourDiscsInARowToWin => '连成一行四枚棋子即可获胜。';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => '让你的棋子与三个机器人竞速。';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => '本地双人国际象棋，含合法走法。';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => '进行一场合法的双人国际象棋对局。';

  @override
  String get gameUiTwoPlayerDiceBoardGame => '双人骰子棋盘游戏。';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '冲向 100。爬梯子，躲避蛇。';

  @override
  String get gameUiPlay => '开始';

  @override
  String get gameUiWheelStopped => '转盘已停止！';

  @override
  String get gameUiYourRewardIs => '你的奖励是';

  @override
  String get gameUiPOINTS => '积分';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => '答对 1 道测验题即可领取此奖励。';

  @override
  String get gameUiWrongAnswerRewardLost => '答错 = 失去奖励。';

  @override
  String get gameUiAnswerQuestion => '回答问题';

  @override
  String get gameUiSpinWheele449982 => '🎡 转盘';

  @override
  String get gameUiDailySpin => '每日转盘';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => '转动转盘，然后回答一道问题来领取你的奖励！';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => '你已经使用过今天的转盘次数。';

  @override
  String get gameUiSpinning => '转动中……';

  @override
  String get gameUiSPINNOW => '立即转动';

  @override
  String get gameUiCOMEBACKTOMORROW => '明天再来';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return '今日奖励：⭐ $value1 积分';
  }

  @override
  String get gameUiBackToGames => '返回游戏';

  @override
  String get gameUiSPIN => '转动';

  @override
  String get gameUiRewardRevealed => '奖励已揭晓！';

  @override
  String get gameUiYouFound => '你找到了';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ 刮刮卡';

  @override
  String get gameUiDailyScratch => '每日刮刮卡';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => '刮开卡片，揭晓今日奖励！';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => '你已经使用过今天的刮刮卡。';

  @override
  String get gameUiAlreadyScratched => '已刮开';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => '明天再来领取新的奖励。';

  @override
  String get gameUiYouRevealed => '你揭晓了';

  @override
  String get gameUiSCRATCHHERE => '在此刮开  👆';

  @override
  String get gameUiJACKPOT777 => '头奖 777！';

  @override
  String get gameUiLucky777 => '幸运 777！';

  @override
  String get gameUiYourReward => '你的奖励';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 幸运老虎机';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => '转动老虎机，然后回答一道问题来领取奖励！';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => '你今天已经玩过了。';

  @override
  String get gameUiSPINNING => '转动中……';

  @override
  String get gameUiROLLNOW => '立即掷骰';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 大奖！可获得 777 积分！';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return '无法检查神秘交易状态：$value1';
  }

  @override
  String gameUiBox(String value1) {
    return '盒子 $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 积分';
  }

  @override
  String get gameUiStartQuestion => '开始答题';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 神秘交易';

  @override
  String get gameUiMysteryDealCompleted => '神秘交易已完成！';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => '你今天已经玩过神秘交易了。';

  @override
  String get gameUiTodayYouWon => '今天你赢得了';

  @override
  String get gameUiTodaySReward => '今日奖励';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 积分';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '损失 $value1 积分';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => '明天再来领取另一个神秘盒子吧！';

  @override
  String get gameUiChooseYourMysteryBox => '选择你的神秘盒子';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => '每个盒子里都藏有 10 到 1000 积分之间的奖励。';

  @override
  String get gameUiPickOnlyOneBox => '只能选择一个盒子！';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return '全部 $value1 个关卡已完成！';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return '第 $value1 关完成！';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '用 $value1 步完成。\n你获得了 $value2 积分！';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '用 $value1 步完成。\n此关卡已通关。';
  }

  @override
  String get gameUiNextLevel => '下一关';

  @override
  String get gameUiDone => '完成';

  @override
  String get gameUiMemoryMatch6b3eaaf => '记忆配对 🧠';

  @override
  String get gameUiAll100LevelsComplete => '全部 100 个关卡已完成！';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => '你完成了所有记忆配对关卡。玩得好！';

  @override
  String get gameUiChooseLevel => '选择关卡';

  @override
  String gameUiMoves(String value1) {
    return '步数：$value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return '第 $value1 关，共 $value2 关';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 对';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return '记忆第 $value1 关';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '找出 $value1 对匹配项';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz 徽标';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => '第 1 章 · 恢复构建流水线';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => '第 2 章 · 扩展云平台';

  @override
  String get gameUiChapter3ProtectProduction => '第 3 章 · 保护生产环境';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return '请使用全部 $value1 个剩余字母后再提交。';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => '所有关卡已完成！';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return '第 $value1 关完成！';
  }

  @override
  String get gameUiTryAgain => '再试一次';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return '单词是 $value1。你获得了 $value2 积分。';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return '单词是 $value1。使用 $value3 次提示后，你获得了 $value2 积分。';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return '单词是 $value1。使用 $value3 次提示后，你获得了 $value2 积分。';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return '单词是 $value1。第 $value2 关仍在等你挑战。';
  }

  @override
  String get gameUiFinish => '结束';

  @override
  String get gameUiNextLevel254fd73 => '下一关';

  @override
  String get gameUiRetryLevel => '重试本关';

  @override
  String get gameUiHowToPlay => '玩法说明';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => '每个关卡有一个 DevOps 单词。少于五个字母的单词开始时没有免费字母；更长的单词开始时有一个。使用字母架拼出答案，然后按 Enter。提示会揭示另一个字母，并从你的余额中扣除 20 积分。每完成一个关卡可获得 100 积分。';

  @override
  String get gameUiGotIt => '知道了';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return '全部 $value1 个关卡已完成！';
  }

  @override
  String get gameUiEasy => '简单';

  @override
  String get gameUiMedium => '中等';

  @override
  String get gameUiHard => '困难';

  @override
  String get gameUiHowToPlay13a6b22 => '玩法说明';

  @override
  String gameUiLevel(String value1, String value2) {
    return '第 $value1/$value2 关';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return '奖励 $value1 积分 · 已用提示 $value2 次';
  }

  @override
  String get gameUiHint20Pts => '提示 · −20 积分';

  @override
  String get gameUiEnter => '确认';

  @override
  String get gameUiDelete => '删除';

  @override
  String get gameUiDragThroughAWord => '拖动划过一个单词';

  @override
  String get gameUiDragThroughEachWord => '拖动划过每个单词';

  @override
  String get gameUiReleaseToSelect => '松开即可选择';

  @override
  String gameUiFound(String value1) {
    return '已找到 $value1';
  }

  @override
  String get gameUiNoWordThere => '那里没有单词';

  @override
  String gameUiAlreadyFound(String value1) {
    return '已找到过 $value1';
  }

  @override
  String gameUiLookFor(String value1) {
    return '寻找 $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => '所有关卡已完成！';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return '你找到了所有单词，并获得了 $value1 积分。';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => '你找到了所有单词。此关卡已通关。';

  @override
  String get gameUiAll500LevelsComplete => '全部 500 个关卡已完成！';

  @override
  String get gameUiReviewLevels => '回顾关卡';

  @override
  String gameUiLeft(String value1) {
    return '剩余 $value1';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 积分';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => '无法保存进度。请重试。';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return '你获得了 $value1 积分！';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => '你已经完成过这幅图片。重玩不会获得额外积分。';

  @override
  String get gameUiYouCompletedEveryPicture => '你完成了所有图片！';

  @override
  String get gameUiLevels => '关卡';

  @override
  String get gameUiPictureB => '图片 B';

  @override
  String get gameUiPictureA => '图片 A';

  @override
  String get gameUiPictureCouldNotLoadRetry => '图片无法加载。重试';

  @override
  String get gameUiResetZoom => '重置缩放';

  @override
  String get gameUiZoomBothPictures => '同时缩放两张图片';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return '提示 · 每次提示 $value1 积分';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => '无法加载进度。重试';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return '第 $value1 / $value2 关';
  }

  @override
  String get gameUiAllDifferencesFound => '已找到所有不同之处！';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '找出$count不同。在任意一张图片中点击每一处。';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return '失误：$value1  ·  提示：$value2（−$value3 积分）  ·  已完成 $value4 个关卡';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return '下一关：$value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return '拼图 $value1 完成！';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return '用 $value1 步完成图片。你获得了 $value2 积分。';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return '用 $value1 步完成图片。';
  }

  @override
  String get gameUiNextPuzzle => '下一个拼图';

  @override
  String get gameUiAllPuzzlesComplete => '所有拼图已完成';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return '第 $value1 块拼图，共 $value2 块，已放置正确';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return '第 $value1 块拼图，共 $value2 块';
  }

  @override
  String get gameUiChoosePuzzle => '选择拼图';

  @override
  String get gameUiShufflePieces => '打乱拼块';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => '无法加载拼图图片。';

  @override
  String get gameUiPreviousPuzzle => '上一个拼图';

  @override
  String gameUiPuzzle(String value1) {
    return '拼图 $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 步';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => '拖动拼块进行交换，或依次点按两个拼块。';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '已完成 $value1 / $value2 个拼图  ·  每个 $value3 分';
  }

  @override
  String get gameUiGameOver => '游戏结束';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return '数字是 $value1。\n连胜：$value2\n你获得了 $value3 分！\n\n明天再来，还有机会！';
  }

  @override
  String get gameUiHigherOrLower => '猜大小 📈';

  @override
  String get gameUiAlreadyPlayedToday => '今天已经玩过了！';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return '你在 $value1/$value2/$value3 玩过了。\n\n明天再来，开启新的连胜！';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => '你今天已经玩过了。\n\n明天再来，还有机会！';

  @override
  String gameUiStreak(String value1) {
    return '🔥 连胜：$value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ 积分：$value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => '下一个数字会更大还是更小？';

  @override
  String get gameUiLower => '更小';

  @override
  String get gameUiHigher => '更大';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => '判断题闪电战 ⚡';

  @override
  String get gameUiTimeSUp => '时间到！';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return '正确答案：$value1\n最佳连胜：$value2\n$value3你获得了 $value4 分！\n\n明天再来，参加新一轮！';
  }

  @override
  String get gameUiStreakBonus20 => '连胜奖励：+20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => '所显示的答案是对还是错？';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '共 $value1 道题，涵盖 $value2 个类别';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return '你有 $value1 秒。每个正确答案得 $value2 分。答错一题扣 $value3 秒。连胜达到 5 次可获得 +20 奖励。';
  }

  @override
  String get gameUiRoundTimer => '回合计时器';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 秒';
  }

  @override
  String get gameUiStart => '开始';

  @override
  String get gameUiTrue => '正确';

  @override
  String get gameUiFalse => '错误';

  @override
  String get gameUiCommandMatch26b0e70 => '命令配对 🔗';

  @override
  String get gameUiAllMatched => '全部配对成功！';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return '错误：$value1\n你获得了 $value2 分！\n\n明天再来，学习新命令！';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return '第 $value1 / $value2 轮';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => '先点按一个命令，再点按它的含义。';

  @override
  String get gameUiNowTapTheMatchingMeaning => '现在点按匹配的含义。';

  @override
  String get gameUiPortMaster9c730cf => '端口大师 🔌';

  @override
  String get gameUiPortMastera796b69 => '端口大师！';

  @override
  String get gameUiOutOfLives => '生命已用完';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return '正确答案：$value1\n你获得了 $value2 分！\n\n明天再来，参加新一轮！';
  }

  @override
  String get gameUiYouEarned10Points => '你获得了 10 分！';

  @override
  String get gameUiYouWin => '你赢了！';

  @override
  String gameUiWins(String value1) {
    return '$value1 获胜！';
  }

  @override
  String get gameUiXWins => 'X 获胜！';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1（X）获胜！';
  }

  @override
  String get gameUiComputerWins => '电脑获胜';

  @override
  String get gameUiOWins => 'O 获胜！';

  @override
  String get gameUiPlayer2OWins => '玩家 2（O）获胜！';

  @override
  String get gameUiItSADraw => '平局';

  @override
  String get gameUiYourTurn => '轮到你了';

  @override
  String gameUiSTurn(String value1) {
    return '轮到 $value1';
  }

  @override
  String get gameUiComputerIsThinking => '电脑正在思考';

  @override
  String gameUiPlayerToMove(String value1) {
    return '轮到玩家 $value1 走棋';
  }

  @override
  String gameUiToMove(String value1) {
    return '轮到 $value1 走棋';
  }

  @override
  String get gameUiPlayer2ToMove => '轮到玩家 2 走棋';

  @override
  String get gameUiNewRound => '新一轮';

  @override
  String get gameUiVsComputer => '对战电脑';

  @override
  String get gameUi2Players => '2 名玩家';

  @override
  String get gameUiYou => '你';

  @override
  String get gameUiDraws => '平局';

  @override
  String get gameUiPlayer2 => '玩家 2';

  @override
  String gameUiCell(String value1, String value2) {
    return '格子 $value1$value2';
  }

  @override
  String get gameUiPlayAgain => '再玩一次';

  @override
  String get gameUiConnectFourWin20Points => '四子棋获胜：20 分！';

  @override
  String get gameUiBotWins => '机器人获胜！';

  @override
  String get gameUiRed => '红方';

  @override
  String get gameUiYellow => '黄方';

  @override
  String get gameUiBoardFullDraw => '棋盘已满——平局';

  @override
  String get gameUiBotIsThinking => '机器人正在思考';

  @override
  String get gameUiBotTurn => '轮到机器人';

  @override
  String get gameUiNewGame => '新游戏';

  @override
  String get gameUiVsBot => '对战机器人';

  @override
  String get gameUi2Player => '2 人对战';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => '对战机器人 · 点按一列以落子';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => '双人对战 · 点按一列以落子';

  @override
  String gameUiColumn(String value1) {
    return '第 $value1 列';
  }

  @override
  String get gameUiYouRed => '你 · 红方';

  @override
  String get gameUiRedPlayer1 => '红方 · 玩家 1';

  @override
  String get gameUiBotYellow => '机器人 · 黄方';

  @override
  String get gameUiYellowPlayer2 => '黄方 · 玩家 2';

  @override
  String get gameUiLudoMatchStats => 'Ludo 对局统计';

  @override
  String get gameUiNoCompletedMatchesYet => '暂无已完成的对局。';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return '已玩 $value1  ·  胜 $value2  ·  负 $value3';
  }

  @override
  String get gameUiClose => '关闭';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Ludo 冠军！你获得了 50 分。';

  @override
  String get gameUiNewLudoGame => '新 Ludo 游戏';

  @override
  String get gameUiBotOpponents => '机器人对手';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => '开始新对局将替换你已保存的游戏。';

  @override
  String get gameUiCancel => '取消';

  @override
  String get gameUiStartGame => '开始游戏';

  @override
  String get gameUiPlayerColours => '玩家颜色';

  @override
  String get gameUiApply => '应用';

  @override
  String get gameUiMatchStats => '对局统计';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 将死获胜';
  }

  @override
  String get gameUiBlack => '黑方';

  @override
  String get gameUiWhite => '白方';

  @override
  String get gameUiComputerWinsByCheckmate => '电脑将死获胜';

  @override
  String get gameUiYouWinByCheckmate => '你将死获胜';

  @override
  String get gameUiDrawByStalemate => '逼和，平局';

  @override
  String get gameUiDraw => '平局';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · 将军';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => '将死！你获得了 50 分。';

  @override
  String get gameUiStartANewGame => '开始新游戏？';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => '更改玩家模式将替换已保存的对局。';

  @override
  String get gameUiComputer => '电脑';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · 白方 / 玩家 2 · 黑方';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => '你执白 · 电脑执黑';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1（白方）· 电脑（黑方）';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => '你执黑 · 电脑执白';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1（黑方）· 电脑（白方）';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 先掷骰子';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 再掷一次';
  }

  @override
  String gameUiToRoll(String value1) {
    return '轮到 $value1 掷骰子';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => '蛇梯棋获胜：100 分！';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => '更改玩家将替换已保存的游戏。';

  @override
  String get gameUiStartANewLevel => '开始新关卡？';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => '更改关卡将替换已保存的游戏。';

  @override
  String get gameUiChangeLevel => '更改关卡';

  @override
  String get gameUiPlayers => '玩家';

  @override
  String get gameUiPlayAgainstBot => '与机器人对战';

  @override
  String get gameUi3Players => '3 名玩家';

  @override
  String get gameUi4Players => '4 名玩家';

  @override
  String get gameUiLevel1709305 => '关卡';

  @override
  String gameUiLevel39140b8(String value1) {
    return '第 $value1 关';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 名玩家 · 第 $value2 关 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · 掷骰子';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 在 $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return '无法加载问题：$value1';
  }

  @override
  String get gameUiCorrectAnswer => '回答正确！';

  @override
  String get gameUiWrongAnswer => '回答错误';

  @override
  String get gameUiYouClaimedYourReward => '你已领取奖励！';

  @override
  String get gameUiAddedToYourTotalPoints => '已计入你的总积分。';

  @override
  String get gameUiTheCorrectAnswerWas => '正确答案是：';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 分奖励已失去。';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => '你现有的积分未被扣除。';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => '明天再来试试吧。';

  @override
  String get gameUiUnableToLoadQuestion6407759 => '无法加载问题。';

  @override
  String get gameUiYourReward677fa6e => '你的奖励';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 分';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => '回答正确即可领取！';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => '明天再来玩下一轮。';

  @override
  String get gameUiGreen => '绿色';

  @override
  String get gameUiBlue => '蓝色';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 正在思考';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1：选择一枚棋子';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1：掷骰子';
  }

  @override
  String gameUiDice(String value1) {
    return '骰子 $value1';
  }

  @override
  String get gameUiRollDice => '掷骰子';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 的棋子 $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return '玩家 $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return '机器人 $value1';
  }

  @override
  String get gameUiBot => '机器人';

  @override
  String get gameUiHintInsufficientPoints => '使用提示需要 20 分。';

  @override
  String get gameUiHintPurchaseFailed => '无法购买提示，请重试。';

  @override
  String get gameUiChessKing => '王';

  @override
  String get gameUiChessQueen => '后';

  @override
  String get gameUiChessRook => '车';

  @override
  String get gameUiChessBishop => '象';

  @override
  String get gameUiChessKnight => '马';

  @override
  String get gameUiChessPawn => '兵';

  @override
  String get gameUiChessEmpty => '空';

  @override
  String get gameSceneLampAndFlowers => '台灯与鲜花';

  @override
  String get gameSceneGardenFriends => '花园里的朋友们';

  @override
  String get gameSceneUnderwaterExplorers => '水下探险家';

  @override
  String get gameSceneOceanOrca => '海洋虎鲸';

  @override
  String get gameSceneFoxInTheMeadow => '草地上的狐狸';

  @override
  String get gameSceneYellowSubmarine => '黄色潜水艇';

  @override
  String get gameSceneTurkeyInTheClearing => '林间空地上的火鸡';

  @override
  String get gameSceneSafariWateringHole => '野生动物园水坑';

  @override
  String get gameSceneJungleCompanions => '丛林伙伴';

  @override
  String get gameSceneGoldenPuppyGarden => '金色小狗花园';

  @override
  String get gameSceneSeaTurtleReef => '海龟礁';

  @override
  String get gameSceneCoralReefFriends => '珊瑚礁朋友们';

  @override
  String get gameSceneSharedClownfish => '共享的小丑鱼';

  @override
  String get gameSceneLittleDinosaur => '小恐龙';

  @override
  String get gameSceneSafariCompanions => '野生动物园伙伴';

  @override
  String get gameSceneSwirlingFlowers => '旋转的花朵';

  @override
  String get gameSceneGardenKitten => '花园小猫';

  @override
  String get gameSceneBlueOcean => '蓝色海洋';

  @override
  String get gameSceneCastlePrincess => '城堡公主';

  @override
  String get gameSceneRedCar => '红色汽车';

  @override
  String get gameSceneGardenPuppy => '花园小狗';

  @override
  String get gameSceneSpaceExplorer => '太空探险家';

  @override
  String get gameSceneEnchantedReadingForest => '魔法阅读森林';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps 无限循环';

  @override
  String get gameSceneAnsible => 'Ansible 自动化';

  @override
  String get gameSceneAws => 'AWS 云服务';

  @override
  String get gameSceneAzure => 'Azure 云';

  @override
  String get gameSceneBashScripting => 'Bash 脚本编程';

  @override
  String get gameSceneDocker => 'Docker 容器';

  @override
  String get gameSceneGcp => 'GCP 云';

  @override
  String get gameSceneGit => 'Git 版本控制';

  @override
  String get gameSceneHybridCloud => '混合云';

  @override
  String get gameSceneIbmCloud => 'IBM 云';

  @override
  String get gameSceneJavascript => 'JavaScript 编程';

  @override
  String get gameSceneJenkins => 'Jenkins 持续集成';

  @override
  String get gameSceneKubernetes => 'Kubernetes 容器编排';

  @override
  String get gameSceneLinux => 'Linux 系统';

  @override
  String get gameSceneMultiCloud => '多云';

  @override
  String get gameSceneNetworking => '网络';

  @override
  String get gameSceneOracleCloud => 'Oracle 云';

  @override
  String get gameScenePerl => 'Perl 编程';

  @override
  String get gameScenePowershell => 'PowerShell 脚本';

  @override
  String get gameScenePython => 'Python 编程';

  @override
  String get gameSceneRuby => 'Ruby 编程';

  @override
  String get gameSceneTerraform => 'Terraform 基础设施即代码';

  @override
  String get gameSceneWinterFestivalFair => '冬季节日集市';

  @override
  String get gameSceneArmoredHeroCloseUp => '装甲英雄特写';

  @override
  String get gameSceneArmoredHeroInCrimson => '深红装甲英雄';

  @override
  String get gameSceneDarkPlumeriaBlossoms => '深色鸡蛋花';

  @override
  String get gameSceneMangroveBoardwalk => '红树林木栈道';

  @override
  String get gameSceneTropicalPalmReflections => '热带棕榈倒影';

  @override
  String get gameSceneMaskedFigureInShadow => '阴影中的蒙面人物';

  @override
  String get gameSceneElectricCompanionAtSunset => '日落时的电系伙伴';

  @override
  String get gameSceneTrainerAndFireDragon => '训练师与火龙';

  @override
  String get gameSceneJewelStuddedWrestlingMask => '镶宝石的摔跤面具';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => '红色笔触中的摔跤手';

  @override
  String get gameSceneWrestlingChampionSalute => '摔跤冠军致敬';

  @override
  String get gameSceneMorningAtTheBakery => '面包店的早晨';

  @override
  String get gameSceneGreenhousePottingBench => '温室育苗台';

  @override
  String get gameSceneHarborFishingBoat => '港口渔船';

  @override
  String get gameSceneAtticObservatory => '阁楼天文台';

  @override
  String get gameSceneToyMakerSWorkshop => '玩具匠的工坊';

  @override
  String get gameSceneWoodlandCampsite => '林地露营地';

  @override
  String get gameSceneAfternoonMusicRoom => '午后音乐室';

  @override
  String get gameSceneSeasideIceCreamStand => '海边冰淇淋摊';

  @override
  String get gameSceneLibraryReadingNook => '图书馆阅读角';

  @override
  String get gameSceneSewingStudio => '缝纫工作室';

  @override
  String get gameSceneFruitMarket => '水果市场';

  @override
  String get gameSceneKoiCourtyard => '锦鲤庭院';

  @override
  String get gameSceneArtistSAtelier => '艺术家的工作室';

  @override
  String get gameSceneMountainRailway => '山地铁路';

  @override
  String get gameSceneCountryKitchen => '乡村厨房';

  @override
  String get gameScenePotteryWorkshop => '陶艺工坊';

  @override
  String get gameSceneBeachPicnic => '海滩野餐';

  @override
  String get gameSceneFlowerShop => '花店';

  @override
  String get gameSceneClockmakerSWorkshop => '钟表匠的工坊';

  @override
  String get gameSceneRainyCafeTerrace => '雨中的咖啡馆露台';

  @override
  String get gameSceneCastleHerbGarden => '城堡香草园';

  @override
  String get gameSceneClassroomArtCorner => '教室美术角';

  @override
  String get gameSceneAquariumShop => '水族店';

  @override
  String get gameSceneAutumnLeafCollection => '秋叶收藏';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => '月下孤树';

  @override
  String get gameSceneAutumnBlossomOnABranch => '枝头秋花';

  @override
  String get gameSceneFoxAmongGreenLeaves => '绿叶丛中的狐狸';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => '睡莲覆盖的湖上独木舟';

  @override
  String get gameSceneDewDropsOnALeaf => '叶上露珠';

  @override
  String get gameSceneStagInATurquoiseLake => '碧绿湖中的雄鹿';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => '橙色月亮下的自行车';

  @override
  String get gameSceneWhiteTigerAboveTheValley => '山谷上方的白虎';

  @override
  String get gameSceneTwoTreesInBlueWater => '蓝色水中的两棵树';

  @override
  String get gameSceneFishingBesideAFaithfulDog => '在忠诚的狗旁钓鱼';

  @override
  String get gameSceneLiliesBesideAMountainLake => '山间湖畔的百合';

  @override
  String get gameSceneDeerAtThePinkRiverside => '粉色河岸边的鹿';

  @override
  String get gameSceneTropicalHutAtSunset => '日落时分的热带小屋';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => '俯瞰高山山谷的狐狸';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => '穿过魔法树林的落日';

  @override
  String get learningControlTitle => 'DevOps 学习';

  @override
  String get learningControlAllCategories => '所有类别';

  @override
  String get learningControlSearchCards => '搜索卡片';

  @override
  String get learningControlClearSearch => '清除搜索';

  @override
  String get learningControlCategory => '类别';

  @override
  String get learningControlShowAll => '显示所有卡片';

  @override
  String learningControlShowSaved(int count) {
    return '显示已保存的卡片（$count）';
  }

  @override
  String get learningControlShuffleOff => '关闭随机排序';

  @override
  String get learningControlShuffleOn => '随机排序卡片';

  @override
  String get learningControlAutoOff => '停止自动切换';

  @override
  String get learningControlAutoOn => '每 10 秒自动切换';

  @override
  String get learningControlNoSaved => '还没有已保存的卡片';

  @override
  String get learningControlNoMatches => '没有匹配的卡片';

  @override
  String get learningControlResetFilters => '重置筛选';

  @override
  String get learningControlPrevious => '上一张';

  @override
  String get learningControlNext => '下一张';

  @override
  String get learningControlProgress => '进度';

  @override
  String get learningControlRemoveSaved => '从已保存中移除';

  @override
  String get learningControlSaveCard => '保存卡片';

  @override
  String get learningControlExample => '示例';

  @override
  String get learningControlCopyExample => '复制示例';

  @override
  String get learningControlExampleCopied => '示例已复制';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return '第 $value1 关已完成';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return '开始第 $value1 关';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return '完成第 $value1 关即可解锁';
  }

  @override
  String get sharedDialogDailyLoginBonus => '每日登录奖励';

  @override
  String get sharedDialogThanksForComingBack => '感谢你回来！';

  @override
  String get sharedDialogDailyRewardAdded => '你的每日奖励已添加到总积分中。';

  @override
  String get sharedDialogAwesome => '太棒了！';

  @override
  String get accountWelcomeGuest => '访客';

  @override
  String get accountWelcomeGuestUser => '访客用户';

  @override
  String get accountWelcomeUser => '用户';

  @override
  String get accountWelcomePlayingAsGuest => '正以访客身份游玩';

  @override
  String get accountWelcomeConnectGoogleAccount => '关联 Google 账号';

  @override
  String get accountWelcomeGoogleConnected => 'Google 账号关联成功！🎉';

  @override
  String get accountWelcomeSignInCancelled => '登录已取消。';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return '关联失败：$value1';
  }

  @override
  String get accountWelcomeSignOut => '退出登录';

  @override
  String get accountWelcomeSignOutTitle => '退出登录？';

  @override
  String get accountWelcomeSignOutMessage => '您确定要退出登录吗？您需要重新登录才能访问已保存的进度。';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return '退出登录失败：$value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ 重置应用数据？';

  @override
  String get accountWelcomeResetAppMessage => '这将永久删除您的所有积分、连续记录、游戏历史和设置。您将退出登录并返回开始屏幕。此操作无法撤销。';

  @override
  String get accountWelcomeResetEverything => '重置所有内容';

  @override
  String accountWelcomeResetFailed(String value1) {
    return '重置失败：$value1';
  }

  @override
  String get accountWelcomeCancel => '取消';

  @override
  String get accountWelcomeResetAppData => '重置应用数据';

  @override
  String get accountWelcomeResetAppDataSubtitle => '清除所有积分、连续记录和设置';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz 应用';

  @override
  String get accountWelcomeTranslationNotAvailable => '翻译暂不可用';

  @override
  String get accountWelcomeContinueWithGoogle => '通过 Google 继续';

  @override
  String get accountWelcomeSigningIn => '正在登录...';

  @override
  String get accountWelcomeOr => '或';

  @override
  String get accountWelcomeContinueAsGuest => '以访客身份继续';

  @override
  String get accountWelcomeSignInLaterFromProfile => '您可以稍后在个人资料中登录。';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => '您可以先以访客身份开始，稍后再登录。';

  @override
  String get accountWelcomeGreetingGuest => '欢迎';

  @override
  String accountWelcomeUserToast(String value1) {
    return '欢迎，$value1！';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google 登录已完成，但未返回任何用户账号。';

  @override
  String get accountWelcomeErrorEmailExists => '此电子邮件地址已存在使用其他登录方式的账号。';

  @override
  String get accountWelcomeErrorCredentialInUse => '此 Google 账号已关联到另一个账号。';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google 身份验证凭据无效或已过期。';

  @override
  String get accountWelcomeErrorUserDisabled => '此账号已被禁用。';

  @override
  String get accountWelcomeErrorOperationNotAllowed => '当前未启用 Google 登录。';

  @override
  String get accountWelcomeErrorNetwork => '网络错误。请检查您的互联网连接并重试。';

  @override
  String get accountWelcomeErrorTooManyRequests => '登录尝试次数过多。请稍候再试。';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => '没有其他错误信息。';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google 登录失败。\n\n代码：$value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google 登录错误：\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => '无法以访客身份继续。请重试。';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google 登录即将推出。';

  @override
  String get accountWelcomeLoginTagline => '学习 • 练习 • 竞争 • 赢取';

  @override
  String get accountWelcomeCountryRegion => '国家 / 地区';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return '国家 / 地区：$value1';
  }

  @override
  String get accountWelcomeSearchCountry => '搜索国家';

  @override
  String get accountWelcomeCountryNotSelected => '未选择';

  @override
  String get accountWelcomeWhyDevOpsQuiz => '为什么选择 DevOps Quiz？';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ 练习题';

  @override
  String get accountWelcomeFeatureLanguages => '多语言支持';

  @override
  String get accountWelcomeFeatureStreaks => '连续记录与排行榜';

  @override
  String get accountWelcomeFeatureGames => '游戏与挑战';

  @override
  String get accountWelcomeFeatureCloud => '云与 DevOps';

  @override
  String get accountWelcomeFeatureRewards => '奖励与福利';

  @override
  String get accountWelcomePracticeOnTheGo => '随时随地练习';

  @override
  String get accountWelcomeInstallAndroidPromo => '安装 Android 应用，随时随地离线学习。';

  @override
  String get accountWelcomeGetItOnGooglePlay => '在 Google Play 上获取';

  @override
  String achLocStreakTitle(String days) {
    return '连续 $days 天';
  }

  @override
  String achLocStreakDescription(String days) {
    return '保持 $days 天连续记录。';
  }

  @override
  String get achLocYearStreakTitle => '连续 1 年';

  @override
  String get achLocFirstQuizTitle => '首次测验';

  @override
  String get achLocFirstQuizDescription => '完成你的第一次测验。';

  @override
  String get achLocQuiz10Title => '测验探索者';

  @override
  String get achLocQuiz10Description => '完成 10 次测验。';

  @override
  String get achLocPoints1000Title => '1000 积分';

  @override
  String get achLocPoints1000Description => '在 Quiz 中累计获得 1000 积分。';

  @override
  String get achLocPerfectScoreTitle => '满分';

  @override
  String get achLocPerfectScoreDescription => '在任意测验中获得 100% 的分数。';

  @override
  String get achLocQuiz25Title => '测验爱好者';

  @override
  String get achLocQuiz25Description => '完成 25 次测验。';

  @override
  String get achLocQuiz50Title => '测验大师';

  @override
  String get achLocQuiz50Description => '完成 50 次测验。';

  @override
  String get achLocQuiz100Title => '百次俱乐部';

  @override
  String get achLocQuiz100Description => '完成 100 次测验。';

  @override
  String get achLocQuiz250Title => '测验传奇';

  @override
  String get achLocQuiz250Description => '完成 250 次测验。';

  @override
  String get achLocPoints5000Title => '5,000 积分';

  @override
  String get achLocPoints5000Description => '累计获得 5,000 积分。';

  @override
  String get achLocPoints10000Title => '10,000 积分';

  @override
  String get achLocPoints10000Description => '累计获得 10,000 积分。';

  @override
  String get achLocPoints50000Title => '50,000 积分';

  @override
  String get achLocPoints50000Description => '累计获得 50,000 积分。';

  @override
  String get achLocPoints100000Title => '100,000 积分';

  @override
  String get achLocPoints100000Description => '累计获得 100,000 积分。';

  @override
  String get achLocDaily1Title => '每日入门';

  @override
  String get achLocDaily1Description => '完成你的第一次每日测验。';

  @override
  String get achLocDaily7Title => '每日习惯';

  @override
  String get achLocDaily7Description => '完成 7 次每日测验。';

  @override
  String get achLocDaily30Title => '每日冠军';

  @override
  String get achLocDaily30Description => '完成 30 次每日测验。';

  @override
  String get achLocSets5Title => '题集入门';

  @override
  String get achLocSets5Description => '完成 5 个测验题集。';

  @override
  String get achLocSets25Title => '题集收藏家';

  @override
  String get achLocSets25Description => '完成 25 个测验题集。';

  @override
  String get achLocSets50Title => '题集大师';

  @override
  String get achLocSets50Description => '完成 50 个测验题集。';

  @override
  String get achLocSets100Title => '题集传奇';

  @override
  String get achLocSets100Description => '完成 100 个测验题集。';

  @override
  String get achLocCert1Title => '首张证书';

  @override
  String get achLocCert1Description => '获得你的第一张类别证书。';

  @override
  String get achLocCert5Title => '认证专家';

  @override
  String get achLocCert5Description => '获得 5 张类别证书。';

  @override
  String get achLocCert21Title => '全面认证';

  @override
  String get achLocCert21Description => '在全部 21 个类别中获得证书。';

  @override
  String get achLocThemeFreeValentinesWeek => '每年 2 月 7 日至 14 日免费';

  @override
  String get achLocThemeFreeDqSpecialWeek => '每年 3 月 8 日至 15 日免费';

  @override
  String get achLocThemeLight => '浅色';

  @override
  String get achLocThemeDark => '深色';

  @override
  String get achLocThemeSakura => '樱花';

  @override
  String get achLocThemeSunset => '日落';

  @override
  String get achLocThemeCoffee => '咖啡';

  @override
  String get achLocThemeTea => '茶';

  @override
  String get achLocThemeOcean => '海洋';

  @override
  String get achLocThemeSolarFlare => '太阳耀斑';

  @override
  String get achLocThemeForest => '森林';

  @override
  String get achLocThemeAurora => '极光';

  @override
  String get achLocThemeMatrix => '黑客帝国';

  @override
  String get achLocThemeCyberPurple => '赛博紫';

  @override
  String get achLocThemeInferno => '炼狱';

  @override
  String get achLocThemeMidnight => '午夜';

  @override
  String get achLocThemeDarkGrey => '深灰';

  @override
  String get achLocThemeBarbee => '芭比';

  @override
  String get achLocThemeValentineDay => '情人节';

  @override
  String get achLocThemeDqSpecial => 'DQ 特别版';

  @override
  String get achLocThemeArmy => '军队';

  @override
  String get achLocThemeSpiderMan => '蜘蛛侠';

  @override
  String get achLocThemeKrrish => '克里什';

  @override
  String get achLocThemeIronMan => '钢铁侠';

  @override
  String get achLocThemeCaptainAmerica => '美国队长';

  @override
  String get achLocThemeThor => '雷神';

  @override
  String get achLocThemeHulk => '绿巨人';

  @override
  String get achLocThemeBlackWidow => '黑寡妇';

  @override
  String get achLocThemeHawkeye => '鹰眼';

  @override
  String get achLocThemeBlackPanther => '黑豹';

  @override
  String get achLocThemeScarletWitch => '猩红女巫';

  @override
  String get achLocThemeVision => '幻视';

  @override
  String get achLocThemeAntMan => '蚁人';

  @override
  String get achLocThemeCaptainMarvel => '惊奇队长';

  @override
  String get achLocThemeDoctorStrange => '奇异博士';

  @override
  String get achLocThemeAvengers => '复仇者联盟';

  @override
  String get achLocThemeBatman => '蝙蝠侠';

  @override
  String get achLocThemeSuperman => '超人';

  @override
  String get achLocThemeWonderWoman => '神奇女侠';

  @override
  String get achLocThemeFlash => '闪电侠';

  @override
  String get achLocThemeAquaman => '海王';

  @override
  String get achLocThemeGreenLantern => '绿灯侠';

  @override
  String get achLocThemeCyborg => '赛博格';

  @override
  String get achLocThemeSupergirl => '超级少女';

  @override
  String get achLocThemeDc => 'DC 英雄';

  @override
  String get achLocThemeRainbow => '彩虹';

  @override
  String get achLocThemeDiamond => '钻石';

  @override
  String get achLocThemeLegendary => '传奇';

  @override
  String get gameHintCmd001LsLa => '列出所有文件及详细信息';

  @override
  String get gameHintCmd002Grep => '按模式搜索文本';

  @override
  String get gameHintCmd003Chmod => '更改文件权限';

  @override
  String get gameHintCmd004DfH => '显示磁盘可用空间';

  @override
  String get gameHintCmd005TailF => '持续跟踪不断增长的日志文件';

  @override
  String get gameHintCmd006PsAux => '列出正在运行的进程';

  @override
  String get gameHintCmd007GitClone => '复制远程仓库';

  @override
  String get gameHintCmd008GitStash => '暂存未提交的更改';

  @override
  String get gameHintCmd009GitRebase => '在新的基底上重新应用提交';

  @override
  String get gameHintCmd010GitBlame => '显示每一行是谁修改的';

  @override
  String get gameHintCmd011DockerPs => '列出正在运行的容器';

  @override
  String get gameHintCmd012DockerBuild => '根据 Dockerfile 创建镜像';

  @override
  String get gameHintCmd013DockerLogs => '显示容器输出';

  @override
  String get gameHintCmd014DockerExec => '在容器内运行命令';

  @override
  String get gameHintCmd015KubectlGetPods => '列出命名空间中的 Pod';

  @override
  String get gameHintCmd016KubectlApply => '通过文件创建资源';

  @override
  String get gameHintCmd017KubectlDescribe => '显示资源的详细信息';

  @override
  String get gameHintCmd018KubectlScale => '更改副本数量';

  @override
  String get gameHintCmd019TerraformInit => '下载提供程序并完成初始化';

  @override
  String get gameHintCmd020TerraformPlan => '预览基础设施变更';

  @override
  String get gameHintCmd021TerraformApply => '创建或更新基础设施';

  @override
  String get gameHintCmd022TerraformDestroy => '移除受管理的基础设施';

  @override
  String get gameHintCmd023AnsiblePlaybook => '运行自动化 playbook';

  @override
  String get gameHintCmd024Ping => '使用 ICMP 测试可达性';

  @override
  String get gameHintCmd025Traceroute => '显示到主机的路径';

  @override
  String get gameHintCmd026Curl => '从 URL 传输数据';

  @override
  String get gameHintCmd027Ssh => '安全登录远程机器';

  @override
  String get gameHintCmd028CrontabE => '编辑计划任务';

  @override
  String get gameHintCmd029SystemctlStatus => '检查服务状态';

  @override
  String get gameHintCmd030HelmInstall => '将 chart 部署到 Kubernetes';

  @override
  String get gameHintWord001Git => '跟踪源代码的变更。';

  @override
  String get gameHintWord002Aws => 'Amazon 的云平台。';

  @override
  String get gameHintWord003Api => '让软件系统之间相互通信的约定。';

  @override
  String get gameHintWord004Dns => '将域名转换为 IP 地址。';

  @override
  String get gameHintWord005Cli => '用于运行命令的文本界面。';

  @override
  String get gameHintWord006Cpu => '执行指令的处理器。';

  @override
  String get gameHintWord007Ram => '运行中的程序使用的临时内存。';

  @override
  String get gameHintWord008Ssh => '用于远程 shell 访问的安全协议。';

  @override
  String get gameHintWord009Yaml => '一种人类可读的数据序列化格式。';

  @override
  String get gameHintWord010Linux => '开源操作系统内核及其系列。';

  @override
  String get gameHintWord011Bash => '一种流行的 Unix 命令行 shell。';

  @override
  String get gameHintWord012Cloud => '通过网络按需提供的计算服务。';

  @override
  String get gameHintWord013Docker => '用于构建和运行容器的平台。';

  @override
  String get gameHintWord014Azure => 'Microsoft 的云平台。';

  @override
  String get gameHintWord015Python => '一种广泛使用的脚本和编程语言。';

  @override
  String get gameHintWord016Github => '一个流行的托管式 Git 协作服务。';

  @override
  String get gameHintWord017Bgp => '在自治系统之间交换路由的路由协议。';

  @override
  String get gameHintWord018Jenkins => '常用于 CI 的自动化服务器。';

  @override
  String get gameHintWord019Port => '网络服务使用的带编号的端点。';

  @override
  String get gameHintWord020Proxy => '为客户端转发请求的服务器。';

  @override
  String get gameHintWord021Cache => '存放常用数据的高速存储。';

  @override
  String get gameHintWord022Cron => '用于周期性命令的 Unix 调度器。';

  @override
  String get gameHintWord023Bicep => 'Azure 用于基础设施即代码的声明式语言。';

  @override
  String get gameHintWord024Apigee => '用于集中管理 API 的 Google Cloud 平台。';

  @override
  String get gameHintWord025Root => '类 Unix 系统上拥有特权的管理员账户。';

  @override
  String get gameHintWord026Nginx => 'Web 服务器和反向代理。';

  @override
  String get gameHintWord027Redis => '常用作缓存的内存数据存储。';

  @override
  String get gameHintWord028Mysql => '流行的关系型数据库系统。';

  @override
  String get gameHintWord029Ruby => 'Chef 等工具所使用的编程语言。';

  @override
  String get gameHintWord030Helm => '常与 Kubernetes 配合使用的包管理器。';

  @override
  String get gameHintWord031Pod => 'Kubernetes 中最小的可部署单元。';

  @override
  String get gameHintWord032Image => '用于创建容器的只读模板。';

  @override
  String get gameHintWord033Build => '根据源代码和依赖项生成构建产物。';

  @override
  String get gameHintWord034Deploy => '将应用程序发布到某个环境中。';

  @override
  String get gameHintWord035Terraform => 'HashiCorp 推出的基础设施即代码工具。';

  @override
  String get gameHintWord036Ansible => '无代理的自动化与配置工具。';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes 的命令行客户端。';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform 的缩写。';

  @override
  String get gameHintWord039Gitops => '以 Git 作为唯一事实来源的运维模式。';

  @override
  String get gameHintWord040Pipeline => '由构建、测试和发布阶段组成的自动化流程。';

  @override
  String get gameHintWord041Container => '连同依赖项一起打包的隔离进程。';

  @override
  String get gameHintWord042Cluster => '作为共享系统统一管理的一组机器。';

  @override
  String get gameHintWord043Ingress => '用于外部 HTTP 路由的 Kubernetes API 对象。';

  @override
  String get gameHintWord044Firewall => '根据安全规则过滤网络流量。';

  @override
  String get gameHintWord045Subnet => 'IP 网络的逻辑子划分。';

  @override
  String get gameHintWord046Gateway => '连接不同网络的网络节点。';

  @override
  String get gameHintWord047Router => '在网络之间转发数据包。';

  @override
  String get gameHintWord048Switch => '连接本地网络内的设备。';

  @override
  String get gameHintWord049Repository => '用于存放源代码或软件包的受管存储。';

  @override
  String get gameHintWord050Systemd => 'Linux 的 init 系统和服务管理器。';

  @override
  String get gameHintWord051Journalctl => '用于读取 systemd 日志的命令。';

  @override
  String get gameHintWord052Permission => '控制谁可以读取、写入或执行的规则。';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud 托管的兼容 PostgreSQL 的数据库。';

  @override
  String get gameHintWord054Configmap => '用于存放非机密配置的 Kubernetes 对象。';

  @override
  String get gameHintWord055Secret => '用于存放敏感数据的 Kubernetes 对象。';

  @override
  String get gameHintWord056Persistent => '描述在工作负载重启后仍然保留的存储。';

  @override
  String get gameHintWord057Volume => '挂载到容器中的文件系统存储。';

  @override
  String get gameHintWord058Storage => '用于持久保存文件、对象或块的位置。';

  @override
  String get gameHintWord059Replica => '为扩展或可靠性而维护的工作负载实例副本。';

  @override
  String get gameHintWord060Deployment => '用于无状态应用 Pod 的 Kubernetes 控制器。';

  @override
  String get gameHintWord061Dockerfile => '用于构建 Docker 镜像的指令。';

  @override
  String get gameHintWord062Database => '供应用程序查询的有组织的数据存储。';

  @override
  String get gameHintWord063Automation => '使用软件执行可重复的任务，无需人工操作。';

  @override
  String get gameHintWord064Anthos => '用于跨环境管理集群的 Google Cloud 平台。';

  @override
  String get gameHintWord065Bigquery => '用于大规模数据分析的 Google Cloud 服务。';

  @override
  String get gameHintWord066Bigtable => '用于分析的 Google Cloud 宽列 NoSQL 数据库。';

  @override
  String get gameHintWord067Loadbalancer => '将传入流量分发到多个后端。';

  @override
  String get gameHintWord068Prometheus => '存储时间序列指标的监控系统。';

  @override
  String get gameHintWord069Grafana => '用于查询和可视化可观测性数据的平台。';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud 托管的 NoSQL JSON 文档数据库。';

  @override
  String get gameHintWord071Cloudtrail => '记录 API 活动以供审计的 AWS 服务。';

  @override
  String get gameHintWord072Statefulset => '用于需要稳定标识的工作负载的 Kubernetes 控制器。';

  @override
  String get gameHintWord073Daemonset => '在选定节点上运行 Pod 的 Kubernetes 控制器。';

  @override
  String get gameHintWord074Serviceaccount => '工作负载或进程使用的 Kubernetes 身份。';

  @override
  String get gameHintWord075Networkpolicy => '控制 Pod 网络流量的 Kubernetes 资源。';

  @override
  String get gameHintWord076Certificate => '在 TLS 中用于确立身份的数字文档。';

  @override
  String get gameHintWord077Encryption => '转换数据，使只有授权方才能读取。';

  @override
  String get gameHintWord078Observability => '通过系统输出推断其行为的能力。';

  @override
  String get gameHintWord079Coredns => '常用于 Kubernetes 集群内部的 DNS 服务器。';

  @override
  String get gameHintWord080Crossplane => '通过 Kubernetes API 管理云资源的项目。';

  @override
  String get gameHintWord081Failover => '故障发生后切换到备用组件。';

  @override
  String get gameHintWord082Idempotency => '重复执行某操作与只执行一次效果相同的特性。';

  @override
  String get gameHintWord083Dataflow => '用于流式和批量数据处理的 Google Cloud 服务。';

  @override
  String get gameHintWord084Orchestration => '对多个自动化工作负载进行协调管理。';

  @override
  String get gameHintWord085Dataplex => '用于发现和治理企业数据的 Google Cloud 服务。';

  @override
  String get gameHintWord086Serverless => '将基础设施管理抽象化的执行模型。';

  @override
  String get gameHintWord087Distributed => '组件运行在多台联网机器上的系统。';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud 托管的 Apache Spark 和 Hadoop 环境。';

  @override
  String get gameHintWord089Dynamodb => '常用于 Terraform 状态锁定的 AWS NoSQL 数据库。';

  @override
  String get gameHintWord090Provisioning => '为使用准备基础设施或资源。';

  @override
  String get gameHintWord091Elasticsearch => '常用于集中式日志记录的搜索引擎。';

  @override
  String get gameHintWord092Etcd => '保存 Kubernetes 集群状态的键值存储。';

  @override
  String get gameHintWord093Authentication => '验证用户或服务身份的过程。';

  @override
  String get gameHintWord094Authorization => '决定某个身份被允许执行哪些操作的过程。';

  @override
  String get gameHintWord095Expressroute => '用于与数据中心建立专用私有连接的 Azure 服务。';

  @override
  String get gameHintWord096Configuration => '决定软件行为方式的设置。';

  @override
  String get gameHintWord097Infrastructure => '支撑应用程序的计算、网络和存储资源。';

  @override
  String get gameHintWord098Fastconnect => '用于专用私有网络连接的 Oracle Cloud 服务。';

  @override
  String get gameHintWord099Containerd => 'Kubernetes 使用的行业标准容器运行时。';

  @override
  String get gameHintWord100Kubernetes => '容器编排平台。';

  @override
  String get gameHintWord101Http => '用于请求 Web 资源的应用层协议。';

  @override
  String get gameHintWord102Https => 'Web 请求协议的加密版本。';

  @override
  String get gameHintWord103Tcp => '提供可靠有序传输的传输层协议。';

  @override
  String get gameHintWord104Udp => '用于数据报的无连接传输协议。';

  @override
  String get gameHintWord105Tls => '保护网络数据交换安全的协议。';

  @override
  String get gameHintWord106Ssl => '现代传输安全协议的早期前身。';

  @override
  String get gameHintWord107Ftp => '传统的文件传输协议。';

  @override
  String get gameHintWord108Sftp => '通过安全 shell 连接承载的文件传输协议。';

  @override
  String get gameHintWord109Smtp => '用于在服务器之间发送电子邮件的协议。';

  @override
  String get gameHintWord110Snmp => '用于管理和监控网络设备的协议。';

  @override
  String get gameHintWord111Icmp => '承载网络错误和 ping 消息的协议。';

  @override
  String get gameHintWord112Arp => '将本地 IPv4 地址解析为硬件地址。';

  @override
  String get gameHintWord113Dhcp => '自动向网络客户端分配 IP 配置。';

  @override
  String get gameHintWord114Nat => '在数据包经过网关时改写网络地址。';

  @override
  String get gameHintWord115Vpn => '连接远程网络或用户的加密隧道。';

  @override
  String get gameHintWord116Vpc => '公有云中隔离的虚拟网络。';

  @override
  String get gameHintWord117Vlan => '对交换网络进行的逻辑隔离。';

  @override
  String get gameHintWord118Wan => '覆盖广阔地理区域的网络。';

  @override
  String get gameHintWord119Lan => '连接局部区域内设备的网络。';

  @override
  String get gameHintWord120Cdn => '缓存并分发内容的分布式边缘网络。';

  @override
  String get gameHintWord121Cidr => '用斜杠加长度表示网络前缀的记法。';

  @override
  String get gameHintWord122Host => '连接到网络的计算机或端点。';

  @override
  String get gameHintWord123Hostname => '分配给联网机器的人类可读名称。';

  @override
  String get gameHintWord124Domain => '互联网命名系统中的命名管理区域。';

  @override
  String get gameHintWord125Zone => 'DNS 命名空间的管理部分。';

  @override
  String get gameHintWord126Record => 'DNS 数据库中的单个条目。';

  @override
  String get gameHintWord127Aaaa => '将名称解析为 IPv6 地址的 DNS 记录类型。';

  @override
  String get gameHintWord128Ptr => '用于反向地址查询的 DNS 记录类型。';

  @override
  String get gameHintWord129Txt => '存储文本值的 DNS 记录类型。';

  @override
  String get gameHintWord130Cname => '使一个名称成为另一个名称别名的 DNS 记录。';

  @override
  String get gameHintWord131Route => '指引数据包前往目的地的路径条目。';

  @override
  String get gameHintWord132Routing => '为网络之间的流量选择路径。';

  @override
  String get gameHintWord133Packet => '在网络中传输的数据单元。';

  @override
  String get gameHintWord134Protocol => '系统之间通信所约定的规则。';

  @override
  String get gameHintWord135Ack => '确认已收到数据的 TCP 标志。';

  @override
  String get gameHintWord136Bandwidth => '通信链路的容量。';

  @override
  String get gameHintWord137Latency => '请求或数据包得到响应之前的延迟。';

  @override
  String get gameHintWord138Throughput => '单位时间内处理的有效工作量或数据量。';

  @override
  String get gameHintWord139Mtu => '链路无需分片即可传输的最大数据包大小。';

  @override
  String get gameHintWord140Alpn => '协商应用层协议的 TLS 扩展。';

  @override
  String get gameHintWord141Grep => '在文本行中搜索匹配的模式。';

  @override
  String get gameHintWord142Sed => '常用于文本替换的流编辑器。';

  @override
  String get gameHintWord143Lscpu => '显示处理器架构和核心详情的 Linux 命令。';

  @override
  String get gameHintWord144Find => '使用文件条件搜索目录树。';

  @override
  String get gameHintWord145Lsblk => '列出块设备及其关系的 Linux 命令。';

  @override
  String get gameHintWord146Sort => '对文本行排序。';

  @override
  String get gameHintWord147Uniq => '过滤相邻的重复行。';

  @override
  String get gameHintWord148Head => '输出文件的开头部分。';

  @override
  String get gameHintWord149Tail => '输出文件的末尾部分，并可跟踪追加的日志。';

  @override
  String get gameHintWord150Cat => '连接文件并输出其内容。';

  @override
  String get gameHintWord151Cut => '从行中提取选定的字段或字符列。';

  @override
  String get gameHintWord152Tee => '将标准输入复制到文件和标准输出。';

  @override
  String get gameHintWord153Echo => '将其参数写入标准输出。';

  @override
  String get gameHintWord154Printf => '从 shell 或程序输出格式化文本。';

  @override
  String get gameHintWord155Touch => '更新文件时间戳或创建空文件。';

  @override
  String get gameHintWord156Mkdir => '创建目录。';

  @override
  String get gameHintWord157Rmdir => '删除空目录。';

  @override
  String get gameHintWord158Chmod => '更改 Unix 文件权限位。';

  @override
  String get gameHintWord159Chown => '更改文件所有者。';

  @override
  String get gameHintWord160Chgrp => '更改文件所属组。';

  @override
  String get gameHintWord161Pwd => '输出当前工作目录。';

  @override
  String get gameHintWord162Apt => '基于 Debian 的系统使用的包管理工具。';

  @override
  String get gameHintWord163Top => '交互式显示进程和系统资源使用情况。';

  @override
  String get gameHintWord164Agent => '在主机上执行或报告工作的软件组件。';

  @override
  String get gameHintWord165Kill => '按标识符向进程发送信号。';

  @override
  String get gameHintWord166Signal => '操作系统发送给进程的通知。';

  @override
  String get gameHintWord167Sigkill => '立即终止进程的 Unix 信号。';

  @override
  String get gameHintWord168Nice => '以调整后的调度优先级启动进程。';

  @override
  String get gameHintWord169Renice => '更改运行中进程的调度优先级。';

  @override
  String get gameHintWord170Jobs => '列出当前 shell 管理的作业。';

  @override
  String get gameHintWord171Nohup => '运行命令并忽略挂起信号。';

  @override
  String get gameHintWord172Screen => '支持可分离会话的终端复用器。';

  @override
  String get gameHintWord173Uptime => '报告系统已运行多长时间。';

  @override
  String get gameHintWord174Uname => '输出系统和内核信息。';

  @override
  String get gameHintWord175Whoami => '输出当前生效的用户名。';

  @override
  String get gameHintWord176Umask => '设置创建文件时使用的权限掩码。';

  @override
  String get gameHintWord177Usermod => '修改现有用户账户的 Linux 命令。';

  @override
  String get gameHintWord178Crontab => '编辑或列出计划的周期性 shell 作业。';

  @override
  String get gameHintWord179Findmnt => '显示已挂载文件系统信息的 Linux 命令。';

  @override
  String get gameHintWord180Mount => '将文件系统挂接到目录树。';

  @override
  String get gameHintWord181Sigterm => '请求进程正常终止的 Unix 信号。';

  @override
  String get gameHintWord182Fstab => '描述要挂载的文件系统的系统表。';

  @override
  String get gameHintWord183Swap => '以磁盘为后盾、用于补充物理内存的空间。';

  @override
  String get gameHintWord184Tmpfs => '以虚拟内存为后盾的临时文件系统。';

  @override
  String get gameHintWord185Proc => '公开进程和内核信息的 Linux 虚拟文件系统。';

  @override
  String get gameHintWord186Syslog => '标准的日志记录协议和消息格式。';

  @override
  String get gameHintWord187Dmesg => '显示内核环形缓冲区中的消息。';

  @override
  String get gameHintWord188Free => '报告已用和可用的系统内存。';

  @override
  String get gameHintWord189Stat => '显示详细的文件元数据。';

  @override
  String get gameHintWord190Lsof => '列出打开的文件及占用它们的进程。';

  @override
  String get gameHintWord191Netstat => '显示网络连接和路由信息。';

  @override
  String get gameHintWord192Checksum => '用于检测数据变化或损坏的计算值。';

  @override
  String get gameHintWord193Ping => '使用回显请求测试网络可达性。';

  @override
  String get gameHintWord194Traceroute => '显示通往网络目的地的中间跳点。';

  @override
  String get gameHintWord195Resolver => '查找名称查询答案的 DNS 组件。';

  @override
  String get gameHintWord196Nslookup => '查询 DNS 名称和地址。';

  @override
  String get gameHintWord197Telnet => '过时的未加密远程终端协议。';

  @override
  String get gameHintWord198Tftp => '基于 UDP 的简单文件传输协议。';

  @override
  String get gameHintWord199Daemon => '类 Unix 系统上的后台服务进程。';

  @override
  String get gameHintWord200Kernel => '管理操作系统资源的核心组件。';

  @override
  String get gameHintWord201Commit => '版本控制中记录下来的变更快照。';

  @override
  String get gameHintWord202Branch => '代表一条开发线的可移动引用。';

  @override
  String get gameHintWord203Merge => '合并不同开发线的历史。';

  @override
  String get gameHintWord204Rebase => '在另一个基底提交之上重放提交。';

  @override
  String get gameHintWord205Clone => '创建远程仓库的本地副本。';

  @override
  String get gameHintWord206Fetch => '下载远程对象和引用，但不合并。';

  @override
  String get gameHintWord207Pull => '获取变更并将其整合到当前分支。';

  @override
  String get gameHintWord208Push => '将本地提交发送到远程仓库。';

  @override
  String get gameHintWord209Stash => '临时保存未提交的工作区变更。';

  @override
  String get gameHintWord210Revert => '创建一个撤销另一个提交的提交。';

  @override
  String get gameHintWord211Reset => '移动 Git 引用，并可重置索引或工作文件。';

  @override
  String get gameHintWord212Reflog => 'Git 引用更新的本地历史记录。';

  @override
  String get gameHintWord213Diff => '显示版本或文件之间的差异。';

  @override
  String get gameHintWord214Status => '报告已暂存、已修改和未跟踪的文件。';

  @override
  String get gameHintWord215Checkout => '用于切换版本或恢复文件的 Git 命令。';

  @override
  String get gameHintWord216Tag => '通常用于标记发布版本的命名引用。';

  @override
  String get gameHintWord217Remote => '与另一个仓库的命名连接。';

  @override
  String get gameHintWord218Origin => '克隆仓库时分配给远程的默认名称。';

  @override
  String get gameHintWord219Upstream => '与本地分支关联的远程跟踪分支。';

  @override
  String get gameHintWord220Worktree => '与仓库关联的已检出工作目录。';

  @override
  String get gameHintWord221Registry => '存储和分发容器镜像的服务。';

  @override
  String get gameHintWord222Digest => '基于内容的容器镜像标识符。';

  @override
  String get gameHintWord223Layer => '构成容器镜像一部分的文件系统变更。';

  @override
  String get gameHintWord224Entrypoint => '定义容器主可执行文件的 Dockerfile 指令。';

  @override
  String get gameHintWord225Cmd => '指定默认命令或参数的 Dockerfile 指令。';

  @override
  String get gameHintWord226Workdir => '设置工作目录的 Dockerfile 指令。';

  @override
  String get gameHintWord227Copy => '将构建上下文中的文件复制到镜像中的 Dockerfile 指令。';

  @override
  String get gameHintWord228Add => '还可以解压本地归档文件的 Dockerfile 指令。';

  @override
  String get gameHintWord229Run => '执行构建时命令的 Dockerfile 指令。';

  @override
  String get gameHintWord230Env => '定义环境变量的 Dockerfile 指令。';

  @override
  String get gameHintWord231Arg => '声明构建时变量的 Dockerfile 指令。';

  @override
  String get gameHintWord232Expose => '说明容器端口的 Dockerfile 指令。';

  @override
  String get gameHintWord233User => '为后续命令选择账户的 Dockerfile 指令。';

  @override
  String get gameHintWord234Healthcheck => '描述如何测试容器健康状况的指令。';

  @override
  String get gameHintWord235Shebang => '脚本首行，用于指明要执行的解释器。';

  @override
  String get gameHintWord236Compose => '用于定义和运行多容器应用程序的 Docker 工具。';

  @override
  String get gameHintWord237Bridge => '用于本地容器网络的常见 Docker 网络驱动。';

  @override
  String get gameHintWord238Overlay => '跨多台主机上容器的网络。';

  @override
  String get gameHintWord239None => '禁用容器网络的 Docker 网络驱动。';

  @override
  String get gameHintWord240Prune => '删除未使用的容器资源。';

  @override
  String get gameHintWord241Replicaset => '维持期望 Pod 数量的 Kubernetes 控制器。';

  @override
  String get gameHintWord242Service => '为 Pod 提供稳定访问的 Kubernetes 抽象。';

  @override
  String get gameHintWord243Endpoints => '支撑 Kubernetes 服务的地址。';

  @override
  String get gameHintWord244Namespace => '对 Kubernetes 资源进行分组的逻辑范围。';

  @override
  String get gameHintWord245Node => '承载 Kubernetes Pod 的工作机器。';

  @override
  String get gameHintWord246Kubelet => '每个节点上管理 Pod 运行的代理。';

  @override
  String get gameHintWord247Pvc => 'Kubernetes 对持久存储的请求。';

  @override
  String get gameHintWord248Apiserver => '公开集群 API 的 Kubernetes 控制平面组件。';

  @override
  String get gameHintWord249Role => '基于角色的访问控制中命名的一组权限。';

  @override
  String get gameHintWord250Resourcequota => '限制命名空间内资源消耗的 Kubernetes 对象。';

  @override
  String get gameHintWord251Selector => '按标签匹配资源的表达式。';

  @override
  String get gameHintWord252Taint => '排斥没有匹配容忍度的 Pod 的节点属性。';

  @override
  String get gameHintWord253Toleration => '允许调度到带污点节点上的 Pod 设置。';

  @override
  String get gameHintWord254Cordon => '将 Kubernetes 节点标记为不可调度。';

  @override
  String get gameHintWord255Uncordon => '使已封锁的节点重新可调度。';

  @override
  String get gameHintWord256Drain => '在节点维护前安全驱逐工作负载。';

  @override
  String get gameHintWord257Job => '运行任务直至完成的 Kubernetes 工作负载。';

  @override
  String get gameHintWord258Cronjob => '按计划创建作业的 Kubernetes 工作负载。';

  @override
  String get gameHintWord259Readiness => '指示容器是否可以接收流量的探针。';

  @override
  String get gameHintWord260Liveness => '指示容器是否需要重启的探针。';

  @override
  String get gameHintWord261Canary => '将新版本暴露给一小部分流量的发布方式。';

  @override
  String get gameHintWord262Rolling => '逐步替换运行中实例的更新策略。';

  @override
  String get gameHintWord263Rollback => '恢复到之前可用的应用版本。';

  @override
  String get gameHintWord264Rollout => '新应用版本的渐进式部署。';

  @override
  String get gameHintWord265Recreate => '先停止旧 Pod 再启动替代 Pod 的部署策略。';

  @override
  String get gameHintWord266Blue => '蓝绿发布中的两个环境之一。';

  @override
  String get gameHintWord267Green => '蓝绿发布中的另一个环境。';

  @override
  String get gameHintWord268Artifact => '构建流水线产出的带版本的输出。';

  @override
  String get gameHintWord269Staging => '用于发布验证的预生产环境。';

  @override
  String get gameHintWord270Production => '为真实最终用户提供服务的环境。';

  @override
  String get gameHintWord271Release => '交付使用的软件版本。';

  @override
  String get gameHintWord272Version => '用于区分软件修订的标识符。';

  @override
  String get gameHintWord273Revision => '文档或代码库的可识别版本。';

  @override
  String get gameHintWord274Webhook => '事件发生时发送的 HTTP 通知。';

  @override
  String get gameHintWord275Runbook => '用于运维或恢复系统的文档化流程。';

  @override
  String get gameHintWord276Workspace => '包含工作项目资源的目录或范围。';

  @override
  String get gameHintWord277Credentials => '用于访问系统的身份验证凭据。';

  @override
  String get gameHintWord278Trigger => '启动流水线的事件或条件。';

  @override
  String get gameHintWord279Parameter => '提供给作业或函数的命名输入。';

  @override
  String get gameHintWord280Access => '在授权前提下使用资源的能力。';

  @override
  String get gameHintWord281Module => '可复用的一组基础设施定义。';

  @override
  String get gameHintWord282Provider => '将配置连接到外部 API 的 Terraform 插件。';

  @override
  String get gameHintWord283Resource => '在配置中声明的受管基础设施对象。';

  @override
  String get gameHintWord284Variable => '配置或代码使用的命名输入值。';

  @override
  String get gameHintWord285Output => '基础设施配置返回的对外公开的值。';

  @override
  String get gameHintWord286Tfstate => '与 Terraform 状态快照关联的文件后缀。';

  @override
  String get gameHintWord287Tfvars => '用于 Terraform 输入变量值的文件后缀。';

  @override
  String get gameHintWord288Backend => '控制状态存储的 Terraform 配置。';

  @override
  String get gameHintWord289Plan => 'Terraform 对拟议基础设施变更的预览。';

  @override
  String get gameHintWord290Apply => '执行拟议变更的 Terraform 操作。';

  @override
  String get gameHintWord291Destroy => '移除受管基础设施的 Terraform 操作。';

  @override
  String get gameHintWord292Import => '将现有资源纳入基础设施管理。';

  @override
  String get gameHintWord293Refresh => '将记录的状态与实际基础设施同步。';

  @override
  String get gameHintWord294Validate => '检查配置的语法和内部一致性。';

  @override
  String get gameHintWord295Fmt => '应用规范配置格式的 Terraform 命令。';

  @override
  String get gameHintWord296Init => '初始化 Terraform 提供程序和工作目录。';

  @override
  String get gameHintWord297Executor => '可运行构建的 Jenkins 工作槽位。';

  @override
  String get gameHintWord298Dependencies => '要求某组件先于另一组件的依赖关系。';

  @override
  String get gameHintWord299Drift => '声明的基础设施状态与实际状态之间的差异。';

  @override
  String get gameHintWord300Locking => '防止多个写入者同时修改共享状态。';

  @override
  String get gameHintWord301Playbook => '描述自动化 play 和任务的 Ansible 文档。';

  @override
  String get gameHintWord302Inventory => 'Ansible 中受管主机和主机组的集合。';

  @override
  String get gameHintWord303Facts => '收集到的有关受管主机的系统信息。';

  @override
  String get gameHintWord304Task => '自动化中的单个工作单元。';

  @override
  String get gameHintWord305Handler => '在收到变更通知时执行的 Ansible 任务。';

  @override
  String get gameHintWord306Notify => '在任务发生变更后将处理程序加入队列的 Ansible 指令。';

  @override
  String get gameHintWord307Become => '启用权限提升的 Ansible 设置。';

  @override
  String get gameHintWord308Vault => '用于加密敏感自动化数据的 Ansible 功能。';

  @override
  String get gameHintWord309Register => '将任务结果保存到变量的 Ansible 指令。';

  @override
  String get gameHintWord310When => '控制任务条件执行的 Ansible 关键字。';

  @override
  String get gameHintWord311Loop => '对集合重复执行自动化任务。';

  @override
  String get gameHintWord312Include => '动态加载可复用的自动化内容。';

  @override
  String get gameHintWord313Tags => '用于选择自动化任务子集的标签。';

  @override
  String get gameHintWord314Template => '在部署前用变量渲染的文件。';

  @override
  String get gameHintWord315Jinja => 'Ansible 使用的模板语言。';

  @override
  String get gameHintWord316Abstraction => '将实现细节隐藏在更简单的接口之后。';

  @override
  String get gameHintWord317Agile => '强调反馈的迭代式软件交付方法。';

  @override
  String get gameHintWord318Puppet => '使用声明式清单的配置管理工具。';

  @override
  String get gameHintWord319Airflow => '用于调度和编排工作流 DAG 的平台。';

  @override
  String get gameHintWord320Argo => '云原生项目系列，包含一个 GitOps 交付控制器。';

  @override
  String get gameHintWord321Rds => 'AWS 托管关系型数据库服务的缩写。';

  @override
  String get gameHintWord322Sqs => 'AWS 托管消息队列的缩写。';

  @override
  String get gameHintWord323Sns => 'AWS 发布-订阅通知服务的缩写。';

  @override
  String get gameHintWord324Ses => 'AWS 邮件发送服务的缩写。';

  @override
  String get gameHintWord325Iam => '云身份与访问管理的缩写。';

  @override
  String get gameHintWord326Kms => 'AWS 加密密钥管理服务的缩写。';

  @override
  String get gameHintWord327Waf => '过滤应用层 Web 请求的防火墙。';

  @override
  String get gameHintWord328Eks => 'AWS 托管 Kubernetes 服务的缩写。';

  @override
  String get gameHintWord329Ecs => 'AWS 托管容器编排服务的缩写。';

  @override
  String get gameHintWord330Ecr => 'AWS 容器镜像仓库的缩写。';

  @override
  String get gameHintWord331Aurora => '兼容 MySQL 和 PostgreSQL 的 AWS 关系型数据库。';

  @override
  String get gameHintWord332Redshift => 'AWS 分析型数据仓库。';

  @override
  String get gameHintWord333Neptune => 'AWS 托管图数据库。';

  @override
  String get gameHintWord334Elasticache => 'AWS 托管内存缓存服务。';

  @override
  String get gameHintWord335Athena => '使用 SQL 查询对象存储数据的 AWS 服务。';

  @override
  String get gameHintWord336Glue => 'AWS 无服务器数据集成和 ETL 服务。';

  @override
  String get gameHintWord337Emr => '用于托管大数据处理集群的 AWS 平台。';

  @override
  String get gameHintWord338Lambda => '无需管理服务器即可执行函数的 AWS 服务。';

  @override
  String get gameHintWord339Cloudfront => 'AWS 全球内容分发网络。';

  @override
  String get gameHintWord340Cloudwatch => '收集指标、日志和告警的 AWS 服务。';

  @override
  String get gameHintWord341Cloudshell => 'AWS 基于浏览器的 shell 环境。';

  @override
  String get gameHintWord342Codecommit => 'AWS 托管的 Git 仓库服务。';

  @override
  String get gameHintWord343Codebuild => '编译源代码并运行构建测试的 AWS 服务。';

  @override
  String get gameHintWord344Codedeploy => 'AWS 自动化应用部署服务。';

  @override
  String get gameHintWord345Codepipeline => 'AWS 持续交付流水线服务。';

  @override
  String get gameHintWord346Guardduty => 'AWS 智能威胁检测服务。';

  @override
  String get gameHintWord347Inspector => '评估工作负载漏洞的 AWS 服务。';

  @override
  String get gameHintWord348Macie => '在对象存储中发现敏感数据的 AWS 服务。';

  @override
  String get gameHintWord349Shield => 'AWS 托管的 DDoS 防护服务。';

  @override
  String get gameHintWord350Snowball => '用于大规模数据传输的 AWS 物理设备。';

  @override
  String get gameHintWord351Snowcone => 'AWS 离线传输系列中的小型坚固设备。';

  @override
  String get gameHintWord352Datasync => 'AWS 自动化在线数据传输服务。';

  @override
  String get gameHintWord353Msk => 'AWS 托管 Apache Kafka 服务的缩写。';

  @override
  String get gameHintWord354Backup => '为恢复而保留的数据副本。';

  @override
  String get gameHintWord355Transcribe => '将语音转换为文本的 AWS 服务。';

  @override
  String get gameHintWord356Translate => '在语言之间翻译文本的 AWS 服务。';

  @override
  String get gameHintWord357Rekognition => '分析图像和视频的 AWS 服务。';

  @override
  String get gameHintWord358Comprehend => 'AWS 自然语言分析服务。';

  @override
  String get gameHintWord359Textract => '从文档中提取文本和表格的 AWS 服务。';

  @override
  String get gameHintWord360Sagemaker => '用于构建和部署机器学习模型的 AWS 平台。';

  @override
  String get gameHintWord361Spanner => 'Google Cloud 全球分布式关系型数据库。';

  @override
  String get gameHintWord362Pub => '发布-订阅消息模式中的发布方。';

  @override
  String get gameHintWord363Sub => '发布-订阅消息模式中的订阅方。';

  @override
  String get gameHintWord364Functions => '无服务器平台提供的事件驱动代码单元。';

  @override
  String get gameHintWord365App => '软件应用程序的简称。';

  @override
  String get gameHintWord366Engine => 'Compute Engine 等名称中的执行组件。';

  @override
  String get gameHintWord367Compute => '由虚拟机或容器提供的处理能力。';

  @override
  String get gameHintWord368Network => '相互连接并交换数据的系统。';

  @override
  String get gameHintWord369Security => '保护系统和信息免受威胁。';

  @override
  String get gameHintWord370Identity => '用于访问决策的用户或服务的表示。';

  @override
  String get gameHintWord371Monitoring => '持续观察系统的健康状况和行为。';

  @override
  String get gameHintWord372Logging => '记录离散的应用程序和系统事件。';

  @override
  String get gameHintWord373Trace => '跨服务调用的请求路径记录。';

  @override
  String get gameHintWord374Metrics => '系统行为随时间变化的数值度量。';

  @override
  String get gameHintWord375Alert => '提示被监控的情况需要关注的通知。';

  @override
  String get gameHintWord376Billing => '对所消耗的云服务进行跟踪和计费。';

  @override
  String get gameHintWord377Quota => '对可消耗资源数量的限制。';

  @override
  String get gameHintWord378Region => '包含可用区的云部署地理区域。';

  @override
  String get gameHintWord379Tenancy => '描述客户如何共享基础设施的安排。';

  @override
  String get gameHintWord380Regional => '描述作用域限定在某个云区域的资源。';

  @override
  String get gameHintWord381Cosmos => 'Azure 全球分布式多模型数据库的名称。';

  @override
  String get gameHintWord382Synapse => '结合数据仓库与数据处理的 Azure 分析平台。';

  @override
  String get gameHintWord383Sentinel => 'Microsoft 云原生安全信息与事件平台。';

  @override
  String get gameHintWord384Defender => '保护云工作负载的 Microsoft 安全产品系列。';

  @override
  String get gameHintWord385Entra => '取代 Azure AD 品牌的 Microsoft 身份产品系列。';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager 的缩写。';

  @override
  String get gameHintWord387Arc => '将管理能力扩展到 Azure 之外资源的 Azure 服务。';

  @override
  String get gameHintWord388Aks => 'Azure 托管 Kubernetes 服务的缩写。';

  @override
  String get gameHintWord389Armor => 'Google Cloud Web 防护服务名称的后缀。';

  @override
  String get gameHintWord390Blob => 'Azure 对象存储数据类型。';

  @override
  String get gameHintWord391Files => '提供托管网络文件共享的 Azure 服务。';

  @override
  String get gameHintWord392Disk => '挂接到虚拟机的块存储设备。';

  @override
  String get gameHintWord393Function => '可调用并可返回结果的代码块。';

  @override
  String get gameHintWord394Logic => '用于工作流集成的 Azure 应用服务类别。';

  @override
  String get gameHintWord395Insights => 'Azure 应用遥测产品名称的后缀。';

  @override
  String get gameHintWord396Traffic => '在网络端点之间流动的数据。';

  @override
  String get gameHintWord397Manager => 'Azure Resource 产品名称中表示其控制平面的后缀。';

  @override
  String get gameHintWord398Bastion => '用于访问私有主机的托管或加固入口。';

  @override
  String get gameHintWord399Front => 'Azure 全球入口服务 Front Door 的第一个词。';

  @override
  String get gameHintWord400Door => 'Azure 全球入口服务 Front Door 的第二个词。';

  @override
  String get gameHintWord401Javascript => '广泛用于浏览器和 Node 运行时的编程语言。';

  @override
  String get gameHintWord402Perl => '以文本处理和正则表达式著称的脚本语言。';

  @override
  String get gameHintWord403Powershell => 'Microsoft 推出的面向对象的 shell 和自动化语言。';

  @override
  String get gameHintWord404Java => '用于实现 Jenkins 的 JVM 语言。';

  @override
  String get gameHintWord405Json => '包含对象和数组的轻量级数据格式。';

  @override
  String get gameHintWord406Xml => '使用嵌套命名标签的标记格式。';

  @override
  String get gameHintWord407Html => '用于构建网页结构的标记语言。';

  @override
  String get gameHintWord408Css => '控制网页呈现的样式表语言。';

  @override
  String get gameHintWord409String => '文本字符序列。';

  @override
  String get gameHintWord410Array => '带索引的元素集合。';

  @override
  String get gameHintWord411Hash => 'Ruby 和 Perl 中的关联键值集合。';

  @override
  String get gameHintWord412Object => '具有属性和行为的运行时值。';

  @override
  String get gameHintWord413Class => '在基于类的语言中用于构造对象的定义。';

  @override
  String get gameHintWord414Method => '与对象或类关联的函数。';

  @override
  String get gameHintWord415Interface => '描述组件所公开操作的契约。';

  @override
  String get gameHintWord416Subclass => '派生自另一个类的类。';

  @override
  String get gameHintWord417Super => '用于调用父类行为的关键字。';

  @override
  String get gameHintWord418Protected => '将访问限制在与类相关上下文中的可见性级别。';

  @override
  String get gameHintWord419Exception => '打断正常控制流的运行时情况。';

  @override
  String get gameHintWord420Regex => '用于匹配文本的模式记法。';

  @override
  String get gameHintWord421Lexical => '描述由源代码结构决定的作用域。';

  @override
  String get gameHintWord422Scalar => 'Perl 中的单值变量类别。';

  @override
  String get gameHintWord423Tuple => 'Python 中不可变的有序集合。';

  @override
  String get gameHintWord424List => 'Python 中可变的有序集合。';

  @override
  String get gameHintWord425Dict => 'Python 内置映射类型的名称。';

  @override
  String get gameHintWord426Dictionary => '将键映射到对应值的集合。';

  @override
  String get gameHintWord427Set => '由互不相同的值组成的集合。';

  @override
  String get gameHintWord428Boolean => '表示真或假的数据类型。';

  @override
  String get gameHintWord429Integer => '表示整数的数值类型。';

  @override
  String get gameHintWord430Float => '表示浮点值的数值类型。';

  @override
  String get gameHintWord431Double => '双精度浮点类型。';

  @override
  String get gameHintWord432Null => '表示没有对象或结果的值。';

  @override
  String get gameHintWord433Undefined => 'JavaScript 中表示缺少已赋值的值。';

  @override
  String get gameHintWord434Promise => '表示最终异步结果的 JavaScript 对象。';

  @override
  String get gameHintWord435Async => '标记异步函数的关键字。';

  @override
  String get gameHintWord436Await => '等待异步结果的关键字。';

  @override
  String get gameHintWord437Callback => '传入后由另一个操作调用的函数。';

  @override
  String get gameHintWord438Closure => '保留对其外围词法作用域访问权的函数。';

  @override
  String get gameHintWord439Generator => '通过产出的值惰性生成序列的函数。';

  @override
  String get gameHintWord440Iterator => '逐个遍历集合中各值的对象。';

  @override
  String get gameHintWord441Print => '将值写入输出的常用函数。';

  @override
  String get gameHintWord442Input => '从标准输入读取一行的 Python 函数。';

  @override
  String get gameHintWord443Open => '用于获取文件句柄的函数。';

  @override
  String get gameHintWord444Close => '释放已打开文件或连接的操作。';

  @override
  String get gameHintWord445Read => '从流或文件获取数据的操作。';

  @override
  String get gameHintWord446Write => '向流或文件发送数据的操作。';

  @override
  String get gameHintWord447Append => '将项添加到集合末尾。';

  @override
  String get gameHintWord448Split => '使用分隔符将文本拆分为子字符串。';

  @override
  String get gameHintWord449Join => '使用分隔符合并一系列字符串。';

  @override
  String get gameHintWord450Strip => '移除 Python 字符串两端的空白字符。';

  @override
  String get gameHintWord451Chomp => '在 Perl 或 Ruby 中移除末尾的记录分隔符。';

  @override
  String get gameHintWord452Map => '对集合中的每一项应用转换。';

  @override
  String get gameHintWord453Filter => '保留满足谓词条件的集合项。';

  @override
  String get gameHintWord454Reduce => '将集合归并为一个累积结果。';

  @override
  String get gameHintWord455Range => '表示整数等差序列的 Python 类型。';

  @override
  String get gameHintWord456Length => '返回集合大小的属性或方法。';

  @override
  String get gameHintWord457Len => '返回集合大小的 Python 内置函数。';

  @override
  String get gameHintWord458Type => '返回对象类型的 Python 函数。';

  @override
  String get gameHintWord459Isinstance => '检查是否属于某类型层次结构的 Python 函数。';

  @override
  String get gameHintWord460Yield => '从生成器产出值的关键字。';

  @override
  String get gameHintWord461Saas => '交付完整软件应用程序的云模型。';

  @override
  String get gameHintWord462Paas => '提供托管应用开发平台的云模型。';

  @override
  String get gameHintWord463Iaas => '提供虚拟计算、存储和网络的云模型。';

  @override
  String get gameHintWord464Hybrid => '结合私有和公共基础设施的云方式。';

  @override
  String get gameHintWord465Archive => '对不常访问的数据进行长期存储。';

  @override
  String get gameHintWord466Public => '向多个客户提供服务的云所有权模型。';

  @override
  String get gameHintWord467Private => '专供单一组织使用的云模型。';

  @override
  String get gameHintWord468Scalability => '通过增加资源来应对不断增长负载的能力。';

  @override
  String get gameHintWord469Availability => '服务在需要时保持可访问的程度。';

  @override
  String get gameHintWord470Resilience => '承受故障并从中恢复的能力。';

  @override
  String get gameHintWord471Redundancy => '通过冗余组件减少单点故障。';

  @override
  String get gameHintWord472Disaster => '需要通过恢复策略应对的重大中断。';

  @override
  String get gameHintWord473Recovery => '在故障后恢复服务或数据。';

  @override
  String get gameHintWord474Replicate => '将数据或工作负载复制到另一位置。';

  @override
  String get gameHintWord475Snapshotting => '对数据或系统状态创建时间点副本。';

  @override
  String get gameHintWord476Restore => '从已保存副本中恢复数据的操作。';

  @override
  String get gameHintWord477Residency => '规定所存储数据地理位置的要求。';

  @override
  String get gameHintWord478Compliance => '满足所要求的法规和组织控制措施。';

  @override
  String get gameHintWord479Governance => '控制技术使用的政策和流程。';

  @override
  String get gameHintWord480Audit => '对已记录的活动和合规证据进行审查。';

  @override
  String get gameHintWord481Token => '代表授权或身份的凭据或符号。';

  @override
  String get gameHintWord482Oauth => '允许委托访问的授权框架。';

  @override
  String get gameHintWord483Saml => '常用于企业单点登录的基于 XML 的标准。';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell 管道中使用的专用命令。';

  @override
  String get gameHintWord485Algorithm => '解决计算问题的一系列明确步骤。';

  @override
  String get gameHintWord486Key => '用于控制加密或标识存储数据的值。';

  @override
  String get gameHintWord487Alias => 'shell 命令或资源的替代名称。';

  @override
  String get gameHintWord488Amend => '替换最近一次提交的 Git 提交选项。';

  @override
  String get gameHintWord489Allsigned => '要求脚本已签名的 PowerShell 执行策略。';

  @override
  String get gameHintWord490Remotesigned => '要求下载的脚本带有签名的 PowerShell 策略。';

  @override
  String get gameHintWord491Acl => '定义用户或系统权限的列表。';

  @override
  String get gameHintWord492Uid => '分配给 Unix 用户的数字标识符。';

  @override
  String get gameHintWord493Setgid => '在执行或继承时影响组身份的权限位。';

  @override
  String get gameHintWord494Setfacl => '设置文件访问控制列表的 Linux 命令。';

  @override
  String get gameHintWord495Isolation => '防止工作负载相互干扰的隔离。';

  @override
  String get gameHintWord496Sighup => '常用于请求重新加载配置的 Unix 挂起信号。';

  @override
  String get gameHintWord497Sigint => '通常由 Control-C 产生的 Unix 中断信号。';

  @override
  String get gameHintWord498Sigstop => '暂停进程而不终止它的 Unix 信号。';

  @override
  String get gameHintWord499Secrets => '密码和访问密钥等敏感值。';

  @override
  String get gameHintWord500Secure => '描述受到保护、可防止未授权访问的连接。';

  @override
  String get fontSettingsTitle => '字体';

  @override
  String get fontChangeFont => '更改字体';

  @override
  String get fontSystemDefault => '系统默认';

  @override
  String get fontPreview => '预览';

  @override
  String get fontPreviewSample => '一题一题学 DevOps';

  @override
  String get fontSelected => '已选择';

  @override
  String get fontLatinOnlyNote => '自定义字体适用于拉丁字母，其他文字仍使用设备字体。';

  @override
  String get fontDescSystem => '设备内置字体';

  @override
  String get fontDescGeometric => '几何无衬线体';

  @override
  String get fontDescGeometricRounded => '几何圆润无衬线体';

  @override
  String get fontDescFriendly => '亲和无衬线体';

  @override
  String get fontDescCondensed => '窄体';

  @override
  String get fontDescRounded => '圆润无衬线体';

  @override
  String get fontDescRoundedDisplay => '圆润展示体';

  @override
  String gameScene3dScene(String value1) {
    return '3D 场景 $value1';
  }
}
