// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoalCheck _$GoalCheckFromJson(Map<String, dynamic> json) {
  return _GoalCheck.fromJson(json);
}

/// @nodoc
mixin _$GoalCheck {
  int get id => throw _privateConstructorUsedError; // ID
  @JsonKey(name: 'goal_id')
  int get goalId => throw _privateConstructorUsedError; // 목표 ID
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError; // 인증한 사용자 ID
  @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
  CheckStatus get status => throw _privateConstructorUsedError; // 인증 상태
  @JsonKey(name: 'proof_img')
  String? get proofImg =>
      throw _privateConstructorUsedError; // 인증 이미지 URL (nullable)
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this GoalCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoalCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalCheckCopyWith<GoalCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCheckCopyWith<$Res> {
  factory $GoalCheckCopyWith(GoalCheck value, $Res Function(GoalCheck) then) =
      _$GoalCheckCopyWithImpl<$Res, GoalCheck>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'goal_id') int goalId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
      CheckStatus status,
      @JsonKey(name: 'proof_img') String? proofImg,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$GoalCheckCopyWithImpl<$Res, $Val extends GoalCheck>
    implements $GoalCheckCopyWith<$Res> {
  _$GoalCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoalCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? userId = null,
    Object? status = null,
    Object? proofImg = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckStatus,
      proofImg: freezed == proofImg
          ? _value.proofImg
          : proofImg // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalCheckImplCopyWith<$Res>
    implements $GoalCheckCopyWith<$Res> {
  factory _$$GoalCheckImplCopyWith(
          _$GoalCheckImpl value, $Res Function(_$GoalCheckImpl) then) =
      __$$GoalCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'goal_id') int goalId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
      CheckStatus status,
      @JsonKey(name: 'proof_img') String? proofImg,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$GoalCheckImplCopyWithImpl<$Res>
    extends _$GoalCheckCopyWithImpl<$Res, _$GoalCheckImpl>
    implements _$$GoalCheckImplCopyWith<$Res> {
  __$$GoalCheckImplCopyWithImpl(
      _$GoalCheckImpl _value, $Res Function(_$GoalCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoalCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goalId = null,
    Object? userId = null,
    Object? status = null,
    Object? proofImg = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$GoalCheckImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      goalId: null == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckStatus,
      proofImg: freezed == proofImg
          ? _value.proofImg
          : proofImg // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalCheckImpl implements _GoalCheck {
  const _$GoalCheckImpl(
      {required this.id,
      @JsonKey(name: 'goal_id') required this.goalId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
      required this.status,
      @JsonKey(name: 'proof_img') this.proofImg,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$GoalCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalCheckImplFromJson(json);

  @override
  final int id;
// ID
  @override
  @JsonKey(name: 'goal_id')
  final int goalId;
// 목표 ID
  @override
  @JsonKey(name: 'user_id')
  final int userId;
// 인증한 사용자 ID
  @override
  @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
  final CheckStatus status;
// 인증 상태
  @override
  @JsonKey(name: 'proof_img')
  final String? proofImg;
// 인증 이미지 URL (nullable)
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'GoalCheck(id: $id, goalId: $goalId, userId: $userId, status: $status, proofImg: $proofImg, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalCheckImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.proofImg, proofImg) ||
                other.proofImg == proofImg) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, goalId, userId, status, proofImg, createdAt);

  /// Create a copy of GoalCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalCheckImplCopyWith<_$GoalCheckImpl> get copyWith =>
      __$$GoalCheckImplCopyWithImpl<_$GoalCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalCheckImplToJson(
      this,
    );
  }
}

abstract class _GoalCheck implements GoalCheck {
  const factory _GoalCheck(
          {required final int id,
          @JsonKey(name: 'goal_id') required final int goalId,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
          required final CheckStatus status,
          @JsonKey(name: 'proof_img') final String? proofImg,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$GoalCheckImpl;

  factory _GoalCheck.fromJson(Map<String, dynamic> json) =
      _$GoalCheckImpl.fromJson;

  @override
  int get id; // ID
  @override
  @JsonKey(name: 'goal_id')
  int get goalId; // 목표 ID
  @override
  @JsonKey(name: 'user_id')
  int get userId; // 인증한 사용자 ID
  @override
  @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
  CheckStatus get status; // 인증 상태
  @override
  @JsonKey(name: 'proof_img')
  String? get proofImg; // 인증 이미지 URL (nullable)
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of GoalCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalCheckImplCopyWith<_$GoalCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
