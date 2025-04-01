import 'package:get/get.dart';

import '../../data/models/study_group.dart';
import '../../data/models/study_member.dart';
import '../../data/models/user.dart';

class HomeController extends GetxController {
  // 기존 코드 유지
  // 더미 데이터: 사용자
  final user = User(
    id: 1,
    email: 'user@example.com',
    password: 'hashed_password',
    name: '이채서',
    department: '컴퓨터공학과',
    profileImg: 'https://example.com/profile.jpg',
    timetable: {'monday': '09:00-12:00'},
    createdAt: DateTime(2025, 3, 26, 10, 0),
    loginId: '',
  );

  final studyGroups = <StudyGroup>[
    StudyGroup(
      id: 1,
      title: '토익 스터디',
      description: '900점 이상 목표 열공합시댜!!',
      category: GroupCategory.study, // type -> category
      isPublic: true,
      maxMembers: 15,
      numMembers: 14, // 추가 (현재 인원)
      field: '영어', // 추가 (분야)
      attendance: AttendanceType.every, // 추가 (출석 방식)
      meet: MeetType.offline, // 추가 (모임 방식)
      mood: MoodType.focus, // 추가 (분위기)
      approve: true, // 추가 (승인 여부)
      leaderId: 1,
      thumbnail: 'https://media.dongwon.com/assets/_temp/post/191205/01.jpg',
      schedule: '매주 월요일 15:00',
      location: '카페 칸나',
      goal: '900점 달성', // 추가 (목표)
      memo:
          '900점대 이상 목표로 하는 빡공 스터디입니다.\n매일 스터디 인증샷 올려주셔야 합니다. 일주일 이상 올리지 않으시면 강퇴합니다~\n주말 제외 주 3회 이상 오프라인 만남 지향합니다. 국캠 앞 카페\n에서 주로 모여요!', // 추가 (메모)

      createdAt: DateTime(2025, 3, 20),
    ),
    StudyGroup(
      id: 2,
      title: '뜨개질 소모임',
      description: '뜨개질을 즐기는 소모임',
      category: GroupCategory.club, // type -> category
      isPublic: false,
      maxMembers: 10,
      numMembers: 5, // 추가 (현재 인원)
      field: '공예', // 추가 (분야)
      attendance: AttendanceType.free, // 추가 (출석 방식)
      meet: MeetType.both, // 추가 (모임 방식)
      mood: MoodType.friend, // 추가 (분위기)
      approve: false, // 추가 (승인 여부)
      leaderId: 1,
      thumbnail: 'https://example.com/thumbnail2.jpg',
      schedule: '매주 화요일 18:00',
      location: '미정',
      goal: '작품 완성', // 추가 (목표)
      memo:
          '900점대 이상 목표로 하는 빡공 스터디입니다.\n매일 스터디 인증샷 올려주셔야 합니다. 일주일 이상 올리지 않으시면 강퇴합니다~\n주말 제외 주 3회 이상 오프라인 만남 지향합니다. 국캠 앞 카페\n에서 주로 모여요!', // 추가 (메모)
      createdAt: DateTime(2025, 3, 21),
    ),
    StudyGroup(
      id: 3,
      title: '중간고사 대비',
      description: '중간고사 대비 자율 공부 스터디',
      category: GroupCategory.study, // type -> category
      isPublic: true,
      maxMembers: 7,
      numMembers: 3, // 추가 (현재 인원)
      field: '시험 준비', // 추가 (분야)
      attendance: AttendanceType.free, // 추가 (출석 방식)
      meet: MeetType.offline, // 추가 (모임 방식)
      mood: MoodType.focus, // 추가 (분위기)
      approve: true, // 추가 (승인 여부)
      leaderId: 1,
      thumbnail: 'https://example.com/thumbnail3.jpg',
      schedule: '매주 수요일 14:00',
      location: '도서관',
      goal: 'A+ 받기', // 추가 (목표)
      memo:
          '900점대 이상 목표로 하는 빡공 스터디입니다.\n매일 스터디 인증샷 올려주셔야 합니다. 일주일 이상 올리지 않으시면 강퇴합니다~\n주말 제외 주 3회 이상 오프라인 만남 지향합니다. 국캠 앞 카페\n에서 주로 모여요!', // 추가 (메모)
      createdAt: DateTime(2025, 3, 22),
    ),
  ];

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

  List<Map<String, String>> get schedules => [
        {
          'hoursLeft': '4',
          'meetingName': studyGroups[0].title,
          'time': '3:30 15:00',
          'location': studyGroups[0].location,
        },
        {
          'hoursLeft': '8',
          'meetingName': studyGroups[1].title,
          'time': '8사',
          'location': studyGroups[1].location,
        },
      ];

  List<StudyGroup> get joinedGroups => studyGroups
      .where((group) => studyMembers.any(
          (member) => member.groupId == group.id && member.userId == user.id))
      .toList();

  int get todayScheduleCount => schedules.length;

  String get todayScheduleNames =>
      schedules.map((s) => s['meetingName']!).join(', ');

  // 새로운 상태: 선택된 카테고리 (study 또는 club)
  final RxString selectedCategory = 'study'.obs;

  // 선택된 카테고리에 따라 필터링된 모임 목록
  List<StudyGroup> get filteredGroups => joinedGroups
      .where((group) =>
          group.category ==
          (selectedCategory.value == 'study'
              ? GroupCategory.study
              : GroupCategory.club))
      .toList();

  // 카테고리 변경 메서드
  void setCategory(String category) {
    selectedCategory.value = category;
  }
}
