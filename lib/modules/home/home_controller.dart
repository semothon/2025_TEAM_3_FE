import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/home.dart';
import 'package:team_3_frontend/data/services/api_service.dart';
import '../../data/models/study_member.dart';

class HomeController extends GetxController {
  final ApiService apiService = ApiService();

  // 홈 데이터 (API에서 받아온 데이터)
  Rx<Home?> home = Rx<Home?>(null);

  // 더 이상 필요 없는 하드코딩된 studyGroups
  // final studyGroups = [];

  final studyMembers = <StudyMember>[
    StudyMember(
      id: 1,
      userId: 1,
      groupId: 1,
      role: MemberRole.leader,
      joinedAt: DateTime(2025, 3, 20),
    ),
    StudyMember(
      id: 2,
      userId: 1,
      groupId: 2,
      role: MemberRole.member,
      joinedAt: DateTime(2025, 3, 21),
    ),
    StudyMember(
      id: 3,
      userId: 1,
      groupId: 3,
      role: MemberRole.member,
      joinedAt: DateTime(2025, 3, 22),
    ),
  ];

  // schedules는 이제 home.upcomingSchedules에서 가져옴
  List<UpcomingSchedule> get schedules =>
      home.value?.upcomingSchedules ?? <UpcomingSchedule>[];

  // Changed to RxList for reactivity, 이제 home.joinedGroups에서 초기화
  RxList<StudyGroup> joinedGroups = <StudyGroup>[].obs;

  RxInt todayScheduleCount = 0.obs;

  String get todayScheduleNames =>
      home.value?.todaySchedule.groupNames.join(', ') ?? '';

  // 선택된 카테고리 (study 또는 club)
  final RxString selectedCategory = 'study'.obs;

  // 선택된 카테고리에 따라 필터링된 모임 목록
  List<StudyGroup> get filteredGroups => joinedGroups
      .where((group) =>
          group.category ==
          (selectedCategory.value == 'study' ? 'study' : 'club'))
      .toList();

  @override
  Future<void> onInit() async {
    super.onInit();
    try {
      home.value = await apiService.home();
      if (home.value != null) {
        joinedGroups.value = [
          ...home.value!.joinedGroups.study,
          ...home.value!.joinedGroups.club,
        ];
        todayScheduleCount.value = home.value!.todaySchedule.count;
      }
      print(home.value);
    } catch (e) {
      Get.snackbar('오류', e.toString());
    }
  }

  // 카테고리 변경 메서드
  void setCategory(String category) {
    selectedCategory.value = category;
  }
}
