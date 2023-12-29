import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class PathPainter extends CustomPainter {
  PathPainter({required this.yOffset, required this.backgroundColor});

  final List<double> yOffset;
  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    final offset = size.width / 4;

    // paint the line
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    final path = Path()
      ..moveTo(0, size.height - 2)
      ..lineTo(1 * offset, size.height - yOffset[0])
      ..lineTo(2 * offset, size.height - yOffset[1])
      ..lineTo(3 * offset, size.height - yOffset[2])
      ..lineTo(4 * offset, size.height - yOffset[3]);

    canvas.drawPath(path, paint);

    // paint the gradient fill
    paint
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset.zero,
        [
          backgroundColor,
          backgroundColor,
        ],
      );
    path
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    canvas.drawPath(path, paint);

    // draw circle
    final paintCircle = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;
    canvas.drawCircle(
      Offset(1 * offset, size.height - yOffset[0]),
      3,
      paintCircle,
    );
    canvas.drawCircle(
      Offset(2 * offset, size.height - yOffset[1]),
      3,
      paintCircle,
    );
    canvas.drawCircle(
      Offset(3 * offset, size.height - yOffset[2]),
      3,
      paintCircle,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
