import 'package:arcane/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIconButton extends StatelessWidget {
  const CartCounterIconButton({
    super.key,
    required this.iconColor,
    required this.badgeColor,
    this.onPressed,
  });

  final Color iconColor;
  final Color badgeColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Iconsax.shopping_cart, color: iconColor),
          onPressed: onPressed,
        ),
        Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration:
                  BoxDecoration(color: badgeColor, shape: BoxShape.circle),
              child: Text('4',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: CusColors.white)),
            ))
      ],
    );
  }
}
