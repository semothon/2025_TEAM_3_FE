import 'package:get/get.dart';

class ExploreController extends GetxController {
  final selectedCategory = '스터디'.obs;

  void selectCategory(String category) {
    selectedCategory.value = category;
  }

  final studyList = [];
  // List<StudyGroup> get filteredList {
  //   return studyList.where((group) {
  //     if (selectedCategory.value == '스터디') {
  //       return group.category == GroupCategory.study;
  //     } else {
  //       return group.category == GroupCategory.club;
  //     }
  //   }).toList();
  // }
}
