// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      createdBy: (json['created_by'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'title': instance.title,
      'content': instance.content,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt.toIso8601String(),
    };
