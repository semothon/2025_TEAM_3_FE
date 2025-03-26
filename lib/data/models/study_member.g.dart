// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyMemberImpl _$$StudyMemberImplFromJson(Map<String, dynamic> json) =>
    _$StudyMemberImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      role: _memberRoleFromJson(json['role'] as String),
      joinedAt: DateTime.parse(json['joined_at'] as String),
    );

Map<String, dynamic> _$$StudyMemberImplToJson(_$StudyMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'group_id': instance.groupId,
      'role': _memberRoleToJson(instance.role),
      'joined_at': instance.joinedAt.toIso8601String(),
    };
