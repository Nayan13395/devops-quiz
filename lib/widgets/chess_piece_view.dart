import 'package:flutter/material.dart';

const chessPieceNames = {
  'k': 'king',
  'q': 'queen',
  'r': 'rook',
  'b': 'bishop',
  'n': 'knight',
  'p': 'pawn',
};

class ChessPieceView extends StatelessWidget {
  const ChessPieceView({super.key, required this.type, required this.white});

  final String type;
  final bool white;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(2),
    child: CustomPaint(painter: _SculptedPiecePainter(type, white)),
  );
}

class _SculptedPiecePainter extends CustomPainter {
  const _SculptedPiecePainter(this.type, this.white);
  final String type;
  final bool white;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.scale(size.width / 100, size.height / 100);
    canvas.drawOval(
      const Rect.fromLTWH(17, 82, 69, 11),
      Paint()
        ..color = Colors.black.withValues(alpha: 0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
    );
    final body = Path();
    switch (type) {
      case 'n':
        body.moveTo(28, 75);
        body.cubicTo(29, 61, 45, 55, 48, 42);
        body.lineTo(32, 49);
        body.lineTo(18, 43);
        body.lineTo(22, 33);
        body.lineTo(43, 20);
        body.lineTo(44, 8);
        body.lineTo(54, 16);
        body.cubicTo(70, 15, 79, 36, 76, 58);
        body.lineTo(73, 76);
        body.close();
      case 'r':
        body.moveTo(26, 73);
        body.lineTo(35, 41);
        body.lineTo(25, 36);
        body.lineTo(25, 14);
        body.lineTo(37, 14);
        body.lineTo(37, 24);
        body.lineTo(44, 24);
        body.lineTo(44, 14);
        body.lineTo(56, 14);
        body.lineTo(56, 24);
        body.lineTo(63, 24);
        body.lineTo(63, 14);
        body.lineTo(75, 14);
        body.lineTo(75, 36);
        body.lineTo(65, 41);
        body.lineTo(74, 73);
        body.close();
      default:
        body.moveTo(29, 74);
        body.cubicTo(38, 62, 42, 50, 39, 39);
        body.lineTo(61, 39);
        body.cubicTo(58, 50, 62, 62, 71, 74);
        body.close();
    }
    _solid(canvas, body);
    if (type == 'p') {
      _solid(canvas, Path()..addOval(const Rect.fromLTWH(35, 16, 30, 30)));
    } else if (type == 'b') {
      final mitre = Path()
        ..moveTo(50, 10)
        ..cubicTo(23, 34, 33, 47, 50, 47)
        ..cubicTo(67, 47, 77, 34, 50, 10)
        ..close();
      _solid(canvas, mitre);
      canvas.drawLine(
        const Offset(53, 17),
        const Offset(43, 33),
        Paint()
          ..color = _outline
          ..strokeWidth = 3,
      );
      _solid(canvas, Path()..addOval(const Rect.fromLTWH(46, 5, 8, 8)));
    } else if (type == 'q') {
      final crown = Path()
        ..moveTo(34, 42)
        ..lineTo(25, 17)
        ..lineTo(40, 29)
        ..lineTo(50, 9)
        ..lineTo(60, 29)
        ..lineTo(75, 17)
        ..lineTo(66, 42)
        ..close();
      _solid(canvas, crown);
      for (final point in [
        const Offset(25, 16),
        const Offset(50, 9),
        const Offset(75, 16),
      ]) {
        _solid(
          canvas,
          Path()..addOval(Rect.fromCircle(center: point, radius: 4)),
        );
      }
    } else if (type == 'k') {
      _solid(canvas, Path()..addOval(const Rect.fromLTWH(34, 24, 32, 23)));
      _solid(
        canvas,
        Path()
          ..addRRect(
            RRect.fromRectAndRadius(
              const Rect.fromLTWH(45, 5, 10, 27),
              const Radius.circular(1),
            ),
          )
          ..addRRect(
            RRect.fromRectAndRadius(
              const Rect.fromLTWH(36, 13, 28, 9),
              const Radius.circular(1),
            ),
          ),
      );
    } else if (type == 'n') {
      canvas.drawCircle(const Offset(48, 28), 3, Paint()..color = _outline);
      canvas.drawLine(
        const Offset(21, 40),
        const Offset(32, 42),
        Paint()
          ..color = _outline
          ..strokeWidth = 1.8,
      );
      final mane = Path()
        ..moveTo(58, 23)
        ..quadraticBezierTo(74, 40, 67, 62);
      canvas.drawPath(
        mane,
        Paint()
          ..color = _outline
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      );
    }
    _solid(
      canvas,
      Path()..addRRect(
        RRect.fromRectAndRadius(
          const Rect.fromLTWH(29, 69, 42, 8),
          const Radius.circular(3),
        ),
      ),
    );
    _solid(
      canvas,
      Path()..addRRect(
        RRect.fromRectAndRadius(
          const Rect.fromLTWH(21, 77, 58, 10),
          const Radius.circular(4),
        ),
      ),
    );
    canvas.drawArc(
      const Rect.fromLTWH(23, 75, 54, 10),
      3.14,
      3.14,
      false,
      Paint()
        ..color = Colors.white.withValues(alpha: white ? 0.9 : 0.35)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5,
    );
    canvas.restore();
  }

  Color get _outline =>
      white ? const Color(0xFF626A70) : const Color(0xFF080D13);

  void _solid(Canvas canvas, Path path) {
    canvas.drawPath(
      path.shift(const Offset(2.5, 2.5)),
      Paint()..color = Colors.black45,
    );
    canvas.drawPath(
      path,
      Paint()
        ..shader = LinearGradient(
          colors: white
              ? const [
                  Color(0xFFB6BFC5),
                  Color(0xFFFFFFFF),
                  Color(0xFFE9EDF0),
                  Color(0xFF87939D),
                ]
              : const [
                  Color(0xFF111923),
                  Color(0xFF778A99),
                  Color(0xFF303F4C),
                  Color(0xFF0A1018),
                ],
          stops: const [0, 0.35, 0.6, 1],
        ).createShader(const Rect.fromLTWH(20, 0, 60, 100)),
    );
    canvas.drawPath(
      path,
      Paint()
        ..color = _outline
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(covariant _SculptedPiecePainter oldDelegate) =>
      oldDelegate.type != type || oldDelegate.white != white;
}
