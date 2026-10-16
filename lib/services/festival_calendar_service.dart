import 'package:tithi_engine/data/india.dart';
import 'package:tithi_engine/tithi_engine.dart';

enum FestivalKind {
  diwali,
  makarSankranti,
  holi,
  ganapati,
  navratri,
  christmas,
}

class FestivalWindow {
  const FestivalWindow({
    required this.kind,
    required this.startsOn,
    required this.endsOn,
  });

  final FestivalKind kind;
  final DateTime startsOn;
  final DateTime endsOn;

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
