import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required String name, // 사용자 이름
    required TodaySchedule todaySchedule, // 오늘의 일정 정보
    required List<UpcomingSchedule> upcomingSchedules, // 다가오는 일정 리스트
    required JoinedGroups joinedGroups, // 참여 중인 모임 정보
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
class TodaySchedule with _$TodaySchedule {
  const factory TodaySchedule({
    required int count, // 오늘의 일정 수
    required List<String> groupNames, // 오늘의 일정 모임 이름들
  }) = _TodaySchedule;

  factory TodaySchedule.fromJson(Map<String, dynamic> json) =>
      _$TodayScheduleFromJson(json);
}

@freezed
class UpcomingSchedule with _$UpcomingSchedule {
  const factory UpcomingSchedule({
    required int id, // 일정 ID
    required String title, // 일정 제목
    required String memo, // 일정 메모
    @JsonKey(name: 'start_datetime') required DateTime startDatetime, // 시작 시간
    required String location, // 장소
    @JsonKey(name: 'seconds_left') required int secondsLeft, // 남은 초
  }) = _UpcomingSchedule;

  factory UpcomingSchedule.fromJson(Map<String, dynamic> json) =>
      _$UpcomingScheduleFromJson(json);
}

@freezed
class JoinedGroups with _$JoinedGroups {
  const factory JoinedGroups({
    required List<StudyGroup> study, // 스터디 모임 리스트
    required List<StudyGroup> club, // 소모임 리스트
  }) = _JoinedGroups;

  factory JoinedGroups.fromJson(Map<String, dynamic> json) =>
      _$JoinedGroupsFromJson(json);
}

@freezed
class StudyGroup with _$StudyGroup {
  const factory StudyGroup({
    required int id, // 모임 ID
    required String title, // 모임 제목
    required String thumbnail, // 모임 이미지 URL
    required String description, // 모임 설명
    required String category, // 카테고리 (study/club)
    @JsonKey(name: 'max_members') required int maxMembers, // 최대 인원
    @JsonKey(name: 'num_members') required int numMembers, // 현재 인원
    required String attendance, // 출석 방식
    required String meet, // 모임 방식
    required String mood, // 분위기
  }) = _StudyGroup;

  factory StudyGroup.fromJson(Map<String, dynamic> json) =>
      _$StudyGroupFromJson(json);
}
