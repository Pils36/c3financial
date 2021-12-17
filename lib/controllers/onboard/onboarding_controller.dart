import 'package:c3financial/models/onboard/onboarding_info.dart';
import 'package:c3financial/views/pages/authentication/signin.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/state_manager.dart';

import 'package:get/get.dart';

import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      // Goto Sign Up Page
      Get.to(() => const SignIn());
      Get.offAll(const SignIn());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        "assets/images/onboard/giving_from_app.jpg",
        "Give from your App",
        "Now you can pay tithe and seeds from your app, all you need is your card."),
    OnboardingInfo(
        "assets/images/onboard/pay_anywhere.jpg",
        "Pay Tithe anywhere",
        "Now you can pay your tithe anywhere and anytime, stop waiting till you spend it."),
    OnboardingInfo(
        "assets/images/onboard/things_have_changed.jpg",
        "Things have changed",
        "We are here to fulfill destinies, this is a medium to help you in the world of today."),
  ];
}
