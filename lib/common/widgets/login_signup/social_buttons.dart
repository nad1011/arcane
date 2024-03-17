import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border:
                Border.all(color: isDark ? CusColors.white : CusColors.grey),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                CusColors.primary.withOpacity(0.1),
              ),
            ),
            icon: const Image(
                width: CusSizes.iconLg,
                height: CusSizes.iconLg,
                image: AssetImage(CusImages.google)),
          ),
        ),
        const SizedBox(width: CusSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border:
                Border.all(color: isDark ? CusColors.white : CusColors.grey),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                CusColors.primary.withOpacity(0.1),
              ),
            ),
            icon: const Image(
                width: CusSizes.iconLg,
                height: CusSizes.iconLg,
                image: AssetImage(CusImages.facebook)),
          ),
        )
      ],
    );
  }
}
