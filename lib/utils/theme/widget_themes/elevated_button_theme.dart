import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusElevatedButtonTheme {
  // Make the class singleton - This means that the class will only be instantiated once
  CusElevatedButtonTheme._();

  // Light theme
  static final lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CusColors.primaryBackground,
      backgroundColor: CusColors.buttonPrimary,
      disabledBackgroundColor: CusColors.buttonDisabled,
      disabledForegroundColor: CusColors.buttonDisabled,
      side: const BorderSide(
        color: CusColors.white,
        width: 0,
      ),
      padding: const EdgeInsets.all(CusSizes.md),
      textStyle: const TextStyle(
          fontSize: CusSizes.fontSizeLg,
          fontWeight: FontWeight.w600,
          color: CusColors.textWhite),
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(CusSizes.borderRadiusLg)),
      ),
    ),
  );

  // Dark theme
  static final darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CusColors.primaryBackground,
      backgroundColor: CusColors.buttonSecondary,
      disabledBackgroundColor: CusColors.buttonDisabled,
      disabledForegroundColor: CusColors.buttonDisabled,
      side: const BorderSide(
        width: 0,
      ),
      padding: const EdgeInsets.all(CusSizes.md),
      textStyle: const TextStyle(
          fontSize: CusSizes.fontSizeLg,
          fontWeight: FontWeight.w600,
          color: CusColors.textWhite),
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(CusSizes.borderRadiusLg)),
      ),
    ),
  );
}
