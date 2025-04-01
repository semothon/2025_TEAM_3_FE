import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  // 첫번째 페이지
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController e = TextEditingController();

  RxBool isLoading = false.obs;

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

  final List<String> majors = ['문과', '이과', '예체능'];
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

  void register() {}
}
