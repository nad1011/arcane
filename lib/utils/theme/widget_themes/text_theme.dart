import 'package:arcane/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CusTextTheme {
  static final lightTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: CusColors.textPrimary),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: CusColors.textPrimary),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: CusColors.textPrimary),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: CusColors.textSecondary),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: CusColors.textSecondary),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: CusColors.textSecondary),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CusColors.textPrimary),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: CusColors.textPrimary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CusColors.textPrimary.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CusColors.textSecondary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: CusColors.textSecondary.withOpacity(0.5)),
  );

  static final darkTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: CusColors.textWhite),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: CusColors.textWhite),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: CusColors.textWhite),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: CusColors.textWhite),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: CusColors.textWhite),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: CusColors.textWhite),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CusColors.textWhite),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: CusColors.textWhite),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: CusColors.textWhite.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CusColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: CusColors.textPrimary.withOpacity(0.5)),
  );
}
