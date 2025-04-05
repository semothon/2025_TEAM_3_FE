// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupDetailImpl _$$GroupDetailImplFromJson(Map<String, dynamic> json) =>
    _$GroupDetailImpl(
      group: Group.fromJson(json['group'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupDetailImplToJson(_$GroupDetailImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'schedule': instance.schedule,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      title: json['title'] as String,
      approve: json['approve'] as bool,
      meet: json['meet'] as String,
      attendance: json['attendance'] as String,
      maxMembers: (json['max_members'] as num).toInt(),
      numMembers: (json['num_members'] as num).toInt(),
      onelineDescription: json['onelineDescription'] as String?,
      description: json['description'] as String,
      memo: json['memo'] as String?,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'approve': instance.approve,
      'meet': instance.meet,
      'attendance': instance.attendance,
      'max_members': instance.maxMembers,
      'num_members': instance.numMembers,
      'onelineDescription': instance.onelineDescription,
      'description': instance.description,
      'memo': instance.memo,
      'thumbnail': instance.thumbnail,
    };

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      title: json['title'] as String,
      startDatetime: DateTime.parse(json['start_datetime'] as String),
      memo: json['memo'] as String,
      location: json['location'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'title': instance.title,
      'start_datetime': instance.startDatetime.toIso8601String(),
      'memo': instance.memo,
      'location': instance.location,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
