import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank.freezed.dart';
part 'rank.g.dart';

@freezed
class Rank with _$Rank {
  const factory Rank({
    @JsonKey(name: 'group_id') required int groupId,
    required String title,
    @JsonKey(name: 'record_num') required int recordNum,
    @JsonKey(name: 'fruit_num') required int fruitNum,
    required String tree, // ✅ "0", "1", "2", "3"
  }) = _Rank;

  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);
}
