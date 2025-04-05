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
        () => Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            canvasColor: AppColors.background,
          ),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12, // 그림자 색상 (연하게)
                  blurRadius: 6,
                  offset: Offset(0, -2), // 위쪽 방향 그림자
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.background,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Assets.icons.bottomHome.svg(
                          height: 24,
                          color: controller.selectedBottomIndex.value == 0
                              ? AppColors.point
                              : AppColors.grayscale50),
                    ),
                    label: '홈'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Assets.icons.bottomExplore.svg(
                          height: 24,
                          color: controller.selectedBottomIndex.value == 1
                              ? AppColors.point
                              : AppColors.grayscale50),
                    ),
                    label: '탐색'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Assets.icons.bottomCommunity.svg(
                          height: 24,
                          color: controller.selectedBottomIndex.value == 2
                              ? AppColors.point
                              : AppColors.grayscale50),
                    ),
                    label: '커뮤니티'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Assets.icons.bottomMy.svg(
                          height: 24,
                          color: controller.selectedBottomIndex.value == 3
                              ? AppColors.point
                              : AppColors.grayscale50),
                    ),
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
        ),
      ),
    );
  }
}
