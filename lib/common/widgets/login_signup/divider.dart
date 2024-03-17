import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CusDivider extends StatelessWidget {
  const CusDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: isDark ? CusColors.white : CusColors.grey,
          thickness: 0.8,
          indent: 40,
          endIndent: 8,
        )),
        Text(text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isDark ? CusColors.textWhite : CusColors.textSecondary)),
        Flexible(
            child: Divider(
          color: isDark ? CusColors.textWhite : CusColors.grey,
          thickness: 0.8,
          indent: 8,
          endIndent: 40,
        ))
      ],
    );
  }
}
