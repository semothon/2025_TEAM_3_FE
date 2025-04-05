// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
      loginId: json['login_id'] as String?,
      name: json['name'] as String,
      department: json['department'] as String,
      profileImg: json['profile_img'] as String?,
      interest: json['interest'] as Map<String, dynamic>? ?? const {},
      hobby: json['hobby'] as Map<String, dynamic>? ?? const {},
      timetable: json['timetable'] as List<dynamic>? ?? const [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'login_id': instance.loginId,
      'name': instance.name,
      'department': instance.department,
      'profile_img': instance.profileImg,
      'interest': instance.interest,
      'hobby': instance.hobby,
      'timetable': instance.timetable,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
