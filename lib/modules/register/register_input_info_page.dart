import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'register_controller.dart';

class RegisterInputInfoPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    // 화면 너비를 가져와서 한 줄에 3개씩 배치하기 위한 계산
    final double screenWidth = MediaQuery.of(context).size.width;
    const double horizontalPadding = 32.0; // 좌우 패딩 (16.0 * 2)
    const double chipSpacing = 8.0; // 칩 간 간격
    final double chipWidth =
        (screenWidth - horizontalPadding - (chipSpacing * 2)) / 3; // 한 줄에 3개 배치

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.icons.logo.svg(height: 45),
                    SizedBox(height: 30),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '안녕하세요, ',
                            style: AppTypography.t1B20
                                .copyWith(color: AppColors.grayscale100),
                          ),
                          TextSpan(
                            text: controller.name.text,
                            style: AppTypography.t1B20
                                .copyWith(color: AppColors.point),
                          ),
                          TextSpan(
                            text: '님.',
                            style: AppTypography.t1B20
                                .copyWith(color: AppColors.grayscale100),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '정보를 입력해주시면 맞춤 모임을 추천해드릴게요!',
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 30),
                    // 취미
                    Text(
                      '취미',
                      style: AppTypography.b5M14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Wrap(
                        spacing: chipSpacing,
                        runSpacing: chipSpacing,
                        children: List.generate(
                          controller.hobbies.length,
                          (index) => Container(
                            width: chipWidth,
                            child: ChoiceChip(
                              label: Center(
                                child: Text(
                                  controller.hobbies[index],
                                  style: TextStyle(
                                    color: controller.selectedHobbies[index]
                                        ? Colors.white
                                        : AppColors.grayscale100,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              selected: controller.selectedHobbies[index],
                              onSelected: (selected) {
                                controller.toggleHobby(index);
                              },
                              selectedColor: AppColors.point,
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                color: AppColors.grayscale50,
                                width: 1,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 8.0,
                              ),
                              labelPadding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              showCheckmark: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // 관심 분야
                    Text(
                      '관심 분야',
                      style: AppTypography.b5M14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Wrap(
                        spacing: chipSpacing,
                        runSpacing: chipSpacing,
                        children: List.generate(
                          controller.interests.length,
                          (index) => Container(
                            width: chipWidth,
                            child: ChoiceChip(
                              label: Center(
                                child: Text(
                                  controller.interests[index],
                                  style: TextStyle(
                                    color: controller.selectedInterests[index]
                                        ? Colors.white
                                        : AppColors.grayscale100,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              selected: controller.selectedInterests[index],
                              onSelected: (selected) {
                                controller.toggleInterest(index);
                              },
                              selectedColor: AppColors.point,
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                color: AppColors.grayscale50,
                                width: 1,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 8.0,
                              ),
                              labelPadding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              showCheckmark: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // 학과정보
                    Text(
                      '학과정보',
                      style: AppTypography.b5M14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Wrap(
                        spacing: chipSpacing,
                        runSpacing: chipSpacing,
                        children: List.generate(
                          controller.majors.length,
                          (index) => Container(
                            width: chipWidth,
                            child: ChoiceChip(
                              label: Center(
                                child: Text(
                                  controller.majors[index],
                                  style: TextStyle(
                                    color:
                                        controller.selectedMajorIndex.value ==
                                                index
                                            ? Colors.white
                                            : AppColors.grayscale100,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              selected:
                                  controller.selectedMajorIndex.value == index,
                              onSelected: (selected) {
                                controller.selectMajor(index);
                              },
                              selectedColor: AppColors.point,
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                color: AppColors.grayscale50,
                                width: 1,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 8.0,
                              ),
                              labelPadding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              showCheckmark: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '시간표 입력',
                      style: AppTypography.b5M14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          flex: 5,
                          child: TextField(
                            controller: controller.course,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '과목명을 적어주세요.',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          flex: 1,
                          child: ElevatedButton(
                            child: Text('추가'),
                            onPressed: controller.entercourse,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: List.generate(
                          controller.courses.length,
                          (index) {
                            final double screenWidth =
                                MediaQuery.of(Get.context!).size.width;
                            const double horizontalPadding = 32.0;
                            const double chipSpacing = 8.0;
                            final double chipWidth = (screenWidth -
                                    horizontalPadding -
                                    (chipSpacing * 2)) /
                                3;
                            return Container(
                              width: chipWidth,
                              child: Chip(
                                label: Center(
                                  child: Text(
                                    controller.courses[index],
                                    style: TextStyle(
                                      color: AppColors.grayscale100,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: AppColors.grayscale50,
                                  width: 1,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 8.0,
                                ),
                                labelPadding: EdgeInsets.zero,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.register,
                        child: Text(
                          '시작하기',
                          style: AppTypography.t3SB16
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 로딩 화면
            Obx(() => controller.isLoading.value
                ? Stack(
                    children: [
                      ModalBarrier(
                        dismissible: false,
                        color: AppColors.grayscale100.withAlpha(30),
                      ),
                      Center(child: CircularProgressIndicator()),
                    ],
                  )
                : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
