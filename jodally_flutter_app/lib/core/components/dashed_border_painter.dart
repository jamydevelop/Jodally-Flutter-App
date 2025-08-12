import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashWidth;
  final double dashSpace;

  DashedBorderPainter({
    this.color = Colors.lightBlue,
    this.strokeWidth = 2.0,
    this.dashWidth = 5.0,
    this.dashSpace = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final double offset = (dashWidth + dashSpace) / 2;

    // Draw top border (left to right) with offset
    double startX = offset;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }

    // Draw right border (top to bottom) with offset
    double startY = offset;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width, startY),
        Offset(size.width, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }

    // Draw bottom border (left to right) with offset
    startX = offset;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height),
        Offset(startX + dashWidth, size.height),
        paint,
      );
      startX += dashWidth + dashSpace;
    }

    // Draw left border (top to bottom) with offset
    startY = offset;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }

    // --- Draw dashes at corners properly ---

    // Top-left corner: horizontal dash + vertical dash
    canvas.drawLine(
      Offset(0, 0),
      Offset(dashWidth, 0),
      paint,
    ); // horizontal dash at top-left corner
    canvas.drawLine(
      Offset(0, 0),
      Offset(0, dashWidth),
      paint,
    ); // vertical dash at top-left corner

    // Top-right corner: horizontal dash + vertical dash
    canvas.drawLine(
      Offset(size.width - dashWidth, 0),
      Offset(size.width, 0),
      paint,
    ); // horizontal dash at top-right corner
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(size.width, dashWidth),
      paint,
    ); // vertical dash at top-right corner

    // Bottom-right corner: horizontal dash + vertical dash
    canvas.drawLine(
      Offset(size.width - dashWidth, size.height),
      Offset(size.width, size.height),
      paint,
    ); // horizontal dash at bottom-right corner
    canvas.drawLine(
      Offset(size.width, size.height - dashWidth),
      Offset(size.width, size.height),
      paint,
    ); // vertical dash at bottom-right corner

    // Bottom-left corner: horizontal dash + vertical dash
    canvas.drawLine(
      Offset(0, size.height),
      Offset(dashWidth, size.height),
      paint,
    ); // horizontal dash at bottom-left corner
    canvas.drawLine(
      Offset(0, size.height - dashWidth),
      Offset(0, size.height),
      paint,
    ); // vertical dash at bottom-left corner
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
