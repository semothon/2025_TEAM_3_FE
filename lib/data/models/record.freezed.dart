// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
mixin _$Record {
  int get id => throw _privateConstructorUsedError; // 기록 ID
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError; // 작성자 ID
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError; // 속한 모임 ID
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError; // 공개 여부
  @JsonKey(name: 'is_shared')
  bool get isShared => throw _privateConstructorUsedError; // 공유 여부
  String get content => throw _privateConstructorUsedError; // 기록 내용
  @JsonKey(name: 'file_url')
  String? get fileUrl =>
      throw _privateConstructorUsedError; // 첨부파일 URL (nullable)
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res, Record>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'group_id') int groupId,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'is_shared') bool isShared,
      String content,
      @JsonKey(name: 'file_url') String? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$RecordCopyWithImpl<$Res, $Val extends Record>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? groupId = null,
    Object? isPublic = null,
    Object? isShared = null,
    Object? content = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
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
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isShared: null == isShared
          ? _value.isShared
          : isShared // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordImplCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$RecordImplCopyWith(
          _$RecordImpl value, $Res Function(_$RecordImpl) then) =
      __$$RecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'group_id') int groupId,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'is_shared') bool isShared,
      String content,
      @JsonKey(name: 'file_url') String? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$RecordImplCopyWithImpl<$Res>
    extends _$RecordCopyWithImpl<$Res, _$RecordImpl>
    implements _$$RecordImplCopyWith<$Res> {
  __$$RecordImplCopyWithImpl(
      _$RecordImpl _value, $Res Function(_$RecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? groupId = null,
    Object? isPublic = null,
    Object? isShared = null,
    Object? content = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$RecordImpl(
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
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isShared: null == isShared
          ? _value.isShared
          : isShared // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
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
class _$RecordImpl implements _Record {
  const _$RecordImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'is_shared') required this.isShared,
      required this.content,
      @JsonKey(name: 'file_url') this.fileUrl,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$RecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordImplFromJson(json);

  @override
  final int id;
// 기록 ID
  @override
  @JsonKey(name: 'user_id')
  final int userId;
// 작성자 ID
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
// 속한 모임 ID
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
// 공개 여부
  @override
  @JsonKey(name: 'is_shared')
  final bool isShared;
// 공유 여부
  @override
  final String content;
// 기록 내용
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;
// 첨부파일 URL (nullable)
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Record(id: $id, userId: $userId, groupId: $groupId, isPublic: $isPublic, isShared: $isShared, content: $content, fileUrl: $fileUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isShared, isShared) ||
                other.isShared == isShared) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, groupId, isPublic,
      isShared, content, fileUrl, createdAt);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      __$$RecordImplCopyWithImpl<_$RecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordImplToJson(
      this,
    );
  }
}

abstract class _Record implements Record {
  const factory _Record(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'group_id') required final int groupId,
          @JsonKey(name: 'is_public') required final bool isPublic,
          @JsonKey(name: 'is_shared') required final bool isShared,
          required final String content,
          @JsonKey(name: 'file_url') final String? fileUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$RecordImpl;

  factory _Record.fromJson(Map<String, dynamic> json) = _$RecordImpl.fromJson;

  @override
  int get id; // 기록 ID
  @override
  @JsonKey(name: 'user_id')
  int get userId; // 작성자 ID
  @override
  @JsonKey(name: 'group_id')
  int get groupId; // 속한 모임 ID
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic; // 공개 여부
  @override
  @JsonKey(name: 'is_shared')
  bool get isShared; // 공유 여부
  @override
  String get content; // 기록 내용
  @override
  @JsonKey(name: 'file_url')
  String? get fileUrl; // 첨부파일 URL (nullable)
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
