// search_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ex_SearchController extends GetxController {
  final searchText = ''.obs;
  final searching = false.obs;
  final selectedFilters = <String>[].obs;
  final allGroups = [].obs;
  RxList filteredGroups = [].obs;
  late TextEditingController textController;

  final categories = ['스터디', '소모임'];
  final fields = ['영어', '외국어', '자격증', '학교 공부', '자기개발', '독서', '토론', '토익', '코딩'];
  final attendances = ['매일 출석', '자율 출석'];
  final meets = ['오프라인', '온라인', '모임 내 협의'];
  final moods = ['친목', '집중', '친목 금지', '자율'];

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
  }

  void onSearchTextChanged(String text) {
    searchText.value = text;
    _filterGroups();
  }

  void setSearchActive(bool value) {
    searching.value = value;
    _filterGroups();
  }

  void clearSearch() {
    searchText.value = '';
    textController.clear();
    searching.value = false;
    filteredGroups.value = allGroups;
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

  void loadInitialData(List groups) {
    allGroups.value = groups;
    filteredGroups.value = groups;
  }

  void resetAll() {
    searchText.value = '';
    textController.clear();
    searching.value = false;
    selectedFilters.clear();
    filteredGroups.value = allGroups;
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
