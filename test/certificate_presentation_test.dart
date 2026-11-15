import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:devops_quiz/screens/certificates_screen.dart';
import 'package:devops_quiz/services/certificate_service.dart';
import 'package:devops_quiz/widgets/certificate_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const shareChannel = MethodChannel('dev.fluttercommunity.plus/share');
  const pathChannel = MethodChannel('plugins.flutter.io/path_provider');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  late Directory temporary;
  final info = CertificateInfo(
    category: 'Kubernetes',
    certificateId: 'DQ-KUB-20261023-1234',
    issuedOn: DateTime(2026, 10, 23),
    averagePercent: 90,
  );

  setUp(() async {
    temporary = await Directory.systemTemp.createTemp(
      'certificate-share-test-',
    );
    messenger.setMockMethodCallHandler(pathChannel, (call) async {
      if (call.method == 'getTemporaryDirectory') return temporary.path;
      throw PlatformException(code: 'unexpected_path_method');
    });
  });
  tearDown(() async {
    messenger.setMockMethodCallHandler(shareChannel, null);
    messenger.setMockMethodCallHandler(pathChannel, null);
    messenger.setMockMethodCallHandler(SystemChannels.platform, null);
    await temporary.delete(recursive: true);
  });

  Future<void> openCertificate(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      MaterialApp(
        home: CertificateDetailScreen(info: info, holderName: 'Asha Patil'),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> startSharing(
    WidgetTester tester,
    Completer<void> received,
  ) async {
    final share = find.byKey(const ValueKey('certificate-share'));
    await tester.ensureVisible(share);
    await tester.runAsync(() async {
      await tester.tap(share);
      final deadline = DateTime.now().add(const Duration(seconds: 15));
      while (!received.isCompleted && DateTime.now().isBefore(deadline)) {
        await tester.pump();
        await Future<void>.delayed(const Duration(milliseconds: 20));
      }
      if (!received.isCompleted) {
        throw StateError('Certificate did not reach the share platform');
      }
    });
    await tester.pump();
  }

  testWidgets(
    'shares the certificate PNG with caption and prevents duplicate shares',
    (tester) async {
      final received = Completer<void>();
      final result = Completer<String>();
      Map<Object?, Object?>? arguments;
      var calls = 0;
      messenger.setMockMethodCallHandler(shareChannel, (call) async {
        expect(call.method, 'share');
        calls++;
        arguments = call.arguments as Map<Object?, Object?>;
        received.complete();
        return result.future;
      });
      await openCertificate(tester);
      await startSharing(tester, received);
      final share = find.byKey(const ValueKey('certificate-share'));
      expect(tester.widget<FilledButton>(share).onPressed, isNull);
      await tester.tap(share);
      expect(calls, 1);
      final values = arguments!;
      final message = values['text']! as String;
      expect(message, contains('all 5 Kubernetes quiz sets'));
      expect(message, contains('90% average'));
      expect(
        message,
        contains(
          'https://play.google.com/store/apps/details?id=com.nayan.devops',
        ),
      );
      expect(message, contains('#DevOps #ContinuousLearning'));
      expect(values['mimeTypes'], ['image/png']);
      expect(values['originWidth'], greaterThan(0));
      expect(values['originHeight'], greaterThan(0));
      final paths = (values['paths']! as List<Object?>).cast<String>();
      expect(
        paths.single,
        endsWith('Kubernetes_Course_Completion_Certificate.png'),
      );
      await tester.runAsync(() async {
        final bytes = await File(paths.single).readAsBytes();
        final codec = await ui.instantiateImageCodec(bytes);
        final frame = await codec.getNextFrame();
        expect(frame.image.width, 3000);
        expect(frame.image.height, 2121);
        frame.image.dispose();
        codec.dispose();
      });
      result.complete('');
      await tester.pumpAndSettle();
      expect(tester.widget<FilledButton>(share).onPressed, isNotNull);
      expect(find.textContaining('Unable to share'), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('share failure is visible and the user can retry', (
    tester,
  ) async {
    final received = Completer<void>();
    messenger.setMockMethodCallHandler(shareChannel, (call) async {
      received.complete();
      throw PlatformException(code: 'share_failed');
    });
    await openCertificate(tester);
    await startSharing(tester, received);
    await tester.pumpAndSettle();
    expect(
      find.textContaining('Unable to share the certificate.'),
      findsOneWidget,
    );
    expect(
      tester
          .widget<FilledButton>(find.byKey(const ValueKey('certificate-share')))
          .onPressed,
      isNotNull,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'unknown share result offers manual sharing without claiming success',
    (tester) async {
      final received = Completer<void>();
      messenger.setMockMethodCallHandler(shareChannel, (call) async {
        received.complete();
        return 'dev.fluttercommunity.plus/share/unavailable';
      });
      await openCertificate(tester);
      await startSharing(tester, received);
      await tester.pumpAndSettle();
      expect(
        find.textContaining('Sharing could not be confirmed.'),
        findsOneWidget,
      );
      expect(
        find.textContaining('use Download PDF to save the certificate'),
        findsOneWidget,
      );
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('certificate actions keep sharing without social post controls', (
    tester,
  ) async {
    await openCertificate(tester);
    expect(find.byKey(const ValueKey('certificate-share')), findsOneWidget);
    expect(find.text('Share certificate'), findsOneWidget);
    expect(find.text('Copy message'), findsNothing);
    expect(find.text('Edit name'), findsNothing);
    expect(find.text('Suggested social post'), findsNothing);
    expect(
      find.byKey(const ValueKey('certificate-share-message')),
      findsNothing,
    );
  });

  testWidgets('certificate title includes category and course completion', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 900);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: CertificateView(
              info: CertificateInfo(
                category: 'Kubernetes',
                certificateId: 'DQ-KUB-20261023-1234',
                issuedOn: DateTime(2026, 10, 23),
                averagePercent: 90,
              ),
              holderName: 'Asha Patil',
            ),
          ),
        ),
      ),
    );

    expect(
      find.text('KUBERNETES - COURSE COMPLETION CERTIFICATE'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });
}
