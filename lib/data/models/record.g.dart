// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      isPublic: json['is_public'] as bool,
      isShared: json['is_shared'] as bool,
      content: json['content'] as String,
      fileUrl: json['file_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'group_id': instance.groupId,
      'is_public': instance.isPublic,
      'is_shared': instance.isShared,
      'content': instance.content,
      'file_url': instance.fileUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };
