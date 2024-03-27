import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  Rx<int> currentBanner = 0.obs;

  void updateCarouselDot(int index) {
    currentBanner.value = index;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
