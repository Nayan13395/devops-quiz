import 'dart:convert';

import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/higher_lower_screen.dart';
import 'package:devops_quiz/screens/lucky_slot_screen.dart';
import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:devops_quiz/screens/memory_match_screen.dart';
import 'package:devops_quiz/screens/mystery_deal_screen.dart';
import 'package:devops_quiz/screens/notification_screen.dart';
import 'package:devops_quiz/screens/scratch_card_screen.dart';
import 'package:devops_quiz/screens/spin_wheel_screen.dart';
import 'package:devops_quiz/screens/word_guess_screen.dart';
import 'package:devops_quiz/services/daily_login_bonus_service.dart';
import 'package:devops_quiz/services/in_app_notification_service.dart';
import 'package:devops_quiz/widgets/category_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

const categoryAssets = {
  'Linux': 'Linux/linux',
  'Git': 'Git/git',
  'Docker': 'Docker/docker',
  'Kubernetes': 'K8s/k8s',
  'Networking': 'Networking/networking',
  'Jenkins': 'Jenkins/jenkins',
  'Terraform': 'Terraform/terraform',
  'Ansible': 'Ansible/ansible',
  'Bash': 'BASH/bash',
  'Python': 'Python/python',
  'Perl': 'Perl/perl',
  'PowerShell': 'Powershell/powershell',
  'JavaScript': 'Javascript/javascript',
  'Ruby': 'Ruby/ruby',
  'AWS': 'AWS/aws',
  'Azure': 'Azure/azure',
  'GCP': 'GCP/gcp',
  'Oracle Cloud': 'Oracle/oracle',
  'IBM Cloud': 'IBM/ibm',
  'Multi Cloud': 'Multicloud/multicloud',
  'Hybrid Cloud': 'Hybridcloud/hybridcloud',
};

Widget learningApp(String language, {double textScale = 1}) {
  return MaterialApp(
    locale: Locale(language),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    builder: (context, child) => MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: TextScaler.linear(textScale)),
      child: child!,
    ),
    home: const LearningScreen(),
  );
}

