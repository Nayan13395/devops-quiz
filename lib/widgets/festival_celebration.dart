import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../services/festival_calendar_service.dart';

class FestivalCelebration extends StatefulWidget {
  const FestivalCelebration({super.key, required this.window});

  final FestivalWindow window;

  @override
  State<FestivalCelebration> createState() => _FestivalCelebrationState();
}

class _FestivalCelebrationState extends State<FestivalCelebration>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    )..repeat();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        painter: _FestivalPainter(widget.window.kind, _animation),
        size: Size.infinite,
      ),
    );
  }
}

class _FestivalPainter extends CustomPainter {
  _FestivalPainter(this.kind, Animation<double> animation)
    : _animation = animation,
      super(repaint: animation);

  final FestivalKind kind;
  final Animation<double> _animation;

  double get _phase => _animation.value;

  @override
  void paint(Canvas canvas, Size size) {
    switch (kind) {
      case FestivalKind.diwali:
        _paintDiwali(canvas, size);
      case FestivalKind.makarSankranti:
        _paintKites(canvas, size);
      case FestivalKind.holi:
        _paintHoli(canvas, size);
      case FestivalKind.ganapati:
        _paintGanapati(canvas, size);
      case FestivalKind.navratri:
        _paintFlowers(canvas, size);
      case FestivalKind.christmas:
        _paintChristmas(canvas, size);
    }
  }

  void _paintDiwali(Canvas canvas, Size size) {
    final flicker = 0.88 + math.sin(_phase * math.pi * 2) * 0.12;
    _drawLantern(canvas, Offset(size.width * 0.12, 38), 0.82);
    _drawLantern(canvas, Offset(size.width * 0.88, 38), 0.82);
    _drawDiya(canvas, Offset(size.width * 0.14, size.height - 30), flicker);
    _drawDiya(canvas, Offset(size.width * 0.86, size.height - 30), flicker);
  }

  void _paintKites(Canvas canvas, Size size) {
    for (var index = 0; index < 4; index++) {
      final direction = index.isEven ? 1.0 : -1.0;
      final drift = math.sin((_phase + index * 0.23) * math.pi * 2);
      final x = size.width * (index.isEven ? 0.17 : 0.83) + drift * 13;
      final y =
          size.height * (0.15 + index * 0.105) +
          math.cos((_phase + index * 0.17) * math.pi * 2) * 8;
      _drawKite(canvas, Offset(x, y), direction, index);
    }
  }

  void _paintHoli(Canvas canvas, Size size) {
    final palette = [
      Colors.pink,
      Colors.deepPurple,
      Colors.orange,
      Colors.lightGreen,
      Colors.cyan,
    ];
    final spots = [
      Offset(size.width * 0.07, size.height * 0.25),
      Offset(size.width * 0.93, size.height * 0.31),
      Offset(size.width * 0.06, size.height * 0.72),
      Offset(size.width * 0.94, size.height * 0.68),
    ];

    for (var index = 0; index < spots.length; index++) {
      _drawColorBurst(
        canvas,
        spots[index],
        palette[index],
        math.sin((_phase + index * 0.25) * math.pi * 2),
      );
    }
  }

  void _paintGanapati(Canvas canvas, Size size) {
    final float = math.sin(_phase * math.pi * 2) * 3;
    _drawGanapati(
      canvas,
      Offset(size.width * 0.86, size.height * 0.84 + float),
      size.shortestSide * 0.18,
    );
  }

  void _paintFlowers(Canvas canvas, Size size) {
    const colors = [Colors.deepOrange, Colors.pink, Colors.amber, Colors.red];
    for (var index = 0; index < 14; index++) {
      final progress = (_phase + index / 14) % 1;
      final x =
          size.width * (index.isEven ? 0.08 : 0.92) +
          math.sin((progress + index) * math.pi * 2) * 16;
      final y = progress * size.height;
      _drawFlower(canvas, Offset(x, y), colors[index % colors.length], 5.5);
      if (index.isOdd) {
        _drawFlower(
          canvas,
          Offset(x + 13, y - 10),
          colors[(index + 2) % colors.length],
          3.5,
        );
      }
    }
  }

