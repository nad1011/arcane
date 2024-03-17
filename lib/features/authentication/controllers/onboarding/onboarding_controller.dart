import 'package:arcane/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Var
  Rx<int> currentPage = 0.obs;
  final pageController = PageController();

  void updatePageIndicator(int index) {
    currentPage.value = index;
    update();
  }

  void dotNavigationClick(int index) {
    currentPage.value = index;
    update();
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubicEmphasized);
  }

  void nextPage() {
    if (currentPage.value < 2) {
      currentPage.value++;
      update();
      pageController.animateToPage(currentPage.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutCubicEmphasized);
    } else {
      Get.offAll(const LoginScreen());
    }
  }

  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(2);
    update();
  }
}
