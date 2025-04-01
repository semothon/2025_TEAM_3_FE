import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/routes/app_routes.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // 로그인 본문
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.images.logo.svg(width: 49),
                    SizedBox(height: 30),
                    Text(
                      '회원가입',
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    SizedBox(height: 26),
                    // 이름 입력
                    Text(
                      '이름',
                      style: AppTypography.b6SB14,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: controller.name,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '실명을 입력해주세요.',
                      ),
                    ),
                    SizedBox(height: 20),
                    // 학교 이메일 인증 입력
                    Text(
                      '학교 이메일 인증',
                      style: AppTypography.b6SB14,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: controller.email,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '@khu.ac.kr',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    // 아이디
                    Text(
                      '아이디',
                      style: AppTypography.b6SB14,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: controller.id,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: 20),
                    // 비밀번호
                    Text(
                      '비밀번호',
                      style: AppTypography.b6SB14,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: controller.password,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.registerInput),
                        child: Text(
                          '다음',
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
                        color: Colors.black.withAlpha(30),
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
