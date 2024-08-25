import 'package:flutter/material.dart';

import 'dot.dart';

class AxisPainter extends CustomPainter {
  final List<Dot> dots;
  final String xAxisTopText;
  final String xAxisBottomText;
  final String yAxisLeftText;
  final String yAxisRightText;

  AxisPainter({
    required this.dots,
    required this.xAxisTopText,
    required this.xAxisBottomText,
    required this.yAxisLeftText,
    required this.yAxisRightText,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    // Draw X-axis
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );

    // Draw Y-axis
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width / 2, size.height),
      paint,
    );

    // Draw dots
    for (var dot in dots) {
      final dotPaint = Paint()
        ..color = dot.color
        ..strokeWidth = 10
        ..style = PaintingStyle.fill;

      final Offset point = Offset(
        size.width / 2 + dot.x * size.width / 2,
        size.height / 2 - dot.y * size.height / 2,
      );

      canvas.drawCircle(point, 5, dotPaint);
    }

    // Draw X-axis top text
    _drawText(canvas, size, xAxisTopText, Offset(size.width / 2, -20), Alignment.center);

    // Draw X-axis bottom text
    _drawText(canvas, size, xAxisBottomText, Offset(size.width / 2, size.height + 20), Alignment.center);

    // Draw Y-axis left text
    _drawRotatedText(canvas, size, yAxisLeftText, Offset(-20, size.height / 2.0), -90);

    // Draw Y-axis right text
    _drawRotatedText(canvas, size, yAxisRightText, Offset(size.width + 20, size.height / 2.0),90);
  }

  void _drawRotatedText(Canvas canvas, Size size, String text, Offset offset, double angle) {
    canvas.save(); // Save the current canvas state
    canvas.translate(offset.dx, offset.dy); // Move the canvas to the text position
    canvas.rotate(angle * 3.1415927 / 180); // Rotate the canvas by the given angle

    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final position = Offset(-textPainter.width / 2, -textPainter.height / 2);
    textPainter.paint(canvas, position);

    canvas.restore(); // Restore the canvas to its original state
  }

  void _drawText(Canvas canvas, Size size, String text, Offset offset, Alignment alignment) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final position = offset - alignment.alongSize(textPainter.size);
    textPainter.paint(canvas, position);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  }