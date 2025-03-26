import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_detail.freezed.dart';
part 'schedule_detail.g.dart';

@freezed
class ScheduleDetail with _$ScheduleDetail {
  const factory ScheduleDetail({
    required int id, // 일정 ID
    @JsonKey(name: 'group_id') required int groupId, // 모임 ID
    required String title, // 일정 제목
    @JsonKey(name: 'photo_url') String? photoUrl, // 사진 URL (nullable)
    required DateTime date, // 날짜
    @JsonKey(name: 'start_datetime') required DateTime startDatetime, // 시작 시간
    @JsonKey(name: 'end_datetime') required DateTime endDatetime, // 종료 시간
    required String memo, // 메모
    required String location, // 장소
    @JsonKey(name: 'created_at') required DateTime createdAt, // 생성 일시
    @JsonKey(name: 'updated_at') DateTime? updatedAt, // 수정 일시 (nullable)
  }) = _ScheduleDetail;

  factory ScheduleDetail.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDetailFromJson(json);
}
