import 'package:arcane/common/widgets/images/rounded_image.dart';
import 'package:arcane/features/shop/controllers/home_controller.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromoSlider extends StatelessWidget {
  final HomeController controller;

  const PromoSlider({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const [
            RoundedImage(imageUrl: CusImages.banner1),
            RoundedImage(imageUrl: CusImages.banner2),
            RoundedImage(imageUrl: CusImages.banner3),
            RoundedImage(imageUrl: CusImages.banner4),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => {
              controller.updateCarouselDot(index),
            },
            autoPlay: true,
          ),
        ),
        const SizedBox(height: CusSizes.spaceBtwItems),
        Obx(() => AnimatedSmoothIndicator(
              activeIndex: controller.currentBanner.value,
              count: 4, // Adjust count according to your carousel items count
              effect: ExpandingDotsEffect(
                expansionFactor: 3,
                activeDotColor: CusColors.accent, // Adjust as needed
                dotHeight: 4,
                dotWidth: 10,
                spacing: 4,
                radius: 24,
              ),
            ))
      ],
    );
  }
}
