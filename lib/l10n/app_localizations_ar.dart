// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTour => 'جولة في التطبيق';

  @override
  String get skipTour => 'تخطي الجولة';

  @override
  String get finishTour => 'إنهاء الجولة';

  @override
  String tourStep(int current, int total) {
    return 'الخطوة $current من $total';
  }

  @override
  String get tourMenuTitle => 'قائمة التنقل';

  @override
  String get tourSearch => 'اكتب موضوعًا هنا للعثور على فئات الاختبارات المناسبة.';

  @override
  String get tourCategory => 'اضغط على DevOps لاختبار مختلط. تقدم الفئات الأخرى مجموعات أسئلة. احفظ الأسئلة لمراجعتها لاحقًا.';

  @override
  String get tourMenu => 'اضغط على هذا الزر لفتح قائمة التنقل.';

  @override
  String get tourLearning => 'افتح التعلم لعرض البطاقات. اسحب في أي اتجاه أو اخلط البطاقات أو فعّل الانتقال التلقائي أو احفظ بطاقة.';

  @override
  String get tourGames => 'العب لكسب النقاط. تمنح الألعاب ذات المستويات 100 نقطة لكل مستوى مكتمل؛ ويكلف التلميح 20 نقطة.';

  @override
  String get tourAchievements => 'شاهد إنجازاتك هنا. تعلن النوافذ المنبثقة عن الإنجازات الجديدة والسمات المتاحة.';

  @override
  String get tourSettings => 'اختر اللغة والسمة والصوت. افتح البيانات المحفوظة لمراجعة المحفوظات أو جولة في التطبيق لإعادة هذا الدليل.';

  @override
  String get achievementUnlocked => 'تم فتح إنجاز!';

  @override
  String get themeUnlocked => 'سمة جديدة متاحة!';

  @override
  String get themeUnlockedMessage => 'يمكنك الآن اختيار هذه السمة من الإعدادات > السمات.';

  @override
  String get gameSounds => 'أصوات الألعاب';

  @override
  String get gameSoundsDescription => 'مؤثرات للألعاب والاختبارات. تحقق من مستوى الصوت والوضع الصامت في الجهاز.';

  @override
  String get testSound => 'اختبار الصوت';

  @override
  String get soundSettingBusy => 'يرجى الانتظار...';

  @override
  String get soundSettingError => 'تعذر تحميل إعداد الصوت أو حفظه. حاول مرة أخرى.';

  @override
  String get soundPlaybackError => 'تعذر تشغيل الصوت. تحقق من إعدادات الصوت في الجهاز أو المتصفح.';

  @override
  String get saveData => 'البيانات المحفوظة';

  @override
  String get learningTranslationUnavailable => 'لم تتم ترجمة هذه البطاقة إلى اللغة المحددة بعد.';

  @override
  String get saveQuestion => 'حفظ السؤال';

  @override
  String defaultPortQuestion(String service) {
    return 'ما المنفذ الافتراضي لـ $service؟';
  }

  @override
  String get removeSavedItem => 'إزالة من المحفوظات';

  @override
  String get noSavedData => 'لا توجد عناصر محفوظة بعد. احفظ بطاقات التعلم أو أسئلة الاختبار.';

  @override
  String get savedDataError => 'تعذر تحميل البيانات المحفوظة أو تحديثها. حاول مرة أخرى.';

  @override
  String get savedItemUnavailable => 'لم يعد هذا العنصر المحفوظ متاحًا.';

  @override
  String get correctAnswer => 'الإجابة الصحيحة';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get certificates => 'الشهادات';

  @override
  String get whatsNew => 'الجديد';

  @override
  String get settings => 'الإعدادات';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get language => 'اللغة';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get english => 'الإنجليزية';

  @override
  String get hindi => 'الهندية';

  @override
  String get marathi => 'الماراثية';

  @override
  String get startQuiz => 'ابدأ الاختبار';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'تغيير الفئة';

  @override
  String get dailyQuiz => 'الاختبار اليومي';

  @override
  String get dailyQuizCompleted => 'اكتمل الاختبار اليومي';

  @override
  String get dailyQuizCompletedMessage => 'لقد أكملت اختبار اليوم بالفعل.\n\nعد غدًا لتحدٍّ جديد!';

  @override
  String get leaderboard => 'لوحة المتصدرين';

  @override
  String get shareApp => 'مشاركة التطبيق';

  @override
  String get rateApp => 'قيّم التطبيق';

  @override
  String get about => 'حول';

  @override
  String get ok => 'حسنًا';

  @override
  String get home => 'الرئيسية';

  @override
  String get games => 'الألعاب';

  @override
  String get referAndEarn => 'ادعُ واربح';

  @override
  String get themes => 'المظاهر';

  @override
  String get version => 'الإصدار';

  @override
  String get developer => 'المطوّر';

  @override
  String get contact => 'التواصل';

  @override
  String get learning => 'التعلّم';

  @override
  String get linkedIn => 'لينكدإن';

  @override
  String get connectWithMe => 'تواصل معي';

  @override
  String get aboutDescription => 'يساعد DevOps Quiz المتعلمين على الاستعداد للمقابلات والشهادات من خلال آلاف الأسئلة المختارة بعناية حول Linux وDocker وKubernetes والشبكات وGit وJenkins وTerraform وAnsible وتقنيات DevOps الأخرى.';

  @override
  String get quizResult => 'نتيجة الاختبار';

  @override
  String get outstanding => 'ممتاز!';

  @override
  String get greatJob => 'عمل رائع!';

  @override
  String get goodEffort => 'مجهود جيد!';

  @override
  String get keepPracticing => 'واصل التدريب!';

  @override
  String get dontGiveUp => 'لا تستسلم!';

  @override
  String get shareMessage1 => 'حصلت على';

  @override
  String get shareMessage2 => 'في اختبار DevOps!';

  @override
  String get downloadApp => 'نزّل التطبيق:';

  @override
  String get score => 'الدرجة';

  @override
  String get points => 'النقاط';

  @override
  String get percentage => 'النسبة المئوية';

  @override
  String get bonus => 'مكافأة';

  @override
  String get perfectScoreBonus => 'مكافأة الدرجة الكاملة';

  @override
  String get shareScore => 'مشاركة النتيجة';

  @override
  String get restartQuiz => 'إعادة الاختبار';

  @override
  String get backToCategories => 'العودة إلى الفئات';

  @override
  String get greatProgress => 'أحسنت! أنت تحقق تقدمًا كبيرًا.';

  @override
  String get practiceMore => 'عمل جيد! قليل من التدريب وستحصل على درجة أعلى.';

  @override
  String get keepLearning => 'واصل التعلّم وحاول مرة أخرى. ستتحسن مع الممارسة.';

  @override
  String get everyExpertStarted => 'كل خبير بدأ مبتدئًا. تدرّب وعد أقوى!';

  @override
  String get quizInstructions => 'تعليمات الاختبار';

  @override
  String get instruction1 => 'تحتوي كل مجموعة على 25 سؤالًا.';

  @override
  String get instruction2 => 'لديك 30 ثانية لكل سؤال.';

  @override
  String get instruction3 => 'الأخضر = إجابة صحيحة.';

  @override
  String get instruction4 => 'الأحمر = إجابة خاطئة.';

  @override
  String get instruction5 => 'لا يمكن تغيير الإجابة.';

  @override
  String get instruction6 => 'زر الرجوع للمراجعة فقط.';

  @override
  String get instruction7 => 'تظهر النتيجة بعد الانتهاء.';

  @override
  String get instruction8 => '?? ????? ????? ????? 10 ????.';

  @override
  String excellentPerformance(Object expert) {
    return 'أداء ممتاز! أنت $expert.';
  }

  @override
  String get selectCategory => 'اختر الفئة';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'اختر المجموعة';

  @override
  String get set => 'المجموعة';

  @override
  String get questions => 'أسئلة';

  @override
  String get noScoresYet => 'لا توجد نتائج بعد';

  @override
  String get pointsShort => 'نقطة';

  @override
  String get welcomeToDevOpsQuiz => 'مرحبًا بك في DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'مرحبًا $name';
  }

  @override
  String get challengeMode => 'وضع التحدي';

  @override
  String get challenge => 'تحدٍّ';

  @override
  String get question => 'سؤال';

  @override
  String get reward => 'المكافأة';

  @override
  String get survivalMode => 'وضع البقاء';

  @override
  String get speedChallenge => 'تحدي السرعة';

  @override
  String get dailyChallenge => 'التحدي اليومي';

  @override
  String get ultimateChallenge => 'التحدي الأقصى';

  @override
  String get timeLeft => 'الوقت المتبقي';

  @override
  String get completed => 'مكتمل';

  @override
  String get locked => 'مقفل';

  @override
  String get back => 'رجوع';

  @override
  String get next => 'التالي';

  @override
  String get submit => 'إرسال';

  @override
  String get achievements => 'الإنجازات';

  @override
  String get streak => 'سلسلة الأيام';

  @override
  String get days => 'أيام';

  @override
  String get tomorrowsReward => 'مكافأة الغد';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 حصلت على $score/$totalQuestions في اختبار #DevOps اليوم!\n\n🏆 النقاط: $earnedPoints\n🔥 المكافأة: $bonusPoints\n📊 النسبة: $percentage%\n\nهل تستطيع تحطيم رقمي؟\n\nنزّل التطبيق:';
  }

  @override
  String get gameUiSpinWheel => 'أدر العجلة';

  @override
  String get gameUiSpinAndWinBonusPoints => 'أدر واربح نقاطًا إضافية';

  @override
  String get gameUiScratchCard => 'بطاقة الخدش';

  @override
  String get gameUiScratchToRevealAReward => 'اخدش لتكشف عن مكافأة';

  @override
  String get gameUiLuckySlots => 'ماكينة الحظ';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'أدر الخانات واربح نقاطًا';

  @override
  String get gameUiMysteryDeal => 'الصفقة الغامضة';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'اختر صندوقًا غامضًا وأجب';

  @override
  String get gameUiMemoryMatch => 'مطابقة الذاكرة';

  @override
  String get gameUiMatchDevOpsPairs => 'طابق أزواج DevOps';

  @override
  String get gameUiWordGuess => 'تخمين الكلمة';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'خمّن كلمات DevOps عبر المستويات';

  @override
  String get gameUiFindWords => 'ابحث عن الكلمات';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'ابحث في شبكة عن مصطلحات DevOps المخفية';

  @override
  String get gameUiSpotTheDifference => 'اكتشف الاختلاف';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'اعثر على خمسة تغييرات بين مشهدين مصورين';

  @override
  String get gameUiJigsawPuzzle => 'أحجية الصور المقطعة';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'أعد تركيب صور HD مشتركة للحيوانات والطبيعة';

  @override
  String get gameUiHighOrLow => 'أعلى أم أدنى';

  @override
  String get gameUiBuildAStreak => 'ابنِ سلسلة انتصارات';

  @override
  String get gameUiTrueOrFalseBlitz => 'سباق صح أم خطأ';

  @override
  String get gameUiQuickAnswerQuiz => 'اختبار الإجابة السريعة';

  @override
  String get gameUiCommandMatch => 'مطابقة الأوامر';

  @override
  String get gameUiMatchCommandsToMeanings => 'طابق الأوامر مع معانيها';

  @override
  String get gameUiPortMaster => 'خبير المنافذ';

  @override
  String get gameUiGuessDefaultPorts => 'خمّن المنافذ الافتراضية';

  @override
  String get gameUiTicTacToe => 'إكس أو';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X إكس أو ضد الكمبيوتر';

  @override
  String get gameUiConnectFour => 'أربعة في صف';

  @override
  String get gameUiDropFourDiscs => 'أسقط أربعة أقراص';

  @override
  String get gameUiLudo => 'لودو';

  @override
  String get gameUiRaceAgainstBots => 'تسابق ضد الروبوتات';

  @override
  String get gameUiChess => 'الشطرنج';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'رقعة شطرنج بحركات قانونية للاعبين اثنين';

  @override
  String get gameUiSnakeAndLadders => 'الثعابين والسلالم';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'لوحة نرد بثعابين وسلالم للاعبين اثنين';

  @override
  String get gameUiGames => 'الألعاب 🎮';

  @override
  String get gameUiPlayEarn => 'العب واكسب';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'العب الألعاب واكسب نقاطًا إضافية!';

  @override
  String get gameUiSearchGames => 'ابحث في الألعاب';

  @override
  String get gameUiClearSearch => 'مسح البحث';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'لا توجد ألعاب مطابقة لـ \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'أدر واربح نقاطًا إضافية.';

  @override
  String get gameUiScratchToRevealYourReward => 'اخدش لتكشف عن مكافأتك.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'أدر الخانات واربح نقاطًا.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'اختر صندوقًا غامضًا وأجب بشكل صحيح لتربح نقاطًا.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'طابق أزواج DevOps لتكسب نقاطًا.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'خمّن مصطلح DevOps في 6 محاولات.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'ابحث في شبكة عن مصطلحات DevOps المخفية.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'اسحب للعثور على كلمات DevOps في 500 مستوى.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'اعثر على خمسة تغييرات بين مشهدين مصورين.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'أعد تركيب صور HD مشتركة للحيوانات والطبيعة.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'ابنِ سلسلة انتصارات واحتفظ بنقاطك.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'اسبق الوقت بإجابات سريعة.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'سباق صح أم خطأ 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'طابق الأوامر مع وظائفها.';

  @override
  String get gameUiCommandMatch670a76e => 'مطابقة الأوامر 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'خمّن المنافذ الافتراضية مع 3 أرواح.';

  @override
  String get gameUiPortMaster8f5fd42 => 'خبير المنافذ 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'العب O/X ضد الكمبيوتر.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'أسقط أربعة أقراص في صف واحد لتفوز.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'سابق بقطعك ثلاثة روبوتات.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'شطرنج محلي للاعبين اثنين بحركات قانونية.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'العب مباراة شطرنج قانونية للاعبين اثنين.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'لعبة لوحية بالنرد للاعبين اثنين.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'سباق إلى 100. اصعد السلالم وتجنب الثعابين.';

  @override
  String get gameUiPlay => 'العب';

  @override
  String get gameUiWheelStopped => 'توقفت العجلة!';

  @override
  String get gameUiYourRewardIs => 'مكافأتك هي';

  @override
  String get gameUiPOINTS => 'نقاط';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'أجب عن 1 من أسئلة الاختبار بشكل صحيح للحصول على هذه المكافأة.';

  @override
  String get gameUiWrongAnswerRewardLost => 'إجابة خاطئة = ضياع المكافأة.';

  @override
  String get gameUiAnswerQuestion => 'أجب عن السؤال';

  @override
  String get gameUiSpinWheele449982 => '🎡 أدر العجلة';

  @override
  String get gameUiDailySpin => 'الدوران اليومي';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'أدر العجلة، ثم أجب عن سؤال للحصول على مكافأتك!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'لقد استخدمت دورانك لهذا اليوم بالفعل.';

  @override
  String get gameUiSpinning => 'جارٍ الدوران...';

  @override
  String get gameUiSPINNOW => 'أدر الآن';

  @override
  String get gameUiCOMEBACKTOMORROW => 'عد غدًا';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'مكافأة اليوم: ⭐ $value1 نقطة';
  }

  @override
  String get gameUiBackToGames => 'العودة إلى الألعاب';

  @override
  String get gameUiSPIN => 'أدر';

  @override
  String get gameUiRewardRevealed => 'تم الكشف عن المكافأة!';

  @override
  String get gameUiYouFound => 'لقد وجدت';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ بطاقة الخدش';

  @override
  String get gameUiDailyScratch => 'الخدش اليومي';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'اخدش البطاقة لتكشف عن مكافأة اليوم!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'لقد استخدمت بطاقة الخدش لهذا اليوم بالفعل.';

  @override
  String get gameUiAlreadyScratched => 'تم الخدش بالفعل';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'عد غدًا للحصول على مكافأة أخرى.';

  @override
  String get gameUiYouRevealed => 'لقد كشفت';

  @override
  String get gameUiSCRATCHHERE => 'اخدش هنا  👆';

  @override
  String get gameUiJACKPOT777 => 'الجائزة الكبرى 777!';

  @override
  String get gameUiLucky777 => '777 المحظوظ!';

  @override
  String get gameUiYourReward => 'مكافأتك';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 ماكينة الحظ';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'أدر الخانات، ثم أجب عن سؤال للحصول على المكافأة!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'لقد لعبت اليوم بالفعل.';

  @override
  String get gameUiSPINNING => 'جارٍ الدوران...';

  @override
  String get gameUiROLLNOW => 'ارمِ الآن';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 الجائزة الكبرى! 777 نقطة متاحة!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'تعذّر التحقق من حالة الصفقة الغامضة: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'صندوق $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 نقطة';
  }

  @override
  String get gameUiStartQuestion => 'ابدأ السؤال';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 الصفقة الغامضة';

  @override
  String get gameUiMysteryDealCompleted => 'اكتملت الصفقة الغامضة!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'لقد لعبت الصفقة الغامضة اليوم بالفعل.';

  @override
  String get gameUiTodayYouWon => 'ربحت اليوم';

  @override
  String get gameUiTodaySReward => 'مكافأة اليوم';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 نقطة';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return 'خسرت $value1 نقطة';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'عد غدًا للحصول على صندوق غامض آخر!';

  @override
  String get gameUiChooseYourMysteryBox => 'اختر صندوقك الغامض';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'يحتوي كل صندوق على مكافأة مخفية بين 10 و1000 نقطة.';

  @override
  String get gameUiPickOnlyOneBox => 'اختر صندوقًا واحدًا فقط!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'اكتملت جميع المستويات ($value1)!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'اكتمل المستوى $value1!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'اكتمل في $value1 حركة.\nلقد ربحت $value2 نقطة!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'اكتمل في $value1 حركة.\nتم اجتياز هذا المستوى مسبقًا.';
  }

  @override
  String get gameUiNextLevel => 'المستوى التالي';

  @override
  String get gameUiDone => 'تم';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'مطابقة الذاكرة 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'اكتملت جميع المستويات الـ100!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'لقد أكملت كل مستويات مطابقة الذاكرة. أحسنت اللعب!';

  @override
  String get gameUiChooseLevel => 'اختر المستوى';

  @override
  String gameUiMoves(String value1) {
    return 'الحركات: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'المستوى $value1 من $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 أزواج';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'احفظ المستوى $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'اعثر على $value1 أزواج متطابقة';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'شعار DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'الفصل 1 · استعادة مسار البناء';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'الفصل 2 · توسيع نطاق المنصة السحابية';

  @override
  String get gameUiChapter3ProtectProduction => 'الفصل 3 · حماية بيئة الإنتاج';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'استخدم جميع الأحرف المتبقية ($value1) للإرسال.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'اكتملت جميع المستويات!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'اكتمل المستوى $value1!';
  }

  @override
  String get gameUiTryAgain => 'حاول مرة أخرى';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'الكلمة كانت $value1. لقد ربحت $value2 نقطة.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'الكلمة كانت $value1. لقد ربحت $value2 نقطة بعد $value3 تلميح.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'الكلمة كانت $value1. لقد ربحت $value2 نقطة بعد $value3 تلميحات.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'الكلمة كانت $value1. المستوى $value2 لا يزال في انتظارك.';
  }

  @override
  String get gameUiFinish => 'إنهاء';

  @override
  String get gameUiNextLevel254fd73 => 'المستوى التالي';

  @override
  String get gameUiRetryLevel => 'أعد المستوى';

  @override
  String get gameUiHowToPlay => 'كيفية اللعب';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'يحتوي كل مستوى على كلمة واحدة من DevOps. الكلمات الأقصر من خمسة أحرف تبدأ بدون أحرف مجانية، أما الكلمات الأطول فتبدأ بحرف واحد. استخدم رف الأحرف لتكوين الإجابة ثم اضغط Enter. تكشف التلميحات حرفًا آخر وتكلّف 20 نقطة تُخصم من رصيدك. كل مستوى مكتمل يمنحك 100 نقطة.';

  @override
  String get gameUiGotIt => 'فهمت';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'اكتملت جميع المستويات ($value1)!';
  }

  @override
  String get gameUiEasy => 'سهل';

  @override
  String get gameUiMedium => 'متوسط';

  @override
  String get gameUiHard => 'صعب';

  @override
  String get gameUiHowToPlay13a6b22 => 'كيفية اللعب';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'المستوى $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'المكافأة $value1 نقطة · التلميحات المستخدمة $value2';
  }

  @override
  String get gameUiHint20Pts => 'تلميح · −20 نقطة';

  @override
  String get gameUiEnter => 'إدخال';

  @override
  String get gameUiDelete => 'حذف';

  @override
  String get gameUiDragThroughAWord => 'اسحب عبر كلمة';

  @override
  String get gameUiDragThroughEachWord => 'اسحب عبر كل كلمة';

  @override
  String get gameUiReleaseToSelect => 'حرّر للتحديد';

  @override
  String gameUiFound(String value1) {
    return 'تم العثور على $value1';
  }

  @override
  String get gameUiNoWordThere => 'لا توجد كلمة هناك';

  @override
  String gameUiAlreadyFound(String value1) {
    return 'تم العثور على $value1 مسبقًا';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'ابحث عن $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'اكتملت جميع المستويات!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'لقد عثرت على كل الكلمات وربحت $value1 نقطة.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'لقد عثرت على كل الكلمات. تم اجتياز هذا المستوى مسبقًا.';

  @override
  String get gameUiAll500LevelsComplete => 'اكتملت جميع المستويات الـ500!';

  @override
  String get gameUiReviewLevels => 'مراجعة المستويات';

  @override
  String gameUiLeft(String value1) {
    return 'متبقٍ $value1';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 نقطة';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'تعذّر حفظ التقدم. يرجى المحاولة مرة أخرى.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'لقد ربحت $value1 نقطة!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'لقد أكملت هذه الصورة بالفعل. لا نقاط إضافية عند إعادة اللعب.';

  @override
  String get gameUiYouCompletedEveryPicture => 'لقد أكملت كل الصور!';

  @override
  String get gameUiLevels => 'المستويات';

  @override
  String get gameUiPictureB => 'الصورة ب';

  @override
  String get gameUiPictureA => 'الصورة أ';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'تعذّر تحميل الصورة. أعد المحاولة';

  @override
  String get gameUiResetZoom => 'إعادة تعيين التكبير';

  @override
  String get gameUiZoomBothPictures => 'تكبير الصورتين معًا';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'تلميح · $value1 نقطة لكل تلميح';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'تعذّر تحميل التقدم. أعد المحاولة';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'المستوى $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'تم العثور على جميع الاختلافات!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'اعثر على $count اختلافات. اضغط على كل واحد منها في أي من الصورتين.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'الأخطاء: $value1  ·  التلميحات: $value2 (−$value3 نقطة)  ·  $value4 مستويات مكتملة';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'المستوى التالي: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'اكتمل اللغز $value1!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'اكتملت الصورة في $value1 حركة. لقد ربحت $value2 نقطة.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'اكتملت الصورة في $value1 حركة.';
  }

  @override
  String get gameUiNextPuzzle => 'اللغز التالي';

  @override
  String get gameUiAllPuzzlesComplete => 'اكتملت جميع الألغاز';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'قطعة اللغز $value1 من $value2، في مكانها الصحيح';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'قطعة اللغز $value1 من $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'اختر اللغز';

  @override
  String get gameUiShufflePieces => 'اخلط القطع';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'تعذّر تحميل صورة الأحجية.';

  @override
  String get gameUiPreviousPuzzle => 'الأحجية السابقة';

  @override
  String gameUiPuzzle(String value1) {
    return 'الأحجية $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 حركات';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'اسحب القطع لتبديلها، أو اضغط على قطعتين.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return 'تم حل $value1 / $value2 أحجية  ·  $value3 نقاط لكل منها';
  }

  @override
  String get gameUiGameOver => 'انتهت اللعبة';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'كان الرقم $value1.\nالسلسلة: $value2\nلقد ربحت $value3 نقطة!\n\nعد غدًا لفرصة أخرى!';
  }

  @override
  String get gameUiHigherOrLower => 'أعلى أم أقل 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'لقد لعبت اليوم بالفعل!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'لقد لعبت في $value1/$value2/$value3.\n\nعد غدًا لبناء سلسلة جديدة!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'لقد لعبت اليوم بالفعل.\n\nعد غدًا لفرصة أخرى!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 السلسلة: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ النقاط: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'هل سيكون الرقم التالي أعلى أم أقل؟';

  @override
  String get gameUiLower => 'أقل';

  @override
  String get gameUiHigher => 'أعلى';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'صح أم خطأ سريع ⚡';

  @override
  String get gameUiTimeSUp => 'انتهى الوقت!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'الإجابات الصحيحة: $value1\nأفضل سلسلة: $value2\n$value3لقد ربحت $value4 نقطة!\n\nعد غدًا لجولة أخرى!';
  }

  @override
  String get gameUiStreakBonus20 => 'مكافأة السلسلة: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'هل الإجابة المعروضة صحيحة أم خاطئة؟';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 سؤالًا في $value2 فئات';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'لديك $value1 ثانية. كل إجابة صحيحة تمنحك $value2 نقاط. الإجابة الخاطئة تكلّفك $value3 ثوانٍ. حقق سلسلة من 5 للحصول على مكافأة +20.';
  }

  @override
  String get gameUiRoundTimer => 'مؤقت الجولة';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 ثانية';
  }

  @override
  String get gameUiStart => 'ابدأ';

  @override
  String get gameUiTrue => 'صح';

  @override
  String get gameUiFalse => 'خطأ';

  @override
  String get gameUiCommandMatch26b0e70 => 'مطابقة الأوامر 🔗';

  @override
  String get gameUiAllMatched => 'تمت مطابقة الكل!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'الأخطاء: $value1\nلقد ربحت $value2 نقطة!\n\nعد غدًا لأوامر جديدة!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'الجولة $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'اضغط على أمر، ثم اضغط على معناه.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'الآن اضغط على المعنى المطابق.';

  @override
  String get gameUiPortMaster9c730cf => 'خبير المنافذ 🔌';

  @override
  String get gameUiPortMastera796b69 => 'خبير المنافذ!';

  @override
  String get gameUiOutOfLives => 'نفدت الأرواح';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'الإجابات الصحيحة: $value1\nلقد ربحت $value2 نقطة!\n\nعد غدًا لجولة أخرى!';
  }

  @override
  String get gameUiYouEarned10Points => 'لقد ربحت 10 نقاط!';

  @override
  String get gameUiYouWin => 'لقد فزت!';

  @override
  String gameUiWins(String value1) {
    return 'فاز $value1!';
  }

  @override
  String get gameUiXWins => 'فاز X!';

  @override
  String gameUiXWins8443126(String value1) {
    return 'فاز $value1 (X)!';
  }

  @override
  String get gameUiComputerWins => 'فاز الكمبيوتر';

  @override
  String get gameUiOWins => 'فاز O!';

  @override
  String get gameUiPlayer2OWins => 'فاز اللاعب 2 (O)!';

  @override
  String get gameUiItSADraw => 'تعادل';

  @override
  String get gameUiYourTurn => 'دورك';

  @override
  String gameUiSTurn(String value1) {
    return 'دور $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'الكمبيوتر يفكر';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'دور اللاعب $value1 للعب';
  }

  @override
  String gameUiToMove(String value1) {
    return 'دور $value1 للعب';
  }

  @override
  String get gameUiPlayer2ToMove => 'دور اللاعب 2 للعب';

  @override
  String get gameUiNewRound => 'جولة جديدة';

  @override
  String get gameUiVsComputer => 'ضد الكمبيوتر';

  @override
  String get gameUi2Players => '2 لاعبين';

  @override
  String get gameUiYou => 'أنت';

  @override
  String get gameUiDraws => 'التعادلات';

  @override
  String get gameUiPlayer2 => 'اللاعب 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'الخلية $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'العب مرة أخرى';

  @override
  String get gameUiConnectFourWin20Points => 'فوز في أربعة في صف: 20 نقطة!';

  @override
  String get gameUiBotWins => 'فاز الروبوت!';

  @override
  String get gameUiRed => 'أحمر';

  @override
  String get gameUiYellow => 'أصفر';

  @override
  String get gameUiBoardFullDraw => 'اللوحة ممتلئة — تعادل';

  @override
  String get gameUiBotIsThinking => 'الروبوت يفكر';

  @override
  String get gameUiBotTurn => 'دور الروبوت';

  @override
  String get gameUiNewGame => 'لعبة جديدة';

  @override
  String get gameUiVsBot => 'ضد الروبوت';

  @override
  String get gameUi2Player => '2 لاعبين';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'العب ضد الروبوت · اضغط على عمود لإسقاط قرص';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'لاعبان · اضغط على عمود لإسقاط قرص';

  @override
  String gameUiColumn(String value1) {
    return 'العمود $value1';
  }

  @override
  String get gameUiYouRed => 'أنت · أحمر';

  @override
  String get gameUiRedPlayer1 => 'أحمر · اللاعب 1';

  @override
  String get gameUiBotYellow => 'الروبوت · أصفر';

  @override
  String get gameUiYellowPlayer2 => 'أصفر · اللاعب 2';

  @override
  String get gameUiLudoMatchStats => 'إحصائيات مباريات لودو';

  @override
  String get gameUiNoCompletedMatchesYet => 'لا توجد مباريات مكتملة بعد.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'لُعبت $value1  ·  فاز $value2  ·  خسر $value3';
  }

  @override
  String get gameUiClose => 'إغلاق';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'بطل لودو! لقد ربحت 50 نقطة.';

  @override
  String get gameUiNewLudoGame => 'لعبة لودو جديدة';

  @override
  String get gameUiBotOpponents => 'الروبوتات المنافسة';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'بدء مباراة جديدة يستبدل لعبتك المحفوظة.';

  @override
  String get gameUiCancel => 'إلغاء';

  @override
  String get gameUiStartGame => 'ابدأ اللعبة';

  @override
  String get gameUiPlayerColours => 'ألوان اللاعبين';

  @override
  String get gameUiApply => 'تطبيق';

  @override
  String get gameUiMatchStats => 'إحصائيات المباراة';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return 'فاز $value1 بالكش مات';
  }

  @override
  String get gameUiBlack => 'أسود';

  @override
  String get gameUiWhite => 'أبيض';

  @override
  String get gameUiComputerWinsByCheckmate => 'فاز الكمبيوتر بالكش مات';

  @override
  String get gameUiYouWinByCheckmate => 'فزت بالكش مات';

  @override
  String get gameUiDrawByStalemate => 'تعادل بالجمود';

  @override
  String get gameUiDraw => 'تعادل';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · كش';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'كش مات! لقد ربحت 50 نقطة.';

  @override
  String get gameUiStartANewGame => 'هل تريد بدء لعبة جديدة؟';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'تغيير وضع اللاعبين يستبدل المباراة المحفوظة.';

  @override
  String get gameUiComputer => 'الحاسوب';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · الأبيض / اللاعب 2 · الأسود';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'أنت الأبيض · الحاسوب هو الأسود';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (الأبيض) · الحاسوب (الأسود)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'أنت الأسود · الحاسوب هو الأبيض';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (الأسود) · الحاسوب (الأبيض)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 يرمي أولاً';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 يرمي مرة أخرى';
  }

  @override
  String gameUiToRoll(String value1) {
    return 'دور $value1 للرمي';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'الفوز في لعبة الثعابين والسلالم: 100 نقطة!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'تغيير اللاعبين يستبدل اللعبة المحفوظة.';

  @override
  String get gameUiStartANewLevel => 'هل تريد بدء مستوى جديد؟';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'تغيير المستوى يستبدل اللعبة المحفوظة.';

  @override
  String get gameUiChangeLevel => 'تغيير المستوى';

  @override
  String get gameUiPlayers => 'اللاعبون';

  @override
  String get gameUiPlayAgainstBot => 'اللعب ضد الروبوت';

  @override
  String get gameUi3Players => '3 لاعبين';

  @override
  String get gameUi4Players => '4 لاعبين';

  @override
  String get gameUiLevel1709305 => 'المستوى';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'المستوى $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 لاعبين · المستوى $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · رمي';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 على $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'تعذر تحميل السؤال: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'إجابة صحيحة!';

  @override
  String get gameUiWrongAnswer => 'إجابة خاطئة';

  @override
  String get gameUiYouClaimedYourReward => 'لقد حصلت على مكافأتك!';

  @override
  String get gameUiAddedToYourTotalPoints => 'أُضيفت إلى إجمالي نقاطك.';

  @override
  String get gameUiTheCorrectAnswerWas => 'الإجابة الصحيحة كانت:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'فُقدت مكافأة $value1 نقطة.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'لم تُخصم نقاطك الحالية.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'عد غداً وحاول مرة أخرى.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'تعذر تحميل السؤال.';

  @override
  String get gameUiYourReward677fa6e => 'مكافأتك';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 نقطة';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'أجب بشكل صحيح للحصول عليها!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'عد غداً لجولة أخرى.';

  @override
  String get gameUiGreen => 'الأخضر';

  @override
  String get gameUiBlue => 'الأزرق';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 يفكر';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: اختر قطعة';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: ارمِ النرد';
  }

  @override
  String gameUiDice(String value1) {
    return 'النرد $value1';
  }

  @override
  String get gameUiRollDice => 'ارمِ النرد';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 القطعة $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'اللاعب $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'الروبوت $value1';
  }

  @override
  String get gameUiBot => 'الروبوت';

  @override
  String get gameUiHintInsufficientPoints => 'تحتاج إلى 20 نقطة لاستخدام تلميح.';

  @override
  String get gameUiHintPurchaseFailed => 'تعذّر شراء التلميح. يرجى المحاولة مرة أخرى.';

  @override
  String get gameUiChessKing => 'ملك';

  @override
  String get gameUiChessQueen => 'وزير';

  @override
  String get gameUiChessRook => 'قلعة';

  @override
  String get gameUiChessBishop => 'فيل';

  @override
  String get gameUiChessKnight => 'حصان';

  @override
  String get gameUiChessPawn => 'جندي';

  @override
  String get gameUiChessEmpty => 'فارغ';

  @override
  String get gameSceneLampAndFlowers => 'مصباح وزهور';

  @override
  String get gameSceneGardenFriends => 'أصدقاء الحديقة';

  @override
  String get gameSceneUnderwaterExplorers => 'مستكشفو أعماق البحار';

  @override
  String get gameSceneOceanOrca => 'حوت أوركا المحيط';

  @override
  String get gameSceneFoxInTheMeadow => 'ثعلب في المرج';

  @override
  String get gameSceneYellowSubmarine => 'غواصة صفراء';

  @override
  String get gameSceneTurkeyInTheClearing => 'ديك رومي في المساحة المفتوحة';

  @override
  String get gameSceneSafariWateringHole => 'مورد مياه في السفاري';

  @override
  String get gameSceneJungleCompanions => 'رفاق الغابة';

  @override
  String get gameSceneGoldenPuppyGarden => 'حديقة الجرو الذهبي';

  @override
  String get gameSceneSeaTurtleReef => 'شعاب السلحفاة البحرية';

  @override
  String get gameSceneCoralReefFriends => 'أصدقاء الشعاب المرجانية';

  @override
  String get gameSceneSharedClownfish => 'سمكة المهرّج المشتركة';

  @override
  String get gameSceneLittleDinosaur => 'الديناصور الصغير';

  @override
  String get gameSceneSafariCompanions => 'رفاق السفاري';

  @override
  String get gameSceneSwirlingFlowers => 'زهور دوّامة';

  @override
  String get gameSceneGardenKitten => 'قطة الحديقة الصغيرة';

  @override
  String get gameSceneBlueOcean => 'المحيط الأزرق';

  @override
  String get gameSceneCastlePrincess => 'أميرة القلعة';

  @override
  String get gameSceneRedCar => 'سيارة حمراء';

  @override
  String get gameSceneGardenPuppy => 'جرو الحديقة';

  @override
  String get gameSceneSpaceExplorer => 'مستكشف الفضاء';

  @override
  String get gameSceneEnchantedReadingForest => 'غابة القراءة المسحورة';

  @override
  String get gameSceneDevopsInfinityCycle => 'دورة اللانهاية في DevOps';

  @override
  String get gameSceneAnsible => 'أنسيبل (Ansible)';

  @override
  String get gameSceneAws => 'خدمات أمازون ويب (AWS)';

  @override
  String get gameSceneAzure => 'أزور (Azure)';

  @override
  String get gameSceneBashScripting => 'برمجة Bash النصية';

  @override
  String get gameSceneDocker => 'دوكر (Docker)';

  @override
  String get gameSceneGcp => 'منصة جوجل السحابية (GCP)';

  @override
  String get gameSceneGit => 'جيت (Git)';

  @override
  String get gameSceneHybridCloud => 'السحابة الهجينة';

  @override
  String get gameSceneIbmCloud => 'سحابة IBM (IBM Cloud)';

  @override
  String get gameSceneJavascript => 'جافاسكريبت (JavaScript)';

  @override
  String get gameSceneJenkins => 'جنكينز (Jenkins)';

  @override
  String get gameSceneKubernetes => 'كوبرنيتس (Kubernetes)';

  @override
  String get gameSceneLinux => 'لينكس (Linux)';

  @override
  String get gameSceneMultiCloud => 'السحابة المتعددة';

  @override
  String get gameSceneNetworking => 'الشبكات';

  @override
  String get gameSceneOracleCloud => 'سحابة أوراكل (Oracle Cloud)';

  @override
  String get gameScenePerl => 'بيرل (Perl)';

  @override
  String get gameScenePowershell => 'باورشيل (PowerShell)';

  @override
  String get gameScenePython => 'بايثون (Python)';

  @override
  String get gameSceneRuby => 'روبي (Ruby)';

  @override
  String get gameSceneTerraform => 'تيرافورم (Terraform)';

  @override
  String get gameSceneWinterFestivalFair => 'معرض مهرجان الشتاء';

  @override
  String get gameSceneArmoredHeroCloseUp => 'لقطة مقرّبة لبطل مدرّع';

  @override
  String get gameSceneArmoredHeroInCrimson => 'بطل مدرّع باللون القرمزي';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'أزهار البلوميريا الداكنة';

  @override
  String get gameSceneMangroveBoardwalk => 'ممشى خشبي في المانغروف';

  @override
  String get gameSceneTropicalPalmReflections => 'انعكاسات النخيل الاستوائي';

  @override
  String get gameSceneMaskedFigureInShadow => 'شخصية مقنّعة في الظل';

  @override
  String get gameSceneElectricCompanionAtSunset => 'رفيق كهربائي عند الغروب';

  @override
  String get gameSceneTrainerAndFireDragon => 'المدرّب وتنين النار';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'قناع مصارعة مرصّع بالجواهر';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'مصارع بضربات فرشاة حمراء';

  @override
  String get gameSceneWrestlingChampionSalute => 'تحية بطل المصارعة';

  @override
  String get gameSceneMorningAtTheBakery => 'صباح في المخبز';

  @override
  String get gameSceneGreenhousePottingBench => 'طاولة زراعة في البيت الزجاجي';

  @override
  String get gameSceneHarborFishingBoat => 'قارب صيد في الميناء';

  @override
  String get gameSceneAtticObservatory => 'مرصد في العلّية';

  @override
  String get gameSceneToyMakerSWorkshop => 'ورشة صانع الألعاب';

  @override
  String get gameSceneWoodlandCampsite => 'مخيم في الغابة';

  @override
  String get gameSceneAfternoonMusicRoom => 'غرفة الموسيقى بعد الظهر';

  @override
  String get gameSceneSeasideIceCreamStand => 'كشك آيس كريم على الشاطئ';

  @override
  String get gameSceneLibraryReadingNook => 'ركن القراءة في المكتبة';

  @override
  String get gameSceneSewingStudio => 'ورشة الخياطة';

  @override
  String get gameSceneFruitMarket => 'سوق الفاكهة';

  @override
  String get gameSceneKoiCourtyard => 'فناء أسماك الكوي';

  @override
  String get gameSceneArtistSAtelier => 'مرسم الفنان';

  @override
  String get gameSceneMountainRailway => 'سكة حديد جبلية';

  @override
  String get gameSceneCountryKitchen => 'مطبخ ريفي';

  @override
  String get gameScenePotteryWorkshop => 'ورشة الفخار';

  @override
  String get gameSceneBeachPicnic => 'نزهة على الشاطئ';

  @override
  String get gameSceneFlowerShop => 'محل الزهور';

  @override
  String get gameSceneClockmakerSWorkshop => 'ورشة صانع الساعات';

  @override
  String get gameSceneRainyCafeTerrace => 'شرفة مقهى في يوم ماطر';

  @override
  String get gameSceneCastleHerbGarden => 'حديقة أعشاب القلعة';

  @override
  String get gameSceneClassroomArtCorner => 'ركن الفنون في الفصل';

  @override
  String get gameSceneAquariumShop => 'متجر الأحواض المائية';

  @override
  String get gameSceneAutumnLeafCollection => 'مجموعة أوراق الخريف';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'شجرة وحيدة تحت القمر';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'زهرة خريفية على غصن';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'ثعلب بين الأوراق الخضراء';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'قارب كانو على بحيرة مغطاة بالزنبق';

  @override
  String get gameSceneDewDropsOnALeaf => 'قطرات الندى على ورقة';

  @override
  String get gameSceneStagInATurquoiseLake => 'وعل في بحيرة فيروزية';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'دراجة تحت قمر برتقالي';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'نمر أبيض فوق الوادي';

  @override
  String get gameSceneTwoTreesInBlueWater => 'شجرتان في الماء الأزرق';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'صيد السمك بجانب كلب وفي';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'زنابق بجانب بحيرة جبلية';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'غزال على ضفة النهر الوردية';

  @override
  String get gameSceneTropicalHutAtSunset => 'كوخ استوائي عند الغروب';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'ثعلب يطل على وادٍ جبلي';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'غروب الشمس عبر بستان مسحور';

  @override
  String get learningControlTitle => 'تعلّم DevOps';

  @override
  String get learningControlAllCategories => 'كل الفئات';

  @override
  String get learningControlSearchCards => 'ابحث في البطاقات';

  @override
  String get learningControlClearSearch => 'مسح البحث';

  @override
  String get learningControlCategory => 'الفئة';

  @override
  String get learningControlShowAll => 'عرض كل البطاقات';

  @override
  String learningControlShowSaved(int count) {
    return 'عرض البطاقات المحفوظة ($count)';
  }

  @override
  String get learningControlShuffleOff => 'إيقاف الخلط';

  @override
  String get learningControlShuffleOn => 'خلط البطاقات';

  @override
  String get learningControlAutoOff => 'إيقاف التبديل التلقائي';

  @override
  String get learningControlAutoOn => 'تبديل تلقائي كل 10 ثوانٍ';

  @override
  String get learningControlNoSaved => 'لا توجد بطاقات محفوظة بعد';

  @override
  String get learningControlNoMatches => 'لا توجد بطاقات مطابقة';

  @override
  String get learningControlResetFilters => 'إعادة ضبط التصفية';

  @override
  String get learningControlPrevious => 'السابق';

  @override
  String get learningControlNext => 'التالي';

  @override
  String get learningControlProgress => 'التقدم';

  @override
  String get learningControlRemoveSaved => 'إزالة من المحفوظات';

  @override
  String get learningControlSaveCard => 'حفظ البطاقة';

  @override
  String get learningControlExample => 'مثال';

  @override
  String get learningControlCopyExample => 'نسخ المثال';

  @override
  String get learningControlExampleCopied => 'تم نسخ المثال';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'تم إكمال المستوى $value1';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'العب المستوى $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'أكمل المستوى $value1 لفتحه';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'مكافأة تسجيل الدخول اليومية';

  @override
  String get sharedDialogThanksForComingBack => 'شكرًا لعودتك!';

  @override
  String get sharedDialogDailyRewardAdded => 'تمت إضافة مكافأتك اليومية إلى إجمالي نقاطك.';

  @override
  String get sharedDialogAwesome => 'رائع!';

  @override
  String get accountWelcomeGuest => 'ضيف';

  @override
  String get accountWelcomeGuestUser => 'مستخدم ضيف';

  @override
  String get accountWelcomeUser => 'مستخدم';

  @override
  String get accountWelcomePlayingAsGuest => 'اللعب كضيف';

  @override
  String get accountWelcomeConnectGoogleAccount => 'ربط حساب Google';

  @override
  String get accountWelcomeGoogleConnected => 'تم ربط حساب Google بنجاح! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'تم إلغاء تسجيل الدخول.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'فشل الربط: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'تسجيل الخروج';

  @override
  String get accountWelcomeSignOutTitle => 'تسجيل الخروج؟';

  @override
  String get accountWelcomeSignOutMessage => 'هل أنت متأكد أنك تريد تسجيل الخروج؟ ستحتاج إلى تسجيل الدخول مرة أخرى للوصول إلى تقدمك المحفوظ.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'فشل تسجيل الخروج: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ إعادة تعيين بيانات التطبيق؟';

  @override
  String get accountWelcomeResetAppMessage => 'سيؤدي هذا إلى حذف جميع نقاطك وسلاسلك وسجل الألعاب والإعدادات نهائيًا. سيتم تسجيل خروجك وإعادتك إلى شاشة البداية. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get accountWelcomeResetEverything => 'إعادة تعيين الكل';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'فشلت إعادة التعيين: $value1';
  }

  @override
  String get accountWelcomeCancel => 'إلغاء';

  @override
  String get accountWelcomeResetAppData => 'إعادة تعيين بيانات التطبيق';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'مسح جميع النقاط والسلاسل والإعدادات';

  @override
  String get accountWelcomeFooter => 'تطبيق DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'الترجمة غير متوفرة بعد';

  @override
  String get accountWelcomeContinueWithGoogle => 'المتابعة باستخدام Google';

  @override
  String get accountWelcomeSigningIn => 'جارٍ تسجيل الدخول...';

  @override
  String get accountWelcomeOr => 'أو';

  @override
  String get accountWelcomeContinueAsGuest => 'المتابعة كضيف';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'يمكنك تسجيل الدخول لاحقًا من ملفك الشخصي.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'يمكنك البدء كضيف وتسجيل الدخول لاحقًا.';

  @override
  String get accountWelcomeGreetingGuest => 'مرحبًا';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'مرحبًا، $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'اكتمل تسجيل الدخول باستخدام Google، ولكن لم يتم إرجاع أي حساب مستخدم.';

  @override
  String get accountWelcomeErrorEmailExists => 'هذا البريد الإلكتروني لديه بالفعل حساب يستخدم طريقة تسجيل دخول أخرى.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'حساب Google هذا مرتبط بالفعل بحساب آخر.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'بيانات اعتماد مصادقة Google غير صالحة أو منتهية الصلاحية.';

  @override
  String get accountWelcomeErrorUserDisabled => 'تم تعطيل هذا الحساب.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'تسجيل الدخول باستخدام Google غير مفعل حاليًا.';

  @override
  String get accountWelcomeErrorNetwork => 'خطأ في الشبكة. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'محاولات تسجيل دخول كثيرة جدًا. يرجى الانتظار والمحاولة مرة أخرى.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'لا توجد معلومات إضافية عن الخطأ.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'فشل تسجيل الدخول باستخدام Google.\n\nالرمز: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'خطأ في تسجيل الدخول باستخدام Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'تعذرت المتابعة كضيف. يرجى المحاولة مرة أخرى.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'سيتوفر تسجيل الدخول باستخدام Google قريبًا.';

  @override
  String get accountWelcomeLoginTagline => 'تعلّم • تدرّب • نافس • اكسب';

  @override
  String get accountWelcomeCountryRegion => 'البلد / المنطقة';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'البلد / المنطقة: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'ابحث عن بلد';

  @override
  String get accountWelcomeCountryNotSelected => 'غير محدد';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'لماذا DevOps Quiz؟';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ سؤال تدريبي';

  @override
  String get accountWelcomeFeatureLanguages => 'دعم متعدد اللغات';

  @override
  String get accountWelcomeFeatureStreaks => 'السلاسل ولوحات المتصدرين';

  @override
  String get accountWelcomeFeatureGames => 'الألعاب والتحديات';

  @override
  String get accountWelcomeFeatureCloud => 'السحابة و DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'المكافآت والجوائز';

  @override
  String get accountWelcomePracticeOnTheGo => 'تدرّب أثناء التنقل';

  @override
  String get accountWelcomeInstallAndroidPromo => 'ثبّت تطبيق Android وتعلّم دون اتصال بالإنترنت في أي مكان.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'احصل عليه من Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'سلسلة $days يومًا';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'حافظ على سلسلة من $days يومًا.';
  }

  @override
  String get achLocYearStreakTitle => 'سلسلة سنة واحدة';

  @override
  String get achLocFirstQuizTitle => 'الاختبار الأول';

  @override
  String get achLocFirstQuizDescription => 'أكمل اختبارك الأول.';

  @override
  String get achLocQuiz10Title => 'مستكشف الاختبارات';

  @override
  String get achLocQuiz10Description => 'أكمل 10 اختبارات.';

  @override
  String get achLocPoints1000Title => '1000 نقطة';

  @override
  String get achLocPoints1000Description => 'اكسب 1000 نقطة إجمالية في الاختبار.';

  @override
  String get achLocPerfectScoreTitle => 'العلامة الكاملة';

  @override
  String get achLocPerfectScoreDescription => 'احصل على 100% في أي اختبار.';

  @override
  String get achLocQuiz25Title => 'متحمس للاختبارات';

  @override
  String get achLocQuiz25Description => 'أكمل 25 اختبارًا.';

  @override
  String get achLocQuiz50Title => 'خبير الاختبارات';

  @override
  String get achLocQuiz50Description => 'أكمل 50 اختبارًا.';

  @override
  String get achLocQuiz100Title => 'نادي المئة';

  @override
  String get achLocQuiz100Description => 'أكمل 100 اختبار.';

  @override
  String get achLocQuiz250Title => 'أسطورة الاختبارات';

  @override
  String get achLocQuiz250Description => 'أكمل 250 اختبارًا.';

  @override
  String get achLocPoints5000Title => '5,000 نقطة';

  @override
  String get achLocPoints5000Description => 'اكسب 5,000 نقطة إجمالية.';

  @override
  String get achLocPoints10000Title => '10,000 نقطة';

  @override
  String get achLocPoints10000Description => 'اكسب 10,000 نقطة إجمالية.';

  @override
  String get achLocPoints50000Title => '50,000 نقطة';

  @override
  String get achLocPoints50000Description => 'اكسب 50,000 نقطة إجمالية.';

  @override
  String get achLocPoints100000Title => '100,000 نقطة';

  @override
  String get achLocPoints100000Description => 'اكسب 100,000 نقطة إجمالية.';

  @override
  String get achLocDaily1Title => 'بداية يومية';

  @override
  String get achLocDaily1Description => 'أكمل أول اختبار يومي لك.';

  @override
  String get achLocDaily7Title => 'عادة يومية';

  @override
  String get achLocDaily7Description => 'أكمل 7 اختبارات يومية.';

  @override
  String get achLocDaily30Title => 'بطل اليوم';

  @override
  String get achLocDaily30Description => 'أكمل 30 اختبارًا يوميًا.';

  @override
  String get achLocSets5Title => 'بداية المجموعات';

  @override
  String get achLocSets5Description => 'أنهِ 5 مجموعات اختبارات.';

  @override
  String get achLocSets25Title => 'جامع المجموعات';

  @override
  String get achLocSets25Description => 'أنهِ 25 مجموعة اختبارات.';

  @override
  String get achLocSets50Title => 'خبير المجموعات';

  @override
  String get achLocSets50Description => 'أنهِ 50 مجموعة اختبارات.';

  @override
  String get achLocSets100Title => 'أسطورة المجموعات';

  @override
  String get achLocSets100Description => 'أنهِ 100 مجموعة اختبارات.';

  @override
  String get achLocCert1Title => 'الشهادة الأولى';

  @override
  String get achLocCert1Description => 'اكسب أول شهادة فئة لك.';

  @override
  String get achLocCert5Title => 'محترف معتمد';

  @override
  String get achLocCert5Description => 'اكسب 5 شهادات فئات.';

  @override
  String get achLocCert21Title => 'معتمد بالكامل';

  @override
  String get achLocCert21Description => 'اكسب شهادة في جميع الفئات الـ 21.';

  @override
  String get achLocThemeFreeValentinesWeek => 'مجاني من 7 إلى 14 فبراير كل عام';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'مجاني من 8 إلى 15 مارس كل عام';

  @override
  String get achLocThemeLight => 'فاتح';

  @override
  String get achLocThemeDark => 'داكن';

  @override
  String get achLocThemeSakura => 'ساكورا';

  @override
  String get achLocThemeSunset => 'غروب الشمس';

  @override
  String get achLocThemeCoffee => 'قهوة';

  @override
  String get achLocThemeTea => 'شاي';

  @override
  String get achLocThemeOcean => 'محيط';

  @override
  String get achLocThemeSolarFlare => 'توهج شمسي';

  @override
  String get achLocThemeForest => 'غابة';

  @override
  String get achLocThemeAurora => 'أورورا';

  @override
  String get achLocThemeMatrix => 'ماتريكس';

  @override
  String get achLocThemeCyberPurple => 'بنفسجي سيبراني';

  @override
  String get achLocThemeInferno => 'إنفرنو';

  @override
  String get achLocThemeMidnight => 'منتصف الليل';

  @override
  String get achLocThemeDarkGrey => 'رمادي داكن';

  @override
  String get achLocThemeBarbee => 'باربي';

  @override
  String get achLocThemeValentineDay => 'عيد الحب';

  @override
  String get achLocThemeDqSpecial => 'DQ خاص';

  @override
  String get achLocThemeArmy => 'الجيش';

  @override
  String get achLocThemeSpiderMan => 'سبايدر مان';

  @override
  String get achLocThemeKrrish => 'كريش';

  @override
  String get achLocThemeIronMan => 'آيرون مان';

  @override
  String get achLocThemeCaptainAmerica => 'كابتن أمريكا';

  @override
  String get achLocThemeThor => 'ثور';

  @override
  String get achLocThemeHulk => 'هالك';

  @override
  String get achLocThemeBlackWidow => 'الأرملة السوداء';

  @override
  String get achLocThemeHawkeye => 'هوك آي';

  @override
  String get achLocThemeBlackPanther => 'النمر الأسود';

  @override
  String get achLocThemeScarletWitch => 'الساحرة القرمزية';

  @override
  String get achLocThemeVision => 'فيجن';

  @override
  String get achLocThemeAntMan => 'آنت مان';

  @override
  String get achLocThemeCaptainMarvel => 'كابتن مارفل';

  @override
  String get achLocThemeDoctorStrange => 'دكتور سترينج';

  @override
  String get achLocThemeAvengers => 'المنتقمون';

  @override
  String get achLocThemeBatman => 'باتمان';

  @override
  String get achLocThemeSuperman => 'سوبرمان';

  @override
  String get achLocThemeWonderWoman => 'وندر وومان';

  @override
  String get achLocThemeFlash => 'فلاش';

  @override
  String get achLocThemeAquaman => 'أكوامان';

  @override
  String get achLocThemeGreenLantern => 'جرين لانترن';

  @override
  String get achLocThemeCyborg => 'سايبورج';

  @override
  String get achLocThemeSupergirl => 'سوبر جيرل';

  @override
  String get achLocThemeDc => 'أبطال DC';

  @override
  String get achLocThemeRainbow => 'قوس قزح';

  @override
  String get achLocThemeDiamond => 'ألماس';

  @override
  String get achLocThemeLegendary => 'أسطوري';

  @override
  String get gameHintCmd001LsLa => 'عرض جميع الملفات مع التفاصيل';

  @override
  String get gameHintCmd002Grep => 'البحث في النص باستخدام نمط';

  @override
  String get gameHintCmd003Chmod => 'تغيير أذونات الملفات';

  @override
  String get gameHintCmd004DfH => 'عرض المساحة الحرة على القرص';

  @override
  String get gameHintCmd005TailF => 'متابعة ملف سجل متزايد';

  @override
  String get gameHintCmd006PsAux => 'عرض العمليات قيد التشغيل';

  @override
  String get gameHintCmd007GitClone => 'نسخ مستودع بعيد';

  @override
  String get gameHintCmd008GitStash => 'حفظ التغييرات غير المثبتة جانبًا';

  @override
  String get gameHintCmd009GitRebase => 'إعادة تطبيق الإيداعات على قاعدة جديدة';

  @override
  String get gameHintCmd010GitBlame => 'عرض من غيّر كل سطر';

  @override
  String get gameHintCmd011DockerPs => 'عرض الحاويات قيد التشغيل';

  @override
  String get gameHintCmd012DockerBuild => 'إنشاء صورة من Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'عرض مخرجات الحاوية';

  @override
  String get gameHintCmd014DockerExec => 'تشغيل أمر داخل حاوية';

  @override
  String get gameHintCmd015KubectlGetPods => 'عرض الـ pods في مساحة اسم';

  @override
  String get gameHintCmd016KubectlApply => 'إنشاء الموارد من ملف';

  @override
  String get gameHintCmd017KubectlDescribe => 'عرض معلومات مفصلة عن المورد';

  @override
  String get gameHintCmd018KubectlScale => 'تغيير عدد النسخ المتماثلة';

  @override
  String get gameHintCmd019TerraformInit => 'تنزيل المزودات والإعداد';

  @override
  String get gameHintCmd020TerraformPlan => 'معاينة تغييرات البنية التحتية';

  @override
  String get gameHintCmd021TerraformApply => 'إنشاء البنية التحتية أو تحديثها';

  @override
  String get gameHintCmd022TerraformDestroy => 'إزالة البنية التحتية المُدارة';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'تشغيل دليل أتمتة';

  @override
  String get gameHintCmd024Ping => 'اختبار إمكانية الوصول عبر ICMP';

  @override
  String get gameHintCmd025Traceroute => 'عرض المسار إلى مضيف';

  @override
  String get gameHintCmd026Curl => 'نقل البيانات من URL';

  @override
  String get gameHintCmd027Ssh => 'تسجيل الدخول إلى جهاز بعيد بأمان';

  @override
  String get gameHintCmd028CrontabE => 'تحرير المهام المجدولة';

  @override
  String get gameHintCmd029SystemctlStatus => 'التحقق من حالة خدمة';

  @override
  String get gameHintCmd030HelmInstall => 'نشر مخطط إلى Kubernetes';

  @override
  String get gameHintWord001Git => 'يتتبع التغييرات في الشيفرة المصدرية.';

  @override
  String get gameHintWord002Aws => 'منصة الحوسبة السحابية من Amazon.';

  @override
  String get gameHintWord003Api => 'عقد يتيح للأنظمة البرمجية التواصل فيما بينها.';

  @override
  String get gameHintWord004Dns => 'يحوّل أسماء النطاقات إلى عناوين IP.';

  @override
  String get gameHintWord005Cli => 'واجهة نصية لتشغيل الأوامر.';

  @override
  String get gameHintWord006Cpu => 'المعالج الذي ينفذ التعليمات.';

  @override
  String get gameHintWord007Ram => 'ذاكرة مؤقتة تستخدمها البرامج قيد التشغيل.';

  @override
  String get gameHintWord008Ssh => 'بروتوكول آمن للوصول إلى الصدفة عن بُعد.';

  @override
  String get gameHintWord009Yaml => 'صيغة تسلسل بيانات سهلة القراءة للبشر.';

  @override
  String get gameHintWord010Linux => 'نواة نظام تشغيل مفتوحة المصدر وعائلته.';

  @override
  String get gameHintWord011Bash => 'صدفة أوامر Unix شائعة.';

  @override
  String get gameHintWord012Cloud => 'حوسبة عند الطلب تُقدَّم عبر شبكة.';

  @override
  String get gameHintWord013Docker => 'منصة لبناء الحاويات وتشغيلها.';

  @override
  String get gameHintWord014Azure => 'منصة الحوسبة السحابية من Microsoft.';

  @override
  String get gameHintWord015Python => 'لغة برمجة ونصوص واسعة الاستخدام.';

  @override
  String get gameHintWord016Github => 'خدمة تعاون مستضافة وشائعة مبنية على Git.';

  @override
  String get gameHintWord017Bgp => 'بروتوكول توجيه يتبادل المسارات بين الأنظمة المستقلة.';

  @override
  String get gameHintWord018Jenkins => 'خادم أتمتة يُستخدم غالبًا لـ CI.';

  @override
  String get gameHintWord019Port => 'نقطة نهاية مرقمة تستخدمها خدمات الشبكة.';

  @override
  String get gameHintWord020Proxy => 'خادم يمرر الطلبات نيابة عن العملاء.';

  @override
  String get gameHintWord021Cache => 'مخزن سريع للبيانات المعاد استخدامها كثيرًا.';

  @override
  String get gameHintWord022Cron => 'مجدول Unix للأوامر المتكررة.';

  @override
  String get gameHintWord023Bicep => 'لغة Azure التصريحية للبنية التحتية كشيفرة.';

  @override
  String get gameHintWord024Apigee => 'منصة Google Cloud للإدارة المركزية لـ API.';

  @override
  String get gameHintWord025Root => 'حساب المسؤول صاحب الصلاحيات الكاملة في أنظمة شبيهة بـ Unix.';

  @override
  String get gameHintWord026Nginx => 'خادم ويب ووكيل عكسي.';

  @override
  String get gameHintWord027Redis => 'مخزن بيانات في الذاكرة يُستخدم غالبًا كذاكرة تخزين مؤقت.';

  @override
  String get gameHintWord028Mysql => 'نظام قواعد بيانات علائقية شائع.';

  @override
  String get gameHintWord029Ruby => 'لغة برمجة تستخدمها أدوات مثل Chef.';

  @override
  String get gameHintWord030Helm => 'مدير حزم يُستخدم عادةً مع Kubernetes.';

  @override
  String get gameHintWord031Pod => 'أصغر وحدة قابلة للنشر في Kubernetes.';

  @override
  String get gameHintWord032Image => 'قالب للقراءة فقط يُستخدم لإنشاء حاوية.';

  @override
  String get gameHintWord033Build => 'ينشئ ناتجًا من المصدر والاعتماديات.';

  @override
  String get gameHintWord034Deploy => 'يطلق تطبيقًا في بيئة ما.';

  @override
  String get gameHintWord035Terraform => 'أداة HashiCorp للبنية التحتية كشيفرة.';

  @override
  String get gameHintWord036Ansible => 'أداة أتمتة وإعداد بلا وكيل.';

  @override
  String get gameHintWord037Kubectl => 'عميل سطر الأوامر لـ Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'اختصار Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'نموذج تشغيلي يستخدم Git كمصدر للحقيقة.';

  @override
  String get gameHintWord040Pipeline => 'تسلسل آلي من مراحل البناء والاختبار والإصدار.';

  @override
  String get gameHintWord041Container => 'عملية معزولة مُغلّفة مع اعتمادياتها.';

  @override
  String get gameHintWord042Cluster => 'مجموعة أجهزة تُدار كنظام مشترك.';

  @override
  String get gameHintWord043Ingress => 'كائن Kubernetes API لتوجيه HTTP الخارجي.';

  @override
  String get gameHintWord044Firewall => 'يرشّح حركة الشبكة وفق قواعد الأمان.';

  @override
  String get gameHintWord045Subnet => 'تقسيم منطقي لشبكة IP.';

  @override
  String get gameHintWord046Gateway => 'عقدة شبكة تربط شبكات مختلفة.';

  @override
  String get gameHintWord047Router => 'يمرر الحزم بين الشبكات.';

  @override
  String get gameHintWord048Switch => 'يربط الأجهزة داخل شبكة محلية.';

  @override
  String get gameHintWord049Repository => 'تخزين مُدار للشيفرة المصدرية أو الحزم.';

  @override
  String get gameHintWord050Systemd => 'نظام تهيئة Linux ومدير الخدمات.';

  @override
  String get gameHintWord051Journalctl => 'أمر لقراءة سجلات journal الخاصة بـ systemd.';

  @override
  String get gameHintWord052Permission => 'قاعدة تتحكم في من يمكنه القراءة أو الكتابة أو التنفيذ.';

  @override
  String get gameHintWord053Alloydb => 'قاعدة بيانات مُدارة من Google Cloud متوافقة مع PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'كائن Kubernetes للإعدادات غير السرية.';

  @override
  String get gameHintWord055Secret => 'كائن Kubernetes مخصص للبيانات الحساسة.';

  @override
  String get gameHintWord056Persistent => 'يصف تخزينًا يبقى بعد إعادة تشغيل حمل العمل.';

  @override
  String get gameHintWord057Volume => 'تخزين نظام ملفات مركّب داخل حاوية.';

  @override
  String get gameHintWord058Storage => 'مكان دائم للملفات أو الكائنات أو الكتل.';

  @override
  String get gameHintWord059Replica => 'نسخة من مثيل حمل عمل يُحتفظ بها للتوسع أو الموثوقية.';

  @override
  String get gameHintWord060Deployment => 'متحكم Kubernetes لـ pods التطبيقات عديمة الحالة.';

  @override
  String get gameHintWord061Dockerfile => 'تعليمات تُستخدم لبناء صورة Docker.';

  @override
  String get gameHintWord062Database => 'مخزن منظم تستعلم عنه التطبيقات.';

  @override
  String get gameHintWord063Automation => 'استخدام البرمجيات لتنفيذ مهام متكررة دون خطوات يدوية.';

  @override
  String get gameHintWord064Anthos => 'منصة Google Cloud لإدارة العناقيد عبر بيئات متعددة.';

  @override
  String get gameHintWord065Bigquery => 'خدمة Google Cloud لتحليلات البيانات واسعة النطاق.';

  @override
  String get gameHintWord066Bigtable => 'قاعدة بيانات NoSQL عريضة الأعمدة من Google Cloud للتحليلات.';

  @override
  String get gameHintWord067Loadbalancer => 'يوزع الحركة الواردة بين عدة خوادم خلفية.';

  @override
  String get gameHintWord068Prometheus => 'نظام مراقبة يخزن مقاييس السلاسل الزمنية.';

  @override
  String get gameHintWord069Grafana => 'منصة للاستعلام عن بيانات الرصد وعرضها بصريًا.';

  @override
  String get gameHintWord070Cloudant => 'قاعدة بيانات مستندات NoSQL JSON مُدارة من IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'خدمة AWS تسجل نشاط API لأغراض التدقيق.';

  @override
  String get gameHintWord072Statefulset => 'متحكم Kubernetes لأحمال العمل التي تحتاج هوية ثابتة.';

  @override
  String get gameHintWord073Daemonset => 'متحكم Kubernetes يشغّل pod على عقد محددة.';

  @override
  String get gameHintWord074Serviceaccount => 'هوية Kubernetes يستخدمها حمل عمل أو عملية.';

  @override
  String get gameHintWord075Networkpolicy => 'مورد Kubernetes يتحكم في حركة شبكة الـ pods.';

  @override
  String get gameHintWord076Certificate => 'مستند رقمي يُستخدم لإثبات الهوية في TLS.';

  @override
  String get gameHintWord077Encryption => 'يحوّل البيانات بحيث لا يقرأها إلا المصرّح لهم.';

  @override
  String get gameHintWord078Observability => 'القدرة على استنتاج سلوك النظام من مخرجاته.';

  @override
  String get gameHintWord079Coredns => 'خادم DNS يُستخدم عادةً داخل عناقيد Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'مشروع لإدارة موارد السحابة عبر Kubernetes API.';

  @override
  String get gameHintWord081Failover => 'التحويل إلى مكوّن احتياطي بعد حدوث عطل.';

  @override
  String get gameHintWord082Idempotency => 'خاصية تجعل تكرار العملية له نفس أثر تنفيذها مرة واحدة.';

  @override
  String get gameHintWord083Dataflow => 'خدمة Google Cloud لمعالجة البيانات المتدفقة والدفعية.';

  @override
  String get gameHintWord084Orchestration => 'إدارة منسقة لعدة أحمال عمل مؤتمتة.';

  @override
  String get gameHintWord085Dataplex => 'خدمة Google Cloud لاكتشاف بيانات المؤسسة وحوكمتها.';

  @override
  String get gameHintWord086Serverless => 'نموذج تنفيذ يُحجب فيه إدارة البنية التحتية.';

  @override
  String get gameHintWord087Distributed => 'نظام تعمل مكوناته عبر عدة أجهزة متصلة بالشبكة.';

  @override
  String get gameHintWord088Dataproc => 'بيئة Apache Spark وHadoop مُدارة من Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'قاعدة بيانات NoSQL من AWS تُستخدم غالبًا لقفل حالة Terraform.';

  @override
  String get gameHintWord090Provisioning => 'تجهيز البنية التحتية أو الموارد للاستخدام.';

  @override
  String get gameHintWord091Elasticsearch => 'محرك بحث يُستخدم عادةً للتسجيل المركزي.';

  @override
  String get gameHintWord092Etcd => 'مخزن مفتاح-قيمة يحتفظ بحالة عنقود Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'عملية التحقق من هوية المستخدم أو الخدمة.';

  @override
  String get gameHintWord094Authorization => 'عملية تحديد ما يُسمح لهوية ما بفعله.';

  @override
  String get gameHintWord095Expressroute => 'خدمة Azure للاتصال الخاص المخصص بمراكز البيانات.';

  @override
  String get gameHintWord096Configuration => 'إعدادات تحدد كيفية عمل البرنامج.';

  @override
  String get gameHintWord097Infrastructure => 'موارد الحوسبة والشبكة والتخزين التي تدعم التطبيقات.';

  @override
  String get gameHintWord098Fastconnect => 'خدمة Oracle Cloud لاتصالات الشبكة الخاصة المخصصة.';

  @override
  String get gameHintWord099Containerd => 'بيئة تشغيل حاويات قياسية في الصناعة تستخدمها Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'منصة تنسيق الحاويات.';

  @override
  String get gameHintWord101Http => 'بروتوكول تطبيقي يُستخدم لطلب موارد الويب.';

  @override
  String get gameHintWord102Https => 'النسخة المشفرة من بروتوكول طلبات الويب.';

  @override
  String get gameHintWord103Tcp => 'بروتوكول نقل يوفر تسليمًا موثوقًا ومرتبًا.';

  @override
  String get gameHintWord104Udp => 'بروتوكول نقل بلا اتصال يُستخدم لـ datagrams.';

  @override
  String get gameHintWord105Tls => 'بروتوكول يؤمّن البيانات المتبادلة عبر الشبكة.';

  @override
  String get gameHintWord106Ssl => 'سلف أقدم لبروتوكول أمان النقل الحديث.';

  @override
  String get gameHintWord107Ftp => 'بروتوكول تقليدي لنقل الملفات.';

  @override
  String get gameHintWord108Sftp => 'بروتوكول نقل ملفات يعمل عبر اتصال صدفة آمن.';

  @override
  String get gameHintWord109Smtp => 'بروتوكول يُستخدم لإرسال البريد الإلكتروني بين الخوادم.';

  @override
  String get gameHintWord110Snmp => 'بروتوكول لإدارة أجهزة الشبكة ومراقبتها.';

  @override
  String get gameHintWord111Icmp => 'بروتوكول ينقل أخطاء الشبكة ورسائل ping.';

  @override
  String get gameHintWord112Arp => 'يحوّل عناوين IPv4 المحلية إلى عناوين العتاد.';

  @override
  String get gameHintWord113Dhcp => 'يمنح عملاء الشبكة إعدادات IP تلقائيًا بنظام الإيجار.';

  @override
  String get gameHintWord114Nat => 'يعيد كتابة عناوين الشبكة عند عبور الحزم بوابة.';

  @override
  String get gameHintWord115Vpn => 'نفق مشفر يربط شبكات أو مستخدمين بعيدين.';

  @override
  String get gameHintWord116Vpc => 'شبكة افتراضية معزولة في سحابة عامة.';

  @override
  String get gameHintWord117Vlan => 'فصل منطقي لشبكة مُبدَّلة.';

  @override
  String get gameHintWord118Wan => 'شبكة تمتد على منطقة جغرافية واسعة.';

  @override
  String get gameHintWord119Lan => 'شبكة تربط الأجهزة ضمن منطقة محلية.';

  @override
  String get gameHintWord120Cdn => 'شبكة حافة موزعة تخزّن المحتوى المُسلَّم مؤقتًا.';

  @override
  String get gameHintWord121Cidr => 'صيغة تعبّر عن بادئة الشبكة بطول بعد شرطة مائلة.';

  @override
  String get gameHintWord122Host => 'حاسوب أو نقطة نهاية متصلة بالشبكة.';

  @override
  String get gameHintWord123Hostname => 'اسم سهل القراءة يُعيَّن لجهاز متصل بالشبكة.';

  @override
  String get gameHintWord124Domain => 'منطقة إدارية مسماة في نظام تسمية الإنترنت.';

  @override
  String get gameHintWord125Zone => 'جزء إداري من فضاء أسماء DNS.';

  @override
  String get gameHintWord126Record => 'مدخل فردي في قاعدة بيانات DNS.';

  @override
  String get gameHintWord127Aaaa => 'نوع سجل DNS يحل اسمًا إلى عنوان IPv6.';

  @override
  String get gameHintWord128Ptr => 'نوع سجل DNS يُستخدم للبحث العكسي عن العناوين.';

  @override
  String get gameHintWord129Txt => 'نوع سجل DNS يخزن قيمًا نصية.';

  @override
  String get gameHintWord130Cname => 'سجل DNS يجعل اسمًا ما اسمًا مستعارًا لآخر.';

  @override
  String get gameHintWord131Route => 'مدخل مسار يوجّه الحزم نحو وجهة.';

  @override
  String get gameHintWord132Routing => 'اختيار المسارات لحركة المرور بين الشبكات.';

  @override
  String get gameHintWord133Packet => 'وحدة بيانات تُنقل عبر الشبكة.';

  @override
  String get gameHintWord134Protocol => 'قواعد متفق عليها للتواصل بين الأنظمة.';

  @override
  String get gameHintWord135Ack => 'علامة TCP تؤكد استلام البيانات.';

  @override
  String get gameHintWord136Bandwidth => 'سعة وصلة اتصال.';

  @override
  String get gameHintWord137Latency => 'التأخير قبل أن يتلقى طلب أو حزمة ردًا.';

  @override
  String get gameHintWord138Throughput => 'كمية العمل أو البيانات المفيدة المعالجة في وحدة زمن.';

  @override
  String get gameHintWord139Mtu => 'أكبر حجم حزمة يمكن لوصلة نقله دون تجزئة.';

  @override
  String get gameHintWord140Alpn => 'امتداد TLS يتفاوض على بروتوكول طبقة التطبيق.';

  @override
  String get gameHintWord141Grep => 'يبحث في أسطر النص عن نمط مطابق.';

  @override
  String get gameHintWord142Sed => 'محرر تدفقي يُستخدم عادةً لاستبدال النصوص.';

  @override
  String get gameHintWord143Lscpu => 'أمر Linux يعرض بنية المعالج وتفاصيل الأنوية.';

  @override
  String get gameHintWord144Find => 'يبحث في شجرة مجلدات باستخدام شروط الملفات.';

  @override
  String get gameHintWord145Lsblk => 'أمر Linux يسرد أجهزة الكتل وعلاقاتها.';

  @override
  String get gameHintWord146Sort => 'يرتب أسطر النص.';

  @override
  String get gameHintWord147Uniq => 'يرشّح الأسطر المكررة المتجاورة.';

  @override
  String get gameHintWord148Head => 'يطبع بداية ملف.';

  @override
  String get gameHintWord149Tail => 'يطبع نهاية ملف ويمكنه متابعة السجلات المضافة.';

  @override
  String get gameHintWord150Cat => 'يدمج الملفات ويطبع محتوياتها.';

  @override
  String get gameHintWord151Cut => 'يستخرج حقولًا أو أعمدة أحرف محددة من الأسطر.';

  @override
  String get gameHintWord152Tee => 'ينسخ الإدخال القياسي إلى ملفات والمخرجات القياسية.';

  @override
  String get gameHintWord153Echo => 'يكتب وسائطه إلى المخرجات القياسية.';

  @override
  String get gameHintWord154Printf => 'يطبع نصًا منسقًا من صدفة أو برنامج.';

  @override
  String get gameHintWord155Touch => 'يحدّث الطوابع الزمنية للملفات أو ينشئ ملفًا فارغًا.';

  @override
  String get gameHintWord156Mkdir => 'ينشئ مجلدات.';

  @override
  String get gameHintWord157Rmdir => 'يزيل المجلدات الفارغة.';

  @override
  String get gameHintWord158Chmod => 'يغيّر بتات أذونات ملفات Unix.';

  @override
  String get gameHintWord159Chown => 'يغيّر ملكية الملفات.';

  @override
  String get gameHintWord160Chgrp => 'يغيّر ملكية المجموعة لملف.';

  @override
  String get gameHintWord161Pwd => 'يطبع مجلد العمل الحالي.';

  @override
  String get gameHintWord162Apt => 'أداة إدارة حزم تستخدمها الأنظمة المبنية على Debian.';

  @override
  String get gameHintWord163Top => 'عرض تفاعلي للعمليات واستخدام موارد النظام.';

  @override
  String get gameHintWord164Agent => 'مكوّن برمجي ينفذ العمل أو يبلّغ عنه على مضيف.';

  @override
  String get gameHintWord165Kill => 'يرسل إشارة إلى عملية عبر معرّفها.';

  @override
  String get gameHintWord166Signal => 'إشعار يسلّمه نظام التشغيل إلى عملية.';

  @override
  String get gameHintWord167Sigkill => 'إشارة Unix تنهي العملية فورًا.';

  @override
  String get gameHintWord168Nice => 'يبدأ عملية بأولوية جدولة معدّلة.';

  @override
  String get gameHintWord169Renice => 'يغيّر أولوية الجدولة لعملية قيد التشغيل.';

  @override
  String get gameHintWord170Jobs => 'يسرد المهام التي تديرها الصدفة الحالية.';

  @override
  String get gameHintWord171Nohup => 'يشغّل أمرًا مع تجاهل إشارات الإغلاق.';

  @override
  String get gameHintWord172Screen => 'مضاعِف طرفية يدعم جلسات قابلة للفصل.';

  @override
  String get gameHintWord173Uptime => 'يبلّغ منذ متى يعمل النظام.';

  @override
  String get gameHintWord174Uname => 'يطبع معلومات النظام والنواة.';

  @override
  String get gameHintWord175Whoami => 'يطبع اسم المستخدم الحالي الفعلي.';

  @override
  String get gameHintWord176Umask => 'يضبط قناع الأذونات المستخدم عند إنشاء الملفات.';

  @override
  String get gameHintWord177Usermod => 'أمر Linux يعدّل حساب مستخدم موجود.';

  @override
  String get gameHintWord178Crontab => 'يحرر أو يسرد مهام الصدفة المجدولة المتكررة.';

  @override
  String get gameHintWord179Findmnt => 'أمر Linux يعرض معلومات أنظمة الملفات المركّبة.';

  @override
  String get gameHintWord180Mount => 'يوصل نظام ملفات بشجرة المجلدات.';

  @override
  String get gameHintWord181Sigterm => 'إشارة Unix تطلب إنهاء العملية بسلاسة.';

  @override
  String get gameHintWord182Fstab => 'جدول النظام الذي يصف أنظمة الملفات المراد تركيبها.';

  @override
  String get gameHintWord183Swap => 'مساحة مدعومة بالقرص تُستخدم لتكملة الذاكرة الفعلية.';

  @override
  String get gameHintWord184Tmpfs => 'نظام ملفات مؤقت مدعوم بالذاكرة الافتراضية.';

  @override
  String get gameHintWord185Proc => 'نظام ملفات افتراضي في Linux يعرض معلومات العمليات والنواة.';

  @override
  String get gameHintWord186Syslog => 'بروتوكول تسجيل قياسي وصيغة رسائل.';

  @override
  String get gameHintWord187Dmesg => 'يعرض الرسائل من المخزن الحلقي للنواة.';

  @override
  String get gameHintWord188Free => 'يبلّغ عن ذاكرة النظام المستخدمة والمتاحة.';

  @override
  String get gameHintWord189Stat => 'يعرض بيانات وصفية مفصلة عن الملف.';

  @override
  String get gameHintWord190Lsof => 'يسرد الملفات المفتوحة والعمليات التي تحتفظ بها.';

  @override
  String get gameHintWord191Netstat => 'يعرض اتصالات الشبكة ومعلومات التوجيه.';

  @override
  String get gameHintWord192Checksum => 'قيمة محسوبة تُستخدم لكشف التغيير أو التلف في البيانات.';

  @override
  String get gameHintWord193Ping => 'يختبر إمكانية الوصول عبر الشبكة باستخدام طلبات echo.';

  @override
  String get gameHintWord194Traceroute => 'يعرض القفزات الوسيطة نحو وجهة في الشبكة.';

  @override
  String get gameHintWord195Resolver => 'مكوّن DNS يبحث عن إجابات لاستعلامات الأسماء.';

  @override
  String get gameHintWord196Nslookup => 'يبحث عن أسماء DNS وعناوينها.';

  @override
  String get gameHintWord197Telnet => 'بروتوكول طرفية بعيدة قديم وغير مشفر.';

  @override
  String get gameHintWord198Tftp => 'بروتوكول بسيط لنقل الملفات مبني على UDP.';

  @override
  String get gameHintWord199Daemon => 'عملية خدمة تعمل في الخلفية على أنظمة شبيهة بـ Unix.';

  @override
  String get gameHintWord200Kernel => 'المكوّن الأساسي الذي يدير موارد نظام التشغيل.';

  @override
  String get gameHintWord201Commit => 'لقطة مسجلة للتغييرات في التحكم بالإصدارات.';

  @override
  String get gameHintWord202Branch => 'مرجع قابل للنقل يمثل خط تطوير.';

  @override
  String get gameHintWord203Merge => 'يدمج تواريخ من خطوط تطوير مختلفة.';

  @override
  String get gameHintWord204Rebase => 'يعيد تشغيل الإيداعات فوق إيداع أساس مختلف.';

  @override
  String get gameHintWord205Clone => 'ينشئ نسخة محلية من مستودع بعيد.';

  @override
  String get gameHintWord206Fetch => 'ينزّل الكائنات والمراجع البعيدة دون دمج.';

  @override
  String get gameHintWord207Pull => 'يجلب التغييرات ويدمجها في الفرع الحالي.';

  @override
  String get gameHintWord208Push => 'يرسل الإيداعات المحلية إلى مستودع بعيد.';

  @override
  String get gameHintWord209Stash => 'يحفظ مؤقتًا تغييرات شجرة العمل غير المثبتة.';

  @override
  String get gameHintWord210Revert => 'ينشئ إيداعًا يتراجع عن إيداع آخر.';

  @override
  String get gameHintWord211Reset => 'ينقل مرجع Git ويمكنه إعادة ضبط الفهرس أو ملفات العمل.';

  @override
  String get gameHintWord212Reflog => 'سجل محلي لتحديثات مراجع Git.';

  @override
  String get gameHintWord213Diff => 'يعرض الاختلافات بين الإصدارات أو الملفات.';

  @override
  String get gameHintWord214Status => 'يبلّغ عن الملفات المجهّزة والمعدّلة وغير المتتبعة.';

  @override
  String get gameHintWord215Checkout => 'أمر Git للتبديل بين المراجعات أو استعادة الملفات.';

  @override
  String get gameHintWord216Tag => 'مرجع مسمى يُستخدم عادةً لتعليم إصدار.';

  @override
  String get gameHintWord217Remote => 'اتصال مسمى بمستودع آخر.';

  @override
  String get gameHintWord218Origin => 'الاسم الافتراضي لمستودع بعيد مستنسخ.';

  @override
  String get gameHintWord219Upstream => 'فرع تتبع بعيد مرتبط بفرع محلي.';

  @override
  String get gameHintWord220Worktree => 'مجلد عمل مسحوب مرتبط بمستودع.';

  @override
  String get gameHintWord221Registry => 'خدمة تخزن صور الحاويات وتوزعها.';

  @override
  String get gameHintWord222Digest => 'معرّف قائم على المحتوى لصورة حاوية.';

  @override
  String get gameHintWord223Layer => 'تغييرات نظام الملفات التي تشكل جزءًا من صورة حاوية.';

  @override
  String get gameHintWord224Entrypoint => 'تعليمة Dockerfile تحدد الملف التنفيذي الرئيسي للحاوية.';

  @override
  String get gameHintWord225Cmd => 'تعليمة Dockerfile تحدد أمرًا أو وسائط افتراضية.';

  @override
  String get gameHintWord226Workdir => 'تعليمة Dockerfile تضبط مجلد العمل.';

  @override
  String get gameHintWord227Copy => 'تعليمة Dockerfile تنسخ ملفات سياق البناء إلى صورة.';

  @override
  String get gameHintWord228Add => 'تعليمة Dockerfile يمكنها أيضًا فك ضغط الأرشيفات المحلية.';

  @override
  String get gameHintWord229Run => 'تعليمة Dockerfile تنفذ أمرًا وقت البناء.';

  @override
  String get gameHintWord230Env => 'تعليمة Dockerfile تعرّف متغيرات البيئة.';

  @override
  String get gameHintWord231Arg => 'تعليمة Dockerfile تعلن متغيرًا وقت البناء.';

  @override
  String get gameHintWord232Expose => 'تعليمة Dockerfile توثّق منفذ الحاوية.';

  @override
  String get gameHintWord233User => 'تعليمة Dockerfile تختار الحساب للأوامر اللاحقة.';

  @override
  String get gameHintWord234Healthcheck => 'تعليمة تصف كيفية اختبار سلامة الحاوية.';

  @override
  String get gameHintWord235Shebang => 'السطر الأول في السكربت الذي يحدد المفسّر المراد تنفيذه.';

  @override
  String get gameHintWord236Compose => 'أداة Docker لتعريف وتشغيل تطبيقات متعددة الحاويات.';

  @override
  String get gameHintWord237Bridge => 'مشغّل شبكة Docker شائع لشبكات الحاويات المحلية.';

  @override
  String get gameHintWord238Overlay => 'شبكة تمتد عبر حاويات على عدة مضيفين.';

  @override
  String get gameHintWord239None => 'مشغّل شبكة Docker يعطّل شبكات الحاوية.';

  @override
  String get gameHintWord240Prune => 'يزيل موارد الحاويات غير المستخدمة.';

  @override
  String get gameHintWord241Replicaset => 'متحكم Kubernetes يحافظ على عدد pods مطلوب.';

  @override
  String get gameHintWord242Service => 'تجريد Kubernetes يوفر وصولًا ثابتًا إلى الـ pods.';

  @override
  String get gameHintWord243Endpoints => 'العناوين التي تقف خلف خدمة Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'نطاق منطقي يجمع موارد Kubernetes.';

  @override
  String get gameHintWord245Node => 'جهاز عامل يستضيف pods في Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'وكيل على كل عقدة يدير تشغيل الـ pods.';

  @override
  String get gameHintWord247Pvc => 'طلب Kubernetes للحصول على تخزين دائم.';

  @override
  String get gameHintWord248Apiserver => 'مكوّن مستوى التحكم في Kubernetes الذي يعرض API العنقود.';

  @override
  String get gameHintWord249Role => 'مجموعة مسماة من الأذونات في التحكم بالوصول المبني على الأدوار.';

  @override
  String get gameHintWord250Resourcequota => 'كائن Kubernetes يحد من استهلاك الموارد في مساحة اسم.';

  @override
  String get gameHintWord251Selector => 'تعبير يطابق الموارد بحسب تسمياتها.';

  @override
  String get gameHintWord252Taint => 'خاصية عقدة تطرد الـ pods التي تفتقر إلى تحمّل مطابق.';

  @override
  String get gameHintWord253Toleration => 'إعداد pod يسمح بالجدولة على عقدة موسومة بـ taint.';

  @override
  String get gameHintWord254Cordon => 'يعلّم عقدة Kubernetes بأنها غير قابلة للجدولة.';

  @override
  String get gameHintWord255Uncordon => 'يجعل عقدة معزولة قابلة للجدولة مجددًا.';

  @override
  String get gameHintWord256Drain => 'يُخلي أحمال العمل بأمان قبل صيانة العقدة.';

  @override
  String get gameHintWord257Job => 'حمل عمل Kubernetes يشغّل مهمة حتى اكتمالها.';

  @override
  String get gameHintWord258Cronjob => 'حمل عمل Kubernetes ينشئ مهام وفق جدول.';

  @override
  String get gameHintWord259Readiness => 'فحص يبيّن ما إذا كانت الحاوية قادرة على استقبال الحركة.';

  @override
  String get gameHintWord260Liveness => 'فحص يبيّن ما إذا كانت الحاوية تحتاج إلى إعادة تشغيل.';

  @override
  String get gameHintWord261Canary => 'أسلوب إصدار يعرّض نسخة جديدة لجزء صغير من الحركة.';

  @override
  String get gameHintWord262Rolling => 'استراتيجية تحديث تستبدل المثيلات العاملة تدريجيًا.';

  @override
  String get gameHintWord263Rollback => 'يستعيد إصدار تطبيق كان يعمل سابقًا.';

  @override
  String get gameHintWord264Rollout => 'نشر تدريجي لإصدار جديد من التطبيق.';

  @override
  String get gameHintWord265Recreate => 'استراتيجية نشر توقف الـ pods القديمة قبل تشغيل البدائل.';

  @override
  String get gameHintWord266Blue => 'إحدى البيئتين في إصدار blue-green.';

  @override
  String get gameHintWord267Green => 'البيئة الأخرى في إصدار blue-green.';

  @override
  String get gameHintWord268Artifact => 'ناتج مُرقَّم الإصدار ينتجه خط بناء.';

  @override
  String get gameHintWord269Staging => 'بيئة ما قبل الإنتاج تُستخدم للتحقق من الإصدار.';

  @override
  String get gameHintWord270Production => 'البيئة التي تخدم المستخدمين الفعليين.';

  @override
  String get gameHintWord271Release => 'إصدار برمجي يُسلَّم للاستخدام.';

  @override
  String get gameHintWord272Version => 'معرّف يميّز مراجعة برمجية.';

  @override
  String get gameHintWord273Revision => 'نسخة قابلة للتعريف من مستند أو قاعدة شيفرة.';

  @override
  String get gameHintWord274Webhook => 'إشعار HTTP يُرسل عند وقوع حدث.';

  @override
  String get gameHintWord275Runbook => 'إجراء موثّق لتشغيل نظام أو استعادته.';

  @override
  String get gameHintWord276Workspace => 'مجلد أو نطاق يحتوي موارد المشروع العاملة.';

  @override
  String get gameHintWord277Credentials => 'مواد مصادقة تُستخدم للوصول إلى نظام.';

  @override
  String get gameHintWord278Trigger => 'حدث أو شرط يبدأ خط بناء.';

  @override
  String get gameHintWord279Parameter => 'مدخل مسمى يُمرَّر إلى مهمة أو دالة.';

  @override
  String get gameHintWord280Access => 'القدرة على استخدام مورد وفق التفويض.';

  @override
  String get gameHintWord281Module => 'مجموعة قابلة لإعادة الاستخدام من تعريفات البنية التحتية.';

  @override
  String get gameHintWord282Provider => 'إضافة Terraform تربط الإعداد بـ API خارجي.';

  @override
  String get gameHintWord283Resource => 'كائن بنية تحتية مُدار مُصرَّح عنه في الإعداد.';

  @override
  String get gameHintWord284Variable => 'قيمة مدخل مسماة يستخدمها الإعداد أو الشيفرة.';

  @override
  String get gameHintWord285Output => 'قيمة مكشوفة يعيدها إعداد البنية التحتية.';

  @override
  String get gameHintWord286Tfstate => 'لاحقة ملف مرتبطة بلقطات حالة Terraform.';

  @override
  String get gameHintWord287Tfvars => 'لاحقة ملف تُستخدم لقيم متغيرات إدخال Terraform.';

  @override
  String get gameHintWord288Backend => 'إعداد Terraform يتحكم في تخزين الحالة.';

  @override
  String get gameHintWord289Plan => 'معاينة Terraform لتغييرات البنية التحتية المقترحة.';

  @override
  String get gameHintWord290Apply => 'عملية Terraform تنفذ التغييرات المقترحة.';

  @override
  String get gameHintWord291Destroy => 'عملية Terraform تزيل البنية التحتية المُدارة.';

  @override
  String get gameHintWord292Import => 'يضع مورداً موجوداً تحت إدارة البنية التحتية.';

  @override
  String get gameHintWord293Refresh => 'يزامن الحالة المسجلة مع البنية التحتية الفعلية.';

  @override
  String get gameHintWord294Validate => 'يتحقق من صياغة الإعداد واتساقه الداخلي.';

  @override
  String get gameHintWord295Fmt => 'أمر Terraform يطبق التنسيق القياسي للإعداد.';

  @override
  String get gameHintWord296Init => 'يهيّئ مزودات Terraform ومجلد العمل.';

  @override
  String get gameHintWord297Executor => 'خانة عامل في Jenkins يمكنها تشغيل بناء.';

  @override
  String get gameHintWord298Dependencies => 'علاقات تتطلب مكوّنًا قبل آخر.';

  @override
  String get gameHintWord299Drift => 'الفرق بين حالة البنية التحتية المصرّح بها والفعلية.';

  @override
  String get gameHintWord300Locking => 'يمنع الكتّاب المتزامنين من تغيير حالة مشتركة.';

  @override
  String get gameHintWord301Playbook => 'مستند Ansible يصف مسرحيات ومهام الأتمتة.';

  @override
  String get gameHintWord302Inventory => 'مجموعة Ansible من المضيفين والمجموعات المُدارة.';

  @override
  String get gameHintWord303Facts => 'معلومات النظام المجمّعة عن المضيفين المُدارين.';

  @override
  String get gameHintWord304Task => 'وحدة عمل فردية في الأتمتة.';

  @override
  String get gameHintWord305Handler => 'مهمة Ansible تُنفَّذ عند إشعارها بتغيير.';

  @override
  String get gameHintWord306Notify => 'توجيه Ansible يضع معالجًا في الطابور بعد مهمة غيّرت شيئًا.';

  @override
  String get gameHintWord307Become => 'إعداد Ansible يفعّل رفع الامتيازات.';

  @override
  String get gameHintWord308Vault => 'ميزة Ansible لتشفير بيانات الأتمتة الحساسة.';

  @override
  String get gameHintWord309Register => 'توجيه Ansible يحفظ نتيجة مهمة في متغير.';

  @override
  String get gameHintWord310When => 'كلمة مفتاحية في Ansible تتحكم في تنفيذ المهمة الشرطي.';

  @override
  String get gameHintWord311Loop => 'يكرر مهمة أتمتة على مجموعة.';

  @override
  String get gameHintWord312Include => 'يحمّل محتوى أتمتة قابلًا لإعادة الاستخدام ديناميكيًا.';

  @override
  String get gameHintWord313Tags => 'تسميات تُستخدم لاختيار مجموعات فرعية من مهام الأتمتة.';

  @override
  String get gameHintWord314Template => 'ملف يُعالَج بالمتغيرات قبل النشر.';

  @override
  String get gameHintWord315Jinja => 'لغة قوالب تستخدمها Ansible.';

  @override
  String get gameHintWord316Abstraction => 'إخفاء تفاصيل التنفيذ خلف واجهة أبسط.';

  @override
  String get gameHintWord317Agile => 'نهج تسليم برمجيات تكراري يركز على التغذية الراجعة.';

  @override
  String get gameHintWord318Puppet => 'أداة إدارة إعدادات تستخدم ملفات manifests تصريحية.';

  @override
  String get gameHintWord319Airflow => 'منصة لجدولة وتنسيق مخططات DAG لسير العمل.';

  @override
  String get gameHintWord320Argo => 'عائلة مشاريع سحابية أصلية تتضمن متحكم تسليم GitOps.';

  @override
  String get gameHintWord321Rds => 'اختصار خدمة قواعد البيانات العلائقية المُدارة من AWS.';

  @override
  String get gameHintWord322Sqs => 'اختصار قائمة الرسائل المُدارة من AWS.';

  @override
  String get gameHintWord323Sns => 'اختصار خدمة الإشعارات بنمط النشر والاشتراك من AWS.';

  @override
  String get gameHintWord324Ses => 'اختصار خدمة إرسال البريد الإلكتروني من AWS.';

  @override
  String get gameHintWord325Iam => 'اختصار إدارة الهوية والوصول في السحابة.';

  @override
  String get gameHintWord326Kms => 'اختصار خدمة إدارة مفاتيح التشفير من AWS.';

  @override
  String get gameHintWord327Waf => 'جدار حماية يرشّح طلبات الويب على طبقة التطبيق.';

  @override
  String get gameHintWord328Eks => 'اختصار خدمة Kubernetes المُدارة من AWS.';

  @override
  String get gameHintWord329Ecs => 'اختصار خدمة تنسيق الحاويات المُدارة من AWS.';

  @override
  String get gameHintWord330Ecr => 'اختصار سجل صور الحاويات من AWS.';

  @override
  String get gameHintWord331Aurora => 'قاعدة بيانات علائقية من AWS متوافقة مع MySQL وPostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'مستودع بيانات تحليلي من AWS.';

  @override
  String get gameHintWord333Neptune => 'قاعدة بيانات رسومية مُدارة من AWS.';

  @override
  String get gameHintWord334Elasticache => 'خدمة تخزين مؤقت في الذاكرة مُدارة من AWS.';

  @override
  String get gameHintWord335Athena => 'خدمة AWS للاستعلام عن بيانات تخزين الكائنات باستخدام SQL.';

  @override
  String get gameHintWord336Glue => 'خدمة AWS عديمة الخوادم لتكامل البيانات وETL.';

  @override
  String get gameHintWord337Emr => 'منصة AWS لعناقيد معالجة البيانات الضخمة المُدارة.';

  @override
  String get gameHintWord338Lambda => 'خدمة AWS تنفذ الدوال دون إدارة الخوادم.';

  @override
  String get gameHintWord339Cloudfront => 'شبكة توصيل محتوى عالمية من AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'خدمة AWS تجمع المقاييس والسجلات والتنبيهات.';

  @override
  String get gameHintWord341Cloudshell => 'بيئة صدفة من AWS تعمل في المتصفح.';

  @override
  String get gameHintWord342Codecommit => 'خدمة مستودعات Git مُدارة من AWS.';

  @override
  String get gameHintWord343Codebuild => 'خدمة AWS تجمّع المصدر وتشغّل اختبارات البناء.';

  @override
  String get gameHintWord344Codedeploy => 'خدمة AWS لنشر التطبيقات تلقائيًا.';

  @override
  String get gameHintWord345Codepipeline => 'خدمة AWS لخطوط التسليم المستمر.';

  @override
  String get gameHintWord346Guardduty => 'خدمة AWS ذكية لكشف التهديدات.';

  @override
  String get gameHintWord347Inspector => 'خدمة AWS تقيّم أحمال العمل بحثًا عن الثغرات.';

  @override
  String get gameHintWord348Macie => 'خدمة AWS تكتشف البيانات الحساسة في تخزين الكائنات.';

  @override
  String get gameHintWord349Shield => 'خدمة AWS مُدارة للحماية من DDoS.';

  @override
  String get gameHintWord350Snowball => 'جهاز AWS مادي لنقل كميات كبيرة من البيانات.';

  @override
  String get gameHintWord351Snowcone => 'جهاز صغير متين ضمن عائلة النقل دون اتصال في AWS.';

  @override
  String get gameHintWord352Datasync => 'خدمة AWS لنقل البيانات عبر الإنترنت تلقائيًا.';

  @override
  String get gameHintWord353Msk => 'اختصار خدمة Apache Kafka المُدارة من AWS.';

  @override
  String get gameHintWord354Backup => 'نسخة من البيانات يُحتفظ بها للاستعادة.';

  @override
  String get gameHintWord355Transcribe => 'خدمة AWS تحوّل الكلام إلى نص.';

  @override
  String get gameHintWord356Translate => 'خدمة AWS تترجم النص بين اللغات.';

  @override
  String get gameHintWord357Rekognition => 'خدمة AWS تحلل الصور والفيديو.';

  @override
  String get gameHintWord358Comprehend => 'خدمة AWS لتحليل اللغة الطبيعية.';

  @override
  String get gameHintWord359Textract => 'خدمة AWS تستخرج النصوص والجداول من المستندات.';

  @override
  String get gameHintWord360Sagemaker => 'منصة AWS لبناء نماذج التعلم الآلي ونشرها.';

  @override
  String get gameHintWord361Spanner => 'قاعدة بيانات علائقية موزعة عالميًا من Google Cloud.';

  @override
  String get gameHintWord362Pub => 'نصف النشر في نمط المراسلة بالنشر والاشتراك.';

  @override
  String get gameHintWord363Sub => 'نصف المشترك في نمط المراسلة بالنشر والاشتراك.';

  @override
  String get gameHintWord364Functions => 'وحدات شيفرة مدفوعة بالأحداث تقدمها منصات عديمة الخوادم.';

  @override
  String get gameHintWord365App => 'اختصار لتطبيق برمجي.';

  @override
  String get gameHintWord366Engine => 'مكوّن التنفيذ في أسماء مثل Compute Engine.';

  @override
  String get gameHintWord367Compute => 'سعة معالجة توفرها الأجهزة الافتراضية أو الحاويات.';

  @override
  String get gameHintWord368Network => 'أنظمة متصلة تتبادل البيانات.';

  @override
  String get gameHintWord369Security => 'حماية الأنظمة والمعلومات من التهديدات.';

  @override
  String get gameHintWord370Identity => 'تمثيل لمستخدم أو خدمة يُستخدم في قرارات الوصول.';

  @override
  String get gameHintWord371Monitoring => 'مراقبة مستمرة لسلامة النظام وسلوكه.';

  @override
  String get gameHintWord372Logging => 'تسجيل أحداث التطبيق والنظام المنفصلة.';

  @override
  String get gameHintWord373Trace => 'سجل لمسار طلب عبر استدعاءات الخدمات.';

  @override
  String get gameHintWord374Metrics => 'قياسات رقمية لسلوك النظام عبر الزمن.';

  @override
  String get gameHintWord375Alert => 'إشعار بأن حالة مراقَبة تتطلب الانتباه.';

  @override
  String get gameHintWord376Billing => 'تتبع الخدمات السحابية المستهلكة وتحصيل رسومها.';

  @override
  String get gameHintWord377Quota => 'حد لكمية المورد التي يمكن استهلاكها.';

  @override
  String get gameHintWord378Region => 'منطقة نشر سحابية جغرافية تحتوي مناطق توافر.';

  @override
  String get gameHintWord379Tenancy => 'ترتيب يصف كيفية مشاركة العملاء للبنية التحتية.';

  @override
  String get gameHintWord380Regional => 'يصف موردًا محصورًا في منطقة سحابية.';

  @override
  String get gameHintWord381Cosmos => 'اسم قاعدة بيانات Azure متعددة النماذج الموزعة عالميًا.';

  @override
  String get gameHintWord382Synapse => 'منصة تحليلات Azure تجمع بين مستودعات البيانات ومعالجتها.';

  @override
  String get gameHintWord383Sentinel => 'منصة Microsoft سحابية الأصل لمعلومات الأمان والأحداث.';

  @override
  String get gameHintWord384Defender => 'عائلة منتجات أمان من Microsoft تحمي أحمال العمل السحابية.';

  @override
  String get gameHintWord385Entra => 'عائلة منتجات هوية من Microsoft حلّت محل علامة Azure AD.';

  @override
  String get gameHintWord386Arm => 'اختصار Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'خدمة Azure توسّع الإدارة إلى موارد خارج Azure.';

  @override
  String get gameHintWord388Aks => 'اختصار خدمة Kubernetes المُدارة من Azure.';

  @override
  String get gameHintWord389Armor => 'لاحقة اسم خدمة حماية الويب من Google Cloud.';

  @override
  String get gameHintWord390Blob => 'نوع بيانات تخزين الكائنات في Azure.';

  @override
  String get gameHintWord391Files => 'خدمة Azure تقدم مشاركات ملفات شبكية مُدارة.';

  @override
  String get gameHintWord392Disk => 'جهاز تخزين كتلي مرتبط بجهاز افتراضي.';

  @override
  String get gameHintWord393Function => 'كتلة شيفرة قابلة للاستدعاء يمكنها إعادة نتيجة.';

  @override
  String get gameHintWord394Logic => 'فئة خدمات تطبيقات Azure لتكامل سير العمل.';

  @override
  String get gameHintWord395Insights => 'لاحقة اسم منتج قياس التطبيقات عن بُعد في Azure.';

  @override
  String get gameHintWord396Traffic => 'بيانات تتدفق بين نقاط نهاية الشبكة.';

  @override
  String get gameHintWord397Manager => 'لاحقة اسم منتج Azure Resource لمستوى التحكم فيه.';

  @override
  String get gameHintWord398Bastion => 'نقطة دخول مُدارة أو مشدَّدة للوصول إلى المضيفين الخاصين.';

  @override
  String get gameHintWord399Front => 'الكلمة الأولى في خدمة نقطة الدخول العالمية Front Door من Azure.';

  @override
  String get gameHintWord400Door => 'الكلمة الثانية في خدمة نقطة الدخول العالمية Front Door من Azure.';

  @override
  String get gameHintWord401Javascript => 'لغة برمجة تُستخدم على نطاق واسع في المتصفحات وبيئات Node.';

  @override
  String get gameHintWord402Perl => 'لغة نصوص معروفة بمعالجة النصوص والتعبيرات النمطية.';

  @override
  String get gameHintWord403Powershell => 'صدفة ولغة أتمتة كائنية التوجه من Microsoft.';

  @override
  String get gameHintWord404Java => 'لغة JVM استُخدمت لتنفيذ Jenkins.';

  @override
  String get gameHintWord405Json => 'صيغة بيانات خفيفة تضم كائنات ومصفوفات.';

  @override
  String get gameHintWord406Xml => 'صيغة ترميز تستخدم وسومًا مسماة متداخلة.';

  @override
  String get gameHintWord407Html => 'لغة ترميز تُستخدم لبناء صفحات الويب.';

  @override
  String get gameHintWord408Css => 'لغة أنماط تتحكم في عرض الويب.';

  @override
  String get gameHintWord409String => 'تسلسل من الأحرف النصية.';

  @override
  String get gameHintWord410Array => 'مجموعة مفهرسة من العناصر.';

  @override
  String get gameHintWord411Hash => 'مجموعة ارتباطية مفتاح-قيمة في Ruby وPerl.';

  @override
  String get gameHintWord412Object => 'قيمة وقت التشغيل لها خصائص وسلوك.';

  @override
  String get gameHintWord413Class => 'تعريف يُستخدم لبناء الكائنات في اللغات القائمة على الأصناف.';

  @override
  String get gameHintWord414Method => 'دالة مرتبطة بكائن أو صنف.';

  @override
  String get gameHintWord415Interface => 'عقد يصف العمليات التي يعرضها مكوّن.';

  @override
  String get gameHintWord416Subclass => 'صنف مشتق من صنف آخر.';

  @override
  String get gameHintWord417Super => 'كلمة مفتاحية لاستدعاء سلوك الصنف الأب.';

  @override
  String get gameHintWord418Protected => 'مستوى رؤية يقيّد الوصول بسياقات متعلقة بالصنف.';

  @override
  String get gameHintWord419Exception => 'حالة وقت تشغيل تقاطع سير التحكم الطبيعي.';

  @override
  String get gameHintWord420Regex => 'صيغة أنماط تُستخدم لمطابقة النصوص.';

  @override
  String get gameHintWord421Lexical => 'يصف نطاقًا يحدده بنية الشيفرة المصدرية.';

  @override
  String get gameHintWord422Scalar => 'فئة متغيرات أحادية القيمة في Perl.';

  @override
  String get gameHintWord423Tuple => 'مجموعة مرتبة غير قابلة للتغيير في Python.';

  @override
  String get gameHintWord424List => 'مجموعة مرتبة قابلة للتغيير في Python.';

  @override
  String get gameHintWord425Dict => 'اسم نوع الربط المضمّن في Python.';

  @override
  String get gameHintWord426Dictionary => 'مجموعة تربط المفاتيح بالقيم المرتبطة بها.';

  @override
  String get gameHintWord427Set => 'مجموعة من قيم متمايزة.';

  @override
  String get gameHintWord428Boolean => 'نوع بيانات يمثل صحيحًا أو خاطئًا.';

  @override
  String get gameHintWord429Integer => 'نوع رقمي يمثل الأعداد الصحيحة.';

  @override
  String get gameHintWord430Float => 'نوع رقمي يمثل قيم الفاصلة العائمة.';

  @override
  String get gameHintWord431Double => 'نوع فاصلة عائمة مزدوج الدقة.';

  @override
  String get gameHintWord432Null => 'قيمة تمثل غياب كائن أو نتيجة.';

  @override
  String get gameHintWord433Undefined => 'قيمة JavaScript لقيمة مسندة مفقودة.';

  @override
  String get gameHintWord434Promise => 'كائن JavaScript يمثل نتيجة غير متزامنة مستقبلية.';

  @override
  String get gameHintWord435Async => 'كلمة مفتاحية تعلّم دالة غير متزامنة.';

  @override
  String get gameHintWord436Await => 'كلمة مفتاحية تنتظر نتيجة غير متزامنة.';

  @override
  String get gameHintWord437Callback => 'دالة تُمرَّر ليستدعيها إجراء آخر.';

  @override
  String get gameHintWord438Closure => 'دالة تحتفظ بإمكانية الوصول إلى نطاقها المعجمي المحيط.';

  @override
  String get gameHintWord439Generator => 'دالة تنتج تسلسلًا بكسل عبر قيم تُمرَّر بـ yield.';

  @override
  String get gameHintWord440Iterator => 'كائن يتقدم عبر قيم مجموعة.';

  @override
  String get gameHintWord441Print => 'دالة شائعة تكتب قيمة إلى المخرجات.';

  @override
  String get gameHintWord442Input => 'دالة Python تقرأ سطرًا من الإدخال القياسي.';

  @override
  String get gameHintWord443Open => 'دالة تُستخدم للحصول على مقبض ملف.';

  @override
  String get gameHintWord444Close => 'عملية تحرر ملفًا أو اتصالًا مفتوحًا.';

  @override
  String get gameHintWord445Read => 'عملية تجلب البيانات من تدفق أو ملف.';

  @override
  String get gameHintWord446Write => 'عملية ترسل البيانات إلى تدفق أو ملف.';

  @override
  String get gameHintWord447Append => 'يضيف عنصرًا إلى نهاية مجموعة.';

  @override
  String get gameHintWord448Split => 'يقسّم النص إلى سلاسل فرعية باستخدام فاصل.';

  @override
  String get gameHintWord449Join => 'يدمج تسلسلًا من السلاسل النصية باستخدام فاصل.';

  @override
  String get gameHintWord450Strip => 'يزيل المسافات البيضاء المحيطة من سلسلة Python.';

  @override
  String get gameHintWord451Chomp => 'يزيل فاصل السجل الأخير في Perl أو Ruby.';

  @override
  String get gameHintWord452Map => 'يطبق تحويلًا على كل عنصر في مجموعة.';

  @override
  String get gameHintWord453Filter => 'يُبقي عناصر المجموعة التي تحقق شرطًا.';

  @override
  String get gameHintWord454Reduce => 'يدمج مجموعة في نتيجة متراكمة.';

  @override
  String get gameHintWord455Range => 'نوع Python يمثل متتالية حسابية من الأعداد الصحيحة.';

  @override
  String get gameHintWord456Length => 'خاصية أو دالة تعيد حجم مجموعة.';

  @override
  String get gameHintWord457Len => 'دالة Python مضمّنة تعيد حجم المجموعة.';

  @override
  String get gameHintWord458Type => 'دالة Python تعيد نوع كائن.';

  @override
  String get gameHintWord459Isinstance => 'دالة Python تتحقق من الانتماء إلى تسلسل هرمي لنوع.';

  @override
  String get gameHintWord460Yield => 'كلمة مفتاحية تنتج قيمة من مولّد.';

  @override
  String get gameHintWord461Saas => 'نموذج سحابي يقدم تطبيقات برمجية كاملة.';

  @override
  String get gameHintWord462Paas => 'نموذج سحابي يوفر منصة تطوير تطبيقات مُدارة.';

  @override
  String get gameHintWord463Iaas => 'نموذج سحابي يوفر حوسبة وتخزينًا وشبكات افتراضية.';

  @override
  String get gameHintWord464Hybrid => 'نهج سحابي يجمع بين بنية تحتية خاصة وعامة.';

  @override
  String get gameHintWord465Archive => 'تخزين طويل الأمد للبيانات قليلة الاستخدام.';

  @override
  String get gameHintWord466Public => 'نموذج ملكية سحابية يقدم الخدمات لعدة عملاء.';

  @override
  String get gameHintWord467Private => 'نموذج سحابي مخصص لمؤسسة واحدة.';

  @override
  String get gameHintWord468Scalability => 'القدرة على التعامل مع حمل متزايد بإضافة موارد.';

  @override
  String get gameHintWord469Availability => 'مدى بقاء الخدمة متاحة عند الحاجة.';

  @override
  String get gameHintWord470Resilience => 'القدرة على تحمل الأعطال والتعافي منها.';

  @override
  String get gameHintWord471Redundancy => 'مكونات مكررة تقلل نقاط الفشل الأحادية.';

  @override
  String get gameHintWord472Disaster => 'انقطاع كبير تعالجه استراتيجية استعادة.';

  @override
  String get gameHintWord473Recovery => 'استعادة الخدمة أو البيانات بعد عطل.';

  @override
  String get gameHintWord474Replicate => 'نسخ البيانات أو أحمال العمل إلى موقع آخر.';

  @override
  String get gameHintWord475Snapshotting => 'أخذ نسخ لحظية من البيانات أو حالة النظام.';

  @override
  String get gameHintWord476Restore => 'عملية استرجاع البيانات من نسخة محفوظة.';

  @override
  String get gameHintWord477Residency => 'متطلب يحدد الموقع الجغرافي للبيانات المخزنة.';

  @override
  String get gameHintWord478Compliance => 'الالتزام بالأنظمة والضوابط المؤسسية المطلوبة.';

  @override
  String get gameHintWord479Governance => 'سياسات وعمليات تتحكم في استخدام التقنية.';

  @override
  String get gameHintWord480Audit => 'مراجعة للأنشطة المسجلة وأدلة الامتثال.';

  @override
  String get gameHintWord481Token => 'اعتماد أو رمز يمثل التفويض أو الهوية.';

  @override
  String get gameHintWord482Oauth => 'إطار تفويض يتيح الوصول المفوَّض.';

  @override
  String get gameHintWord483Saml => 'معيار قائم على XML يُستخدم عادةً لتسجيل الدخول الموحد في المؤسسات.';

  @override
  String get gameHintWord484Cmdlet => 'أمر متخصص يُستخدم في خطوط PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'تسلسل محدد من الخطوات لحل مشكلة حسابية.';

  @override
  String get gameHintWord486Key => 'قيمة تُستخدم للتحكم في التشفير أو لتعريف البيانات المخزنة.';

  @override
  String get gameHintWord487Alias => 'اسم بديل لأمر صدفة أو مورد.';

  @override
  String get gameHintWord488Amend => 'خيار إيداع Git يستبدل أحدث إيداع.';

  @override
  String get gameHintWord489Allsigned => 'سياسة تنفيذ PowerShell تتطلب سكربتات موقّعة.';

  @override
  String get gameHintWord490Remotesigned => 'سياسة PowerShell تتطلب توقيعات على السكربتات المنزّلة.';

  @override
  String get gameHintWord491Acl => 'قائمة تحدد أذونات المستخدمين أو الأنظمة.';

  @override
  String get gameHintWord492Uid => 'معرّف رقمي يُعيَّن لمستخدم Unix.';

  @override
  String get gameHintWord493Setgid => 'بت إذن يؤثر في هوية المجموعة أثناء التنفيذ أو الوراثة.';

  @override
  String get gameHintWord494Setfacl => 'أمر Linux يضبط قوائم التحكم بالوصول للملفات.';

  @override
  String get gameHintWord495Isolation => 'فصل يمنع أحمال العمل من التداخل فيما بينها.';

  @override
  String get gameHintWord496Sighup => 'إشارة إغلاق Unix تُستخدم غالبًا لطلب إعادة تحميل الإعدادات.';

  @override
  String get gameHintWord497Sigint => 'إشارة مقاطعة Unix تُولَّد عادةً بـ Control-C.';

  @override
  String get gameHintWord498Sigstop => 'إشارة Unix توقف عملية مؤقتًا دون إنهائها.';

  @override
  String get gameHintWord499Secrets => 'قيم حساسة مثل كلمات المرور ومفاتيح الوصول.';

  @override
  String get gameHintWord500Secure => 'يصف اتصالًا محميًا من الوصول غير المصرح به.';

  @override
  String get fontSettingsTitle => 'الخط';

  @override
  String get fontChangeFont => 'تغيير الخط';

  @override
  String get fontSystemDefault => 'الافتراضي للنظام';

  @override
  String get fontPreview => 'معاينة';

  @override
  String get fontPreviewSample => 'تعلّم DevOps سؤالًا تلو الآخر';

  @override
  String get fontSelected => 'محدد';

  @override
  String get fontLatinOnlyNote => 'تُطبَّق الخطوط المخصصة على الحروف اللاتينية. تحتفظ الكتابات الأخرى بخط جهازك.';

  @override
  String get fontDescSystem => 'الخط المدمج في جهازك';

  @override
  String get fontDescGeometric => 'خط هندسي بلا زوائد';

  @override
  String get fontDescGeometricRounded => 'خط هندسي مستدير بلا زوائد';

  @override
  String get fontDescFriendly => 'خط ودود بلا زوائد';

  @override
  String get fontDescCondensed => 'مضغوط';

  @override
  String get fontDescRounded => 'خط مستدير بلا زوائد';

  @override
  String get fontDescRoundedDisplay => 'خط عرض مستدير';

  @override
  String gameScene3dScene(String value1) {
    return 'مشهد 3D $value1';
  }
}
