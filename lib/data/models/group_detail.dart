import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_detail.freezed.dart';
part 'group_detail.g.dart';

@freezed
class GroupDetail with _$GroupDetail {
  const factory GroupDetail({
    required Group group, // 모임 정보
    required List<Schedule> schedule, // 일정 리스트
    required List<SharedRecord> sharedRecords, // 공유 기록
    required List<PersonalRecord> personalRecords, // 개인 기록
  }) = _GroupDetail;

  factory GroupDetail.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailFromJson(json);
}

@freezed
class Group with _$Group {
  const factory Group({
    required String title,
    required bool approve,
    required String meet,
    required String attendance,
    @JsonKey(name: 'max_members') required int maxMembers,
    @JsonKey(name: 'num_members') required int numMembers,
    @JsonKey(name: 'onelineDescription') String? onelineDescription,
    required String description,
    String? memo,
    required String thumbnail,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    @JsonKey(name: 'group_id') required int groupId,
    required String title,
    @JsonKey(name: 'start_datetime') required DateTime startDatetime,
    required String memo,
    required String location,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class SharedRecord with _$SharedRecord {
  const factory SharedRecord({
    required String title,
    required String content,
    @JsonKey(name: 'file_url') List? fileUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _SharedRecord;

  factory SharedRecord.fromJson(Map<String, dynamic> json) =>
      _$SharedRecordFromJson(json);
}

@freezed
class PersonalRecord with _$PersonalRecord {
  const factory PersonalRecord({
    required String title,
    required String content,
    @JsonKey(name: 'is_public') required bool isPublic,
    @JsonKey(name: 'file_url') List? fileUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _PersonalRecord;

  factory PersonalRecord.fromJson(Map<String, dynamic> json) =>
      _$PersonalRecordFromJson(json);
}
