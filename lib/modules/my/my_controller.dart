// my_controller.dart
import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/study_group.dart';
import 'package:team_3_frontend/data/models/user.dart';

class MyController extends GetxController {
  final user = Rx<User>(User(
    id: 1,
    email: 'example@email.com',
    password: '',
    loginId: '2022104767',
    name: '이채서',
    department: '경희대학교 시각디자인학과 재학',
    profileImg: 'https://i.pravatar.cc/150?img=3',
    interest: {"관심 분야": "개발, 디자인"},
    hobby: {"취미": "헬스, 음악"},
    timetable: {},
    createdAt: DateTime.now(),
  ));

  final isAlarmOn = false.obs;
  final isMarketingOn = true.obs;

  // 내 모임들 (샘플 데이터)
  final studyGroups = <StudyGroup>[
    StudyGroup(
      id: 1,
      title: 'UX/UI 디자인 스터디',
      description: 'Figma로 실무 프로젝트 클론',
      category: GroupCategory.study,
      isPublic: true,
      maxMembers: 10,
      numMembers: 6,
      field: '디자인',
      attendance: AttendanceType.every,
      meet: MeetType.offline,
      mood: MoodType.focus,
      approve: true,
      leaderId: 1,
      thumbnail: '',
      schedule: '매주 수요일',
      location: '경희대 중앙도서관',
      goal: 'UX 포트폴리오 완성',
      memo: '',
      createdAt: DateTime.now(),
    ),
    StudyGroup(
      id: 2,
      title: 'Flutter 개발자 모임',
      description: '앱 개발하면서 플러터 배우기',
      category: GroupCategory.club,
      isPublic: true,
      maxMembers: 8,
      numMembers: 5,
      field: '개발',
      attendance: AttendanceType.free,
      meet: MeetType.both,
      mood: MoodType.friend,
      approve: true,
      leaderId: 1,
      thumbnail: '',
      schedule: '격주 일요일',
      location: '온라인 (Zoom)',
      goal: 'Flutter 프로젝트 출시',
      memo: '',
      createdAt: DateTime.now(),
    )
  ].obs;

  void onDeleteAccount() {
    // TODO: 회원 탈퇴 처리 로직
    Get.snackbar('회원 탈퇴', '회원 탈퇴 처리 완료');
  }

  void onLogout() {
    // TODO: 로그아웃 처리 로직
    Get.snackbar('로그아웃', '로그아웃 되었습니다');
  }
}