import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank.freezed.dart';
part 'rank.g.dart';

@freezed
class Rank with _$Rank {
  const factory Rank({
    @JsonKey(name: 'group_id') required int groupId,
    String? title,
    @JsonKey(name: 'record_num') required int recordNum,
    @JsonKey(name: 'fruit_num') required int fruitNum,
    String? tree, // ✅ "0", "1", "2", "3"
    String? category,
  }) = _Rank;

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);
}
