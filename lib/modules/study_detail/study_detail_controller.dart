import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/group_detail.dart';
import 'package:team_3_frontend/data/services/api_service.dart';

class StudyDetailController extends GetxController {
  final ApiService apiService = ApiService();
  final studyId = Get.arguments; // Group ID from navigation arguments

  // Reactive GroupDetail object
  Rx<GroupDetail?> groupDetail = Rx<GroupDetail?>(null);

  // Reactive list of schedules (instead of records)
  RxList<Schedule> schedules = <Schedule>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchGroupDetails();
  }

  Future<void> fetchGroupDetails() async {
    try {
      // Fetch group details using the studyId (groupId)
      groupDetail.value = await apiService.groupDetails(studyId.toString());
      if (groupDetail.value != null) {
        // Populate schedules from groupDetail
        schedules.value = groupDetail.value!.schedule;
      }
    } catch (e) {
      Get.snackbar('오류', e.toString());
    }
  }
}
