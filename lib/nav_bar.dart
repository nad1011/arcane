import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    final isDark = CusHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.currentIndex.value,
          backgroundColor: isDark ? Colors.black : Colors.white,
          indicatorColor: isDark
              ? CusColors.white.withOpacity(0.2)
              : CusColors.primary.withOpacity(0.2),
          onDestinationSelected: (index) {
            controller.currentIndex.value = index;
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home_hashtag),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart),
              label: 'Shop',
            ),
            NavigationDestination(
                icon: Icon(Iconsax.heart_circle), label: 'Wishlist'),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  final List<Widget> screens = [
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
  ];
}
