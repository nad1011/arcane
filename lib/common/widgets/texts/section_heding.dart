import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.showHeadingButton = false,
    this.onPressed,
    this.textColor = CusColors.textWhite,
    required this.title,
    this.headingButtonTitle = 'View all',
  });

  final bool showHeadingButton;
  final VoidCallback? onPressed;
  final Color textColor;
  final String title;
  final String headingButtonTitle;

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: isDark ? CusColors.textWhite : CusColors.textWhite),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showHeadingButton)
          TextButton(
              onPressed: onPressed,
              child: Text(headingButtonTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: CusColors.grey))),
      ],
    );
  }
}
