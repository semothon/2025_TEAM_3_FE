// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeImpl _$$HomeImplFromJson(Map<String, dynamic> json) => _$HomeImpl(
      name: json['name'] as String,
      todaySchedule:
          TodaySchedule.fromJson(json['todaySchedule'] as Map<String, dynamic>),
      upcomingSchedules: (json['upcomingSchedules'] as List<dynamic>)
          .map((e) => UpcomingSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      joinedGroups:
          JoinedGroups.fromJson(json['joinedGroups'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeImplToJson(_$HomeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'todaySchedule': instance.todaySchedule,
      'upcomingSchedules': instance.upcomingSchedules,
      'joinedGroups': instance.joinedGroups,
    };

_$TodayScheduleImpl _$$TodayScheduleImplFromJson(Map<String, dynamic> json) =>
    _$TodayScheduleImpl(
      count: (json['count'] as num).toInt(),
      groupNames: (json['groupNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TodayScheduleImplToJson(_$TodayScheduleImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'groupNames': instance.groupNames,
    };

_$UpcomingScheduleImpl _$$UpcomingScheduleImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingScheduleImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      startDatetime: DateTime.parse(json['start_datetime'] as String),
      location: json['location'] as String,
      secondsLeft: (json['seconds_left'] as num).toInt(),
    );

Map<String, dynamic> _$$UpcomingScheduleImplToJson(
        _$UpcomingScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_datetime': instance.startDatetime.toIso8601String(),
      'location': instance.location,
      'seconds_left': instance.secondsLeft,
    };

_$JoinedGroupsImpl _$$JoinedGroupsImplFromJson(Map<String, dynamic> json) =>
    _$JoinedGroupsImpl(
      study: (json['study'] as List<dynamic>)
          .map((e) => StudyGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      club: (json['club'] as List<dynamic>)
          .map((e) => StudyGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JoinedGroupsImplToJson(_$JoinedGroupsImpl instance) =>
    <String, dynamic>{
      'study': instance.study,
      'club': instance.club,
    };

_$StudyGroupImpl _$$StudyGroupImplFromJson(Map<String, dynamic> json) =>
    _$StudyGroupImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      maxMembers: (json['max_members'] as num).toInt(),
      numMembers: (json['num_members'] as num).toInt(),
      attendance: json['attendance'] as String,
      meet: json['meet'] as String,
      mood: json['mood'] as String,
    );

Map<String, dynamic> _$$StudyGroupImplToJson(_$StudyGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'max_members': instance.maxMembers,
      'num_members': instance.numMembers,
      'attendance': instance.attendance,
      'meet': instance.meet,
      'mood': instance.mood,
    };
