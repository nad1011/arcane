import 'package:arcane/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/device/device_utility.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        top: CusDeviceUtils.getAppBarHeight(),
        width: CusHelperFunctions.screenWidth(),
        child: Center(
          child: SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(
                expansionFactor: 4,
                activeDotColor: CusHelperFunctions.isDarkMode(context)
                    ? CusColors.light
                    : CusColors.dark,
                dotHeight: 6,
                dotWidth: 8,
                spacing: 4,
                radius: 24,
              )),
        ));
  }
}
