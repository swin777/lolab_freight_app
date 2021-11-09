import 'package:flutter/material.dart';

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 6, dashSpace = 8, startY = 0;
    while (startY < size.height) {
      var path = Path();
      path.moveTo(-1*dashHeight/2, startY);
      path.lineTo(dashHeight/2, startY);
      path.lineTo(0, startY+dashHeight);
      path.close();
      canvas.drawPath(path, Paint()..color = Colors.blueGrey);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}