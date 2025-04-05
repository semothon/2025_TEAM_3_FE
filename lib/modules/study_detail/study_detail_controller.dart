import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/group_detail.dart';
import '../../data/services/api_service.dart';

class StudyDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ApiService apiService = ApiService();
  final studyId = Get.arguments;

  Rx<GroupDetail?> groupDetail = Rx<GroupDetail?>(null);
  RxList<Schedule> schedules = <Schedule>[].obs;
  RxList<SharedRecord> sharedRecords = <SharedRecord>[].obs;
  RxList<PersonalRecord> personalRecords = <PersonalRecord>[].obs;

  late TabController tabController;
  RxInt currentTabIndex = 0.obs; // Add this observable

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    // Add listener to update observable when tab changes
    tabController.addListener(() {
      currentTabIndex.value = tabController.index;
    });
    fetchGroupDetails();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  Future<void> fetchGroupDetails() async {
    try {
      groupDetail.value = await apiService.groupDetails(studyId.toString());
      if (groupDetail.value != null) {
        schedules.value = groupDetail.value!.schedule;
        sharedRecords.value = groupDetail.value!.sharedRecords;
        personalRecords.value = groupDetail.value!.personalRecords;
      }
    } catch (e) {
      Get.snackbar('오류', e.toString());
    }
  }
}
