// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyGroupImpl _$$StudyGroupImplFromJson(Map<String, dynamic> json) =>
    _$StudyGroupImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      category: _groupCategoryFromJson(json['category'] as String),
      isPublic: json['is_public'] as bool,
      maxMembers: (json['max_members'] as num).toInt(),
      numMembers: (json['num_members'] as num).toInt(),
      field: json['field'] as String,
      attendance: _attendanceTypeFromJson(json['attendance'] as String),
      meet: _meetTypeFromJson(json['meet'] as String),
      mood: _moodTypeFromJson(json['mood'] as String),
      approve: json['approve'] as bool,
      leaderId: (json['leader_id'] as num).toInt(),
      thumbnail: json['thumbnail'] as String,
      schedule: json['schedule'] as String,
      location: json['location'] as String,
      goal: json['goal'] as String,
      memo: json['memo'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$StudyGroupImplToJson(_$StudyGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': _groupCategoryToJson(instance.category),
      'is_public': instance.isPublic,
      'max_members': instance.maxMembers,
      'num_members': instance.numMembers,
      'field': instance.field,
      'attendance': _attendanceTypeToJson(instance.attendance),
      'meet': _meetTypeToJson(instance.meet),
      'mood': _moodTypeToJson(instance.mood),
      'approve': instance.approve,
      'leader_id': instance.leaderId,
      'thumbnail': instance.thumbnail,
      'schedule': instance.schedule,
      'location': instance.location,
      'goal': instance.goal,
      'memo': instance.memo,
      'created_at': instance.createdAt.toIso8601String(),
    };
