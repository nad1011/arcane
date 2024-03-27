import 'package:arcane/common/widgets/images/rounded_image.dart';
import 'package:arcane/common/widgets/shapes/containers/cicular_container.dart';
import 'package:arcane/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:arcane/features/shop/controllers/home_controller.dart';
import 'package:arcane/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common/widgets/shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heding.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // Header
          PrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App bar
                HomeAppBar(),
                SizedBox(height: CusSizes.spaceBtwSections),

                // Search bar
                SearchContainer(
                  hintText: 'Search for products',
                ),
                SizedBox(height: CusSizes.spaceBtwSections),

                // Categories
                Padding(
                    padding: EdgeInsets.only(left: CusSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Categories',
                        ),
                        SizedBox(height: CusSizes.spaceBtwItems),
                        HomeCategories()
                      ],
                    ))
              ],
            ),
          ),

          // Body
          Padding(
            padding: EdgeInsets.all(CusSizes.defaultSpace),
            child: PromoSlider(controller: controller),
          ),
        ],
      ),
    ));
  }
}
