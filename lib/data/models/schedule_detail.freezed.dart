// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDetail _$ScheduleDetailFromJson(Map<String, dynamic> json) {
  return _ScheduleDetail.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDetail {
  int get id => throw _privateConstructorUsedError; // 일정 ID
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError; // 모임 ID
  String get title => throw _privateConstructorUsedError; // 일정 제목
  @JsonKey(name: 'photo_url')
  String? get photoUrl =>
      throw _privateConstructorUsedError; // 사진 URL (nullable)
  DateTime get date => throw _privateConstructorUsedError; // 날짜
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime => throw _privateConstructorUsedError; // 시작 시간
  @JsonKey(name: 'end_datetime')
  DateTime get endDatetime => throw _privateConstructorUsedError; // 종료 시간
  String get memo => throw _privateConstructorUsedError; // 메모
  String get location => throw _privateConstructorUsedError; // 장소
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError; // 생성 일시
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ScheduleDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDetailCopyWith<ScheduleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDetailCopyWith<$Res> {
  factory $ScheduleDetailCopyWith(
          ScheduleDetail value, $Res Function(ScheduleDetail) then) =
      _$ScheduleDetailCopyWithImpl<$Res, ScheduleDetail>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      DateTime date,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      @JsonKey(name: 'end_datetime') DateTime endDatetime,
      String memo,
      String location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ScheduleDetailCopyWithImpl<$Res, $Val extends ScheduleDetail>
    implements $ScheduleDetailCopyWith<$Res> {
  _$ScheduleDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? date = null,
    Object? startDatetime = null,
    Object? endDatetime = null,
    Object? memo = null,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDatetime: null == endDatetime
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDetailImplCopyWith<$Res>
    implements $ScheduleDetailCopyWith<$Res> {
  factory _$$ScheduleDetailImplCopyWith(_$ScheduleDetailImpl value,
          $Res Function(_$ScheduleDetailImpl) then) =
      __$$ScheduleDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      DateTime date,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      @JsonKey(name: 'end_datetime') DateTime endDatetime,
      String memo,
      String location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ScheduleDetailImplCopyWithImpl<$Res>
    extends _$ScheduleDetailCopyWithImpl<$Res, _$ScheduleDetailImpl>
    implements _$$ScheduleDetailImplCopyWith<$Res> {
  __$$ScheduleDetailImplCopyWithImpl(
      _$ScheduleDetailImpl _value, $Res Function(_$ScheduleDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? date = null,
    Object? startDatetime = null,
    Object? endDatetime = null,
    Object? memo = null,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ScheduleDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDatetime: null == endDatetime
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDetailImpl implements _ScheduleDetail {
  const _$ScheduleDetailImpl(
      {required this.id,
      @JsonKey(name: 'group_id') required this.groupId,
      required this.title,
      @JsonKey(name: 'photo_url') this.photoUrl,
      required this.date,
      @JsonKey(name: 'start_datetime') required this.startDatetime,
      @JsonKey(name: 'end_datetime') required this.endDatetime,
      required this.memo,
      required this.location,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ScheduleDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDetailImplFromJson(json);

  @override
  final int id;
// 일정 ID
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
// 모임 ID
  @override
  final String title;
// 일정 제목
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
// 사진 URL (nullable)
  @override
  final DateTime date;
// 날짜
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime startDatetime;
// 시작 시간
  @override
  @JsonKey(name: 'end_datetime')
  final DateTime endDatetime;
// 종료 시간
  @override
  final String memo;
// 메모
  @override
  final String location;
// 장소
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// 생성 일시
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ScheduleDetail(id: $id, groupId: $groupId, title: $title, photoUrl: $photoUrl, date: $date, startDatetime: $startDatetime, endDatetime: $endDatetime, memo: $memo, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
            (identical(other.endDatetime, endDatetime) ||
                other.endDatetime == endDatetime) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, groupId, title, photoUrl,
      date, startDatetime, endDatetime, memo, location, createdAt, updatedAt);

  /// Create a copy of ScheduleDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDetailImplCopyWith<_$ScheduleDetailImpl> get copyWith =>
      __$$ScheduleDetailImplCopyWithImpl<_$ScheduleDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDetailImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDetail implements ScheduleDetail {
  const factory _ScheduleDetail(
      {required final int id,
      @JsonKey(name: 'group_id') required final int groupId,
      required final String title,
      @JsonKey(name: 'photo_url') final String? photoUrl,
      required final DateTime date,
      @JsonKey(name: 'start_datetime') required final DateTime startDatetime,
      @JsonKey(name: 'end_datetime') required final DateTime endDatetime,
      required final String memo,
      required final String location,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$ScheduleDetailImpl;

  factory _ScheduleDetail.fromJson(Map<String, dynamic> json) =
      _$ScheduleDetailImpl.fromJson;

  @override
  int get id; // 일정 ID
  @override
  @JsonKey(name: 'group_id')
  int get groupId; // 모임 ID
  @override
  String get title; // 일정 제목
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl; // 사진 URL (nullable)
  @override
  DateTime get date; // 날짜
  @override
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime; // 시작 시간
  @override
  @JsonKey(name: 'end_datetime')
  DateTime get endDatetime; // 종료 시간
  @override
  String get memo; // 메모
  @override
  String get location; // 장소
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // 생성 일시
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of ScheduleDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDetailImplCopyWith<_$ScheduleDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
