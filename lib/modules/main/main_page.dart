import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../gen/assets.gen.dart';
import '../../theme/app_colors.dart';
import './main_controller.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedBottomIndex.value,
            children: controller.pages,
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.background,
          items: [
            BottomNavigationBarItem(
                icon: Assets.images.bottomHome.image(
                    height: 24,
                    color: controller.selectedBottomIndex.value == 0
                        ? AppColors.point
                        : AppColors.grayscale50),
                label: '홈'),
            BottomNavigationBarItem(
                icon: Assets.images.bottomExplore.image(
                    height: 24,
                    color: controller.selectedBottomIndex.value == 1
                        ? AppColors.point
                        : AppColors.grayscale50),
                label: '탐색'),
            BottomNavigationBarItem(
                icon: Assets.images.bottomCommunity.image(
                    height: 24,
                    color: controller.selectedBottomIndex.value == 2
                        ? AppColors.point
                        : AppColors.grayscale50),
                label: '커뮤니티'),
            BottomNavigationBarItem(
                icon: Assets.images.bottomMy.image(
                    height: 24,
                    color: controller.selectedBottomIndex.value == 3
                        ? AppColors.point
                        : AppColors.grayscale50),
                label: '마이'),
          ],
          currentIndex: controller.selectedBottomIndex.value,
          selectedItemColor: AppColors.point,
          unselectedItemColor: AppColors.grayscale50,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
