import 'package:flutter/material.dart';

class CusCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    final firstControlPoint = Offset(0, size.height - 15);
    final firstEndPoint = Offset(40, size.height - 15);
    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width - 40, size.height - 15);

    final secondControlPoint = Offset(size.width, size.height - 15);
    final secondEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
