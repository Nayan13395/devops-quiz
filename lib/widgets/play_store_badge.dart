import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayStoreBadge extends StatelessWidget {
  const PlayStoreBadge({super.key, this.height = 50});

  /// Badge height – width adjusts automatically to the image ratio.
  final double height;

  // ⚠️ Replace with YOUR app's real package name
  static const String playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.nayan.devops';

  static Future<void> open() async {
    await launchUrl(
      Uri.parse(playStoreUrl),
      webOnlyWindowName: '_blank', // opens in a new tab on web
    );
  }

  @override
  Widget build(BuildContext context) {
    // Show only on web – hidden in the Android app
    if (!kIsWeb) return const SizedBox.shrink();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: open,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.25),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/google_play_badge.png',
            height: height,
            fit: BoxFit.contain,
            semanticLabel: 'Get it on Google Play',
          ),
        ),
      ),
    );
  }
}