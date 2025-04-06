import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/api_service.dart';

import '../../routes/app_routes.dart';

class RegisterController extends GetxController {
  ApiService _apiService = ApiService();

  RxBool isLoading = false.obs;

  // 첫번째 페이지
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController e = TextEditingController();

  // 두번째 페이지
  final List<String> hobbies = [
    '영화',
    '공예',
    '토론',
    '게임',
    '베이킹',
    '독서',
    '그림',
    '운동',
    '메이크업',
    '요리',
    '맛집 탐방',
    '술',
    '악기',
    '덕질',
    '기타',
  ];
  RxList<bool> selectedHobbies = List.generate(15, (_) => false).obs;

  final List<String> interests = [
    '외국어',
    '토익',
    '자격증',
    '직업',
    '코딩',
    '디자인',
    '한국사',
    '독서',
    '기타'
  ];
  RxList<bool> selectedInterests = List.generate(9, (_) => false).obs;

  final List<String> majors = ['소프트웨어융합학과', '산업경영공학과', '시각디자인학과', '컴퓨터공학과'];
  RxInt selectedMajorIndex = (-1).obs;

  void toggleHobby(int index) {
    selectedHobbies[index] = !selectedHobbies[index];
  }

  void toggleInterest(int index) {
    selectedInterests[index] = !selectedInterests[index];
  }

  void selectMajor(int index) {
    selectedMajorIndex.value = index;
  }

  List<String> get selectedHobbyNames => [
        for (int i = 0; i < hobbies.length; i++)
          if (selectedHobbies[i]) hobbies[i]
      ];

  List<String> get selectedInterestNames => [
        for (int i = 0; i < interests.length; i++)
          if (selectedInterests[i]) interests[i]
      ];

  String? get selectedMajorName =>
      selectedMajorIndex.value >= 0 ? majors[selectedMajorIndex.value] : null;

  RxList<String> courses = <String>[].obs;
  TextEditingController course = TextEditingController();

  void entercourse() {
    courses.add(course.text);
    course.text = '';
  }

  register() async {
    isLoading.value = true;

    // 회원가입 로직
    try {
      if (name.text.isEmpty ||
          email.text.isEmpty ||
          id.text.isEmpty ||
          password.text.isEmpty) {
        throw '모든 필드를 입력해주세요.';
      }
      if (selectedMajorIndex.value == -1) {
        throw '전공을 선택해주세요.';
      }
      if (selectedHobbyNames.isEmpty) {
        throw '취미를 선택해주세요.';
      }
      if (selectedInterestNames.isEmpty) {
        throw '관심사를 선택해주세요.';
      }
      if (courses.isEmpty) {
        throw '수업을 선택해주세요.';
      }

      await _apiService.register(
        name: name.text,
        email: email.text,
        loginId: id.text,
        password: password.text,
        hobby: selectedHobbyNames,
        interest: selectedInterestNames,
        department: selectedMajorName!,
        timetable: courses,
      );
      await _apiService.login(id.text, password.text);

      Get.offAllNamed(Routes.main);
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('오류', e.toString());
    }
  }
}
