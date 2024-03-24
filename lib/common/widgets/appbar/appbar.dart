import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CusAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CusAppbar(
      {super.key,
      this.leadingIcon,
      this.title,
      this.actions = const [],
      this.showBackButton = false,
      this.onLeadingTap});

  final IconData? leadingIcon;
  final Widget? title;
  final List<Widget> actions;
  final bool showBackButton;
  final VoidCallback? onLeadingTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: CusSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackButton
              ? IconButton(
                  icon: const Icon(Iconsax.arrow_left),
                  onPressed: () => Get.back())
              : leadingIcon != null
                  ? IconButton(
                      icon: Icon(leadingIcon),
                      onPressed: onLeadingTap,
                    )
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(CusDeviceUtils.getAppBarHeight());
}
