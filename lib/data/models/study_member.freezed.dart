// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyMember _$StudyMemberFromJson(Map<String, dynamic> json) {
  return _StudyMember.fromJson(json);
}

/// @nodoc
mixin _$StudyMember {
  int get id => throw _privateConstructorUsedError; // 고유 ID
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError; // 사용자 ID
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError; // 모임 ID
  @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
  MemberRole get role => throw _privateConstructorUsedError; // 역할
  @JsonKey(name: 'joined_at')
  DateTime get joinedAt => throw _privateConstructorUsedError;

  /// Serializes this StudyMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyMemberCopyWith<StudyMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyMemberCopyWith<$Res> {
  factory $StudyMemberCopyWith(
          StudyMember value, $Res Function(StudyMember) then) =
      _$StudyMemberCopyWithImpl<$Res, StudyMember>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'group_id') int groupId,
      @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
      MemberRole role,
      @JsonKey(name: 'joined_at') DateTime joinedAt});
}

/// @nodoc
class _$StudyMemberCopyWithImpl<$Res, $Val extends StudyMember>
    implements $StudyMemberCopyWith<$Res> {
  _$StudyMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? groupId = null,
    Object? role = null,
    Object? joinedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MemberRole,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyMemberImplCopyWith<$Res>
    implements $StudyMemberCopyWith<$Res> {
  factory _$$StudyMemberImplCopyWith(
          _$StudyMemberImpl value, $Res Function(_$StudyMemberImpl) then) =
      __$$StudyMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'group_id') int groupId,
      @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
      MemberRole role,
      @JsonKey(name: 'joined_at') DateTime joinedAt});
}

/// @nodoc
class __$$StudyMemberImplCopyWithImpl<$Res>
    extends _$StudyMemberCopyWithImpl<$Res, _$StudyMemberImpl>
    implements _$$StudyMemberImplCopyWith<$Res> {
  __$$StudyMemberImplCopyWithImpl(
      _$StudyMemberImpl _value, $Res Function(_$StudyMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? groupId = null,
    Object? role = null,
    Object? joinedAt = null,
  }) {
    return _then(_$StudyMemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MemberRole,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyMemberImpl implements _StudyMember {
  const _$StudyMemberImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
      required this.role,
      @JsonKey(name: 'joined_at') required this.joinedAt});

  factory _$StudyMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyMemberImplFromJson(json);

  @override
  final int id;
// 고유 ID
  @override
  @JsonKey(name: 'user_id')
  final int userId;
// 사용자 ID
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
// 모임 ID
  @override
  @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
  final MemberRole role;
// 역할
  @override
  @JsonKey(name: 'joined_at')
  final DateTime joinedAt;

  @override
  String toString() {
    return 'StudyMember(id: $id, userId: $userId, groupId: $groupId, role: $role, joinedAt: $joinedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, groupId, role, joinedAt);

  /// Create a copy of StudyMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyMemberImplCopyWith<_$StudyMemberImpl> get copyWith =>
      __$$StudyMemberImplCopyWithImpl<_$StudyMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyMemberImplToJson(
      this,
    );
  }
}

abstract class _StudyMember implements StudyMember {
  const factory _StudyMember(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'group_id') required final int groupId,
          @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
          required final MemberRole role,
          @JsonKey(name: 'joined_at') required final DateTime joinedAt}) =
      _$StudyMemberImpl;

  factory _StudyMember.fromJson(Map<String, dynamic> json) =
      _$StudyMemberImpl.fromJson;

  @override
  int get id; // 고유 ID
  @override
  @JsonKey(name: 'user_id')
  int get userId; // 사용자 ID
  @override
  @JsonKey(name: 'group_id')
  int get groupId; // 모임 ID
  @override
  @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
  MemberRole get role; // 역할
  @override
  @JsonKey(name: 'joined_at')
  DateTime get joinedAt;

  /// Create a copy of StudyMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyMemberImplCopyWith<_$StudyMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
