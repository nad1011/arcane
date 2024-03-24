import 'package:arcane/common/widgets/appbar/appbar.dart';
import 'package:arcane/common/widgets/products/cart/cart_counter_icon_button.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CusAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CusTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: CusColors.white)),
          Text(CusTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: CusColors.white)),
        ],
      ),
      actions: const [
        CartCounterIconButton(
          iconColor: CusColors.white,
          badgeColor: CusColors.warning,
        ),
      ],
    );
  }
}
