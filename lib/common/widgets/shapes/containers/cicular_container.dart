import 'package:arcane/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CusContainer extends StatelessWidget {
  const CusContainer({
    super.key,
    this.height = 200,
    this.width = 200,
    this.radius = 50,
    this.padding = 0,
    this.child,
    this.color = CusColors.white,
  });

  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: color),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ));
  }
}
