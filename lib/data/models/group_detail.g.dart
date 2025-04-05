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
      sharedRecords: (json['sharedRecords'] as List<dynamic>)
          .map((e) => SharedRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      personalRecords: (json['personalRecords'] as List<dynamic>)
          .map((e) => PersonalRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupDetailImplToJson(_$GroupDetailImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'schedule': instance.schedule,
      'sharedRecords': instance.sharedRecords,
      'personalRecords': instance.personalRecords,
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

_$SharedRecordImpl _$$SharedRecordImplFromJson(Map<String, dynamic> json) =>
    _$SharedRecordImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      fileUrl: json['file_url'] as List<dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SharedRecordImplToJson(_$SharedRecordImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'file_url': instance.fileUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$PersonalRecordImpl _$$PersonalRecordImplFromJson(Map<String, dynamic> json) =>
    _$PersonalRecordImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      isPublic: json['is_public'] as bool,
      fileUrl: json['file_url'] as List<dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$PersonalRecordImplToJson(
        _$PersonalRecordImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'is_public': instance.isPublic,
      'file_url': instance.fileUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };
