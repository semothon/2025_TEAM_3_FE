// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExploreGroupImpl _$$ExploreGroupImplFromJson(Map<String, dynamic> json) =>
    _$ExploreGroupImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      onelineDescription: json['onelineDescription'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String,
      maxMembers: (json['max_members'] as num).toInt(),
      numMembers: (json['num_members'] as num).toInt(),
      attendance: json['attendance'] as String?,
      meet: json['meet'] as String?,
      mood: json['mood'] as String?,
      field: json['field'] as String?,
      approve: json['approve'] as bool?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$ExploreGroupImplToJson(_$ExploreGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'onelineDescription': instance.onelineDescription,
      'description': instance.description,
      'category': instance.category,
      'max_members': instance.maxMembers,
      'num_members': instance.numMembers,
      'attendance': instance.attendance,
      'meet': instance.meet,
      'mood': instance.mood,
      'field': instance.field,
      'approve': instance.approve,
      'thumbnail': instance.thumbnail,
    };
