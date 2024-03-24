import 'package:arcane/features/shop/screens/home/home.dart';
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
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Obx(
          () => Theme(
            data: ThemeData(
              splashColor: CusColors.primary.withOpacity(0.1),
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.shifting,
              backgroundColor: isDark ? Colors.black : CusColors.softGrey,
              currentIndex: controller.currentIndex.value,
              onTap: (index) {
                controller.currentIndex.value = index;
              },
              mouseCursor: SystemMouseCursors.click,
              selectedItemColor:
                  isDark ? Colors.white : CusColors.buttonPrimary,
              unselectedItemColor: isDark ? Colors.white : CusColors.darkGrey,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.home_hashtag),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.shopping_cart),
                  label: 'Shop',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.heart_circle),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Iconsax.user),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(),
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
