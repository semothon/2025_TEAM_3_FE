// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyGroup _$StudyGroupFromJson(Map<String, dynamic> json) {
  return _StudyGroup.fromJson(json);
}

/// @nodoc
mixin _$StudyGroup {
  int get id => throw _privateConstructorUsedError; // 모임 ID
  String get title => throw _privateConstructorUsedError; // 모임 제목
  String get description => throw _privateConstructorUsedError; // 모임 설명
  @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
  GroupCategory get category =>
      throw _privateConstructorUsedError; // 스터디/소모임 구분
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError; // 공개/비공개 여부
  @JsonKey(name: 'max_members')
  int get maxMembers => throw _privateConstructorUsedError; // 최대 인원
  @JsonKey(name: 'num_members')
  int get numMembers => throw _privateConstructorUsedError; // 현재 인원
  String get field => throw _privateConstructorUsedError; // 분야
  @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
  AttendanceType get attendance => throw _privateConstructorUsedError; // 출석 방식
  @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
  MeetType get meet => throw _privateConstructorUsedError; // 모임 방식
  @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
  MoodType get mood => throw _privateConstructorUsedError; // 분위기
  bool get approve => throw _privateConstructorUsedError; // 승인 여부
  @JsonKey(name: 'leader_id')
  int get leaderId => throw _privateConstructorUsedError; // 조장 ID
  String get thumbnail => throw _privateConstructorUsedError; // 썸네일 이미지 URL
  String get schedule => throw _privateConstructorUsedError; // 일정 정보
  String get location => throw _privateConstructorUsedError; // 오프라인 장소 or 링크
  String get goal => throw _privateConstructorUsedError; // 목표
  String get memo => throw _privateConstructorUsedError; // 메모
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this StudyGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyGroupCopyWith<StudyGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyGroupCopyWith<$Res> {
  factory $StudyGroupCopyWith(
          StudyGroup value, $Res Function(StudyGroup) then) =
      _$StudyGroupCopyWithImpl<$Res, StudyGroup>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
      GroupCategory category,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      String field,
      @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
      AttendanceType attendance,
      @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
      MeetType meet,
      @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
      MoodType mood,
      bool approve,
      @JsonKey(name: 'leader_id') int leaderId,
      String thumbnail,
      String schedule,
      String location,
      String goal,
      String memo,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$StudyGroupCopyWithImpl<$Res, $Val extends StudyGroup>
    implements $StudyGroupCopyWith<$Res> {
  _$StudyGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? isPublic = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? field = null,
    Object? attendance = null,
    Object? meet = null,
    Object? mood = null,
    Object? approve = null,
    Object? leaderId = null,
    Object? thumbnail = null,
    Object? schedule = null,
    Object? location = null,
    Object? goal = null,
    Object? memo = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroupCategory,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceType,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as MeetType,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodType,
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool,
      leaderId: null == leaderId
          ? _value.leaderId
          : leaderId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyGroupImplCopyWith<$Res>
    implements $StudyGroupCopyWith<$Res> {
  factory _$$StudyGroupImplCopyWith(
          _$StudyGroupImpl value, $Res Function(_$StudyGroupImpl) then) =
      __$$StudyGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
      GroupCategory category,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      String field,
      @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
      AttendanceType attendance,
      @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
      MeetType meet,
      @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
      MoodType mood,
      bool approve,
      @JsonKey(name: 'leader_id') int leaderId,
      String thumbnail,
      String schedule,
      String location,
      String goal,
      String memo,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$StudyGroupImplCopyWithImpl<$Res>
    extends _$StudyGroupCopyWithImpl<$Res, _$StudyGroupImpl>
    implements _$$StudyGroupImplCopyWith<$Res> {
  __$$StudyGroupImplCopyWithImpl(
      _$StudyGroupImpl _value, $Res Function(_$StudyGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? isPublic = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? field = null,
    Object? attendance = null,
    Object? meet = null,
    Object? mood = null,
    Object? approve = null,
    Object? leaderId = null,
    Object? thumbnail = null,
    Object? schedule = null,
    Object? location = null,
    Object? goal = null,
    Object? memo = null,
    Object? createdAt = null,
  }) {
    return _then(_$StudyGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroupCategory,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceType,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as MeetType,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as MoodType,
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool,
      leaderId: null == leaderId
          ? _value.leaderId
          : leaderId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyGroupImpl implements _StudyGroup {
  const _$StudyGroupImpl(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
      required this.category,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'max_members') required this.maxMembers,
      @JsonKey(name: 'num_members') required this.numMembers,
      required this.field,
      @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
      required this.attendance,
      @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
      required this.meet,
      @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
      required this.mood,
      required this.approve,
      @JsonKey(name: 'leader_id') required this.leaderId,
      required this.thumbnail,
      required this.schedule,
      required this.location,
      required this.goal,
      required this.memo,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$StudyGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyGroupImplFromJson(json);

  @override
  final int id;
// 모임 ID
  @override
  final String title;
// 모임 제목
  @override
  final String description;
// 모임 설명
  @override
  @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
  final GroupCategory category;
// 스터디/소모임 구분
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
// 공개/비공개 여부
  @override
  @JsonKey(name: 'max_members')
  final int maxMembers;
// 최대 인원
  @override
  @JsonKey(name: 'num_members')
  final int numMembers;
// 현재 인원
  @override
  final String field;
// 분야
  @override
  @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
  final AttendanceType attendance;
// 출석 방식
  @override
  @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
  final MeetType meet;
// 모임 방식
  @override
  @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
  final MoodType mood;
// 분위기
  @override
  final bool approve;
// 승인 여부
  @override
  @JsonKey(name: 'leader_id')
  final int leaderId;
// 조장 ID
  @override
  final String thumbnail;
// 썸네일 이미지 URL
  @override
  final String schedule;
// 일정 정보
  @override
  final String location;
// 오프라인 장소 or 링크
  @override
  final String goal;
// 목표
  @override
  final String memo;
// 메모
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'StudyGroup(id: $id, title: $title, description: $description, category: $category, isPublic: $isPublic, maxMembers: $maxMembers, numMembers: $numMembers, field: $field, attendance: $attendance, meet: $meet, mood: $mood, approve: $approve, leaderId: $leaderId, thumbnail: $thumbnail, schedule: $schedule, location: $location, goal: $goal, memo: $memo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.numMembers, numMembers) ||
                other.numMembers == numMembers) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.meet, meet) || other.meet == meet) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.approve, approve) || other.approve == approve) &&
            (identical(other.leaderId, leaderId) ||
                other.leaderId == leaderId) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        category,
        isPublic,
        maxMembers,
        numMembers,
        field,
        attendance,
        meet,
        mood,
        approve,
        leaderId,
        thumbnail,
        schedule,
        location,
        goal,
        memo,
        createdAt
      ]);

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyGroupImplCopyWith<_$StudyGroupImpl> get copyWith =>
      __$$StudyGroupImplCopyWithImpl<_$StudyGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyGroupImplToJson(
      this,
    );
  }
}

