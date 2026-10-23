// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

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
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

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
  String get instruction2 => '每道题限时 15 秒。';

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
}
