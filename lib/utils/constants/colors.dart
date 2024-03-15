import 'package:flutter/material.dart';

class CusColors {
  // Theme color
  static const Color primary = Color(0xFF61EAB3);
  static const Color secondary = Color(0xFF659C83);
  static const Color accent = Color.fromARGB(255, 117, 255, 200);

  // Text color
  static const Color textPrimary = Color(0xFF070404);
  static const Color textSecondary = Color(0xFF767676);
  static const Color textWhite = Color(0xFFEFFDF6);

  // Background color
  static const Color light = Color(0xFFEFFDF6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFD9EDDF);

  // Background Container color
  static const Color lightContainer = Color(0xFFEFFDF6);
  static Color darkContainer = CusColors.lightContainer.withOpacity(0.1);

  // Button color
  static const Color buttonPrimary = Color(0xFF00c9b7);
  static const Color buttonSecondary = Color.fromARGB(255, 0, 209, 139);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border color
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shade
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF767676);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
