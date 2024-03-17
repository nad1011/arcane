import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusOutlinedButtonTheme {
  CusOutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: CusColors.primary,
      side: const BorderSide(color: CusColors.borderSecondary),
      textStyle: const TextStyle(
          fontSize: CusSizes.fontSizeLg,
          color: CusColors.textSecondary,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: CusSizes.md, horizontal: CusSizes.semiLg),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: CusColors.primaryBackground,
      side: const BorderSide(color: CusColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: CusSizes.fontSizeLg,
          color: CusColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: CusSizes.md, horizontal: CusSizes.semiLg),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg)),
    ),
  );
}
