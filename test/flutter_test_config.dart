import 'dart:async';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

class _OfflineHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    throw StateError(
      'Offline ATF blocked a real HTTP client. Mock external integrations explicitly.',
    );
  }
}

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  if (const bool.fromEnvironment('ATF_OFFLINE')) {
    TestWidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = _OfflineHttpOverrides();
  }
  await testMain();
}
