// search_controller.dart
import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/study_group.dart';

class Ex_SearchController extends GetxController {
  final searchText = ''.obs;
  final selectedFilters = <String>[].obs;
  final allGroups = <StudyGroup>[].obs; // 전체 모임 리스트

  // 필터 옵션
  final categories = ['스터디', '소모임'];
  final fields = ['영어', '외국어', '자격증', '학교 공부', '자기개발', '독서', '토론', '토익', '코딩'];
  final attendances = ['매일 출석', '자율 출석', '모임 내 협의'];
  final meets = ['오프라인', '온라인', '모임 내 협의'];
  final moods = ['친목', '집중', '친목 금지', '자율'];

  // 검색 결과
  RxList<StudyGroup> filteredGroups = <StudyGroup>[].obs;

  void onSearchTextChanged(String text) {
    searchText.value = text;
    _filterGroups();
  }

  void toggleFilter(String value) {
    if (selectedFilters.contains(value)) {
      selectedFilters.remove(value);
    } else {
      selectedFilters.add(value);
    }
    _filterGroups();
  }

  void _filterGroups() {
    final query = searchText.value.toLowerCase();

    filteredGroups.value = allGroups.where((group) {
      final matchesTitle = group.title.toLowerCase().contains(query);
      final matchesFilters = selectedFilters.every((filter) {
        return group.title.contains(filter) ||
            group.description.contains(filter) ||
            group.field.contains(filter) ||
            group.attendance.name.contains(filter) ||
            group.mood.name.contains(filter) ||
            group.meet.name.contains(filter);
      });
      return matchesTitle && matchesFilters;
    }).toList();
  }

  void loadInitialData(List<StudyGroup> groups) {
    allGroups.value = groups;
    filteredGroups.value = groups;
  }
}