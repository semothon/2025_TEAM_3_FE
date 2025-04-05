import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_group.freezed.dart';
part 'explore_group.g.dart';

@freezed
class ExploreGroup with _$ExploreGroup {
  const factory ExploreGroup({
    required int id,
    required String title,
    String? onelineDescription,
    String? description,
    required String category,
    @JsonKey(name: 'max_members') required int maxMembers,
    @JsonKey(name: 'num_members') required int numMembers,
    String? attendance,
    String? meet,
    String? mood,
    String? field,
    bool? approve,
    String? thumbnail,
  }) = _ExploreGroup;

  factory ExploreGroup.fromJson(Map<String, dynamic> json) =>
      _$ExploreGroupFromJson(json);
}