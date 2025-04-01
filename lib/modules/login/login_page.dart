import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/routes/app_routes.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 로그인 본문
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.icons.loginLogo.svg(width: 83),
                    SizedBox(height: 109),
                    TextField(
                      controller: controller.id,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '아이디를 입력해주세요.',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: controller.password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '비밀번호를 입력해주세요.',
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.login,
                        child: Text(
                          '로그인하기',
                          style: AppTypography.t3SB16
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '아이디/비밀번호 찾기',
                            style: AppTypography.b1R14
                                .copyWith(color: AppColors.grayscale75),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 14,
                          color: AppColors.grayscale75,
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.register),
                          child: Text(
                            '회원가입',
                            style: AppTypography.b1R14
                                .copyWith(color: AppColors.grayscale75),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
    );
  }
}