Widget responsiveGameApp(Widget home, {double textScale = 1.3}) {
  return MaterialApp(
    builder: (context, child) => MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: TextScaler.linear(textScale)),
      child: child!,
    ),
    home: home,
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('category button shows its icon and handles taps', (
    tester,
  ) async {
    var tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CategoryButton(title: 'Docker', onTap: () => tapped = true),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 250));

    expect(find.text('Docker'), findsOneWidget);
    expect(find.byIcon(Icons.inventory_2_rounded), findsOneWidget);

    await tester.tap(find.text('Docker'));
    await tester.pump();

    expect(tapped, isTrue);
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(const SizedBox.shrink());
  });

  test(
    '500 distinct cards cover all 21 categories and retain 107 originals',
    () {
      expect(learningCards, hasLength(500));
      expect(learningCards.map((card) => card.id).toSet(), hasLength(500));
      expect(
        learningCards
            .map((card) => '${card.topic}|${card.command.toLowerCase()}')
            .toSet(),
        hasLength(500),
      );
      expect(learningCards.where((card) => !card.isConcept), hasLength(107));
      expect(
        learningCards.map((card) => card.topic).toSet(),
        categoryAssets.keys.toSet(),
      );
      for (final topic in categoryAssets.keys) {
        expect(
          learningCards.where((card) => card.topic == topic).length,
          inInclusiveRange(23, 24),
        );
      }
      for (final card in learningCards) {
        expect(card.id, isNotEmpty);
        expect(card.command, isNotEmpty);
        expect(card.description, isNotEmpty);
        expect(card.hindiDescription, isNotEmpty);
        expect(card.marathiDescription, isNotEmpty);
        if (!card.isConcept) expect(card.example, isNotEmpty);
        for (final language in ['en', 'hi', 'mr']) {
          final translated = card.localized(language);
          expect(translated.id, card.id);
          expect(translated.topic, card.topic);
          expect(translated.example, card.example);
          expect(translated.command, isNotEmpty);
          expect(translated.description, isNotEmpty);
        }
      }
    },
  );

  test(
    'concept translations match the same source question and answer',
    () async {
      for (final entry in categoryAssets.entries) {
        final banks = <String, List<dynamic>>{};
        for (final language in ['en', 'hi', 'mr']) {
          banks[language] =
              jsonDecode(
                    await rootBundle.loadString(
                      'assets/questions/${entry.value}_$language.json',
                    ),
                  )
                  as List<dynamic>;
        }
        final concepts = learningCards.where(
          (card) => card.topic == entry.key && card.isConcept,
        );
        expect(concepts, isNotEmpty);
        expect(
          concepts.map((card) => card.description.toLowerCase()).toSet(),
          hasLength(concepts.length),
        );
        for (final card in concepts) {
          final original =
              banks['en']![card.sourceQuestion!] as Map<String, dynamic>;
          final originalAnswerIndex = (original['options'] as List).indexOf(
            original['answer'],
          );
          expect(originalAnswerIndex, greaterThanOrEqualTo(0));
          for (final language in ['en', 'hi', 'mr']) {
            final source =
                banks[language]![card.sourceQuestion!] as Map<String, dynamic>;
            final translated = card.localized(language);
            expect(
              translated.command,
              source['question'],
              reason: '${card.id}: $language',
            );
            expect(
              translated.description,
              source['answer'],
              reason: '${card.id}: $language',
            );
            expect(source['set'], original['set']);
            expect(
              (source['options'] as List).indexOf(source['answer']),
              originalAnswerIndex,
            );
          }
        }
      }
    },
  );

  for (final language in ['en', 'hi', 'mr']) {
    testWidgets('learning catalog has 500 cards in $language', (tester) async {
      await tester.pumpWidget(learningApp(language));
      await tester.pumpAndSettle();

      expect(find.text('1 / 500'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    for (final size in [
      const Size(320, 568),
      const Size(844, 390),
      const Size(1280, 900),
    ]) {
      testWidgets('long $language cards fit $size with larger text', (
        tester,
      ) async {
        tester.view.devicePixelRatio = 1;
        tester.view.physicalSize = size;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        await tester.pumpWidget(learningApp(language, textScale: 1.5));
        await tester.pumpAndSettle();
        final longest = learningCards.reduce((first, second) {
          int length(DevOpsCard card) {
            final translated = card.localized(language);
            return translated.command.length +
                translated.description.length +
                translated.example.length;
          }

          return length(first) > length(second) ? first : second;
        });
        await tester.enterText(find.byType(TextField), longest.command);
        await tester.pumpAndSettle();
        expect(find.byKey(ValueKey(longest.id)), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  }

  testWidgets('every category can be selected and filters reset', (
    tester,
  ) async {
    await tester.pumpWidget(learningApp('en'));
    await tester.pumpAndSettle();
    for (final topic in categoryAssets.keys) {
      await tester.tap(find.byTooltip('Category'));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text(topic).last);
      await tester.pumpAndSettle();
      await tester.tap(find.text(topic).last);
      await tester.pumpAndSettle();
      final count = learningCards.where((card) => card.topic == topic).length;
      expect(find.text('1 / $count'), findsOneWidget);
      expect(tester.takeException(), isNull);
    }
    await tester.enterText(find.byType(TextField), 'no-such-learning-card');
    await tester.pumpAndSettle();
    expect(find.text('0 / 0'), findsOneWidget);
    await tester.tap(find.text('Reset filters'));
    await tester.pumpAndSettle();
    expect(find.text('1 / 500'), findsOneWidget);
  });

  testWidgets('search and current card survive changing language', (
    tester,
  ) async {
    await tester.pumpWidget(learningApp('en'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Next'));
    await tester.pumpAndSettle();
    expect(find.text('2 / 500'), findsOneWidget);
    await tester.pumpWidget(learningApp('hi'));
    await tester.pumpAndSettle();
    expect(find.text('2 / 500'), findsOneWidget);
    expect(find.text('grep'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Work in progress');
    await tester.pumpAndSettle();
    expect(find.text('1 / 1'), findsOneWidget);
    expect(find.text('git stash'), findsOneWidget);
    await tester.pumpWidget(learningApp('mr'));
    await tester.pumpAndSettle();
    expect(find.text('1 / 1'), findsOneWidget);
    final stash = learningCards.singleWhere(
      (card) => card.command == 'git stash',
    );
    expect(find.text(stash.marathiDescription!), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('touch, wheel and buttons navigate without skipping cards', (
    tester,
  ) async {
    await tester.pumpWidget(learningApp('en'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Next'));
    await tester.pumpAndSettle();
    expect(find.text('2 / 500'), findsOneWidget);
    await tester.tap(find.byTooltip('Previous'));
    await tester.pumpAndSettle();
    expect(find.text('1 / 500'), findsOneWidget);
    await tester.drag(find.byType(PageView), const Offset(0, -400));
    await tester.pumpAndSettle();
    expect(find.text('2 / 500'), findsOneWidget);
    await tester.sendEventToBinding(
      PointerScrollEvent(
        position: tester.getCenter(find.byType(Card).first),
        scrollDelta: const Offset(0, 120),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('3 / 500'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  final gameScreens = <(String, Widget)>[
    ('games hub', const GamesScreen()),
    ('spin wheel', const SpinWheelScreen()),
    ('scratch card', const ScratchCardScreen()),
    ('lucky slots', const LuckySlotScreen()),
    ('mystery deal', const MysteryDealScreen()),
    ('memory match', const MemoryMatchScreen()),
    ('word guess', const WordGuessScreen()),
    ('higher or lower', const HigherLowerScreen()),
  ];

  for (final size in [
    const Size(320, 568),
    const Size(360, 640),
    const Size(400, 800),
    const Size(520, 800),
    const Size(699, 800),
    const Size(700, 800),
    const Size(844, 390),
    const Size(999, 800),
    const Size(1000, 800),
    const Size(1280, 800),
    const Size(1920, 1080),
  ]) {
    testWidgets('all game screens fit viewport $size', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      for (final (name, screen) in gameScreens) {
        SharedPreferences.setMockInitialValues({});
        await tester.pumpWidget(responsiveGameApp(screen));
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 100));
        expect(tester.takeException(), isNull, reason: '$name at $size');
      }
    });
  }

  testWidgets('mystery deal reward dialog fits a short phone viewport', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 320);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(responsiveGameApp(const MysteryDealScreen()));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    await tester.ensureVisible(find.text('01'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('01'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('You found'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('higher-or-lower result dialog fits a short phone viewport', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 320);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(responsiveGameApp(const HigherLowerScreen()));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    await tester.ensureVisible(find.text('Higher'));
    await tester.pumpAndSettle();

    for (
      var attempt = 0;
      attempt < 30 && find.text('Game Over').evaluate().isEmpty;
      attempt++
    ) {
      await tester.tap(find.text('Higher'));
      await tester.pumpAndSettle();
    }

    expect(find.text('Game Over'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('daily reward notification claims and displays the bonus', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: NotificationScreen()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Claim Reward'));
    await tester.pumpAndSettle();

    expect(find.text('Daily Login Bonus'), findsOneWidget);
    expect(await DailyLoginBonusService.hasClaimedToday(), isTrue);
    expect(tester.takeException(), isNull);

    await tester.tap(find.text('Awesome!'));
    await tester.pumpAndSettle();
    expect(find.text('Daily Reward Available!'), findsNothing);
  });

  testWidgets('mark-as-read control dismisses one notification', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(responsiveGameApp(const NotificationScreen()));
    await tester.pumpAndSettle();

    await tester.scrollUntilVisible(
      find.text('New Skill Games Available! 🎮'),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    final card = find.ancestor(
      of: find.text('New Skill Games Available! 🎮'),
      matching: find.byType(Card),
    );
    final markReadButton = find.descendant(
      of: card,
      matching: find.byTooltip('Mark as read'),
    );
    await tester.ensureVisible(markReadButton);
    await tester.pumpAndSettle();
    await tester.tap(markReadButton);
    await tester.pumpAndSettle();

    expect(find.text('New Skill Games Available! 🎮'), findsNothing);
    expect(await InAppNotificationService.isRead('games_feature_v1'), isTrue);
  });

  testWidgets('notification action button opens its destination', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: NotificationScreen()));
    await tester.pumpAndSettle();

    await tester.scrollUntilVisible(
      find.text('New Skill Games Available! 🎮'),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    final card = find.ancestor(
      of: find.text('New Skill Games Available! 🎮'),
      matching: find.byType(Card),
    );
    final playButton = find.descendant(
      of: card,
      matching: find.text('Play Now'),
    );
    await tester.ensureVisible(playButton);
    await tester.pumpAndSettle();
    await tester.tap(playButton);
    await tester.pumpAndSettle();

    expect(find.text('Games 🎮'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
