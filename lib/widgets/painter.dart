import 'package:flutter/material.dart';
import 'package:yournews/constants.dart';

class BgPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = kprimary
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;
    Paint paint2 = Paint()
      ..color = ksecondary
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;
    Path path1 = Path();
    Path path2 = Path();

    path1.addPolygon([
      Offset(size.width * 0.87, 0),
      Offset(size.width * 0.97, 0),
      Offset(0, size.height),
      Offset(0, size.height * 0.9),
    ], true);
    path2.addPolygon([
      Offset(size.width, 0),
      Offset(size.width, size.height * 0.1),
      Offset(size.width * 0.13, size.height),
      Offset(size.width * 0.03, size.height),
    ], true);
    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(BgPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BgPainter oldDelegate) => false;
}
