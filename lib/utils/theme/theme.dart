import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/theme/widget_themes/appbar_theme.dart';
import 'package:arcane/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:arcane/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:arcane/utils/theme/widget_themes/chip_theme.dart';
import 'package:arcane/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:arcane/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:arcane/utils/theme/widget_themes/text_field_theme.dart';
import 'package:arcane/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class CusTheme {
  // Make the class singleton - This means that the class will only be instantiated once
  CusTheme._();

  // Light theme
  static final lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: CusColors.primary,
      scaffoldBackgroundColor: Colors.white,
      textTheme: CusTextTheme.lightTheme,
      elevatedButtonTheme: CusElevatedButtonTheme.lightTheme,
      outlinedButtonTheme: CusOutlinedButtonTheme.lightOutlinedButtonTheme,
      checkboxTheme: CusCheckboxTheme.lightCheckboxTheme,
      appBarTheme: CusAppBarTheme.lightAppBarTheme,
      chipTheme: CusChipTheme.lightChipTheme,
      bottomSheetTheme: CusBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: CusTextFormFieldTheme.lightInputDecorationTheme);

  // Dark theme
  static final darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: CusColors.primary,
      scaffoldBackgroundColor: Colors.black,
      textTheme: CusTextTheme.darkTheme,
      elevatedButtonTheme: CusElevatedButtonTheme.darkTheme,
      outlinedButtonTheme: CusOutlinedButtonTheme.darkOutlinedButtonTheme,
      checkboxTheme: CusCheckboxTheme.darkCheckboxTheme,
      appBarTheme: CusAppBarTheme.darkAppBarTheme,
      chipTheme: CusChipTheme.darkChipTheme,
      bottomSheetTheme: CusBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: CusTextFormFieldTheme.darkInputDecorationTheme);
}
