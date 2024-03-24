import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/device/device_utility.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    required this.hintText,
    this.showBackground = true,
    this.showBorder = false,
    this.onTap,
  });

  final IconData? icon;
  final String hintText;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = CusHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: CusSizes.defaultSpace),
        child: Container(
          width: CusDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(CusSizes.semiMd),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? CusColors.dark
                    : CusColors.light
                : CusColors.tran,
            borderRadius: BorderRadius.circular(CusSizes.borderRadiusXl),
            border:
                showBorder ? Border.all(color: CusColors.grey, width: 1) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: CusColors.darkGrey,
              ),
              const SizedBox(width: CusSizes.spaceBtwItems),
              Text(hintText, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
