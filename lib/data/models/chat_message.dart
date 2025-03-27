// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required int id, // 메시지 ID
    @JsonKey(name: 'group_id') required int groupId, // 모임 ID
    @JsonKey(name: 'user_id') required int userId, // 보낸 사람 ID
    required String message, // 메시지 내용
    @JsonKey(name: 'sent_at') required DateTime sentAt, // 보낸 시간
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
