import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/services/game_sound_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('sound preference defaults on and persists changes', () async {
    SharedPreferences.setMockInitialValues({});
    expect(await GameSoundService.isEnabled(), isTrue);

    await GameSoundService.setEnabled(false);
    expect(await GameSoundService.isEnabled(), isFalse);

    await GameSoundService.setEnabled(true);
    expect(await GameSoundService.isEnabled(), isTrue);
  });

  test(
    'sound cues use system sounds and disabled effects stay silent',
    () async {
      SharedPreferences.setMockInitialValues({});
      final calls = <MethodCall>[];
      final messenger =
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
      messenger.setMockMethodCallHandler(SystemChannels.platform, (call) async {
        calls.add(call);
        return null;
      });
      addTearDown(
        () => messenger.setMockMethodCallHandler(SystemChannels.platform, null),
      );

      await GameSoundService.play(GameSoundEffect.diceRoll);
      expect(
        calls.where((call) => call.method == 'SystemSound.play'),
        hasLength(3),
      );

      await GameSoundService.setEnabled(false);
      calls.clear();
      await GameSoundService.play(GameSoundEffect.correct);
      expect(calls, isEmpty);

      await GameSoundService.setEnabled(true);
      await GameSoundService.play(GameSoundEffect.correct);
      expect(
        calls.where((call) => call.method == 'SystemSound.play'),
        hasLength(1),
      );
    },
  );

  testWidgets('Settings exposes the persisted game-sounds toggle', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SettingsScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final toggle = find.byKey(const ValueKey('settings-game-sounds'));
    expect(tester.widget<SwitchListTile>(toggle).value, isTrue);
    await tester.tap(toggle);
    await tester.pumpAndSettle();

    expect(tester.widget<SwitchListTile>(toggle).value, isFalse);
    expect(await GameSoundService.isEnabled(), isFalse);
  });
}
