// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTour => 'Tur aplikasi';

  @override
  String get skipTour => 'Lewati tur';

  @override
  String get finishTour => 'Selesaikan tur';

  @override
  String tourStep(int current, int total) {
    return 'Langkah $current dari $total';
  }

  @override
  String get tourMenuTitle => 'Menu navigasi';

  @override
  String get tourSearch => 'Ketik topik di sini untuk menemukan kategori kuis yang sesuai.';

  @override
  String get tourCategory => 'Ketuk DevOps untuk kuis campuran. Kategori lain menyediakan kumpulan pertanyaan. Simpan pertanyaan untuk ditinjau nanti.';

  @override
  String get tourMenu => 'Ketuk tombol ini untuk membuka menu navigasi.';

  @override
  String get tourLearning => 'Buka Belajar untuk melihat kartu. Geser ke arah mana pun, acak, aktifkan pergantian otomatis, atau simpan kartu.';

  @override
  String get tourGames => 'Bermain untuk mendapat poin. Game bertingkat memberi 100 poin per level yang selesai; petunjuk berharga 20 poin.';

  @override
  String get tourAchievements => 'Lihat pencapaian Anda di sini. Popup mengumumkan pencapaian baru dan tema yang tersedia.';

  @override
  String get tourSettings => 'Pilih bahasa, tema, dan suara. Buka Data tersimpan untuk melihat penanda atau Tur aplikasi untuk mengulang panduan ini.';

  @override
  String get achievementUnlocked => 'Pencapaian terbuka!';

  @override
  String get themeUnlocked => 'Tema baru tersedia!';

  @override
  String get themeUnlockedMessage => 'Kini Anda dapat memilih tema ini di Pengaturan > Tema.';

  @override
  String get gameSounds => 'Suara permainan';

  @override
  String get gameSoundsDescription => 'Efek untuk permainan dan kuis. Periksa volume dan mode senyap perangkat.';

  @override
  String get testSound => 'Uji suara';

  @override
  String get soundSettingBusy => 'Harap tunggu...';

  @override
  String get soundSettingError => 'Tidak dapat memuat atau menyimpan pengaturan suara. Coba lagi.';

  @override
  String get soundPlaybackError => 'Tidak dapat memutar suara. Periksa pengaturan audio perangkat atau browser.';

  @override
  String get saveData => 'Data tersimpan';

  @override
  String get learningTranslationUnavailable => 'Kartu ini belum diterjemahkan ke bahasa yang dipilih.';

  @override
  String get saveQuestion => 'Simpan pertanyaan';

  @override
  String defaultPortQuestion(String service) {
    return 'Apa port default untuk $service?';
  }

  @override
  String get removeSavedItem => 'Hapus dari tersimpan';

  @override
  String get noSavedData => 'Belum ada yang disimpan. Tandai kartu belajar atau pertanyaan kuis.';

  @override
  String get savedDataError => 'Tidak dapat memuat atau memperbarui data tersimpan. Coba lagi.';

  @override
  String get savedItemUnavailable => 'Item tersimpan ini tidak lagi tersedia.';

  @override
  String get correctAnswer => 'Jawaban benar';

  @override
  String get retry => 'Coba lagi';

  @override
  String get certificates => 'Sertifikat';

  @override
  String get whatsNew => 'Yang baru';

  @override
  String get settings => 'Pengaturan';

  @override
  String get darkMode => 'Mode gelap';

  @override
  String get lightMode => 'Mode terang';

  @override
  String get language => 'Bahasa';

  @override
  String get selectLanguage => 'Pilih bahasa';

  @override
  String get english => 'Inggris';

  @override
  String get hindi => 'Hindi';

  @override
  String get marathi => 'Marathi';

  @override
  String get startQuiz => 'Mulai kuis';

  @override
  String get appName => 'DevOps Quiz';

  @override
  String get switchCategory => 'Ganti kategori';

  @override
  String get dailyQuiz => 'Kuis harian';

  @override
  String get dailyQuizCompleted => 'Kuis harian selesai';

  @override
  String get dailyQuizCompletedMessage => 'Kamu sudah menyelesaikan kuis harian hari ini.\n\nKembali besok untuk tantangan baru!';

  @override
  String get leaderboard => 'Papan peringkat';

  @override
  String get shareApp => 'Bagikan aplikasi';

  @override
  String get rateApp => 'Beri nilai aplikasi';

  @override
  String get about => 'Tentang';

  @override
  String get ok => 'OK';

  @override
  String get home => 'Beranda';

  @override
  String get games => 'Permainan';

  @override
  String get referAndEarn => 'Ajak & dapatkan';

  @override
  String get themes => 'Tema';

  @override
  String get version => 'Versi';

  @override
  String get developer => 'Pengembang';

  @override
  String get contact => 'Kontak';

  @override
  String get learning => 'Belajar';

  @override
  String get linkedIn => 'LinkedIn';

  @override
  String get connectWithMe => 'Terhubung dengan saya';

  @override
  String get aboutDescription => 'DevOps Quiz membantu pelajar mempersiapkan wawancara dan sertifikasi melalui ribuan pertanyaan pilihan tentang Linux, Docker, Kubernetes, jaringan, Git, Jenkins, Terraform, Ansible, dan teknologi DevOps lainnya.';

  @override
  String get quizResult => 'Hasil kuis';

  @override
  String get outstanding => 'Luar biasa!';

  @override
  String get greatJob => 'Kerja bagus!';

  @override
  String get goodEffort => 'Usaha yang baik!';

  @override
  String get keepPracticing => 'Teruslah berlatih!';

  @override
  String get dontGiveUp => 'Jangan menyerah!';

  @override
  String get shareMessage1 => 'Saya mendapat';

  @override
  String get shareMessage2 => 'dalam Kuis DevOps!';

  @override
  String get downloadApp => 'Unduh aplikasi:';

  @override
  String get score => 'Skor';

  @override
  String get points => 'Poin';

  @override
  String get percentage => 'Persentase';

  @override
  String get bonus => 'Bonus';

  @override
  String get perfectScoreBonus => 'Bonus skor sempurna';

  @override
  String get shareScore => 'Bagikan skor';

  @override
  String get restartQuiz => 'Ulangi kuis';

  @override
  String get backToCategories => 'Kembali ke kategori';

  @override
  String get greatProgress => 'Bagus! Kemajuanmu sangat baik.';

  @override
  String get practiceMore => 'Kerja bagus! Sedikit latihan lagi dan skormu akan lebih tinggi.';

  @override
  String get keepLearning => 'Teruslah belajar dan coba lagi. Kamu akan membaik dengan latihan.';

  @override
  String get everyExpertStarted => 'Setiap ahli dulunya pemula. Berlatihlah dan kembali lebih kuat!';

  @override
  String get quizInstructions => 'Petunjuk kuis';

  @override
  String get instruction1 => 'Setiap set berisi 25 pertanyaan.';

  @override
  String get instruction2 => 'Kamu punya 30 detik per pertanyaan.';

  @override
  String get instruction3 => 'Hijau = jawaban benar.';

  @override
  String get instruction4 => 'Merah = jawaban salah.';

  @override
  String get instruction5 => 'Jawaban tidak dapat diubah.';

  @override
  String get instruction6 => 'Tombol Kembali hanya untuk meninjau.';

  @override
  String get instruction7 => 'Skor ditampilkan setelah selesai.';

  @override
  String get instruction8 => 'Setiap jawaban benar mendapat 10 poin.';

  @override
  String excellentPerformance(Object expert) {
    return 'Performa luar biasa! Kamu adalah $expert.';
  }

  @override
  String get selectCategory => 'Pilih kategori';

  @override
  String get devOps => 'DevOps';

  @override
  String get selectSet => 'Pilih set';

  @override
  String get set => 'Set';

  @override
  String get questions => 'Pertanyaan';

  @override
  String get noScoresYet => 'Belum ada skor';

  @override
  String get pointsShort => 'poin';

  @override
  String get welcomeToDevOpsQuiz => 'Selamat datang di DevOps Quiz';

  @override
  String hiUser(String name) {
    return 'Hai $name';
  }

  @override
  String get challengeMode => 'Mode tantangan';

  @override
  String get challenge => 'Tantangan';

  @override
  String get question => 'Pertanyaan';

  @override
  String get reward => 'Hadiah';

  @override
  String get survivalMode => 'Mode bertahan';

  @override
  String get speedChallenge => 'Tantangan kecepatan';

  @override
  String get dailyChallenge => 'Tantangan harian';

  @override
  String get ultimateChallenge => 'Tantangan pamungkas';

  @override
  String get timeLeft => 'Sisa waktu';

  @override
  String get completed => 'Selesai';

  @override
  String get locked => 'Terkunci';

  @override
  String get back => 'Kembali';

  @override
  String get next => 'Berikutnya';

  @override
  String get submit => 'Kirim';

  @override
  String get achievements => 'Pencapaian';

  @override
  String get streak => 'Beruntun';

  @override
  String get days => 'Hari';

  @override
  String get tomorrowsReward => 'Hadiah besok';

  @override
  String shareMessage(Object score, Object totalQuestions, Object earnedPoints, Object bonusPoints, Object percentage) {
    return '🎯 Aku mendapat $score/$totalQuestions di kuis #DevOps hari ini!\n\n🏆 Poin: $earnedPoints\n🔥 Bonus: $bonusPoints\n📊 Persentase: $percentage%\n\nBisakah kamu mengalahkan skorku?\n\nUnduh aplikasinya:';
  }

  @override
  String get gameUiSpinWheel => 'Putar Roda';

  @override
  String get gameUiSpinAndWinBonusPoints => 'Putar dan menangkan poin bonus';

  @override
  String get gameUiScratchCard => 'Kartu Gosok';

  @override
  String get gameUiScratchToRevealAReward => 'Gosok untuk mengungkap hadiah';

  @override
  String get gameUiLuckySlots => 'Slot Keberuntungan';

  @override
  String get gameUiRollTheSlotsAndWinPoints => 'Putar slot dan menangkan poin';

  @override
  String get gameUiMysteryDeal => 'Penawaran Misteri';

  @override
  String get gameUiPickAMysteryBoxAndAnswer => 'Pilih kotak misteri dan jawab';

  @override
  String get gameUiMemoryMatch => 'Cocokkan Memori';

  @override
  String get gameUiMatchDevOpsPairs => 'Cocokkan pasangan DevOps';

  @override
  String get gameUiWordGuess => 'Tebak Kata';

  @override
  String get gameUiGuessDevOpsWordsThroughLevels => 'Tebak kata-kata DevOps melalui berbagai level';

  @override
  String get gameUiFindWords => 'Cari Kata';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTerms => 'Cari istilah DevOps tersembunyi di dalam kisi';

  @override
  String get gameUiSpotTheDifference => 'Temukan Perbedaan';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenes => 'Temukan lima perubahan di antara dua adegan bergambar';

  @override
  String get gameUiJigsawPuzzle => 'Puzzle Jigsaw';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures => 'Susun ulang gambar hewan dan alam HD bersama';

  @override
  String get gameUiHighOrLow => 'Tinggi atau Rendah';

  @override
  String get gameUiBuildAStreak => 'Bangun rangkaian kemenangan';

  @override
  String get gameUiTrueOrFalseBlitz => 'Blitz Benar atau Salah';

  @override
  String get gameUiQuickAnswerQuiz => 'Kuis jawab cepat';

  @override
  String get gameUiCommandMatch => 'Cocokkan Perintah';

  @override
  String get gameUiMatchCommandsToMeanings => 'Cocokkan perintah dengan artinya';

  @override
  String get gameUiPortMaster => 'Master Port';

  @override
  String get gameUiGuessDefaultPorts => 'Tebak port default';

  @override
  String get gameUiTicTacToe => 'Tic-Tac-Toe';

  @override
  String get gameUiOXNoughtsAndCrossesComputer => 'O X lawan komputer';

  @override
  String get gameUiConnectFour => 'Connect Four';

  @override
  String get gameUiDropFourDiscs => 'Jatuhkan empat cakram';

  @override
  String get gameUiLudo => 'Ludo';

  @override
  String get gameUiRaceAgainstBots => 'Balapan melawan bot';

  @override
  String get gameUiChess => 'Catur';

  @override
  String get gameUiChessBoardLegalMovesTwoPlayers => 'Papan catur dengan langkah sah untuk dua pemain';

  @override
  String get gameUiSnakeAndLadders => 'Ular Tangga';

  @override
  String get gameUiDiceBoardSnakesLaddersTwoPlayers => 'Papan dadu ular tangga untuk dua pemain';

  @override
  String get gameUiGames => 'Game 🎮';

  @override
  String get gameUiPlayEarn => 'Main & Dapatkan';

  @override
  String get gameUiPlayGamesAndEarnBonusPoints => 'Mainkan game dan dapatkan poin bonus!';

  @override
  String get gameUiSearchGames => 'Cari game';

  @override
  String get gameUiClearSearch => 'Hapus pencarian';

  @override
  String gameUiNoGamesMatch(String value1) {
    return 'Tidak ada game yang cocok dengan \"$value1\"';
  }

  @override
  String get gameUiSpinWinBonusPoints => 'Putar & menangkan poin bonus.';

  @override
  String get gameUiScratchToRevealYourReward => 'Gosok untuk mengungkap hadiah Anda.';

  @override
  String get gameUiRollTheSlotsWinPoints => 'Putar slot & menangkan poin.';

  @override
  String get gameUiPickAMysteryBoxAndAnswerCorrectlyToWin => 'Pilih kotak misteri dan jawab dengan benar untuk memenangkan poin.';

  @override
  String get gameUiMatchDevOpsPairsToEarnPoints => 'Cocokkan pasangan DevOps untuk mendapatkan poin.';

  @override
  String get gameUiGuessTheDevOpsTermIn6Tries => 'Tebak istilah DevOps dalam 6 kesempatan.';

  @override
  String get gameUiSearchAGridForHiddenDevOpsTermsff710c9 => 'Cari istilah DevOps tersembunyi di dalam kisi.';

  @override
  String get gameUiSwipeToFindDevOpsWordsIn500Levels => 'Geser untuk menemukan kata-kata DevOps di 500 level.';

  @override
  String get gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c => 'Temukan lima perubahan di antara dua adegan bergambar.';

  @override
  String get gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61 => 'Susun ulang gambar hewan dan alam HD bersama.';

  @override
  String get gameUiBuildAStreakAndBankYourPoints => 'Bangun rangkaian kemenangan dan amankan poin Anda.';

  @override
  String get gameUiBeatTheClockWithQuickAnswers => 'Kalahkan waktu dengan jawaban cepat.';

  @override
  String get gameUiTrueOrFalseBlitzd3a29d7 => 'Blitz Benar atau Salah 🆕';

  @override
  String get gameUiMatchCommandsToWhatTheyDo => 'Cocokkan perintah dengan fungsinya.';

  @override
  String get gameUiCommandMatch670a76e => 'Cocokkan Perintah 🆕';

  @override
  String get gameUiGuessDefaultPortsWith3Lives => 'Tebak port default dengan 3 nyawa.';

  @override
  String get gameUiPortMaster8f5fd42 => 'Master Port 🆕';

  @override
  String get gameUiPlayOXAgainstTheComputer => 'Mainkan O/X melawan komputer.';

  @override
  String get gameUiDropFourDiscsInARowToWin => 'Jatuhkan empat cakram berderet untuk menang.';

  @override
  String get gameUiRaceYourPiecesAgainstThreeBots => 'Balapkan bidak Anda melawan tiga bot.';

  @override
  String get gameUiLocalTwoPlayerChessWithLegalMoves => 'Catur lokal dua pemain dengan langkah sah.';

  @override
  String get gameUiPlayALegalTwoPlayerChessMatch => 'Mainkan pertandingan catur dua pemain dengan langkah sah.';

  @override
  String get gameUiTwoPlayerDiceBoardGame => 'Permainan papan dadu dua pemain.';

  @override
  String get gameUiRaceTo100ClimbLaddersAndDodgeSnakes => 'Berlomba menuju 100. Panjat tangga dan hindari ular.';

  @override
  String get gameUiPlay => 'Main';

  @override
  String get gameUiWheelStopped => 'Roda Berhenti!';

  @override
  String get gameUiYourRewardIs => 'Hadiah Anda adalah';

  @override
  String get gameUiPOINTS => 'POIN';

  @override
  String get gameUiAnswer1QuizQuestionCorrectlyToClaimThisReward => 'Jawab 1 pertanyaan kuis dengan benar untuk mengklaim hadiah ini.';

  @override
  String get gameUiWrongAnswerRewardLost => 'Jawaban salah = hadiah hangus.';

  @override
  String get gameUiAnswerQuestion => 'Jawab Pertanyaan';

  @override
  String get gameUiSpinWheele449982 => '🎡 Putar Roda';

  @override
  String get gameUiDailySpin => 'Putaran Harian';

  @override
  String get gameUiSpinTheWheelThenAnswerAQuestionToClaim => 'Putar roda, lalu jawab pertanyaan untuk mengklaim hadiah Anda!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySSpin => 'Anda sudah menggunakan putaran hari ini.';

  @override
  String get gameUiSpinning => 'Memutar...';

  @override
  String get gameUiSPINNOW => 'PUTAR SEKARANG';

  @override
  String get gameUiCOMEBACKTOMORROW => 'KEMBALI BESOK';

  @override
  String gameUiTodaySRewardPoints(String value1) {
    return 'Hadiah hari ini: ⭐ $value1 poin';
  }

  @override
  String get gameUiBackToGames => 'Kembali ke Game';

  @override
  String get gameUiSPIN => 'PUTAR';

  @override
  String get gameUiRewardRevealed => 'Hadiah Terungkap!';

  @override
  String get gameUiYouFound => 'Anda menemukan';

  @override
  String get gameUiScratchCarda7407ad => '🎟️ Kartu Gosok';

  @override
  String get gameUiDailyScratch => 'Gosok Harian';

  @override
  String get gameUiScratchTheCardToRevealTodaySReward => 'Gosok kartu untuk mengungkap hadiah hari ini!';

  @override
  String get gameUiYouHaveAlreadyUsedTodaySScratchCard => 'Anda sudah menggunakan kartu gosok hari ini.';

  @override
  String get gameUiAlreadyScratched => 'Sudah Digosok';

  @override
  String get gameUiComeBackTomorrowForAnotherReward => 'Kembali besok untuk hadiah lainnya.';

  @override
  String get gameUiYouRevealed => 'Anda mengungkap';

  @override
  String get gameUiSCRATCHHERE => 'GOSOK DI SINI  👆';

  @override
  String get gameUiJACKPOT777 => 'JACKPOT 777!';

  @override
  String get gameUiLucky777 => 'Beruntung 777!';

  @override
  String get gameUiYourReward => 'Hadiah Anda';

  @override
  String get gameUiLuckySlots6602dbb => '🎰 Slot Keberuntungan';

  @override
  String get gameUiRollTheSlotsThenAnswerAQuestionToClaim => 'Putar slot, lalu jawab pertanyaan untuk mengklaim hadiah!';

  @override
  String get gameUiYouHaveAlreadyPlayedToday => 'Anda sudah bermain hari ini.';

  @override
  String get gameUiSPINNING => 'MEMUTAR...';

  @override
  String get gameUiROLLNOW => 'PUTAR SEKARANG';

  @override
  String get gameUiJACKPOT777PointsAvailable => '🎰 JACKPOT! 777 poin tersedia!';

  @override
  String gameUiUnableToCheckMysteryDealStatus(String value1) {
    return 'Tidak dapat memeriksa status Tawaran Misteri: $value1';
  }

  @override
  String gameUiBox(String value1) {
    return 'Kotak $value1';
  }

  @override
  String gameUiPOINTSeb9559c(String value1) {
    return '$value1 POIN';
  }

  @override
  String get gameUiStartQuestion => 'Mulai Pertanyaan';

  @override
  String get gameUiMysteryDeal9c9a14e => '💼 Tawaran Misteri';

  @override
  String get gameUiMysteryDealCompleted => 'Tawaran Misteri Selesai!';

  @override
  String get gameUiYouHaveAlreadyPlayedMysteryDealToday => 'Anda sudah memainkan Tawaran Misteri hari ini.';

  @override
  String get gameUiTodayYouWon => 'Hari ini Anda memenangkan';

  @override
  String get gameUiTodaySReward => 'Hadiah hari ini';

  @override
  String gameUiPOINTS09ad970(String value1) {
    return '+$value1 POIN';
  }

  @override
  String gameUiPOINTSLOST(String value1) {
    return '$value1 POIN HILANG';
  }

  @override
  String get gameUiComeBackTomorrowForAnotherMysteryBox => 'Kembali lagi besok untuk kotak misteri lainnya!';

  @override
  String get gameUiChooseYourMysteryBox => 'Pilih Kotak Misteri Anda';

  @override
  String get gameUiEachBoxContainsAHiddenRewardBetween10And => 'Setiap kotak berisi hadiah tersembunyi antara 10 dan 1000 poin.';

  @override
  String get gameUiPickOnlyOneBox => 'Pilih hanya satu kotak!';

  @override
  String gameUiAllLevelsComplete(String value1) {
    return 'Semua $value1 level selesai!';
  }

  @override
  String gameUiLevelComplete(String value1) {
    return 'Level $value1 selesai!';
  }

  @override
  String gameUiCompletedInMovesYouEarnedPoints(String value1, String value2) {
    return 'Selesai dalam $value1 langkah.\nAnda mendapatkan $value2 poin!';
  }

  @override
  String gameUiCompletedInMovesThisLevelWasAlreadyCleared(String value1) {
    return 'Selesai dalam $value1 langkah.\nLevel ini sudah diselesaikan sebelumnya.';
  }

  @override
  String get gameUiNextLevel => 'Level berikutnya';

  @override
  String get gameUiDone => 'Selesai';

  @override
  String get gameUiMemoryMatch6b3eaaf => 'Pasangan Memori 🧠';

  @override
  String get gameUiAll100LevelsComplete => 'Semua 100 level selesai!';

  @override
  String get gameUiYouCompletedEveryMemoryMatchLevelWellPlayed => 'Anda telah menyelesaikan setiap level Pasangan Memori. Bermain bagus!';

  @override
  String get gameUiChooseLevel => 'Pilih level';

  @override
  String gameUiMoves(String value1) {
    return 'Langkah: $value1';
  }

  @override
  String gameUiLevelOf(String value1, String value2) {
    return 'Level $value1 dari $value2';
  }

  @override
  String gameUiPairs(String value1) {
    return '$value1 pasang';
  }

  @override
  String gameUiMemorizeLevel(String value1) {
    return 'Hafalkan Level $value1';
  }

  @override
  String gameUiFindMatchingPairs(String value1) {
    return 'Temukan $value1 pasangan yang cocok';
  }

  @override
  String get gameUiDevOpsQuizLogo => 'Logo DevOps Quiz';

  @override
  String get gameUiChapter1RestoreTheBuildPipeline => 'Bab 1 · Pulihkan build pipeline';

  @override
  String get gameUiChapter2ScaleTheCloudPlatform => 'Bab 2 · Skalakan platform cloud';

  @override
  String get gameUiChapter3ProtectProduction => 'Bab 3 · Lindungi production';

  @override
  String gameUiUseAllRemainingLettersToSubmit(String value1) {
    return 'Gunakan semua $value1 huruf yang tersisa untuk mengirim.';
  }

  @override
  String get gameUiAllLevelsComplete22617e1 => 'Semua Level Selesai!';

  @override
  String gameUiLevelComplete643224e(String value1) {
    return 'Level $value1 Selesai!';
  }

  @override
  String get gameUiTryAgain => 'Coba Lagi';

  @override
  String gameUiTheWordWasYouEarnedPoints(String value1, String value2) {
    return 'Katanya adalah $value1. Anda mendapatkan $value2 poin.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHint(String value1, String value2, String value3) {
    return 'Katanya adalah $value1. Anda mendapatkan $value2 poin setelah $value3 petunjuk.';
  }

  @override
  String gameUiTheWordWasYouEarnedPointsAfterHints(String value1, String value2, String value3) {
    return 'Katanya adalah $value1. Anda mendapatkan $value2 poin setelah $value3 petunjuk.';
  }

  @override
  String gameUiTheWordWasLevelIsStillWaitingForYou(String value1, String value2) {
    return 'Katanya adalah $value1. Level $value2 masih menunggu Anda.';
  }

  @override
  String get gameUiFinish => 'Selesai';

  @override
  String get gameUiNextLevel254fd73 => 'Level Berikutnya';

  @override
  String get gameUiRetryLevel => 'Ulangi Level';

  @override
  String get gameUiHowToPlay => 'Cara Bermain';

  @override
  String get gameUiEachLevelHasOneDevOpsWordWordsShorterThan => 'Setiap level memiliki satu kata DevOps. Kata yang lebih pendek dari lima huruf dimulai tanpa huruf gratis; kata yang lebih panjang dimulai dengan satu huruf. Gunakan rak huruf untuk menyusun jawaban lalu tekan Enter. Petunjuk akan membuka huruf lainnya dan mengurangi 20 poin dari saldo Anda. Setiap level yang diselesaikan memberi 100 poin.';

  @override
  String get gameUiGotIt => 'Mengerti';

  @override
  String gameUiAllLevelsCompleteb3ea90e(String value1) {
    return 'Semua $value1 Level Selesai!';
  }

  @override
  String get gameUiEasy => 'Mudah';

  @override
  String get gameUiMedium => 'Sedang';

  @override
  String get gameUiHard => 'Sulit';

  @override
  String get gameUiHowToPlay13a6b22 => 'Cara bermain';

  @override
  String gameUiLevel(String value1, String value2) {
    return 'Level $value1/$value2';
  }

  @override
  String gameUiRewardPtsHintsUsed(String value1, String value2) {
    return 'Hadiah $value1 poin · petunjuk digunakan $value2';
  }

  @override
  String get gameUiHint20Pts => 'Petunjuk · −20 poin';

  @override
  String get gameUiEnter => 'Enter';

  @override
  String get gameUiDelete => 'Hapus';

  @override
  String get gameUiDragThroughAWord => 'Seret melalui sebuah kata';

  @override
  String get gameUiDragThroughEachWord => 'Seret melalui setiap kata';

  @override
  String get gameUiReleaseToSelect => 'Lepaskan untuk memilih';

  @override
  String gameUiFound(String value1) {
    return 'Ditemukan $value1';
  }

  @override
  String get gameUiNoWordThere => 'Tidak ada kata di sana';

  @override
  String gameUiAlreadyFound(String value1) {
    return '$value1 sudah ditemukan';
  }

  @override
  String gameUiLookFor(String value1) {
    return 'Cari $value1';
  }

  @override
  String get gameUiAllLevelsComplete9597abc => 'Semua level selesai!';

  @override
  String gameUiYouFoundEveryWordAndEarnedPoints(String value1) {
    return 'Anda menemukan semua kata dan mendapatkan $value1 poin.';
  }

  @override
  String get gameUiYouFoundEveryWordThisLevelWasAlreadyCleared => 'Anda menemukan semua kata. Level ini sudah diselesaikan sebelumnya.';

  @override
  String get gameUiAll500LevelsComplete => 'Semua 500 level selesai!';

  @override
  String get gameUiReviewLevels => 'Tinjau level';

  @override
  String gameUiLeft(String value1) {
    return '$value1 tersisa';
  }

  @override
  String gameUiPts(String value1) {
    return '+$value1 poin';
  }

  @override
  String get gameUiCouldNotSaveProgressPleaseTryAgain => 'Tidak dapat menyimpan kemajuan. Silakan coba lagi.';

  @override
  String gameUiYouEarnedPoints(String value1) {
    return 'Anda mendapatkan $value1 poin!';
  }

  @override
  String get gameUiYouAlreadyCompletedThisPictureNoAdditionalPointsOn => 'Anda sudah menyelesaikan gambar ini. Tidak ada poin tambahan saat memainkannya ulang.';

  @override
  String get gameUiYouCompletedEveryPicture => 'Anda telah menyelesaikan setiap gambar!';

  @override
  String get gameUiLevels => 'Level';

  @override
  String get gameUiPictureB => 'Gambar B';

  @override
  String get gameUiPictureA => 'Gambar A';

  @override
  String get gameUiPictureCouldNotLoadRetry => 'Gambar tidak dapat dimuat. Coba lagi';

  @override
  String get gameUiResetZoom => 'Atur ulang zoom';

  @override
  String get gameUiZoomBothPictures => 'Perbesar kedua gambar';

  @override
  String gameUiHintPointsPerHint(String value1) {
    return 'Petunjuk · $value1 poin per petunjuk';
  }

  @override
  String get gameUiCouldNotLoadProgressRetry => 'Tidak dapat memuat kemajuan. Coba lagi';

  @override
  String gameUiLevel01cef48(String value1, String value2) {
    return 'Level $value1 / $value2';
  }

  @override
  String get gameUiAllDifferencesFound => 'Semua perbedaan ditemukan!';

  @override
  String gameUiFindFiveDifferencesTapEachOneInEitherPicture(int count) {
    return 'Temukan $count perbedaan. Ketuk masing-masing di salah satu gambar.';
  }

  @override
  String gameUiMissesHintsPtsLevelsComplete(String value1, String value2, String value3, String value4) {
    return 'Meleset: $value1  ·  Petunjuk: $value2 (−$value3 poin)  ·  $value4 level selesai';
  }

  @override
  String gameUiNextLevel50934e0(String value1) {
    return 'Level berikutnya: $value1';
  }

  @override
  String gameUiPuzzleComplete(String value1) {
    return 'Teka-teki $value1 selesai!';
  }

  @override
  String gameUiPictureCompleteInMovesYouEarnedPoints(String value1, String value2) {
    return 'Gambar selesai dalam $value1 langkah. Anda mendapatkan $value2 poin.';
  }

  @override
  String gameUiPictureCompleteInMoves(String value1) {
    return 'Gambar selesai dalam $value1 langkah.';
  }

  @override
  String get gameUiNextPuzzle => 'Teka-teki berikutnya';

  @override
  String get gameUiAllPuzzlesComplete => 'Semua teka-teki selesai';

  @override
  String gameUiPuzzlePieceOfCorrectlyPlaced(String value1, String value2) {
    return 'Potongan teka-teki $value1 dari $value2, ditempatkan dengan benar';
  }

  @override
  String gameUiPuzzlePieceOf(String value1, String value2) {
    return 'Potongan teka-teki $value1 dari $value2';
  }

  @override
  String get gameUiChoosePuzzle => 'Pilih teka-teki';

  @override
  String get gameUiShufflePieces => 'Acak potongan';

  @override
  String get gameUiUnableToLoadThePuzzlePicture => 'Tidak dapat memuat gambar teka-teki.';

  @override
  String get gameUiPreviousPuzzle => 'Teka-teki sebelumnya';

  @override
  String gameUiPuzzle(String value1) {
    return 'Teka-teki $value1';
  }

  @override
  String gameUiMoves9d0612c(String value1, String value2, String value3, String value4, String value5) {
    return '$value1 / $value2  ·  $value3 × $value4  ·  $value5 langkah';
  }

  @override
  String get gameUiDragPiecesToSwapThemOrTapTwoPieces => 'Seret kepingan untuk menukarnya, atau ketuk dua kepingan.';

  @override
  String gameUiPuzzlesSolvedPointsEach(String value1, String value2, String value3) {
    return '$value1 / $value2 teka-teki terselesaikan  ·  masing-masing $value3 poin';
  }

  @override
  String get gameUiGameOver => 'Permainan Selesai';

  @override
  String gameUiTheNumberWasStreakYouEarnedPointsComeBack(String value1, String value2, String value3) {
    return 'Angkanya adalah $value1.\nRuntun: $value2\nAnda mendapatkan $value3 poin!\n\nKembali besok untuk kesempatan lainnya!';
  }

  @override
  String get gameUiHigherOrLower => 'Lebih Tinggi atau Lebih Rendah 📈';

  @override
  String get gameUiAlreadyPlayedToday => 'Sudah Bermain Hari Ini!';

  @override
  String gameUiYouPlayedOnComeBackTomorrowToBuildA(String value1, String value2, String value3) {
    return 'Anda bermain pada $value1/$value2/$value3.\n\nKembali besok untuk membangun runtun baru!';
  }

  @override
  String get gameUiYouHaveAlreadyPlayedTodayComeBackTomorrowFor => 'Anda sudah bermain hari ini.\n\nKembali besok untuk kesempatan lainnya!';

  @override
  String gameUiStreak(String value1) {
    return '🔥 Runtun: $value1';
  }

  @override
  String gameUiPoints(String value1) {
    return '⭐ Poin: $value1';
  }

  @override
  String get gameUiWillTheNextNumberBeHigherOrLower => 'Apakah angka berikutnya lebih tinggi atau lebih rendah?';

  @override
  String get gameUiLower => 'Lebih Rendah';

  @override
  String get gameUiHigher => 'Lebih Tinggi';

  @override
  String get gameUiTrueOrFalseBlitz437a7d8 => 'Kilat Benar atau Salah ⚡';

  @override
  String get gameUiTimeSUp => 'Waktu Habis!';

  @override
  String gameUiCorrectAnswersBestStreakYouEarnedPointsComeBack(String value1, String value2, String value3, String value4) {
    return 'Jawaban benar: $value1\nRuntun terbaik: $value2\n${value3}Anda mendapatkan $value4 poin!\n\nKembali besok untuk ronde lainnya!';
  }

  @override
  String get gameUiStreakBonus20 => 'Bonus runtun: +20\n';

  @override
  String get gameUiIsTheShownAnswerTrueOrFalse => 'Apakah jawaban yang ditampilkan benar atau salah?';

  @override
  String gameUiQuestionsAcrossCategories(String value1, String value2) {
    return '$value1 pertanyaan dalam $value2 kategori';
  }

  @override
  String gameUiYouHaveSecondsEachCorrectAnswerEarnsPointsA(String value1, String value2, String value3) {
    return 'Anda punya $value1 detik. Setiap jawaban benar mendapat $value2 poin. Jawaban salah mengurangi $value3 detik. Capai runtun 5 untuk bonus +20.';
  }

  @override
  String get gameUiRoundTimer => 'Pengatur waktu ronde';

  @override
  String gameUiSeconds(String value1) {
    return '$value1 detik';
  }

  @override
  String get gameUiStart => 'Mulai';

  @override
  String get gameUiTrue => 'Benar';

  @override
  String get gameUiFalse => 'Salah';

  @override
  String get gameUiCommandMatch26b0e70 => 'Cocokkan Perintah 🔗';

  @override
  String get gameUiAllMatched => 'Semua Cocok!';

  @override
  String gameUiMistakesYouEarnedPointsComeBackTomorrowForNew(String value1, String value2) {
    return 'Kesalahan: $value1\nAnda mendapatkan $value2 poin!\n\nKembali besok untuk perintah baru!';
  }

  @override
  String gameUiRound(String value1, String value2) {
    return 'Ronde $value1 / $value2';
  }

  @override
  String get gameUiTapACommandThenTapItsMeaning => 'Ketuk sebuah perintah, lalu ketuk artinya.';

  @override
  String get gameUiNowTapTheMatchingMeaning => 'Sekarang ketuk arti yang cocok.';

  @override
  String get gameUiPortMaster9c730cf => 'Master Port 🔌';

  @override
  String get gameUiPortMastera796b69 => 'Master Port!';

  @override
  String get gameUiOutOfLives => 'Nyawa Habis';

  @override
  String gameUiCorrectAnswersYouEarnedPointsComeBackTomorrowFor(String value1, String value2) {
    return 'Jawaban benar: $value1\nAnda mendapatkan $value2 poin!\n\nKembali besok untuk ronde lainnya!';
  }

  @override
  String get gameUiYouEarned10Points => 'Anda mendapatkan 10 poin!';

  @override
  String get gameUiYouWin => 'Anda menang!';

  @override
  String gameUiWins(String value1) {
    return '$value1 menang!';
  }

  @override
  String get gameUiXWins => 'X menang!';

  @override
  String gameUiXWins8443126(String value1) {
    return '$value1 (X) menang!';
  }

  @override
  String get gameUiComputerWins => 'Komputer menang';

  @override
  String get gameUiOWins => 'O menang!';

  @override
  String get gameUiPlayer2OWins => 'Pemain 2 (O) menang!';

  @override
  String get gameUiItSADraw => 'Seri';

  @override
  String get gameUiYourTurn => 'Giliran Anda';

  @override
  String gameUiSTurn(String value1) {
    return 'Giliran $value1';
  }

  @override
  String get gameUiComputerIsThinking => 'Komputer sedang berpikir';

  @override
  String gameUiPlayerToMove(String value1) {
    return 'Pemain $value1 melangkah';
  }

  @override
  String gameUiToMove(String value1) {
    return '$value1 melangkah';
  }

  @override
  String get gameUiPlayer2ToMove => 'Pemain 2 melangkah';

  @override
  String get gameUiNewRound => 'Ronde baru';

  @override
  String get gameUiVsComputer => 'Lawan komputer';

  @override
  String get gameUi2Players => '2 pemain';

  @override
  String get gameUiYou => 'Anda';

  @override
  String get gameUiDraws => 'Seri';

  @override
  String get gameUiPlayer2 => 'Pemain 2';

  @override
  String gameUiCell(String value1, String value2) {
    return 'Sel $value1$value2';
  }

  @override
  String get gameUiPlayAgain => 'Main lagi';

  @override
  String get gameUiConnectFourWin20Points => 'Kemenangan Connect Four: 20 poin!';

  @override
  String get gameUiBotWins => 'Bot menang!';

  @override
  String get gameUiRed => 'Merah';

  @override
  String get gameUiYellow => 'Kuning';

  @override
  String get gameUiBoardFullDraw => 'Papan penuh — seri';

  @override
  String get gameUiBotIsThinking => 'Bot sedang berpikir';

  @override
  String get gameUiBotTurn => 'Giliran bot';

  @override
  String get gameUiNewGame => 'Permainan baru';

  @override
  String get gameUiVsBot => 'Lawan Bot';

  @override
  String get gameUi2Player => '2 Pemain';

  @override
  String get gameUiPlayAgainstTheBotTapAColumnToDrop => 'Bermain melawan bot · ketuk kolom untuk menjatuhkan cakram';

  @override
  String get gameUiTwoPlayersTapAColumnToDropADisc => 'Dua pemain · ketuk kolom untuk menjatuhkan cakram';

  @override
  String gameUiColumn(String value1) {
    return 'Kolom $value1';
  }

  @override
  String get gameUiYouRed => 'Anda · Merah';

  @override
  String get gameUiRedPlayer1 => 'Merah · Pemain 1';

  @override
  String get gameUiBotYellow => 'Bot · Kuning';

  @override
  String get gameUiYellowPlayer2 => 'Kuning · Pemain 2';

  @override
  String get gameUiLudoMatchStats => 'Statistik pertandingan Ludo';

  @override
  String get gameUiNoCompletedMatchesYet => 'Belum ada pertandingan yang selesai.';

  @override
  String gameUiPlayedWonLost(String value1, String value2, String value3) {
    return 'Main $value1  ·  Menang $value2  ·  Kalah $value3';
  }

  @override
  String get gameUiClose => 'Tutup';

  @override
  String get gameUiLudoChampionYouEarned50Points => 'Juara Ludo! Anda mendapatkan 50 poin.';

  @override
  String get gameUiNewLudoGame => 'Permainan Ludo baru';

  @override
  String get gameUiBotOpponents => 'Lawan bot';

  @override
  String get gameUiStartingANewMatchReplacesYourSavedGame => 'Memulai pertandingan baru akan menggantikan permainan tersimpan Anda.';

  @override
  String get gameUiCancel => 'Batal';

  @override
  String get gameUiStartGame => 'Mulai permainan';

  @override
  String get gameUiPlayerColours => 'Warna pemain';

  @override
  String get gameUiApply => 'Terapkan';

  @override
  String get gameUiMatchStats => 'Statistik pertandingan';

  @override
  String gameUiWinsByCheckmate(String value1) {
    return '$value1 menang dengan sekakmat';
  }

  @override
  String get gameUiBlack => 'Hitam';

  @override
  String get gameUiWhite => 'Putih';

  @override
  String get gameUiComputerWinsByCheckmate => 'Komputer menang dengan sekakmat';

  @override
  String get gameUiYouWinByCheckmate => 'Anda menang dengan sekakmat';

  @override
  String get gameUiDrawByStalemate => 'Seri karena stalemate';

  @override
  String get gameUiDraw => 'Seri';

  @override
  String gameUiCheck(String value1) {
    return '$value1 · Skak';
  }

  @override
  String get gameUiCheckmateYouEarned50Points => 'Skakmat! Anda mendapatkan 50 poin.';

  @override
  String get gameUiStartANewGame => 'Mulai permainan baru?';

  @override
  String get gameUiChangingThePlayerModeReplacesTheSavedMatch => 'Mengubah mode pemain akan menggantikan pertandingan yang tersimpan.';

  @override
  String get gameUiComputer => 'Komputer';

  @override
  String gameUiWhitePlayer2Black(String value1) {
    return '$value1 · Putih / Pemain 2 · Hitam';
  }

  @override
  String get gameUiYouAreWhiteComputerIsBlack => 'Anda Putih · Komputer Hitam';

  @override
  String gameUiWhiteComputerBlack(String value1) {
    return '$value1 (Putih) · Komputer (Hitam)';
  }

  @override
  String get gameUiYouAreBlackComputerIsWhite => 'Anda Hitam · Komputer Putih';

  @override
  String gameUiBlackComputerWhite(String value1) {
    return '$value1 (Hitam) · Komputer (Putih)';
  }

  @override
  String gameUiRollsFirst(String value1) {
    return '$value1 melempar lebih dulu';
  }

  @override
  String gameUiRollsAgain(String value1) {
    return '$value1 melempar lagi';
  }

  @override
  String gameUiToRoll(String value1) {
    return '$value1 harus melempar';
  }

  @override
  String get gameUiSnakeAndLaddersWin100Points => 'Kemenangan Ular Tangga: 100 poin!';

  @override
  String get gameUiChangingPlayersReplacesTheSavedGame => 'Mengubah pemain akan menggantikan permainan yang tersimpan.';

  @override
  String get gameUiStartANewLevel => 'Mulai level baru?';

  @override
  String get gameUiChangingLevelsReplacesTheSavedGame => 'Mengubah level akan menggantikan permainan yang tersimpan.';

  @override
  String get gameUiChangeLevel => 'Ubah level';

  @override
  String get gameUiPlayers => 'Pemain';

  @override
  String get gameUiPlayAgainstBot => 'Bermain melawan bot';

  @override
  String get gameUi3Players => '3 pemain';

  @override
  String get gameUi4Players => '4 pemain';

  @override
  String get gameUiLevel1709305 => 'Level';

  @override
  String gameUiLevel39140b8(String value1) {
    return 'Level $value1';
  }

  @override
  String gameUiPlayersLevel(String value1, String value2, String value3) {
    return '$value1 pemain · Level $value2 / $value3';
  }

  @override
  String gameUiRoll(String value1) {
    return '$value1 · Lempar';
  }

  @override
  String gameUiOn(String value1, String value2) {
    return '$value1 di $value2';
  }

  @override
  String gameUiUnableToLoadQuestion(String value1) {
    return 'Tidak dapat memuat pertanyaan: $value1';
  }

  @override
  String get gameUiCorrectAnswer => 'Jawaban Benar!';

  @override
  String get gameUiWrongAnswer => 'Jawaban Salah';

  @override
  String get gameUiYouClaimedYourReward => 'Anda telah mengklaim hadiah Anda!';

  @override
  String get gameUiAddedToYourTotalPoints => 'Ditambahkan ke total poin Anda.';

  @override
  String get gameUiTheCorrectAnswerWas => 'Jawaban yang benar adalah:';

  @override
  String gameUiPointRewardLost(String value1) {
    return 'Hadiah $value1 poin hilang.';
  }

  @override
  String get gameUiYourExistingPointsWereNotDeducted => 'Poin Anda yang ada tidak dikurangi.';

  @override
  String get gameUiComeBackTomorrowAndTryAgain => 'Kembali besok dan coba lagi.';

  @override
  String get gameUiUnableToLoadQuestion6407759 => 'Tidak dapat memuat pertanyaan.';

  @override
  String get gameUiYourReward677fa6e => 'Hadiah Anda';

  @override
  String gameUiPOINTS09f868a(String value1) {
    return '⭐ $value1 POIN';
  }

  @override
  String get gameUiAnswerCorrectlyToClaimIt => 'Jawab dengan benar untuk mengklaimnya!';

  @override
  String get gameUiComeBackTomorrowForAnotherRound => 'Kembali besok untuk ronde berikutnya.';

  @override
  String get gameUiGreen => 'Hijau';

  @override
  String get gameUiBlue => 'Biru';

  @override
  String gameUiIsThinking(String value1) {
    return '$value1 sedang berpikir';
  }

  @override
  String gameUiChooseAPiece(String value1) {
    return '$value1: pilih bidak';
  }

  @override
  String gameUiRollTheDice(String value1) {
    return '$value1: lempar dadu';
  }

  @override
  String gameUiDice(String value1) {
    return 'Dadu $value1';
  }

  @override
  String get gameUiRollDice => 'Lempar dadu';

  @override
  String gameUiPiece(String value1, String value2) {
    return '$value1 bidak $value2';
  }

  @override
  String gameUiPlayerName(String value1) {
    return 'Pemain $value1';
  }

  @override
  String gameUiBotName(String value1) {
    return 'Bot $value1';
  }

  @override
  String get gameUiBot => 'Bot';

  @override
  String get gameUiHintInsufficientPoints => 'Anda membutuhkan 20 poin untuk menggunakan petunjuk.';

  @override
  String get gameUiHintPurchaseFailed => 'Tidak dapat membeli petunjuk. Silakan coba lagi.';

  @override
  String get gameUiChessKing => 'raja';

  @override
  String get gameUiChessQueen => 'ratu';

  @override
  String get gameUiChessRook => 'benteng';

  @override
  String get gameUiChessBishop => 'gajah';

  @override
  String get gameUiChessKnight => 'kuda';

  @override
  String get gameUiChessPawn => 'pion';

  @override
  String get gameUiChessEmpty => 'kosong';

  @override
  String get gameSceneLampAndFlowers => 'Lampu dan bunga';

  @override
  String get gameSceneGardenFriends => 'Sahabat taman';

  @override
  String get gameSceneUnderwaterExplorers => 'Penjelajah bawah laut';

  @override
  String get gameSceneOceanOrca => 'Orca samudra';

  @override
  String get gameSceneFoxInTheMeadow => 'Rubah di padang rumput';

  @override
  String get gameSceneYellowSubmarine => 'Kapal selam kuning';

  @override
  String get gameSceneTurkeyInTheClearing => 'Kalkun di lahan terbuka';

  @override
  String get gameSceneSafariWateringHole => 'Kubangan air safari';

  @override
  String get gameSceneJungleCompanions => 'Sahabat rimba';

  @override
  String get gameSceneGoldenPuppyGarden => 'Taman anak anjing emas';

  @override
  String get gameSceneSeaTurtleReef => 'Terumbu penyu laut';

  @override
  String get gameSceneCoralReefFriends => 'Sahabat terumbu karang';

  @override
  String get gameSceneSharedClownfish => 'Ikan badut bersama';

  @override
  String get gameSceneLittleDinosaur => 'Dinosaurus kecil';

  @override
  String get gameSceneSafariCompanions => 'Sahabat safari';

  @override
  String get gameSceneSwirlingFlowers => 'Bunga berputar';

  @override
  String get gameSceneGardenKitten => 'Anak kucing taman';

  @override
  String get gameSceneBlueOcean => 'Samudra biru';

  @override
  String get gameSceneCastlePrincess => 'Putri kastil';

  @override
  String get gameSceneRedCar => 'Mobil merah';

  @override
  String get gameSceneGardenPuppy => 'Anak anjing taman';

  @override
  String get gameSceneSpaceExplorer => 'Penjelajah antariksa';

  @override
  String get gameSceneEnchantedReadingForest => 'Hutan membaca yang ajaib';

  @override
  String get gameSceneDevopsInfinityCycle => 'Siklus tak hingga DevOps';

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
  String get gameSceneNetworking => 'Jaringan';

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
  String get gameSceneWinterFestivalFair => 'Pasar festival musim dingin';

  @override
  String get gameSceneArmoredHeroCloseUp => 'Close-up pahlawan berbaju zirah';

  @override
  String get gameSceneArmoredHeroInCrimson => 'Pahlawan berbaju zirah dalam warna merah tua';

  @override
  String get gameSceneDarkPlumeriaBlossoms => 'Bunga kamboja gelap';

  @override
  String get gameSceneMangroveBoardwalk => 'Jembatan kayu hutan bakau';

  @override
  String get gameSceneTropicalPalmReflections => 'Pantulan pohon palem tropis';

  @override
  String get gameSceneMaskedFigureInShadow => 'Sosok bertopeng dalam bayangan';

  @override
  String get gameSceneElectricCompanionAtSunset => 'Teman listrik saat matahari terbenam';

  @override
  String get gameSceneTrainerAndFireDragon => 'Pelatih dan naga api';

  @override
  String get gameSceneJewelStuddedWrestlingMask => 'Topeng gulat bertatahkan permata';

  @override
  String get gameSceneWrestlerInRedBrushstrokes => 'Pegulat dalam sapuan kuas merah';

  @override
  String get gameSceneWrestlingChampionSalute => 'Hormat sang juara gulat';

  @override
  String get gameSceneMorningAtTheBakery => 'Pagi di toko roti';

  @override
  String get gameSceneGreenhousePottingBench => 'Meja penanaman di rumah kaca';

  @override
  String get gameSceneHarborFishingBoat => 'Perahu nelayan di pelabuhan';

  @override
  String get gameSceneAtticObservatory => 'Observatorium loteng';

  @override
  String get gameSceneToyMakerSWorkshop => 'Bengkel pembuat mainan';

  @override
  String get gameSceneWoodlandCampsite => 'Perkemahan di hutan';

  @override
  String get gameSceneAfternoonMusicRoom => 'Ruang musik di sore hari';

  @override
  String get gameSceneSeasideIceCreamStand => 'Kios es krim tepi laut';

  @override
  String get gameSceneLibraryReadingNook => 'Sudut baca perpustakaan';

  @override
  String get gameSceneSewingStudio => 'Studio menjahit';

  @override
  String get gameSceneFruitMarket => 'Pasar buah';

  @override
  String get gameSceneKoiCourtyard => 'Halaman koi';

  @override
  String get gameSceneArtistSAtelier => 'Studio sang seniman';

  @override
  String get gameSceneMountainRailway => 'Kereta api pegunungan';

  @override
  String get gameSceneCountryKitchen => 'Dapur pedesaan';

  @override
  String get gameScenePotteryWorkshop => 'Bengkel tembikar';

  @override
  String get gameSceneBeachPicnic => 'Piknik di pantai';

  @override
  String get gameSceneFlowerShop => 'Toko bunga';

  @override
  String get gameSceneClockmakerSWorkshop => 'Bengkel pembuat jam';

  @override
  String get gameSceneRainyCafeTerrace => 'Teras kafe saat hujan';

  @override
  String get gameSceneCastleHerbGarden => 'Kebun herbal kastil';

  @override
  String get gameSceneClassroomArtCorner => 'Sudut seni di kelas';

  @override
  String get gameSceneAquariumShop => 'Toko akuarium';

  @override
  String get gameSceneAutumnLeafCollection => 'Koleksi daun musim gugur';

  @override
  String get gameSceneLoneTreeBeneathTheMoon => 'Pohon sendirian di bawah bulan';

  @override
  String get gameSceneAutumnBlossomOnABranch => 'Bunga musim gugur di ranting';

  @override
  String get gameSceneFoxAmongGreenLeaves => 'Rubah di antara dedaunan hijau';

  @override
  String get gameSceneCanoeOnALilyCoveredLake => 'Kano di danau yang dipenuhi teratai';

  @override
  String get gameSceneDewDropsOnALeaf => 'Tetesan embun di atas daun';

  @override
  String get gameSceneStagInATurquoiseLake => 'Rusa jantan di danau biru kehijauan';

  @override
  String get gameSceneBicycleBeneathAnOrangeMoon => 'Sepeda di bawah bulan jingga';

  @override
  String get gameSceneWhiteTigerAboveTheValley => 'Harimau putih di atas lembah';

  @override
  String get gameSceneTwoTreesInBlueWater => 'Dua pohon di air biru';

  @override
  String get gameSceneFishingBesideAFaithfulDog => 'Memancing di samping anjing yang setia';

  @override
  String get gameSceneLiliesBesideAMountainLake => 'Bunga lili di samping danau pegunungan';

  @override
  String get gameSceneDeerAtThePinkRiverside => 'Rusa di tepi sungai berwarna merah muda';

  @override
  String get gameSceneTropicalHutAtSunset => 'Pondok tropis saat matahari terbenam';

  @override
  String get gameSceneFoxOverlookingAnAlpineValley => 'Rubah memandang lembah alpen';

  @override
  String get gameSceneSunsetThroughAnEnchantedGrove => 'Matahari terbenam melalui hutan kecil yang terpesona';

  @override
  String get learningControlTitle => 'Belajar DevOps';

  @override
  String get learningControlAllCategories => 'Semua kategori';

  @override
  String get learningControlSearchCards => 'Cari kartu';

  @override
  String get learningControlClearSearch => 'Hapus pencarian';

  @override
  String get learningControlCategory => 'Kategori';

  @override
  String get learningControlShowAll => 'Tampilkan semua kartu';

  @override
  String learningControlShowSaved(int count) {
    return 'Tampilkan kartu tersimpan ($count)';
  }

  @override
  String get learningControlShuffleOff => 'Matikan acak';

  @override
  String get learningControlShuffleOn => 'Acak kartu';

  @override
  String get learningControlAutoOff => 'Hentikan pergantian otomatis';

  @override
  String get learningControlAutoOn => 'Pergantian otomatis setiap 10 detik';

  @override
  String get learningControlNoSaved => 'Belum ada kartu tersimpan';

  @override
  String get learningControlNoMatches => 'Tidak ada kartu yang cocok';

  @override
  String get learningControlResetFilters => 'Atur ulang filter';

  @override
  String get learningControlPrevious => 'Sebelumnya';

  @override
  String get learningControlNext => 'Berikutnya';

  @override
  String get learningControlProgress => 'Kemajuan';

  @override
  String get learningControlRemoveSaved => 'Hapus dari tersimpan';

  @override
  String get learningControlSaveCard => 'Simpan kartu';

  @override
  String get learningControlExample => 'Contoh';

  @override
  String get learningControlCopyExample => 'Salin contoh';

  @override
  String get learningControlExampleCopied => 'Contoh disalin';

  @override
  String sharedDialogLevelCompleted(String value1) {
    return 'Level $value1 selesai';
  }

  @override
  String sharedDialogPlayLevel(String value1) {
    return 'Mainkan level $value1';
  }

  @override
  String sharedDialogCompleteLevelToUnlock(String value1) {
    return 'Selesaikan level $value1 untuk membuka';
  }

  @override
  String get sharedDialogDailyLoginBonus => 'Bonus Login Harian';

  @override
  String get sharedDialogThanksForComingBack => 'Terima kasih sudah kembali!';

  @override
  String get sharedDialogDailyRewardAdded => 'Hadiah harian Anda telah ditambahkan ke total poin Anda.';

  @override
  String get sharedDialogAwesome => 'Keren!';

  @override
  String get accountWelcomeGuest => 'Tamu';

  @override
  String get accountWelcomeGuestUser => 'Pengguna Tamu';

  @override
  String get accountWelcomeUser => 'Pengguna';

  @override
  String get accountWelcomePlayingAsGuest => 'Bermain sebagai Tamu';

  @override
  String get accountWelcomeConnectGoogleAccount => 'Hubungkan Akun Google';

  @override
  String get accountWelcomeGoogleConnected => 'Akun Google berhasil dihubungkan! 🎉';

  @override
  String get accountWelcomeSignInCancelled => 'Proses masuk dibatalkan.';

  @override
  String accountWelcomeConnectFailed(String value1) {
    return 'Gagal menghubungkan: $value1';
  }

  @override
  String get accountWelcomeSignOut => 'Keluar';

  @override
  String get accountWelcomeSignOutTitle => 'Keluar dari Akun?';

  @override
  String get accountWelcomeSignOutMessage => 'Apakah Anda yakin ingin keluar? Anda harus masuk lagi untuk mengakses progres yang tersimpan.';

  @override
  String accountWelcomeSignOutFailed(String value1) {
    return 'Gagal keluar: $value1';
  }

  @override
  String get accountWelcomeResetAppTitle => '⚠️ Atur Ulang Data Aplikasi?';

  @override
  String get accountWelcomeResetAppMessage => 'Tindakan ini akan menghapus SEMUA poin, beruntun, riwayat permainan, dan pengaturan Anda secara permanen. Anda akan keluar dan dikembalikan ke layar awal. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get accountWelcomeResetEverything => 'Atur Ulang Semua';

  @override
  String accountWelcomeResetFailed(String value1) {
    return 'Gagal mengatur ulang: $value1';
  }

  @override
  String get accountWelcomeCancel => 'Batal';

  @override
  String get accountWelcomeResetAppData => 'Atur Ulang Data Aplikasi';

  @override
  String get accountWelcomeResetAppDataSubtitle => 'Hapus semua poin, beruntun, dan pengaturan';

  @override
  String get accountWelcomeFooter => 'Aplikasi DevOps Quiz';

  @override
  String get accountWelcomeTranslationNotAvailable => 'Terjemahan belum tersedia';

  @override
  String get accountWelcomeContinueWithGoogle => 'Lanjutkan dengan Google';

  @override
  String get accountWelcomeSigningIn => 'Sedang masuk...';

  @override
  String get accountWelcomeOr => 'ATAU';

  @override
  String get accountWelcomeContinueAsGuest => 'Lanjutkan sebagai Tamu';

  @override
  String get accountWelcomeSignInLaterFromProfile => 'Anda dapat masuk nanti dari profil Anda.';

  @override
  String get accountWelcomeStartAsGuestAndSignInLater => 'Anda dapat memulai sebagai tamu dan masuk nanti.';

  @override
  String get accountWelcomeGreetingGuest => 'Selamat datang';

  @override
  String accountWelcomeUserToast(String value1) {
    return 'Selamat datang, $value1!';
  }

  @override
  String get accountWelcomeGoogleNoUserReturned => 'Login dengan Google selesai, tetapi tidak ada akun pengguna yang dikembalikan.';

  @override
  String get accountWelcomeErrorEmailExists => 'Email ini sudah memiliki akun yang menggunakan metode masuk lain.';

  @override
  String get accountWelcomeErrorCredentialInUse => 'Akun Google ini sudah ditautkan ke akun lain.';

  @override
  String get accountWelcomeErrorInvalidCredential => 'Kredensial autentikasi Google tidak valid atau telah kedaluwarsa.';

  @override
  String get accountWelcomeErrorUserDisabled => 'Akun ini telah dinonaktifkan.';

  @override
  String get accountWelcomeErrorOperationNotAllowed => 'Login dengan Google saat ini tidak diaktifkan.';

  @override
  String get accountWelcomeErrorNetwork => 'Kesalahan jaringan. Periksa koneksi internet Anda lalu coba lagi.';

  @override
  String get accountWelcomeErrorTooManyRequests => 'Terlalu banyak percobaan masuk. Harap tunggu dan coba lagi.';

  @override
  String get accountWelcomeErrorNoAdditionalInfo => 'Tidak ada informasi kesalahan tambahan.';

  @override
  String accountWelcomeErrorGoogleSignInFailed(String value1, String value2) {
    return 'Gagal masuk dengan Google.\n\nKode: $value1\n$value2';
  }

  @override
  String accountWelcomeErrorGoogleSignInGeneric(String value1) {
    return 'Kesalahan masuk dengan Google:\n$value1';
  }

  @override
  String get accountWelcomeErrorContinueAsGuest => 'Tidak dapat melanjutkan sebagai tamu. Silakan coba lagi.';

  @override
  String get accountWelcomeGoogleSignInSoon => 'Login dengan Google akan segera tersedia.';

  @override
  String get accountWelcomeLoginTagline => 'Belajar • Berlatih • Bersaing • Raih';

  @override
  String get accountWelcomeCountryRegion => 'Negara / wilayah';

  @override
  String accountWelcomeCountryRegionSelected(String value1) {
    return 'Negara / wilayah: $value1';
  }

  @override
  String get accountWelcomeSearchCountry => 'Cari negara';

  @override
  String get accountWelcomeCountryNotSelected => 'Belum dipilih';

  @override
  String get accountWelcomeWhyDevOpsQuiz => 'Mengapa DevOps Quiz?';

  @override
  String get accountWelcomeFeatureQuestions => '3000+ soal latihan';

  @override
  String get accountWelcomeFeatureLanguages => 'Dukungan multibahasa';

  @override
  String get accountWelcomeFeatureStreaks => 'Beruntun & Papan Peringkat';

  @override
  String get accountWelcomeFeatureGames => 'Permainan & Tantangan';

  @override
  String get accountWelcomeFeatureCloud => 'Cloud & DevOps';

  @override
  String get accountWelcomeFeatureRewards => 'Bonus & Hadiah';

  @override
  String get accountWelcomePracticeOnTheGo => 'Berlatih di mana saja';

  @override
  String get accountWelcomeInstallAndroidPromo => 'Instal aplikasi Android dan belajar secara offline di mana saja.';

  @override
  String get accountWelcomeGetItOnGooglePlay => 'Temukan di Google Play';

  @override
  String achLocStreakTitle(String days) {
    return 'Rentetan $days Hari';
  }

  @override
  String achLocStreakDescription(String days) {
    return 'Pertahankan rentetan $days hari.';
  }

  @override
  String get achLocYearStreakTitle => 'Rentetan 1 Tahun';

  @override
  String get achLocFirstQuizTitle => 'Kuis Pertama';

  @override
  String get achLocFirstQuizDescription => 'Selesaikan kuis pertamamu.';

  @override
  String get achLocQuiz10Title => 'Penjelajah Kuis';

  @override
  String get achLocQuiz10Description => 'Selesaikan 10 kuis.';

  @override
  String get achLocPoints1000Title => '1000 Poin';

  @override
  String get achLocPoints1000Description => 'Dapatkan total 1000 poin di Kuis.';

  @override
  String get achLocPerfectScoreTitle => 'Skor Sempurna';

  @override
  String get achLocPerfectScoreDescription => 'Raih skor 100% di kuis mana pun.';

  @override
  String get achLocQuiz25Title => 'Penggemar Kuis';

  @override
  String get achLocQuiz25Description => 'Selesaikan 25 kuis.';

  @override
  String get achLocQuiz50Title => 'Master Kuis';

  @override
  String get achLocQuiz50Description => 'Selesaikan 50 kuis.';

  @override
  String get achLocQuiz100Title => 'Klub Seratus';

  @override
  String get achLocQuiz100Description => 'Selesaikan 100 kuis.';

  @override
  String get achLocQuiz250Title => 'Legenda Kuis';

  @override
  String get achLocQuiz250Description => 'Selesaikan 250 kuis.';

  @override
  String get achLocPoints5000Title => '5.000 Poin';

  @override
  String get achLocPoints5000Description => 'Dapatkan total 5.000 poin.';

  @override
  String get achLocPoints10000Title => '10.000 Poin';

  @override
  String get achLocPoints10000Description => 'Dapatkan total 10.000 poin.';

  @override
  String get achLocPoints50000Title => '50.000 Poin';

  @override
  String get achLocPoints50000Description => 'Dapatkan total 50.000 poin.';

  @override
  String get achLocPoints100000Title => '100.000 Poin';

  @override
  String get achLocPoints100000Description => 'Dapatkan total 100.000 poin.';

  @override
  String get achLocDaily1Title => 'Pemula Harian';

  @override
  String get achLocDaily1Description => 'Selesaikan Kuis Harian pertamamu.';

  @override
  String get achLocDaily7Title => 'Kebiasaan Harian';

  @override
  String get achLocDaily7Description => 'Selesaikan 7 Kuis Harian.';

  @override
  String get achLocDaily30Title => 'Juara Harian';

  @override
  String get achLocDaily30Description => 'Selesaikan 30 Kuis Harian.';

  @override
  String get achLocSets5Title => 'Pemula Set';

  @override
  String get achLocSets5Description => 'Selesaikan 5 set kuis.';

  @override
  String get achLocSets25Title => 'Kolektor Set';

  @override
  String get achLocSets25Description => 'Selesaikan 25 set kuis.';

  @override
  String get achLocSets50Title => 'Master Set';

  @override
  String get achLocSets50Description => 'Selesaikan 50 set kuis.';

  @override
  String get achLocSets100Title => 'Legenda Set';

  @override
  String get achLocSets100Description => 'Selesaikan 100 set kuis.';

  @override
  String get achLocCert1Title => 'Sertifikat Pertama';

  @override
  String get achLocCert1Description => 'Dapatkan sertifikat kategori pertamamu.';

  @override
  String get achLocCert5Title => 'Pro Bersertifikat';

  @override
  String get achLocCert5Description => 'Dapatkan 5 sertifikat kategori.';

  @override
  String get achLocCert21Title => 'Bersertifikat Penuh';

  @override
  String get achLocCert21Description => 'Dapatkan sertifikat di semua 21 kategori.';

  @override
  String get achLocThemeFreeValentinesWeek => 'Gratis 7-14 Feb setiap tahun';

  @override
  String get achLocThemeFreeDqSpecialWeek => 'Gratis 8-15 Mar setiap tahun';

  @override
  String get achLocThemeLight => 'Terang';

  @override
  String get achLocThemeDark => 'Gelap';

  @override
  String get achLocThemeSakura => 'Sakura';

  @override
  String get achLocThemeSunset => 'Senja';

  @override
  String get achLocThemeCoffee => 'Kopi';

  @override
  String get achLocThemeTea => 'Teh';

  @override
  String get achLocThemeOcean => 'Samudra';

  @override
  String get achLocThemeSolarFlare => 'Semburan Surya';

  @override
  String get achLocThemeForest => 'Hutan';

  @override
  String get achLocThemeAurora => 'Aurora';

  @override
  String get achLocThemeMatrix => 'Matrix';

  @override
  String get achLocThemeCyberPurple => 'Ungu Siber';

  @override
  String get achLocThemeInferno => 'Inferno';

  @override
  String get achLocThemeMidnight => 'Tengah Malam';

  @override
  String get achLocThemeDarkGrey => 'Abu-abu Gelap';

  @override
  String get achLocThemeBarbee => 'Barbee';

  @override
  String get achLocThemeValentineDay => 'Hari Valentine';

  @override
  String get achLocThemeDqSpecial => 'DQ Spesial';

  @override
  String get achLocThemeArmy => 'Tentara';

  @override
  String get achLocThemeSpiderMan => 'Spider-Man';

  @override
  String get achLocThemeKrrish => 'Krrish';

  @override
  String get achLocThemeIronMan => 'Iron Man';

  @override
  String get achLocThemeCaptainAmerica => 'Captain America';

  @override
  String get achLocThemeThor => 'Thor';

  @override
  String get achLocThemeHulk => 'Hulk';

  @override
  String get achLocThemeBlackWidow => 'Black Widow';

  @override
  String get achLocThemeHawkeye => 'Hawkeye';

  @override
  String get achLocThemeBlackPanther => 'Black Panther';

  @override
  String get achLocThemeScarletWitch => 'Scarlet Witch';

  @override
  String get achLocThemeVision => 'Vision';

  @override
  String get achLocThemeAntMan => 'Ant-Man';

  @override
  String get achLocThemeCaptainMarvel => 'Captain Marvel';

  @override
  String get achLocThemeDoctorStrange => 'Doctor Strange';

  @override
  String get achLocThemeAvengers => 'Avengers';

  @override
  String get achLocThemeBatman => 'Batman';

  @override
  String get achLocThemeSuperman => 'Superman';

  @override
  String get achLocThemeWonderWoman => 'Wonder Woman';

  @override
  String get achLocThemeFlash => 'Flash';

  @override
  String get achLocThemeAquaman => 'Aquaman';

  @override
  String get achLocThemeGreenLantern => 'Green Lantern';

  @override
  String get achLocThemeCyborg => 'Cyborg';

  @override
  String get achLocThemeSupergirl => 'Supergirl';

  @override
  String get achLocThemeDc => 'Pahlawan DC';

  @override
  String get achLocThemeRainbow => 'Pelangi';

  @override
  String get achLocThemeDiamond => 'Berlian';

  @override
  String get achLocThemeLegendary => 'Legendaris';

  @override
  String get gameHintCmd001LsLa => 'Tampilkan semua berkas beserta detailnya';

  @override
  String get gameHintCmd002Grep => 'Cari teks menggunakan pola';

  @override
  String get gameHintCmd003Chmod => 'Ubah izin berkas';

  @override
  String get gameHintCmd004DfH => 'Tampilkan sisa ruang disk';

  @override
  String get gameHintCmd005TailF => 'Ikuti berkas log yang terus bertambah';

  @override
  String get gameHintCmd006PsAux => 'Tampilkan proses yang sedang berjalan';

  @override
  String get gameHintCmd007GitClone => 'Salin repositori jarak jauh';

  @override
  String get gameHintCmd008GitStash => 'Simpan sementara perubahan yang belum di-commit';

  @override
  String get gameHintCmd009GitRebase => 'Terapkan ulang commit di atas basis baru';

  @override
  String get gameHintCmd010GitBlame => 'Tampilkan siapa yang mengubah setiap baris';

  @override
  String get gameHintCmd011DockerPs => 'Tampilkan container yang sedang berjalan';

  @override
  String get gameHintCmd012DockerBuild => 'Buat image dari Dockerfile';

  @override
  String get gameHintCmd013DockerLogs => 'Tampilkan keluaran container';

  @override
  String get gameHintCmd014DockerExec => 'Jalankan perintah di dalam container';

  @override
  String get gameHintCmd015KubectlGetPods => 'Tampilkan pod dalam sebuah namespace';

  @override
  String get gameHintCmd016KubectlApply => 'Buat sumber daya dari sebuah berkas';

  @override
  String get gameHintCmd017KubectlDescribe => 'Tampilkan info sumber daya secara rinci';

  @override
  String get gameHintCmd018KubectlScale => 'Ubah jumlah replika';

  @override
  String get gameHintCmd019TerraformInit => 'Unduh provider dan siapkan lingkungan';

  @override
  String get gameHintCmd020TerraformPlan => 'Pratinjau perubahan infrastruktur';

  @override
  String get gameHintCmd021TerraformApply => 'Buat atau perbarui infrastruktur';

  @override
  String get gameHintCmd022TerraformDestroy => 'Hapus infrastruktur yang dikelola';

  @override
  String get gameHintCmd023AnsiblePlaybook => 'Jalankan playbook otomatisasi';

  @override
  String get gameHintCmd024Ping => 'Uji keterjangkauan dengan ICMP';

  @override
  String get gameHintCmd025Traceroute => 'Tampilkan jalur menuju sebuah host';

  @override
  String get gameHintCmd026Curl => 'Transfer data dari sebuah URL';

  @override
  String get gameHintCmd027Ssh => 'Masuk ke mesin jarak jauh dengan aman';

  @override
  String get gameHintCmd028CrontabE => 'Ubah tugas terjadwal';

  @override
  String get gameHintCmd029SystemctlStatus => 'Periksa status sebuah layanan';

  @override
  String get gameHintCmd030HelmInstall => 'Terapkan chart ke Kubernetes';

  @override
  String get gameHintWord001Git => 'Melacak perubahan pada kode sumber.';

  @override
  String get gameHintWord002Aws => 'Platform cloud milik Amazon.';

  @override
  String get gameHintWord003Api => 'Kontrak yang memungkinkan sistem perangkat lunak saling berkomunikasi.';

  @override
  String get gameHintWord004Dns => 'Menerjemahkan nama domain menjadi alamat IP.';

  @override
  String get gameHintWord005Cli => 'Antarmuka berbasis teks untuk menjalankan perintah.';

  @override
  String get gameHintWord006Cpu => 'Prosesor yang mengeksekusi instruksi.';

  @override
  String get gameHintWord007Ram => 'Memori sementara yang dipakai program yang sedang berjalan.';

  @override
  String get gameHintWord008Ssh => 'Protokol aman untuk akses shell jarak jauh.';

  @override
  String get gameHintWord009Yaml => 'Format serialisasi data yang mudah dibaca manusia.';

  @override
  String get gameHintWord010Linux => 'Kernel sistem operasi sumber terbuka beserta keluarganya.';

  @override
  String get gameHintWord011Bash => 'Shell perintah Unix yang populer.';

  @override
  String get gameHintWord012Cloud => 'Komputasi sesuai permintaan yang disediakan melalui jaringan.';

  @override
  String get gameHintWord013Docker => 'Platform untuk membangun dan menjalankan container.';

  @override
  String get gameHintWord014Azure => 'Platform cloud milik Microsoft.';

  @override
  String get gameHintWord015Python => 'Bahasa skrip dan pemrograman yang banyak digunakan.';

  @override
  String get gameHintWord016Github => 'Layanan kolaborasi Git terhosting yang populer.';

  @override
  String get gameHintWord017Bgp => 'Protokol perutean yang bertukar rute antar sistem otonom.';

  @override
  String get gameHintWord018Jenkins => 'Server otomatisasi yang sering dipakai untuk CI.';

  @override
  String get gameHintWord019Port => 'Titik akhir bernomor yang dipakai layanan jaringan.';

  @override
  String get gameHintWord020Proxy => 'Server yang meneruskan permintaan atas nama klien.';

  @override
  String get gameHintWord021Cache => 'Penyimpanan cepat untuk data yang sering dipakai ulang.';

  @override
  String get gameHintWord022Cron => 'Penjadwal Unix untuk perintah berulang.';

  @override
  String get gameHintWord023Bicep => 'Bahasa deklaratif Azure untuk infrastruktur sebagai kode.';

  @override
  String get gameHintWord024Apigee => 'Platform Google Cloud untuk manajemen API terpusat.';

  @override
  String get gameHintWord025Root => 'Akun administrator berhak istimewa pada sistem mirip Unix.';

  @override
  String get gameHintWord026Nginx => 'Server web dan reverse proxy.';

  @override
  String get gameHintWord027Redis => 'Penyimpanan data dalam memori yang sering dipakai sebagai cache.';

  @override
  String get gameHintWord028Mysql => 'Sistem basis data relasional yang populer.';

  @override
  String get gameHintWord029Ruby => 'Bahasa pemrograman yang dipakai perangkat seperti Chef.';

  @override
  String get gameHintWord030Helm => 'Manajer paket yang umum dipakai dengan Kubernetes.';

  @override
  String get gameHintWord031Pod => 'Unit terkecil yang dapat di-deploy di Kubernetes.';

  @override
  String get gameHintWord032Image => 'Templat hanya-baca untuk membuat container.';

  @override
  String get gameHintWord033Build => 'Membuat artefak dari kode sumber dan dependensi.';

  @override
  String get gameHintWord034Deploy => 'Merilis aplikasi ke sebuah lingkungan.';

  @override
  String get gameHintWord035Terraform => 'Alat HashiCorp untuk infrastruktur sebagai kode.';

  @override
  String get gameHintWord036Ansible => 'Alat otomatisasi dan konfigurasi tanpa agen.';

  @override
  String get gameHintWord037Kubectl => 'Klien baris perintah untuk Kubernetes.';

  @override
  String get gameHintWord038Gcp => 'Singkatan dari Google Cloud Platform.';

  @override
  String get gameHintWord039Gitops => 'Model operasional yang menjadikan Git sebagai sumber kebenaran.';

  @override
  String get gameHintWord040Pipeline => 'Rangkaian otomatis tahap build, pengujian, dan rilis.';

  @override
  String get gameHintWord041Container => 'Proses terisolasi yang dikemas bersama dependensinya.';

  @override
  String get gameHintWord042Cluster => 'Sekelompok mesin yang dikelola sebagai satu sistem bersama.';

  @override
  String get gameHintWord043Ingress => 'Objek API Kubernetes untuk perutean HTTP eksternal.';

  @override
  String get gameHintWord044Firewall => 'Menyaring lalu lintas jaringan sesuai aturan keamanan.';

  @override
  String get gameHintWord045Subnet => 'Pembagian logis dari sebuah jaringan IP.';

  @override
  String get gameHintWord046Gateway => 'Simpul jaringan yang menghubungkan jaringan yang berbeda.';

  @override
  String get gameHintWord047Router => 'Meneruskan paket antar jaringan.';

  @override
  String get gameHintWord048Switch => 'Menghubungkan perangkat dalam jaringan lokal.';

  @override
  String get gameHintWord049Repository => 'Penyimpanan terkelola untuk kode sumber atau paket.';

  @override
  String get gameHintWord050Systemd => 'Sistem init dan pengelola layanan Linux.';

  @override
  String get gameHintWord051Journalctl => 'Perintah untuk membaca log jurnal systemd.';

  @override
  String get gameHintWord052Permission => 'Aturan yang mengatur siapa yang boleh membaca, menulis, atau mengeksekusi.';

  @override
  String get gameHintWord053Alloydb => 'Basis data terkelola Google Cloud yang kompatibel dengan PostgreSQL.';

  @override
  String get gameHintWord054Configmap => 'Objek Kubernetes untuk konfigurasi non-rahasia.';

  @override
  String get gameHintWord055Secret => 'Objek Kubernetes untuk data sensitif.';

  @override
  String get gameHintWord056Persistent => 'Menggambarkan penyimpanan yang bertahan setelah beban kerja dimulai ulang.';

  @override
  String get gameHintWord057Volume => 'Penyimpanan sistem berkas yang dipasang ke dalam container.';

  @override
  String get gameHintWord058Storage => 'Tempat penyimpanan permanen untuk berkas, objek, atau blok.';

  @override
  String get gameHintWord059Replica => 'Salinan instans beban kerja yang dijaga demi skala atau keandalan.';

  @override
  String get gameHintWord060Deployment => 'Kontroler Kubernetes untuk pod aplikasi stateless.';

  @override
  String get gameHintWord061Dockerfile => 'Instruksi yang dipakai untuk membangun image Docker.';

  @override
  String get gameHintWord062Database => 'Penyimpanan terorganisasi yang di-query oleh aplikasi.';

  @override
  String get gameHintWord063Automation => 'Memakai perangkat lunak untuk tugas berulang tanpa langkah manual.';

  @override
  String get gameHintWord064Anthos => 'Platform Google Cloud untuk mengelola cluster lintas lingkungan.';

  @override
  String get gameHintWord065Bigquery => 'Layanan Google Cloud untuk analitik data skala besar.';

  @override
  String get gameHintWord066Bigtable => 'Basis data NoSQL wide-column Google Cloud untuk analitik.';

  @override
  String get gameHintWord067Loadbalancer => 'Mendistribusikan lalu lintas masuk ke beberapa backend.';

  @override
  String get gameHintWord068Prometheus => 'Sistem pemantauan yang menyimpan metrik deret waktu.';

  @override
  String get gameHintWord069Grafana => 'Platform untuk query dan visualisasi data observabilitas.';

  @override
  String get gameHintWord070Cloudant => 'Basis data dokumen NoSQL JSON terkelola IBM Cloud.';

  @override
  String get gameHintWord071Cloudtrail => 'Layanan AWS yang merekam aktivitas API untuk audit.';

  @override
  String get gameHintWord072Statefulset => 'Kontroler Kubernetes untuk beban kerja yang butuh identitas stabil.';

  @override
  String get gameHintWord073Daemonset => 'Kontroler Kubernetes yang menjalankan pod pada node terpilih.';

  @override
  String get gameHintWord074Serviceaccount => 'Identitas Kubernetes yang dipakai beban kerja atau proses.';

  @override
  String get gameHintWord075Networkpolicy => 'Sumber daya Kubernetes yang mengatur lalu lintas jaringan pod.';

  @override
  String get gameHintWord076Certificate => 'Dokumen digital untuk menetapkan identitas dalam TLS.';

  @override
  String get gameHintWord077Encryption => 'Mengubah data agar hanya pihak berwenang yang dapat membacanya.';

  @override
  String get gameHintWord078Observability => 'Kemampuan menyimpulkan perilaku sistem dari keluarannya.';

  @override
  String get gameHintWord079Coredns => 'Server DNS yang umum dipakai di dalam cluster Kubernetes.';

  @override
  String get gameHintWord080Crossplane => 'Proyek untuk mengelola sumber daya cloud melalui API Kubernetes.';

  @override
  String get gameHintWord081Failover => 'Beralih ke komponen cadangan setelah terjadi kegagalan.';

  @override
  String get gameHintWord082Idempotency => 'Sifat di mana mengulang operasi berefek sama seperti melakukannya sekali.';

  @override
  String get gameHintWord083Dataflow => 'Layanan Google Cloud untuk pemrosesan data stream dan batch.';

  @override
  String get gameHintWord084Orchestration => 'Pengelolaan terkoordinasi atas banyak beban kerja otomatis.';

  @override
  String get gameHintWord085Dataplex => 'Layanan Google Cloud untuk menemukan dan mengatur tata kelola data perusahaan.';

  @override
  String get gameHintWord086Serverless => 'Model eksekusi di mana pengelolaan infrastruktur diabstraksikan.';

  @override
  String get gameHintWord087Distributed => 'Sistem yang komponennya berjalan di banyak mesin yang terhubung jaringan.';

  @override
  String get gameHintWord088Dataproc => 'Lingkungan Apache Spark dan Hadoop terkelola Google Cloud.';

  @override
  String get gameHintWord089Dynamodb => 'Basis data NoSQL AWS yang sering dipakai untuk penguncian state Terraform.';

  @override
  String get gameHintWord090Provisioning => 'Menyiapkan infrastruktur atau sumber daya agar siap dipakai.';

  @override
  String get gameHintWord091Elasticsearch => 'Mesin pencari yang umum dipakai untuk logging terpusat.';

  @override
  String get gameHintWord092Etcd => 'Penyimpanan key-value yang menyimpan state cluster Kubernetes.';

  @override
  String get gameHintWord093Authentication => 'Proses memverifikasi siapa pengguna atau layanan.';

  @override
  String get gameHintWord094Authorization => 'Proses menentukan apa yang boleh dilakukan sebuah identitas.';

  @override
  String get gameHintWord095Expressroute => 'Layanan Azure untuk konektivitas privat khusus ke pusat data.';

  @override
  String get gameHintWord096Configuration => 'Pengaturan yang menentukan perilaku perangkat lunak.';

  @override
  String get gameHintWord097Infrastructure => 'Sumber daya komputasi, jaringan, dan penyimpanan yang mendukung aplikasi.';

  @override
  String get gameHintWord098Fastconnect => 'Layanan Oracle Cloud untuk koneksi jaringan privat khusus.';

  @override
  String get gameHintWord099Containerd => 'Runtime container standar industri yang dipakai Kubernetes.';

  @override
  String get gameHintWord100Kubernetes => 'Platform orkestrasi container.';

  @override
  String get gameHintWord101Http => 'Protokol aplikasi untuk meminta sumber daya web.';

  @override
  String get gameHintWord102Https => 'Versi terenkripsi dari protokol permintaan web.';

  @override
  String get gameHintWord103Tcp => 'Protokol transport yang menjamin pengiriman andal dan berurutan.';

  @override
  String get gameHintWord104Udp => 'Protokol transport tanpa koneksi yang dipakai untuk datagram.';

  @override
  String get gameHintWord105Tls => 'Protokol yang mengamankan data yang dipertukarkan melalui jaringan.';

  @override
  String get gameHintWord106Ssl => 'Pendahulu lama dari protokol keamanan transport modern.';

  @override
  String get gameHintWord107Ftp => 'Protokol tradisional untuk mentransfer berkas.';

  @override
  String get gameHintWord108Sftp => 'Protokol transfer berkas melalui koneksi secure shell.';

  @override
  String get gameHintWord109Smtp => 'Protokol untuk mengirim email antar server.';

  @override
  String get gameHintWord110Snmp => 'Protokol untuk mengelola dan memantau perangkat jaringan.';

  @override
  String get gameHintWord111Icmp => 'Protokol pembawa pesan galat jaringan dan ping.';

  @override
  String get gameHintWord112Arp => 'Memetakan alamat IPv4 lokal ke alamat perangkat keras.';

  @override
  String get gameHintWord113Dhcp => 'Meminjamkan konfigurasi IP secara otomatis ke klien jaringan.';

  @override
  String get gameHintWord114Nat => 'Menulis ulang alamat jaringan saat paket melewati gateway.';

  @override
  String get gameHintWord115Vpn => 'Terowongan terenkripsi yang menghubungkan jaringan atau pengguna jarak jauh.';

  @override
  String get gameHintWord116Vpc => 'Jaringan virtual terisolasi di cloud publik.';

  @override
  String get gameHintWord117Vlan => 'Pemisahan logis pada jaringan tersakelar.';

  @override
  String get gameHintWord118Wan => 'Jaringan yang mencakup wilayah geografis luas.';

  @override
  String get gameHintWord119Lan => 'Jaringan yang menghubungkan perangkat dalam area lokal.';

  @override
  String get gameHintWord120Cdn => 'Jaringan edge terdistribusi yang men-cache konten yang dikirim.';

  @override
  String get gameHintWord121Cidr => 'Notasi yang menyatakan prefiks jaringan dengan panjang setelah garis miring.';

  @override
  String get gameHintWord122Host => 'Komputer atau titik akhir yang terhubung ke jaringan.';

  @override
  String get gameHintWord123Hostname => 'Nama yang mudah dibaca manusia untuk mesin dalam jaringan.';

  @override
  String get gameHintWord124Domain => 'Area administratif bernama dalam sistem penamaan internet.';

  @override
  String get gameHintWord125Zone => 'Bagian administratif dari namespace DNS.';

  @override
  String get gameHintWord126Record => 'Satu entri dalam basis data DNS.';

  @override
  String get gameHintWord127Aaaa => 'Tipe record DNS yang menerjemahkan nama ke alamat IPv6.';

  @override
  String get gameHintWord128Ptr => 'Tipe record DNS untuk pencarian alamat terbalik.';

  @override
  String get gameHintWord129Txt => 'Tipe record DNS yang menyimpan nilai teks.';

  @override
  String get gameHintWord130Cname => 'Record DNS yang menjadikan satu nama sebagai alias nama lain.';

  @override
  String get gameHintWord131Route => 'Entri jalur yang mengarahkan paket menuju tujuan.';

  @override
  String get gameHintWord132Routing => 'Memilih jalur lalu lintas antar jaringan.';

  @override
  String get gameHintWord133Packet => 'Unit data yang dikirim melalui jaringan.';

  @override
  String get gameHintWord134Protocol => 'Aturan yang disepakati untuk komunikasi antar sistem.';

  @override
  String get gameHintWord135Ack => 'Flag TCP yang mengonfirmasi penerimaan data.';

  @override
  String get gameHintWord136Bandwidth => 'Kapasitas sebuah tautan komunikasi.';

  @override
  String get gameHintWord137Latency => 'Jeda sebelum permintaan atau paket mendapat respons.';

  @override
  String get gameHintWord138Throughput => 'Jumlah pekerjaan atau data berguna yang diproses per satuan waktu.';

  @override
  String get gameHintWord139Mtu => 'Ukuran paket terbesar yang dapat dikirim tautan tanpa fragmentasi.';

  @override
  String get gameHintWord140Alpn => 'Ekstensi TLS untuk menegosiasikan protokol lapisan aplikasi.';

  @override
  String get gameHintWord141Grep => 'Mencari baris teks yang cocok dengan sebuah pola.';

  @override
  String get gameHintWord142Sed => 'Stream editor yang umum dipakai untuk substitusi teks.';

  @override
  String get gameHintWord143Lscpu => 'Perintah Linux yang menampilkan arsitektur prosesor dan detail core.';

  @override
  String get gameHintWord144Find => 'Mencari di pohon direktori menggunakan predikat berkas.';

  @override
  String get gameHintWord145Lsblk => 'Perintah Linux yang mendaftar perangkat blok beserta relasinya.';

  @override
  String get gameHintWord146Sort => 'Mengurutkan baris teks.';

  @override
  String get gameHintWord147Uniq => 'Menyaring baris duplikat yang berdampingan.';

  @override
  String get gameHintWord148Head => 'Mencetak bagian awal sebuah berkas.';

  @override
  String get gameHintWord149Tail => 'Mencetak bagian akhir berkas dan dapat mengikuti log yang bertambah.';

  @override
  String get gameHintWord150Cat => 'Menggabungkan berkas dan mencetak isinya.';

  @override
  String get gameHintWord151Cut => 'Mengekstrak kolom atau karakter tertentu dari baris.';

  @override
  String get gameHintWord152Tee => 'Menyalin masukan standar ke berkas dan keluaran standar.';

  @override
  String get gameHintWord153Echo => 'Menulis argumennya ke keluaran standar.';

  @override
  String get gameHintWord154Printf => 'Mencetak teks terformat dari shell atau program.';

  @override
  String get gameHintWord155Touch => 'Memperbarui stempel waktu berkas atau membuat berkas kosong.';

  @override
  String get gameHintWord156Mkdir => 'Membuat direktori.';

  @override
  String get gameHintWord157Rmdir => 'Menghapus direktori kosong.';

  @override
  String get gameHintWord158Chmod => 'Mengubah bit izin berkas Unix.';

  @override
  String get gameHintWord159Chown => 'Mengubah kepemilikan berkas.';

  @override
  String get gameHintWord160Chgrp => 'Mengubah kepemilikan grup sebuah berkas.';

  @override
  String get gameHintWord161Pwd => 'Mencetak direktori kerja saat ini.';

  @override
  String get gameHintWord162Apt => 'Alat manajemen paket yang dipakai sistem berbasis Debian.';

  @override
  String get gameHintWord163Top => 'Tampilan interaktif proses dan penggunaan sumber daya sistem.';

  @override
  String get gameHintWord164Agent => 'Komponen perangkat lunak yang menjalankan atau melaporkan pekerjaan pada sebuah host.';

  @override
  String get gameHintWord165Kill => 'Mengirim sinyal ke proses berdasarkan pengenalnya.';

  @override
  String get gameHintWord166Signal => 'Notifikasi yang dikirim sistem operasi ke sebuah proses.';

  @override
  String get gameHintWord167Sigkill => 'Sinyal Unix yang langsung menghentikan proses.';

  @override
  String get gameHintWord168Nice => 'Memulai proses dengan prioritas penjadwalan yang disesuaikan.';

  @override
  String get gameHintWord169Renice => 'Mengubah prioritas penjadwalan proses yang sedang berjalan.';

  @override
  String get gameHintWord170Jobs => 'Mendaftar job yang dikelola shell saat ini.';

  @override
  String get gameHintWord171Nohup => 'Menjalankan perintah sambil mengabaikan sinyal hangup.';

  @override
  String get gameHintWord172Screen => 'Multiplekser terminal yang mendukung sesi yang dapat dilepas.';

  @override
  String get gameHintWord173Uptime => 'Melaporkan berapa lama sistem telah berjalan.';

  @override
  String get gameHintWord174Uname => 'Mencetak informasi sistem dan kernel.';

  @override
  String get gameHintWord175Whoami => 'Mencetak nama pengguna efektif saat ini.';

  @override
  String get gameHintWord176Umask => 'Menetapkan mask izin yang dipakai saat membuat berkas.';

  @override
  String get gameHintWord177Usermod => 'Perintah Linux yang memodifikasi akun pengguna yang ada.';

  @override
  String get gameHintWord178Crontab => 'Mengedit atau mendaftar job shell berulang yang terjadwal.';

  @override
  String get gameHintWord179Findmnt => 'Perintah Linux yang menampilkan informasi sistem berkas yang dipasang.';

  @override
  String get gameHintWord180Mount => 'Memasang sistem berkas ke pohon direktori.';

  @override
  String get gameHintWord181Sigterm => 'Sinyal Unix yang meminta penghentian proses secara halus.';

  @override
  String get gameHintWord182Fstab => 'Tabel sistem yang menjelaskan sistem berkas yang akan dipasang.';

  @override
  String get gameHintWord183Swap => 'Ruang berbasis disk untuk melengkapi memori fisik.';

  @override
  String get gameHintWord184Tmpfs => 'Sistem berkas sementara yang didukung memori virtual.';

  @override
  String get gameHintWord185Proc => 'Sistem berkas virtual Linux yang menampilkan informasi proses dan kernel.';

  @override
  String get gameHintWord186Syslog => 'Protokol logging standar dan format pesannya.';

  @override
  String get gameHintWord187Dmesg => 'Menampilkan pesan dari ring buffer kernel.';

  @override
  String get gameHintWord188Free => 'Melaporkan memori sistem yang terpakai dan tersedia.';

  @override
  String get gameHintWord189Stat => 'Menampilkan metadata berkas secara rinci.';

  @override
  String get gameHintWord190Lsof => 'Mendaftar berkas terbuka dan proses yang memakainya.';

  @override
  String get gameHintWord191Netstat => 'Menampilkan koneksi jaringan dan informasi perutean.';

  @override
  String get gameHintWord192Checksum => 'Nilai terhitung untuk mendeteksi perubahan atau kerusakan data.';

  @override
  String get gameHintWord193Ping => 'Menguji keterjangkauan jaringan menggunakan permintaan echo.';

  @override
  String get gameHintWord194Traceroute => 'Menampilkan hop perantara menuju tujuan jaringan.';

  @override
  String get gameHintWord195Resolver => 'Komponen DNS yang mencari jawaban atas query nama.';

  @override
  String get gameHintWord196Nslookup => 'Mencari nama dan alamat DNS.';

  @override
  String get gameHintWord197Telnet => 'Protokol terminal jarak jauh lawas tanpa enkripsi.';

  @override
  String get gameHintWord198Tftp => 'Protokol transfer berkas sederhana berbasis UDP.';

  @override
  String get gameHintWord199Daemon => 'Proses layanan latar belakang pada sistem mirip Unix.';

  @override
  String get gameHintWord200Kernel => 'Komponen inti yang mengelola sumber daya sistem operasi.';

  @override
  String get gameHintWord201Commit => 'Rekaman snapshot perubahan dalam kontrol versi.';

  @override
  String get gameHintWord202Branch => 'Referensi yang dapat berpindah yang mewakili satu jalur pengembangan.';

  @override
  String get gameHintWord203Merge => 'Menggabungkan riwayat dari jalur pengembangan yang berbeda.';

  @override
  String get gameHintWord204Rebase => 'Memutar ulang commit di atas commit basis yang berbeda.';

  @override
  String get gameHintWord205Clone => 'Membuat salinan lokal dari repositori jarak jauh.';

  @override
  String get gameHintWord206Fetch => 'Mengunduh objek dan referensi jarak jauh tanpa menggabungkan.';

  @override
  String get gameHintWord207Pull => 'Mengambil perubahan dan mengintegrasikannya ke branch saat ini.';

  @override
  String get gameHintWord208Push => 'Mengirim commit lokal ke repositori jarak jauh.';

  @override
  String get gameHintWord209Stash => 'Menyimpan sementara perubahan working tree yang belum di-commit.';

  @override
  String get gameHintWord210Revert => 'Membuat commit yang membatalkan commit lain.';

  @override
  String get gameHintWord211Reset => 'Memindahkan referensi Git dan dapat mereset indeks atau berkas kerja.';

  @override
  String get gameHintWord212Reflog => 'Riwayat lokal pembaruan referensi Git.';

  @override
  String get gameHintWord213Diff => 'Menampilkan perbedaan antar versi atau berkas.';

  @override
  String get gameHintWord214Status => 'Melaporkan berkas yang di-stage, dimodifikasi, dan belum dilacak.';

  @override
  String get gameHintWord215Checkout => 'Perintah Git untuk berpindah revisi atau memulihkan berkas.';

  @override
  String get gameHintWord216Tag => 'Referensi bernama yang umumnya menandai sebuah rilis.';

  @override
  String get gameHintWord217Remote => 'Koneksi bernama ke repositori lain.';

  @override
  String get gameHintWord218Origin => 'Nama default untuk remote repositori yang di-clone.';

  @override
  String get gameHintWord219Upstream => 'Branch pelacak remote yang terkait dengan branch lokal.';

  @override
  String get gameHintWord220Worktree => 'Direktori kerja hasil checkout yang terhubung ke sebuah repositori.';

  @override
  String get gameHintWord221Registry => 'Layanan yang menyimpan dan mendistribusikan image container.';

  @override
  String get gameHintWord222Digest => 'Pengenal berbasis konten untuk image container.';

  @override
  String get gameHintWord223Layer => 'Perubahan sistem berkas yang membentuk bagian dari image container.';

  @override
  String get gameHintWord224Entrypoint => 'Instruksi Dockerfile yang menentukan eksekutabel utama container.';

  @override
  String get gameHintWord225Cmd => 'Instruksi Dockerfile yang menentukan perintah atau argumen default.';

  @override
  String get gameHintWord226Workdir => 'Instruksi Dockerfile yang menetapkan direktori kerja.';

  @override
  String get gameHintWord227Copy => 'Instruksi Dockerfile yang menyalin berkas build-context ke dalam image.';

  @override
  String get gameHintWord228Add => 'Instruksi Dockerfile yang juga dapat mengekstrak arsip lokal.';

  @override
  String get gameHintWord229Run => 'Instruksi Dockerfile yang menjalankan perintah saat build.';

  @override
  String get gameHintWord230Env => 'Instruksi Dockerfile yang mendefinisikan variabel lingkungan.';

  @override
  String get gameHintWord231Arg => 'Instruksi Dockerfile yang mendeklarasikan variabel saat build.';

  @override
  String get gameHintWord232Expose => 'Instruksi Dockerfile yang mendokumentasikan port container.';

  @override
  String get gameHintWord233User => 'Instruksi Dockerfile yang memilih akun untuk perintah berikutnya.';

  @override
  String get gameHintWord234Healthcheck => 'Instruksi yang menjelaskan cara menguji kesehatan container.';

  @override
  String get gameHintWord235Shebang => 'Baris pembuka skrip yang menentukan interpreter yang dijalankan.';

  @override
  String get gameHintWord236Compose => 'Alat Docker untuk mendefinisikan dan menjalankan aplikasi multi-container.';

  @override
  String get gameHintWord237Bridge => 'Driver jaringan Docker umum untuk jaringan container lokal.';

  @override
  String get gameHintWord238Overlay => 'Jaringan yang menjangkau container di beberapa host.';

  @override
  String get gameHintWord239None => 'Driver jaringan Docker yang menonaktifkan jaringan container.';

  @override
  String get gameHintWord240Prune => 'Menghapus sumber daya container yang tidak terpakai.';

  @override
  String get gameHintWord241Replicaset => 'Kontroler Kubernetes yang menjaga jumlah pod yang diinginkan.';

  @override
  String get gameHintWord242Service => 'Abstraksi Kubernetes yang menyediakan akses stabil ke pod.';

  @override
  String get gameHintWord243Endpoints => 'Alamat yang menjadi tulang punggung sebuah service Kubernetes.';

  @override
  String get gameHintWord244Namespace => 'Cakupan logis yang mengelompokkan sumber daya Kubernetes.';

  @override
  String get gameHintWord245Node => 'Mesin pekerja yang menjadi host pod Kubernetes.';

  @override
  String get gameHintWord246Kubelet => 'Agen di setiap node yang mengelola eksekusi pod.';

  @override
  String get gameHintWord247Pvc => 'Permintaan Kubernetes untuk penyimpanan persisten.';

  @override
  String get gameHintWord248Apiserver => 'Komponen control-plane Kubernetes yang mengekspos API cluster.';

  @override
  String get gameHintWord249Role => 'Kumpulan izin bernama dalam kontrol akses berbasis peran.';

  @override
  String get gameHintWord250Resourcequota => 'Objek Kubernetes yang membatasi konsumsi sumber daya dalam sebuah namespace.';

  @override
  String get gameHintWord251Selector => 'Ekspresi yang mencocokkan sumber daya berdasarkan label.';

  @override
  String get gameHintWord252Taint => 'Properti node yang menolak pod tanpa toleration yang cocok.';

  @override
  String get gameHintWord253Toleration => 'Pengaturan pod yang mengizinkan penjadwalan ke node ber-taint.';

  @override
  String get gameHintWord254Cordon => 'Menandai node Kubernetes sebagai tidak dapat dijadwalkan.';

  @override
  String get gameHintWord255Uncordon => 'Membuat node yang di-cordon dapat dijadwalkan kembali.';

  @override
  String get gameHintWord256Drain => 'Mengeluarkan beban kerja dengan aman sebelum pemeliharaan node.';

  @override
  String get gameHintWord257Job => 'Beban kerja Kubernetes yang menjalankan tugas hingga selesai.';

  @override
  String get gameHintWord258Cronjob => 'Beban kerja Kubernetes yang membuat job sesuai jadwal.';

  @override
  String get gameHintWord259Readiness => 'Probe yang menunjukkan apakah container dapat menerima lalu lintas.';

  @override
  String get gameHintWord260Liveness => 'Probe yang menunjukkan apakah container perlu dimulai ulang.';

  @override
  String get gameHintWord261Canary => 'Pendekatan rilis yang memaparkan versi baru ke sebagian kecil lalu lintas.';

  @override
  String get gameHintWord262Rolling => 'Strategi pembaruan yang mengganti instans berjalan secara bertahap.';

  @override
  String get gameHintWord263Rollback => 'Memulihkan versi aplikasi yang sebelumnya berfungsi.';

  @override
  String get gameHintWord264Rollout => 'Deployment progresif untuk versi aplikasi baru.';

  @override
  String get gameHintWord265Recreate => 'Strategi deployment yang menghentikan pod lama sebelum memulai penggantinya.';

  @override
  String get gameHintWord266Blue => 'Salah satu dari dua lingkungan dalam rilis blue-green.';

  @override
  String get gameHintWord267Green => 'Lingkungan satunya dalam rilis blue-green.';

  @override
  String get gameHintWord268Artifact => 'Keluaran berversi yang dihasilkan pipeline build.';

  @override
  String get gameHintWord269Staging => 'Lingkungan pra-produksi untuk validasi rilis.';

  @override
  String get gameHintWord270Production => 'Lingkungan yang melayani pengguna akhir yang sebenarnya.';

  @override
  String get gameHintWord271Release => 'Versi perangkat lunak yang dikirim untuk digunakan.';

  @override
  String get gameHintWord272Version => 'Pengenal yang membedakan revisi perangkat lunak.';

  @override
  String get gameHintWord273Revision => 'Versi yang dapat diidentifikasi dari dokumen atau basis kode.';

  @override
  String get gameHintWord274Webhook => 'Notifikasi HTTP yang dikirim saat sebuah peristiwa terjadi.';

  @override
  String get gameHintWord275Runbook => 'Prosedur terdokumentasi untuk mengoperasikan atau memulihkan sistem.';

  @override
  String get gameHintWord276Workspace => 'Direktori atau cakupan yang berisi sumber daya kerja proyek.';

  @override
  String get gameHintWord277Credentials => 'Materi autentikasi untuk mengakses sebuah sistem.';

  @override
  String get gameHintWord278Trigger => 'Peristiwa atau kondisi yang memulai sebuah pipeline.';

  @override
  String get gameHintWord279Parameter => 'Masukan bernama yang diberikan ke job atau fungsi.';

  @override
  String get gameHintWord280Access => 'Kemampuan menggunakan sumber daya sesuai otorisasi.';

  @override
  String get gameHintWord281Module => 'Kelompok definisi infrastruktur yang dapat dipakai ulang.';

  @override
  String get gameHintWord282Provider => 'Plugin Terraform yang menghubungkan konfigurasi ke API eksternal.';

  @override
  String get gameHintWord283Resource => 'Objek infrastruktur terkelola yang dideklarasikan dalam konfigurasi.';

  @override
  String get gameHintWord284Variable => 'Nilai masukan bernama yang dipakai konfigurasi atau kode.';

  @override
  String get gameHintWord285Output => 'Nilai yang diekspos dan dikembalikan oleh konfigurasi infrastruktur.';

  @override
  String get gameHintWord286Tfstate => 'Akhiran berkas yang terkait dengan snapshot state Terraform.';

  @override
  String get gameHintWord287Tfvars => 'Akhiran berkas untuk nilai variabel masukan Terraform.';

  @override
  String get gameHintWord288Backend => 'Konfigurasi Terraform yang mengatur penyimpanan state.';

  @override
  String get gameHintWord289Plan => 'Pratinjau Terraform atas perubahan infrastruktur yang diusulkan.';

  @override
  String get gameHintWord290Apply => 'Operasi Terraform yang menjalankan perubahan yang diusulkan.';

  @override
  String get gameHintWord291Destroy => 'Operasi Terraform yang menghapus infrastruktur terkelola.';

  @override
  String get gameHintWord292Import => 'Membawa sumber daya yang ada ke dalam pengelolaan infrastruktur.';

  @override
  String get gameHintWord293Refresh => 'Menyinkronkan state tercatat dengan infrastruktur sebenarnya.';

  @override
  String get gameHintWord294Validate => 'Memeriksa sintaks dan konsistensi internal konfigurasi.';

  @override
  String get gameHintWord295Fmt => 'Perintah Terraform yang menerapkan format konfigurasi kanonis.';

  @override
  String get gameHintWord296Init => 'Menginisialisasi provider Terraform dan direktori kerja.';

  @override
  String get gameHintWord297Executor => 'Slot pekerja Jenkins yang dapat menjalankan build.';

  @override
  String get gameHintWord298Dependencies => 'Hubungan yang mengharuskan satu komponen ada sebelum komponen lain.';

  @override
  String get gameHintWord299Drift => 'Perbedaan antara state infrastruktur yang dideklarasikan dan yang sebenarnya.';

  @override
  String get gameHintWord300Locking => 'Mencegah penulis bersamaan mengubah state bersama.';

  @override
  String get gameHintWord301Playbook => 'Dokumen Ansible yang menjelaskan play dan task otomatisasi.';

  @override
  String get gameHintWord302Inventory => 'Kumpulan host dan grup terkelola di Ansible.';

  @override
  String get gameHintWord303Facts => 'Informasi sistem yang dikumpulkan tentang host terkelola.';

  @override
  String get gameHintWord304Task => 'Satu unit kerja dalam otomatisasi.';

  @override
  String get gameHintWord305Handler => 'Task Ansible yang dijalankan ketika diberi notifikasi oleh sebuah perubahan.';

  @override
  String get gameHintWord306Notify => 'Direktif Ansible yang mengantrekan handler setelah task yang berubah.';

  @override
  String get gameHintWord307Become => 'Pengaturan Ansible yang mengaktifkan eskalasi hak istimewa.';

  @override
  String get gameHintWord308Vault => 'Fitur Ansible untuk mengenkripsi data otomatisasi yang sensitif.';

  @override
  String get gameHintWord309Register => 'Direktif Ansible yang menyimpan hasil task ke dalam variabel.';

  @override
  String get gameHintWord310When => 'Kata kunci Ansible yang mengatur eksekusi task bersyarat.';

  @override
  String get gameHintWord311Loop => 'Mengulang task otomatisasi pada sebuah koleksi.';

  @override
  String get gameHintWord312Include => 'Memuat konten otomatisasi yang dapat dipakai ulang secara dinamis.';

  @override
  String get gameHintWord313Tags => 'Label untuk memilih subset task otomatisasi.';

  @override
  String get gameHintWord314Template => 'Berkas yang dirender dengan variabel sebelum deployment.';

  @override
  String get gameHintWord315Jinja => 'Bahasa templat yang dipakai Ansible.';

  @override
  String get gameHintWord316Abstraction => 'Menyembunyikan detail implementasi di balik antarmuka yang lebih sederhana.';

  @override
  String get gameHintWord317Agile => 'Pendekatan pengiriman perangkat lunak iteratif yang menekankan umpan balik.';

  @override
  String get gameHintWord318Puppet => 'Alat manajemen konfigurasi yang memakai manifest deklaratif.';

  @override
  String get gameHintWord319Airflow => 'Platform untuk menjadwalkan dan mengorkestrasi DAG alur kerja.';

  @override
  String get gameHintWord320Argo => 'Keluarga proyek cloud-native termasuk kontroler pengiriman GitOps.';

  @override
  String get gameHintWord321Rds => 'Singkatan layanan basis data relasional terkelola AWS.';

  @override
  String get gameHintWord322Sqs => 'Singkatan antrean pesan terkelola AWS.';

  @override
  String get gameHintWord323Sns => 'Singkatan layanan notifikasi publish-subscribe AWS.';

  @override
  String get gameHintWord324Ses => 'Singkatan layanan pengiriman email AWS.';

  @override
  String get gameHintWord325Iam => 'Singkatan manajemen identitas dan akses cloud.';

  @override
  String get gameHintWord326Kms => 'Singkatan layanan manajemen kunci enkripsi AWS.';

  @override
  String get gameHintWord327Waf => 'Firewall yang menyaring permintaan web lapisan aplikasi.';

  @override
  String get gameHintWord328Eks => 'Singkatan layanan Kubernetes terkelola AWS.';

  @override
  String get gameHintWord329Ecs => 'Singkatan layanan orkestrasi container terkelola AWS.';

  @override
  String get gameHintWord330Ecr => 'Singkatan registry image container AWS.';

  @override
  String get gameHintWord331Aurora => 'Basis data relasional AWS yang kompatibel dengan MySQL dan PostgreSQL.';

  @override
  String get gameHintWord332Redshift => 'Data warehouse analitik AWS.';

  @override
  String get gameHintWord333Neptune => 'Basis data graf terkelola AWS.';

  @override
  String get gameHintWord334Elasticache => 'Layanan caching dalam memori terkelola AWS.';

  @override
  String get gameHintWord335Athena => 'Layanan AWS yang meng-query data penyimpanan objek dengan SQL.';

  @override
  String get gameHintWord336Glue => 'Layanan integrasi data dan ETL serverless AWS.';

  @override
  String get gameHintWord337Emr => 'Platform AWS untuk cluster pemrosesan big data terkelola.';

  @override
  String get gameHintWord338Lambda => 'Layanan AWS yang menjalankan fungsi tanpa mengelola server.';

  @override
  String get gameHintWord339Cloudfront => 'Jaringan pengiriman konten global AWS.';

  @override
  String get gameHintWord340Cloudwatch => 'Layanan AWS yang mengumpulkan metrik, log, dan alarm.';

  @override
  String get gameHintWord341Cloudshell => 'Lingkungan shell berbasis browser AWS.';

  @override
  String get gameHintWord342Codecommit => 'Layanan repositori Git terkelola AWS.';

  @override
  String get gameHintWord343Codebuild => 'Layanan AWS yang mengompilasi kode sumber dan menjalankan pengujian build.';

  @override
  String get gameHintWord344Codedeploy => 'Layanan deployment aplikasi otomatis AWS.';

  @override
  String get gameHintWord345Codepipeline => 'Layanan pipeline continuous delivery AWS.';

  @override
  String get gameHintWord346Guardduty => 'Layanan deteksi ancaman cerdas AWS.';

  @override
  String get gameHintWord347Inspector => 'Layanan AWS yang menilai kerentanan beban kerja.';

  @override
  String get gameHintWord348Macie => 'Layanan AWS yang menemukan data sensitif di penyimpanan objek.';

  @override
  String get gameHintWord349Shield => 'Layanan perlindungan DDoS terkelola AWS.';

  @override
  String get gameHintWord350Snowball => 'Perangkat fisik AWS untuk transfer data berukuran besar.';

  @override
  String get gameHintWord351Snowcone => 'Perangkat kecil yang tangguh dalam keluarga transfer offline AWS.';

  @override
  String get gameHintWord352Datasync => 'Layanan transfer data online otomatis AWS.';

  @override
  String get gameHintWord353Msk => 'Singkatan layanan Apache Kafka terkelola AWS.';

  @override
  String get gameHintWord354Backup => 'Salinan data yang disimpan untuk pemulihan.';

  @override
  String get gameHintWord355Transcribe => 'Layanan AWS yang mengonversi ucapan menjadi teks.';

  @override
  String get gameHintWord356Translate => 'Layanan AWS yang menerjemahkan teks antar bahasa.';

  @override
  String get gameHintWord357Rekognition => 'Layanan AWS yang menganalisis gambar dan video.';

  @override
  String get gameHintWord358Comprehend => 'Layanan analisis bahasa alami AWS.';

  @override
  String get gameHintWord359Textract => 'Layanan AWS yang mengekstrak teks dan tabel dari dokumen.';

  @override
  String get gameHintWord360Sagemaker => 'Platform AWS untuk membangun dan men-deploy model machine learning.';

  @override
  String get gameHintWord361Spanner => 'Basis data relasional terdistribusi global Google Cloud.';

  @override
  String get gameHintWord362Pub => 'Bagian penerbit dari pola pesan publish-subscribe.';

  @override
  String get gameHintWord363Sub => 'Bagian pelanggan dari pola pesan publish-subscribe.';

  @override
  String get gameHintWord364Functions => 'Unit kode berbasis peristiwa yang ditawarkan platform serverless.';

  @override
  String get gameHintWord365App => 'Singkatan dari aplikasi perangkat lunak.';

  @override
  String get gameHintWord366Engine => 'Komponen eksekusi dalam nama seperti Compute Engine.';

  @override
  String get gameHintWord367Compute => 'Kapasitas pemrosesan yang disediakan mesin virtual atau container.';

  @override
  String get gameHintWord368Network => 'Sistem terhubung yang bertukar data.';

  @override
  String get gameHintWord369Security => 'Perlindungan sistem dan informasi dari ancaman.';

  @override
  String get gameHintWord370Identity => 'Representasi pengguna atau layanan yang dipakai untuk keputusan akses.';

  @override
  String get gameHintWord371Monitoring => 'Pengamatan berkelanjutan atas kesehatan dan perilaku sistem.';

  @override
  String get gameHintWord372Logging => 'Pencatatan peristiwa aplikasi dan sistem satu per satu.';

  @override
  String get gameHintWord373Trace => 'Rekaman jalur permintaan melintasi pemanggilan layanan.';

  @override
  String get gameHintWord374Metrics => 'Pengukuran numerik perilaku sistem dari waktu ke waktu.';

  @override
  String get gameHintWord375Alert => 'Notifikasi bahwa kondisi yang dipantau membutuhkan perhatian.';

  @override
  String get gameHintWord376Billing => 'Pelacakan dan penagihan layanan cloud yang digunakan.';

  @override
  String get gameHintWord377Quota => 'Batas jumlah sumber daya yang dapat dikonsumsi.';

  @override
  String get gameHintWord378Region => 'Area deployment cloud geografis yang berisi availability zone.';

  @override
  String get gameHintWord379Tenancy => 'Pengaturan yang menjelaskan bagaimana pelanggan berbagi infrastruktur.';

  @override
  String get gameHintWord380Regional => 'Menggambarkan sumber daya yang dicakup pada satu region cloud.';

  @override
  String get gameHintWord381Cosmos => 'Nama basis data multi-model terdistribusi global Azure.';

  @override
  String get gameHintWord382Synapse => 'Platform analitik Azure yang menggabungkan data warehouse dan pemrosesan data.';

  @override
  String get gameHintWord383Sentinel => 'Platform informasi keamanan dan peristiwa cloud-native milik Microsoft.';

  @override
  String get gameHintWord384Defender => 'Keluarga produk keamanan Microsoft yang melindungi beban kerja cloud.';

  @override
  String get gameHintWord385Entra => 'Keluarga produk identitas Microsoft yang menggantikan merek Azure AD.';

  @override
  String get gameHintWord386Arm => 'Singkatan Azure Resource Manager.';

  @override
  String get gameHintWord387Arc => 'Layanan Azure yang memperluas manajemen ke sumber daya di luar Azure.';

  @override
  String get gameHintWord388Aks => 'Singkatan layanan Kubernetes terkelola Azure.';

  @override
  String get gameHintWord389Armor => 'Akhiran nama layanan perlindungan web Google Cloud.';

  @override
  String get gameHintWord390Blob => 'Tipe data penyimpanan objek Azure.';

  @override
  String get gameHintWord391Files => 'Layanan Azure yang menawarkan berbagi berkas jaringan terkelola.';

  @override
  String get gameHintWord392Disk => 'Perangkat penyimpanan blok yang terpasang pada mesin virtual.';

  @override
  String get gameHintWord393Function => 'Blok kode yang dapat dipanggil dan dapat mengembalikan hasil.';

  @override
  String get gameHintWord394Logic => 'Kategori layanan aplikasi Azure untuk integrasi alur kerja.';

  @override
  String get gameHintWord395Insights => 'Akhiran nama produk telemetri aplikasi Azure.';

  @override
  String get gameHintWord396Traffic => 'Data yang mengalir antar titik akhir jaringan.';

  @override
  String get gameHintWord397Manager => 'Akhiran nama produk Azure Resource untuk control plane-nya.';

  @override
  String get gameHintWord398Bastion => 'Titik masuk terkelola atau diperkuat untuk akses host privat.';

  @override
  String get gameHintWord399Front => 'Kata pertama dalam layanan titik masuk global Azure, Front Door.';

  @override
  String get gameHintWord400Door => 'Kata kedua dalam layanan titik masuk global Azure, Front Door.';

  @override
  String get gameHintWord401Javascript => 'Bahasa pemrograman yang banyak dipakai di browser dan runtime Node.';

  @override
  String get gameHintWord402Perl => 'Bahasa skrip yang dikenal untuk pemrosesan teks dan ekspresi reguler.';

  @override
  String get gameHintWord403Powershell => 'Shell berorientasi objek dan bahasa otomatisasi dari Microsoft.';

  @override
  String get gameHintWord404Java => 'Bahasa JVM yang dipakai untuk mengimplementasikan Jenkins.';

  @override
  String get gameHintWord405Json => 'Format data ringan dengan objek dan array.';

  @override
  String get gameHintWord406Xml => 'Format markup yang memakai tag bernama bersarang.';

  @override
  String get gameHintWord407Html => 'Bahasa markup untuk menyusun struktur halaman web.';

  @override
  String get gameHintWord408Css => 'Bahasa stylesheet yang mengatur tampilan web.';

  @override
  String get gameHintWord409String => 'Rangkaian karakter teks.';

  @override
  String get gameHintWord410Array => 'Koleksi elemen berindeks.';

  @override
  String get gameHintWord411Hash => 'Koleksi asosiatif key-value di Ruby dan Perl.';

  @override
  String get gameHintWord412Object => 'Nilai runtime dengan properti dan perilaku.';

  @override
  String get gameHintWord413Class => 'Definisi untuk membangun objek pada bahasa berbasis kelas.';

  @override
  String get gameHintWord414Method => 'Fungsi yang terkait dengan objek atau kelas.';

  @override
  String get gameHintWord415Interface => 'Kontrak yang menjelaskan operasi yang diekspos sebuah komponen.';

  @override
  String get gameHintWord416Subclass => 'Kelas yang diturunkan dari kelas lain.';

  @override
  String get gameHintWord417Super => 'Kata kunci untuk memanggil perilaku kelas induk.';

  @override
  String get gameHintWord418Protected => 'Tingkat visibilitas yang membatasi akses pada konteks terkait kelas.';

  @override
  String get gameHintWord419Exception => 'Kondisi runtime yang menyela alur kendali normal.';

  @override
  String get gameHintWord420Regex => 'Notasi pola untuk mencocokkan teks.';

  @override
  String get gameHintWord421Lexical => 'Menggambarkan cakupan yang ditentukan oleh struktur kode sumber.';

  @override
  String get gameHintWord422Scalar => 'Kategori variabel bernilai tunggal di Perl.';

  @override
  String get gameHintWord423Tuple => 'Koleksi berurutan yang tidak dapat diubah di Python.';

  @override
  String get gameHintWord424List => 'Koleksi berurutan yang dapat diubah di Python.';

  @override
  String get gameHintWord425Dict => 'Nama tipe pemetaan bawaan Python.';

  @override
  String get gameHintWord426Dictionary => 'Koleksi yang memetakan kunci ke nilai terkait.';

  @override
  String get gameHintWord427Set => 'Koleksi nilai-nilai yang berbeda.';

  @override
  String get gameHintWord428Boolean => 'Tipe data yang mewakili benar atau salah.';

  @override
  String get gameHintWord429Integer => 'Tipe numerik yang mewakili bilangan bulat.';

  @override
  String get gameHintWord430Float => 'Tipe numerik yang mewakili nilai floating-point.';

  @override
  String get gameHintWord431Double => 'Tipe floating-point presisi ganda.';

  @override
  String get gameHintWord432Null => 'Nilai yang menyatakan tidak adanya objek atau hasil.';

  @override
  String get gameHintWord433Undefined => 'Nilai JavaScript untuk nilai yang belum ditetapkan.';

  @override
  String get gameHintWord434Promise => 'Objek JavaScript yang mewakili hasil asinkron yang akan datang.';

  @override
  String get gameHintWord435Async => 'Kata kunci yang menandai fungsi asinkron.';

  @override
  String get gameHintWord436Await => 'Kata kunci yang menunggu hasil asinkron.';

  @override
  String get gameHintWord437Callback => 'Fungsi yang diteruskan untuk dipanggil oleh operasi lain.';

  @override
  String get gameHintWord438Closure => 'Fungsi yang mempertahankan akses ke cakupan leksikal di sekitarnya.';

  @override
  String get gameHintWord439Generator => 'Fungsi yang menghasilkan urutan secara malas lewat nilai yang di-yield.';

  @override
  String get gameHintWord440Iterator => 'Objek yang bergerak maju melewati nilai dalam koleksi.';

  @override
  String get gameHintWord441Print => 'Fungsi umum yang menulis nilai ke keluaran.';

  @override
  String get gameHintWord442Input => 'Fungsi Python yang membaca satu baris dari masukan standar.';

  @override
  String get gameHintWord443Open => 'Fungsi untuk memperoleh handle berkas.';

  @override
  String get gameHintWord444Close => 'Operasi yang melepaskan berkas atau koneksi yang terbuka.';

  @override
  String get gameHintWord445Read => 'Operasi mengambil data dari stream atau berkas.';

  @override
  String get gameHintWord446Write => 'Operasi mengirim data ke stream atau berkas.';

  @override
  String get gameHintWord447Append => 'Menambahkan item ke akhir koleksi.';

  @override
  String get gameHintWord448Split => 'Memecah teks menjadi substring menggunakan pembatas.';

  @override
  String get gameHintWord449Join => 'Menggabungkan rangkaian string menggunakan pemisah.';

  @override
  String get gameHintWord450Strip => 'Menghapus spasi di sekeliling string Python.';

  @override
  String get gameHintWord451Chomp => 'Menghapus pemisah rekaman di akhir pada Perl atau Ruby.';

  @override
  String get gameHintWord452Map => 'Menerapkan transformasi pada setiap item dalam koleksi.';

  @override
  String get gameHintWord453Filter => 'Mempertahankan item koleksi yang memenuhi predikat.';

  @override
  String get gameHintWord454Reduce => 'Menggabungkan koleksi menjadi hasil akumulasi.';

  @override
  String get gameHintWord455Range => 'Tipe Python yang mewakili deret aritmetika bilangan bulat.';

  @override
  String get gameHintWord456Length => 'Properti atau metode yang mengembalikan ukuran koleksi.';

  @override
  String get gameHintWord457Len => 'Fungsi bawaan Python yang mengembalikan ukuran koleksi.';

  @override
  String get gameHintWord458Type => 'Fungsi Python yang mengembalikan tipe objek.';

  @override
  String get gameHintWord459Isinstance => 'Fungsi Python yang memeriksa keanggotaan dalam hierarki tipe.';

  @override
  String get gameHintWord460Yield => 'Kata kunci yang menghasilkan nilai dari generator.';

  @override
  String get gameHintWord461Saas => 'Model cloud yang menyediakan aplikasi perangkat lunak lengkap.';

  @override
  String get gameHintWord462Paas => 'Model cloud yang menyediakan platform pengembangan aplikasi terkelola.';

  @override
  String get gameHintWord463Iaas => 'Model cloud yang menyediakan komputasi, penyimpanan, dan jaringan virtual.';

  @override
  String get gameHintWord464Hybrid => 'Pendekatan cloud yang menggabungkan infrastruktur privat dan publik.';

  @override
  String get gameHintWord465Archive => 'Penyimpanan jangka panjang untuk data yang jarang diakses.';

  @override
  String get gameHintWord466Public => 'Model kepemilikan cloud yang menawarkan layanan ke banyak pelanggan.';

  @override
  String get gameHintWord467Private => 'Model cloud yang didedikasikan untuk satu organisasi.';

  @override
  String get gameHintWord468Scalability => 'Kemampuan menangani beban yang bertambah dengan menambah sumber daya.';

  @override
  String get gameHintWord469Availability => 'Tingkat layanan tetap dapat diakses saat dibutuhkan.';

  @override
  String get gameHintWord470Resilience => 'Kemampuan bertahan dan pulih dari kegagalan.';

  @override
  String get gameHintWord471Redundancy => 'Komponen duplikat yang mengurangi titik kegagalan tunggal.';

  @override
  String get gameHintWord472Disaster => 'Gangguan besar yang ditangani dengan strategi pemulihan.';

  @override
  String get gameHintWord473Recovery => 'Memulihkan layanan atau data setelah kegagalan.';

  @override
  String get gameHintWord474Replicate => 'Menyalin data atau beban kerja ke lokasi lain.';

  @override
  String get gameHintWord475Snapshotting => 'Mengambil salinan data atau state sistem pada titik waktu tertentu.';

  @override
  String get gameHintWord476Restore => 'Operasi memulihkan data dari salinan tersimpan.';

  @override
  String get gameHintWord477Residency => 'Persyaratan yang menentukan lokasi geografis data yang disimpan.';

  @override
  String get gameHintWord478Compliance => 'Memenuhi regulasi dan kontrol organisasi yang diwajibkan.';

  @override
  String get gameHintWord479Governance => 'Kebijakan dan proses yang mengatur penggunaan teknologi.';

  @override
  String get gameHintWord480Audit => 'Peninjauan aktivitas tercatat dan bukti kepatuhan.';

  @override
  String get gameHintWord481Token => 'Kredensial atau simbol yang mewakili otorisasi atau identitas.';

  @override
  String get gameHintWord482Oauth => 'Kerangka otorisasi yang memungkinkan akses terdelegasi.';

  @override
  String get gameHintWord483Saml => 'Standar berbasis XML yang umum dipakai untuk single sign-on perusahaan.';

  @override
  String get gameHintWord484Cmdlet => 'Perintah khusus yang dipakai dalam pipeline PowerShell.';

  @override
  String get gameHintWord485Algorithm => 'Urutan langkah terdefinisi untuk menyelesaikan masalah komputasi.';

  @override
  String get gameHintWord486Key => 'Nilai untuk mengendalikan enkripsi atau mengidentifikasi data tersimpan.';

  @override
  String get gameHintWord487Alias => 'Nama alternatif untuk perintah atau sumber daya shell.';

  @override
  String get gameHintWord488Amend => 'Opsi commit Git yang menggantikan commit terbaru.';

  @override
  String get gameHintWord489Allsigned => 'Kebijakan eksekusi PowerShell yang mewajibkan skrip bertanda tangan.';

  @override
  String get gameHintWord490Remotesigned => 'Kebijakan PowerShell yang mewajibkan tanda tangan pada skrip yang diunduh.';

  @override
  String get gameHintWord491Acl => 'Daftar yang mendefinisikan izin untuk pengguna atau sistem.';

  @override
  String get gameHintWord492Uid => 'Pengenal numerik yang diberikan kepada pengguna Unix.';

  @override
  String get gameHintWord493Setgid => 'Bit izin yang memengaruhi identitas grup saat eksekusi atau pewarisan.';

  @override
  String get gameHintWord494Setfacl => 'Perintah Linux untuk menetapkan daftar kontrol akses berkas.';

  @override
  String get gameHintWord495Isolation => 'Pemisahan yang mencegah beban kerja saling mengganggu.';

  @override
  String get gameHintWord496Sighup => 'Sinyal hangup Unix yang sering dipakai untuk meminta pemuatan ulang konfigurasi.';

  @override
  String get gameHintWord497Sigint => 'Sinyal interupsi Unix yang umumnya dihasilkan dengan Control-C.';

  @override
  String get gameHintWord498Sigstop => 'Sinyal Unix yang menjeda proses tanpa menghentikannya.';

  @override
  String get gameHintWord499Secrets => 'Nilai sensitif seperti kata sandi dan kunci akses.';

  @override
  String get gameHintWord500Secure => 'Menggambarkan koneksi yang terlindungi dari akses tidak sah.';

  @override
  String get fontSettingsTitle => 'Font';

  @override
  String get fontChangeFont => 'Ubah Font';

  @override
  String get fontSystemDefault => 'Bawaan Sistem';

  @override
  String get fontPreview => 'Pratinjau';

  @override
  String get fontPreviewSample => 'Belajar DevOps satu per satu pertanyaan';

  @override
  String get fontSelected => 'Dipilih';

  @override
  String get fontLatinOnlyNote => 'Font khusus berlaku untuk huruf Latin. Aksara lain tetap memakai font perangkat Anda.';

  @override
  String get fontDescSystem => 'Font bawaan perangkat Anda';

  @override
  String get fontDescGeometric => 'Sans-serif geometris';

  @override
  String get fontDescGeometricRounded => 'Sans-serif geometris membulat';

  @override
  String get fontDescFriendly => 'Sans-serif ramah';

  @override
  String get fontDescCondensed => 'Ringkas';

  @override
  String get fontDescRounded => 'Sans-serif membulat';

  @override
  String get fontDescRoundedDisplay => 'Display membulat';

  @override
  String gameScene3dScene(String value1) {
    return 'Adegan 3D $value1';
  }
}