  void _paintChristmas(Canvas canvas, Size size) {
    final snowPaint = Paint()..color = Colors.lightBlue.withValues(alpha: 0.32);
    for (var index = 0; index < 34; index++) {
      final progress = (_phase + index / 34) % 1;
      final x =
          ((index * 73.0) % size.width) +
          math.sin((progress + index) * math.pi * 2) * 5;
      final y = progress * size.height;
      canvas.drawCircle(Offset(x, y), index % 4 == 0 ? 2 : 1.2, snowPaint);
    }
    _drawSnowman(canvas, Offset(size.width * 0.88, size.height - 56));
  }

  void _drawLantern(Canvas canvas, Offset center, double scale) {
    final linePaint = Paint()
      ..color = Colors.deepOrange.withValues(alpha: 0.3)
      ..strokeWidth = 1.4;
    final bodyPaint = Paint()
      ..color = Colors.deepOrange.withValues(alpha: 0.22)
      ..style = PaintingStyle.fill;
    final borderPaint = Paint()
      ..color = Colors.amber.withValues(alpha: 0.56)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawLine(
      Offset(center.dx, center.dy - 34 * scale),
      Offset(center.dx, center.dy - 14 * scale),
      linePaint,
    );
    final shape = Path()
      ..moveTo(center.dx - 11 * scale, center.dy - 14 * scale)
      ..lineTo(center.dx + 11 * scale, center.dy - 14 * scale)
      ..lineTo(center.dx + 9 * scale, center.dy + 11 * scale)
      ..lineTo(center.dx, center.dy + 19 * scale)
      ..lineTo(center.dx - 9 * scale, center.dy + 11 * scale)
      ..close();
    canvas.drawPath(shape, bodyPaint);
    canvas.drawPath(shape, borderPaint);
    canvas.drawLine(
      Offset(center.dx - 8 * scale, center.dy - 5 * scale),
      Offset(center.dx + 8 * scale, center.dy - 5 * scale),
      borderPaint,
    );
  }

