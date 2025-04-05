// lib/modules/my/my_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/api_service.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';
import '../../routes/app_routes.dart';

class MyController extends GetxController {
  final AuthService _authService = Get.find<AuthService>();
  final ApiService _apiService = Get.find<ApiService>();

  // 마이페이지용 사용자 정보
  final name = ''.obs;
  final department = ''.obs;
  final profileImg = RxnString();

  final groupCount = 0.obs;
  final recordCount = 0.obs;

  final isAlarmOn = false.obs;
  final isMarketingOn = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadMyPage();
  }

  Future<void> loadMyPage() async {
    try {
      await _authService.getToken();
      final token = _authService.token;
      if (token == null) return;

      final data = await _apiService.fetchMyPage(token);
      final info = data['myInfo'];

      name.value = info['name'] ?? '';
      department.value = info['department'] ?? '';
      profileImg.value = info['profile_img'];

      groupCount.value = data['groupCount'] ?? 0;
      recordCount.value = data['recordCount'] ?? 0;
    } catch (e) {
      debugPrint('마이페이지 로딩 실패: $e');
      Get.snackbar('오류', '마이페이지 정보를 불러오지 못했어요.');
    }
  }

  void onDeleteAccount() {
    // TODO: 회원 탈퇴 처리 로직
    Get.snackbar('회원 탈퇴', '회원 탈퇴 처리 완료');
  }

  Future<void> onLogout() async {
    await _authService.deleteToken();
    Get.offAllNamed(Routes.login);
    Get.snackbar('로그아웃', '로그아웃 되었습니다');
  }
}
