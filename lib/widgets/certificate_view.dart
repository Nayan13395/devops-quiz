import 'package:flutter/material.dart';

import '../services/certificate_service.dart';

/// Logical size of the certificate (A4 landscape ratio). It is scaled down
/// to fit the screen, and captured at this size for the PDF.
const Size certificateSize = Size(1000, 707);

class CertificateView extends StatelessWidget {
  final CertificateInfo info;
  final String holderName;

  const CertificateView({
    super.key,
    required this.info,
    required this.holderName,
  });

  static String _formatDate(DateTime date) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  static Widget _fit(Text text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: FittedBox(fit: BoxFit.scaleDown, child: text),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color gold = Color(0xFFB8860B);
    const Color navy = Color(0xFF0D2B45);

    return SizedBox(
      width: certificateSize.width,
      height: certificateSize.height,
      child: DecoratedBox(
        decoration: const BoxDecoration(color: Color(0xFFFFFBF0)),
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: gold, width: 6),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: navy, width: 2),
                ),
                child: DefaultTextStyle(
                  style: const TextStyle(color: navy),
                  textAlign: TextAlign.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('🎓', style: TextStyle(fontSize: 54)),
                      const SizedBox(height: 4),
                      _fit(
                        Text(
                          '${info.category.toUpperCase()} - '
                          'COURSE COMPLETION CERTIFICATE',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            color: gold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      _fit(
                        const Text(
                          'This is to certify that',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _fit(
                        Text(
                          holderName,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        width: 520,
                        height: 2,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        color: gold,
                      ),
                      _fit(
                        Text(
                          'has successfully completed all '
                          '${CertificateService.setsRequired} quiz sets in',
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _fit(
                        Text(
                          '${info.category} on DevOps Quiz',
                          style: const TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _fit(
                        Text(
                          'with an average score of ${info.averagePercent}%',
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),
                      const SizedBox(height: 34),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Column(
                                  children: [
                                    Text(
                                      _formatDate(info.issuedOn),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Text(
                                      'Date of issue',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Text('🏅', style: TextStyle(fontSize: 50)),
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Column(
                                  children: [
                                    Text(
                                      info.certificateId,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Text(
                                      'Certificate ID',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
