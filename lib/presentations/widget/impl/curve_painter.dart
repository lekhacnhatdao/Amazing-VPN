import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  CurvePainter({
    required this.color,
    this.kCurveHeight = 32,
  });

  final Color color;
  final double kCurveHeight;

  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - kCurveHeight);
    p.relativeQuadraticBezierTo(
      size.width / 2,
      2 * kCurveHeight,
      size.width,
      0,
    );
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
