import 'package:freezed_annotation/freezed_annotation.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    required int id, // 기록 ID
    @JsonKey(name: 'user_id') required int userId, // 작성자 ID
    @JsonKey(name: 'group_id') required int groupId, // 속한 모임 ID
    @JsonKey(name: 'is_public') required bool isPublic, // 공개 여부
    @JsonKey(name: 'is_shared') required bool isShared, // 공유 여부
    required String content, // 기록 내용
    @JsonKey(name: 'file_url') String? fileUrl, // 첨부파일 URL (nullable)
    @JsonKey(name: 'created_at') required DateTime createdAt, // 작성일
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}
