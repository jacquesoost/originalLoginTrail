
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  //update current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump into the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
       Get.offAll(const LoginScreen());

    } else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}