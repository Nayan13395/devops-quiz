import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NationalDay {
  const NationalDay({
    required this.month,
    required this.day,
    required this.name,
    this.year,
  });
  final int month;
  final int day;
  final int? year;
  final String name;
}

class CelebrationCountry {
  const CelebrationCountry({
    required this.code,
    required this.name,
    required this.days,
  });
  final String code;
  final String name;
  final List<NationalDay> days;
}

class NationalDayService {
  static const countryKey = 'celebration_country_code';
  static Future<List<CelebrationCountry>>? _loading;
  static List<CelebrationCountry> _countries = const [];

  static List<CelebrationCountry> get countries => _countries;

  static Future<List<CelebrationCountry>> load() {
    if (_countries.isNotEmpty) return Future.value(_countries);
    return _loading ??= _load();
  }

  static Future<List<CelebrationCountry>> _load() async {
    final data =
        jsonDecode(await rootBundle.loadString('assets/national_days.json'))
            as Map<String, dynamic>;
    _countries = List.unmodifiable(
      (data['countries'] as List).map((value) {
        final country = value as Map<String, dynamic>;
        return CelebrationCountry(
          code: country['code'] as String,
          name: country['name'] as String,
          days: List.unmodifiable(
            (country['days'] as List).map((value) {
              final day = value as Map<String, dynamic>;
              return NationalDay(
                month: day['month'] as int,
                day: day['day'] as int,
                name: day['name'] as String,
                year: day['year'] as int?,
              );
            }),
          ),
        );
      }),
    );
    return _countries;
  }

  static Future<String?> selectedCountry() async {
    await load();
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(countryKey);
    return _countries.any((country) => country.code == code) ? code : null;
  }

  static Future<void> selectCountry(String? code) async {
    await load();
    final normalized = code?.toUpperCase();
    if (normalized != null &&
        !_countries.any((country) => country.code == normalized)) {
      throw ArgumentError.value(code, 'code', 'Unknown country');
    }
    final prefs = await SharedPreferences.getInstance();
    if (normalized == null) {
      await prefs.remove(countryKey);
    } else {
      await prefs.setString(countryKey, normalized);
    }
  }
}
