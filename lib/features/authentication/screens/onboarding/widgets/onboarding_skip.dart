import 'package:arcane/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:arcane/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: CusDeviceUtils.getBottomNavigationBarHeight(),
      left: CusSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child:
            Text(CusTexts.skip, style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
