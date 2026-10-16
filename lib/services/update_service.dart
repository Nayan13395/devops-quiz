import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'notification_service.dart';

/// Checks Google Play for a newer version and tells the user about it
/// through a dialog, an in-app notification and a system notification.
class UpdateService {
  UpdateService._();

  static const String androidId = 'com.nayan.devops';

  static const String _availableVersionKey = 'update_available_version';
  static const String _lastCheckKey = 'update_last_check';
  static const String _dialogShownKey = 'update_dialog_shown_for';
  static const String _pushSentKey = 'update_push_sent_for';

  static const Duration _checkInterval = Duration(hours: 6);

  /// Version published on Google Play that is newer than the installed
  /// one, or null when the app is up to date.
  static Future<String?> availableVersion() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_availableVersionKey);
  }

  /// Contacts Google Play (at most once per [_checkInterval]) and stores
  /// the result. Returns the newer version, or null if up to date.
  static Future<String?> refresh({bool force = false}) async {
    if (kIsWeb) return null;

    final prefs = await SharedPreferences.getInstance();

    final int lastCheck = prefs.getInt(_lastCheckKey) ?? 0;
    final int now = DateTime.now().millisecondsSinceEpoch;

    if (!force && now - lastCheck < _checkInterval.inMilliseconds) {
      return prefs.getString(_availableVersionKey);
    }

    try {
      final status = await NewVersionPlus(
        androidId: androidId,
      ).getVersionStatus();

      if (status == null) return prefs.getString(_availableVersionKey);

      await prefs.setInt(_lastCheckKey, now);

      if (status.canUpdate) {
        await prefs.setString(_availableVersionKey, status.storeVersion);

        return status.storeVersion;
      }

      await prefs.remove(_availableVersionKey);

      return null;
    } catch (e) {
      debugPrint('Update check failed: $e');

      return prefs.getString(_availableVersionKey);
    }
  }

  /// Startup check: refreshes the status and sends one system
  /// notification per new version.
  static Future<void> checkInBackground() async {
    final String? version = await refresh();

    if (version == null) return;

    final prefs = await SharedPreferences.getInstance();

    if (prefs.getString(_pushSentKey) == version) return;

    await prefs.setString(_pushSentKey, version);

    await NotificationService.instance.showUpdateAvailable(version);
  }

  /// Shows the update dialog (once per day for each new version).
  static Future<void> checkForUpdate(BuildContext context) async {
    final String? version = await refresh();

    if (version == null || !context.mounted) return;

    final prefs = await SharedPreferences.getInstance();

    final String today = DateTime.now().toIso8601String().substring(0, 10);
    final String marker = '$version@$today';

    if (prefs.getString(_dialogShownKey) == marker) return;

    await prefs.setString(_dialogShownKey, marker);

    if (!context.mounted) return;

    final bool? update = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        icon: const Text('🚀', style: TextStyle(fontSize: 44)),
        title: const Text('Update Available', textAlign: TextAlign.center),
        content: Text(
          'DevOps Quiz $version is now available on Google Play.\n\n'
          'Update to get the latest games, quiz sets and improvements.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Later'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Update'),
          ),
        ],
      ),
    );

    if (update == true) {
      await openStore();
    }
  }

  static Future<void> openStore() async {
    await NewVersionPlus(androidId: androidId).launchAppStore(
      'https://play.google.com/store/apps/details?id=$androidId',
    );
  }
}
