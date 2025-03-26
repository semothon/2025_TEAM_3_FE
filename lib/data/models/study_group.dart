import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_group.freezed.dart';
part 'study_group.g.dart';

enum GroupCategory { study, club }

enum AttendanceType { every, free, TBD }

enum MeetType { online, offline, both }

enum MoodType { friend, focus, nofriend, free }

@freezed
class StudyGroup with _$StudyGroup {
  const factory StudyGroup({
    required int id, // 모임 ID
    required String title, // 모임 제목
    required String description, // 모임 설명
    @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
    required GroupCategory category, // 스터디/소모임 구분
    @JsonKey(name: 'is_public') required bool isPublic, // 공개/비공개 여부
    @JsonKey(name: 'max_members') required int maxMembers, // 최대 인원
    @JsonKey(name: 'num_members') required int numMembers, // 현재 인원
    required String field, // 분야
    @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
    required AttendanceType attendance, // 출석 방식
    @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
    required MeetType meet, // 모임 방식
    @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
    required MoodType mood, // 분위기
    required bool approve, // 승인 여부
    @JsonKey(name: 'leader_id') required int leaderId, // 조장 ID
    required String thumbnail, // 썸네일 이미지 URL
    required String schedule, // 일정 정보
    required String location, // 오프라인 장소 or 링크
    required String goal, // 목표
    required String memo, // 메모
    @JsonKey(name: 'created_at') required DateTime createdAt, // 생성 일시
  }) = _StudyGroup;

  factory StudyGroup.fromJson(Map<String, dynamic> json) =>
      _$StudyGroupFromJson(json);
}

// Enum 변환 함수
GroupCategory _groupCategoryFromJson(String category) =>
    GroupCategory.values.firstWhere(
      (e) => e.toString().split('.').last == category,
      orElse: () => GroupCategory.study,
    );

String _groupCategoryToJson(GroupCategory category) =>
    category.toString().split('.').last;

AttendanceType _attendanceTypeFromJson(String attendance) =>
    AttendanceType.values.firstWhere(
      (e) => e.toString().split('.').last == attendance,
      orElse: () => AttendanceType.TBD,
    );

String _attendanceTypeToJson(AttendanceType attendance) =>
    attendance.toString().split('.').last;

MeetType _meetTypeFromJson(String meet) => MeetType.values.firstWhere(
      (e) => e.toString().split('.').last == meet,
      orElse: () => MeetType.both,
    );

String _meetTypeToJson(MeetType meet) => meet.toString().split('.').last;

MoodType _moodTypeFromJson(String mood) => MoodType.values.firstWhere(
      (e) => e.toString().split('.').last == mood,
      orElse: () => MoodType.free,
    );

String _moodTypeToJson(MoodType mood) => mood.toString().split('.').last;
