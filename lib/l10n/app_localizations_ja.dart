// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get certificates => '修了証';

  @override
  String get whatsNew => '新機能';

  @override
  String get settings => '設定';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get language => '言語';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get english => '英語';

  @override
  String get hindi => 'ヒンディー語';

  @override
  String get marathi => 'マラーティー語';

  @override
  String get startQuiz => 'クイズを始める';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'カテゴリを変更';

  @override
  String get dailyQuiz => 'デイリークイズ';

  @override
  String get dailyQuizCompleted => 'デイリークイズ完了';

  @override
  String get dailyQuizCompletedMessage =>
      '今日のデイリークイズはすでに完了しています。\n\n明日また新しい挑戦をお待ちしています！';

  @override
  String get leaderboard => 'ランキング';

  @override
  String get shareApp => 'アプリを共有';

  @override
  String get rateApp => 'アプリを評価';

  @override
  String get about => 'このアプリについて';

  @override
  String get ok => 'OK';

  @override
  String get home => 'ホーム';

  @override
  String get games => 'ゲーム';

  @override
  String get referAndEarn => '友達紹介で獲得';

  @override
  String get themes => 'テーマ';

  @override
  String get version => 'バージョン';

  @override
  String get developer => '開発者';

  @override
  String get contact => '連絡先';

  @override
  String get learning => '学習';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'つながりましょう';

  @override
  String get aboutDescription =>
      'DevOps Quiz は、Linux、Docker、Kubernetes、ネットワーク、Git、Jenkins、Terraform、Ansible などの DevOps 技術に関する厳選された数千の問題で、面接や資格試験の準備をサポートします。';

  @override
  String get quizResult => 'クイズ結果';

  @override
  String get outstanding => '素晴らしい！';

  @override
  String get greatJob => 'よくできました！';

  @override
  String get goodEffort => 'いい調子です！';

  @override
  String get keepPracticing => '練習を続けましょう！';

  @override
  String get dontGiveUp => 'あきらめないで！';

  @override
  String get shareMessage1 => 'I scored';

  @override
  String get shareMessage2 => 'in the DevOps Quiz!';

  @override
  String get downloadApp => 'Download the app:';

  @override
  String get score => 'スコア';

  @override
  String get points => 'ポイント';

  @override
  String get percentage => '正答率';

  @override
  String get bonus => 'ボーナス';

  @override
  String get perfectScoreBonus => '満点ボーナス';

  @override
  String get shareScore => 'スコアを共有';

  @override
  String get restartQuiz => 'クイズをやり直す';

  @override
  String get backToCategories => 'カテゴリに戻る';

  @override
  String get greatProgress => 'すばらしい！順調に上達しています。';

  @override
  String get practiceMore => 'よくできました！もう少し練習すればさらに高得点が狙えます。';

  @override
  String get keepLearning => '学び続けてもう一度挑戦しましょう。練習すれば上達します。';

  @override
  String get everyExpertStarted => '専門家も最初は初心者でした。練習してもっと強くなって戻ってきましょう！';

  @override
  String get quizInstructions => 'クイズの説明';

  @override
  String get instruction1 => '各セットには25問あります。';

  @override
  String get instruction2 => '1問あたり15秒です。';

  @override
  String get instruction3 => '緑 = 正解。';

  @override
  String get instruction4 => '赤 = 不正解。';

  @override
  String get instruction5 => '回答は変更できません。';

  @override
  String get instruction6 => '戻るボタンは見直し専用です。';

  @override
  String get instruction7 => 'スコアは終了後に表示されます。';

  @override
  String excellentPerformance(Object expert) {
    return '素晴らしい成績です！あなたは$expertです。';
  }

  @override
  String get selectCategory => 'カテゴリを選択';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'セットを選択';

  @override
  String get set => 'セット';

  @override
  String get questions => '問';

  @override
  String get noScoresYet => 'スコアはまだありません';

  @override
  String get pointsShort => 'pt';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz へようこそ';

  @override
  String get challengeMode => 'チャレンジモード';

  @override
  String get challenge => 'チャレンジ';

  @override
  String get question => '問題';

  @override
  String get reward => '報酬';

  @override
  String get survivalMode => 'サバイバルモード';

  @override
  String get speedChallenge => 'スピードチャレンジ';

  @override
  String get dailyChallenge => 'デイリーチャレンジ';

  @override
  String get ultimateChallenge => 'アルティメットチャレンジ';

  @override
  String get timeLeft => '残り時間';

  @override
  String get completed => '完了';

  @override
  String get locked => 'ロック中';

  @override
  String get back => '戻る';

  @override
  String get next => '次へ';

  @override
  String get submit => '送信';

  @override
  String get achievements => '実績';

  @override
  String get streak => '連続日数';

  @override
  String get days => '日';

  @override
  String get tomorrowsReward => '明日の報酬';

  @override
  String shareMessage(
    Object score,
    Object totalQuestions,
    Object earnedPoints,
    Object bonusPoints,
    Object percentage,
  ) {
    return '🎯 今日の #DevOps クイズで $score/$totalQuestions でした！\n\n🏆 ポイント: $earnedPoints\n🔥 ボーナス: $bonusPoints\n📊 正答率: $percentage%\n\n私のスコアを超えられますか？\n\nアプリをダウンロード:';
  }
}
