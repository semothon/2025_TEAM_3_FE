// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankImpl _$$RankImplFromJson(Map<String, dynamic> json) => _$RankImpl(
      groupId: (json['group_id'] as num).toInt(),
      title: json['title'] as String?,
      recordNum: (json['record_num'] as num).toInt(),
      fruitNum: (json['fruit_num'] as num).toInt(),
      tree: json['tree'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$RankImplToJson(_$RankImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'title': instance.title,
      'record_num': instance.recordNum,
      'fruit_num': instance.fruitNum,
      'tree': instance.tree,
      'category': instance.category,
    };
