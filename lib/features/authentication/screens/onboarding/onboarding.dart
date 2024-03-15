import 'package:arcane/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_dot_navigator.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
        children: [
          const OnBoardingDotNavigator(),
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: CusImages.onBoardingImage1,
                title: CusTexts.onBoardingTitle1,
                subTitle: CusTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CusImages.onBoardingImage2,
                title: CusTexts.onBoardingTitle2,
                subTitle: CusTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CusImages.onBoardingImage3,
                title: CusTexts.onBoardingTitle3,
                subTitle: CusTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingNextButton(),
        ],
      )
    );
  }
}
