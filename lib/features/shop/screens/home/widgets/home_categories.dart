import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: CusSizes.sm),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: CusColors.light,
                      borderRadius:
                          BorderRadius.circular(CusSizes.borderRadiusXxl),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: CusSizes.semiMd, vertical: CusSizes.sm),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Iconsax.gameboy, size: 20),
                          const SizedBox(width: CusSizes.spaceBtwItems / 3),
                          Text('Games',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: CusColors.textPrimary)),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(height: 5),
                ],
              ),
            );
          }),
    );
  }
}
