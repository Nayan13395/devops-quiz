import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_version_plus/new_version_plus.dart';

class UpdateService {
  static Future<void> checkForUpdate(BuildContext context) async {
    // Do not check for updates on Web
    if (kIsWeb) return;

    final newVersion = NewVersionPlus(
      androidId: 'com.nayan.devops',
    );

    final status = await newVersion.getVersionStatus();

    if (status != null &&
        status.canUpdate &&
        context.mounted) {
      newVersion.showUpdateDialog(
        context: context,
        versionStatus: status,
        dialogTitle: "Update Available",
        dialogText:
            "A newer version of DevOps Quiz is available.\n\nPlease update for the latest features and improvements.",
        updateButtonText: "Update",
        dismissButtonText: "Later",
        allowDismissal: true,
      );
    }
  }
}