import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_detail.freezed.dart';
part 'group_detail.g.dart';

@freezed
class GroupDetail with _$GroupDetail {
  const factory GroupDetail({
    required Group group, // 모임 정보
    required List<Schedule> schedule, // 일정 리스트
  }) = _GroupDetail;

  factory GroupDetail.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailFromJson(json);
}

@freezed
class Group with _$Group {
  const factory Group({
    required String title, // 모임 제목
    required bool approve, // 승인 여부
    required String meet, // 모임 방식
    required String attendance, // 출석 방식
    @JsonKey(name: 'max_members') required int maxMembers, // 최대 인원
    @JsonKey(name: 'num_members') required int numMembers, // 현재 인원
    @JsonKey(name: 'onelineDescription')
    String? onelineDescription, // 한 줄 설명 (nullable)
    required String description, // 모임 설명
    String? memo, // 메모 (nullable)
    required String thumbnail, // 썸네일 URL
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required int id, // 일정 ID
    @JsonKey(name: 'group_id') required int groupId, // 모임 ID
    required String title, // 일정 제목
    @JsonKey(name: 'start_datetime') required DateTime startDatetime, // 시작 시간
    required String memo, // 일정 메모
    required String location, // 장소
    @JsonKey(name: 'created_at') required DateTime createdAt, // 생성일
    @JsonKey(name: 'updated_at') required DateTime updatedAt, // 수정일
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
