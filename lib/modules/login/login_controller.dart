import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/api_service.dart';
import 'package:team_3_frontend/routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;

  ApiService apiService = ApiService();

  login() async {
    isLoading.value = true;

    try {
      await apiService.login(
        id.text,
        password.text,
      );

      Get.offAllNamed(Routes.main);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('오류', e.toString());
    }
  }
}
