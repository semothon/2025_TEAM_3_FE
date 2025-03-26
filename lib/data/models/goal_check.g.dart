// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalCheckImpl _$$GoalCheckImplFromJson(Map<String, dynamic> json) =>
    _$GoalCheckImpl(
      id: (json['id'] as num).toInt(),
      goalId: (json['goal_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      status: _checkStatusFromJson(json['status'] as String),
      proofImg: json['proof_img'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$GoalCheckImplToJson(_$GoalCheckImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goal_id': instance.goalId,
      'user_id': instance.userId,
      'status': _checkStatusToJson(instance.status),
      'proof_img': instance.proofImg,
      'created_at': instance.createdAt.toIso8601String(),
    };
