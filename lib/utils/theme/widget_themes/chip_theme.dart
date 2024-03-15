import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusChipTheme {
  CusChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: CusColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: CusColors.textPrimary),
    selectedColor: CusColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: CusSizes.semiMd, vertical: CusSizes.semiMd),
    checkmarkColor: CusColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: CusColors.accent,
    labelStyle: TextStyle(color: CusColors.textWhite),
    selectedColor: CusColors.primary,
    padding: EdgeInsets.symmetric(horizontal: CusSizes.semiMd, vertical: CusSizes.semiMd),
    checkmarkColor: CusColors.white,
  );
}
