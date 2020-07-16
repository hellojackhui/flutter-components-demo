import 'dart:math';

import 'package:flutter/material.dart';


class CustomerPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200),
      painter: CustomerCircle(),
    );
  }
}


class CustomerCircle extends CustomPainter {
  Paint CirclePaint(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double wheelSize = min(size.width, size.height) / 2;
    double count = 6;
    double degree = (2 * pi) / count;
    Rect rect = Rect.fromCircle(center: Offset(wheelSize, wheelSize), radius: wheelSize);
    canvas.drawArc(rect, 0, degree, true, CirclePaint(Colors.red));
    canvas.drawArc(rect, degree, degree * 2, true, CirclePaint(Colors.green));
    canvas.drawArc(rect, degree * 2, degree * 3, true, CirclePaint(Colors.blue));
    canvas.drawArc(rect, degree * 3, degree * 4, true, CirclePaint(Colors.purple));
    canvas.drawArc(rect, degree * 4, degree * 5, true, CirclePaint(Colors.pink));
    canvas.drawArc(rect, degree * 5, degree * 6, true, CirclePaint(Colors.yellow));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
}