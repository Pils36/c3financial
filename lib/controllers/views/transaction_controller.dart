import 'package:c3financial/models/onboard/transaction_info.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/state_manager.dart';

import 'package:get/get.dart';

import 'package:get/utils.dart';

class TransactionController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == transactionPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (!isLastPage) {
      // Goto Sign Up Page
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<TransactionInfo> transactionPages = [
    TransactionInfo("100,000.84"),
    TransactionInfo("640,000.33"),
  ];
}
