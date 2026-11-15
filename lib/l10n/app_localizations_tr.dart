// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTour => 'Uygulama turu';

  @override
  String get skipTour => 'Turu atla';

  @override
  String get finishTour => 'Turu bitir';

  @override
  String tourStep(int current, int total) {
    return 'Adım $current / $total';
  }

  @override
  String get tourMenuTitle => 'Gezinme menüsü';

  @override
  String get tourSearch => 'İlgili test kategorilerini bulmak için buraya bir konu yazın.';

  @override
  String get tourCategory => 'Karma test için DevOps\'a dokunun. Diğer kategoriler soru setleri sunar. Soruları daha sonra incelemek için kaydedin.';

  @override
  String get tourMenu => 'Gezinme menüsünü açmak için bu düğmeye dokunun.';

  @override
  String get tourLearning => 'Kartlar için Öğrenme\'yi açın. Her yöne kaydırın, karıştırın, otomatik geçişi açın veya kartı kaydedin.';

  @override
  String get tourGames => 'Puan kazanmak için oynayın. Seviyeli oyunlar tamamlanan seviye başına 100 puan verir; ipuçları 20 puandır.';

  @override
  String get tourAchievements => 'Başarımlarınızı burada görün. Açılır pencereler yeni başarımları ve kullanılabilir temaları bildirir.';

  @override
  String get tourSettings => 'Dil, tema ve sesi seçin. Yer imleri için Kaydedilen veriler\'i, bu rehberi tekrarlamak için Uygulama turu\'nu açın.';

  @override
  String get achievementUnlocked => 'Başarım kazanıldı!';

  @override
  String get themeUnlocked => 'Yeni tema kullanılabilir!';

  @override
  String get themeUnlockedMessage => 'Bu temayı artık Ayarlar > Temalar bölümünden seçebilirsiniz.';

  @override
  String get gameSounds => 'Oyun sesleri';

  @override
  String get gameSoundsDescription => 'Oyun ve test efektleri. Cihazın ses seviyesini ve sessiz modunu kontrol edin.';

  @override
  String get testSound => 'Sesi dene';

  @override
  String get soundSettingBusy => 'Lütfen bekleyin...';

  @override
  String get soundSettingError => 'Ses ayarı yüklenemedi veya kaydedilemedi. Tekrar deneyin.';

  @override
  String get soundPlaybackError => 'Ses çalınamadı. Cihazın veya tarayıcının ses ayarlarını kontrol edin.';

  @override
  String get saveData => 'Kaydedilen veriler';

  @override
  String get learningTranslationUnavailable => 'Bu kart henüz seçilen dile çevrilmedi.';

  @override
  String get saveQuestion => 'Soruyu kaydet';

  @override
  String defaultPortQuestion(String service) {
    return '$service için varsayılan bağlantı noktası nedir?';
  }

  @override
  String get removeSavedItem => 'Kaydedilenlerden kaldır';

  @override
  String get noSavedData => 'Henüz hiçbir şey kaydedilmedi. Öğrenme kartlarını veya test sorularını yer imlerine ekleyin.';

  @override
  String get savedDataError => 'Kaydedilen veriler yüklenemedi veya güncellenemedi. Tekrar deneyin.';

  @override
  String get savedItemUnavailable => 'Bu kaydedilen öğe artık kullanılamıyor.';

  @override
  String get correctAnswer => 'Doğru cevap';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get certificates => 'Sertifikalar';

  @override
  String get whatsNew => 'Yenilikler';

  @override
  String get settings => 'Ayarlar';

  @override
  String get darkMode => 'Koyu tema';

  @override
  String get lightMode => 'Açık tema';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil seçin';

  @override
  String get english => 'İngilizce';

  @override
  String get hindi => 'Hintçe';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Quizi başlat';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Kategoriyi değiştir';

  @override
  String get dailyQuiz => 'Günlük quiz';

  @override
  String get dailyQuizCompleted => 'Günlük quiz tamamlandı';

  @override
  String get dailyQuizCompletedMessage => 'Bugünün günlük quizini zaten tamamladınız.\n\nYeni bir mücadele için yarın tekrar gelin!';

  @override
  String get leaderboard => 'Liderlik tablosu';

  @override
  String get shareApp => 'Uygulamayı paylaş';

  @override
  String get rateApp => 'Uygulamayı değerlendir';

  @override
  String get about => 'Hakkında';

  @override
  String get ok => 'Tamam';

  @override
  String get home => 'Ana sayfa';

  @override
  String get games => 'Oyunlar';

  @override
  String get referAndEarn => 'Davet et, kazan';

  @override
  String get themes => 'Temalar';

  @override
  String get version => 'Sürüm';

  @override
  String get developer => 'Geliştirici';

  @override
  String get contact => 'İletişim';

  @override
  String get learning => 'Öğrenme';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Benimle iletişime geçin';

  @override
  String get aboutDescription => 'DevOps Quiz; Linux, Docker, Kubernetes, ağ, Git, Jenkins, Terraform, Ansible ve diğer DevOps teknolojileriyle ilgili özenle seçilmiş binlerce soruyla mülakatlara ve sertifika sınavlarına hazırlanmanıza yardımcı olur.';

  @override
  String get quizResult => 'Quiz sonucu';

  @override
  String get outstanding => 'Harika!';

  @override
  String get greatJob => 'Çok iyi!';

  @override
  String get goodEffort => 'Güzel çaba!';

  @override
  String get keepPracticing => 'Pratik yapmaya devam edin!';

  @override
  String get dontGiveUp => 'Vazgeçmeyin!';

  @override
  String get shareMessage1 => 'Aldığım puan';

  @override
  String get shareMessage2 => 'DevOps Quiz\'te!';

  @override
  String get downloadApp => 'Uygulamayı indirin:';

  @override
  String get score => 'Puan';

  @override
  String get points => 'Puanlar';

  @override
  String get percentage => 'Yüzde';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Tam puan bonusu';

  @override
  String get shareScore => 'Puanı paylaş';

  @override
  String get restartQuiz => 'Quizi yeniden başlat';

  @override
  String get backToCategories => 'Kategorilere dön';

  @override
  String get greatProgress => 'Aferin! Harika ilerliyorsunuz.';

  @override
  String get practiceMore => 'Güzel iş! Biraz daha pratikle daha yüksek puan alabilirsiniz.';

  @override
  String get keepLearning => 'Öğrenmeye devam edin ve tekrar deneyin. Pratik yaptıkça gelişeceksiniz.';

  @override
  String get everyExpertStarted => 'Her uzman bir zamanlar acemiydi. Pratik yapın ve daha güçlü dönün!';

  @override
  String get quizInstructions => 'Quiz talimatları';

  @override
  String get instruction1 => 'Her sette 25 soru bulunur.';

  @override
  String get instruction2 => 'Her soru için 30 saniyeniz var.';

  @override
  String get instruction3 => 'Yeşil = doğru cevap.';

  @override
  String get instruction4 => 'Kırmızı = yanlış cevap.';

  @override
  String get instruction5 => 'Cevap değiştirilemez.';

  @override
  String get instruction6 => 'Geri düğmesi yalnızca gözden geçirmek içindir.';

  @override
  String get instruction7 => 'Puanınız tamamlandıktan sonra gösterilir.';

  @override
  String get instruction8 => 'Her doğru cevap 10 puan kazandırır.';

  @override
  String excellentPerformance(Object expert) {
    return 'Mükemmel performans! Siz bir ${expert}siniz.';
  }

  @override
  String get selectCategory => 'Kategori seçin';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Set seçin';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Sorular';

  @override
  String get noScoresYet => 'Henüz puan yok';

  @override
  String get pointsShort => 'p';

  @override
  String get welcomeToDevOpsQuiz => 'DevOps Quiz\'e hoş geldiniz';

  @override
  String hiUser(String name) {
    return 'Merhaba $name';
  }

  @override
  String get challengeMode => 'Mücadele modu';

  @override
  String get challenge => 'Mücadele';

  @override
  String get question => 'Soru';

  @override
  String get reward => 'Ödül';

  @override
  String get survivalMode => 'Hayatta kalma modu';

  @override
  String get speedChallenge => 'Hız mücadelesi';

  @override
  String get dailyChallenge => 'Günlük mücadele';

  @override
  String get ultimateChallenge => 'Büyük mücadele';

  @override
  String get timeLeft => 'Kalan süre';

  @override
  String get completed => 'Tamamlandı';

  @override
  String get locked => 'Kilitli';

  @override
  String get back => 'Geri';

  @override
  String get next => 'İleri';

  @override
  String get submit => 'Gönder';

  @override
  String get achievements => 'Başarılar';

  @override
  String get streak => 'Seri';

  @override
  String get days => 'Gün';

  @override
  String get tomorrowsReward => 'Yarının ödülü';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Bugünkü #DevOps Quiz\'te $score/$totalQuestions puan aldım!\n\n🏆 Puanlar: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Yüzde: %$percentage\n\nPuanımı geçebilir misiniz?\n\nUygulamayı indirin:';
  }

  @override
  String get gameUiSpinWheel => 'Çarkı Çevir';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Çevir ve bonus puan kazan';

  @override
  String get gameUiScratchCard => 'Kazı Kazan Kart';

  @override
  String get gameUiScratchToRevealAReward => 'Ödülü ortaya çıkarmak için kazı';

  @override
  String get gameUiLuckySlots => 'Şanslı Slotlar';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Slotları çevir ve puan kazan';

  @override
  String get gameUiMysteryDeal => 'Gizemli Fırsat';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Bir gizemli kutu seç ve cevapla';

  @override
  String get gameUiMemoryMatch => 'Hafıza Eşleştirme';

  @override
  String get gameUiMatchDevOpsPairs => 'DevOps çiftlerini eşleştir';

  @override
  String get gameUiWordGuess => 'Kelime Tahmini';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Seviyeler boyunca DevOps kelimelerini tahmin et';

  @override
  String get gameUiFindWords => 'Kelime Bul';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Izgarada gizli DevOps terimlerini ara';

  @override
  String get gameUiSpotTheDifference => 'Farkı Bul';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'İki resimli sahne arasındaki beş değişikliği bul';

  @override
  String get gameUiJigsawPuzzle => 'Yapboz';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Paylaşılan HD hayvan ve doğa resimlerini yeniden birleştir';

  @override
  String get gameUiHighOrLow => 'Yüksek mi Düşük mü';

  @override
  String get gameUiBuildAStreak => 'Seri oluştur';

  @override
  String get gameUiTrueOrFalseBlitz => 'Doğru mu Yanlış mı Blitz';

  @override
  String get gameUiQuickAnswerQuiz => 'Hızlı cevap testi';

  @override
  String get gameUiCommandMatch => 'Komut Eşleştirme';

  @override
  String get gameUiMatchCommandsToMeanings => 'Komutları anlamlarıyla eşleştir';

  @override
  String get gameUiPortMaster => 'Port Ustası';

  @override
  String get gameUiGuessDefaultPorts => 'Varsayılan portları tahmin et';

  @override
  String get gameUiTicTacToe => 'XOX';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X XOX bilgisayar';

  @override
  String get gameUiConnectFour => 'Dörtlü Bağla';

  @override
  String get gameUiDropFourDiscs => 'Dört disk bırak';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Botlara karşı yarış';

  @override
  String get gameUiChess => 'Satranç';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Satranç tahtası geçerli hamleler iki oyunculu';

  @override
  String get gameUiSnakeAndLadders => 'Yılan ve Merdivenler';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Zarlı tahta yılanlar merdivenler iki oyunculu';

  @override
  String get gameUiGames => 'Oyunlar 🎮';

  @override
  String get gameUiPlayEarn => 'Oyna ve Kazan';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Oyun oyna ve bonus puan kazan!';

  @override
  String get gameUiSearchGames => 'Oyun ara';

  @override
  String get gameUiClearSearch => 'Aramayı temizle';

  @override
  String gameUiNoGamesMatch(String value1) {
    return '\"$value1\" ile eşleşen oyun yok';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Çevir ve bonus puan kazan.';

  @override
  String get gameUiScratchToRevealYourReward => 'Ödülünü ortaya çıkarmak için kazı.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Slotları çevir ve puan kazan.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Bir gizemli kutu seç ve puan kazanmak için doğru cevapla.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Puan kazanmak için DevOps çiftlerini eşleştir.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'DevOps terimini 6 denemede tahmin et.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Izgarada gizli DevOps terimlerini ara.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => '500 seviyede DevOps kelimelerini bulmak için kaydır.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'İki resimli sahne arasındaki beş değişikliği bul.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Paylaşılan HD hayvan ve doğa resimlerini yeniden birleştir.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Seri oluştur ve puanlarını kasana ekle.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Hızlı cevaplarla zamana karşı yarış.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Doğru mu Yanlış mı Blitz 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Komutları ne yaptıklarıyla eşleştir.';

  @override
  String get gameUiCommandMatch670a76e => 'Komut Eşleştirme 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Varsayılan portları 3 canla tahmin et.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Port Ustası 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Bilgisayara karşı O/X oyna.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Kazanmak için dört diski arka arkaya diz.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Taşlarınla üç bota karşı yarış.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Geçerli hamlelerle yerel iki oyunculu satranç.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Kurallara uygun iki oyunculu bir satranç maçı oyna.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'İki oyunculu zarlı tahta oyunu.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => '100\'e doğru yarış. Merdivenleri tırman ve yılanlardan kaç.';

  @override
  String get gameUiPlay => 'Oyna';

  @override
  String get gameUiWheelStopped => 'Çark Durdu!';

  @override
  String get gameUiYourRewardIs => 'Ödülün';

  @override
  String get gameUiPOINTS => 'PUAN';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Bu ödülü almak için 1 test sorusunu doğru cevapla.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Yanlış cevap = ödül kaybı.';

  @override
  String get gameUiAnswerQuestion => 'Soruyu Cevapla';

  @override
  String get gameUiSpinWheele449982 => '🎡 Çarkı Çevir';

  @override
  String get gameUiDailySpin => 'Günlük Çevirme';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Çarkı çevir, ardından ödülünü almak için bir soruyu cevapla!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Bugünkü çevirme hakkını zaten kullandın.';

  @override
  String get gameUiSpinning => 'Dönüyor...';

  @override
  String get gameUiSPINNOW => 'ŞİMDİ ÇEVİR';

  @override
  String get gameUiCOMEBACKTOMORROW => 'YARIN TEKRAR GEL';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Bugünün ödülü: ⭐ $value1 puan';
  }

  @override
  String get gameUiBackToGames => 'Oyunlara Dön';

  @override
  String get gameUiSPIN => 'ÇEVİR';

  @override
  String get gameUiRewardRevealed => 'Ödül Ortaya Çıktı!';

  @override
  String get gameUiYouFound => 'Buldun:';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Kazı Kazan Kart';

  @override
  String get gameUiDailyScratch => 'Günlük Kazı Kazan';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Bugünün ödülünü ortaya çıkarmak için kartı kazı!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Bugünkü kazı kazan kartını zaten kullandın.';

  @override
  String get gameUiAlreadyScratched => 'Zaten Kazındı';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Başka bir ödül için yarın tekrar gel.';

  @override
  String get gameUiYouRevealed => 'Ortaya çıkardın:';

  @override
  String get gameUiSCRATCHHERE => 'BURAYI KAZI  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => 'Şanslı 777!';

  @override
  String get gameUiYourReward => 'Ödülün';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Şanslı Slotlar';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Slotları çevir, ardından ödülü almak için bir soruyu cevapla!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Bugün zaten oynadın.';

  @override
  String get gameUiSPINNING => 'DÖNÜYOR...';

  @override
  String get gameUiROLLNOW => 'ŞİMDİ AT';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 puan kazanılabilir!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Gizemli Fırsat durumu kontrol edilemiyor: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Kutu $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 PUAN';
  }

  @override
  String get gameUiStartQuestion => 'Soruyu Başlat';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Gizemli Fırsat';

  @override
  String get gameUiMysteryDealCompleted => 'Gizemli Fırsat Tamamlandı!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Gizemli Fırsat\'ı bugün zaten oynadınız.';

  @override
  String get gameUiTodayYouWon => 'Bugün kazandığınız';

  @override
  String get gameUiTodaySReward => 'Bugünün ödülü';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 PUAN';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 PUAN KAYBEDİLDİ';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Yeni bir gizemli kutu için yarın tekrar gelin!';

  @override
  String get gameUiChooseYourMysteryBox => 'Gizemli Kutunuzu Seçin';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Her kutu 10 ile 1000 puan arasında gizli bir ödül içerir.';

  @override
  String get gameUiPickOnlyOneBox => 'Yalnızca bir kutu seçin!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return '$value1 seviyenin tümü tamamlandı!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Seviye $value1 tamamlandı!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return '$value1 hamlede tamamlandı.\n$value2 puan kazandınız!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return '$value1 hamlede tamamlandı.\nBu seviye zaten tamamlanmıştı.';
  }

  @override
  String get gameUiNextLevel => 'Sonraki seviye';

  @override
  String get gameUiDone => 'Bitti';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Hafıza Eşleştirme 🧠';

  @override
  String get gameUiAll100LevelsComplete => '100 seviyenin tümü tamamlandı!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Tüm Hafıza Eşleştirme seviyelerini tamamladınız. Tebrikler!';

  @override
  String get gameUiChooseLevel => 'Seviye seç';

  @override
  String gameUiMoves(String value1) {
    return 'Hamle: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Seviye $value1 / $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 çift';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Seviye $value1\'i ezberleyin';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return '$value1 eşleşen çifti bulun';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'DevOps Quiz logosu';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Bölüm 1 · Derleme hattını onarın';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Bölüm 2 · Bulut platformunu ölçeklendirin';

  @override
  String get gameUiChapter3ProtectProduction => 'Bölüm 3 · Üretim ortamını koruyun';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Göndermek için kalan $value1 harfin tümünü kullanın.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Tüm Seviyeler Tamamlandı!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Seviye $value1 Tamamlandı!';
  }

  @override
  String get gameUiTryAgain => 'Tekrar Dene';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'Kelime $value1 idi. $value2 puan kazandınız.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'Kelime $value1 idi. $value3 ipucundan sonra $value2 puan kazandınız.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'Kelime $value1 idi. $value3 ipucundan sonra $value2 puan kazandınız.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'Kelime $value1 idi. Seviye $value2 hâlâ sizi bekliyor.';
  }

  @override
  String get gameUiFinish => 'Bitir';

  @override
  String get gameUiNextLevel254fd73 => 'Sonraki Seviye';

  @override
  String get gameUiRetryLevel => 'Seviyeyi Tekrarla';

  @override
  String get gameUiHowToPlay => 'Nasıl Oynanır';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Her seviyede bir DevOps kelimesi vardır. Beş harften kısa kelimeler hiç ücretsiz harf olmadan başlar; daha uzun kelimeler bir harfle başlar. Cevabı oluşturmak için harf rafını kullanın ve Enter\'a basın. İpuçları başka bir harfi gösterir ve bakiyenizden 20 puana mal olur. Tamamlanan her seviye 100 puan kazandırır.';

  @override
  String get gameUiGotIt => 'Anladım';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return '$value1 Seviyenin Tümü Tamamlandı!';
  }

  @override
  String get gameUiEasy => 'Kolay';

  @override
  String get gameUiMedium => 'Orta';

  @override
  String get gameUiHard => 'Zor';

  @override
  String get gameUiHowToPlay13a6b22 => 'Nasıl oynanır';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Seviye $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Ödül $value1 puan · kullanılan ipucu $value2';
  }

  @override
  String get gameUiHint20Pts => 'İpucu · −20 puan';

  @override
  String get gameUiEnter => 'Enter';

  @override
  String get gameUiDelete => 'Sil';

  @override
  String get gameUiDragThroughAWord => 'Bir kelimenin üzerinden sürükleyin';

  @override
  String get gameUiDragThroughEachWord => 'Her kelimenin üzerinden sürükleyin';

  @override
  String get gameUiReleaseToSelect => 'Seçmek için bırakın';

  @override
  String gameUiFound(String value1) {
    return '$value1 bulundu';
  }

  @override
  String get gameUiNoWordThere => 'Orada kelime yok';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 zaten bulundu';
  }

  @override
  String gameUiLookFor(String value1) {
    return '$value1 kelimesini arayın';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Tüm seviyeler tamamlandı!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Tüm kelimeleri buldunuz ve $value1 puan kazandınız.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Tüm kelimeleri buldunuz. Bu seviye zaten tamamlanmıştı.';

  @override
  String get gameUiAll500LevelsComplete => '500 seviyenin tümü tamamlandı!';

  @override
  String get gameUiReviewLevels => 'Seviyeleri gözden geçir';

  @override
  String gameUiLeft(String value1) {
    return '$value1 kaldı';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 puan';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'İlerleme kaydedilemedi. Lütfen tekrar deneyin.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return '$value1 puan kazandınız!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Bu resmi zaten tamamladınız. Tekrar oynamada ek puan verilmez.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Tüm resimleri tamamladınız!';

  @override
  String get gameUiLevels => 'Seviyeler';

  @override
  String get gameUiPictureB => 'Resim B';

  @override
  String get gameUiPictureA => 'Resim A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Resim yüklenemedi. Tekrar dene';

  @override
  String get gameUiResetZoom => 'Yakınlaştırmayı sıfırla';

  @override
  String get gameUiZoomBothPictures => 'Her iki resmi yakınlaştır';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'İpucu · ipucu başına $value1 puan';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'İlerleme yüklenemedi. Tekrar dene';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Seviye $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Tüm farklar bulundu!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return '$count farkı bulun. Her birine iki resimden herhangi birinde dokunun.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Kaçırılan: $value1  ·  İpuçları: $value2 (−$value3 puan)  ·  $value4 seviye tamamlandı';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Sonraki seviye: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Bulmaca $value1 tamamlandı!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Resim $value1 hamlede tamamlandı. $value2 puan kazandınız.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Resim $value1 hamlede tamamlandı.';
  }

  @override
  String get gameUiNextPuzzle => 'Sonraki bulmaca';

  @override
  String get gameUiAllPuzzlesComplete => 'Tüm bulmacalar tamamlandı';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Bulmaca parçası $value1 / $value2, doğru yerleştirildi';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Bulmaca parçası $value1 / $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Bulmaca seç';

  @override
  String get gameUiShufflePieces => 'Parçaları karıştır';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Bulmaca resmi yüklenemedi.';

  @override
  String get gameUiPreviousPuzzle => 'Önceki bulmaca';

  @override
  String gameUiPuzzle(String value1) {
    return 'Bulmaca $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 hamle';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Parçaları yer değiştirmek için sürükleyin veya iki parçaya dokunun.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 bulmaca çözüldü  ·  her biri $value3 puan';
  }

  @override
  String get gameUiGameOver => 'Oyun Bitti';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Sayı $value1 idi.\nSeri: $value2\n$value3 puan kazandınız!\n\nYeni bir şans için yarın tekrar gelin!';
  }

  @override
  String get gameUiHigherOrLower => 'Yüksek mi Düşük mü 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Bugün Zaten Oynadınız!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return '$value1/$value2/$value3 tarihinde oynadınız.\n\nYeni bir seri oluşturmak için yarın tekrar gelin!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Bugün zaten oynadınız.\n\nYeni bir şans için yarın tekrar gelin!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Seri: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Puan: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Sonraki sayı daha yüksek mi yoksa daha düşük mü olacak?';

  @override
  String get gameUiLower => 'Daha düşük';

  @override
  String get gameUiHigher => 'Daha yüksek';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Doğru mu Yanlış mı Blitz ⚡';

  @override
  String get gameUiTimeSUp => 'Süre Doldu!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Doğru cevaplar: $value1\nEn iyi seri: $value2\n$value3$value4 puan kazandınız!\n\nYeni bir tur için yarın tekrar gelin!';
  }

  @override
  String get gameUiStreakBonus20 => 'Seri bonusu: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'Gösterilen cevap doğru mu yanlış mı?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value2 kategoride $value1 soru';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return '$value1 saniyeniz var. Her doğru cevap $value2 puan kazandırır. Yanlış cevap $value3 saniye kaybettirir. 5\'lik bir seriye ulaşırsanız +20 bonus kazanırsınız.';
  }

  @override
  String get gameUiRoundTimer => 'Tur zamanlayıcısı';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 saniye';
  }

  @override
  String get gameUiStart => 'Başlat';

  @override
  String get gameUiTrue => 'Doğru';

  @override
  String get gameUiFalse => 'Yanlış';

  @override
  String get gameUiCommandMatch26b0e70 => 'Komut Eşleştirme 🔗';

  @override
  String get gameUiAllMatched => 'Hepsi Eşleşti!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Hatalar: $value1\n$value2 puan kazandınız!\n\nYeni komutlar için yarın tekrar gelin!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Tur $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Bir komuta dokunun, ardından anlamına dokunun.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Şimdi eşleşen anlama dokunun.';

  @override
  String get gameUiPortMaster9c730cf => 'Port Ustası 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Port Ustası!';

  @override
  String get gameUiOutOfLives => 'Canlar Bitti';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Doğru cevaplar: $value1\n$value2 puan kazandınız!\n\nYeni bir tur için yarın tekrar gelin!';
  }

  @override
  String get gameUiYouEarned10Points => '10 puan kazandınız!';

  @override
  String get gameUiYouWin => 'Kazandınız!';

  @override
  String gameUiWins(String value1) {
    return '$value1 kazandı!';
  }

  @override
  String get gameUiXWins => 'X kazandı!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) kazandı!';
  }

  @override
  String get gameUiComputerWins => 'Bilgisayar kazandı';

  @override
  String get gameUiOWins => 'O kazandı!';

  @override
  String get gameUiPlayer2OWins => 'Oyuncu 2 (O) kazandı!';

  @override
  String get gameUiItSADraw => 'Berabere';

  @override
  String get gameUiYourTurn => 'Sıra sizde';

  @override
  String gameUiSTurn(String value1) {
    return 'Sıra $value1 oyuncusunda';
  }

  @override
  String get gameUiComputerIsThinking => 'Bilgisayar düşünüyor';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Hamle sırası Oyuncu $value1 oyuncusunda';
  }

  @override
  String gameUiToMove(String value1) {
    return 'Hamle sırası $value1 oyuncusunda';
  }

  @override
  String get gameUiPlayer2ToMove => 'Hamle sırası Oyuncu 2\'de';

  @override
  String get gameUiNewRound => 'Yeni tur';

  @override
  String get gameUiVsComputer => 'Bilgisayara karşı';

  @override
  String get gameUi2Players => '2 oyuncu';

  @override
  String get gameUiYou => 'Siz';

  @override
  String get gameUiDraws => 'Beraberlikler';

  @override
  String get gameUiPlayer2 => 'Oyuncu 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Hücre $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Tekrar oyna';

  @override
  String get gameUiConnectFourWin20Points => 'Connect Four galibiyeti: 20 puan!';

  @override
  String get gameUiBotWins => 'Bot kazandı!';

  @override
  String get gameUiRed => 'Kırmızı';

  @override
  String get gameUiYellow => 'Sarı';

  @override
  String get gameUiBoardFullDraw => 'Tahta dolu — berabere';

  @override
  String get gameUiBotIsThinking => 'Bot düşünüyor';

  @override
  String get gameUiBotTurn => 'Botun sırası';

  @override
  String get gameUiNewGame => 'Yeni oyun';

  @override
  String get gameUiVsBot => 'Bota karşı';

  @override
  String get gameUi2Player => '2 Oyuncu';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Bota karşı oynayın · disk bırakmak için bir sütuna dokunun';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'İki oyuncu · disk bırakmak için bir sütuna dokunun';

  @override
  String gameUiColumn(String value1) {
    return 'Sütun $value1';
  }

  @override
  String get gameUiYouRed => 'Siz · Kırmızı';

  @override
  String get gameUiRedPlayer1 => 'Kırmızı · Oyuncu 1';

  @override
  String get gameUiBotYellow => 'Bot · Sarı';

  @override
  String get gameUiYellowPlayer2 => 'Sarı · Oyuncu 2';

  @override
  String get gameUiLudoMatchStats => 'Ludo maç istatistikleri';

  @override
  String get gameUiNoCompletedMatchesYet => 'Henüz tamamlanmış maç yok.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Oynanan $value1  ·  Kazanılan $value2  ·  Kaybedilen $value3';
  }

  @override
  String get gameUiClose => 'Kapat';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Ludo şampiyonu! 50 puan kazandınız.';

  @override
  String get gameUiNewLudoGame => 'Yeni Ludo oyunu';

  @override
  String get gameUiBotOpponents => 'Bot rakipler';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Yeni bir maç başlatmak kayıtlı oyununuzun yerini alır.';

  @override
  String get gameUiCancel => 'İptal';

  @override
  String get gameUiStartGame => 'Oyunu başlat';

  @override
  String get gameUiPlayerColours => 'Oyuncu renkleri';

  @override
  String get gameUiApply => 'Uygula';

  @override
  String get gameUiMatchStats => 'Maç istatistikleri';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 şah matla kazandı';
  }

  @override
  String get gameUiBlack => 'Siyah';

  @override
  String get gameUiWhite => 'Beyaz';

  @override
  String get gameUiComputerWinsByCheckmate => 'Bilgisayar şah matla kazandı';

  @override
  String get gameUiYouWinByCheckmate => 'Şah matla kazandınız';

  @override
  String get gameUiDrawByStalemate => 'Pat nedeniyle berabere';

  @override
  String get gameUiDraw => 'Berabere';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Şah';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Şah mat! 50 puan kazandın.';

  @override
  String get gameUiStartANewGame => 'Yeni oyun başlatılsın mı?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Oyuncu modunu değiştirmek kayıtlı maçın yerine geçer.';

  @override
  String get gameUiComputer => 'Bilgisayar';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Beyaz / Oyuncu 2 · Siyah';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Sen Beyaz\'sın · Bilgisayar Siyah';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Beyaz) · Bilgisayar (Siyah)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Sen Siyah\'sın · Bilgisayar Beyaz';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Siyah) · Bilgisayar (Beyaz)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 ilk zarı atar';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 tekrar atar';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 zar atacak';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Yılan ve Merdiven zaferi: 100 puan!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Oyuncuları değiştirmek kayıtlı oyunun yerine geçer.';

  @override
  String get gameUiStartANewLevel => 'Yeni seviye başlatılsın mı?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Seviyeyi değiştirmek kayıtlı oyunun yerine geçer.';

  @override
  String get gameUiChangeLevel => 'Seviyeyi değiştir';

  @override
  String get gameUiPlayers => 'Oyuncular';

  @override
  String get gameUiPlayAgainstBot => 'Bota karşı oyna';

  @override
  String get gameUi3Players => '3 oyuncu';

  @override
  String get gameUi4Players => '4 oyuncu';

  @override
  String get gameUiLevel1709305 => 'Seviye';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Seviye $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 oyuncu · Seviye $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Zar at';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1, $value2 üzerinde';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Soru yüklenemedi: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Doğru Cevap!';

  @override
  String get gameUiWrongAnswer => 'Yanlış Cevap';

  @override
  String get gameUiYouClaimedYourReward => 'Ödülünü aldın!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Toplam puanına eklendi.';

  @override
  String get gameUiTheCorrectAnswerWas => 'Doğru cevap:';

  @override
  String gameUiPointRewardLost(String value1) {
    return '$value1 puanlık ödül kaybedildi.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Mevcut puanların düşülmedi.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Yarın tekrar gel ve yeniden dene.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Soru yüklenemedi.';

  @override
  String get gameUiYourReward677fa6e => 'Ödülün';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 PUAN';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Almak için doğru cevap ver!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Bir tur daha için yarın gel.';

  @override
  String get gameUiGreen => 'Yeşil';

  @override
  String get gameUiBlue => 'Mavi';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 düşünüyor';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: bir taş seç';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: zarı at';
  }

  @override
  String gameUiDice(String value1) {
    return 'Zar $value1';
  }

  @override
  String get gameUiRollDice => 'Zar at';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 taş $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Oyuncu $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'İpucu kullanmak için 20 puana ihtiyacınız var.';

  @override
  String get gameUiHintPurchaseFailed => 'İpucu satın alınamadı. Lütfen tekrar deneyin.';

  @override
  String get gameUiChessKing => 'şah';

  @override
  String get gameUiChessQueen => 'vezir';

  @override
  String get gameUiChessRook => 'kale';

  @override
  String get gameUiChessBishop => 'fil';

  @override
  String get gameUiChessKnight => 'at';

  @override
  String get gameUiChessPawn => 'piyon';

  @override
  String get gameUiChessEmpty => 'boş';

  @override
  String get gameSceneLampAndFlowers => 'Lamba ve çiçekler';

  @override
  String get gameSceneGardenFriends => 'Bahçe dostları';

  @override
  String get gameSceneUnderwaterExplorers => 'Sualtı kâşifleri';

  @override
  String get gameSceneOceanOrca => 'Okyanus orkası';

  @override
  String get gameSceneFoxInTheMeadow => 'Çayırdaki tilki';

  @override
  String get gameSceneYellowSubmarine => 'Sarı denizaltı';

  @override
  String get gameSceneTurkeyInTheClearing => 'Açıklıktaki hindi';

  @override
  String get gameSceneSafariWateringHole => 'Safari sulama noktası';

  @override
  String get gameSceneJungleCompanions => 'Orman arkadaşları';

  @override
  String get gameSceneGoldenPuppyGarden => 'Altın renkli köpek yavrusunun bahçesi';

  @override
  String get gameSceneSeaTurtleReef => 'Deniz kaplumbağası resifi';

  @override
  String get gameSceneCoralReefFriends => 'Mercan resifi dostları';

  @override
  String get gameSceneSharedClownfish => 'Ortak palyaço balığı';

  @override
  String get gameSceneLittleDinosaur => 'Küçük dinozor';

  @override
  String get gameSceneSafariCompanions => 'Safari arkadaşları';

  @override
  String get gameSceneSwirlingFlowers => 'Dönen çiçekler';

  @override
  String get gameSceneGardenKitten => 'Bahçedeki kedi yavrusu';

  @override
  String get gameSceneBlueOcean => 'Mavi okyanus';

  @override
  String get gameSceneCastlePrincess => 'Kale prensesi';

  @override
  String get gameSceneRedCar => 'Kırmızı araba';

  @override
  String get gameSceneGardenPuppy => 'Bahçedeki köpek yavrusu';

  @override
  String get gameSceneSpaceExplorer => 'Uzay kâşifi';

  @override
  String get gameSceneEnchantedReadingForest => 'Büyülü okuma ormanı';

  @override
  String get gameSceneDevopsInfinityCycle => 'DevOps sonsuzluk döngüsü';

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
  String get gameSceneNetworking => 'Ağ İletişimi';

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
  String get gameSceneWinterFestivalFair => 'Kış festivali fuarı';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Zırhlı kahramanın yakın çekimi';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Koyu kırmızı zırhlı kahraman';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Koyu renkli plumeria çiçekleri';

  @override
  String get gameSceneMangroveBoardwalk => 'Mangrov ahşap yürüyüş yolu';

  @override
  String get gameSceneTropicalPalmReflections => 'Tropikal palmiye yansımaları';

  @override
  String get gameSceneMaskedFigureInShadow => 'Gölgedeki maskeli figür';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Gün batımında elektrikli yoldaş';

  @override
  String get gameSceneTrainerAndFireDragon => 'Eğitmen ve ateş ejderhası';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Mücevher işlemeli güreş maskesi';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Kırmızı fırça darbelerinde güreşçi';

  @override
  String get gameSceneWrestlingChampionSalute => 'Güreş şampiyonunun selamı';

  @override
  String get gameSceneMorningAtTheBakery => 'Fırında sabah';

  @override
  String get gameSceneGreenhousePottingBench => 'Serada saksı tezgâhı';

  @override
  String get gameSceneHarborFishingBoat => 'Limandaki balıkçı teknesi';

  @override
  String get gameSceneAtticObservatory => 'Çatı katı gözlemevi';

  @override
  String get gameSceneToyMakerSWorkshop => 'Oyuncakçının atölyesi';

  @override
  String get gameSceneWoodlandCampsite => 'Orman kamp alanı';

  @override
  String get gameSceneAfternoonMusicRoom => 'Öğleden sonra müzik odası';

  @override
  String get gameSceneSeasideIceCreamStand => 'Deniz kenarı dondurma tezgâhı';

  @override
  String get gameSceneLibraryReadingNook => 'Kütüphane okuma köşesi';

  @override
  String get gameSceneSewingStudio => 'Dikiş atölyesi';

  @override
  String get gameSceneFruitMarket => 'Meyve pazarı';

  @override
  String get gameSceneKoiCourtyard => 'Koi balıklı avlu';

  @override
  String get gameSceneArtistSAtelier => 'Sanatçının atölyesi';

  @override
  String get gameSceneMountainRailway => 'Dağ demiryolu';

  @override
  String get gameSceneCountryKitchen => 'Köy mutfağı';

  @override
  String get gameScenePotteryWorkshop => 'Çömlek atölyesi';

  @override
  String get gameSceneBeachPicnic => 'Plaj pikniği';

  @override
  String get gameSceneFlowerShop => 'Çiçekçi dükkânı';

  @override
  String get gameSceneClockmakerSWorkshop => 'Saatçinin atölyesi';

  @override
  String get gameSceneRainyCafeTerrace => 'Yağmurlu kafe terası';

  @override
  String get gameSceneCastleHerbGarden => 'Kale şifalı bitki bahçesi';

  @override
  String get gameSceneClassroomArtCorner => 'Sınıf sanat köşesi';

  @override
  String get gameSceneAquariumShop => 'Akvaryum dükkânı';

  @override
  String get gameSceneAutumnLeafCollection => 'Sonbahar yaprak koleksiyonu';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Ayın altındaki yalnız ağaç';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Dalda sonbahar çiçeği';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Yeşil yapraklar arasında tilki';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Nilüferlerle kaplı gölde kano';

  @override
  String get gameSceneDewDropsOnALeaf => 'Yaprak üzerinde çiy damlaları';

  @override
  String get gameSceneStagInATurquoiseLake => 'Turkuaz gölde erkek geyik';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Turuncu ayın altında bisiklet';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Vadinin üzerinde beyaz kaplan';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Mavi suda iki ağaç';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Sadık bir köpeğin yanında balık tutmak';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Dağ gölünün kıyısında zambaklar';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Pembe nehir kıyısında geyik';

  @override
  String get gameSceneTropicalHutAtSunset => 'Gün batımında tropikal kulübe';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Alp vadisine bakan tilki';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Büyülü koruluktan gün batımı';

  @override
  String get learningControlTitle => 'DevOps Öğrenme';

  @override
  String get learningControlAllCategories => 'Tüm kategoriler';

  @override
  String get learningControlSearchCards => 'Kartlarda ara';

  @override
  String get learningControlClearSearch => 'Aramayı temizle';

  @override
  String get learningControlCategory => 'Kategori';

  @override
  String get learningControlShowAll => 'Tüm kartları göster';

  @override
  String learningControlShowSaved(int count) {
    return 'Kayıtlı kartları göster ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Karıştırmayı kapat';

  @override
  String get learningControlShuffleOn => 'Kartları karıştır';

  @override
  String get learningControlAutoOff => 'Otomatik geçişi durdur';

  @override
  String get learningControlAutoOn => 'Her 10 saniyede bir otomatik geçiş';

  @override
  String get learningControlNoSaved => 'Henüz kayıtlı kart yok';

  @override
  String get learningControlNoMatches => 'Eşleşen kart yok';

  @override
  String get learningControlResetFilters => 'Filtreleri sıfırla';

  @override
  String get learningControlPrevious => 'Önceki';

  @override
  String get learningControlNext => 'Sonraki';

  @override
  String get learningControlProgress => 'İlerleme';

  @override
  String get learningControlRemoveSaved => 'Kayıtlılardan kaldır';

  @override
  String get learningControlSaveCard => 'Kartı kaydet';

  @override
  String get learningControlExample => 'Örnek';

  @override
  String get learningControlCopyExample => 'Örneği kopyala';

  @override
  String get learningControlExampleCopied => 'Örnek kopyalandı';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Seviye $value1 tamamlandı';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Seviye $value1 oyna';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Kilidi açmak için seviye $value1 seviyesini tamamla';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Günlük Giriş Bonusu';

  @override
  String get sharedDialogThanksForComingBack => 'Geri geldiğin için teşekkürler!';

  @override
  String get sharedDialogDailyRewardAdded => 'Günlük ödülün toplam puanına eklendi.';

  @override
  String get sharedDialogAwesome => 'Harika!';

  @override
  String get accountWelcomeGuest => 'Misafir';

  @override
  String get accountWelcomeGuestUser => 'Misafir Kullanıcı';

  @override
  String get accountWelcomeUser => 'Kullanıcı';

  @override
  String get accountWelcomePlayingAsGuest => 'Misafir Olarak Oynanıyor';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Google Hesabını Bağla';

  @override
  String get accountWelcomeGoogleConnected => 'Google hesabı başarıyla bağlandı! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Oturum açma iptal edildi.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Bağlanılamadı: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Oturumu Kapat';

  @override
  String get accountWelcomeSignOutTitle => 'Oturum Kapatılsın mı?';

  @override
  String get accountWelcomeSignOutMessage => 'Oturumu kapatmak istediğinizden emin misiniz? Kaydedilen ilerlemenize erişmek için tekrar oturum açmanız gerekecektir.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Oturum kapatılamadı: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Uygulama Verileri Sıfırlansın mı?';

  @override
  String get accountWelcomeResetAppMessage => 'Bu işlem TÜM puanlarınızı, serilerinizi, oyun geçmişinizi ve ayarlarınızı kalıcı olarak silecektir. Oturumunuz kapatılacak ve başlangıç ekranına döndürüleceksiniz. Bu işlem geri alınamaz.';

  @override
  String get accountWelcomeResetEverything => 'Her Şeyi Sıfırla';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Sıfırlama başarısız oldu: $value1';
  }

  @override
  String get accountWelcomeCancel => 'İptal';

  @override
  String get accountWelcomeResetAppData => 'Uygulama Verilerini Sıfırla';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Tüm puanları, serileri ve ayarları temizle';

  @override
  String get accountWelcomeFooter => 'DevOps Quiz Uygulaması';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Çeviri henüz mevcut değil';

  @override
  String get accountWelcomeContinueWithGoogle => 'Google ile Devam Et';

  @override
  String get accountWelcomeSigningIn => 'Oturum açılıyor...';

  @override
  String get accountWelcomeOr => 'VEYA';

  @override
  String get accountWelcomeContinueAsGuest => 'Misafir Olarak Devam Et';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Daha sonra profilinizden oturum açabilirsiniz.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Misafir olarak başlayabilir ve daha sonra oturum açabilirsiniz.';

  @override
  String get accountWelcomeGreetingGuest => 'Hoş Geldiniz';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Hoş geldiniz, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Google ile Oturum Açma tamamlandı ancak hiçbir kullanıcı hesabı döndürülmedi.';

  @override
  String get accountWelcomeErrorEmailExists => 'Bu e-posta adresine ait başka bir oturum açma yöntemi kullanan bir hesap zaten var.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Bu Google hesabı zaten başka bir hesaba bağlı.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Google kimlik doğrulama bilgisi geçersiz veya süresi dolmuş.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Bu hesap devre dışı bırakıldı.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Google ile Oturum Açma şu anda etkin değil.';

  @override
  String get accountWelcomeErrorNetwork => 'Ağ hatası. Lütfen internet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Çok fazla oturum açma denemesi yapıldı. Lütfen bekleyip tekrar deneyin.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Ek hata bilgisi yok.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Google ile Oturum Açma başarısız oldu.\n\nKod: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Google ile Oturum Açma hatası:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Misafir olarak devam edilemiyor. Lütfen tekrar deneyin.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Google ile Oturum Açma yakında kullanıma sunulacak.';

  @override
  String get accountWelcomeLoginTagline => 'Öğren • Pratik Yap • Yarış • Kazan';

  @override
  String get accountWelcomeCountryRegion => 'Ülke / bölge';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Ülke / bölge: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Ülke ara';

  @override
  String get accountWelcomeCountryNotSelected => 'Seçilmedi';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Neden DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ pratik sorusu';

  @override
  String get accountWelcomeFeatureLanguages => 'Çoklu dil desteği';

  @override
  String get accountWelcomeFeatureStreaks => 'Seriler ve Liderlik Tabloları';

  @override
  String get accountWelcomeFeatureGames => 'Oyunlar ve Meydan Okumalar';

  @override
  String get accountWelcomeFeatureCloud => 'Bulut ve DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonuslar ve Ödüller';

  @override
  String get accountWelcomePracticeOnTheGo => 'Hareket halindeyken pratik yapın';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Android uygulamasını yükleyin ve her yerde çevrimdışı öğrenin.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Google Play\'den alın';

  @override
  String achLocStreakTitle(String days) {
    return '$days Günlük Seri';
  }

  @override
  String achLocStreakDescription(String days) {
    return '$days günlük bir seri sürdür.';
  }

  @override
  String get achLocYearStreakTitle => '1 Yıllık Seri';

  @override
  String get achLocFirstQuizTitle => 'İlk Quiz';

  @override
  String get achLocFirstQuizDescription => 'İlk quizini tamamla.';

  @override
  String get achLocQuiz10Title => 'Quiz Kaşifi';

  @override
  String get achLocQuiz10Description => '10 quiz tamamla.';

  @override
  String get achLocPoints1000Title => '1000 Puan';

  @override
  String get achLocPoints1000Description => 'Quiz\'de toplam 1000 puan kazan.';

  @override
  String get achLocPerfectScoreTitle => 'Tam Puan';

  @override
  String get achLocPerfectScoreDescription => 'Herhangi bir quizde %100 puan al.';

  @override
  String get achLocQuiz25Title => 'Quiz Meraklısı';

  @override
  String get achLocQuiz25Description => '25 quiz tamamla.';

  @override
  String get achLocQuiz50Title => 'Quiz Ustası';

  @override
  String get achLocQuiz50Description => '50 quiz tamamla.';

  @override
  String get achLocQuiz100Title => 'Yüzler Kulübü';

  @override
  String get achLocQuiz100Description => '100 quiz tamamla.';

  @override
  String get achLocQuiz250Title => 'Quiz Efsanesi';

  @override
  String get achLocQuiz250Description => '250 quiz tamamla.';

  @override
  String get achLocPoints5000Title => '5.000 Puan';

  @override
  String get achLocPoints5000Description => 'Toplam 5.000 puan kazan.';

  @override
  String get achLocPoints10000Title => '10.000 Puan';

  @override
  String get achLocPoints10000Description => 'Toplam 10.000 puan kazan.';

  @override
  String get achLocPoints50000Title => '50.000 Puan';

  @override
  String get achLocPoints50000Description => 'Toplam 50.000 puan kazan.';

  @override
  String get achLocPoints100000Title => '100.000 Puan';

  @override
  String get achLocPoints100000Description => 'Toplam 100.000 puan kazan.';

  @override
  String get achLocDaily1Title => 'Günlük Başlangıç';

  @override
  String get achLocDaily1Description => 'İlk Günlük Quiz\'ini tamamla.';

  @override
  String get achLocDaily7Title => 'Günlük Alışkanlık';

  @override
  String get achLocDaily7Description => '7 Günlük Quiz tamamla.';

  @override
  String get achLocDaily30Title => 'Günlük Şampiyon';

  @override
  String get achLocDaily30Description => '30 Günlük Quiz tamamla.';

  @override
  String get achLocSets5Title => 'Set Başlangıcı';

  @override
  String get achLocSets5Description => '5 quiz seti bitir.';

  @override
  String get achLocSets25Title => 'Set Koleksiyoncusu';

  @override
  String get achLocSets25Description => '25 quiz seti bitir.';

  @override
  String get achLocSets50Title => 'Set Ustası';

  @override
  String get achLocSets50Description => '50 quiz seti bitir.';

  @override
  String get achLocSets100Title => 'Set Efsanesi';

  @override
  String get achLocSets100Description => '100 quiz seti bitir.';

  @override
  String get achLocCert1Title => 'İlk Sertifika';

  @override
  String get achLocCert1Description => 'İlk kategori sertifikanı kazan.';

  @override
  String get achLocCert5Title => 'Sertifikalı Uzman';

  @override
  String get achLocCert5Description => '5 kategori sertifikası kazan.';

  @override
  String get achLocCert21Title => 'Tam Sertifikalı';

  @override
  String get achLocCert21Description => '21 kategorinin tümünde sertifika kazan.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Her yıl 7-14 Şubat arası ücretsiz';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Her yıl 8-15 Mart arası ücretsiz';

  @override
  String get achLocThemeLight => 'Açık';

  @override
  String get achLocThemeDark => 'Koyu';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Gün Batımı';

  @override
  String get achLocThemeCoffee => 'Kahve';

  @override
  String get achLocThemeTea => 'Çay';

  @override
  String get achLocThemeOcean => 'Okyanus';

  @override
  String get achLocThemeSolarFlare => 'Güneş Patlaması';

  @override
  String get achLocThemeForest => 'Orman';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Siber Mor';

  @override
  String get achLocThemeInferno => 'Cehennem Ateşi';

  @override
  String get achLocThemeMidnight => 'Gece Yarısı';

  @override
  String get achLocThemeDarkGrey => 'Koyu Gri';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Sevgililer Günü';

  @override
  String get achLocThemeDqSpecial => 'DQ Özel';

  @override
  String get achLocThemeArmy => 'Ordu';

  @override
  String get achLocThemeSpiderMan => 'Örümcek Adam';

  @override
  String get achLocThemeKrrish => 'Krrish';

  @override
  String get achLocThemeIronMan => 'Demir Adam';

  @override
  String get achLocThemeCaptainAmerica => 'Kaptan Amerika';

  @override
  String get achLocThemeThor => 'Thor';

  @override
  String get achLocThemeHulk => 'Hulk';

  @override
  String get achLocThemeBlackWidow => 'Kara Dul';

  @override
  String get achLocThemeHawkeye => 'Şahin Göz';

  @override
  String get achLocThemeBlackPanther => 'Kara Panter';

  @override
  String get achLocThemeScarletWitch => 'Kızıl Cadı';

  @override
  String get achLocThemeVision => 'Vizyon';

  @override
  String get achLocThemeAntMan => 'Karınca Adam';

  @override
  String get achLocThemeCaptainMarvel => 'Kaptan Marvel';

  @override
  String get achLocThemeDoctorStrange => 'Doktor Strange';

  @override
  String get achLocThemeAvengers => 'Yenilmezler';

  @override
  String get achLocThemeBatman => 'Batman';

  @override
  String get achLocThemeSuperman => 'Süpermen';

  @override
  String get achLocThemeWonderWoman => 'Wonder Woman';

  @override
  String get achLocThemeFlash => 'Flash';

  @override
  String get achLocThemeAquaman => 'Aquaman';

  @override
  String get achLocThemeGreenLantern => 'Yeşil Fener';

  @override
  String get achLocThemeCyborg => 'Cyborg';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'DC Kahramanları';

  @override
  String get achLocThemeRainbow => 'Gökkuşağı';

  @override
  String get achLocThemeDiamond => 'Elmas';

  @override
  String get achLocThemeLegendary => 'Efsanevi';

  @override
  String get gameHintCmd001LsLa => 'Tüm dosyaları ayrıntılarla listeler';

  @override
  String get gameHintCmd002Grep => 'Bir desenle metin arar';

  @override
  String get gameHintCmd003Chmod => 'Dosya izinlerini değiştirir';

  @override
  String get gameHintCmd004DfH => 'Boş disk alanını gösterir';

  @override
  String get gameHintCmd005TailF => 'Büyüyen bir günlük dosyasını izler';

  @override
  String get gameHintCmd006PsAux => 'Çalışan işlemleri listeler';

  @override
  String get gameHintCmd007GitClone => 'Uzak bir depoyu kopyalar';

  @override
  String get gameHintCmd008GitStash => 'Commit edilmemiş değişiklikleri rafa kaldırır';

  @override
  String get gameHintCmd009GitRebase => 'Commit\'leri yeni bir tabanın üzerine yeniden uygular';

  @override
  String get gameHintCmd010GitBlame => 'Her satırı kimin değiştirdiğini gösterir';

  @override
  String get gameHintCmd011DockerPs => 'Çalışan konteynerleri listeler';

  @override
  String get gameHintCmd012DockerBuild => 'Bir Dockerfile\'dan imaj oluşturur';

  @override
  String get gameHintCmd013DockerLogs => 'Konteyner çıktısını gösterir';

  @override
  String get gameHintCmd014DockerExec => 'Bir konteynerin içinde komut çalıştırır';

  @override
  String get gameHintCmd015KubectlGetPods => 'Bir ad alanındaki pod\'ları listeler';

  @override
  String get gameHintCmd016KubectlApply => 'Bir dosyadan kaynaklar oluşturur';

  @override
  String get gameHintCmd017KubectlDescribe => 'Kaynak hakkında ayrıntılı bilgi gösterir';

  @override
  String get gameHintCmd018KubectlScale => 'Replika sayısını değiştirir';

  @override
  String get gameHintCmd019TerraformInit => 'Sağlayıcıları indirir ve kurulumu yapar';

  @override
  String get gameHintCmd020TerraformPlan => 'Altyapı değişikliklerini önizler';

  @override
  String get gameHintCmd021TerraformApply => 'Altyapıyı oluşturur veya günceller';

  @override
  String get gameHintCmd022TerraformDestroy => 'Yönetilen altyapıyı kaldırır';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Bir otomasyon playbook\'u çalıştırır';

  @override
  String get gameHintCmd024Ping => 'ICMP ile erişilebilirliği test eder';

  @override
  String get gameHintCmd025Traceroute => 'Bir sunucuya giden yolu gösterir';

  @override
  String get gameHintCmd026Curl => 'Bir URL\'den veri aktarır';

  @override
  String get gameHintCmd027Ssh => 'Uzak bir makineye güvenli şekilde giriş yapar';

  @override
  String get gameHintCmd028CrontabE => 'Zamanlanmış işleri düzenler';

  @override
  String get gameHintCmd029SystemctlStatus => 'Bir servisin durumunu denetler';

  @override
  String get gameHintCmd030HelmInstall => 'Kubernetes\'e bir chart dağıtır';

  @override
  String get gameHintWord001Git => 'Kaynak koddaki değişiklikleri izler.';

  @override
  String get gameHintWord002Aws => 'Amazon\'un bulut platformu.';

  @override
  String get gameHintWord003Api => 'Yazılım sistemlerinin iletişim kurmasını sağlayan sözleşme.';

  @override
  String get gameHintWord004Dns => 'Alan adlarını IP adreslerine çevirir.';

  @override
  String get gameHintWord005Cli => 'Komut çalıştırmak için metin tabanlı arayüz.';

  @override
  String get gameHintWord006Cpu => 'Komutları yürüten işlemci.';

  @override
  String get gameHintWord007Ram => 'Çalışan programların kullandığı geçici bellek.';

  @override
  String get gameHintWord008Ssh => 'Uzak kabuk erişimi için güvenli protokol.';

  @override
  String get gameHintWord009Yaml => 'İnsan tarafından okunabilir veri serileştirme biçimi.';

  @override
  String get gameHintWord010Linux => 'Açık kaynaklı işletim sistemi çekirdeği ve ailesi.';

  @override
  String get gameHintWord011Bash => 'Popüler bir Unix komut kabuğu.';

  @override
  String get gameHintWord012Cloud => 'Ağ üzerinden talep üzerine sunulan bilişim.';

  @override
  String get gameHintWord013Docker => 'Konteyner oluşturma ve çalıştırma platformu.';

  @override
  String get gameHintWord014Azure => 'Microsoft\'un bulut platformu.';

  @override
  String get gameHintWord015Python => 'Yaygın kullanılan bir betik ve programlama dili.';

  @override
  String get gameHintWord016Github => 'Popüler barındırılan Git iş birliği hizmeti.';

  @override
  String get gameHintWord017Bgp => 'Otonom sistemler arasında rota alışverişi yapan yönlendirme protokolü.';

  @override
  String get gameHintWord018Jenkins => 'Sıklıkla CI için kullanılan otomasyon sunucusu.';

  @override
  String get gameHintWord019Port => 'Ağ hizmetlerinin kullandığı numaralı uç nokta.';

  @override
  String get gameHintWord020Proxy => 'İstemciler adına istekleri ileten sunucu.';

  @override
  String get gameHintWord021Cache => 'Sık kullanılan veriler için hızlı depo.';

  @override
  String get gameHintWord022Cron => 'Yinelenen komutlar için Unix zamanlayıcısı.';

  @override
  String get gameHintWord023Bicep => 'Azure\'un kod olarak altyapı için bildirimsel dili.';

  @override
  String get gameHintWord024Apigee => 'Merkezi API yönetimi için Google Cloud platformu.';

  @override
  String get gameHintWord025Root => 'Unix benzeri sistemlerdeki ayrıcalıklı yönetici hesabı.';

  @override
  String get gameHintWord026Nginx => 'Web sunucusu ve ters proxy.';

  @override
  String get gameHintWord027Redis => 'Sıklıkla önbellek olarak kullanılan bellek içi veri deposu.';

  @override
  String get gameHintWord028Mysql => 'Popüler ilişkisel veritabanı sistemi.';

  @override
  String get gameHintWord029Ruby => 'Chef gibi araçlarda kullanılan programlama dili.';

  @override
  String get gameHintWord030Helm => 'Genellikle Kubernetes ile kullanılan paket yöneticisi.';

  @override
  String get gameHintWord031Pod => 'Kubernetes\'te dağıtılabilen en küçük birim.';

  @override
  String get gameHintWord032Image => 'Konteyner oluşturmak için kullanılan salt okunur şablon.';

  @override
  String get gameHintWord033Build => 'Kaynak koddan ve bağımlılıklardan bir yapıt oluşturur.';

  @override
  String get gameHintWord034Deploy => 'Bir uygulamayı bir ortama yayınlar.';

  @override
  String get gameHintWord035Terraform => 'Kod olarak altyapı için HashiCorp aracı.';

  @override
  String get gameHintWord036Ansible => 'Ajan gerektirmeyen otomasyon ve yapılandırma aracı.';

  @override
  String get gameHintWord037Kubectl => 'Kubernetes için komut satırı istemcisi.';

  @override
  String get gameHintWord038Gcp => 'Google Cloud Platform kısaltması.';

  @override
  String get gameHintWord039Gitops => 'Git\'i tek doğruluk kaynağı olarak kullanan işletim modeli.';

  @override
  String get gameHintWord040Pipeline => 'Derleme, test ve yayın aşamalarının otomatik dizisi.';

  @override
  String get gameHintWord041Container => 'Bağımlılıklarıyla birlikte paketlenmiş yalıtılmış işlem.';

  @override
  String get gameHintWord042Cluster => 'Ortak bir sistem olarak yönetilen makine grubu.';

  @override
  String get gameHintWord043Ingress => 'Dış HTTP yönlendirmesi için Kubernetes API nesnesi.';

  @override
  String get gameHintWord044Firewall => 'Ağ trafiğini güvenlik kurallarına göre filtreler.';

  @override
  String get gameHintWord045Subnet => 'Bir IP ağının mantıksal alt bölümü.';

  @override
  String get gameHintWord046Gateway => 'Farklı ağları birbirine bağlayan ağ düğümü.';

  @override
  String get gameHintWord047Router => 'Paketleri ağlar arasında iletir.';

  @override
  String get gameHintWord048Switch => 'Yerel ağdaki cihazları birbirine bağlar.';

  @override
  String get gameHintWord049Repository => 'Kaynak kod veya paketler için yönetilen depolama.';

  @override
  String get gameHintWord050Systemd => 'Linux init sistemi ve servis yöneticisi.';

  @override
  String get gameHintWord051Journalctl => 'systemd günlük kayıtlarını okumak için kullanılan komut.';

  @override
  String get gameHintWord052Permission => 'Kimin okuyabileceğini, yazabileceğini veya çalıştırabileceğini belirleyen kural.';

  @override
  String get gameHintWord053Alloydb => 'Google Cloud\'un yönetilen, PostgreSQL uyumlu veritabanı.';

  @override
  String get gameHintWord054Configmap => 'Gizli olmayan yapılandırma için Kubernetes nesnesi.';

  @override
  String get gameHintWord055Secret => 'Hassas veriler için tasarlanmış Kubernetes nesnesi.';

  @override
  String get gameHintWord056Persistent => 'Bir iş yükü yeniden başlatılsa da kalıcı olan depolamayı tanımlar.';

  @override
  String get gameHintWord057Volume => 'Bir konteynere bağlanan dosya sistemi depolaması.';

  @override
  String get gameHintWord058Storage => 'Dosyalar, nesneler veya bloklar için kalıcı alan.';

  @override
  String get gameHintWord059Replica => 'Ölçek veya güvenilirlik için tutulan iş yükü örneği kopyası.';

  @override
  String get gameHintWord060Deployment => 'Durumsuz uygulama pod\'ları için Kubernetes denetleyicisi.';

  @override
  String get gameHintWord061Dockerfile => 'Bir Docker imajı oluşturmak için kullanılan yönergeler.';

  @override
  String get gameHintWord062Database => 'Uygulamaların sorguladığı düzenli depo.';

  @override
  String get gameHintWord063Automation => 'Tekrarlanabilir görevleri manuel adımlar olmadan yazılımla yapma.';

  @override
  String get gameHintWord064Anthos => 'Ortamlar arası kümeleri yönetmek için Google Cloud platformu.';

  @override
  String get gameHintWord065Bigquery => 'Büyük ölçekli veri analitiği için Google Cloud hizmeti.';

  @override
  String get gameHintWord066Bigtable => 'Analitik için Google Cloud geniş sütunlu NoSQL veritabanı.';

  @override
  String get gameHintWord067Loadbalancer => 'Gelen trafiği birden çok arka uca dağıtır.';

  @override
  String get gameHintWord068Prometheus => 'Zaman serisi metriklerini saklayan izleme sistemi.';

  @override
  String get gameHintWord069Grafana => 'Gözlemlenebilirlik verilerini sorgulama ve görselleştirme platformu.';

  @override
  String get gameHintWord070Cloudant => 'IBM Cloud\'un yönetilen NoSQL JSON belge veritabanı.';

  @override
  String get gameHintWord071Cloudtrail => 'Denetim için API etkinliğini kaydeden AWS hizmeti.';

  @override
  String get gameHintWord072Statefulset => 'Kararlı kimlik gerektiren iş yükleri için Kubernetes denetleyicisi.';

  @override
  String get gameHintWord073Daemonset => 'Seçili düğümlerde bir pod çalıştıran Kubernetes denetleyicisi.';

  @override
  String get gameHintWord074Serviceaccount => 'Bir iş yükü veya işlem tarafından kullanılan Kubernetes kimliği.';

  @override
  String get gameHintWord075Networkpolicy => 'Pod ağ trafiğini denetleyen Kubernetes kaynağı.';

  @override
  String get gameHintWord076Certificate => 'TLS\'de kimlik oluşturmak için kullanılan dijital belge.';

  @override
  String get gameHintWord077Encryption => 'Verileri yalnızca yetkili tarafların okuyabileceği şekilde dönüştürür.';

  @override
  String get gameHintWord078Observability => 'Sistem davranışını çıktılarından çıkarsama yeteneği.';

  @override
  String get gameHintWord079Coredns => 'Kubernetes kümelerinde sık kullanılan DNS sunucusu.';

  @override
  String get gameHintWord080Crossplane => 'Bulut kaynaklarını Kubernetes API\'leriyle yönetme projesi.';

  @override
  String get gameHintWord081Failover => 'Arızadan sonra bekleme durumundaki bileşene geçiş.';

  @override
  String get gameHintWord082Idempotency => 'Bir işlemi tekrarlamanın bir kez yapmakla aynı etkiyi yaratması özelliği.';

  @override
  String get gameHintWord083Dataflow => 'Akış ve toplu veri işleme için Google Cloud hizmeti.';

  @override
  String get gameHintWord084Orchestration => 'Birden çok otomatik iş yükünün koordineli yönetimi.';

  @override
  String get gameHintWord085Dataplex => 'Kurumsal verileri keşfetme ve yönetme için Google Cloud hizmeti.';

  @override
  String get gameHintWord086Serverless => 'Altyapı yönetiminin soyutlandığı çalıştırma modeli.';

  @override
  String get gameHintWord087Distributed => 'Bileşenleri ağa bağlı birden çok makinede çalışan sistem.';

  @override
  String get gameHintWord088Dataproc => 'Google Cloud\'un yönetilen Apache Spark ve Hadoop ortamı.';

  @override
  String get gameHintWord089Dynamodb => 'Sıklıkla Terraform durum kilitleme için kullanılan AWS NoSQL veritabanı.';

  @override
  String get gameHintWord090Provisioning => 'Altyapıyı veya kaynakları kullanıma hazırlama.';

  @override
  String get gameHintWord091Elasticsearch => 'Merkezi günlükleme için sık kullanılan arama motoru.';

  @override
  String get gameHintWord092Etcd => 'Kubernetes küme durumunu tutan anahtar-değer deposu.';

  @override
  String get gameHintWord093Authentication => 'Bir kullanıcı veya servisin kim olduğunu doğrulama süreci.';

  @override
  String get gameHintWord094Authorization => 'Bir kimliğin neler yapabileceğine karar verme süreci.';

  @override
  String get gameHintWord095Expressroute => 'Veri merkezlerine özel bağlantı sağlayan Azure hizmeti.';

  @override
  String get gameHintWord096Configuration => 'Yazılımın nasıl davranacağını belirleyen ayarlar.';

  @override
  String get gameHintWord097Infrastructure => 'Uygulamaları destekleyen işlem, ağ ve depolama kaynakları.';

  @override
  String get gameHintWord098Fastconnect => 'Özel ağ bağlantıları için Oracle Cloud hizmeti.';

  @override
  String get gameHintWord099Containerd => 'Kubernetes\'in kullandığı sektör standardı konteyner çalışma zamanı.';

  @override
  String get gameHintWord100Kubernetes => 'Konteyner orkestrasyon platformu.';

  @override
  String get gameHintWord101Http => 'Web kaynaklarını istemek için kullanılan uygulama protokolü.';

  @override
  String get gameHintWord102Https => 'Web istek protokolünün şifreli sürümü.';

  @override
  String get gameHintWord103Tcp => 'Güvenilir, sıralı teslimat sağlayan taşıma protokolü.';

  @override
  String get gameHintWord104Udp => 'Datagramlar için kullanılan bağlantısız taşıma protokolü.';

  @override
  String get gameHintWord105Tls => 'Ağ üzerinden değiş tokuş edilen verileri güvenceye alan protokol.';

  @override
  String get gameHintWord106Ssl => 'Modern taşıma güvenliği protokolünün eski öncülü.';

  @override
  String get gameHintWord107Ftp => 'Dosya aktarımı için geleneksel protokol.';

  @override
  String get gameHintWord108Sftp => 'Güvenli kabuk bağlantısı üzerinden taşınan dosya aktarım protokolü.';

  @override
  String get gameHintWord109Smtp => 'Sunucular arasında e-posta göndermek için kullanılan protokol.';

  @override
  String get gameHintWord110Snmp => 'Ağ cihazlarını yönetmek ve izlemek için kullanılan protokol.';

  @override
  String get gameHintWord111Icmp => 'Ağ hatalarını ve ping mesajlarını taşıyan protokol.';

  @override
  String get gameHintWord112Arp => 'Yerel IPv4 adreslerini donanım adreslerine çözümler.';

  @override
  String get gameHintWord113Dhcp => 'Ağ istemcilerine IP yapılandırmasını otomatik olarak kiralar.';

  @override
  String get gameHintWord114Nat => 'Paketler bir ağ geçidinden geçerken ağ adreslerini yeniden yazar.';

  @override
  String get gameHintWord115Vpn => 'Uzak ağları veya kullanıcıları bağlayan şifreli tünel.';

  @override
  String get gameHintWord116Vpc => 'Genel bulutta yalıtılmış sanal ağ.';

  @override
  String get gameHintWord117Vlan => 'Anahtarlamalı ağın mantıksal ayrımı.';

  @override
  String get gameHintWord118Wan => 'Geniş bir coğrafi alanı kapsayan ağ.';

  @override
  String get gameHintWord119Lan => 'Yerel bir alandaki cihazları bağlayan ağ.';

  @override
  String get gameHintWord120Cdn => 'Sunulan içeriği önbelleğe alan dağıtık uç ağı.';

  @override
  String get gameHintWord121Cidr => 'Ağ önekini eğik çizgi uzunluğuyla ifade eden gösterim.';

  @override
  String get gameHintWord122Host => 'Bir ağa bağlı bilgisayar veya uç nokta.';

  @override
  String get gameHintWord123Hostname => 'Ağdaki bir makineye atanan, insan tarafından okunabilir ad.';

  @override
  String get gameHintWord124Domain => 'İnternet adlandırma sisteminde adlandırılmış yönetim alanı.';

  @override
  String get gameHintWord125Zone => 'Bir DNS ad alanının yönetimsel bölümü.';

  @override
  String get gameHintWord126Record => 'Bir DNS veritabanındaki tekil kayıt.';

  @override
  String get gameHintWord127Aaaa => 'Bir adı IPv6 adresine çözümleyen DNS kayıt türü.';

  @override
  String get gameHintWord128Ptr => 'Ters adres sorguları için kullanılan DNS kayıt türü.';

  @override
  String get gameHintWord129Txt => 'Metin değerlerini saklayan DNS kayıt türü.';

  @override
  String get gameHintWord130Cname => 'Bir adı başka bir adın takma adı yapan DNS kaydı.';

  @override
  String get gameHintWord131Route => 'Paketleri bir hedefe yönlendiren yol girdisi.';

  @override
  String get gameHintWord132Routing => 'Ağlar arasındaki trafik için yol seçimi.';

  @override
  String get gameHintWord133Packet => 'Ağ üzerinden iletilen veri birimi.';

  @override
  String get gameHintWord134Protocol => 'Sistemler arası iletişim için üzerinde anlaşılan kurallar.';

  @override
  String get gameHintWord135Ack => 'Verinin alındığını onaylayan TCP bayrağı.';

  @override
  String get gameHintWord136Bandwidth => 'Bir iletişim bağlantısının kapasitesi.';

  @override
  String get gameHintWord137Latency => 'Bir istek veya paketin yanıt almadan önceki gecikmesi.';

  @override
  String get gameHintWord138Throughput => 'Birim zamanda işlenen faydalı iş veya veri miktarı.';

  @override
  String get gameHintWord139Mtu => 'Bir bağlantının parçalanmadan iletebildiği en büyük paket boyutu.';

  @override
  String get gameHintWord140Alpn => 'Uygulama katmanı protokolünü müzakere eden TLS uzantısı.';

  @override
  String get gameHintWord141Grep => 'Metin satırlarında eşleşen bir desen arar.';

  @override
  String get gameHintWord142Sed => 'Metin değiştirmeleri için sık kullanılan akış düzenleyici.';

  @override
  String get gameHintWord143Lscpu => 'İşlemci mimarisini ve çekirdek ayrıntılarını gösteren Linux komutu.';

  @override
  String get gameHintWord144Find => 'Dosya koşullarını kullanarak dizin ağacında arama yapar.';

  @override
  String get gameHintWord145Lsblk => 'Blok aygıtlarını ve ilişkilerini listeleyen Linux komutu.';

  @override
  String get gameHintWord146Sort => 'Metin satırlarını sıralar.';

  @override
  String get gameHintWord147Uniq => 'Bitişik yinelenen satırları filtreler.';

  @override
  String get gameHintWord148Head => 'Bir dosyanın başını yazdırır.';

  @override
  String get gameHintWord149Tail => 'Bir dosyanın sonunu yazdırır ve eklenen günlükleri izleyebilir.';

  @override
  String get gameHintWord150Cat => 'Dosyaları birleştirir ve içeriklerini yazdırır.';

  @override
  String get gameHintWord151Cut => 'Satırlardan seçili alanları veya karakter sütunlarını çıkarır.';

  @override
  String get gameHintWord152Tee => 'Standart girdiyi dosyalara ve standart çıktıya kopyalar.';

  @override
  String get gameHintWord153Echo => 'Argümanlarını standart çıktıya yazar.';

  @override
  String get gameHintWord154Printf => 'Bir kabuktan veya programdan biçimlendirilmiş metin yazdırır.';

  @override
  String get gameHintWord155Touch => 'Dosya zaman damgalarını günceller veya boş bir dosya oluşturur.';

  @override
  String get gameHintWord156Mkdir => 'Dizinler oluşturur.';

  @override
  String get gameHintWord157Rmdir => 'Boş dizinleri kaldırır.';

  @override
  String get gameHintWord158Chmod => 'Unix dosya izin bitlerini değiştirir.';

  @override
  String get gameHintWord159Chown => 'Dosya sahipliğini değiştirir.';

  @override
  String get gameHintWord160Chgrp => 'Bir dosyanın grup sahipliğini değiştirir.';

  @override
  String get gameHintWord161Pwd => 'Geçerli çalışma dizinini yazdırır.';

  @override
  String get gameHintWord162Apt => 'Debian tabanlı sistemlerin kullandığı paket yönetim aracı.';

  @override
  String get gameHintWord163Top => 'İşlemlerin ve sistem kaynak kullanımının etkileşimli görünümü.';

  @override
  String get gameHintWord164Agent => 'Bir sunucuda iş yürüten veya raporlayan yazılım bileşeni.';

  @override
  String get gameHintWord165Kill => 'Bir işleme tanımlayıcısıyla sinyal gönderir.';

  @override
  String get gameHintWord166Signal => 'İşletim sisteminin bir işleme ilettiği bildirim.';

  @override
  String get gameHintWord167Sigkill => 'Bir işlemi hemen sonlandıran Unix sinyali.';

  @override
  String get gameHintWord168Nice => 'Bir işlemi ayarlanmış zamanlama önceliğiyle başlatır.';

  @override
  String get gameHintWord169Renice => 'Çalışan bir işlemin zamanlama önceliğini değiştirir.';

  @override
  String get gameHintWord170Jobs => 'Geçerli kabuğun yönettiği işleri listeler.';

  @override
  String get gameHintWord171Nohup => 'Kapatma sinyallerini yok sayarak komut çalıştırır.';

  @override
  String get gameHintWord172Screen => 'Ayrılabilir oturumları destekleyen terminal çoklayıcı.';

  @override
  String get gameHintWord173Uptime => 'Bir sistemin ne kadar süredir çalıştığını bildirir.';

  @override
  String get gameHintWord174Uname => 'Sistem ve çekirdek bilgilerini yazdırır.';

  @override
  String get gameHintWord175Whoami => 'Etkin geçerli kullanıcı adını yazdırır.';

  @override
  String get gameHintWord176Umask => 'Dosya oluştururken kullanılan izin maskesini ayarlar.';

  @override
  String get gameHintWord177Usermod => 'Var olan bir kullanıcı hesabını değiştiren Linux komutu.';

  @override
  String get gameHintWord178Crontab => 'Zamanlanmış yinelenen kabuk işlerini düzenler veya listeler.';

  @override
  String get gameHintWord179Findmnt => 'Bağlı dosya sistemi bilgilerini gösteren Linux komutu.';

  @override
  String get gameHintWord180Mount => 'Bir dosya sistemini dizin ağacına bağlar.';

  @override
  String get gameHintWord181Sigterm => 'İşlemin düzgün şekilde sonlandırılmasını isteyen Unix sinyali.';

  @override
  String get gameHintWord182Fstab => 'Bağlanacak dosya sistemlerini tanımlayan sistem tablosu.';

  @override
  String get gameHintWord183Swap => 'Fiziksel belleği desteklemek için kullanılan disk tabanlı alan.';

  @override
  String get gameHintWord184Tmpfs => 'Sanal bellekle desteklenen geçici dosya sistemi.';

  @override
  String get gameHintWord185Proc => 'İşlem ve çekirdek bilgilerini sunan Linux sanal dosya sistemi.';

  @override
  String get gameHintWord186Syslog => 'Standart günlükleme protokolü ve mesaj biçimi.';

  @override
  String get gameHintWord187Dmesg => 'Çekirdek halka arabelleğindeki mesajları gösterir.';

  @override
  String get gameHintWord188Free => 'Kullanılan ve kullanılabilir sistem belleğini bildirir.';

  @override
  String get gameHintWord189Stat => 'Ayrıntılı dosya meta verilerini gösterir.';

  @override
  String get gameHintWord190Lsof => 'Açık dosyaları ve bunları tutan işlemleri listeler.';

  @override
  String get gameHintWord191Netstat => 'Ağ bağlantılarını ve yönlendirme bilgilerini gösterir.';

  @override
  String get gameHintWord192Checksum => 'Verilerdeki değişiklikleri veya bozulmayı algılamak için hesaplanan değer.';

  @override
  String get gameHintWord193Ping => 'Yankı istekleriyle ağ erişilebilirliğini test eder.';

  @override
  String get gameHintWord194Traceroute => 'Bir ağ hedefine giden ara sıçramaları gösterir.';

  @override
  String get gameHintWord195Resolver => 'Ad sorgularının yanıtlarını arayan DNS bileşeni.';

  @override
  String get gameHintWord196Nslookup => 'DNS adlarını ve adreslerini sorgular.';

  @override
  String get gameHintWord197Telnet => 'Eski, şifrelenmemiş uzak terminal protokolü.';

  @override
  String get gameHintWord198Tftp => 'UDP tabanlı basit dosya aktarım protokolü.';

  @override
  String get gameHintWord199Daemon => 'Unix benzeri sistemlerde arka plan servis işlemi.';

  @override
  String get gameHintWord200Kernel => 'İşletim sistemi kaynaklarını yöneten çekirdek bileşen.';

  @override
  String get gameHintWord201Commit => 'Sürüm kontrolünde kaydedilmiş değişiklik anlık görüntüsü.';

  @override
  String get gameHintWord202Branch => 'Bir geliştirme çizgisini temsil eden taşınabilir referans.';

  @override
  String get gameHintWord203Merge => 'Farklı geliştirme çizgilerinin geçmişlerini birleştirir.';

  @override
  String get gameHintWord204Rebase => 'Commit\'leri farklı bir taban commit\'in üzerine yeniden oynatır.';

  @override
  String get gameHintWord205Clone => 'Uzak bir deponun yerel kopyasını oluşturur.';

  @override
  String get gameHintWord206Fetch => 'Uzak nesneleri ve referansları birleştirmeden indirir.';

  @override
  String get gameHintWord207Pull => 'Değişiklikleri getirir ve geçerli dala entegre eder.';

  @override
  String get gameHintWord208Push => 'Yerel commit\'leri uzak bir depoya gönderir.';

  @override
  String get gameHintWord209Stash => 'Commit edilmemiş çalışma ağacı değişikliklerini geçici olarak kaydeder.';

  @override
  String get gameHintWord210Revert => 'Başka bir commit\'i geri alan bir commit oluşturur.';

  @override
  String get gameHintWord211Reset => 'Bir Git referansını taşır ve dizini veya çalışma dosyalarını sıfırlayabilir.';

  @override
  String get gameHintWord212Reflog => 'Git referanslarındaki güncellemelerin yerel geçmişi.';

  @override
  String get gameHintWord213Diff => 'Sürümler veya dosyalar arasındaki farkları gösterir.';

  @override
  String get gameHintWord214Status => 'Hazırlanmış, değiştirilmiş ve izlenmeyen dosyaları bildirir.';

  @override
  String get gameHintWord215Checkout => 'Revizyonlar arasında geçiş yapan veya dosyaları geri yükleyen Git komutu.';

  @override
  String get gameHintWord216Tag => 'Genellikle bir sürümü işaretleyen adlandırılmış referans.';

  @override
  String get gameHintWord217Remote => 'Başka bir depoya adlandırılmış bağlantı.';

  @override
  String get gameHintWord218Origin => 'Klonlanan depo uzağına atanan varsayılan ad.';

  @override
  String get gameHintWord219Upstream => 'Yerel bir dalla ilişkili uzak izleme dalı.';

  @override
  String get gameHintWord220Worktree => 'Bir depoya bağlı, çıkış yapılmış çalışma dizini.';

  @override
  String get gameHintWord221Registry => 'Konteyner imajlarını saklayan ve dağıtan servis.';

  @override
  String get gameHintWord222Digest => 'Bir konteyner imajı için içeriğe dayalı tanımlayıcı.';

  @override
  String get gameHintWord223Layer => 'Bir konteyner imajının parçasını oluşturan dosya sistemi değişiklikleri.';

  @override
  String get gameHintWord224Entrypoint => 'Ana konteyner çalıştırılabilirini tanımlayan Dockerfile yönergesi.';

  @override
  String get gameHintWord225Cmd => 'Varsayılan bir komutu veya argümanları belirten Dockerfile yönergesi.';

  @override
  String get gameHintWord226Workdir => 'Çalışma dizinini ayarlayan Dockerfile yönergesi.';

  @override
  String get gameHintWord227Copy => 'Derleme bağlamındaki dosyaları bir imaja kopyalayan Dockerfile yönergesi.';

  @override
  String get gameHintWord228Add => 'Yerel arşivleri de açabilen Dockerfile yönergesi.';

  @override
  String get gameHintWord229Run => 'Derleme zamanı komutu çalıştıran Dockerfile yönergesi.';

  @override
  String get gameHintWord230Env => 'Ortam değişkenlerini tanımlayan Dockerfile yönergesi.';

  @override
  String get gameHintWord231Arg => 'Derleme zamanı değişkeni bildiren Dockerfile yönergesi.';

  @override
  String get gameHintWord232Expose => 'Bir konteyner portunu belgeleyen Dockerfile yönergesi.';

  @override
  String get gameHintWord233User => 'Sonraki komutlar için hesabı seçen Dockerfile yönergesi.';

  @override
  String get gameHintWord234Healthcheck => 'Konteyner sağlığının nasıl test edileceğini tanımlayan yönerge.';

  @override
  String get gameHintWord235Shebang => 'Çalıştırılacak yorumlayıcıyı belirten betiğin ilk satırı.';

  @override
  String get gameHintWord236Compose => 'Çok konteynerli uygulamaları tanımlama ve çalıştırma için Docker aracı.';

  @override
  String get gameHintWord237Bridge => 'Yerel konteyner ağı için yaygın Docker ağ sürücüsü.';

  @override
  String get gameHintWord238Overlay => 'Birden çok sunucudaki konteynerleri kapsayan ağ.';

  @override
  String get gameHintWord239None => 'Konteyner ağını devre dışı bırakan Docker ağ sürücüsü.';

  @override
  String get gameHintWord240Prune => 'Kullanılmayan konteyner kaynaklarını kaldırır.';

  @override
  String get gameHintWord241Replicaset => 'İstenen pod sayısını koruyan Kubernetes denetleyicisi.';

  @override
  String get gameHintWord242Service => 'Pod\'lara kararlı erişim sağlayan Kubernetes soyutlaması.';

  @override
  String get gameHintWord243Endpoints => 'Bir Kubernetes servisini destekleyen adresler.';

  @override
  String get gameHintWord244Namespace => 'Kubernetes kaynaklarını gruplayan mantıksal kapsam.';

  @override
  String get gameHintWord245Node => 'Kubernetes pod\'larını barındıran işçi makine.';

  @override
  String get gameHintWord246Kubelet => 'Her düğümde pod çalıştırmayı yöneten ajan.';

  @override
  String get gameHintWord247Pvc => 'Kalıcı depolama için Kubernetes isteği.';

  @override
  String get gameHintWord248Apiserver => 'Küme API\'sini sunan Kubernetes kontrol düzlemi bileşeni.';

  @override
  String get gameHintWord249Role => 'Rol tabanlı erişim denetiminde adlandırılmış izin kümesi.';

  @override
  String get gameHintWord250Resourcequota => 'Bir ad alanındaki kaynak tüketimini sınırlayan Kubernetes nesnesi.';

  @override
  String get gameHintWord251Selector => 'Kaynakları etiketlerine göre eşleştiren ifade.';

  @override
  String get gameHintWord252Taint => 'Eşleşen toleransı olmayan pod\'ları iten düğüm özelliği.';

  @override
  String get gameHintWord253Toleration => 'Lekeli bir düğüme zamanlamaya izin veren pod ayarı.';

  @override
  String get gameHintWord254Cordon => 'Bir Kubernetes düğümünü zamanlanamaz olarak işaretler.';

  @override
  String get gameHintWord255Uncordon => 'Kordonlanmış bir düğümü yeniden zamanlanabilir yapar.';

  @override
  String get gameHintWord256Drain => 'Düğüm bakımından önce iş yüklerini güvenle tahliye eder.';

  @override
  String get gameHintWord257Job => 'Bir görevi tamamlanana kadar çalıştıran Kubernetes iş yükü.';

  @override
  String get gameHintWord258Cronjob => 'Zamanlamaya göre iş oluşturan Kubernetes iş yükü.';

  @override
  String get gameHintWord259Readiness => 'Bir konteynerin trafik alıp alamayacağını gösteren yoklama.';

  @override
  String get gameHintWord260Liveness => 'Bir konteynerin yeniden başlatılması gerekip gerekmediğini gösteren yoklama.';

  @override
  String get gameHintWord261Canary => 'Yeni sürümü trafiğin küçük bir bölümüne açan yayın yaklaşımı.';

  @override
  String get gameHintWord262Rolling => 'Çalışan örnekleri kademeli olarak değiştiren güncelleme stratejisi.';

  @override
  String get gameHintWord263Rollback => 'Önceden çalışan bir uygulama sürümünü geri yükler.';

  @override
  String get gameHintWord264Rollout => 'Yeni bir uygulama sürümünün kademeli dağıtımı.';

  @override
  String get gameHintWord265Recreate => 'Yenilerini başlatmadan önce eski pod\'ları durduran dağıtım stratejisi.';

  @override
  String get gameHintWord266Blue => 'Mavi-yeşil yayındaki iki ortamdan biri.';

  @override
  String get gameHintWord267Green => 'Mavi-yeşil yayındaki diğer ortam.';

  @override
  String get gameHintWord268Artifact => 'Bir derleme hattının ürettiği sürümlenmiş çıktı.';

  @override
  String get gameHintWord269Staging => 'Yayın doğrulaması için kullanılan üretim öncesi ortam.';

  @override
  String get gameHintWord270Production => 'Gerçek son kullanıcılara hizmet veren ortam.';

  @override
  String get gameHintWord271Release => 'Kullanıma sunulan bir yazılım sürümü.';

  @override
  String get gameHintWord272Version => 'Bir yazılım revizyonunu ayırt eden tanımlayıcı.';

  @override
  String get gameHintWord273Revision => 'Bir belgenin veya kod tabanının tanımlanabilir sürümü.';

  @override
  String get gameHintWord274Webhook => 'Bir olay gerçekleştiğinde gönderilen HTTP bildirimi.';

  @override
  String get gameHintWord275Runbook => 'Bir sistemi işletmek veya kurtarmak için belgelenmiş prosedür.';

  @override
  String get gameHintWord276Workspace => 'Çalışılan proje kaynaklarını içeren dizin veya kapsam.';

  @override
  String get gameHintWord277Credentials => 'Bir sisteme erişmek için kullanılan kimlik doğrulama bilgileri.';

  @override
  String get gameHintWord278Trigger => 'Bir pipeline\'ı başlatan olay veya koşul.';

  @override
  String get gameHintWord279Parameter => 'Bir işe veya fonksiyona verilen adlandırılmış girdi.';

  @override
  String get gameHintWord280Access => 'Yetkilendirmeye tabi olarak bir kaynağı kullanabilme yeteneği.';

  @override
  String get gameHintWord281Module => 'Yeniden kullanılabilir altyapı tanımları grubu.';

  @override
  String get gameHintWord282Provider => 'Yapılandırmayı harici bir API\'ye bağlayan Terraform eklentisi.';

  @override
  String get gameHintWord283Resource => 'Yapılandırmada bildirilen yönetilen altyapı nesnesi.';

  @override
  String get gameHintWord284Variable => 'Yapılandırma veya kod tarafından kullanılan adlandırılmış girdi değeri.';

  @override
  String get gameHintWord285Output => 'Bir altyapı yapılandırmasının döndürdüğü açığa çıkarılmış değer.';

  @override
  String get gameHintWord286Tfstate => 'Terraform durum anlık görüntüleriyle ilişkili dosya uzantısı.';

  @override
  String get gameHintWord287Tfvars => 'Terraform girdi değişken değerleri için kullanılan dosya uzantısı.';

  @override
  String get gameHintWord288Backend => 'Durum depolamasını denetleyen Terraform yapılandırması.';

  @override
  String get gameHintWord289Plan => 'Önerilen altyapı değişikliklerinin Terraform önizlemesi.';

  @override
  String get gameHintWord290Apply => 'Önerilen değişiklikleri uygulayan Terraform işlemi.';

  @override
  String get gameHintWord291Destroy => 'Yönetilen altyapıyı kaldıran Terraform işlemi.';

  @override
  String get gameHintWord292Import => 'Var olan bir kaynağı altyapı yönetimi altına alır.';

  @override
  String get gameHintWord293Refresh => 'Kayıtlı durumu gerçek altyapıyla senkronize eder.';

  @override
  String get gameHintWord294Validate => 'Yapılandırma sözdizimini ve iç tutarlılığı denetler.';

  @override
  String get gameHintWord295Fmt => 'Kanonik yapılandırma biçimlendirmesini uygulayan Terraform komutu.';

  @override
  String get gameHintWord296Init => 'Terraform sağlayıcılarını ve çalışma dizinini başlatır.';

  @override
  String get gameHintWord297Executor => 'Bir derlemeyi çalıştırabilen Jenkins işçi yuvası.';

  @override
  String get gameHintWord298Dependencies => 'Bir bileşenin diğerinden önce gerekmesini sağlayan ilişkiler.';

  @override
  String get gameHintWord299Drift => 'Bildirilen ve gerçek altyapı durumu arasındaki fark.';

  @override
  String get gameHintWord300Locking => 'Eşzamanlı yazıcıların paylaşılan durumu değiştirmesini engeller.';

  @override
  String get gameHintWord301Playbook => 'Otomasyon oyunlarını ve görevlerini tanımlayan Ansible belgesi.';

  @override
  String get gameHintWord302Inventory => 'Yönetilen sunucuların ve grupların Ansible koleksiyonu.';

  @override
  String get gameHintWord303Facts => 'Yönetilen sunucular hakkında toplanan sistem bilgileri.';

  @override
  String get gameHintWord304Task => 'Otomasyondaki tekil iş birimi.';

  @override
  String get gameHintWord305Handler => 'Bir değişiklikle bildirildiğinde çalışan Ansible görevi.';

  @override
  String get gameHintWord306Notify => 'Değişen bir görevden sonra bir handler\'ı kuyruğa alan Ansible yönergesi.';

  @override
  String get gameHintWord307Become => 'Ayrıcalık yükseltmeyi etkinleştiren Ansible ayarı.';

  @override
  String get gameHintWord308Vault => 'Hassas otomasyon verilerini şifrelemek için Ansible özelliği.';

  @override
  String get gameHintWord309Register => 'Bir görev sonucunu değişkene kaydeden Ansible yönergesi.';

  @override
  String get gameHintWord310When => 'Koşullu görev çalıştırmayı denetleyen Ansible anahtar sözcüğü.';

  @override
  String get gameHintWord311Loop => 'Bir otomasyon görevini bir koleksiyon üzerinde tekrarlar.';

  @override
  String get gameHintWord312Include => 'Yeniden kullanılabilir otomasyon içeriğini dinamik olarak yükler.';

  @override
  String get gameHintWord313Tags => 'Otomasyon görevlerinin alt kümelerini seçmek için kullanılan etiketler.';

  @override
  String get gameHintWord314Template => 'Dağıtımdan önce değişkenlerle işlenen dosya.';

  @override
  String get gameHintWord315Jinja => 'Ansible\'ın kullandığı şablon dili.';

  @override
  String get gameHintWord316Abstraction => 'Uygulama ayrıntılarını daha basit bir arayüzün arkasına gizleme.';

  @override
  String get gameHintWord317Agile => 'Geri bildirimi vurgulayan yinelemeli yazılım teslim yaklaşımı.';

  @override
  String get gameHintWord318Puppet => 'Bildirimsel manifestolar kullanan yapılandırma yönetim aracı.';

  @override
  String get gameHintWord319Airflow => 'İş akışı DAG\'lerini zamanlama ve orkestre etme platformu.';

  @override
  String get gameHintWord320Argo => 'Bir GitOps teslim denetleyicisi içeren bulut yerlisi proje ailesi.';

  @override
  String get gameHintWord321Rds => 'AWS yönetilen ilişkisel veritabanı hizmeti kısaltması.';

  @override
  String get gameHintWord322Sqs => 'AWS yönetilen mesaj kuyruğu kısaltması.';

  @override
  String get gameHintWord323Sns => 'AWS yayınla-abone ol bildirim hizmeti kısaltması.';

  @override
  String get gameHintWord324Ses => 'AWS e-posta gönderme hizmeti kısaltması.';

  @override
  String get gameHintWord325Iam => 'Bulut kimlik ve erişim yönetimi kısaltması.';

  @override
  String get gameHintWord326Kms => 'AWS şifreleme anahtarı yönetim hizmeti kısaltması.';

  @override
  String get gameHintWord327Waf => 'Uygulama katmanı web isteklerini filtreleyen güvenlik duvarı.';

  @override
  String get gameHintWord328Eks => 'AWS yönetilen Kubernetes hizmeti kısaltması.';

  @override
  String get gameHintWord329Ecs => 'AWS yönetilen konteyner orkestrasyon hizmeti kısaltması.';

  @override
  String get gameHintWord330Ecr => 'AWS konteyner imaj kayıt defteri kısaltması.';

  @override
  String get gameHintWord331Aurora => 'MySQL ve PostgreSQL ile uyumlu AWS ilişkisel veritabanı.';

  @override
  String get gameHintWord332Redshift => 'AWS analitik veri ambarı.';

  @override
  String get gameHintWord333Neptune => 'AWS yönetilen çizge veritabanı.';

  @override
  String get gameHintWord334Elasticache => 'AWS yönetilen bellek içi önbellek hizmeti.';

  @override
  String get gameHintWord335Athena => 'Nesne depolamadaki verileri SQL ile sorgulayan AWS hizmeti.';

  @override
  String get gameHintWord336Glue => 'AWS sunucusuz veri entegrasyonu ve ETL hizmeti.';

  @override
  String get gameHintWord337Emr => 'Yönetilen büyük veri işleme kümeleri için AWS platformu.';

  @override
  String get gameHintWord338Lambda => 'Sunucu yönetmeden fonksiyon çalıştıran AWS hizmeti.';

  @override
  String get gameHintWord339Cloudfront => 'AWS küresel içerik dağıtım ağı.';

  @override
  String get gameHintWord340Cloudwatch => 'Metrik, günlük ve alarm toplayan AWS hizmeti.';

  @override
  String get gameHintWord341Cloudshell => 'AWS tarayıcı tabanlı kabuk ortamı.';

  @override
  String get gameHintWord342Codecommit => 'AWS yönetilen Git depo hizmeti.';

  @override
  String get gameHintWord343Codebuild => 'Kaynağı derleyen ve derleme testlerini çalıştıran AWS hizmeti.';

  @override
  String get gameHintWord344Codedeploy => 'AWS otomatik uygulama dağıtım hizmeti.';

  @override
  String get gameHintWord345Codepipeline => 'AWS sürekli teslim pipeline hizmeti.';

  @override
  String get gameHintWord346Guardduty => 'AWS akıllı tehdit algılama hizmeti.';

  @override
  String get gameHintWord347Inspector => 'İş yüklerini güvenlik açıkları için değerlendiren AWS hizmeti.';

  @override
  String get gameHintWord348Macie => 'Nesne depolamadaki hassas verileri keşfeden AWS hizmeti.';

  @override
  String get gameHintWord349Shield => 'AWS yönetilen DDoS koruma hizmeti.';

  @override
  String get gameHintWord350Snowball => 'Büyük veri aktarımları için AWS fiziksel cihazı.';

  @override
  String get gameHintWord351Snowcone => 'AWS çevrimdışı aktarım ailesindeki küçük, dayanıklı cihaz.';

  @override
  String get gameHintWord352Datasync => 'AWS otomatik çevrimiçi veri aktarım hizmeti.';

  @override
  String get gameHintWord353Msk => 'AWS yönetilen Apache Kafka hizmeti kısaltması.';

  @override
  String get gameHintWord354Backup => 'Kurtarma için saklanan veri kopyası.';

  @override
  String get gameHintWord355Transcribe => 'Konuşmayı metne dönüştüren AWS hizmeti.';

  @override
  String get gameHintWord356Translate => 'Metni diller arasında çeviren AWS hizmeti.';

  @override
  String get gameHintWord357Rekognition => 'Görüntü ve videoları analiz eden AWS hizmeti.';

  @override
  String get gameHintWord358Comprehend => 'AWS doğal dil analizi hizmeti.';

  @override
  String get gameHintWord359Textract => 'Belgelerden metin ve tabloları çıkaran AWS hizmeti.';

  @override
  String get gameHintWord360Sagemaker => 'Makine öğrenimi modelleri oluşturma ve dağıtma için AWS platformu.';

  @override
  String get gameHintWord361Spanner => 'Google Cloud küresel olarak dağıtık ilişkisel veritabanı.';

  @override
  String get gameHintWord362Pub => 'Yayınla-abone ol mesajlaşma desenindeki yayınlama yarısı.';

  @override
  String get gameHintWord363Sub => 'Yayınla-abone ol mesajlaşma desenindeki abone yarısı.';

  @override
  String get gameHintWord364Functions => 'Sunucusuz platformların sunduğu olay güdümlü kod birimleri.';

  @override
  String get gameHintWord365App => 'Yazılım uygulaması için kısa biçim.';

  @override
  String get gameHintWord366Engine => 'Compute Engine gibi adlardaki çalıştırma bileşeni.';

  @override
  String get gameHintWord367Compute => 'Sanal makineler veya konteynerler tarafından sağlanan işlem kapasitesi.';

  @override
  String get gameHintWord368Network => 'Veri alışverişi yapan bağlı sistemler.';

  @override
  String get gameHintWord369Security => 'Sistemlerin ve bilgilerin tehditlere karşı korunması.';

  @override
  String get gameHintWord370Identity => 'Erişim kararları için kullanılan kullanıcı veya servis temsili.';

  @override
  String get gameHintWord371Monitoring => 'Sistem sağlığının ve davranışının sürekli gözlemi.';

  @override
  String get gameHintWord372Logging => 'Ayrık uygulama ve sistem olaylarını kaydetme.';

  @override
  String get gameHintWord373Trace => 'Servis çağrıları boyunca bir isteğin izlediği yolun kaydı.';

  @override
  String get gameHintWord374Metrics => 'Sistem davranışının zaman içindeki sayısal ölçümleri.';

  @override
  String get gameHintWord375Alert => 'İzlenen bir durumun dikkat gerektirdiğini bildiren bildirim.';

  @override
  String get gameHintWord376Billing => 'Tüketilen bulut hizmetlerinin takibi ve ücretlendirilmesi.';

  @override
  String get gameHintWord377Quota => 'Tüketilebilecek bir kaynak miktarı üzerindeki sınır.';

  @override
  String get gameHintWord378Region => 'Kullanılabilirlik bölgeleri içeren coğrafi bulut dağıtım alanı.';

  @override
  String get gameHintWord379Tenancy => 'Müşterilerin altyapıyı nasıl paylaştığını tanımlayan düzen.';

  @override
  String get gameHintWord380Regional => 'Bir bulut bölgesiyle kapsamlandırılmış kaynağı tanımlar.';

  @override
  String get gameHintWord381Cosmos => 'Azure küresel dağıtık çok modelli veritabanının adı.';

  @override
  String get gameHintWord382Synapse => 'Ambarlama ve veri işlemeyi birleştiren Azure analitik platformu.';

  @override
  String get gameHintWord383Sentinel => 'Microsoft bulut yerlisi güvenlik bilgisi ve olay platformu.';

  @override
  String get gameHintWord384Defender => 'Bulut iş yüklerini koruyan Microsoft güvenlik ürün ailesi.';

  @override
  String get gameHintWord385Entra => 'Azure AD markasının yerini alan Microsoft kimlik ürün ailesi.';

  @override
  String get gameHintWord386Arm => 'Azure Resource Manager kısaltması.';

  @override
  String get gameHintWord387Arc => 'Yönetimi Azure dışındaki kaynaklara genişleten Azure hizmeti.';

  @override
  String get gameHintWord388Aks => 'Azure yönetilen Kubernetes hizmeti kısaltması.';

  @override
  String get gameHintWord389Armor => 'Google Cloud web koruma hizmeti adının son eki.';

  @override
  String get gameHintWord390Blob => 'Azure nesne depolama veri türü.';

  @override
  String get gameHintWord391Files => 'Yönetilen ağ dosya paylaşımları sunan Azure hizmeti.';

  @override
  String get gameHintWord392Disk => 'Bir sanal makineye bağlı blok depolama aygıtı.';

  @override
  String get gameHintWord393Function => 'Sonuç döndürebilen, çağrılabilir kod bloğu.';

  @override
  String get gameHintWord394Logic => 'İş akışı entegrasyonu için Azure uygulama hizmeti kategorisi.';

  @override
  String get gameHintWord395Insights => 'Azure uygulama telemetri ürün adının son eki.';

  @override
  String get gameHintWord396Traffic => 'Ağ uç noktaları arasında akan veri.';

  @override
  String get gameHintWord397Manager => 'Azure Resource ürün adının, kontrol düzlemini belirten son eki.';

  @override
  String get gameHintWord398Bastion => 'Özel sunuculara erişim için yönetilen veya sertleştirilmiş giriş noktası.';

  @override
  String get gameHintWord399Front => 'Azure küresel giriş noktası hizmeti Front Door\'un ilk sözcüğü.';

  @override
  String get gameHintWord400Door => 'Azure küresel giriş noktası hizmeti Front Door\'un ikinci sözcüğü.';

  @override
  String get gameHintWord401Javascript => 'Tarayıcılarda ve Node çalışma zamanlarında yaygın kullanılan programlama dili.';

  @override
  String get gameHintWord402Perl => 'Metin işleme ve düzenli ifadelerle tanınan betik dili.';

  @override
  String get gameHintWord403Powershell => 'Microsoft\'un nesne yönelimli kabuğu ve otomasyon dili.';

  @override
  String get gameHintWord404Java => 'Jenkins\'i gerçekleştirmek için kullanılan JVM dili.';

  @override
  String get gameHintWord405Json => 'Nesneler ve dizilerden oluşan hafif veri biçimi.';

  @override
  String get gameHintWord406Xml => 'İç içe adlandırılmış etiketler kullanan işaretleme biçimi.';

  @override
  String get gameHintWord407Html => 'Web sayfalarını yapılandırmak için kullanılan işaretleme dili.';

  @override
  String get gameHintWord408Css => 'Web sunumunu denetleyen stil sayfası dili.';

  @override
  String get gameHintWord409String => 'Metin karakterleri dizisi.';

  @override
  String get gameHintWord410Array => 'Dizinlenmiş öğe koleksiyonu.';

  @override
  String get gameHintWord411Hash => 'Ruby ve Perl\'de ilişkisel anahtar-değer koleksiyonu.';

  @override
  String get gameHintWord412Object => 'Özellikleri ve davranışı olan çalışma zamanı değeri.';

  @override
  String get gameHintWord413Class => 'Sınıf tabanlı dillerde nesne oluşturmak için kullanılan tanım.';

  @override
  String get gameHintWord414Method => 'Bir nesneyle veya sınıfla ilişkili fonksiyon.';

  @override
  String get gameHintWord415Interface => 'Bir bileşenin sunduğu işlemleri tanımlayan sözleşme.';

  @override
  String get gameHintWord416Subclass => 'Başka bir sınıftan türetilmiş sınıf.';

  @override
  String get gameHintWord417Super => 'Üst sınıf davranışını çağırmak için kullanılan anahtar sözcük.';

  @override
  String get gameHintWord418Protected => 'Erişimi sınıfla ilgili bağlamlarla kısıtlayan görünürlük düzeyi.';

  @override
  String get gameHintWord419Exception => 'Normal kontrol akışını kesen çalışma zamanı durumu.';

  @override
  String get gameHintWord420Regex => 'Metin eşleştirmek için kullanılan desen gösterimi.';

  @override
  String get gameHintWord421Lexical => 'Kaynak kod yapısıyla belirlenen kapsamı tanımlar.';

  @override
  String get gameHintWord422Scalar => 'Perl\'de tek değerli değişken kategorisi.';

  @override
  String get gameHintWord423Tuple => 'Python\'da değiştirilemez sıralı koleksiyon.';

  @override
  String get gameHintWord424List => 'Python\'da değiştirilebilir sıralı koleksiyon.';

  @override
  String get gameHintWord425Dict => 'Python\'ın yerleşik eşleme türü adı.';

  @override
  String get gameHintWord426Dictionary => 'Anahtarları ilişkili değerlere eşleyen koleksiyon.';

  @override
  String get gameHintWord427Set => 'Benzersiz değerlerden oluşan koleksiyon.';

  @override
  String get gameHintWord428Boolean => 'Doğru veya yanlışı temsil eden veri türü.';

  @override
  String get gameHintWord429Integer => 'Tam sayıları temsil eden sayısal tür.';

  @override
  String get gameHintWord430Float => 'Kayan noktalı değerleri temsil eden sayısal tür.';

  @override
  String get gameHintWord431Double => 'Çift duyarlıklı kayan noktalı tür.';

  @override
  String get gameHintWord432Null => 'Bir nesnenin veya sonucun yokluğunu temsil eden değer.';

  @override
  String get gameHintWord433Undefined => 'Atanmış değerin eksik olduğunu belirten JavaScript değeri.';

  @override
  String get gameHintWord434Promise => 'Eşzamansız bir sonucu temsil eden JavaScript nesnesi.';

  @override
  String get gameHintWord435Async => 'Eşzamansız bir fonksiyonu işaretleyen anahtar sözcük.';

  @override
  String get gameHintWord436Await => 'Eşzamansız bir sonucu bekleyen anahtar sözcük.';

  @override
  String get gameHintWord437Callback => 'Başka bir işlem tarafından çağrılmak üzere verilen fonksiyon.';

  @override
  String get gameHintWord438Closure => 'Çevreleyen sözcüksel kapsama erişimini koruyan fonksiyon.';

  @override
  String get gameHintWord439Generator => 'Üretilen değerlerle diziyi tembel biçimde üreten fonksiyon.';

  @override
  String get gameHintWord440Iterator => 'Bir koleksiyondaki değerler üzerinde ilerleyen nesne.';

  @override
  String get gameHintWord441Print => 'Bir değeri çıktıya yazan yaygın fonksiyon.';

  @override
  String get gameHintWord442Input => 'Standart girdiden bir satır okuyan Python fonksiyonu.';

  @override
  String get gameHintWord443Open => 'Dosya tutamacı elde etmek için kullanılan fonksiyon.';

  @override
  String get gameHintWord444Close => 'Açık bir dosyayı veya bağlantıyı serbest bırakan işlem.';

  @override
  String get gameHintWord445Read => 'Bir akıştan veya dosyadan veri alan işlem.';

  @override
  String get gameHintWord446Write => 'Bir akışa veya dosyaya veri gönderen işlem.';

  @override
  String get gameHintWord447Append => 'Bir koleksiyonun sonuna öğe ekler.';

  @override
  String get gameHintWord448Split => 'Metni bir ayırıcıyla alt dizelere böler.';

  @override
  String get gameHintWord449Join => 'Bir dize dizisini ayırıcıyla birleştirir.';

  @override
  String get gameHintWord450Strip => 'Bir Python dizesinin çevresindeki boşlukları kaldırır.';

  @override
  String get gameHintWord451Chomp => 'Perl veya Ruby\'de sondaki kayıt ayırıcısını kaldırır.';

  @override
  String get gameHintWord452Map => 'Bir koleksiyondaki her öğeye dönüşüm uygular.';

  @override
  String get gameHintWord453Filter => 'Bir koşulu sağlayan koleksiyon öğelerini tutar.';

  @override
  String get gameHintWord454Reduce => 'Bir koleksiyonu birikmiş bir sonuçta birleştirir.';

  @override
  String get gameHintWord455Range => 'Tam sayılardan oluşan aritmetik diziyi temsil eden Python türü.';

  @override
  String get gameHintWord456Length => 'Bir koleksiyonun boyutunu döndüren özellik veya metot.';

  @override
  String get gameHintWord457Len => 'Koleksiyon boyutunu döndüren Python yerleşik fonksiyonu.';

  @override
  String get gameHintWord458Type => 'Bir nesne türünü döndüren Python fonksiyonu.';

  @override
  String get gameHintWord459Isinstance => 'Bir tür hiyerarşisindeki üyeliği denetleyen Python fonksiyonu.';

  @override
  String get gameHintWord460Yield => 'Bir generator\'dan değer üreten anahtar sözcük.';

  @override
  String get gameHintWord461Saas => 'Eksiksiz yazılım uygulamaları sunan bulut modeli.';

  @override
  String get gameHintWord462Paas => 'Yönetilen uygulama geliştirme platformu sağlayan bulut modeli.';

  @override
  String get gameHintWord463Iaas => 'Sanal işlem, depolama ve ağ sağlayan bulut modeli.';

  @override
  String get gameHintWord464Hybrid => 'Özel ve genel altyapıyı birleştiren bulut yaklaşımı.';

  @override
  String get gameHintWord465Archive => 'Seyrek erişilen verilerin uzun vadeli depolanması.';

  @override
  String get gameHintWord466Public => 'Hizmetleri birden çok müşteriye sunan bulut sahiplik modeli.';

  @override
  String get gameHintWord467Private => 'Tek bir kuruma ayrılmış bulut modeli.';

  @override
  String get gameHintWord468Scalability => 'Kaynak ekleyerek artan yükü kaldırabilme yeteneği.';

  @override
  String get gameHintWord469Availability => 'Bir servisin gerektiğinde erişilebilir kalma derecesi.';

  @override
  String get gameHintWord470Resilience => 'Arızalara dayanma ve onlardan kurtulma yeteneği.';

  @override
  String get gameHintWord471Redundancy => 'Tek hata noktalarını azaltan yinelenen bileşenler.';

  @override
  String get gameHintWord472Disaster => 'Bir kurtarma stratejisiyle ele alınan büyük kesinti.';

  @override
  String get gameHintWord473Recovery => 'Arızadan sonra servisi veya veriyi geri getirme.';

  @override
  String get gameHintWord474Replicate => 'Verileri veya iş yüklerini başka bir konuma kopyalar.';

  @override
  String get gameHintWord475Snapshotting => 'Verilerin veya sistem durumunun belirli andaki kopyalarını alma.';

  @override
  String get gameHintWord476Restore => 'Kayıtlı bir kopyadan veriyi kurtaran işlem.';

  @override
  String get gameHintWord477Residency => 'Saklanan verilerin coğrafi konumunu belirleyen gereksinim.';

  @override
  String get gameHintWord478Compliance => 'Gerekli düzenlemelere ve kurumsal denetimlere uyma.';

  @override
  String get gameHintWord479Governance => 'Teknoloji kullanımını denetleyen ilkeler ve süreçler.';

  @override
  String get gameHintWord480Audit => 'Kayıtlı etkinliklerin ve uyumluluk kanıtlarının incelenmesi.';

  @override
  String get gameHintWord481Token => 'Yetkilendirmeyi veya kimliği temsil eden kimlik bilgisi veya sembol.';

  @override
  String get gameHintWord482Oauth => 'Devredilmiş erişime izin veren yetkilendirme çerçevesi.';

  @override
  String get gameHintWord483Saml => 'Kurumsal çoklu oturum açma için sık kullanılan XML tabanlı standart.';

  @override
  String get gameHintWord484Cmdlet => 'PowerShell pipeline\'larında kullanılan özel komut.';

  @override
  String get gameHintWord485Algorithm => 'Bir hesaplama sorununu çözmek için tanımlı adım dizisi.';

  @override
  String get gameHintWord486Key => 'Şifrelemeyi denetlemek veya saklanan verileri tanımlamak için kullanılan değer.';

  @override
  String get gameHintWord487Alias => 'Bir kabuk komutu veya kaynağı için alternatif ad.';

  @override
  String get gameHintWord488Amend => 'En son commit\'in yerini alan Git commit seçeneği.';

  @override
  String get gameHintWord489Allsigned => 'İmzalı betikler gerektiren PowerShell yürütme ilkesi.';

  @override
  String get gameHintWord490Remotesigned => 'İndirilen betiklerde imza gerektiren PowerShell ilkesi.';

  @override
  String get gameHintWord491Acl => 'Kullanıcılar veya sistemler için izinleri tanımlayan liste.';

  @override
  String get gameHintWord492Uid => 'Bir Unix kullanıcısına atanan sayısal tanımlayıcı.';

  @override
  String get gameHintWord493Setgid => 'Çalıştırma veya miras sırasında grup kimliğini etkileyen izin biti.';

  @override
  String get gameHintWord494Setfacl => 'Dosya erişim denetim listelerini ayarlayan Linux komutu.';

  @override
  String get gameHintWord495Isolation => 'İş yüklerinin birbirine müdahale etmesini önleyen ayrım.';

  @override
  String get gameHintWord496Sighup => 'Sıklıkla yapılandırma yeniden yüklemesi istemek için kullanılan Unix kapatma sinyali.';

  @override
  String get gameHintWord497Sigint => 'Genellikle Control-C ile üretilen Unix kesme sinyali.';

  @override
  String get gameHintWord498Sigstop => 'Bir işlemi sonlandırmadan duraklatan Unix sinyali.';

  @override
  String get gameHintWord499Secrets => 'Parolalar ve erişim anahtarları gibi hassas değerler.';

  @override
  String get gameHintWord500Secure => 'Yetkisiz erişime karşı korunan bir bağlantıyı tanımlar.';

  @override
  String get fontSettingsTitle => 'Yazı tipi';

  @override
  String get fontChangeFont => 'Yazı tipini değiştir';

  @override
  String get fontSystemDefault => 'Sistem varsayılanı';

  @override
  String get fontPreview => 'Önizleme';

  @override
  String get fontPreviewSample => 'DevOps\'u soru soru öğren';

  @override
  String get fontSelected => 'Seçili';

  @override
  String get fontLatinOnlyNote => 'Özel yazı tipleri Latin harflerine uygulanır. Diğer yazı sistemleri cihazınızın yazı tipini korur.';

  @override
  String get fontDescSystem => 'Cihazınızın yerleşik yazı tipi';

  @override
  String get fontDescGeometric => 'Geometrik sans serif';

  @override
  String get fontDescGeometricRounded => 'Yuvarlatılmış geometrik sans serif';

  @override
  String get fontDescFriendly => 'Samimi sans serif';

  @override
  String get fontDescCondensed => 'Dar';

  @override
  String get fontDescRounded => 'Yuvarlatılmış sans serif';

  @override
  String get fontDescRoundedDisplay => 'Yuvarlatılmış başlık yazı tipi';

  @override
  String gameScene3dScene(String value1) {
    return '3D Sahne $value1';
  }
}
