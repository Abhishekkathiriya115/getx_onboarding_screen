import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_splash/model/Onbording_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:getx_splash/view/Home.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {

  var selectPageIndex = 0.obs;
  bool get isLastPage => selectPageIndex.value == onboardingPages.length -1;
  var pageController = PageController();

  foewardAction() {
    if(isLastPage)
      {
        Get.to(Home());
      }else
    pageController.nextPage(duration: 300.milliseconds,curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/order.png', 'Order Your Food',
        'Now ypo can order food any time right from mobile'),
    OnboardingInfo('assets/cook.png', 'Cooking Safe Food',
        'Now ypo can order food any time right from mobile'),
    OnboardingInfo('assets/deliver.png', 'Quick Delivery',
        'Now ypo can order food any time right from mobile'),
  ];
}