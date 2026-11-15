import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_localizations.dart';

class LocalizedNotificationMessage {
  final String title;
  final String body;

  const LocalizedNotificationMessage({required this.title, required this.body});
}

class NotificationLocalizations {
  NotificationLocalizations._(this.locale, this._data);

  static final Map<String, Future<NotificationLocalizations>> _cache = {};

  final Locale locale;
  final Map<String, dynamic> _data;

  static Future<NotificationLocalizations> load(Locale locale) {
    final code =
        AppLocalizations.supportedLocales.any(
          (supported) => supported.languageCode == locale.languageCode,
        )
        ? locale.languageCode
        : 'en';
    return _cache.putIfAbsent(code, () => _load(code));
  }

  static Future<NotificationLocalizations> loadSelected({
    String? languageCode,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return load(
      Locale(languageCode ?? prefs.getString('languageCode') ?? 'en'),
    );
  }

  static Future<NotificationLocalizations> _load(String code) async {
    try {
      final source = await rootBundle.loadString(
        'assets/notifications/$code.json',
      );
      return NotificationLocalizations._(
        Locale(code),
        Map<String, dynamic>.from(jsonDecode(source) as Map),
      );
    } on FlutterError {
      if (code == 'en') rethrow;
      return load(const Locale('en'));
    }
  }

  String text(String path, [Map<String, Object> values = const {}]) {
    dynamic current = _data;
    for (final segment in path.split('.')) {
      if (current is! Map || !current.containsKey(segment)) {
        throw StateError('Missing notification localization key: $path');
      }
      current = current[segment];
    }
    if (current is! String) {
      throw StateError('Notification localization key is not text: $path');
    }
    return values.entries.fold(
      current,
      (result, entry) =>
          result.replaceAll('{${entry.key}}', entry.value.toString()),
    );
  }

  List<LocalizedNotificationMessage> get dailyMessages {
    final messages = _data['dailyMessages'];
    if (messages is! List) {
      throw StateError('dailyMessages must be a list');
    }
    return messages
        .map((message) {
          final item = Map<String, dynamic>.from(message as Map);
          return LocalizedNotificationMessage(
            title: item['title'] as String,
            body: item['body'] as String,
          );
        })
        .toList(growable: false);
  }
}
