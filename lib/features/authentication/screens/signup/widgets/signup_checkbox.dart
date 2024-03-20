import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupCheckbox extends StatelessWidget {
  const SignupCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);
    return Row(children: [
      SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {})),
      const SizedBox(width: CusSizes.spaceBtwItems),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${CusTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color:
                        isDark ? CusColors.textWhite : CusColors.textSecondary,
                  ),
            ),
            TextSpan(
              text: '${CusTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? CusColors.textSecondary : CusColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? CusColors.textSecondary : CusColors.primary,
                  ),
            ),
            TextSpan(
              text: '${CusTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color:
                        isDark ? CusColors.textWhite : CusColors.textSecondary,
                  ),
            ),
            TextSpan(
              text: CusTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? CusColors.textSecondary : CusColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? CusColors.textSecondary : CusColors.primary,
                  ),
            ),
          ],
        ),
      )
    ]);
  }
}
