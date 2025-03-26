// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDetailImpl _$$ScheduleDetailImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleDetailImpl(
      id: (json['id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      title: json['title'] as String,
      photoUrl: json['photo_url'] as String?,
      date: DateTime.parse(json['date'] as String),
      startDatetime: DateTime.parse(json['start_datetime'] as String),
      endDatetime: DateTime.parse(json['end_datetime'] as String),
      memo: json['memo'] as String,
      location: json['location'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ScheduleDetailImplToJson(
        _$ScheduleDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'title': instance.title,
      'photo_url': instance.photoUrl,
      'date': instance.date.toIso8601String(),
      'start_datetime': instance.startDatetime.toIso8601String(),
      'end_datetime': instance.endDatetime.toIso8601String(),
      'memo': instance.memo,
      'location': instance.location,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
