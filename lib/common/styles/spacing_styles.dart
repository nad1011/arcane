import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CusSizes.appBarHeight,
    left: CusSizes.defaultSpace,
    right: CusSizes.defaultSpace,
    bottom: CusSizes.defaultSpace,
  );
}
