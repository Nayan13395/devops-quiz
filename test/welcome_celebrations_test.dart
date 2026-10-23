import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:devops_quiz/widgets/notification_button.dart';
import 'package:devops_quiz/widgets/celebration_country_picker.dart';
import 'package:devops_quiz/widgets/festival_celebration.dart';
import 'package:devops_quiz/services/festival_calendar_service.dart';
import 'package:devops_quiz/services/national_day_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Indian tricolour paints its colours and visibly waves', (
    tester,
  ) async {
    final key = GlobalKey();
    final date = DateTime.utc(2026, 8, 15);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RepaintBoundary(
            key: key,
            child: ColoredBox(
              color: Colors.white,
              child: FestivalCelebration(
                window: FestivalWindow(
                  kind: FestivalKind.nationalDay,
                  startsOn: date,
                  endsOn: date,
                  countryCode: 'IN',
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 200));

    Future<ByteData> capture(String name) async {
      final boundary =
          key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      final image = await boundary.toImage();
      final rgba = (await image.toByteData(
        format: ui.ImageByteFormat.rawRgba,
      ))!;
      final png = (await image.toByteData(format: ui.ImageByteFormat.png))!;
      final output = File('build/$name.png');
      await output.parent.create(recursive: true);
      await output.writeAsBytes(png.buffer.asUint8List());
      image.dispose();
      return rgba;
    }

    final first = (await tester.runAsync(
      () => capture('welcome-india-flag-first'),
    ))!;
    int saffron = 0;
    int green = 0;
    int navy = 0;
    for (int offset = 0; offset < first.lengthInBytes; offset += 4) {
      final red = first.getUint8(offset);
      final blue = first.getUint8(offset + 2);
      final greenValue = first.getUint8(offset + 1);
      if (red > 230 && greenValue > 120 && greenValue < 180 && blue < 90)
        saffron++;
      if (red < 50 && greenValue > 100 && greenValue < 170 && blue < 40)
        green++;
      if (red < 20 && greenValue < 20 && blue > 100 && blue < 160) navy++;
    }
    expect(saffron, greaterThan(200));
    expect(green, greaterThan(200));
    expect(navy, greaterThan(8));
    await tester.pump(const Duration(seconds: 1));
    final second = (await tester.runAsync(
      () => capture('welcome-india-flag-waving'),
    ))!;
    int changed = 0;
    for (int offset = 0; offset < first.lengthInBytes; offset += 4) {
      if (first.getUint32(offset) != second.getUint32(offset)) changed++;
    }
    expect(changed, greaterThan(50));
    await tester.pumpWidget(const SizedBox.shrink());
  });

  test(
    'country choices cover ISO regions and national dates remain country scoped',
    () async {
      final countries = await NationalDayService.load();
      expect(countries, hasLength(249));
      expect(countries.map((country) => country.code).toSet(), hasLength(249));
      for (final country in countries) {
        for (final day in country.days) {
          final date = DateTime.utc(day.year ?? 2026, day.month, day.day);
          expect(date.month, day.month);
          expect(date.day, day.day);
          final national = FestivalCalendarService.activeWindowsOn(
            date,
            countryCode: country.code,
          ).where((window) => window.kind == FestivalKind.nationalDay);
          expect(national, isNotEmpty, reason: country.code);
          expect(
            national.every((window) => window.countryCode == country.code),
            isTrue,
          );
          expect(
            FestivalCalendarService.activeWindowsOn(
              date,
            ).where((window) => window.kind == FestivalKind.nationalDay),
            isEmpty,
          );
        }
      }
    },
  );

  test('Indian tricolour dates are exclusive to selected India', () async {
    await NationalDayService.load();
    for (final date in [DateTime.utc(2026, 8, 15), DateTime.utc(2026, 1, 26)]) {
      final india = FestivalCalendarService.activeWindowsOn(
        date,
        countryCode: 'IN',
      );
      expect(
        india.where(
          (window) =>
              window.kind == FestivalKind.nationalDay &&
              window.countryCode == 'IN',
        ),
        hasLength(1),
      );
      expect(
        FestivalCalendarService.activeWindowsOn(
          date,
          countryCode: 'US',
        ).where((window) => window.countryCode == 'IN'),
        isEmpty,
      );
    }
    final israel = FestivalCalendarService.activeWindowsOn(
      DateTime.utc(2026, 4, 22),
      countryCode: 'IL',
    );
    expect(israel.where((window) => window.countryCode == 'IL'), hasLength(1));
    expect(
      FestivalCalendarService.activeWindowsOn(
        DateTime.utc(2026, 5, 14),
        countryCode: 'IL',
      ).where((window) => window.countryCode == 'IL'),
      isEmpty,
    );
  });

  test(
    'country selection persists and can be cleared without using language',
    () async {
      SharedPreferences.setMockInitialValues({});
      expect(await NationalDayService.selectedCountry(), isNull);
      await NationalDayService.selectCountry('in');
      expect(await NationalDayService.selectedCountry(), 'IN');
      await NationalDayService.selectCountry('US');
      expect(await NationalDayService.selectedCountry(), 'US');
      await NationalDayService.selectCountry(null);
      expect(await NationalDayService.selectedCountry(), isNull);
    },
  );

  test(
    'new observances include Halloween, peace birthdays, sport and animal days',
    () {
      for (final (date, kind) in [
        (DateTime.utc(2026, 10, 31), FestivalKind.halloween),
        (DateTime.utc(2026, 10, 2), FestivalKind.peace),
        (DateTime.utc(2026, 4, 6), FestivalKind.sports),
        (DateTime.utc(2026, 5, 25), FestivalKind.sports),
        (DateTime.utc(2026, 10, 4), FestivalKind.animals),
        (DateTime.utc(2026, 3, 3), FestivalKind.animals),
      ]) {
        expect(
          FestivalCalendarService.activeWindowsOn(
            date,
          ).any((window) => window.kind == kind),
          isTrue,
          reason: '$date',
        );
      }
      final buddha = FestivalCalendarService.windowsForYear(
        2026,
      ).singleWhere((window) => window.label == 'Buddha Purnima');
      expect(buddha.kind, FestivalKind.peace);
      expect(buddha.startsOn, DateTime.utc(2026, 5, 1));
      expect(buddha.endsOn, buddha.startsOn);
    },
  );

  testWidgets('country picker can find and select India on a narrow phone', (
    tester,
  ) async {
    final countries = await NationalDayService.load();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    String? selected;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () async => selected = await showDialog<String>(
                context: context,
                builder: (_) => CelebrationCountryPicker(countries: countries),
              ),
              child: const Text('Country'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Country'));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('celebration-country-search')),
      'India',
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('celebration-country-IN')));
    await tester.pumpAndSettle();
    expect(selected, 'IN');
    expect(tester.takeException(), isNull);
  });

  testWidgets('new animated decorations remain non-blocking', (tester) async {
    for (final kind in [
      FestivalKind.halloween,
      FestivalKind.peace,
      FestivalKind.sports,
      FestivalKind.animals,
      FestivalKind.nationalDay,
    ]) {
      final date = DateTime.utc(2026, 8, 15);
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                Positioned.fill(
                  child: FestivalCelebration(
                    window: FestivalWindow(
                      kind: kind,
                      startsOn: date,
                      endsOn: date,
                      countryCode: 'IN',
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () => tapped = true,
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 200));
      await tester.tap(find.text('Continue'));
      expect(tapped, isTrue);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
    }
  });

  testWidgets('notification bell uses the current theme primary colour', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final scheme = ColorScheme.fromSeed(seedColor: Colors.teal);
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(colorScheme: scheme),
        home: const Scaffold(body: NotificationButton()),
      ),
    );
    await tester.pumpAndSettle();
    expect(
      tester.widget<Icon>(find.byIcon(Icons.notifications_rounded)).color,
      scheme.primary,
    );
  });
}
