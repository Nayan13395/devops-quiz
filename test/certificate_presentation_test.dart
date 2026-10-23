import 'package:devops_quiz/services/certificate_service.dart';
import 'package:devops_quiz/widgets/certificate_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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