  void _drawDiya(Canvas canvas, Offset center, double flicker) {
    final bowl = Paint()..color = const Color(0xC4C87524);
    final rim = Paint()
      ..color = const Color(0xDDF1B94E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    final bowlPath = Path()
      ..moveTo(center.dx - 18, center.dy - 2)
      ..quadraticBezierTo(
        center.dx,
        center.dy + 13,
        center.dx + 18,
        center.dy - 2,
      )
      ..quadraticBezierTo(
        center.dx + 14,
        center.dy + 9,
        center.dx,
        center.dy + 10,
      )
      ..quadraticBezierTo(
        center.dx - 14,
        center.dy + 9,
        center.dx - 18,
        center.dy - 2,
      )
      ..close();
    canvas.drawPath(bowlPath, bowl);
    canvas.drawLine(
      Offset(center.dx - 18, center.dy - 2),
      Offset(center.dx + 18, center.dy - 2),
      rim,
    );

    final flame = Path()
      ..moveTo(center.dx, center.dy - 4)
      ..cubicTo(
        center.dx - 8 * flicker,
        center.dy - 14,
        center.dx + 1,
        center.dy - 22 * flicker,
        center.dx + 2,
        center.dy - 28 * flicker,
      )
      ..cubicTo(
        center.dx + 13,
        center.dy - 17,
        center.dx + 8 * flicker,
        center.dy - 9,
        center.dx,
        center.dy - 4,
      )
      ..close();
    canvas.drawPath(
      flame,
      Paint()..color = Colors.orange.withValues(alpha: 0.48),
    );
    canvas.drawCircle(
      Offset(center.dx + 2, center.dy - 10),
      3,
      Paint()..color = Colors.yellow.withValues(alpha: 0.65),
    );
  }

  void _drawKite(Canvas canvas, Offset center, double direction, int index) {
    final colors = [Colors.deepOrange, Colors.teal, Colors.pink, Colors.indigo];
    final color = colors[index % colors.length].withValues(alpha: 0.28);
    const radius = 15.0;
    final kite = Path()
      ..moveTo(center.dx, center.dy - radius)
      ..lineTo(center.dx + radius * 0.72, center.dy)
      ..lineTo(center.dx, center.dy + radius)
      ..lineTo(center.dx - radius * 0.72, center.dy)
      ..close();
    canvas.drawPath(kite, Paint()..color = color);
    canvas.drawPath(
      kite,
      Paint()
        ..color = color.withValues(alpha: 0.9)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2,
    );
    canvas.drawLine(
      Offset(center.dx, center.dy + radius),
      Offset(center.dx + direction * 12, center.dy + radius + 25),
      Paint()
        ..color = color
        ..strokeWidth = 1,
    );
  }

  void _drawColorBurst(
    Canvas canvas,
    Offset center,
    Color color,
    double pulse,
  ) {
    final paint = Paint()..color = color.withValues(alpha: 0.15);
    for (var index = 0; index < 9; index++) {
      final angle = index * math.pi * 2 / 9;
      final distance = 10 + (pulse + 1) * 2;
      final point = Offset(
        center.dx + math.cos(angle) * distance,
        center.dy + math.sin(angle) * distance,
      );
      canvas.drawCircle(point, index.isEven ? 4 : 2.5, paint);
    }
    canvas.drawCircle(center, 6, paint);
  }

  void _drawGanapati(Canvas canvas, Offset center, double size) {
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.scale(size / 100);

    final halo = Paint()
      ..color = Colors.amber.withValues(alpha: 0.12)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;
    canvas.drawCircle(Offset.zero, 43, halo);

    final gold = Paint()..color = const Color(0xBDE3A34B);
    final warm = Paint()..color = const Color(0xBDEB9A72);
    canvas.drawOval(const Rect.fromLTRB(-34, -15, -12, 12), warm);
    canvas.drawOval(const Rect.fromLTRB(12, -15, 34, 12), warm);
    canvas.drawOval(const Rect.fromLTRB(-20, 4, 20, 40), gold);
    canvas.drawCircle(const Offset(0, -9), 19, warm);

    final crown = Path()
      ..moveTo(-14, -25)
      ..lineTo(-9, -40)
      ..lineTo(0, -33)
      ..lineTo(9, -40)
      ..lineTo(14, -25)
      ..close();
    canvas.drawPath(crown, gold);

    final trunk = Path()
      ..moveTo(1, -1)
      ..cubicTo(7, 6, 8, 11, 2, 16)
      ..cubicTo(-4, 20, -4, 27, 3, 28);
    canvas.drawPath(
      trunk,
      Paint()
        ..color = const Color(0xFFD98761)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawCircle(const Offset(-7, -11), 1.8, gold);
    canvas.drawCircle(const Offset(7, -11), 1.8, gold);
    canvas.drawLine(const Offset(-25, 43), const Offset(25, 43), gold);
    canvas.restore();
  }

  void _drawFlower(Canvas canvas, Offset center, Color color, double radius) {
    final petalPaint = Paint()..color = color.withValues(alpha: 0.25);
    final centerPaint = Paint()..color = Colors.amber.withValues(alpha: 0.38);
    for (var petal = 0; petal < 5; petal++) {
      final angle = petal * math.pi * 2 / 5;
      final offset = Offset(
        center.dx + math.cos(angle) * radius * 0.7,
        center.dy + math.sin(angle) * radius * 0.7,
      );
      canvas.drawOval(
        Rect.fromCenter(center: offset, width: radius, height: radius * 0.7),
        petalPaint,
      );
    }
    canvas.drawCircle(center, radius * 0.25, centerPaint);
  }

  void _drawSnowman(Canvas canvas, Offset center) {
    final snow = Paint()..color = Colors.lightBlue.withValues(alpha: 0.26);
    final detail = Paint()..color = Colors.deepOrange.withValues(alpha: 0.35);
    canvas.drawCircle(Offset(center.dx, center.dy + 17), 17, snow);
    canvas.drawCircle(Offset(center.dx, center.dy - 5), 12, snow);
    canvas.drawCircle(Offset(center.dx - 4, center.dy - 8), 1.2, detail);
    canvas.drawCircle(Offset(center.dx + 4, center.dy - 8), 1.2, detail);
    final nose = Path()
      ..moveTo(center.dx, center.dy - 4)
      ..lineTo(center.dx + 8, center.dy - 1)
      ..lineTo(center.dx, center.dy + 1)
      ..close();
    canvas.drawPath(nose, detail);
  }

  @override
  bool shouldRepaint(covariant _FestivalPainter oldDelegate) =>
      oldDelegate.kind != kind || oldDelegate._phase != _phase;
}
