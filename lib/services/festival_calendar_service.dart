import 'package:tithi_engine/data/india.dart';
import 'package:tithi_engine/tithi_engine.dart';

import 'national_day_service.dart';

enum FestivalKind {
  diwali,
  makarSankranti,
  holi,
  ganapati,
  navratri,
  christmas,
  halloween,
  peace,
  sports,
  animals,
  nationalDay,
}

class FestivalWindow {
  const FestivalWindow({
    required this.kind,
    required this.startsOn,
    required this.endsOn,
    this.countryCode,
    this.label,
  });

  final FestivalKind kind;
  final DateTime startsOn;
  final DateTime endsOn;
  final String? countryCode;
  final String? label;

  bool contains(DateTime indianDate) {
    final date = DateTime.utc(
      indianDate.year,
      indianDate.month,
      indianDate.day,
    );
    return !date.isBefore(startsOn) && !date.isAfter(endsOn);
  }
}

class FestivalCalendarService {
  FestivalCalendarService._();

  static const Duration _indiaOffset = Duration(hours: 5, minutes: 30);
  static final Panchang _panchang = Panchang([registerIndia]);
  static final Map<int, List<FestivalWindow>> _yearCache = {};

  static FestivalWindow? activeNow([DateTime? instant]) {
    final indiaNow = (instant ?? DateTime.now()).toUtc().add(_indiaOffset);
    return activeOn(indiaNow);
  }

  static FestivalWindow? activeOn(DateTime indianDate) {
    final date = DateTime.utc(
      indianDate.year,
      indianDate.month,
      indianDate.day,
    );

    for (final year in [date.year - 1, date.year, date.year + 1]) {
      for (final window in windowsForYear(year)) {
        if (window.contains(date)) return window;
      }
    }

    return null;
  }

  static List<FestivalWindow> activeWindowsNow({
    DateTime? instant,
    String? countryCode,
  }) => activeWindowsOn(
    (instant ?? DateTime.now()).toLocal(),
    countryCode: countryCode,
  );

  static List<FestivalWindow> activeWindowsOn(
    DateTime date, {
    String? countryCode,
  }) {
    final windows = <FestivalWindow>[
      for (final year in [date.year - 1, date.year, date.year + 1])
        ...windowsForYear(year).where((window) => window.contains(date)),
    ];
    if (countryCode != null) {
      for (final country in NationalDayService.countries.where(
        (country) => country.code == countryCode.toUpperCase(),
      )) {
        for (final day in country.days) {
          if (day.month != date.month ||
              day.day != date.day ||
              (day.year != null && day.year != date.year))
            continue;
          windows.add(
            FestivalWindow(
              kind: FestivalKind.nationalDay,
              startsOn: DateTime.utc(date.year, day.month, day.day),
              endsOn: DateTime.utc(date.year, day.month, day.day),
              countryCode: country.code,
              label: '${country.name}: ${day.name}',
            ),
          );
        }
      }
    }
    return List.unmodifiable(windows);
  }

  static List<FestivalWindow> windowsForYear(int year) {
    return _yearCache.putIfAbsent(year, () {
      final windows = <FestivalWindow>[];

      void addPanchangFestival(
        String festivalId,
        FestivalKind kind, {
        int daysBefore = 0,
        int daysAfter = 0,
      }) {
        final definitions = festivals.where(
          (festival) => festival.id == festivalId,
        );
        if (definitions.isEmpty) return;

        final date = _panchang
            .dateFor(definitions.first, year, City.ujjain)
            ?.date;
        if (date == null) return;

        final observance = DateTime.utc(date.year, date.month, date.day);
        windows.add(
          FestivalWindow(
            kind: kind,
            startsOn: observance.subtract(Duration(days: daysBefore)),
            endsOn: observance.add(Duration(days: daysAfter)),
          ),
        );
      }

      addPanchangFestival(
        'diwali',
        FestivalKind.diwali,
        daysBefore: 2,
        daysAfter: 2,
      );
      addPanchangFestival('holi', FestivalKind.holi);
      addPanchangFestival(
        'ganesh_chaturthi',
        FestivalKind.ganapati,
        daysAfter: 9,
      );
      addPanchangFestival(
        'sharad_navratri',
        FestivalKind.navratri,
        daysAfter: 8,
      );

      final buddhaDate = _panchang
          .dateFor(
            const FestivalDef(
              id: 'buddha_purnima',
              name: 'Buddha Purnima',
              month: LunarMonth.vaishakha,
              paksha: Paksha.shukla,
              tithiInPaksha: 15,
              muhurta: MuhurtaRule.sunrise,
            ),
            year,
            City.ujjain,
          )
          ?.date;
      if (buddhaDate != null) {
        final date = DateTime.utc(
          buddhaDate.year,
          buddhaDate.month,
          buddhaDate.day,
        );
        windows.add(
          FestivalWindow(
            kind: FestivalKind.peace,
            startsOn: date,
            endsOn: date,
            label: 'Buddha Purnima',
          ),
        );
      }
      for (final (month, day, kind, label) in [
        (10, 31, FestivalKind.halloween, 'Halloween'),
        (10, 2, FestivalKind.peace, 'Gandhi Jayanti'),
        (9, 21, FestivalKind.peace, 'International Day of Peace'),
        (4, 6, FestivalKind.sports, 'International Day of Sport'),
        (5, 25, FestivalKind.sports, 'World Football Day'),
        (12, 21, FestivalKind.sports, 'World Basketball Day'),
        (10, 4, FestivalKind.animals, 'World Animal Day'),
        (3, 3, FestivalKind.animals, 'World Wildlife Day'),
      ]) {
        final date = DateTime.utc(year, month, day);
        windows.add(
          FestivalWindow(
            kind: kind,
            startsOn: date,
            endsOn: date,
            label: label,
          ),
        );
      }

      windows.add(
        FestivalWindow(
          kind: FestivalKind.makarSankranti,
          startsOn: DateTime.utc(year, 1, 14),
          endsOn: DateTime.utc(year, 1, 15),
        ),
      );
      windows.add(
        FestivalWindow(
          kind: FestivalKind.christmas,
          startsOn: DateTime.utc(year, 12, 24),
          endsOn: DateTime.utc(year, 12, 26),
        ),
      );

      windows.sort(
        (first, second) => first.startsOn.compareTo(second.startsOn),
      );
      return List.unmodifiable(windows);
    });
  }
}
