import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/study_group.dart';
import 'package:team_3_frontend/data/services/api_service.dart';

class Ex_SearchController extends GetxController {
  final searchText = ''.obs;
  final searching = false.obs;
  final selectedFilters = <String>[].obs;

  final allGroups = <RecommendedGroup>[].obs;
  final filteredGroups = <RecommendedGroup>[].obs;

  final categories = ['스터디', '소모임'];
  final fields = ['영어', '외국어', '자격증', '학교 공부', '자기개발', '독서', '토론', '토익', '코딩'];
  final attendances = ['매일 출석', '자율 출석'];
  final meets = ['오프라인', '온라인', '모임 내 협의'];
  final moods = ['친목', '집중', '친목 금지', '자율'];

  late TextEditingController textController;
  final ApiService _apiService = ApiService();

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
  }

  void onSearchTextChanged(String text) {
    searchText.value = text;
  }

  void setSearchActive(bool value) {
    searching.value = value;
    performServerSearch();
  }

  void clearSearch() {
    searchText.value = '';
    textController.clear();
    searching.value = false;
    filteredGroups.clear();
  }

  void toggleFilter(String value) {
    if (selectedFilters.contains(value)) {
      selectedFilters.remove(value);
    } else {
      selectedFilters.add(value);
    }
    performServerSearch();
  }

  void resetAll() {
    searchText.value = '';
    textController.clear();
    searching.value = false;
    selectedFilters.clear();
    filteredGroups.clear();
  }

  Future<void> performServerSearch() async {
    try {
      final params = _buildSearchQuery();
      final result = await _apiService.searchGroups(params);
      allGroups.value = result;
      filteredGroups.value = result;
    } catch (e) {
      print('🔴 검색 실패: $e');
    }
  }

  Map<String, String> _buildSearchQuery() {
    final Map<String, String> query = {};

    for (final filter in selectedFilters) {
      if (categories.contains(filter)) {
        query['category'] = filter == '스터디' ? 'study' : 'club';
      } else if (fields.contains(filter)) {
        query['field'] = filter;
      } else if (attendances.contains(filter)) {
        query['attendance'] = filter == '매일 출석' ? 'every' : 'free';
      } else if (meets.contains(filter)) {
        query['meet'] = filter;
      } else if (moods.contains(filter)) {
        query['mood'] = filter;
      }
    }

    if (searchText.value.isNotEmpty) {
      query['keyword'] = searchText.value;
    }

    return query;
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}