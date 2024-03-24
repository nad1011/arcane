import 'package:arcane/common/widgets/shapes/containers/primary_header_container.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heding.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
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
        ],
      ),
    ));
  }
}
