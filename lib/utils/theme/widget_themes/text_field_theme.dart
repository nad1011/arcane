import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CusTextFormFieldTheme {
  CusTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CusColors.primary,
    suffixIconColor: CusColors.primary,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle:
        const TextStyle().copyWith(fontSize: CusSizes.fontSizeXl, color: CusColors.textSecondary),
    hintStyle:
        const TextStyle().copyWith(fontSize: CusSizes.fontSizeXl, color: CusColors.textPrimary),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: CusColors.textPrimary.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderPrimary),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderPrimary),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderPrimary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: CusColors.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: CusColors.secondary,
    suffixIconColor: CusColors.secondary,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle:
        const TextStyle().copyWith(fontSize: CusSizes.fontSizeXl, color: CusColors.textWhite),
    hintStyle:
        const TextStyle().copyWith(fontSize: CusSizes.fontSizeXl, color: CusColors.textWhite),
    floatingLabelStyle: const TextStyle().copyWith(color: CusColors.textWhite.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderSecondary),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderSecondary),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.borderSecondary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: CusColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CusSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: CusColors.error),
    ),
  );
}
