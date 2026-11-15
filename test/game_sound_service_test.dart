import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/services/game_sound_service.dart';
import 'package:devops_quiz/widgets/sound_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

class _Player extends Fake implements AudioPlayer {
  final sources = <AssetSource>[];
  int stops = 0;
  bool failPlayback = false;
  Completer<void>? starting;

  @override
  Future<void> play(
    Source source, {
    double? volume,
    double? balance,
    AudioContext? ctx,
    Duration? position,
    PlayerMode? mode,
  }) async {
    if (failPlayback) throw StateError('Audio unavailable');
    sources.add(source as AssetSource);
    await starting?.future;
  }

  @override
  Future<void> stop() async => stops++;

  @override
  Future<void> dispose() async {}
}

class _Store extends InMemorySharedPreferencesStore {
  _Store() : super.withData({});

  bool failWrites = false;
  Completer<void>? writing;

  @override
  Future<bool> setValue(String valueType, String key, Object value) async {
    await writing?.future;
    if (failWrites) return false;
    return super.setValue(valueType, key, value);
  }
}

Widget _app({String language = 'en'}) => MaterialApp(
  locale: Locale(language),
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: const Scaffold(body: SingleChildScrollView(child: SoundSettings())),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late _Player player;
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    player = _Player();
    GameSoundService.createPlayer = () => player;
  });
  tearDown(() async {
    await GameSoundService.dispose();
    GameSoundService.createPlayer = AudioPlayer.new;
  });

  test('sound preference defaults on and persists changes', () async {
    expect(await GameSoundService.isEnabled(), isTrue);
    await GameSoundService.setEnabled(false);
    expect(await GameSoundService.isEnabled(), isFalse);
    await GameSoundService.setEnabled(true);
    expect(await GameSoundService.isEnabled(), isTrue);
  });

  test('each effect uses its bundled audio and mute stops playback', () async {
    for (final effect in GameSoundEffect.values) {
      await GameSoundService.play(effect);
      expect(player.sources.last.path, 'sounds/${effect.name}.wav');
      final file = File('assets/sounds/${effect.name}.wav');
      final bytes = file.readAsBytesSync();
      expect(String.fromCharCodes(bytes.take(4)), 'RIFF');
      expect(String.fromCharCodes(bytes.skip(8).take(4)), 'WAVE');
      expect(bytes.length, greaterThan(44));
    }
    final stops = player.stops;
    await GameSoundService.setEnabled(false);
    expect(player.stops, greaterThan(stops));
    player.sources.clear();
    await GameSoundService.play(GameSoundEffect.win);
    await GameSoundService.preview();
    expect(player.sources, isEmpty);
    await GameSoundService.setEnabled(true);
    await GameSoundService.preview();
    expect(player.sources.single.path, 'sounds/correct.wav');
  });

  test('muting cancels queued effects and stops an in-flight effect', () async {
    player.starting = Completer<void>();
    final first = GameSoundService.play(GameSoundEffect.diceRoll);
    while (player.sources.isEmpty) {
      await Future<void>.delayed(Duration.zero);
    }
    final queued = GameSoundService.play(GameSoundEffect.win);
    final mute = GameSoundService.setEnabled(false);
    player.starting!.complete();
    await Future.wait([first, queued, mute]);
    expect(player.sources, hasLength(1));
    expect(player.stops, greaterThanOrEqualTo(2));
    expect(await GameSoundService.isEnabled(), isFalse);
  });

  test(
    'preview errors propagate, game playback errors do not break scoring',
    () async {
      player.failPlayback = true;
      await expectLater(GameSoundService.preview(), throwsStateError);
      await GameSoundService.play(GameSoundEffect.correct);
      player.failPlayback = false;
      await GameSoundService.preview();
      expect(player.sources, hasLength(1));
    },
  );

  testWidgets('sound setting and preview work in all 32 languages', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = await AppLocalizations.delegate.load(locale);
      await tester.pumpWidget(_app(language: locale.languageCode));
      await tester.pumpAndSettle();
      expect(find.text(l10n.gameSounds), findsOneWidget);
      expect(find.text(l10n.gameSoundsDescription), findsOneWidget);
      final preview = find.byKey(const ValueKey('settings-test-sound'));
      final before = player.sources.length;
      await tester.ensureVisible(preview);
      await tester.tap(preview);
      await tester.pumpAndSettle();
      expect(player.sources.length, before + 1);
      final toggle = find.byKey(const ValueKey('settings-game-sounds'));
      await tester.ensureVisible(toggle);
      await tester.tap(toggle);
      await tester.pumpAndSettle();
      expect(await GameSoundService.isEnabled(), isFalse);
      expect(tester.widget<TextButton>(preview).onPressed, isNull);
      await tester.tap(toggle);
      await tester.pumpAndSettle();
      expect(await GameSoundService.isEnabled(), isTrue);
      expect(tester.takeException(), isNull, reason: locale.languageCode);
    }
  });

  testWidgets('disabled preference survives screen recreation', (tester) async {
    await GameSoundService.setEnabled(false);
    await tester.pumpWidget(_app());
    await tester.pumpAndSettle();
    expect(
      tester
          .widget<SwitchListTile>(
            find.byKey(const ValueKey('settings-game-sounds')),
          )
          .value,
      isFalse,
    );
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(_app());
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.volume_off_outlined), findsOneWidget);
  });

  testWidgets('preview failure displays localized feedback', (tester) async {
    player.failPlayback = true;
    await tester.pumpWidget(_app(language: 'hi'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('settings-test-sound')));
    await tester.pumpAndSettle();
    final l10n = await AppLocalizations.delegate.load(const Locale('hi'));
    expect(find.text(l10n.soundPlaybackError), findsOneWidget);
  });

  testWidgets('failed preference writes restore the switch and allow retry', (
    tester,
  ) async {
    final store = _Store()..failWrites = true;
    SharedPreferencesStorePlatform.instance = store;
    await tester.pumpWidget(_app());
    await tester.pumpAndSettle();
    final toggle = find.byKey(const ValueKey('settings-game-sounds'));
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(toggle).value, isTrue);
    expect(await GameSoundService.isEnabled(), isTrue);
    expect(find.textContaining('Could not load or save'), findsOneWidget);
    store.failWrites = false;
    await tester.tap(toggle);
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(toggle).value, isFalse);
  });

  testWidgets('switch is locked until a write completes', (tester) async {
    final store = _Store()..writing = Completer<void>();
    SharedPreferencesStorePlatform.instance = store;
    await tester.pumpWidget(_app());
    await tester.pumpAndSettle();
    final toggle = find.byKey(const ValueKey('settings-game-sounds'));
    await tester.tap(toggle);
    await tester.pump();
    expect(tester.widget<SwitchListTile>(toggle).onChanged, isNull);
    store.writing!.complete();
    await tester.pumpAndSettle();
    expect(tester.widget<SwitchListTile>(toggle).value, isFalse);
  });

  testWidgets(
    'unreadable preferences show a retry instead of an active switch',
    (tester) async {
      SharedPreferences.setMockInitialValues({
        GameSoundService.preferenceKey: 'bad',
      });
      await tester.pumpWidget(_app());
      await tester.pumpAndSettle();
      final toggle = find.byKey(const ValueKey('settings-game-sounds'));
      expect(tester.widget<SwitchListTile>(toggle).onChanged, isNull);
      expect(find.text('Retry'), findsOneWidget);
      SharedPreferences.setMockInitialValues({});
      await tester.tap(find.text('Retry'));
      await tester.pumpAndSettle();
      expect(tester.widget<SwitchListTile>(toggle).onChanged, isNotNull);
    },
  );
}
