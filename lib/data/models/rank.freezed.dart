// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rank _$RankFromJson(Map<String, dynamic> json) {
  return _Rank.fromJson(json);
}

/// @nodoc
mixin _$Rank {
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'record_num')
  int get recordNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'fruit_num')
  int get fruitNum => throw _privateConstructorUsedError;
  String get tree => throw _privateConstructorUsedError;

  /// Serializes this Rank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankCopyWith<Rank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankCopyWith<$Res> {
  factory $RankCopyWith(Rank value, $Res Function(Rank) then) =
      _$RankCopyWithImpl<$Res, Rank>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'record_num') int recordNum,
      @JsonKey(name: 'fruit_num') int fruitNum,
      String tree});
}

/// @nodoc
class _$RankCopyWithImpl<$Res, $Val extends Rank>
    implements $RankCopyWith<$Res> {
  _$RankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? title = null,
    Object? recordNum = null,
    Object? fruitNum = null,
    Object? tree = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordNum: null == recordNum
          ? _value.recordNum
          : recordNum // ignore: cast_nullable_to_non_nullable
              as int,
      fruitNum: null == fruitNum
          ? _value.fruitNum
          : fruitNum // ignore: cast_nullable_to_non_nullable
              as int,
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankImplCopyWith<$Res> implements $RankCopyWith<$Res> {
  factory _$$RankImplCopyWith(
          _$RankImpl value, $Res Function(_$RankImpl) then) =
      __$$RankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'record_num') int recordNum,
      @JsonKey(name: 'fruit_num') int fruitNum,
      String tree});
}

/// @nodoc
class __$$RankImplCopyWithImpl<$Res>
    extends _$RankCopyWithImpl<$Res, _$RankImpl>
    implements _$$RankImplCopyWith<$Res> {
  __$$RankImplCopyWithImpl(_$RankImpl _value, $Res Function(_$RankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? title = null,
    Object? recordNum = null,
    Object? fruitNum = null,
    Object? tree = null,
  }) {
    return _then(_$RankImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordNum: null == recordNum
          ? _value.recordNum
          : recordNum // ignore: cast_nullable_to_non_nullable
              as int,
      fruitNum: null == fruitNum
          ? _value.fruitNum
          : fruitNum // ignore: cast_nullable_to_non_nullable
              as int,
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankImpl implements _Rank {
  const _$RankImpl(
      {@JsonKey(name: 'group_id') required this.groupId,
      required this.title,
      @JsonKey(name: 'record_num') required this.recordNum,
      @JsonKey(name: 'fruit_num') required this.fruitNum,
      required this.tree});

  factory _$RankImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankImplFromJson(json);

  @override
  @JsonKey(name: 'group_id')
  final int groupId;
  @override
  final String title;
  @override
  @JsonKey(name: 'record_num')
  final int recordNum;
  @override
  @JsonKey(name: 'fruit_num')
  final int fruitNum;
  @override
  final String tree;

  @override
  String toString() {
    return 'Rank(groupId: $groupId, title: $title, recordNum: $recordNum, fruitNum: $fruitNum, tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordNum, recordNum) ||
                other.recordNum == recordNum) &&
            (identical(other.fruitNum, fruitNum) ||
                other.fruitNum == fruitNum) &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, title, recordNum, fruitNum, tree);

  /// Create a copy of Rank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankImplCopyWith<_$RankImpl> get copyWith =>
      __$$RankImplCopyWithImpl<_$RankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankImplToJson(
      this,
    );
  }
}

abstract class _Rank implements Rank {
  const factory _Rank(
      {@JsonKey(name: 'group_id') required final int groupId,
      required final String title,
      @JsonKey(name: 'record_num') required final int recordNum,
      @JsonKey(name: 'fruit_num') required final int fruitNum,
      required final String tree}) = _$RankImpl;

  factory _Rank.fromJson(Map<String, dynamic> json) = _$RankImpl.fromJson;

  @override
  @JsonKey(name: 'group_id')
  int get groupId;
  @override
  String get title;
  @override
  @JsonKey(name: 'record_num')
  int get recordNum;
  @override
  @JsonKey(name: 'fruit_num')
  int get fruitNum;
  @override
  String get tree;

  /// Create a copy of Rank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankImplCopyWith<_$RankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
