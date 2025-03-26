// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      message: json['message'] as String,
      sentAt: DateTime.parse(json['sent_at'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'user_id': instance.userId,
      'message': instance.message,
      'sent_at': instance.sentAt.toIso8601String(),
    };
