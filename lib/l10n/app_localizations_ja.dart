// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTour => 'アプリツアー';

  @override
  String get skipTour => 'ツアーをスキップ';

  @override
  String get finishTour => 'ツアーを終了';

  @override
  String tourStep(int current, int total) {
    return 'ステップ $current / $total';
  }

  @override
  String get tourMenuTitle => 'ナビゲーションメニュー';

  @override
  String get tourSearch => 'ここにトピックを入力して、関連するクイズのカテゴリを検索します。';

  @override
  String get tourCategory => 'DevOpsをタップすると混合クイズが始まります。他のカテゴリには問題セットがあります。問題を保存して後で復習できます。';

  @override
  String get tourMenu => 'このボタンをタップするとナビゲーションメニューが開きます。';

  @override
  String get tourLearning => '学習を開くとカードが表示されます。上下左右にスワイプしたり、シャッフル、自動切替、カードの保存ができます。';

  @override
  String get tourGames => 'ゲームでポイントを獲得しましょう。レベル制のゲームはクリアごとに100ポイント、ヒントは20ポイントです。';

  @override
  String get tourAchievements => 'ここで実績を確認できます。新しい実績や利用可能なテーマはポップアップで通知されます。';

  @override
  String get tourSettings => '言語、テーマ、サウンドを選びます。保存したデータでブックマークを確認し、アプリツアーでこのガイドを再表示できます。';

  @override
  String get achievementUnlocked => '実績を解除しました！';

  @override
  String get themeUnlocked => '新しいテーマが利用可能です！';

  @override
  String get themeUnlockedMessage => '「設定 > テーマ」でこのテーマを選択できるようになりました。';

  @override
  String get gameSounds => 'ゲームの効果音';

  @override
  String get gameSoundsDescription => 'ゲームやクイズの効果音です。端末の音量とサイレントモードを確認してください。';

  @override
  String get testSound => '音をテスト';

  @override
  String get soundSettingBusy => 'お待ちください...';

  @override
  String get soundSettingError => 'サウンド設定を読み込むか保存することができませんでした。もう一度お試しください。';

  @override
  String get soundPlaybackError => '音を再生できませんでした。端末やブラウザの音声設定を確認してください。';

  @override
  String get saveData => '保存したデータ';

  @override
  String get learningTranslationUnavailable => 'このカードは選択した言語にまだ翻訳されていません。';

  @override
  String get saveQuestion => '問題を保存';

  @override
  String defaultPortQuestion(String service) {
    return '$serviceのデフォルトのポートは何ですか？';
  }

  @override
  String get removeSavedItem => '保存済みから削除';

  @override
  String get noSavedData => 'まだ保存されていません。学習カードやクイズの問題をブックマークしてください。';

  @override
  String get savedDataError => '保存したデータを読み込むか更新することができませんでした。もう一度お試しください。';

  @override
  String get savedItemUnavailable => 'この保存項目は利用できなくなりました。';

  @override
  String get correctAnswer => '正解';

  @override
  String get retry => '再試行';

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
  String get dailyQuizCompletedMessage => '今日のデイリークイズはすでに完了しています。\n\n明日また新しい挑戦をお待ちしています！';

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
  String get aboutDescription => 'DevOps Quiz は、Linux、Docker、Kubernetes、ネットワーク、Git、Jenkins、Terraform、Ansible などの DevOps 技術に関する厳選された数千の問題で、面接や資格試験の準備をサポートします。';

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
  String get shareMessage1 => '獲得スコアは';

  @override
  String get shareMessage2 => 'でした（DevOpsクイズ）！';

  @override
  String get downloadApp => 'アプリをダウンロード：';

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
  String get instruction2 => '1問あたり30秒です。';

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
  String get instruction8 => '正解1問につき10ポイント獲得。';

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
  String hiUser(String name) {
    return 'こんにちは、$nameさん';
  }

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
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 今日の #DevOps クイズで $score/$totalQuestions でした！\n\n🏆 ポイント: $earnedPoints\n🔥 ボーナス: $bonusPoints\n📊 正答率: $percentage%\n\n私のスコアを超えられますか？\n\nアプリをダウンロード:';
  }

  @override
  String get gameUiSpinWheel => 'ルーレットを回す';

  @override
  String get gameUiSpinAndWinBonusPoints => '回してボーナスポイントをゲット';

  @override
  String get gameUiScratchCard => 'スクラッチカード';

  @override
  String get gameUiScratchToRevealAReward => '削って報酬を見つけよう';

  @override
  String get gameUiLuckySlots => 'ラッキースロット';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'スロットを回してポイントをゲット';

  @override
  String get gameUiMysteryDeal => 'ミステリーディール';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'ミステリーボックスを選んで答えよう';

  @override
  String get gameUiMemoryMatch => '神経衰弱';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOpsのペアを合わせよう';

  @override
  String get gameUiWordGuess => 'ワードゲス';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'レベルを進みながらDevOpsの単語を当てよう';

  @override
  String get gameUiFindWords => 'ワード探し';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'グリッドから隠れたDevOps用語を探そう';

  @override
  String get gameUiSpotTheDifference => '間違い探し';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => '2つのイラストの間にある5つの違いを見つけよう';

  @override
  String get gameUiJigsawPuzzle => 'ジグソーパズル';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => '共有されたHDの動物や自然の写真を組み立てよう';

  @override
  String get gameUiHighOrLow => 'ハイ＆ロー';

  @override
  String get gameUiBuildAStreak => '連勝を重ねよう';

  @override
  String get gameUiTrueOrFalseBlitz => '○×ブリッツ';

  @override
  String get gameUiQuickAnswerQuiz => '早押しクイズ';

  @override
  String get gameUiCommandMatch => 'コマンドマッチ';

  @override
  String get gameUiMatchCommandsToMeanings => 'コマンドと意味を合わせよう';

  @override
  String get gameUiPortMaster => 'ポートマスター';

  @override
  String get gameUiGuessDefaultPorts => 'デフォルトポートを当てよう';

  @override
  String get gameUiTicTacToe => '三目並べ';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X 三目並べ コンピューター対戦';

  @override
  String get gameUiConnectFour => 'コネクトフォー';

  @override
  String get gameUiDropFourDiscs => '4枚のディスクを落とそう';

  @override
  String get gameUiLudo => 'ルードー';

  @override
  String get gameUiRaceAgainstBots => 'ボットとレース';

  @override
  String get gameUiChess => 'チェス';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'チェス盤 合法手 2人プレイ';

  @override
  String get gameUiSnakeAndLadders => '蛇とはしご';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'サイコロ盤 蛇とはしご 2人プレイ';

  @override
  String get gameUiGames => 'ゲーム 🎮';

  @override
  String get gameUiPlayEarn => '遊んで稼ごう';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'ゲームをしてボーナスポイントを獲得しよう！';

  @override
  String get gameUiSearchGames => 'ゲームを検索';

  @override
  String get gameUiClearSearch => '検索をクリア';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '「$value1」に一致するゲームはありません';
  }

  @override
  String get gameUiSpinWinBonusPoints => '回してボーナスポイントをゲット。';

  @override
  String get gameUiScratchToRevealYourReward => '削って報酬を見つけよう。';

  @override
  String get gameUiRollTheSlotsWinPoints => 'スロットを回してポイントをゲット。';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'ミステリーボックスを選んで正解すると、ポイントを獲得できます。';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'DevOpsのペアを合わせてポイントを獲得しよう。';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => '6回以内にDevOps用語を当てよう。';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'グリッドから隠れたDevOps用語を探そう。';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'スワイプして500レベルでDevOpsの単語を見つけよう。';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => '2つのイラストの間にある5つの違いを見つけよう。';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => '共有されたHDの動物や自然の写真を組み立てよう。';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => '連勝を重ねてポイントを確保しよう。';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => '素早く答えて制限時間に勝とう。';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => '○×ブリッツ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'コマンドとその働きを合わせよう。';

  @override
  String get gameUiCommandMatch670a76e => 'コマンドマッチ 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'ライフ3つでデフォルトポートを当てよう。';

  @override
  String get gameUiPortMaster8f5fd42 => 'ポートマスター 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'コンピューターと O/X で対戦しよう。';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'ディスクを4枚並べて勝とう。';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => '3体のボットと駒でレースしよう。';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => '合法手に対応したローカル2人用チェス。';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'ルールに則った2人用チェスで対戦しよう。';

  @override
  String get gameUiTwoPlayerDiceBoardGame => '2人用サイコロボードゲーム。';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100を目指してレース。はしごを登り、蛇を避けよう。';

  @override
  String get gameUiPlay => 'プレイ';

  @override
  String get gameUiWheelStopped => 'ルーレットが止まりました！';

  @override
  String get gameUiYourRewardIs => 'あなたの報酬は';

  @override
  String get gameUiPOINTS => 'ポイント';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'クイズ1問に正解すると、この報酬を受け取れます。';

  @override
  String get gameUiWrongAnswerRewardLost => '不正解 = 報酬は失われます。';

  @override
  String get gameUiAnswerQuestion => '問題に答える';

  @override
  String get gameUiSpinWheele449982 => '🎡 ルーレットを回す';

  @override
  String get gameUiDailySpin => 'デイリールーレット';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'ルーレットを回して、問題に答えると報酬を受け取れます！';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => '今日のルーレットはすでに使用済みです。';

  @override
  String get gameUiSpinning => '回転中...';

  @override
  String get gameUiSPINNOW => '今すぐ回す';

  @override
  String get gameUiCOMEBACKTOMORROW => 'また明日来てね';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return '今日の報酬：⭐ $value1ポイント';
  }

  @override
  String get gameUiBackToGames => 'ゲームに戻る';

  @override
  String get gameUiSPIN => '回す';

  @override
  String get gameUiRewardRevealed => '報酬が明らかになりました！';

  @override
  String get gameUiYouFound => '見つけたのは';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ スクラッチカード';

  @override
  String get gameUiDailyScratch => 'デイリースクラッチ';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'カードを削って今日の報酬を見つけよう！';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => '今日のスクラッチカードはすでに使用済みです。';

  @override
  String get gameUiAlreadyScratched => '削り済み';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => '明日また来て、別の報酬を獲得しましょう。';

  @override
  String get gameUiYouRevealed => '明らかになったのは';

  @override
  String get gameUiSCRATCHHERE => 'ここを削る 👆';

  @override
  String get gameUiJACKPOT777 => 'ジャックポット 777！';

  @override
  String get gameUiLucky777 => 'ラッキー777！';

  @override
  String get gameUiYourReward => 'あなたの報酬';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ラッキースロット';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'スロットを回して、問題に答えると報酬を受け取れます！';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => '今日はすでにプレイ済みです。';

  @override
  String get gameUiSPINNING => '回転中...';

  @override
  String get gameUiROLLNOW => '今すぐ回す';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 ジャックポット!777ポイント獲得可能!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'ミステリーディールの状況を確認できません: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'ボックス $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 ポイント';
  }

  @override
  String get gameUiStartQuestion => '問題を開始';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 ミステリーディール';

  @override
  String get gameUiMysteryDealCompleted => 'ミステリーディール完了!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => '本日はすでにミステリーディールをプレイしました。';

  @override
  String get gameUiTodayYouWon => '本日の獲得';

  @override
  String get gameUiTodaySReward => '本日の報酬';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 ポイント';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 ポイント喪失';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'また明日、新しいミステリーボックスに挑戦してください!';

  @override
  String get gameUiChooseYourMysteryBox => 'ミステリーボックスを選んでください';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => '各ボックスには10〜1000ポイントの隠された報酬が入っています。';

  @override
  String get gameUiPickOnlyOneBox => '選べるボックスは1つだけです!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return '全$value1レベルクリア!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'レベル$value1クリア!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1手でクリアしました。\n$value2ポイント獲得!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1手でクリアしました。\nこのレベルはすでにクリア済みです。';
  }

  @override
  String get gameUiNextLevel => '次のレベル';

  @override
  String get gameUiDone => '完了';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'メモリーマッチ 🧠';

  @override
  String get gameUiAll100LevelsComplete => '全100レベルクリア!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'メモリーマッチの全レベルをクリアしました。お見事です!';

  @override
  String get gameUiChooseLevel => 'レベルを選択';

  @override
  String gameUiMoves(String value1) {
    return '手数: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'レベル $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1ペア';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'レベル$value1を記憶';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '一致するペアを$value1組見つけてください';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quizのロゴ';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => '第1章 · ビルドパイプラインを復旧せよ';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => '第2章 · クラウドプラットフォームをスケールせよ';

  @override
  String get gameUiChapter3ProtectProduction => '第3章 · 本番環境を守れ';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return '残りの$value1文字をすべて使って送信してください。';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => '全レベルクリア!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'レベル$value1クリア!';
  }

  @override
  String get gameUiTryAgain => 'もう一度挑戦';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return '答えは$value1でした。$value2ポイント獲得しました。';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return '答えは$value1でした。ヒント$value3回の後、$value2ポイント獲得しました。';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return '答えは$value1でした。ヒント$value3回の後、$value2ポイント獲得しました。';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return '答えは$value1でした。レベル$value2があなたを待っています。';
  }

  @override
  String get gameUiFinish => '終了';

  @override
  String get gameUiNextLevel254fd73 => '次のレベル';

  @override
  String get gameUiRetryLevel => 'レベルをやり直す';

  @override
  String get gameUiHowToPlay => '遊び方';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => '各レベルにはDevOpsの単語が1つあります。5文字未満の単語は無料の文字なしで始まり、それより長い単語は1文字がヒントとして表示された状態で始まります。文字ラックを使って答えを組み立て、Enterを押してください。ヒントを使うと別の1文字が表示され、残高から20ポイントが差し引かれます。レベルをクリアするたびに100ポイントを獲得できます。';

  @override
  String get gameUiGotIt => '了解';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return '全$value1レベルクリア!';
  }

  @override
  String get gameUiEasy => 'かんたん';

  @override
  String get gameUiMedium => 'ふつう';

  @override
  String get gameUiHard => 'むずかしい';

  @override
  String get gameUiHowToPlay13a6b22 => '遊び方';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'レベル $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return '報酬 $value1 pts · 使用したヒント $value2';
  }

  @override
  String get gameUiHint20Pts => 'ヒント · −20 pts';

  @override
  String get gameUiEnter => '決定';

  @override
  String get gameUiDelete => '削除';

  @override
  String get gameUiDragThroughAWord => 'ドラッグして単語をなぞってください';

  @override
  String get gameUiDragThroughEachWord => 'ドラッグして各単語をなぞってください';

  @override
  String get gameUiReleaseToSelect => '離して選択';

  @override
  String gameUiFound(String value1) {
    return '$value1を発見';
  }

  @override
  String get gameUiNoWordThere => 'そこに単語はありません';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1はすでに発見済みです';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1を探してください';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => '全レベルクリア!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'すべての単語を見つけて$value1ポイント獲得しました。';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'すべての単語を見つけました。このレベルはすでにクリア済みです。';

  @override
  String get gameUiAll500LevelsComplete => '全500レベルクリア!';

  @override
  String get gameUiReviewLevels => 'レベルを確認';

  @override
  String gameUiLeft(String value1) {
    return '残り$value1';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 ポイント';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => '進行状況を保存できませんでした。もう一度お試しください。';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return '$value1ポイント獲得!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'この絵はすでにクリア済みです。再プレイでは追加ポイントはありません。';

  @override
  String get gameUiYouCompletedEveryPicture => 'すべての絵をクリアしました!';

  @override
  String get gameUiLevels => 'レベル';

  @override
  String get gameUiPictureB => '絵B';

  @override
  String get gameUiPictureA => '絵A';

  @override
  String get gameUiPictureCouldNotLoadRetry => '絵を読み込めませんでした。再試行';

  @override
  String get gameUiResetZoom => 'ズームをリセット';

  @override
  String get gameUiZoomBothPictures => '両方の絵をズーム';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'ヒント · 1回あたり$value1ポイント';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => '進行状況を読み込めませんでした。再試行';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'レベル $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'すべての違いを発見しました!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$countの違いを見つけてください。どちらの絵でも、それぞれタップしてください。';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'ミス: $value1  ·  ヒント: $value2(−$value3 pts)  ·  $value4レベルクリア';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return '次のレベル: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'パズル$value1クリア!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1手で絵を完成させました。$value2ポイント獲得しました。';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return '$value1手で絵を完成させました。';
  }

  @override
  String get gameUiNextPuzzle => '次のパズル';

  @override
  String get gameUiAllPuzzlesComplete => '全パズルクリア';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'パズルピース $value1 / $value2、正しい位置に配置済み';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'パズルピース $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'パズルを選択';

  @override
  String get gameUiShufflePieces => 'ピースをシャッフル';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'パズルの画像を読み込めません。';

  @override
  String get gameUiPreviousPuzzle => '前のパズル';

  @override
  String gameUiPuzzle(String value1) {
    return 'パズル $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 手';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'ピースをドラッグして入れ替えるか、2つのピースをタップしてください。';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 パズル解決  ·  各 $value3 ポイント';
  }

  @override
  String get gameUiGameOver => 'ゲームオーバー';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return '数字は $value1 でした。\n連続記録: $value2\n$value3 ポイント獲得しました！\n\n明日また挑戦してください！';
  }

  @override
  String get gameUiHigherOrLower => 'ハイ＆ロー 📈';

  @override
  String get gameUiAlreadyPlayedToday => '今日はすでにプレイ済みです！';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return '$value1/$value2/$value3 にプレイしました。\n\n明日また来て新しい連続記録を作りましょう！';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => '今日はすでにプレイしました。\n\n明日また挑戦してください！';

  @override
  String gameUiStreak(String value1) {
    return '🔥 連続記録: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ ポイント: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => '次の数字は高い？低い？';

  @override
  String get gameUiLower => '低い';

  @override
  String get gameUiHigher => '高い';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => '○×ブリッツ ⚡';

  @override
  String get gameUiTimeSUp => '時間切れ！';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return '正解数: $value1\n最高連続記録: $value2\n$value3$value4 ポイント獲得しました！\n\n明日また次のラウンドに挑戦してください！';
  }

  @override
  String get gameUiStreakBonus20 => '連続ボーナス: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => '表示されている答えは正しいですか、間違いですか？';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 カテゴリにわたる $value1 問';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return '制限時間は $value1 秒です。正解するごとに $value2 ポイント獲得できます。不正解だと $value3 秒減ります。5連続正解で +20 のボーナスがもらえます。';
  }

  @override
  String get gameUiRoundTimer => 'ラウンドタイマー';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 秒';
  }

  @override
  String get gameUiStart => 'スタート';

  @override
  String get gameUiTrue => '正しい';

  @override
  String get gameUiFalse => '間違い';

  @override
  String get gameUiCommandMatch26b0e70 => 'コマンドマッチ 🔗';

  @override
  String get gameUiAllMatched => 'すべて一致しました！';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'ミス: $value1\n$value2 ポイント獲得しました！\n\n明日また新しいコマンドに挑戦してください！';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'ラウンド $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'コマンドをタップし、次にその意味をタップしてください。';

  @override
  String get gameUiNowTapTheMatchingMeaning => '次に、対応する意味をタップしてください。';

  @override
  String get gameUiPortMaster9c730cf => 'ポートマスター 🔌';

  @override
  String get gameUiPortMastera796b69 => 'ポートマスター！';

  @override
  String get gameUiOutOfLives => 'ライフがなくなりました';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return '正解数: $value1\n$value2 ポイント獲得しました！\n\n明日また次のラウンドに挑戦してください！';
  }

  @override
  String get gameUiYouEarned10Points => '10 ポイント獲得しました！';

  @override
  String get gameUiYouWin => 'あなたの勝ち！';

  @override
  String gameUiWins(String value1) {
    return '$value1 の勝ち！';
  }

  @override
  String get gameUiXWins => 'X の勝ち！';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) の勝ち！';
  }

  @override
  String get gameUiComputerWins => 'コンピューターの勝ち';

  @override
  String get gameUiOWins => 'O の勝ち！';

  @override
  String get gameUiPlayer2OWins => 'プレイヤー2 (O) の勝ち！';

  @override
  String get gameUiItSADraw => '引き分けです';

  @override
  String get gameUiYourTurn => 'あなたの番です';

  @override
  String gameUiSTurn(String value1) {
    return '$value1 の番です';
  }

  @override
  String get gameUiComputerIsThinking => 'コンピューターが考え中';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'プレイヤー $value1 の番です';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 の番です';
  }

  @override
  String get gameUiPlayer2ToMove => 'プレイヤー2の番です';

  @override
  String get gameUiNewRound => '新しいラウンド';

  @override
  String get gameUiVsComputer => '対コンピューター';

  @override
  String get gameUi2Players => '2人プレイ';

  @override
  String get gameUiYou => 'あなた';

  @override
  String get gameUiDraws => '引き分け';

  @override
  String get gameUiPlayer2 => 'プレイヤー2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'マス $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'もう一度プレイ';

  @override
  String get gameUiConnectFourWin20Points => 'コネクトフォー勝利: 20 ポイント！';

  @override
  String get gameUiBotWins => 'ボットの勝ち！';

  @override
  String get gameUiRed => '赤';

  @override
  String get gameUiYellow => '黄';

  @override
  String get gameUiBoardFullDraw => '盤面が埋まりました — 引き分け';

  @override
  String get gameUiBotIsThinking => 'ボットが考え中';

  @override
  String get gameUiBotTurn => 'ボットの番';

  @override
  String get gameUiNewGame => '新しいゲーム';

  @override
  String get gameUiVsBot => '対ボット';

  @override
  String get gameUi2Player => '2人プレイ';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'ボットと対戦 · 列をタップしてディスクを落とします';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => '2人プレイ · 列をタップしてディスクを落とします';

  @override
  String gameUiColumn(String value1) {
    return '列 $value1';
  }

  @override
  String get gameUiYouRed => 'あなた · 赤';

  @override
  String get gameUiRedPlayer1 => '赤 · プレイヤー1';

  @override
  String get gameUiBotYellow => 'ボット · 黄';

  @override
  String get gameUiYellowPlayer2 => '黄 · プレイヤー2';

  @override
  String get gameUiLudoMatchStats => 'ルードの対戦成績';

  @override
  String get gameUiNoCompletedMatchesYet => '完了した対戦はまだありません。';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'プレイ $value1  ·  勝ち $value2  ·  負け $value3';
  }

  @override
  String get gameUiClose => '閉じる';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'ルードチャンピオン！50 ポイント獲得しました。';

  @override
  String get gameUiNewLudoGame => '新しいルードゲーム';

  @override
  String get gameUiBotOpponents => 'ボットの対戦相手';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => '新しい対戦を始めると、保存されているゲームは置き換えられます。';

  @override
  String get gameUiCancel => 'キャンセル';

  @override
  String get gameUiStartGame => 'ゲーム開始';

  @override
  String get gameUiPlayerColours => 'プレイヤーの色';

  @override
  String get gameUiApply => '適用';

  @override
  String get gameUiMatchStats => '対戦成績';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 がチェックメイトで勝ち';
  }

  @override
  String get gameUiBlack => '黒';

  @override
  String get gameUiWhite => '白';

  @override
  String get gameUiComputerWinsByCheckmate => 'コンピューターがチェックメイトで勝ち';

  @override
  String get gameUiYouWinByCheckmate => 'チェックメイトであなたの勝ち';

  @override
  String get gameUiDrawByStalemate => 'ステイルメイトで引き分け';

  @override
  String get gameUiDraw => '引き分け';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · チェック';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'チェックメイト！50ポイント獲得しました。';

  @override
  String get gameUiStartANewGame => '新しいゲームを始めますか？';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'プレイヤーモードを変更すると、保存された対局は置き換えられます。';

  @override
  String get gameUiComputer => 'コンピューター';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · 白 / プレイヤー2 · 黒';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'あなたは白 · コンピューターは黒';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1（白） · コンピューター（黒）';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'あなたは黒 · コンピューターは白';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1（黒） · コンピューター（白）';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1が先にサイコロを振ります';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1がもう一度サイコロを振ります';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1の番（サイコロを振る）';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => '蛇とはしごで勝利：100ポイント！';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'プレイヤーを変更すると、保存されたゲームは置き換えられます。';

  @override
  String get gameUiStartANewLevel => '新しいレベルを始めますか？';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'レベルを変更すると、保存されたゲームは置き換えられます。';

  @override
  String get gameUiChangeLevel => 'レベルを変更';

  @override
  String get gameUiPlayers => 'プレイヤー';

  @override
  String get gameUiPlayAgainstBot => 'ボットと対戦';

  @override
  String get gameUi3Players => '3人プレイ';

  @override
  String get gameUi4Players => '4人プレイ';

  @override
  String get gameUiLevel1709305 => 'レベル';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'レベル $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1人プレイ · レベル $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · サイコロを振る';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value2上の$value1';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return '問題を読み込めません：$value1';
  }

  @override
  String get gameUiCorrectAnswer => '正解です！';

  @override
  String get gameUiWrongAnswer => '不正解';

  @override
  String get gameUiYouClaimedYourReward => '報酬を獲得しました！';

  @override
  String get gameUiAddedToYourTotalPoints => '合計ポイントに加算されました。';

  @override
  String get gameUiTheCorrectAnswerWas => '正解は次のとおりです：';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1ポイントの報酬を失いました。';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => '現在のポイントは減りません。';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => '明日また挑戦してください。';

  @override
  String get gameUiUnableToLoadQuestion6407759 => '問題を読み込めません。';

  @override
  String get gameUiYourReward677fa6e => 'あなたの報酬';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1ポイント';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => '正解して報酬を獲得しよう！';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => '明日またもう一度挑戦してください。';

  @override
  String get gameUiGreen => '緑';

  @override
  String get gameUiBlue => '青';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1が考え中';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1：駒を選んでください';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1：サイコロを振ってください';
  }

  @override
  String gameUiDice(String value1) {
    return 'サイコロ $value1';
  }

  @override
  String get gameUiRollDice => 'サイコロを振る';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1の駒 $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'プレイヤー $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'ボット $value1';
  }

  @override
  String get gameUiBot => 'ボット';

  @override
  String get gameUiHintInsufficientPoints => 'ヒントを使うには20ポイントが必要です。';

  @override
  String get gameUiHintPurchaseFailed => 'ヒントを購入できませんでした。もう一度お試しください。';

  @override
  String get gameUiChessKing => 'キング';

  @override
  String get gameUiChessQueen => 'クイーン';

  @override
  String get gameUiChessRook => 'ルーク';

  @override
  String get gameUiChessBishop => 'ビショップ';

  @override
  String get gameUiChessKnight => 'ナイト';

  @override
  String get gameUiChessPawn => 'ポーン';

  @override
  String get gameUiChessEmpty => '空き';

  @override
  String get gameSceneLampAndFlowers => 'ランプと花';

  @override
  String get gameSceneGardenFriends => '庭の仲間たち';

  @override
  String get gameSceneUnderwaterExplorers => '海中の探検家たち';

  @override
  String get gameSceneOceanOrca => '海のシャチ';

  @override
  String get gameSceneFoxInTheMeadow => '草原のキツネ';

  @override
  String get gameSceneYellowSubmarine => '黄色い潜水艦';

  @override
  String get gameSceneTurkeyInTheClearing => '林間の空き地の七面鳥';

  @override
  String get gameSceneSafariWateringHole => 'サファリの水飲み場';

  @override
  String get gameSceneJungleCompanions => 'ジャングルの仲間たち';

  @override
  String get gameSceneGoldenPuppyGarden => '金色の子犬の庭';

  @override
  String get gameSceneSeaTurtleReef => 'ウミガメのいる礁';

  @override
  String get gameSceneCoralReefFriends => 'サンゴ礁の仲間たち';

  @override
  String get gameSceneSharedClownfish => '仲良しのカクレクマノミ';

  @override
  String get gameSceneLittleDinosaur => '小さな恐竜';

  @override
  String get gameSceneSafariCompanions => 'サファリの仲間たち';

  @override
  String get gameSceneSwirlingFlowers => '渦巻く花々';

  @override
  String get gameSceneGardenKitten => '庭の子猫';

  @override
  String get gameSceneBlueOcean => '青い海';

  @override
  String get gameSceneCastlePrincess => 'お城のお姫様';

  @override
  String get gameSceneRedCar => '赤い車';

  @override
  String get gameSceneGardenPuppy => '庭の子犬';

  @override
  String get gameSceneSpaceExplorer => '宇宙探検家';

  @override
  String get gameSceneEnchantedReadingForest => '魔法の読書の森';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOpsの無限サイクル';

  @override
  String get gameSceneAnsible => 'Ansible（アンシブル）';

  @override
  String get gameSceneAws => 'AWS（アマゾン ウェブ サービス）';

  @override
  String get gameSceneAzure => 'Azure（アジュール）';

  @override
  String get gameSceneBashScripting => 'Bash スクリプト';

  @override
  String get gameSceneDocker => 'Docker（ドッカー）';

  @override
  String get gameSceneGcp => 'GCP（グーグル クラウド）';

  @override
  String get gameSceneGit => 'Git（ギット）';

  @override
  String get gameSceneHybridCloud => 'ハイブリッドクラウド';

  @override
  String get gameSceneIbmCloud => 'IBM クラウド';

  @override
  String get gameSceneJavascript => 'JavaScript（ジャバスクリプト）';

  @override
  String get gameSceneJenkins => 'Jenkins（ジェンキンス）';

  @override
  String get gameSceneKubernetes => 'Kubernetes（クバネティス）';

  @override
  String get gameSceneLinux => 'Linux（リナックス）';

  @override
  String get gameSceneMultiCloud => 'マルチクラウド';

  @override
  String get gameSceneNetworking => 'ネットワーキング';

  @override
  String get gameSceneOracleCloud => 'Oracle クラウド';

  @override
  String get gameScenePerl => 'Perl（パール）';

  @override
  String get gameScenePowershell => 'PowerShell（パワーシェル）';

  @override
  String get gameScenePython => 'Python（パイソン）';

  @override
  String get gameSceneRuby => 'Ruby（ルビー）';

  @override
  String get gameSceneTerraform => 'Terraform（テラフォーム）';

  @override
  String get gameSceneWinterFestivalFair => '冬祭りの市';

  @override
  String get gameSceneArmoredHeroCloseUp => '鎧の英雄のクローズアップ';

  @override
  String get gameSceneArmoredHeroInCrimson => '深紅の鎧の英雄';

  @override
  String get gameSceneDarkPlumeriaBlossoms => '暗い色のプルメリアの花';

  @override
  String get gameSceneMangroveBoardwalk => 'マングローブの木道';

  @override
  String get gameSceneTropicalPalmReflections => '水面に映る熱帯のヤシ';

  @override
  String get gameSceneMaskedFigureInShadow => '影の中の仮面の人物';

  @override
  String get gameSceneElectricCompanionAtSunset => '夕暮れの電気の相棒';

  @override
  String get gameSceneTrainerAndFireDragon => 'トレーナーと火のドラゴン';

  @override
  String get gameSceneJewelStuddedWrestlingMask => '宝石をちりばめたレスリングマスク';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => '赤い筆致のレスラー';

  @override
  String get gameSceneWrestlingChampionSalute => '敬礼するレスリングチャンピオン';

  @override
  String get gameSceneMorningAtTheBakery => 'パン屋の朝';

  @override
  String get gameSceneGreenhousePottingBench => '温室の植え付け台';

  @override
  String get gameSceneHarborFishingBoat => '港の漁船';

  @override
  String get gameSceneAtticObservatory => '屋根裏の天文台';

  @override
  String get gameSceneToyMakerSWorkshop => 'おもちゃ職人の工房';

  @override
  String get gameSceneWoodlandCampsite => '森のキャンプ場';

  @override
  String get gameSceneAfternoonMusicRoom => '午後の音楽室';

  @override
  String get gameSceneSeasideIceCreamStand => '海辺のアイスクリーム屋台';

  @override
  String get gameSceneLibraryReadingNook => '図書館の読書コーナー';

  @override
  String get gameSceneSewingStudio => '裁縫アトリエ';

  @override
  String get gameSceneFruitMarket => '果物市場';

  @override
  String get gameSceneKoiCourtyard => '鯉のいる中庭';

  @override
  String get gameSceneArtistSAtelier => '画家のアトリエ';

  @override
  String get gameSceneMountainRailway => '山岳鉄道';

  @override
  String get gameSceneCountryKitchen => '田舎のキッチン';

  @override
  String get gameScenePotteryWorkshop => '陶芸工房';

  @override
  String get gameSceneBeachPicnic => 'ビーチのピクニック';

  @override
  String get gameSceneFlowerShop => '花屋';

  @override
  String get gameSceneClockmakerSWorkshop => '時計職人の工房';

  @override
  String get gameSceneRainyCafeTerrace => '雨の日のカフェテラス';

  @override
  String get gameSceneCastleHerbGarden => '城のハーブ園';

  @override
  String get gameSceneClassroomArtCorner => '教室の図工コーナー';

  @override
  String get gameSceneAquariumShop => 'アクアリウムショップ';

  @override
  String get gameSceneAutumnLeafCollection => '秋の葉のコレクション';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => '月の下の一本の木';

  @override
  String get gameSceneAutumnBlossomOnABranch => '枝に咲く秋の花';

  @override
  String get gameSceneFoxAmongGreenLeaves => '緑の葉の中のキツネ';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => '睡蓮に覆われた湖のカヌー';

  @override
  String get gameSceneDewDropsOnALeaf => '葉の上の露のしずく';

  @override
  String get gameSceneStagInATurquoiseLake => 'ターコイズ色の湖の雄鹿';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'オレンジ色の月の下の自転車';

  @override
  String get gameSceneWhiteTigerAboveTheValley => '谷の上の白い虎';

  @override
  String get gameSceneTwoTreesInBlueWater => '青い水辺の二本の木';

  @override
  String get gameSceneFishingBesideAFaithfulDog => '忠実な犬のそばでの釣り';

  @override
  String get gameSceneLiliesBesideAMountainLake => '山の湖畔のユリ';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'ピンク色の川辺の鹿';

  @override
  String get gameSceneTropicalHutAtSunset => '夕暮れの南国の小屋';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'アルプスの谷を見渡すキツネ';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => '魔法の森を抜ける夕日';

  @override
  String get learningControlTitle => 'DevOps学習';

  @override
  String get learningControlAllCategories => 'すべてのカテゴリ';

  @override
  String get learningControlSearchCards => 'カードを検索';

  @override
  String get learningControlClearSearch => '検索をクリア';

  @override
  String get learningControlCategory => 'カテゴリ';

  @override
  String get learningControlShowAll => 'すべてのカードを表示';

  @override
  String learningControlShowSaved(int count) {
    return '保存したカードを表示 ($count)';
  }

  @override
  String get learningControlShuffleOff => 'シャッフルをオフにする';

  @override
  String get learningControlShuffleOn => 'カードをシャッフル';

  @override
  String get learningControlAutoOff => '自動切り替えを停止';

  @override
  String get learningControlAutoOn => '10秒ごとに自動切り替え';

  @override
  String get learningControlNoSaved => '保存したカードはまだありません';

  @override
  String get learningControlNoMatches => '一致するカードがありません';

  @override
  String get learningControlResetFilters => 'フィルターをリセット';

  @override
  String get learningControlPrevious => '前へ';

  @override
  String get learningControlNext => '次へ';

  @override
  String get learningControlProgress => '進捗';

  @override
  String get learningControlRemoveSaved => '保存から削除';

  @override
  String get learningControlSaveCard => 'カードを保存';

  @override
  String get learningControlExample => '例';

  @override
  String get learningControlCopyExample => '例をコピー';

  @override
  String get learningControlExampleCopied => '例をコピーしました';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'レベル $value1 クリア';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'レベル $value1 をプレイ';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'レベル $value1 をクリアしてロック解除';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'デイリーログインボーナス';

  @override
  String get sharedDialogThanksForComingBack => 'おかえりなさい！';

  @override
  String get sharedDialogDailyRewardAdded => 'デイリー報酬が合計ポイントに追加されました。';

  @override
  String get sharedDialogAwesome => 'すばらしい！';

  @override
  String get accountWelcomeGuest => 'ゲスト';

  @override
  String get accountWelcomeGuestUser => 'ゲストユーザー';

  @override
  String get accountWelcomeUser => 'ユーザー';

  @override
  String get accountWelcomePlayingAsGuest => 'ゲストとしてプレイ中';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google アカウントを連携';

  @override
  String get accountWelcomeGoogleConnected => 'Google アカウントが正常に連携されました！🎉';

  @override
  String get accountWelcomeSignInCancelled => 'ログインがキャンセルされました。';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return '連携に失敗しました: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'ログアウト';

  @override
  String get accountWelcomeSignOutTitle => 'ログアウトしますか？';

  @override
  String get accountWelcomeSignOutMessage => '本当にログアウトしますか？保存された進捗状況にアクセスするには、再度ログインする必要があります。';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'ログアウトに失敗しました: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ アプリデータをリセットしますか？';

  @override
  String get accountWelcomeResetAppMessage => 'すべてのポイント、連続記録、ゲーム履歴、設定が完全に削除されます。ログアウトされ、スタート画面に戻ります。この操作は元に戻せません。';

  @override
  String get accountWelcomeResetEverything => 'すべてリセット';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'リセットに失敗しました: $value1';
  }

  @override
  String get accountWelcomeCancel => 'キャンセル';

  @override
  String get accountWelcomeResetAppData => 'アプリデータをリセット';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'すべてのポイント、連続記録、設定を消去';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz アプリ';

  @override
  String get accountWelcomeTranslationNotAvailable => '翻訳はまだ利用できません';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google で続行';

  @override
  String get accountWelcomeSigningIn => 'ログイン中...';

  @override
  String get accountWelcomeOr => 'または';

  @override
  String get accountWelcomeContinueAsGuest => 'ゲストとして続行';

  @override
  String get accountWelcomeSignInLaterFromProfile => '後からプロフィール画面でログインできます。';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'ゲストとして始めて、後からログインすることができます。';

  @override
  String get accountWelcomeGreetingGuest => 'ようこそ';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'ようこそ、$value1さん！';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ログインは完了しましたが、ユーザーアカウントが返されませんでした。';

  @override
  String get accountWelcomeErrorEmailExists => 'このメールアドレスには、別のログイン方法を使用するアカウントが既に存在します。';

  @override
  String get accountWelcomeErrorCredentialInUse => 'この Google アカウントは既に別のアカウントに連携されています。';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google 認証情報が無効か、有効期限が切れています。';

  @override
  String get accountWelcomeErrorUserDisabled => 'このアカウントは無効になっています。';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ログインは現在有効になっていません。';

  @override
  String get accountWelcomeErrorNetwork => 'ネットワークエラーです。インターネット接続を確認して、もう一度お試しください。';

  @override
  String get accountWelcomeErrorTooManyRequests => 'ログインの試行回数が多すぎます。しばらく待ってからもう一度お試しください。';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => '追加のエラー情報はありません。';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ログインに失敗しました。\n\nコード: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ログインエラー:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'ゲストとして続行できませんでした。もう一度お試しください。';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ログインはまもなく利用可能になります。';

  @override
  String get accountWelcomeLoginTagline => '学ぶ • 練習する • 競う • 獲得する';

  @override
  String get accountWelcomeCountryRegion => '国 / 地域';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return '国 / 地域: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => '国を検索';

  @override
  String get accountWelcomeCountryNotSelected => '未選択';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'DevOps Quiz の特徴';

  @override
  String get accountWelcomeFeatureQuestions => '3000以上の練習問題';

  @override
  String get accountWelcomeFeatureLanguages => '多言語サポート';

  @override
  String get accountWelcomeFeatureStreaks => '連続記録とランキング';

  @override
  String get accountWelcomeFeatureGames => 'ゲームとチャレンジ';

  @override
  String get accountWelcomeFeatureCloud => 'クラウドと DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'ボーナスと報酬';

  @override
  String get accountWelcomePracticeOnTheGo => '外出先でも練習';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android アプリをインストールして、いつでもどこでもオフラインで学習しましょう。';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play で手に入れよう';

  @override
  String achLocStreakTitle(String days) {
    return '$days日連続';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days日連続を維持しましょう。';
  }

  @override
  String get achLocYearStreakTitle => '1年連続';

  @override
  String get achLocFirstQuizTitle => '最初のクイズ';

  @override
  String get achLocFirstQuizDescription => '最初のクイズを完了しましょう。';

  @override
  String get achLocQuiz10Title => 'クイズ探検家';

  @override
  String get achLocQuiz10Description => 'クイズを10回完了しましょう。';

  @override
  String get achLocPoints1000Title => '1000ポイント';

  @override
  String get achLocPoints1000Description => 'クイズで合計1000ポイントを獲得しましょう。';

  @override
  String get achLocPerfectScoreTitle => 'パーフェクトスコア';

  @override
  String get achLocPerfectScoreDescription => 'いずれかのクイズで100%を獲得しましょう。';

  @override
  String get achLocQuiz25Title => 'クイズ愛好家';

  @override
  String get achLocQuiz25Description => 'クイズを25回完了しましょう。';

  @override
  String get achLocQuiz50Title => 'クイズマスター';

  @override
  String get achLocQuiz50Description => 'クイズを50回完了しましょう。';

  @override
  String get achLocQuiz100Title => 'センチュリークラブ';

  @override
  String get achLocQuiz100Description => 'クイズを100回完了しましょう。';

  @override
  String get achLocQuiz250Title => 'クイズの伝説';

  @override
  String get achLocQuiz250Description => 'クイズを250回完了しましょう。';

  @override
  String get achLocPoints5000Title => '5,000ポイント';

  @override
  String get achLocPoints5000Description => '合計5,000ポイントを獲得しましょう。';

  @override
  String get achLocPoints10000Title => '10,000ポイント';

  @override
  String get achLocPoints10000Description => '合計10,000ポイントを獲得しましょう。';

  @override
  String get achLocPoints50000Title => '50,000ポイント';

  @override
  String get achLocPoints50000Description => '合計50,000ポイントを獲得しましょう。';

  @override
  String get achLocPoints100000Title => '100,000ポイント';

  @override
  String get achLocPoints100000Description => '合計100,000ポイントを獲得しましょう。';

  @override
  String get achLocDaily1Title => 'デイリー入門';

  @override
  String get achLocDaily1Description => '最初のデイリークイズを完了しましょう。';

  @override
  String get achLocDaily7Title => 'デイリー習慣';

  @override
  String get achLocDaily7Description => 'デイリークイズを7回完了しましょう。';

  @override
  String get achLocDaily30Title => 'デイリーチャンピオン';

  @override
  String get achLocDaily30Description => 'デイリークイズを30回完了しましょう。';

  @override
  String get achLocSets5Title => 'セット入門';

  @override
  String get achLocSets5Description => 'クイズセットを5つ終了しましょう。';

  @override
  String get achLocSets25Title => 'セットコレクター';

  @override
  String get achLocSets25Description => 'クイズセットを25個終了しましょう。';

  @override
  String get achLocSets50Title => 'セットマスター';

  @override
  String get achLocSets50Description => 'クイズセットを50個終了しましょう。';

  @override
  String get achLocSets100Title => 'セットの伝説';

  @override
  String get achLocSets100Description => 'クイズセットを100個終了しましょう。';

  @override
  String get achLocCert1Title => '最初の認定証';

  @override
  String get achLocCert1Description => '最初のカテゴリ認定証を獲得しましょう。';

  @override
  String get achLocCert5Title => '認定プロ';

  @override
  String get achLocCert5Description => 'カテゴリ認定証を5つ獲得しましょう。';

  @override
  String get achLocCert21Title => '完全認定';

  @override
  String get achLocCert21Description => '21のすべてのカテゴリで認定証を獲得しましょう。';

  @override
  String get achLocThemeFreeValentinesWeek => '毎年2月7日〜14日は無料';

  @override
  String get achLocThemeFreeDqSpecialWeek => '毎年3月8日〜15日は無料';

  @override
  String get achLocThemeLight => 'ライト';

  @override
  String get achLocThemeDark => 'ダーク';

  @override
  String get achLocThemeSakura => 'サクラ';

  @override
  String get achLocThemeSunset => 'サンセット';

  @override
  String get achLocThemeCoffee => 'コーヒー';

  @override
  String get achLocThemeTea => 'ティー';

  @override
  String get achLocThemeOcean => 'オーシャン';

  @override
  String get achLocThemeSolarFlare => 'ソーラーフレア';

  @override
  String get achLocThemeForest => 'フォレスト';

  @override
  String get achLocThemeAurora => 'オーロラ';

  @override
  String get achLocThemeMatrix => 'マトリックス';

  @override
  String get achLocThemeCyberPurple => 'サイバーパープル';

  @override
  String get achLocThemeInferno => 'インフェルノ';

  @override
  String get achLocThemeMidnight => 'ミッドナイト';

  @override
  String get achLocThemeDarkGrey => 'ダークグレー';

  @override
  String get achLocThemeBarbee => 'バービー';

  @override
  String get achLocThemeValentineDay => 'バレンタインデー';

  @override
  String get achLocThemeDqSpecial => 'DQスペシャル';

  @override
  String get achLocThemeArmy => 'アーミー';

  @override
  String get achLocThemeSpiderMan => 'スパイダーマン';

  @override
  String get achLocThemeKrrish => 'クリッシュ';

  @override
  String get achLocThemeIronMan => 'アイアンマン';

  @override
  String get achLocThemeCaptainAmerica => 'キャプテン・アメリカ';

  @override
  String get achLocThemeThor => 'ソー';

  @override
  String get achLocThemeHulk => 'ハルク';

  @override
  String get achLocThemeBlackWidow => 'ブラック・ウィドウ';

  @override
  String get achLocThemeHawkeye => 'ホークアイ';

  @override
  String get achLocThemeBlackPanther => 'ブラックパンサー';

  @override
  String get achLocThemeScarletWitch => 'スカーレット・ウィッチ';

  @override
  String get achLocThemeVision => 'ヴィジョン';

  @override
  String get achLocThemeAntMan => 'アントマン';

  @override
  String get achLocThemeCaptainMarvel => 'キャプテン・マーベル';

  @override
  String get achLocThemeDoctorStrange => 'ドクター・ストレンジ';

  @override
  String get achLocThemeAvengers => 'アベンジャーズ';

  @override
  String get achLocThemeBatman => 'バットマン';

  @override
  String get achLocThemeSuperman => 'スーパーマン';

  @override
  String get achLocThemeWonderWoman => 'ワンダーウーマン';

  @override
  String get achLocThemeFlash => 'フラッシュ';

  @override
  String get achLocThemeAquaman => 'アクアマン';

  @override
  String get achLocThemeGreenLantern => 'グリーン・ランタン';

  @override
  String get achLocThemeCyborg => 'サイボーグ';

  @override
  String get achLocThemeSupergirl => 'スーパーガール';

  @override
  String get achLocThemeDc => 'DCヒーローズ';

  @override
  String get achLocThemeRainbow => 'レインボー';

  @override
  String get achLocThemeDiamond => 'ダイヤモンド';

  @override
  String get achLocThemeLegendary => 'レジェンダリー';

  @override
  String get gameHintCmd001LsLa => '詳細付きですべてのファイルを一覧表示する';

  @override
  String get gameHintCmd002Grep => 'パターンでテキストを検索する';

  @override
  String get gameHintCmd003Chmod => 'ファイルのパーミッションを変更する';

  @override
  String get gameHintCmd004DfH => 'ディスクの空き容量を表示する';

  @override
  String get gameHintCmd005TailF => '増え続けるログファイルを追跡する';

  @override
  String get gameHintCmd006PsAux => '実行中のプロセスを一覧表示する';

  @override
  String get gameHintCmd007GitClone => 'リモートリポジトリをコピーする';

  @override
  String get gameHintCmd008GitStash => '未コミットの変更を退避する';

  @override
  String get gameHintCmd009GitRebase => 'コミットを新しいベースに適用し直す';

  @override
  String get gameHintCmd010GitBlame => '各行を誰が変更したか表示する';

  @override
  String get gameHintCmd011DockerPs => '実行中のコンテナを一覧表示する';

  @override
  String get gameHintCmd012DockerBuild => 'Dockerfile からイメージを作成する';

  @override
  String get gameHintCmd013DockerLogs => 'コンテナの出力を表示する';

  @override
  String get gameHintCmd014DockerExec => 'コンテナ内でコマンドを実行する';

  @override
  String get gameHintCmd015KubectlGetPods => '名前空間内の Pod を一覧表示する';

  @override
  String get gameHintCmd016KubectlApply => 'ファイルからリソースを作成する';

  @override
  String get gameHintCmd017KubectlDescribe => 'リソースの詳細情報を表示する';

  @override
  String get gameHintCmd018KubectlScale => 'レプリカ数を変更する';

  @override
  String get gameHintCmd019TerraformInit => 'プロバイダーをダウンロードして初期設定する';

  @override
  String get gameHintCmd020TerraformPlan => 'インフラの変更内容をプレビューする';

  @override
  String get gameHintCmd021TerraformApply => 'インフラを作成または更新する';

  @override
  String get gameHintCmd022TerraformDestroy => '管理中のインフラを削除する';

  @override
  String get gameHintCmd023AnsiblePlaybook => '自動化プレイブックを実行する';

  @override
  String get gameHintCmd024Ping => 'ICMP で到達性をテストする';

  @override
  String get gameHintCmd025Traceroute => 'ホストまでの経路を表示する';

  @override
  String get gameHintCmd026Curl => 'URL からデータを転送する';

  @override
  String get gameHintCmd027Ssh => 'リモートマシンに安全にログインする';

  @override
  String get gameHintCmd028CrontabE => 'スケジュールされたジョブを編集する';

  @override
  String get gameHintCmd029SystemctlStatus => 'サービスの状態を確認する';

  @override
  String get gameHintCmd030HelmInstall => 'チャートを Kubernetes にデプロイする';

  @override
  String get gameHintWord001Git => 'ソースコードの変更を追跡する。';

  @override
  String get gameHintWord002Aws => 'Amazon のクラウドプラットフォーム。';

  @override
  String get gameHintWord003Api => 'ソフトウェアシステム同士が通信するための取り決め。';

  @override
  String get gameHintWord004Dns => 'ドメイン名を IP アドレスに変換する。';

  @override
  String get gameHintWord005Cli => 'コマンドを実行するためのテキストベースのインターフェース。';

  @override
  String get gameHintWord006Cpu => '命令を実行するプロセッサ。';

  @override
  String get gameHintWord007Ram => '実行中のプログラムが使う一時的なメモリ。';

  @override
  String get gameHintWord008Ssh => 'リモートシェルアクセス用の安全なプロトコル。';

  @override
  String get gameHintWord009Yaml => '人間が読みやすいデータシリアライズ形式。';

  @override
  String get gameHintWord010Linux => 'オープンソースのオペレーティングシステムカーネルとそのファミリー。';

  @override
  String get gameHintWord011Bash => '人気のある Unix コマンドシェル。';

  @override
  String get gameHintWord012Cloud => 'ネットワーク経由で提供されるオンデマンドのコンピューティング。';

  @override
  String get gameHintWord013Docker => 'コンテナを構築・実行するためのプラットフォーム。';

  @override
  String get gameHintWord014Azure => 'Microsoft のクラウドプラットフォーム。';

  @override
  String get gameHintWord015Python => '広く使われているスクリプト言語兼プログラミング言語。';

  @override
  String get gameHintWord016Github => '人気のあるホスト型 Git コラボレーションサービス。';

  @override
  String get gameHintWord017Bgp => '自律システム間で経路情報を交換するルーティングプロトコル。';

  @override
  String get gameHintWord018Jenkins => 'CI によく使われる自動化サーバー。';

  @override
  String get gameHintWord019Port => 'ネットワークサービスが使う番号付きのエンドポイント。';

  @override
  String get gameHintWord020Proxy => 'クライアントに代わってリクエストを転送するサーバー。';

  @override
  String get gameHintWord021Cache => '頻繁に再利用されるデータのための高速な保存領域。';

  @override
  String get gameHintWord022Cron => '定期的なコマンドを実行する Unix のスケジューラ。';

  @override
  String get gameHintWord023Bicep => 'Azure のインフラストラクチャ・アズ・コード用の宣言型言語。';

  @override
  String get gameHintWord024Apigee => 'API を一元管理する Google Cloud のプラットフォーム。';

  @override
  String get gameHintWord025Root => 'Unix 系システムの特権管理者アカウント。';

  @override
  String get gameHintWord026Nginx => 'Web サーバー兼リバースプロキシ。';

  @override
  String get gameHintWord027Redis => 'キャッシュとしてよく使われるインメモリデータストア。';

  @override
  String get gameHintWord028Mysql => '人気のあるリレーショナルデータベースシステム。';

  @override
  String get gameHintWord029Ruby => 'Chef などのツールで使われるプログラミング言語。';

  @override
  String get gameHintWord030Helm => 'Kubernetes でよく使われるパッケージマネージャー。';

  @override
  String get gameHintWord031Pod => 'Kubernetes でデプロイできる最小単位。';

  @override
  String get gameHintWord032Image => 'コンテナを作成するための読み取り専用テンプレート。';

  @override
  String get gameHintWord033Build => 'ソースと依存関係から成果物を作成する。';

  @override
  String get gameHintWord034Deploy => 'アプリケーションを環境にリリースする。';

  @override
  String get gameHintWord035Terraform => 'インフラストラクチャ・アズ・コード用の HashiCorp のツール。';

  @override
  String get gameHintWord036Ansible => 'エージェントレスの自動化・構成ツール。';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes のコマンドラインクライアント。';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform の略称。';

  @override
  String get gameHintWord039Gitops => 'Git を信頼できる唯一の情報源として使う運用モデル。';

  @override
  String get gameHintWord040Pipeline => 'ビルド、テスト、リリースの各段階を自動で連ねた流れ。';

  @override
  String get gameHintWord041Container => '依存関係とともにパッケージ化された分離プロセス。';

  @override
  String get gameHintWord042Cluster => '共有システムとして管理されるマシンの集まり。';

  @override
  String get gameHintWord043Ingress => '外部からの HTTP ルーティングのための Kubernetes API オブジェクト。';

  @override
  String get gameHintWord044Firewall => 'セキュリティルールに従ってネットワークトラフィックを制限する。';

  @override
  String get gameHintWord045Subnet => 'IP ネットワークの論理的な分割。';

  @override
  String get gameHintWord046Gateway => '異なるネットワークを接続するネットワークノード。';

  @override
  String get gameHintWord047Router => 'ネットワーク間でパケットを転送する。';

  @override
  String get gameHintWord048Switch => 'ローカルネットワーク内でデバイスを接続する。';

  @override
  String get gameHintWord049Repository => 'ソースコードやパッケージを管理する保管場所。';

  @override
  String get gameHintWord050Systemd => 'Linux の init システム兼サービスマネージャー。';

  @override
  String get gameHintWord051Journalctl => 'systemd のジャーナルログを読むためのコマンド。';

  @override
  String get gameHintWord052Permission => '誰が読み取り、書き込み、実行できるかを制御するルール。';

  @override
  String get gameHintWord053Alloydb => 'PostgreSQL 互換の Google Cloud マネージドデータベース。';

  @override
  String get gameHintWord054Configmap => '機密でない設定のための Kubernetes オブジェクト。';

  @override
  String get gameHintWord055Secret => '機密データ用の Kubernetes オブジェクト。';

  @override
  String get gameHintWord056Persistent => 'ワークロードの再起動後も残るストレージを表す。';

  @override
  String get gameHintWord057Volume => 'コンテナにマウントされるファイルシステムのストレージ。';

  @override
  String get gameHintWord058Storage => 'ファイル、オブジェクト、ブロックを永続的に保存する場所。';

  @override
  String get gameHintWord059Replica => '拡張性や信頼性のために維持されるワークロードインスタンスのコピー。';

  @override
  String get gameHintWord060Deployment => 'ステートレスなアプリケーション Pod 用の Kubernetes コントローラー。';

  @override
  String get gameHintWord061Dockerfile => 'Docker イメージを構築するための命令書。';

  @override
  String get gameHintWord062Database => 'アプリケーションが問い合わせる整理されたデータ保存領域。';

  @override
  String get gameHintWord063Automation => '手作業なしで繰り返し可能な作業をソフトウェアで実行すること。';

  @override
  String get gameHintWord064Anthos => '複数の環境にまたがるクラスターを管理する Google Cloud のプラットフォーム。';

  @override
  String get gameHintWord065Bigquery => '大規模データ分析のための Google Cloud のサービス。';

  @override
  String get gameHintWord066Bigtable => '分析向けの Google Cloud のワイドカラム型 NoSQL データベース。';

  @override
  String get gameHintWord067Loadbalancer => '受信トラフィックを複数のバックエンドに分散する。';

  @override
  String get gameHintWord068Prometheus => '時系列メトリクスを保存する監視システム。';

  @override
  String get gameHintWord069Grafana => 'オブザーバビリティデータを検索・可視化するプラットフォーム。';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud のマネージド NoSQL JSON ドキュメントデータベース。';

  @override
  String get gameHintWord071Cloudtrail => '監査のために API アクティビティを記録する AWS のサービス。';

  @override
  String get gameHintWord072Statefulset => '安定した識別性が必要なワークロード用の Kubernetes コントローラー。';

  @override
  String get gameHintWord073Daemonset => '選択したノードで Pod を実行する Kubernetes コントローラー。';

  @override
  String get gameHintWord074Serviceaccount => 'ワークロードやプロセスが使う Kubernetes のアイデンティティ。';

  @override
  String get gameHintWord075Networkpolicy => 'Pod のネットワークトラフィックを制御する Kubernetes リソース。';

  @override
  String get gameHintWord076Certificate => 'TLS で身元を証明するために使うデジタル文書。';

  @override
  String get gameHintWord077Encryption => '許可された者だけが読めるようにデータを変換する。';

  @override
  String get gameHintWord078Observability => '出力からシステムの挙動を推測できる能力。';

  @override
  String get gameHintWord079Coredns => 'Kubernetes クラスター内でよく使われる DNS サーバー。';

  @override
  String get gameHintWord080Crossplane => 'Kubernetes API を通じてクラウドリソースを管理するプロジェクト。';

  @override
  String get gameHintWord081Failover => '障害発生後にスタンバイのコンポーネントへ切り替えること。';

  @override
  String get gameHintWord082Idempotency => '操作を繰り返しても一度だけ行った場合と同じ結果になる性質。';

  @override
  String get gameHintWord083Dataflow => 'ストリームおよびバッチデータ処理のための Google Cloud のサービス。';

  @override
  String get gameHintWord084Orchestration => '複数の自動化されたワークロードの協調的な管理。';

  @override
  String get gameHintWord085Dataplex => '企業データの検出とガバナンスを行う Google Cloud のサービス。';

  @override
  String get gameHintWord086Serverless => 'インフラ管理が抽象化される実行モデル。';

  @override
  String get gameHintWord087Distributed => 'ネットワーク接続された複数のマシン上でコンポーネントが動作するシステム。';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud のマネージド Apache Spark および Hadoop 環境。';

  @override
  String get gameHintWord089Dynamodb => 'Terraform のステートロックによく使われる AWS の NoSQL データベース。';

  @override
  String get gameHintWord090Provisioning => 'インフラやリソースを使用できるように準備すること。';

  @override
  String get gameHintWord091Elasticsearch => '集中ログ管理によく使われる検索エンジン。';

  @override
  String get gameHintWord092Etcd => 'Kubernetes クラスターの状態を保持するキーバリューストア。';

  @override
  String get gameHintWord093Authentication => 'ユーザーやサービスが誰であるかを確認するプロセス。';

  @override
  String get gameHintWord094Authorization => 'アイデンティティに何を許可するかを決定するプロセス。';

  @override
  String get gameHintWord095Expressroute => 'データセンターへの専用プライベート接続を提供する Azure のサービス。';

  @override
  String get gameHintWord096Configuration => 'ソフトウェアの動作を決定する設定。';

  @override
  String get gameHintWord097Infrastructure => 'アプリケーションを支えるコンピュート、ネットワーク、ストレージのリソース。';

  @override
  String get gameHintWord098Fastconnect => '専用プライベートネットワーク接続を提供する Oracle Cloud のサービス。';

  @override
  String get gameHintWord099Containerd => 'Kubernetes が使う業界標準のコンテナランタイム。';

  @override
  String get gameHintWord100Kubernetes => 'コンテナオーケストレーションプラットフォーム。';

  @override
  String get gameHintWord101Http => 'Web リソースを要求するためのアプリケーションプロトコル。';

  @override
  String get gameHintWord102Https => '暗号化された Web リクエスト用プロトコル。';

  @override
  String get gameHintWord103Tcp => '信頼性のある順序保証付き配信を提供するトランスポートプロトコル。';

  @override
  String get gameHintWord104Udp => 'データグラムに使われるコネクションレスのトランスポートプロトコル。';

  @override
  String get gameHintWord105Tls => 'ネットワーク上でやり取りするデータを保護するプロトコル。';

  @override
  String get gameHintWord106Ssl => '現代のトランスポートセキュリティプロトコルの旧式の前身。';

  @override
  String get gameHintWord107Ftp => 'ファイル転送のための従来のプロトコル。';

  @override
  String get gameHintWord108Sftp => 'セキュアシェル接続上で行うファイル転送プロトコル。';

  @override
  String get gameHintWord109Smtp => 'サーバー間でメールを送信するためのプロトコル。';

  @override
  String get gameHintWord110Snmp => 'ネットワーク機器を管理・監視するためのプロトコル。';

  @override
  String get gameHintWord111Icmp => 'ネットワークエラーや ping メッセージを運ぶプロトコル。';

  @override
  String get gameHintWord112Arp => 'ローカルの IPv4 アドレスをハードウェアアドレスに解決する。';

  @override
  String get gameHintWord113Dhcp => 'ネットワーククライアントに IP 設定を自動的に貸し出す。';

  @override
  String get gameHintWord114Nat => 'パケットがゲートウェイを通過する際にネットワークアドレスを書き換える。';

  @override
  String get gameHintWord115Vpn => '離れたネットワークやユーザーを接続する暗号化トンネル。';

  @override
  String get gameHintWord116Vpc => 'パブリッククラウド内の分離された仮想ネットワーク。';

  @override
  String get gameHintWord117Vlan => 'スイッチドネットワークの論理的な分離。';

  @override
  String get gameHintWord118Wan => '広い地理的範囲にわたるネットワーク。';

  @override
  String get gameHintWord119Lan => '限られた範囲内でデバイスを接続するネットワーク。';

  @override
  String get gameHintWord120Cdn => '配信コンテンツをキャッシュする分散型エッジネットワーク。';

  @override
  String get gameHintWord121Cidr => 'ネットワークプレフィックスをスラッシュと長さで表す表記法。';

  @override
  String get gameHintWord122Host => 'ネットワークに接続されたコンピューターまたはエンドポイント。';

  @override
  String get gameHintWord123Hostname => 'ネットワーク上のマシンに付けられた人間が読める名前。';

  @override
  String get gameHintWord124Domain => 'インターネットの名前付けシステムにおける名前付きの管理領域。';

  @override
  String get gameHintWord125Zone => 'DNS 名前空間の管理上の一部分。';

  @override
  String get gameHintWord126Record => 'DNS データベース内の個々のエントリ。';

  @override
  String get gameHintWord127Aaaa => '名前を IPv6 アドレスに解決する DNS レコードタイプ。';

  @override
  String get gameHintWord128Ptr => '逆引きに使われる DNS レコードタイプ。';

  @override
  String get gameHintWord129Txt => 'テキスト値を保存する DNS レコードタイプ。';

  @override
  String get gameHintWord130Cname => 'ある名前を別の名前の別名にする DNS レコード。';

  @override
  String get gameHintWord131Route => 'パケットを宛先へ向けるための経路エントリ。';

  @override
  String get gameHintWord132Routing => 'ネットワーク間のトラフィックの経路を選択すること。';

  @override
  String get gameHintWord133Packet => 'ネットワーク上で送信されるデータの単位。';

  @override
  String get gameHintWord134Protocol => 'システム間の通信に関する取り決めされたルール。';

  @override
  String get gameHintWord135Ack => 'データの受信を確認する TCP フラグ。';

  @override
  String get gameHintWord136Bandwidth => '通信リンクの容量。';

  @override
  String get gameHintWord137Latency => 'リクエストやパケットが応答を受け取るまでの遅延。';

  @override
  String get gameHintWord138Throughput => '単位時間あたりに処理される有用な作業量またはデータ量。';

  @override
  String get gameHintWord139Mtu => 'リンクが分割なしで送信できる最大のパケットサイズ。';

  @override
  String get gameHintWord140Alpn => 'アプリケーション層プロトコルをネゴシエートする TLS 拡張。';

  @override
  String get gameHintWord141Grep => 'パターンに一致するテキスト行を検索する。';

  @override
  String get gameHintWord142Sed => 'テキストの置換によく使われるストリームエディタ。';

  @override
  String get gameHintWord143Lscpu => 'プロセッサのアーキテクチャとコアの詳細を表示する Linux コマンド。';

  @override
  String get gameHintWord144Find => 'ファイルの条件を使ってディレクトリツリーを検索する。';

  @override
  String get gameHintWord145Lsblk => 'ブロックデバイスとその関係を一覧表示する Linux コマンド。';

  @override
  String get gameHintWord146Sort => 'テキストの行を並べ替える。';

  @override
  String get gameHintWord147Uniq => '隣接する重複行を除外する。';

  @override
  String get gameHintWord148Head => 'ファイルの先頭部分を出力する。';

  @override
  String get gameHintWord149Tail => 'ファイルの末尾を出力し、追記されるログを追跡できる。';

  @override
  String get gameHintWord150Cat => 'ファイルを連結して内容を出力する。';

  @override
  String get gameHintWord151Cut => '行から指定したフィールドや文字の列を抽出する。';

  @override
  String get gameHintWord152Tee => '標準入力をファイルと標準出力にコピーする。';

  @override
  String get gameHintWord153Echo => '引数を標準出力に書き出す。';

  @override
  String get gameHintWord154Printf => 'シェルやプログラムから書式付きテキストを出力する。';

  @override
  String get gameHintWord155Touch => 'ファイルのタイムスタンプを更新するか、空のファイルを作成する。';

  @override
  String get gameHintWord156Mkdir => 'ディレクトリを作成する。';

  @override
  String get gameHintWord157Rmdir => '空のディレクトリを削除する。';

  @override
  String get gameHintWord158Chmod => 'Unix のファイルパーミッションビットを変更する。';

  @override
  String get gameHintWord159Chown => 'ファイルの所有者を変更する。';

  @override
  String get gameHintWord160Chgrp => 'ファイルの所有グループを変更する。';

  @override
  String get gameHintWord161Pwd => '現在の作業ディレクトリを出力する。';

  @override
  String get gameHintWord162Apt => 'Debian 系システムで使われるパッケージ管理ツール。';

  @override
  String get gameHintWord163Top => 'プロセスとシステムリソース使用状況の対話型表示。';

  @override
  String get gameHintWord164Agent => 'ホスト上で作業を実行または報告するソフトウェアコンポーネント。';

  @override
  String get gameHintWord165Kill => '識別子を指定してプロセスにシグナルを送る。';

  @override
  String get gameHintWord166Signal => 'オペレーティングシステムからプロセスに届く通知。';

  @override
  String get gameHintWord167Sigkill => 'プロセスを即座に終了させる Unix シグナル。';

  @override
  String get gameHintWord168Nice => 'スケジューリング優先度を調整してプロセスを起動する。';

  @override
  String get gameHintWord169Renice => '実行中のプロセスのスケジューリング優先度を変更する。';

  @override
  String get gameHintWord170Jobs => '現在のシェルが管理するジョブを一覧表示する。';

  @override
  String get gameHintWord171Nohup => 'ハングアップシグナルを無視してコマンドを実行する。';

  @override
  String get gameHintWord172Screen => '切り離し可能なセッションをサポートするターミナルマルチプレクサ。';

  @override
  String get gameHintWord173Uptime => 'システムがどのくらい稼働しているかを報告する。';

  @override
  String get gameHintWord174Uname => 'システムとカーネルの情報を出力する。';

  @override
  String get gameHintWord175Whoami => '現在の実効ユーザー名を出力する。';

  @override
  String get gameHintWord176Umask => 'ファイル作成時に使われるパーミッションマスクを設定する。';

  @override
  String get gameHintWord177Usermod => '既存のユーザーアカウントを変更する Linux コマンド。';

  @override
  String get gameHintWord178Crontab => '定期実行されるシェルジョブを編集または一覧表示する。';

  @override
  String get gameHintWord179Findmnt => 'マウントされたファイルシステムの情報を表示する Linux コマンド。';

  @override
  String get gameHintWord180Mount => 'ファイルシステムをディレクトリツリーに接続する。';

  @override
  String get gameHintWord181Sigterm => 'プロセスの穏やかな終了を要求する Unix シグナル。';

  @override
  String get gameHintWord182Fstab => 'マウントするファイルシステムを記述するシステムテーブル。';

  @override
  String get gameHintWord183Swap => '物理メモリを補うためのディスク上の領域。';

  @override
  String get gameHintWord184Tmpfs => '仮想メモリを基盤とする一時的なファイルシステム。';

  @override
  String get gameHintWord185Proc => 'プロセスとカーネルの情報を公開する Linux の仮想ファイルシステム。';

  @override
  String get gameHintWord186Syslog => '標準的なログ記録プロトコルおよびメッセージ形式。';

  @override
  String get gameHintWord187Dmesg => 'カーネルリングバッファのメッセージを表示する。';

  @override
  String get gameHintWord188Free => '使用中および利用可能なシステムメモリを報告する。';

  @override
  String get gameHintWord189Stat => 'ファイルの詳細なメタデータを表示する。';

  @override
  String get gameHintWord190Lsof => '開いているファイルとそれを保持するプロセスを一覧表示する。';

  @override
  String get gameHintWord191Netstat => 'ネットワーク接続とルーティング情報を表示する。';

  @override
  String get gameHintWord192Checksum => 'データの変更や破損を検出するために計算される値。';

  @override
  String get gameHintWord193Ping => 'エコー要求を使ってネットワークの到達性をテストする。';

  @override
  String get gameHintWord194Traceroute => 'ネットワーク上の宛先までの中継ホップを表示する。';

  @override
  String get gameHintWord195Resolver => '名前の問い合わせに対する答えを検索する DNS コンポーネント。';

  @override
  String get gameHintWord196Nslookup => 'DNS の名前とアドレスを検索する。';

  @override
  String get gameHintWord197Telnet => '暗号化されていない旧式のリモートターミナルプロトコル。';

  @override
  String get gameHintWord198Tftp => 'UDP ベースのシンプルなファイル転送プロトコル。';

  @override
  String get gameHintWord199Daemon => 'Unix 系システムのバックグラウンドサービスプロセス。';

  @override
  String get gameHintWord200Kernel => 'オペレーティングシステムのリソースを管理する中核コンポーネント。';

  @override
  String get gameHintWord201Commit => 'バージョン管理に記録された変更のスナップショット。';

  @override
  String get gameHintWord202Branch => '開発の流れを表す移動可能な参照。';

  @override
  String get gameHintWord203Merge => '異なる開発ラインの履歴を統合する。';

  @override
  String get gameHintWord204Rebase => '別のベースコミットの上にコミットを再適用する。';

  @override
  String get gameHintWord205Clone => 'リモートリポジトリのローカルコピーを作成する。';

  @override
  String get gameHintWord206Fetch => 'マージせずにリモートのオブジェクトと参照をダウンロードする。';

  @override
  String get gameHintWord207Pull => '変更を取得して現在のブランチに統合する。';

  @override
  String get gameHintWord208Push => 'ローカルのコミットをリモートリポジトリに送信する。';

  @override
  String get gameHintWord209Stash => '未コミットの作業ツリーの変更を一時的に保存する。';

  @override
  String get gameHintWord210Revert => '別のコミットを打ち消すコミットを作成する。';

  @override
  String get gameHintWord211Reset => 'Git の参照を移動し、インデックスや作業ファイルをリセットすることもできる。';

  @override
  String get gameHintWord212Reflog => 'Git の参照が更新された履歴のローカル記録。';

  @override
  String get gameHintWord213Diff => 'バージョン間またはファイル間の差分を表示する。';

  @override
  String get gameHintWord214Status => 'ステージ済み、変更済み、未追跡のファイルを報告する。';

  @override
  String get gameHintWord215Checkout => 'リビジョンの切り替えやファイルの復元を行う Git コマンド。';

  @override
  String get gameHintWord216Tag => 'リリースの目印としてよく使われる名前付きの参照。';

  @override
  String get gameHintWord217Remote => '別のリポジトリへの名前付きの接続。';

  @override
  String get gameHintWord218Origin => 'クローンしたリポジトリのリモートに付けられるデフォルト名。';

  @override
  String get gameHintWord219Upstream => 'ローカルブランチに関連付けられたリモート追跡ブランチ。';

  @override
  String get gameHintWord220Worktree => 'リポジトリにリンクされたチェックアウト済みの作業ディレクトリ。';

  @override
  String get gameHintWord221Registry => 'コンテナイメージを保存・配布するサービス。';

  @override
  String get gameHintWord222Digest => 'コンテナイメージの内容に基づく識別子。';

  @override
  String get gameHintWord223Layer => 'コンテナイメージの一部を構成するファイルシステムの変更。';

  @override
  String get gameHintWord224Entrypoint => 'コンテナの主要な実行ファイルを定義する Dockerfile の命令。';

  @override
  String get gameHintWord225Cmd => 'デフォルトのコマンドや引数を指定する Dockerfile の命令。';

  @override
  String get gameHintWord226Workdir => '作業ディレクトリを設定する Dockerfile の命令。';

  @override
  String get gameHintWord227Copy => 'ビルドコンテキストのファイルをイメージにコピーする Dockerfile の命令。';

  @override
  String get gameHintWord228Add => 'ローカルのアーカイブを展開することもできる Dockerfile の命令。';

  @override
  String get gameHintWord229Run => 'ビルド時のコマンドを実行する Dockerfile の命令。';

  @override
  String get gameHintWord230Env => '環境変数を定義する Dockerfile の命令。';

  @override
  String get gameHintWord231Arg => 'ビルド時の変数を宣言する Dockerfile の命令。';

  @override
  String get gameHintWord232Expose => 'コンテナのポートを明示する Dockerfile の命令。';

  @override
  String get gameHintWord233User => '以降のコマンドを実行するアカウントを選ぶ Dockerfile の命令。';

  @override
  String get gameHintWord234Healthcheck => 'コンテナの健全性をテストする方法を記述する命令。';

  @override
  String get gameHintWord235Shebang => '実行するインタープリタを示すスクリプトの先頭行。';

  @override
  String get gameHintWord236Compose => '複数コンテナのアプリケーションを定義・実行する Docker のツール。';

  @override
  String get gameHintWord237Bridge => 'ローカルのコンテナネットワーキングに使う一般的な Docker ネットワークドライバー。';

  @override
  String get gameHintWord238Overlay => '複数ホストのコンテナにまたがるネットワーク。';

  @override
  String get gameHintWord239None => 'コンテナのネットワークを無効にする Docker ネットワークドライバー。';

  @override
  String get gameHintWord240Prune => '未使用のコンテナリソースを削除する。';

  @override
  String get gameHintWord241Replicaset => '望ましい Pod 数を維持する Kubernetes コントローラー。';

  @override
  String get gameHintWord242Service => 'Pod への安定したアクセスを提供する Kubernetes の抽象化。';

  @override
  String get gameHintWord243Endpoints => 'Kubernetes のサービスを支えるアドレス。';

  @override
  String get gameHintWord244Namespace => 'Kubernetes リソースをまとめる論理的なスコープ。';

  @override
  String get gameHintWord245Node => 'Kubernetes の Pod をホストするワーカーマシン。';

  @override
  String get gameHintWord246Kubelet => '各ノード上で Pod の実行を管理するエージェント。';

  @override
  String get gameHintWord247Pvc => '永続ストレージに対する Kubernetes のリクエスト。';

  @override
  String get gameHintWord248Apiserver => 'クラスターの API を公開する Kubernetes のコントロールプレーンコンポーネント。';

  @override
  String get gameHintWord249Role => 'ロールベースアクセス制御における名前付きの権限セット。';

  @override
  String get gameHintWord250Resourcequota => '名前空間内のリソース消費を制限する Kubernetes オブジェクト。';

  @override
  String get gameHintWord251Selector => 'ラベルによってリソースを一致させる式。';

  @override
  String get gameHintWord252Taint => '対応する toleration を持たない Pod を寄せ付けないノードの属性。';

  @override
  String get gameHintWord253Toleration => 'taint が付いたノードへのスケジューリングを許可する Pod の設定。';

  @override
  String get gameHintWord254Cordon => 'Kubernetes のノードをスケジュール不可にする。';

  @override
  String get gameHintWord255Uncordon => 'cordon されたノードを再びスケジュール可能にする。';

  @override
  String get gameHintWord256Drain => 'ノードのメンテナンス前にワークロードを安全に退避させる。';

  @override
  String get gameHintWord257Job => 'タスクを完了まで実行する Kubernetes のワークロード。';

  @override
  String get gameHintWord258Cronjob => 'スケジュールに従ってジョブを作成する Kubernetes のワークロード。';

  @override
  String get gameHintWord259Readiness => 'コンテナがトラフィックを受け取れるかを示すプローブ。';

  @override
  String get gameHintWord260Liveness => 'コンテナの再起動が必要かを示すプローブ。';

  @override
  String get gameHintWord261Canary => '新バージョンを一部のトラフィックにのみ公開するリリース手法。';

  @override
  String get gameHintWord262Rolling => '実行中のインスタンスを段階的に置き換える更新戦略。';

  @override
  String get gameHintWord263Rollback => '以前に正常だったアプリケーションのバージョンに戻す。';

  @override
  String get gameHintWord264Rollout => '新しいアプリケーションバージョンの段階的なデプロイ。';

  @override
  String get gameHintWord265Recreate => '古い Pod を停止してから置き換えを起動するデプロイ戦略。';

  @override
  String get gameHintWord266Blue => 'ブルーグリーンリリースにおける2つの環境の一方。';

  @override
  String get gameHintWord267Green => 'ブルーグリーンリリースにおけるもう一方の環境。';

  @override
  String get gameHintWord268Artifact => 'ビルドパイプラインが生成するバージョン付きの成果物。';

  @override
  String get gameHintWord269Staging => 'リリース検証に使う本番前の環境。';

  @override
  String get gameHintWord270Production => '実際のエンドユーザーにサービスを提供する環境。';

  @override
  String get gameHintWord271Release => '利用のために提供されるソフトウェアのバージョン。';

  @override
  String get gameHintWord272Version => 'ソフトウェアの改訂を区別する識別子。';

  @override
  String get gameHintWord273Revision => '文書やコードベースの識別可能なバージョン。';

  @override
  String get gameHintWord274Webhook => 'イベント発生時に送信される HTTP 通知。';

  @override
  String get gameHintWord275Runbook => 'システムの運用や復旧のために文書化された手順。';

  @override
  String get gameHintWord276Workspace => '作業中のプロジェクトリソースを含むディレクトリまたはスコープ。';

  @override
  String get gameHintWord277Credentials => 'システムにアクセスするために使う認証情報。';

  @override
  String get gameHintWord278Trigger => 'パイプラインを開始させるイベントまたは条件。';

  @override
  String get gameHintWord279Parameter => 'ジョブや関数に渡される名前付きの入力。';

  @override
  String get gameHintWord280Access => '認可の下でリソースを利用できる権限。';

  @override
  String get gameHintWord281Module => '再利用可能なインフラ定義のまとまり。';

  @override
  String get gameHintWord282Provider => '設定を外部の API に接続する Terraform のプラグイン。';

  @override
  String get gameHintWord283Resource => '設定内で宣言される管理対象のインフラオブジェクト。';

  @override
  String get gameHintWord284Variable => '設定やコードで使われる名前付きの入力値。';

  @override
  String get gameHintWord285Output => 'インフラ設定が返す公開された値。';

  @override
  String get gameHintWord286Tfstate => 'Terraform のステートスナップショットに関連するファイル拡張子。';

  @override
  String get gameHintWord287Tfvars => 'Terraform の入力変数の値に使われるファイル拡張子。';

  @override
  String get gameHintWord288Backend => 'ステートの保存先を制御する Terraform の設定。';

  @override
  String get gameHintWord289Plan => '提案されたインフラ変更の Terraform によるプレビュー。';

  @override
  String get gameHintWord290Apply => '提案された変更を実行する Terraform の操作。';

  @override
  String get gameHintWord291Destroy => '管理中のインフラを削除する Terraform の操作。';

  @override
  String get gameHintWord292Import => '既存のリソースをインフラ管理下に取り込む。';

  @override
  String get gameHintWord293Refresh => '記録された状態を実際のインフラと同期する。';

  @override
  String get gameHintWord294Validate => '設定の構文と内部の整合性を確認する。';

  @override
  String get gameHintWord295Fmt => '設定を標準的な書式に整える Terraform のコマンド。';

  @override
  String get gameHintWord296Init => 'Terraform のプロバイダーと作業ディレクトリを初期化する。';

  @override
  String get gameHintWord297Executor => 'ビルドを実行できる Jenkins のワーカースロット。';

  @override
  String get gameHintWord298Dependencies => 'あるコンポーネントが別のコンポーネントより先に必要となる関係。';

  @override
  String get gameHintWord299Drift => '宣言されたインフラ状態と実際の状態との差異。';

  @override
  String get gameHintWord300Locking => '複数の書き込み側が共有状態を同時に変更するのを防ぐ。';

  @override
  String get gameHintWord301Playbook => '自動化のプレイとタスクを記述した Ansible のドキュメント。';

  @override
  String get gameHintWord302Inventory => '管理対象のホストとグループをまとめた Ansible のコレクション。';

  @override
  String get gameHintWord303Facts => '管理対象ホストについて収集されたシステム情報。';

  @override
  String get gameHintWord304Task => '自動化における個々の作業単位。';

  @override
  String get gameHintWord305Handler => '変更の通知を受けて実行される Ansible のタスク。';

  @override
  String get gameHintWord306Notify => '変更のあったタスクの後にハンドラーをキューに入れる Ansible のディレクティブ。';

  @override
  String get gameHintWord307Become => '権限昇格を有効にする Ansible の設定。';

  @override
  String get gameHintWord308Vault => '機密性の高い自動化データを暗号化する Ansible の機能。';

  @override
  String get gameHintWord309Register => 'タスクの結果を変数に保存する Ansible のディレクティブ。';

  @override
  String get gameHintWord310When => 'タスクの条件付き実行を制御する Ansible のキーワード。';

  @override
  String get gameHintWord311Loop => 'コレクションに対して自動化タスクを繰り返す。';

  @override
  String get gameHintWord312Include => '再利用可能な自動化コンテンツを動的に読み込む。';

  @override
  String get gameHintWord313Tags => '自動化タスクの一部を選択するためのラベル。';

  @override
  String get gameHintWord314Template => 'デプロイ前に変数を埋め込んで生成されるファイル。';

  @override
  String get gameHintWord315Jinja => 'Ansible が使うテンプレート言語。';

  @override
  String get gameHintWord316Abstraction => '実装の詳細をより単純なインターフェースの背後に隠すこと。';

  @override
  String get gameHintWord317Agile => 'フィードバックを重視する反復型のソフトウェア提供手法。';

  @override
  String get gameHintWord318Puppet => '宣言型マニフェストを使う構成管理ツール。';

  @override
  String get gameHintWord319Airflow => 'ワークフローの DAG をスケジュール・オーケストレーションするプラットフォーム。';

  @override
  String get gameHintWord320Argo => 'GitOps のデリバリーコントローラーを含むクラウドネイティブのプロジェクト群。';

  @override
  String get gameHintWord321Rds => 'AWS のマネージドリレーショナルデータベースサービスの略称。';

  @override
  String get gameHintWord322Sqs => 'AWS のマネージドメッセージキューの略称。';

  @override
  String get gameHintWord323Sns => 'AWS のパブリッシュ・サブスクライブ型通知サービスの略称。';

  @override
  String get gameHintWord324Ses => 'AWS のメール送信サービスの略称。';

  @override
  String get gameHintWord325Iam => 'クラウドのアイデンティティおよびアクセス管理の略称。';

  @override
  String get gameHintWord326Kms => 'AWS の暗号鍵管理サービスの略称。';

  @override
  String get gameHintWord327Waf => 'アプリケーション層の Web リクエストをフィルタリングするファイアウォール。';

  @override
  String get gameHintWord328Eks => 'AWS のマネージド Kubernetes サービスの略称。';

  @override
  String get gameHintWord329Ecs => 'AWS のマネージドコンテナオーケストレーションサービスの略称。';

  @override
  String get gameHintWord330Ecr => 'AWS のコンテナイメージレジストリの略称。';

  @override
  String get gameHintWord331Aurora => 'MySQL と PostgreSQL 互換の AWS のリレーショナルデータベース。';

  @override
  String get gameHintWord332Redshift => 'AWS の分析用データウェアハウス。';

  @override
  String get gameHintWord333Neptune => 'AWS のマネージドグラフデータベース。';

  @override
  String get gameHintWord334Elasticache => 'AWS のマネージドインメモリキャッシュサービス。';

  @override
  String get gameHintWord335Athena => 'SQL でオブジェクトストレージのデータを問い合わせる AWS のサービス。';

  @override
  String get gameHintWord336Glue => 'AWS のサーバーレスデータ統合および ETL サービス。';

  @override
  String get gameHintWord337Emr => 'マネージドなビッグデータ処理クラスターのための AWS のプラットフォーム。';

  @override
  String get gameHintWord338Lambda => 'サーバー管理なしで関数を実行する AWS のサービス。';

  @override
  String get gameHintWord339Cloudfront => 'AWS のグローバルなコンテンツ配信ネットワーク。';

  @override
  String get gameHintWord340Cloudwatch => 'メトリクス、ログ、アラームを収集する AWS のサービス。';

  @override
  String get gameHintWord341Cloudshell => 'ブラウザベースの AWS のシェル環境。';

  @override
  String get gameHintWord342Codecommit => 'AWS のマネージド Git リポジトリサービス。';

  @override
  String get gameHintWord343Codebuild => 'ソースをコンパイルしビルドテストを実行する AWS のサービス。';

  @override
  String get gameHintWord344Codedeploy => 'AWS の自動アプリケーションデプロイサービス。';

  @override
  String get gameHintWord345Codepipeline => 'AWS の継続的デリバリーパイプラインサービス。';

  @override
  String get gameHintWord346Guardduty => 'AWS のインテリジェントな脅威検出サービス。';

  @override
  String get gameHintWord347Inspector => 'ワークロードの脆弱性を評価する AWS のサービス。';

  @override
  String get gameHintWord348Macie => 'オブジェクトストレージ内の機密データを検出する AWS のサービス。';

  @override
  String get gameHintWord349Shield => 'AWS のマネージド DDoS 保護サービス。';

  @override
  String get gameHintWord350Snowball => '大容量データ転送のための AWS の物理アプライアンス。';

  @override
  String get gameHintWord351Snowcone => 'AWS のオフライン転送ファミリーに属する小型の堅牢なデバイス。';

  @override
  String get gameHintWord352Datasync => 'AWS の自動オンラインデータ転送サービス。';

  @override
  String get gameHintWord353Msk => 'AWS のマネージド Apache Kafka サービスの略称。';

  @override
  String get gameHintWord354Backup => '復旧のために保持されるデータのコピー。';

  @override
  String get gameHintWord355Transcribe => '音声をテキストに変換する AWS のサービス。';

  @override
  String get gameHintWord356Translate => '言語間でテキストを翻訳する AWS のサービス。';

  @override
  String get gameHintWord357Rekognition => '画像や動画を分析する AWS のサービス。';

  @override
  String get gameHintWord358Comprehend => 'AWS の自然言語分析サービス。';

  @override
  String get gameHintWord359Textract => 'ドキュメントからテキストや表を抽出する AWS のサービス。';

  @override
  String get gameHintWord360Sagemaker => '機械学習モデルを構築・デプロイする AWS のプラットフォーム。';

  @override
  String get gameHintWord361Spanner => 'グローバルに分散された Google Cloud のリレーショナルデータベース。';

  @override
  String get gameHintWord362Pub => 'パブリッシュ・サブスクライブ型メッセージングの発行側。';

  @override
  String get gameHintWord363Sub => 'パブリッシュ・サブスクライブ型メッセージングの購読側。';

  @override
  String get gameHintWord364Functions => 'サーバーレスプラットフォームが提供するイベント駆動型のコード単位。';

  @override
  String get gameHintWord365App => 'ソフトウェアアプリケーションの短縮形。';

  @override
  String get gameHintWord366Engine => 'Compute Engine などの名称に含まれる実行コンポーネント。';

  @override
  String get gameHintWord367Compute => '仮想マシンやコンテナが提供する処理能力。';

  @override
  String get gameHintWord368Network => 'データをやり取りする相互接続されたシステム。';

  @override
  String get gameHintWord369Security => '脅威からシステムと情報を守ること。';

  @override
  String get gameHintWord370Identity => 'アクセス判断に使われるユーザーやサービスの表現。';

  @override
  String get gameHintWord371Monitoring => 'システムの健全性と挙動を継続的に観察すること。';

  @override
  String get gameHintWord372Logging => '個々のアプリケーションやシステムのイベントを記録すること。';

  @override
  String get gameHintWord373Trace => 'サービス呼び出しをまたぐリクエストの経路の記録。';

  @override
  String get gameHintWord374Metrics => 'システムの挙動を時間経過で測った数値。';

  @override
  String get gameHintWord375Alert => '監視対象の状態に注意が必要であることを知らせる通知。';

  @override
  String get gameHintWord376Billing => '利用したクラウドサービスの追跡と課金。';

  @override
  String get gameHintWord377Quota => '消費できるリソース量の上限。';

  @override
  String get gameHintWord378Region => 'アベイラビリティゾーンを含む、地理的なクラウドのデプロイ領域。';

  @override
  String get gameHintWord379Tenancy => '顧客がインフラをどのように共有するかを示す取り決め。';

  @override
  String get gameHintWord380Regional => 'クラウドのリージョンにスコープされたリソースを表す。';

  @override
  String get gameHintWord381Cosmos => 'グローバルに分散された Azure のマルチモデルデータベースの名前。';

  @override
  String get gameHintWord382Synapse => 'ウェアハウジングとデータ処理を組み合わせた Azure の分析プラットフォーム。';

  @override
  String get gameHintWord383Sentinel => 'Microsoft のクラウドネイティブなセキュリティ情報・イベント管理プラットフォーム。';

  @override
  String get gameHintWord384Defender => 'クラウドワークロードを保護する Microsoft のセキュリティ製品ファミリー。';

  @override
  String get gameHintWord385Entra => 'Azure AD のブランドに代わる Microsoft のアイデンティティ製品ファミリー。';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager の略称。';

  @override
  String get gameHintWord387Arc => '管理を Azure 外のリソースにまで広げる Azure のサービス。';

  @override
  String get gameHintWord388Aks => 'Azure のマネージド Kubernetes サービスの略称。';

  @override
  String get gameHintWord389Armor => 'Google Cloud の Web 保護サービス名の末尾部分。';

  @override
  String get gameHintWord390Blob => 'Azure のオブジェクトストレージのデータ型。';

  @override
  String get gameHintWord391Files => 'マネージドなネットワークファイル共有を提供する Azure のサービス。';

  @override
  String get gameHintWord392Disk => '仮想マシンに接続されるブロックストレージデバイス。';

  @override
  String get gameHintWord393Function => '結果を返せる、呼び出し可能なコードのまとまり。';

  @override
  String get gameHintWord394Logic => 'ワークフロー統合のための Azure のアプリサービスカテゴリ。';

  @override
  String get gameHintWord395Insights => 'Azure のアプリケーションテレメトリ製品名の末尾部分。';

  @override
  String get gameHintWord396Traffic => 'ネットワークのエンドポイント間を流れるデータ。';

  @override
  String get gameHintWord397Manager => 'コントロールプレーンを指す Azure Resource 製品名の末尾部分。';

  @override
  String get gameHintWord398Bastion => 'プライベートホストにアクセスするための、管理された堅牢な入口。';

  @override
  String get gameHintWord399Front => 'Azure のグローバルエントリポイントサービス Front Door の最初の単語。';

  @override
  String get gameHintWord400Door => 'Azure のグローバルエントリポイントサービス Front Door の2番目の単語。';

  @override
  String get gameHintWord401Javascript => 'ブラウザや Node ランタイムで広く使われるプログラミング言語。';

  @override
  String get gameHintWord402Perl => 'テキスト処理と正規表現で知られるスクリプト言語。';

  @override
  String get gameHintWord403Powershell => 'Microsoft のオブジェクト指向シェル兼自動化言語。';

  @override
  String get gameHintWord404Java => 'Jenkins の実装に使われる JVM 言語。';

  @override
  String get gameHintWord405Json => 'オブジェクトと配列を持つ軽量なデータ形式。';

  @override
  String get gameHintWord406Xml => '入れ子の名前付きタグを使うマークアップ形式。';

  @override
  String get gameHintWord407Html => 'Web ページを構造化するマークアップ言語。';

  @override
  String get gameHintWord408Css => 'Web の見た目を制御するスタイルシート言語。';

  @override
  String get gameHintWord409String => '文字の並び。';

  @override
  String get gameHintWord410Array => 'インデックス付きの要素のコレクション。';

  @override
  String get gameHintWord411Hash => 'Ruby と Perl における連想的なキーバリューコレクション。';

  @override
  String get gameHintWord412Object => 'プロパティと振る舞いを持つ実行時の値。';

  @override
  String get gameHintWord413Class => 'クラスベースの言語でオブジェクトを生成するための定義。';

  @override
  String get gameHintWord414Method => 'オブジェクトやクラスに関連付けられた関数。';

  @override
  String get gameHintWord415Interface => 'コンポーネントが公開する操作を記述した取り決め。';

  @override
  String get gameHintWord416Subclass => '別のクラスから派生したクラス。';

  @override
  String get gameHintWord417Super => '親クラスの動作を呼び出すためのキーワード。';

  @override
  String get gameHintWord418Protected => 'クラスに関連するコンテキストにアクセスを限定する可視性レベル。';

  @override
  String get gameHintWord419Exception => '通常の制御フローを中断する実行時の状態。';

  @override
  String get gameHintWord420Regex => 'テキストの照合に使うパターン表記。';

  @override
  String get gameHintWord421Lexical => 'ソースコードの構造によって決まるスコープを表す。';

  @override
  String get gameHintWord422Scalar => 'Perl における単一の値を持つ変数のカテゴリ。';

  @override
  String get gameHintWord423Tuple => 'Python の変更不可な順序付きコレクション。';

  @override
  String get gameHintWord424List => 'Python の変更可能な順序付きコレクション。';

  @override
  String get gameHintWord425Dict => 'Python の組み込みマッピング型の名前。';

  @override
  String get gameHintWord426Dictionary => 'キーと対応する値を対応付けるコレクション。';

  @override
  String get gameHintWord427Set => '重複しない値のコレクション。';

  @override
  String get gameHintWord428Boolean => '真または偽を表すデータ型。';

  @override
  String get gameHintWord429Integer => '整数を表す数値型。';

  @override
  String get gameHintWord430Float => '浮動小数点値を表す数値型。';

  @override
  String get gameHintWord431Double => '倍精度浮動小数点型。';

  @override
  String get gameHintWord432Null => 'オブジェクトや結果が存在しないことを表す値。';

  @override
  String get gameHintWord433Undefined => '代入された値がないことを示す JavaScript の値。';

  @override
  String get gameHintWord434Promise => '最終的な非同期の結果を表す JavaScript のオブジェクト。';

  @override
  String get gameHintWord435Async => '非同期関数であることを示すキーワード。';

  @override
  String get gameHintWord436Await => '非同期の結果を待つキーワード。';

  @override
  String get gameHintWord437Callback => '別の処理から呼び出されるように渡される関数。';

  @override
  String get gameHintWord438Closure => '周囲のレキシカルスコープへのアクセスを保持する関数。';

  @override
  String get gameHintWord439Generator => 'yield された値によって遅延的に列を生成する関数。';

  @override
  String get gameHintWord440Iterator => 'コレクション内の値を順に進めるオブジェクト。';

  @override
  String get gameHintWord441Print => '値を出力に書き出す一般的な関数。';

  @override
  String get gameHintWord442Input => '標準入力から1行を読み取る Python の関数。';

  @override
  String get gameHintWord443Open => 'ファイルハンドルを取得するために使う関数。';

  @override
  String get gameHintWord444Close => '開いているファイルや接続を解放する操作。';

  @override
  String get gameHintWord445Read => 'ストリームやファイルからデータを取得する操作。';

  @override
  String get gameHintWord446Write => 'ストリームやファイルにデータを送る操作。';

  @override
  String get gameHintWord447Append => 'コレクションの末尾に要素を追加する。';

  @override
  String get gameHintWord448Split => '区切り文字を使ってテキストを部分文字列に分割する。';

  @override
  String get gameHintWord449Join => '区切り文字を使って文字列の並びを結合する。';

  @override
  String get gameHintWord450Strip => 'Python の文字列から前後の空白を取り除く。';

  @override
  String get gameHintWord451Chomp => 'Perl や Ruby で末尾のレコード区切りを取り除く。';

  @override
  String get gameHintWord452Map => 'コレクションの各要素に変換を適用する。';

  @override
  String get gameHintWord453Filter => '述語を満たすコレクションの要素だけを残す。';

  @override
  String get gameHintWord454Reduce => 'コレクションを1つの累積結果にまとめる。';

  @override
  String get gameHintWord455Range => '整数の等差数列を表す Python の型。';

  @override
  String get gameHintWord456Length => 'コレクションのサイズを返すプロパティまたはメソッド。';

  @override
  String get gameHintWord457Len => 'コレクションのサイズを返す Python の組み込み関数。';

  @override
  String get gameHintWord458Type => 'オブジェクトの型を返す Python の関数。';

  @override
  String get gameHintWord459Isinstance => '型の階層に属しているかを調べる Python の関数。';

  @override
  String get gameHintWord460Yield => 'ジェネレーターから値を生成するキーワード。';

  @override
  String get gameHintWord461Saas => '完全なソフトウェアアプリケーションを提供するクラウドモデル。';

  @override
  String get gameHintWord462Paas => 'マネージドなアプリケーション開発プラットフォームを提供するクラウドモデル。';

  @override
  String get gameHintWord463Iaas => '仮想のコンピュート、ストレージ、ネットワークを提供するクラウドモデル。';

  @override
  String get gameHintWord464Hybrid => 'プライベートとパブリックのインフラを組み合わせるクラウドのアプローチ。';

  @override
  String get gameHintWord465Archive => 'アクセス頻度の低いデータの長期保存。';

  @override
  String get gameHintWord466Public => '複数の顧客にサービスを提供するクラウドの所有モデル。';

  @override
  String get gameHintWord467Private => '単一の組織専用のクラウドモデル。';

  @override
  String get gameHintWord468Scalability => 'リソースを追加して増大する負荷に対応できる能力。';

  @override
  String get gameHintWord469Availability => '必要なときにサービスへアクセスできる度合い。';

  @override
  String get gameHintWord470Resilience => '障害に耐え、そこから回復する能力。';

  @override
  String get gameHintWord471Redundancy => '単一障害点を減らすための重複したコンポーネント。';

  @override
  String get gameHintWord472Disaster => '復旧戦略で対処する大規模な障害。';

  @override
  String get gameHintWord473Recovery => '障害後にサービスやデータを復元すること。';

  @override
  String get gameHintWord474Replicate => 'データやワークロードを別の場所にコピーする。';

  @override
  String get gameHintWord475Snapshotting => 'データやシステム状態の特定時点のコピーを取ること。';

  @override
  String get gameHintWord476Restore => '保存したコピーからデータを復旧する操作。';

  @override
  String get gameHintWord477Residency => '保存データの地理的な所在地を定める要件。';

  @override
  String get gameHintWord478Compliance => '必要な規制や組織の統制を満たすこと。';

  @override
  String get gameHintWord479Governance => 'テクノロジーの利用を統制する方針とプロセス。';

  @override
  String get gameHintWord480Audit => '記録された活動やコンプライアンスの証拠の確認。';

  @override
  String get gameHintWord481Token => '認可やアイデンティティを表す資格情報または記号。';

  @override
  String get gameHintWord482Oauth => '委任されたアクセスを可能にする認可フレームワーク。';

  @override
  String get gameHintWord483Saml => '企業のシングルサインオンによく使われる XML ベースの標準。';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell のパイプラインで使われる専用コマンド。';

  @override
  String get gameHintWord485Algorithm => '計算上の問題を解くための定められた手順。';

  @override
  String get gameHintWord486Key => '暗号化を制御したり保存データを識別したりする値。';

  @override
  String get gameHintWord487Alias => 'シェルコマンドやリソースの別名。';

  @override
  String get gameHintWord488Amend => '直前のコミットを置き換える Git のコミットオプション。';

  @override
  String get gameHintWord489Allsigned => '署名付きスクリプトを要求する PowerShell の実行ポリシー。';

  @override
  String get gameHintWord490Remotesigned => 'ダウンロードしたスクリプトに署名を要求する PowerShell のポリシー。';

  @override
  String get gameHintWord491Acl => 'ユーザーやシステムの権限を定義するリスト。';

  @override
  String get gameHintWord492Uid => 'Unix ユーザーに割り当てられる数値の識別子。';

  @override
  String get gameHintWord493Setgid => '実行時や継承時のグループ ID に影響するパーミッションビット。';

  @override
  String get gameHintWord494Setfacl => 'ファイルのアクセス制御リストを設定する Linux コマンド。';

  @override
  String get gameHintWord495Isolation => 'ワークロード同士が干渉しないようにする分離。';

  @override
  String get gameHintWord496Sighup => '設定の再読み込み要求によく使われる Unix のハングアップシグナル。';

  @override
  String get gameHintWord497Sigint => '一般に Control-C で生成される Unix の割り込みシグナル。';

  @override
  String get gameHintWord498Sigstop => '終了させずにプロセスを一時停止する Unix シグナル。';

  @override
  String get gameHintWord499Secrets => 'パスワードやアクセスキーなどの機密値。';

  @override
  String get gameHintWord500Secure => '不正アクセスから保護された接続を表す。';

  @override
  String get fontSettingsTitle => 'フォント';

  @override
  String get fontChangeFont => 'フォントを変更';

  @override
  String get fontSystemDefault => 'システムのデフォルト';

  @override
  String get fontPreview => 'プレビュー';

  @override
  String get fontPreviewSample => '1問ずつDevOpsを学ぼう';

  @override
  String get fontSelected => '選択中';

  @override
  String get fontLatinOnlyNote => 'カスタムフォントはラテン文字に適用されます。その他の文字はデバイスのフォントで表示されます。';

  @override
  String get fontDescSystem => 'デバイスの標準フォント';

  @override
  String get fontDescGeometric => 'ジオメトリック・サンセリフ';

  @override
  String get fontDescGeometricRounded => '丸みのあるジオメトリック・サンセリフ';

  @override
  String get fontDescFriendly => '親しみやすいサンセリフ';

  @override
  String get fontDescCondensed => 'コンデンス';

  @override
  String get fontDescRounded => '丸みのあるサンセリフ';

  @override
  String get fontDescRoundedDisplay => '丸みのあるディスプレイ書体';

  @override
  String gameScene3dScene(String value1) {
    return '3Dシーン $value1';
  }
}
