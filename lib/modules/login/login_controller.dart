import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;

  login() async {
    isLoading.value = true;

    // 로그인 로직
    try {
      await Future.delayed(const Duration(seconds: 1));

      Get.offAllNamed(Routes.main);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('오류', e.toString());
    }
  }
}
