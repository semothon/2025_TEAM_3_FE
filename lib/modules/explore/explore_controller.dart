import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/study_group.dart';

class ExploreController extends GetxController {
  final selectedCategory = '스터디'.obs;

  void selectCategory(String category) {
    selectedCategory.value = category;
  }

  final studyList = <StudyGroup>[
    // 예시 StudyGroup 인스턴스들 (카테고리 주의)
    StudyGroup(
      id: 1,
      title: '컴공 22 스터디',
      description: '22학번 CS 기초 스터디',
      category: GroupCategory.study,
      isPublic: true,
      maxMembers: 10,
      numMembers: 8,
      field: 'CS',
      attendance: AttendanceType.every,
      meet: MeetType.offline,
      mood: MoodType.focus,
      approve: true,
      leaderId: 1,
      thumbnail: '',
      schedule: '',
      location: '',
      goal: '',
      memo: '',
      createdAt: DateTime.now(),
    ),
    StudyGroup(
      id: 2,
      title: '풋살 소모임',
      description: '경희대 풋살 팀',
      category: GroupCategory.club,
      isPublic: true,
      maxMembers: 12,
      numMembers: 10,
      field: '운동',
      attendance: AttendanceType.free,
      meet: MeetType.offline,
      mood: MoodType.friend,
      approve: false,
      leaderId: 2,
      thumbnail: '',
      schedule: '',
      location: '',
      goal: '',
      memo: '',
      createdAt: DateTime.now(),
    ),
  ].obs;

  List<StudyGroup> get filteredList {
    return studyList.where((group) {
      if (selectedCategory.value == '스터디') {
        return group.category == GroupCategory.study;
      } else {
        return group.category == GroupCategory.club;
      }
    }).toList();
  }
}