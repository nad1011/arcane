import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusAppBarTheme {
  CusAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: CusColors.textPrimary, size: CusSizes.iconMd),
    actionsIconTheme: IconThemeData(color: CusColors.textPrimary, size: CusSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: CusSizes.fontSizeLg, fontWeight: FontWeight.w600, color: CusColors.textPrimary),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: CusColors.textWhite, size: CusSizes.iconMd),
    actionsIconTheme: IconThemeData(color: CusColors.textWhite, size: CusSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: CusSizes.fontSizeLg, fontWeight: FontWeight.w600, color: CusColors.textWhite),
  );
}
