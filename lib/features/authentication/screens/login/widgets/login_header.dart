import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              isDark ? CusImages.darkAppLogo : CusImages.lightAppLogo),
          height: 150,
        ),
        Text(CusTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: isDark ? CusColors.secondary : CusColors.primary)),
        const SizedBox(height: CusSizes.sm),
        Text(CusTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