abstract class _StudyGroup implements StudyGroup {
  const factory _StudyGroup(
      {required final int id,
      required final String title,
      required final String description,
      @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
      required final GroupCategory category,
      @JsonKey(name: 'is_public') required final bool isPublic,
      @JsonKey(name: 'max_members') required final int maxMembers,
      @JsonKey(name: 'num_members') required final int numMembers,
      required final String field,
      @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
      required final AttendanceType attendance,
      @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
      required final MeetType meet,
      @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
      required final MoodType mood,
      required final bool approve,
      @JsonKey(name: 'leader_id') required final int leaderId,
      required final String thumbnail,
      required final String schedule,
      required final String location,
      required final String goal,
      required final String memo,
      @JsonKey(name: 'created_at')
      required final DateTime createdAt}) = _$StudyGroupImpl;

  factory _StudyGroup.fromJson(Map<String, dynamic> json) =
      _$StudyGroupImpl.fromJson;

  @override
  int get id; // 모임 ID
  @override
  String get title; // 모임 제목
  @override
  String get description; // 모임 설명
  @override
  @JsonKey(fromJson: _groupCategoryFromJson, toJson: _groupCategoryToJson)
  GroupCategory get category; // 스터디/소모임 구분
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic; // 공개/비공개 여부
  @override
  @JsonKey(name: 'max_members')
  int get maxMembers; // 최대 인원
  @override
  @JsonKey(name: 'num_members')
  int get numMembers; // 현재 인원
  @override
  String get field; // 분야
  @override
  @JsonKey(fromJson: _attendanceTypeFromJson, toJson: _attendanceTypeToJson)
  AttendanceType get attendance; // 출석 방식
  @override
  @JsonKey(fromJson: _meetTypeFromJson, toJson: _meetTypeToJson)
  MeetType get meet; // 모임 방식
  @override
  @JsonKey(fromJson: _moodTypeFromJson, toJson: _moodTypeToJson)
  MoodType get mood; // 분위기
  @override
  bool get approve; // 승인 여부
  @override
  @JsonKey(name: 'leader_id')
  int get leaderId; // 조장 ID
  @override
  String get thumbnail; // 썸네일 이미지 URL
  @override
  String get schedule; // 일정 정보
  @override
  String get location; // 오프라인 장소 or 링크
  @override
  String get goal; // 목표
  @override
  String get memo; // 메모
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyGroupImplCopyWith<_$StudyGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
