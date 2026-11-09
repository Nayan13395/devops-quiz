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
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _animation.stop();
    } else if (!_animation.isAnimating) {
      _animation.repeat();
    }
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Semantics(
        label: widget.window.label,
        image: true,
        child: CustomPaint(
          painter: _FestivalPainter(widget.window, _animation),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class _FestivalPainter extends CustomPainter {
  _FestivalPainter(this.window, Animation<double> animation)
    : _animation = animation,
      super(repaint: animation);

  final FestivalWindow window;
  FestivalKind get kind => window.kind;
  final Animation<double> _animation;

  double get _phase => _animation.value;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.clipRect(Offset.zero & size);
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
      case FestivalKind.halloween:
        _paintHalloween(canvas, size);
      case FestivalKind.peace:
        _paintPeace(canvas, size);
      case FestivalKind.sports:
        _paintWorldDay(canvas, size, Icons.sports_soccer_rounded, Colors.teal);
      case FestivalKind.animals:
        _paintWorldDay(canvas, size, Icons.pets_rounded, Colors.green);
      case FestivalKind.nationalDay:
        if (window.countryCode == 'IN') {
          _paintIndianFlag(canvas, size);
        } else {
          _paintNationalDay(canvas, size);
        }
    }
    canvas.restore();
  }

  void _paintHalloween(Canvas canvas, Size size) {
    final bob = math.sin(_phase * math.pi * 2) * 4;
    for (final fraction in [0.1, 0.9]) {
      canvas.save();
      canvas.translate(size.width * fraction, size.height - 42 + bob);
      canvas.drawOval(
        const Rect.fromLTWH(-23, -19, 46, 36),
        Paint()..color = const Color(0xC9F28A28),
      );
      canvas.drawOval(
        const Rect.fromLTWH(-12, -19, 24, 36),
        Paint()
          ..color = const Color(0xFFEFA128)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      );
      canvas.drawLine(
        const Offset(0, -18),
        const Offset(4, -27),
        Paint()
          ..color = Colors.green.shade800
          ..strokeWidth = 5,
      );
      for (final direction in [-1.0, 1.0]) {
        final eye = Path()
          ..moveTo(direction * 12, -9)
          ..lineTo(direction * 4, -9)
          ..lineTo(direction * 8, -2)
          ..close();
        canvas.drawPath(eye, Paint()..color = const Color(0xFF54341F));
      }
      canvas.drawArc(
        const Rect.fromLTWH(-10, -4, 20, 15),
        0,
        math.pi,
        false,
        Paint()
          ..color = const Color(0xFF54341F)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.5,
      );
      canvas.restore();
    }
  }

  void _paintPeace(Canvas canvas, Size size) {
    final bob = math.sin(_phase * math.pi * 2) * 4;
    for (final fraction in [0.1, 0.9]) {
      final center = Offset(size.width * fraction, size.height - 45 + bob);
      final paint = Paint()
        ..color = Colors.teal.withValues(alpha: 0.65)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2;
      canvas.drawCircle(center, 17, paint);
      canvas.drawLine(
        center + const Offset(0, -17),
        center + const Offset(0, 17),
        paint,
      );
      canvas.drawLine(center, center + const Offset(-12, 12), paint);
      canvas.drawLine(center, center + const Offset(12, 12), paint);
      for (int leaf = 0; leaf < 5; leaf++) {
        canvas.drawOval(
          Rect.fromCenter(
            center: center + Offset(-22 + leaf * 3, 24 - leaf * 4),
            width: 8,
            height: 4,
          ),
          Paint()..color = Colors.green.withValues(alpha: 0.55),
        );
      }
    }
  }

  void _paintWorldDay(Canvas canvas, Size size, IconData icon, Color colour) {
    for (int index = 0; index < 4; index++) {
      final position = Offset(
        size.width * (index.isEven ? 0.06 : 0.94) - 14,
        size.height * (0.2 + index * 0.2) +
            math.sin((_phase + index * 0.2) * math.pi * 2) * 8,
      );
      final text = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: String.fromCharCode(icon.codePoint),
          style: TextStyle(
            fontFamily: icon.fontFamily,
            fontSize: 28,
            color: colour.withValues(alpha: 0.38),
          ),
        ),
      )..layout();
      text.paint(canvas, position);
    }
  }

  void _paintIndianFlag(Canvas canvas, Size size) {
    final width = math.min(120.0, size.width * 0.27);
    final height = width * 2 / 3;
    final origin = Offset(size.width * 0.05, size.height - height - 32);
    canvas.drawLine(
      origin + const Offset(0, -8),
      origin + Offset(0, height + 24),
      Paint()
        ..color = const Color(0xFF68737D)
        ..strokeWidth = 2,
    );
    final colours = [
      const Color(0xFFFF9933),
      Colors.white,
      const Color(0xFF138808),
    ];
    for (int band = 0; band < 3; band++) {
      final path = Path();
      for (int index = 0; index <= 30; index++) {
        final progress = index / 30;
        final wave =
            math.sin(progress * math.pi * 2 - _phase * math.pi * 4) *
            4 *
            progress;
        final point =
            origin + Offset(progress * width, band * height / 3 + wave);
        if (index == 0) {
          path.moveTo(point.dx, point.dy);
        } else {
          path.lineTo(point.dx, point.dy);
        }
      }
      for (int index = 30; index >= 0; index--) {
        final progress = index / 30;
        final wave =
            math.sin(progress * math.pi * 2 - _phase * math.pi * 4) *
            4 *
            progress;
        final point =
            origin + Offset(progress * width, (band + 1) * height / 3 + wave);
        path.lineTo(point.dx, point.dy);
      }
      canvas.drawPath(path..close(), Paint()..color = colours[band]);
    }
    final wheel =
        origin +
        Offset(
          width / 2,
          height / 2 + math.sin(math.pi - _phase * math.pi * 4) * 2,
        );
    final radius = height * 0.13;
    final chakra = Paint()
      ..color = const Color(0xFF000080)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;
    canvas.drawCircle(wheel, radius, chakra);
    canvas.drawCircle(wheel, 1.3, Paint()..color = const Color(0xFF000080));
    for (int spoke = 0; spoke < 24; spoke++) {
      final angle = spoke * math.pi * 2 / 24;
      canvas.drawLine(
        wheel,
        wheel + Offset(math.cos(angle), math.sin(angle)) * radius,
        chakra,
      );
    }
  }

  void _paintNationalDay(Canvas canvas, Size size) {
    const colours = [Colors.red, Colors.blue, Colors.green, Colors.amber];
    for (int index = 0; index < 18; index++) {
      final progress = (_phase + index / 18) % 1;
      final x =
          size.width * (index.isEven ? 0.05 : 0.95) +
          math.sin(progress * math.pi * 2 + index) * 9;
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(x, size.height * progress),
          width: 4,
          height: 7,
        ),
        Paint()
          ..color = colours[index % colours.length].withValues(alpha: 0.45),
      );
    }
  }

  void _paintDiwali(Canvas canvas, Size size) {
    final flicker = 0.88 + math.sin(_phase * math.pi * 2) * 0.12;
    final unit = (size.shortestSide / 360).clamp(0.58, 1.12);
    _drawMarigoldGarland(canvas, size, unit);

    final sideLanternY = math.min(size.height * 0.19, 70 * unit);
    final centerLanternY = math.min(size.height * 0.1, 37 * unit);
    _drawLantern(canvas, Offset(size.width * 0.13, sideLanternY), unit * 0.68);
    _drawLantern(canvas, Offset(size.width * 0.87, sideLanternY), unit * 0.68);
    if (size.width >= 720 && size.height >= 600) {
      _drawLantern(
        canvas,
        Offset(size.width * 0.5, centerLanternY),
        unit * 0.8,
      );
    }

    final diyaY = size.height - 42 * unit;
    final rangoliY = size.height - 16 * unit;
    _drawRangoli(canvas, Offset(size.width * 0.14, rangoliY), unit * 0.9);
    _drawRangoli(canvas, Offset(size.width * 0.86, rangoliY), unit * 0.9);
    _drawDiya(canvas, Offset(size.width * 0.14, diyaY), flicker, unit);
    _drawDiya(canvas, Offset(size.width * 0.86, diyaY), flicker, unit);
  }

  void _drawMarigoldGarland(Canvas canvas, Size size, double unit) {
    final path = Path()
      ..moveTo(0, 0)
      ..quadraticBezierTo(size.width * 0.25, 34 * unit, size.width * 0.5, 0)
      ..quadraticBezierTo(size.width * 0.75, 34 * unit, size.width, 0);
    final garlandPaint = Paint()
      ..color = const Color(0xFFD8A437)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2 * unit
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, garlandPaint);

    final metric = path.computeMetrics().first;
    final marigold = Paint()..color = const Color(0xFFF2A51A);
    for (double distance = 0; distance <= metric.length; distance += 5 * unit) {
      final point = metric.getTangentForOffset(distance)!.position;
      canvas.drawCircle(point, 3.2 * unit, marigold);
      canvas.drawCircle(
        point + Offset(1.2 * unit, -1.2 * unit),
        1.1 * unit,
        Paint()..color = const Color(0xFFFFD35A),
      );
    }

    for (final x in [size.width * 0.13, size.width * 0.5, size.width * 0.87]) {
      final drop = x == size.width * 0.5 ? 43 * unit : 27 * unit;
      for (double y = 8 * unit; y < drop; y += 6 * unit) {
        canvas.drawCircle(
          Offset(x, y),
          2.6 * unit,
          Paint()..color = const Color(0xFFE99A19),
        );
      }
    }

    final orange = Paint()..color = const Color(0xFFF28C18);
    final yellow = Paint()..color = const Color(0xFFFFD447);
    final orangeCenter = Paint()..color = const Color(0xFFD56D11);
    final yellowCenter = Paint()..color = const Color(0xFFE8AD24);
    for (final x in [8 * unit, size.width - 8 * unit]) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height - 8 * unit),
        garlandPaint,
      );
      int bloom = 0;
      for (double y = 8 * unit; y <= size.height - 8 * unit; y += 10.5 * unit) {
        final isOrange = (bloom ~/ 3).isEven;
        final petals = isOrange ? orange : yellow;
        final center = Offset(x, y);
        for (int petal = 0; petal < 8; petal++) {
          final angle = petal * math.pi / 4;
          canvas.drawCircle(
            center + Offset(math.cos(angle), math.sin(angle)) * 3.65 * unit,
            2.15 * unit,
            petals,
          );
        }
        canvas.drawCircle(center, 3.6 * unit, petals);
        canvas.drawCircle(
          center,
          1.8 * unit,
          isOrange ? orangeCenter : yellowCenter,
        );
        bloom++;
      }
    }
  }

  void _drawRangoli(Canvas canvas, Offset center, double scale) {
    final line = Paint()
      ..color = const Color(0xFF5C4288).withValues(alpha: 0.72)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.1 * scale;
    final gold = Paint()
      ..color = const Color(0xFFE8B84E).withValues(alpha: 0.9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.3 * scale;
    canvas.drawOval(
      Rect.fromCenter(center: center, width: 58 * scale, height: 20 * scale),
      line,
    );
    canvas.drawOval(
      Rect.fromCenter(center: center, width: 42 * scale, height: 14 * scale),
      gold,
    );
    for (int petal = 0; petal < 8; petal++) {
      final angle = petal * math.pi / 4;
      final offset = Offset(math.cos(angle), math.sin(angle));
      final petalCenter = center + offset * 11 * scale;
      canvas.drawOval(
        Rect.fromCenter(
          center: petalCenter,
          width: 7 * scale,
          height: 3 * scale,
        ),
        line..style = PaintingStyle.fill,
      );
    }
    canvas.drawCircle(
      center,
      2 * scale,
      Paint()..color = const Color(0xFFD7A63A),
    );
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
    final artworkScale = scale * 0.4;
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.scale(artworkScale);
    canvas.translate(-120, -139);

    final suspension = Path()
      ..moveTo(120, 25)
      ..lineTo(120, 55)
      ..moveTo(81, 61)
      ..lineTo(120, 25)
      ..lineTo(159, 61);
    canvas.drawPath(
      suspension,
      Paint()
        ..color = const Color(0xFF987431)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.6,
    );

    final body = Path()
      ..addPolygon(const [
        Offset(82, 75),
        Offset(158, 75),
        Offset(200, 139),
        Offset(158, 203),
        Offset(82, 203),
        Offset(40, 139),
      ], true);
    final gold = const LinearGradient(
      colors: [
        Color(0xFFAA6813),
        Color(0xFFFFEAA0),
        Color(0xFFEFC44F),
        Color(0xFFAD741B),
      ],
      stops: [0, 0.35, 0.65, 1],
    ).createShader(const Rect.fromLTWH(40, 55, 160, 168));
    canvas.drawPath(body, Paint()..color = const Color(0xFFF6BC3B));

    final panels = [
      (
        const [
          Offset(82, 76),
          Offset(120, 139),
          Offset(82, 202),
          Offset(41, 139),
        ],
        const Color(0xFFB43770),
      ),
      (
        const [
          Offset(158, 76),
          Offset(199, 139),
          Offset(158, 202),
          Offset(120, 139),
        ],
        const Color(0xFF268B84),
      ),
      (
        const [Offset(87, 81), Offset(153, 81), Offset(120, 132)],
        const Color(0xFFF5D04E),
      ),
      (
        const [Offset(120, 146), Offset(153, 197), Offset(87, 197)],
        const Color(0xFF89A943),
      ),
    ];
    for (final (vertices, color) in panels) {
      canvas.drawPath(
        Path()..addPolygon(vertices, true),
        Paint()..color = color,
      );
    }
    final seams = Path()
      ..moveTo(82, 75)
      ..lineTo(120, 139)
      ..lineTo(158, 75)
      ..moveTo(82, 203)
      ..lineTo(120, 139)
      ..lineTo(158, 203);
    canvas.drawPath(
      seams,
      Paint()
        ..shader = gold
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4,
    );
    canvas.drawPath(
      body,
      Paint()
        ..shader = gold
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );

    final inlay = Path()
      ..moveTo(83, 94)
      ..lineTo(54, 139)
      ..lineTo(83, 184)
      ..moveTo(157, 94)
      ..lineTo(186, 139)
      ..lineTo(157, 184);
    canvas.drawPath(
      inlay,
      Paint()
        ..color = const Color(0xFFFFF0B6)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5,
    );
    _drawKandilFlower(canvas, const Offset(82, 139), 1.45);
    _drawKandilFlower(canvas, const Offset(158, 139), 1.45);
    _drawKandilFlower(canvas, const Offset(120, 102), 0.9);
    _drawKandilFlower(canvas, const Offset(120, 182), 0.9);

    const fringeColors = [
      Color(0xFFDB3A54),
      Color(0xFFF0A941),
      Color(0xFF6D9B46),
    ];
    for (int strand = 0; strand < 10; strand++) {
      final start = 85 + strand * 7.8;
      final end = 360.0 + (strand % 3) * 8;
      final strip = Path()
        ..moveTo(start, 218)
        ..cubicTo(start + 4, 266, start - 6, 320, start - 4, end);
      canvas.drawPath(
        strip,
        Paint()
          ..color = fringeColors[strand % fringeColors.length]
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5.5,
      );
    }
    for (final collar in const [
      Rect.fromLTWH(79, 55, 82, 25),
      Rect.fromLTWH(79, 200, 82, 23),
    ]) {
      final shape = RRect.fromRectAndRadius(collar, const Radius.circular(2));
      canvas.drawRRect(shape, Paint()..color = const Color(0xFF385E4F));
      canvas.drawRRect(
        shape,
        Paint()
          ..shader = gold
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3,
      );
      for (final horizontal in [94.0, 120.0, 146.0]) {
        _drawKandilFlower(canvas, Offset(horizontal, collar.center.dy), 0.85);
      }
    }
    canvas.restore();
  }

  void _drawKandilFlower(Canvas canvas, Offset center, double scale) {
    final petals = Paint()..color = const Color(0xFFFFDF81);
    for (int petal = 0; petal < 4; petal++) {
      canvas.save();
      canvas.translate(center.dx, center.dy);
      canvas.rotate(petal * math.pi / 2);
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(0, -6 * scale),
          width: 5.8 * scale,
          height: 9.4 * scale,
        ),
        petals,
      );
      canvas.restore();
    }
    canvas.drawCircle(
      center,
      2.5 * scale,
      Paint()..color = const Color(0xFFFFF2AD),
    );
  }

  void _drawDiya(Canvas canvas, Offset center, double flicker, double scale) {
    Offset point(double x, double y) => center + Offset(x * scale, y * scale);
    final glow = Paint()..color = const Color(0x30FFC45A);
    canvas.drawCircle(point(0, -12), 34 * scale, glow);
    final bowl = Paint()..color = const Color(0xFFFFC91D);
    final rim = Paint()
      ..color = const Color(0xFFFFD47A)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5 * scale
      ..strokeCap = StrokeCap.round;
    final bowlPath = Path()
      ..moveTo(point(-34, -4).dx, point(-34, -4).dy)
      ..quadraticBezierTo(
        point(-21, 12).dx,
        point(-21, 12).dy,
        point(0, 14).dx,
        point(0, 14).dy,
      )
      ..quadraticBezierTo(
        point(21, 12).dx,
        point(21, 12).dy,
        point(34, -4).dx,
        point(34, -4).dy,
      )
      ..quadraticBezierTo(
        point(29, 22).dx,
        point(29, 22).dy,
        point(0, 26).dx,
        point(0, 26).dy,
      )
      ..quadraticBezierTo(
        point(-29, 22).dx,
        point(-29, 22).dy,
        point(-34, -4).dx,
        point(-34, -4).dy,
      )
      ..close();
    canvas.drawPath(bowlPath, bowl);
    canvas.drawLine(point(-34, -4), point(34, -4), rim);
    canvas.drawOval(
      Rect.fromCenter(
        center: point(0, 1),
        width: 52 * scale,
        height: 9 * scale,
      ),
      Paint()..color = const Color(0xFFEF7A18),
    );
    final decoration = Paint()
      ..color = const Color(0xFF7D2871)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4 * scale;
    final bowlMotif = Path()
      ..moveTo(point(-21, 8).dx, point(-21, 8).dy)
      ..quadraticBezierTo(
        point(0, 19).dx,
        point(0, 19).dy,
        point(21, 8).dx,
        point(21, 8).dy,
      );
    canvas.drawPath(bowlMotif, decoration);
    for (final petal in [-1.0, 0.0, 1.0]) {
      canvas.drawOval(
        Rect.fromCenter(
          center: point(petal * 7, 14 + (petal == 0 ? 0 : 1)),
          width: 6 * scale,
          height: 3.8 * scale,
        ),
        Paint()..color = const Color(0xFF8D3475),
      );
    }
    canvas.drawCircle(
      point(0, 14),
      2 * scale,
      Paint()..color = const Color(0xFFE95354),
    );
    canvas.drawLine(
      point(0, -5),
      point(0, -14),
      Paint()
        ..color = const Color(0xFF66371F)
        ..strokeWidth = 1.5 * scale
        ..strokeCap = StrokeCap.round,
    );

    final flameSway = math.sin(_phase * math.pi * 2) * 1.4;
    final flame = Path()
      ..moveTo(point(0, -12).dx, point(0, -12).dy)
      ..cubicTo(
        point(-7 * flicker, -20).dx + flameSway,
        point(-7 * flicker, -20).dy,
        point(-10 + flameSway, -33 * flicker).dx,
        point(-10 + flameSway, -33 * flicker).dy,
        point(0 + flameSway, -44 * flicker).dx,
        point(0 + flameSway, -44 * flicker).dy,
      )
      ..cubicTo(
        point(11 + flameSway, -32).dx,
        point(11 + flameSway, -32).dy,
        point(8 * flicker, -18).dx,
        point(8 * flicker, -18).dy,
        point(0, -12).dx,
        point(0, -12).dy,
      )
      ..close();
    canvas.drawPath(flame, Paint()..color = const Color(0xFFFFA900));
    final innerFlame = Path()
      ..moveTo(point(0, -14).dx, point(0, -14).dy)
      ..quadraticBezierTo(
        point(-4, -23).dx + flameSway / 2,
        point(-4, -23).dy,
        point(1 + flameSway, -36 * flicker).dx,
        point(1 + flameSway, -36 * flicker).dy,
      )
      ..quadraticBezierTo(
        point(8, -23).dx,
        point(8, -23).dy,
        point(0, -14).dx,
        point(0, -14).dy,
      )
      ..close();
    canvas.drawPath(innerFlame, Paint()..color = const Color(0xFFFFE99B));
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
