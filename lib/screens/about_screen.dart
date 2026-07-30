import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../l10n/app_localizations.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  String version = "";

  @override
  void initState() {
    super.initState();
    loadVersion();
  }

  Future<void> loadVersion() async {
    final info = await PackageInfo.fromPlatform();

    setState(() {
      version = info.version;
    });
  }

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
  AppLocalizations.of(context)!.about,
),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset(
    'assets/icon/app_icon.png',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
),

            const SizedBox(height: 20),

            Text(
  AppLocalizations.of(context)!.appName,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
  "${AppLocalizations.of(context)!.version} $version",
  style: const TextStyle(
    color: Colors.grey,
  ),
),

            const SizedBox(height: 30),

Card(
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Text(
      AppLocalizations.of(context)!.aboutDescription,
      style: const TextStyle(
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    ),
  ),
),
            const SizedBox(height: 20),

            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
  AppLocalizations.of(context)!.developer,
),
              subtitle: const Text("Nayan Chaudhari"),
            ),

            ListTile(
              leading: const Icon(Icons.email),
              title: Text(
  AppLocalizations.of(context)!.contact,
),
              subtitle: const Text("chaudhari.nayan41@gmail.com"),
            ),

Card(
  child: ListTile(
    leading: const Icon(
      Icons.work,
      color: Colors.blue,
    ),
title: Text(
  AppLocalizations.of(context)!.linkedIn,
),
subtitle: Text(
  AppLocalizations.of(context)!.connectWithMe,
),
    trailing: const Icon(
      Icons.open_in_new,
    ),

    onTap: () async {
      final uri = Uri.parse(
        "https://www.linkedin.com/in/nayan-chaudhari-200b31241",
      );

      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    },
  ),
),

            const SizedBox(height: 20),

            const Text(
              "© 2026 DevOps Quiz",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}