import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  const factory Notice({
    required int id, // 공지 ID
    @JsonKey(name: 'group_id') required int groupId, // 모임 ID
    required String title, // 공지 제목
    required String content, // 내용
    @JsonKey(name: 'created_by') required int createdBy, // 작성자 ID
    @JsonKey(name: 'created_at') required DateTime createdAt, // 작성일
  }) = _Notice;

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);
}
