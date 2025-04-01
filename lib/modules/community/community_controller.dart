import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  late PageController pageController;

  RxInt currentTabIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    pageController = PageController();
    // 탭바와 페이지 뷰 동기화
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        pageController.jumpToPage(tabController.index);
        currentTabIndex.value = tabController.index;
      }
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    pageController.dispose();
    super.onClose();
  }

  // 페이지 전환 시 탭바 동기화
  void onPageChanged(int index) {
    tabController.animateTo(index);
  }
}
